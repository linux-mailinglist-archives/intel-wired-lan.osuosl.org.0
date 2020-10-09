Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F8828808B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 04:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D56632E190;
	Fri,  9 Oct 2020 02:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K90jXQSbuGke; Fri,  9 Oct 2020 02:54:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 88FC720443;
	Fri,  9 Oct 2020 02:54:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 39E541BF375
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 369E487621
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oVgmdkJw5SSz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 02:54:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 844698762F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:54:00 +0000 (UTC)
IronPort-SDR: 5kS3rnVJTVauUkFC4iaQnMYQvrPNXEL6mh3elMHgcvdaEtvYdBQ3h3mxDTXpo4XAIb07mERif7
 g1csTLQb8uQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="229621320"
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; d="scan'208";a="229621320"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 19:53:59 -0700
IronPort-SDR: fYJRIHbzmAq/BjkAG1YIUmMnckz+cmIGgK6DTkyJGN4nw6clBXdUmVSvr0Q2O2GIlZ3kqn4pTK
 633Bx8gaEOeA==
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; d="scan'208";a="528740721"
Received: from simonejo-mobl1.amr.corp.intel.com ([10.212.226.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 19:53:59 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Oct 2020 19:53:49 -0700
Message-Id: <20201009025349.4037-10-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201009025349.4037-1-andre.guedes@intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 9/9] igc: Implement ndo_xdp_xmit callback
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch introduces the helper igc_xdp_xmit() which implements the
ndo_xdp_xmit ops, enabling the igc driver to transmit packets forwarded
to it by xdp programs running on other interfaces.

This patch has been tested with the sample app "xdp_redirect_map"
located in samples/bpf/.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 41 +++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  3 +-
 drivers/net/ethernet/intel/igc/igc_xdp.h  |  2 ++
 3 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7cdfce6c0d63..907238d1094a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4976,6 +4976,46 @@ static int igc_bpf(struct net_device *dev, struct netdev_bpf *bpf)
 	}
 }
 
+static int igc_xdp_xmit(struct net_device *dev, int num_frames,
+			struct xdp_frame **frames, u32 flags)
+{
+	struct igc_adapter *adapter = netdev_priv(dev);
+	int cpu = smp_processor_id();
+	struct netdev_queue *nq;
+	struct igc_ring *ring;
+	int i, drops;
+
+	if (unlikely(test_bit(__IGC_DOWN, &adapter->state)))
+		return -ENETDOWN;
+
+	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
+		return -EINVAL;
+
+	ring = igc_xdp_get_tx_ring(adapter, cpu);
+	nq = txring_txq(ring);
+
+	__netif_tx_lock(nq, cpu);
+
+	drops = 0;
+	for (i = 0; i < num_frames; i++) {
+		int err;
+		struct xdp_frame *xdpf = frames[i];
+
+		err = igc_xdp_init_tx_descriptor(ring, xdpf);
+		if (err) {
+			xdp_return_frame_rx_napi(xdpf);
+			drops++;
+		}
+	}
+
+	if (flags & XDP_XMIT_FLUSH)
+		igc_flush_tx_descriptors(ring);
+
+	__netif_tx_unlock(nq);
+
+	return num_frames - drops;
+}
+
 static const struct net_device_ops igc_netdev_ops = {
 	.ndo_open		= igc_open,
 	.ndo_stop		= igc_close,
@@ -4990,6 +5030,7 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_do_ioctl		= igc_ioctl,
 	.ndo_setup_tc		= igc_setup_tc,
 	.ndo_bpf		= igc_bpf,
+	.ndo_xdp_xmit		= igc_xdp_xmit,
 };
 
 /* PCIe configuration access */
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index e9a81975324f..bc473161899c 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -59,8 +59,7 @@ static int igc_xdp_init_tx_buffer(struct igc_tx_buffer *buffer,
 }
 
 /* This function requires __netif_tx_lock is held by the caller. */
-static int igc_xdp_init_tx_descriptor(struct igc_ring *ring,
-				      struct xdp_frame *xdpf)
+int igc_xdp_init_tx_descriptor(struct igc_ring *ring, struct xdp_frame *xdpf)
 {
 	struct igc_tx_buffer *buffer;
 	union igc_adv_tx_desc *desc;
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.h b/drivers/net/ethernet/intel/igc/igc_xdp.h
index 1c38a80c3aa0..801fb27fbb85 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.h
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.h
@@ -22,4 +22,6 @@ void igc_xdp_unregister_rxq_info(struct igc_ring *ring);
 
 struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter, int cpu);
 
+int igc_xdp_init_tx_descriptor(struct igc_ring *ring, struct xdp_frame *xdpf);
+
 #endif /* _IGC_XDP_H_ */
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
