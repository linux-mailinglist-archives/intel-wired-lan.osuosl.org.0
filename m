Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B99FA2F64DD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 16:39:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5159586A2F;
	Thu, 14 Jan 2021 15:39:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ufWBAkSWRirt; Thu, 14 Jan 2021 15:39:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E12186A39;
	Thu, 14 Jan 2021 15:39:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C85A31BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C327A86A88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BigVChil9Pc3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 14:33:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 263CB86A72
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:30 +0000 (UTC)
IronPort-SDR: mpk/wVLan0AQGRyWVPxav0fvof/20AegW0+ik+ErVOsBfDSbQCfsfpnJsKpTAbt6ezu1lCzLoX
 G/7pfD6X+J8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="263165449"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="263165449"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 06:33:30 -0800
IronPort-SDR: Mp0r8Ai/sxzOVc4qONLtXd1fLAjmYMmh+ayl0vQ/qoh8u6EWibTh2kdlaKYMGRwcIZTksU7rgm
 0HPlcsvozsMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="353919581"
Received: from silpixa00400572.ir.intel.com ([10.237.213.34])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jan 2021 06:33:27 -0800
From: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Jan 2021 14:33:18 +0000
Message-Id: <20210114143318.2171-5-cristian.dumitrescu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
References: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 14 Jan 2021 15:39:23 +0000
Subject: [Intel-wired-lan] [PATCH net-next 4/4] i40: consolidate handling of
 XDP program actions
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
Cc: netdev@vger.kernel.org, edwin.verplanke@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com, cristian.dumitrescu@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Consolidate the actions performed on the packet based on the XDP
program result into a separate function that is easier to read and
maintain. Simplify the i40e_construct_skb_zc function, so that the
input xdp buffer is always freed, regardless of whether the output
skb is successfully created or not. Simplify the behavior of the
i40e_clean_rx_irq_zc function, so that the current packet descriptor
is dropped when function i40_construct_skb_zc returns an error as
opposed to re-processing the same description on the next invocation.

Signed-off-by: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 98 ++++++++++++++--------
 1 file changed, 61 insertions(+), 37 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 1167496a2e08..470b8600adb1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -250,17 +250,70 @@ static struct sk_buff *i40e_construct_skb_zc(struct i40e_ring *rx_ring,
 			       xdp->data_end - xdp->data_hard_start,
 			       GFP_ATOMIC | __GFP_NOWARN);
 	if (unlikely(!skb))
-		return NULL;
+		goto out;
 
 	skb_reserve(skb, xdp->data - xdp->data_hard_start);
 	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
 	if (metasize)
 		skb_metadata_set(skb, metasize);
 
+out:
 	xsk_buff_free(xdp);
 	return skb;
 }
 
+static void i40e_handle_xdp_result_zc(struct i40e_ring *rx_ring,
+				      struct xdp_buff *xdp_buff,
+				      union i40e_rx_desc *rx_desc,
+				      unsigned int *rx_packets,
+				      unsigned int *rx_bytes,
+				      unsigned int size,
+				      unsigned int xdp_res)
+{
+	struct sk_buff *skb;
+
+	*rx_packets = 1;
+	*rx_bytes = size;
+
+	if (likely(xdp_res == I40E_XDP_REDIR) || xdp_res == I40E_XDP_TX)
+		return;
+
+	if (xdp_res == I40E_XDP_CONSUMED) {
+		xsk_buff_free(xdp_buff);
+		return;
+	}
+
+	if (xdp_res == I40E_XDP_PASS) {
+		/* NB! We are not checking for errors using
+		 * i40e_test_staterr with
+		 * BIT(I40E_RXD_QW1_ERROR_SHIFT). This is due to that
+		 * SBP is *not* set in PRT_SBPVSI (default not set).
+		 */
+		skb = i40e_construct_skb_zc(rx_ring, xdp_buff);
+		if (!skb) {
+			rx_ring->rx_stats.alloc_buff_failed++;
+			*rx_packets = 0;
+			*rx_bytes = 0;
+			return;
+		}
+
+		if (eth_skb_pad(skb)) {
+			*rx_packets = 0;
+			*rx_bytes = 0;
+			return;
+		}
+
+		*rx_bytes = skb->len;
+		i40e_process_skb_fields(rx_ring, rx_desc, skb);
+		napi_gro_receive(&rx_ring->q_vector->napi, skb);
+		return;
+	}
+
+	/* Should never get here, as all valid cases have been handled already.
+	 */
+	WARN_ON_ONCE(1);
+}
+
 /**
  * i40e_clean_rx_irq_zc - Consumes Rx packets from the hardware ring
  * @rx_ring: Rx ring
@@ -276,10 +329,11 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 	u16 count_mask = rx_ring->count - 1;
 	unsigned int xdp_res, xdp_xmit = 0;
 	bool failure = false;
-	struct sk_buff *skb;
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		union i40e_rx_desc *rx_desc;
+		unsigned int rx_packets;
+		unsigned int rx_bytes;
 		struct xdp_buff *bi;
 		unsigned int size;
 		u64 qword;
@@ -313,42 +367,12 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		xsk_buff_dma_sync_for_cpu(bi, rx_ring->xsk_pool);
 
 		xdp_res = i40e_run_xdp_zc(rx_ring, bi);
-		if (xdp_res) {
-			if (xdp_res & (I40E_XDP_TX | I40E_XDP_REDIR))
-				xdp_xmit |= xdp_res;
-			else
-				xsk_buff_free(bi);
-
-			total_rx_bytes += size;
-			total_rx_packets++;
-
-			next_to_clean = (next_to_clean + 1) & count_mask;
-			continue;
-		}
-
-		/* XDP_PASS path */
-
-		/* NB! We are not checking for errors using
-		 * i40e_test_staterr with
-		 * BIT(I40E_RXD_QW1_ERROR_SHIFT). This is due to that
-		 * SBP is *not* set in PRT_SBPVSI (default not set).
-		 */
-		skb = i40e_construct_skb_zc(rx_ring, bi);
-		if (!skb) {
-			rx_ring->rx_stats.alloc_buff_failed++;
-			break;
-		}
-
+		i40e_handle_xdp_result_zc(rx_ring, bi, rx_desc, &rx_packets,
+					  &rx_bytes, size, xdp_res);
+		total_rx_packets += rx_packets;
+		total_rx_bytes += rx_bytes;
+		xdp_xmit |= xdp_res & (I40E_XDP_TX | I40E_XDP_REDIR);
 		next_to_clean = (next_to_clean + 1) & count_mask;
-
-		if (eth_skb_pad(skb))
-			continue;
-
-		total_rx_bytes += skb->len;
-		total_rx_packets++;
-
-		i40e_process_skb_fields(rx_ring, rx_desc, skb);
-		napi_gro_receive(&rx_ring->q_vector->napi, skb);
 	}
 
 	rx_ring->next_to_clean = next_to_clean;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
