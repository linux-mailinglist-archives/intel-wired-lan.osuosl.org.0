Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C99133362B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 08:11:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 876914EC56;
	Wed, 10 Mar 2021 07:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3cCDh5SGmyig; Wed, 10 Mar 2021 07:11:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 087154EC4D;
	Wed, 10 Mar 2021 07:11:11 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C98671BF47E
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B1B26F6C6
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XzQMxbX-n4WY for <intel-wired-lan@osuosl.org>;
 Wed, 10 Mar 2021 07:10:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 86BFF6F527
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:36 +0000 (UTC)
IronPort-SDR: rBrtawYGTN7Tyi1A5gOLypAP1EA2Nb2TcoONPok9QWOOViUBuCjgdU0tTyGuTkcMAnJJyXgiht
 2IpTF6RNVoNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="208203849"
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; d="scan'208";a="208203849"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 23:10:35 -0800
IronPort-SDR: Ix+cfxkNBAqOvGPCFLGuzcc7XfEt0tSateP34sF+LfHJYIp8H5iKgEFphbqaW1aYM8cIyfNQd6
 BRWLEF9NtfEQ==
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; d="scan'208";a="410070555"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 23:10:34 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue,  9 Mar 2021 23:13:22 -0800
Message-Id: <20210310071322.15425-9-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210310071322.15425-1-jithu.joseph@intel.com>
References: <20210310071322.15425-1-jithu.joseph@intel.com>
Subject: [Intel-wired-lan] [PATCH v7 8/8] igc: Add support for XDP_REDIRECT
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

The patch tweaks the driver's page counting and recycling scheme as
described in the following two commits and implemented by other Intel
drivers in order to properly support XDP_REDIRECT action:
  - 8ce29c679a6e i40e: tweak page counting for XDP_REDIRECT
  - 75aab4e10ae6 i40e: avoid premature Rx buffer reuse

This patch has been tested with the sample apps "xdp_redirect_cpu" and
"xdp_redirect_map" located in samples/bpf/.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 84 ++++++++++++++++++++---
 1 file changed, 73 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 90dae25dd5bb..2d7be4f2d48f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -26,6 +26,7 @@
 #define IGC_XDP_PASS		0
 #define IGC_XDP_CONSUMED	BIT(0)
 #define IGC_XDP_TX		BIT(1)
+#define IGC_XDP_REDIRECT	BIT(2)
 
 static int debug = -1;
 
@@ -1506,11 +1507,18 @@ static void igc_process_skb_fields(struct igc_ring *rx_ring,
 }
 
 static struct igc_rx_buffer *igc_get_rx_buffer(struct igc_ring *rx_ring,
-					       const unsigned int size)
+					       const unsigned int size,
+					       int *rx_buffer_pgcnt)
 {
 	struct igc_rx_buffer *rx_buffer;
 
 	rx_buffer = &rx_ring->rx_buffer_info[rx_ring->next_to_clean];
+	*rx_buffer_pgcnt =
+#if (PAGE_SIZE < 8192)
+		page_count(rx_buffer->page);
+#else
+		0;
+#endif
 	prefetchw(rx_buffer->page);
 
 	/* we are reusing so sync this buffer for CPU use */
@@ -1678,7 +1686,8 @@ static void igc_reuse_rx_page(struct igc_ring *rx_ring,
 	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
 }
 
-static bool igc_can_reuse_rx_page(struct igc_rx_buffer *rx_buffer)
+static bool igc_can_reuse_rx_page(struct igc_rx_buffer *rx_buffer,
+				  int rx_buffer_pgcnt)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 	struct page *page = rx_buffer->page;
@@ -1689,7 +1698,7 @@ static bool igc_can_reuse_rx_page(struct igc_rx_buffer *rx_buffer)
 
 #if (PAGE_SIZE < 8192)
 	/* if we are only owner of page we can reuse it */
-	if (unlikely((page_ref_count(page) - pagecnt_bias) > 1))
+	if (unlikely((rx_buffer_pgcnt - pagecnt_bias) > 1))
 		return false;
 #else
 #define IGC_LAST_OFFSET \
@@ -1703,8 +1712,8 @@ static bool igc_can_reuse_rx_page(struct igc_rx_buffer *rx_buffer)
 	 * the pagecnt_bias and page count so that we fully restock the
 	 * number of references the driver holds.
 	 */
-	if (unlikely(!pagecnt_bias)) {
-		page_ref_add(page, USHRT_MAX);
+	if (unlikely(pagecnt_bias == 1)) {
+		page_ref_add(page, USHRT_MAX - 1);
 		rx_buffer->pagecnt_bias = USHRT_MAX;
 	}
 
@@ -1777,9 +1786,10 @@ static bool igc_cleanup_headers(struct igc_ring *rx_ring,
 }
 
 static void igc_put_rx_buffer(struct igc_ring *rx_ring,
-			      struct igc_rx_buffer *rx_buffer)
+			      struct igc_rx_buffer *rx_buffer,
+			      int rx_buffer_pgcnt)
 {
-	if (igc_can_reuse_rx_page(rx_buffer)) {
+	if (igc_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
 		/* hand second half of page back to the ring */
 		igc_reuse_rx_page(rx_ring, rx_buffer);
 	} else {
@@ -1845,7 +1855,8 @@ static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
 	bi->dma = dma;
 	bi->page = page;
 	bi->page_offset = igc_rx_offset(rx_ring);
-	bi->pagecnt_bias = 1;
+	page_ref_add(page, USHRT_MAX - 1);
+	bi->pagecnt_bias = USHRT_MAX;
 
 	return true;
 }
@@ -2041,6 +2052,12 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
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
@@ -2082,6 +2099,9 @@ static void igc_finalize_xdp(struct igc_adapter *adapter, int status)
 		igc_flush_tx_descriptors(ring);
 		__netif_tx_unlock(nq);
 	}
+
+	if (status & IGC_XDP_REDIRECT)
+		xdp_do_flush();
 }
 
 static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
@@ -2091,7 +2111,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	struct igc_ring *rx_ring = q_vector->rx.ring;
 	struct sk_buff *skb = rx_ring->skb;
 	u16 cleaned_count = igc_desc_unused(rx_ring);
-	int xdp_status = 0;
+	int xdp_status = 0, rx_buffer_pgcnt;
 
 	while (likely(total_packets < budget)) {
 		union igc_adv_rx_desc *rx_desc;
@@ -2119,7 +2139,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		 */
 		dma_rmb();
 
-		rx_buffer = igc_get_rx_buffer(rx_ring, size);
+		rx_buffer = igc_get_rx_buffer(rx_ring, size, &rx_buffer_pgcnt);
 		truesize = igc_get_rx_frame_truesize(rx_ring, size);
 
 		pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
@@ -2150,6 +2170,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 				rx_buffer->pagecnt_bias++;
 				break;
 			case IGC_XDP_TX:
+			case IGC_XDP_REDIRECT:
 				igc_rx_buffer_flip(rx_buffer, truesize);
 				xdp_status |= xdp_res;
 				break;
@@ -2172,7 +2193,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 			break;
 		}
 
-		igc_put_rx_buffer(rx_ring, rx_buffer);
+		igc_put_rx_buffer(rx_ring, rx_buffer, rx_buffer_pgcnt);
 		cleaned_count++;
 
 		/* fetch next buffer in frame if non-eop */
@@ -5114,6 +5135,46 @@ static int igc_bpf(struct net_device *dev, struct netdev_bpf *bpf)
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
@@ -5128,6 +5189,7 @@ static const struct net_device_ops igc_netdev_ops = {
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
