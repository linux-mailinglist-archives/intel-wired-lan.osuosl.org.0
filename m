Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0127346D53A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 15:08:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A16C760F61;
	Wed,  8 Dec 2021 14:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id raE-oLW9476y; Wed,  8 Dec 2021 14:08:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B48D960A46;
	Wed,  8 Dec 2021 14:08:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A04001BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 14:07:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 867D0400F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 14:07:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D-XYnKVrFFPF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 14:07:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 777494016E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 14:07:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="225093190"
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="225093190"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 06:07:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="515766325"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 08 Dec 2021 06:07:36 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1B8E7Quj009548; Wed, 8 Dec 2021 14:07:34 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Dec 2021 15:07:00 +0100
Message-Id: <20211208140702.642741-8-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211208140702.642741-1-alexandr.lobakin@intel.com>
References: <20211208140702.642741-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 net-next 7/9] ixgbe: pass bi->xdp to
 ixgbe_construct_skb_zc() directly
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
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, KP Singh <kpsingh@kernel.org>,
 bpf@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To not dereference bi->xdp each time in ixgbe_construct_skb_zc(),
pass bi->xdp as an argument instead of bi. We can also call
xsk_buff_free() outside of the function as well as assign bi->xdp
to NULL, which seems to make it closer to its name.

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index db2bc58dfcfd..1d74a7980d81 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -207,26 +207,24 @@ bool ixgbe_alloc_rx_buffers_zc(struct ixgbe_ring *rx_ring, u16 count)
 }
 
 static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring *rx_ring,
-					      struct ixgbe_rx_buffer *bi)
+					      const struct xdp_buff *xdp)
 {
-	unsigned int metasize = bi->xdp->data - bi->xdp->data_meta;
-	unsigned int datasize = bi->xdp->data_end - bi->xdp->data;
+	unsigned int metasize = xdp->data - xdp->data_meta;
+	unsigned int datasize = xdp->data_end - xdp->data;
 	struct sk_buff *skb;
 
 	/* allocate a skb to store the frags */
 	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
-			       bi->xdp->data_end - bi->xdp->data_hard_start,
+			       xdp->data_end - xdp->data_hard_start,
 			       GFP_ATOMIC | __GFP_NOWARN);
 	if (unlikely(!skb))
 		return NULL;
 
-	skb_reserve(skb, bi->xdp->data - bi->xdp->data_hard_start);
-	memcpy(__skb_put(skb, datasize), bi->xdp->data, datasize);
+	skb_reserve(skb, xdp->data - xdp->data_hard_start);
+	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
 	if (metasize)
 		skb_metadata_set(skb, metasize);
 
-	xsk_buff_free(bi->xdp);
-	bi->xdp = NULL;
 	return skb;
 }
 
@@ -317,12 +315,15 @@ int ixgbe_clean_rx_irq_zc(struct ixgbe_q_vector *q_vector,
 		}
 
 		/* XDP_PASS path */
-		skb = ixgbe_construct_skb_zc(rx_ring, bi);
+		skb = ixgbe_construct_skb_zc(rx_ring, bi->xdp);
 		if (!skb) {
 			rx_ring->rx_stats.alloc_rx_buff_failed++;
 			break;
 		}
 
+		xsk_buff_free(bi->xdp);
+		bi->xdp = NULL;
+
 		cleaned_count++;
 		ixgbe_inc_ntc(rx_ring);
 
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
