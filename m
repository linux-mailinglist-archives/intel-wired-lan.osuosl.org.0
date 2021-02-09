Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE8D3146B0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 03:58:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CAC687248;
	Tue,  9 Feb 2021 02:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AultUMbTd-9L; Tue,  9 Feb 2021 02:58:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1244D8724B;
	Tue,  9 Feb 2021 02:58:48 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 453D51BF59F
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4237986A3B
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vo5t0JZ83nNI for <intel-wired-lan@osuosl.org>;
 Tue,  9 Feb 2021 02:58:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 16D7786AA9
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:58:26 +0000 (UTC)
IronPort-SDR: /KmR8yqvIKvGhK7PIG+Wb/+7cbtuOTpibFgAKTiwA9p895Fo+LTPk9o6b8RicNvdNzXF24/uII
 8IpEkivVEG+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="245888662"
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="245888662"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 18:58:25 -0800
IronPort-SDR: jHz3xaKR8G9TcfS/V8t39nfYm1h7+4I52B5WcMyc8qAebsIH5bRC2PxmlhXeGV5fhnoZ14kTT8
 wG2fgHt+naSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="374799258"
Received: from otc-cfl-ubuntu-15.jf.intel.com ([10.54.31.57])
 by orsmga002.jf.intel.com with ESMTP; 08 Feb 2021 18:58:25 -0800
From: Vedang Patel <vedang.patel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  8 Feb 2021 18:41:41 -0800
Message-Id: <20210209024141.23298-10-vedang.patel@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210209024141.23298-1-vedang.patel@intel.com>
References: <20210209024141.23298-1-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v5 9/9] igc: Add support for
 XDP_REDIRECT action
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
Cc: Andre Guedes <andre.guedes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

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
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 59 +++++++++++++++++++++--
 1 file changed, 56 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d34d35789e2e..8bb1f8a54368 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -26,6 +26,7 @@
 #define IGC_XDP_PASS		0
 #define IGC_XDP_CONSUMED	BIT(0)
 #define IGC_XDP_TX		BIT(1)
+#define IGC_XDP_REDIRECT	BIT(2)
 
 static int debug = -1;
 
@@ -1708,8 +1709,8 @@ static bool igc_can_reuse_rx_page(struct igc_rx_buffer *rx_buffer)
 	 * the pagecnt_bias and page count so that we fully restock the
 	 * number of references the driver holds.
 	 */
-	if (unlikely(!pagecnt_bias)) {
-		page_ref_add(page, USHRT_MAX);
+	if (unlikely(pagecnt_bias == 1)) {
+		page_ref_add(page, USHRT_MAX - 1);
 		rx_buffer->pagecnt_bias = USHRT_MAX;
 	}
 
@@ -1850,7 +1851,8 @@ static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
 	bi->dma = dma;
 	bi->page = page;
 	bi->page_offset = igc_rx_offset(rx_ring);
-	bi->pagecnt_bias = 1;
+	page_ref_add(page, USHRT_MAX - 1);
+	bi->pagecnt_bias = USHRT_MAX;
 
 	return true;
 }
@@ -2046,6 +2048,12 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
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
@@ -2087,6 +2095,9 @@ static void igc_finalize_xdp(struct igc_adapter *adapter, int status)
 		igc_flush_tx_descriptors(ring);
 		__netif_tx_unlock(nq);
 	}
+
+	if (status & IGC_XDP_REDIRECT)
+		xdp_do_flush();
 }
 
 static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
@@ -2155,6 +2166,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 				rx_buffer->pagecnt_bias++;
 				break;
 			case IGC_XDP_TX:
+			case IGC_XDP_REDIRECT:
 				igc_rx_buffer_flip(rx_buffer, truesize);
 				xdp_status |= xdp_res;
 				break;
@@ -5119,6 +5131,46 @@ static int igc_bpf(struct net_device *dev, struct netdev_bpf *bpf)
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
@@ -5133,6 +5185,7 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_do_ioctl		= igc_ioctl,
 	.ndo_setup_tc		= igc_setup_tc,
 	.ndo_bpf		= igc_bpf,
+	.ndo_xdp_xmit		= igc_xdp_xmit,
 };
 
 /* PCIe configuration access */
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
