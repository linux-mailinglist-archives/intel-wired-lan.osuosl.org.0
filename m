Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD4C2A0FF1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Oct 2020 22:04:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06EEB842DD;
	Fri, 30 Oct 2020 21:04:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ua6v00KmAbDf; Fri, 30 Oct 2020 21:04:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6439D848FC;
	Fri, 30 Oct 2020 21:04:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F6CD1BF294
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 21:04:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F37B5230FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 21:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jN3wVW57OGjO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Oct 2020 21:04:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F33C232D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 21:04:00 +0000 (UTC)
IronPort-SDR: dBTBFSh/9IbK9cRhabFxj5C4/Hp8Lbri+3X9IQPfpYk2tXoyMgVpLDbXoj4lOOWNmRzgritBTf
 y7zbYFod0Vyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="155645247"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="155645247"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 14:03:59 -0700
IronPort-SDR: /wxMm+i+dEOG73Zag2vp7AAiBoFrnH/wMyu2E21L/Z1FIKrYgyp0MFw/1lsbFTmEePshjfQUDK
 DxVxePK6VzaQ==
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="395592264"
Received: from jesantos-mobl.amr.corp.intel.com ([10.209.106.15])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 14:03:59 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 30 Oct 2020 14:03:51 -0700
Message-Id: <20201030210351.46482-10-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201030210351.46482-1-andre.guedes@intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 9/9] igc: Add support for XDP_REDIRECT
 action
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

This patch adds support for the XDP_REDIRECT action which enables XDP
programs to redirect packets arriving at I225 NIC. It also implements
the ndo_xdp_xmit ops, enabling the igc driver to transmit packets
forwarded to it by xdp programs running on other interfaces.

The patch tweaks the driver's page counting scheme (as described in
'8ce29c679a6e i40e: tweak page counting for XDP_REDIRECT' and
implemented by other Intel drivers) in order to properly support
XDP_REDIRECT action.

This patch has been tested with the sample apps "xdp_redirect_cpu" and
"xdp_redirect_map" located in samples/bpf/.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 59 +++++++++++++++++++++--
 1 file changed, 56 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ae933982e239..33dab5976cbc 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -27,6 +27,7 @@
 #define IGC_XDP_PASS		0
 #define IGC_XDP_CONSUMED	BIT(0)
 #define IGC_XDP_TX		BIT(1)
+#define IGC_XDP_REDIRECT	BIT(2)
 
 static int debug = -1;
 
@@ -1720,8 +1721,8 @@ static bool igc_can_reuse_rx_page(struct igc_rx_buffer *rx_buffer)
 	 * the pagecnt_bias and page count so that we fully restock the
 	 * number of references the driver holds.
 	 */
-	if (unlikely(!pagecnt_bias)) {
-		page_ref_add(page, USHRT_MAX);
+	if (unlikely(pagecnt_bias == 1)) {
+		page_ref_add(page, USHRT_MAX - 1);
 		rx_buffer->pagecnt_bias = USHRT_MAX;
 	}
 
@@ -1862,7 +1863,8 @@ static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
 	bi->dma = dma;
 	bi->page = page;
 	bi->page_offset = igc_rx_offset(rx_ring);
-	bi->pagecnt_bias = 1;
+	page_ref_add(page, USHRT_MAX - 1);
+	bi->pagecnt_bias = USHRT_MAX;
 
 	return true;
 }
@@ -2055,6 +2057,12 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
 		else
 			res = IGC_XDP_TX;
 		break;
+	case XDP_REDIRECT:
+		if (xdp_do_redirect(adapter->netdev, xdp, prog) < 0)
+			res = IGC_XDP_CONSUMED;
+		else
+			res = IGC_XDP_REDIRECT;
+		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
@@ -2096,6 +2104,9 @@ static void igc_finalize_xdp(struct igc_adapter *adapter, int status)
 		igc_flush_tx_descriptors(ring);
 		__netif_tx_unlock(nq);
 	}
+
+	if (status & IGC_XDP_REDIRECT)
+		xdp_do_flush();
 }
 
 static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
@@ -2164,6 +2175,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 				rx_buffer->pagecnt_bias++;
 				break;
 			case IGC_XDP_TX:
+			case IGC_XDP_REDIRECT:
 				igc_rx_buffer_flip(rx_buffer, truesize);
 				xdp_status |= xdp_res;
 				break;
@@ -5129,6 +5141,46 @@ static int igc_bpf(struct net_device *dev, struct netdev_bpf *bpf)
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
@@ -5143,6 +5195,7 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_do_ioctl		= igc_ioctl,
 	.ndo_setup_tc		= igc_setup_tc,
 	.ndo_bpf		= igc_bpf,
+	.ndo_xdp_xmit		= igc_xdp_xmit,
 };
 
 /* PCIe configuration access */
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
