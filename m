Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DB929D211
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 21:20:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01C6F872B2;
	Wed, 28 Oct 2020 20:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KN6kA+qySypJ; Wed, 28 Oct 2020 20:20:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A4ED87403;
	Wed, 28 Oct 2020 20:20:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C2C4C1BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:20:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BFABB869F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d0bm7qt4+7dK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 20:19:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D7AF0869C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:59 +0000 (UTC)
IronPort-SDR: IdpHN8PUIlKxYSDVcKqo1MFPwLooKsTtsztxjKr9kpFe+aMja3B4NDUtbbmDVWvhBLcdcQAIU/
 dlQMtNUuOc2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="148187214"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="148187214"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:56 -0700
IronPort-SDR: pxbIMzuTs7R5Yjly3UKZML98KBkMT1ou8iuTfoEG2gbDQ9OU+vLBhONpLjle6v5q20cUcI7tEF
 NRY6hGL1wZOg==
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="536374763"
Received: from zcolon-mobl.amr.corp.intel.com ([10.209.108.9])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:56 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Oct 2020 13:19:43 -0700
Message-Id: <20201028201943.93147-11-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201028201943.93147-1-andre.guedes@intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 10/10] igc: Implement ndo_xdp_xmit
 callback
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
index f9c7bbc1347e..4d821f04e3de 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4990,6 +4990,46 @@ static int igc_bpf(struct net_device *dev, struct netdev_bpf *bpf)
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
@@ -5004,6 +5044,7 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_do_ioctl		= igc_ioctl,
 	.ndo_setup_tc		= igc_setup_tc,
 	.ndo_bpf		= igc_bpf,
+	.ndo_xdp_xmit		= igc_xdp_xmit,
 };
 
 /* PCIe configuration access */
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index 39b8310dfba1..2fe6fac38d0b 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -58,8 +58,7 @@ static int igc_xdp_init_tx_buffer(struct igc_tx_buffer *buffer,
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
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
