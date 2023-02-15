Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03924698042
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 17:13:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9EB9840C06;
	Wed, 15 Feb 2023 16:13:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EB9840C06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676477592;
	bh=pDFKwVgLGUaw2n2lwYBNlfP+fFAWpUrGzsp4aovtrPg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3X5rW+4vK4v6wkCOE7BSUa+RL2UpQviUBx38yRUiUzjIpg9CGMeNudyfHwYsnxr7K
	 svoUD4P3zSyaha+0JD3+C1Y58xKZJjb+8QW0E7CcgfrqEPo/2BDbmjAVgJbPU8fmpr
	 ufOp1u2xyATwcU8cxVpIj0QwnJp+ncT/7XADctVAWYPCnveMCC1tTvwI87RHfrDJBm
	 83INP9UgDQU9V6mms/Uw+9Lex5QdtbMRxGXDSEpeAUWkBX8BrFsiUVY8L3uDruUYrX
	 nMrqxtsRwh2fUG1CCDsl8IH/ruH1fM35F8mgYAikz4vVHjCI1vcJWD2GxHNa+7MV3T
	 LAVvVD3VZKtAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 625XiJ-DyDdP; Wed, 15 Feb 2023 16:13:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C6B84012F;
	Wed, 15 Feb 2023 16:13:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C6B84012F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F1511BF82F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:57:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 604A841621
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:57:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 604A841621
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id McrOa0ZEZekt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Feb 2023 12:57:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DC0E41622
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DC0E41622
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:57:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="393822022"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="393822022"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 04:57:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="998478626"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="998478626"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 04:57:52 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 15 Feb 2023 18:13:02 +0530
Message-Id: <20230215124305.76075-6-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230215124305.76075-1-tirthendu.sarkar@intel.com>
References: <20230215124305.76075-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 15 Feb 2023 16:12:43 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676465873; x=1708001873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4pFUgogt9bqox2rhMdnsKjEOVqWd0AEf78XAdhv5ZaE=;
 b=ZE8k/3L82xA4qeTqMN+8JrpzzGFr/d5UhIBL9L3CZLCkgSdyN1lpIGrI
 uPvxSEm7qzLfjtE2JhIszU04XBYcUIUmyTlwHO+m7/M/NjV9fRdhYkeWh
 ypOMdTbAD5cgHZkIg5RKGlCaxoPIYbRLoe4GyFIFVzs7/YJcO05pbNw6/
 i2h/VSpSya2iPEo5hd9lPg95eIJTbyyrGAxHSiiW9hpAj9XlbTDmuYhK9
 M0hNmJFZrzrQp3l31K65WjukCDuUBEuICguKfJPd0Lij6u1XXGXQyF3HC
 93MqnoDTNcEuVL5c6UjgUjoZW0IwkYNRYJBLQguC/o5Cq7d3f3hrbPnBW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZE8k/3L8
Subject: [Intel-wired-lan] [PATCH intel-next v4 5/8] i40e: use frame_sz
 instead of recalculating truesize for building skb
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In skb path truesize is calculated while building skb. This is now
avoided and xdp->frame_is used instead for both i40e_build_skb() and
i40e_construct_skb().

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 019abd7273a2..01340f620d96 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2113,11 +2113,6 @@ static struct sk_buff *i40e_construct_skb(struct i40e_ring *rx_ring,
 					  struct xdp_buff *xdp)
 {
 	unsigned int size = xdp->data_end - xdp->data;
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = i40e_rx_pg_size(rx_ring) / 2;
-#else
-	unsigned int truesize = SKB_DATA_ALIGN(size);
-#endif
 	unsigned int headlen;
 	struct sk_buff *skb;
 
@@ -2162,10 +2157,10 @@ static struct sk_buff *i40e_construct_skb(struct i40e_ring *rx_ring,
 	if (size) {
 		skb_add_rx_frag(skb, 0, rx_buffer->page,
 				rx_buffer->page_offset + headlen,
-				size, truesize);
+				size, xdp->frame_sz);
 
 		/* buffer is used by skb, update page_offset */
-		i40e_rx_buffer_flip(rx_buffer, truesize);
+		i40e_rx_buffer_flip(rx_buffer, xdp->frame_sz);
 	} else {
 		/* buffer is unused, reset bias back to rx_buffer */
 		rx_buffer->pagecnt_bias++;
@@ -2188,13 +2183,6 @@ static struct sk_buff *i40e_build_skb(struct i40e_ring *rx_ring,
 				      struct xdp_buff *xdp)
 {
 	unsigned int metasize = xdp->data - xdp->data_meta;
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = i40e_rx_pg_size(rx_ring) / 2;
-#else
-	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
-				SKB_DATA_ALIGN(xdp->data_end -
-					       xdp->data_hard_start);
-#endif
 	struct sk_buff *skb;
 
 	/* Prefetch first cache line of first page. If xdp->data_meta
@@ -2205,7 +2193,7 @@ static struct sk_buff *i40e_build_skb(struct i40e_ring *rx_ring,
 	net_prefetch(xdp->data_meta);
 
 	/* build an skb around the page buffer */
-	skb = napi_build_skb(xdp->data_hard_start, truesize);
+	skb = napi_build_skb(xdp->data_hard_start, xdp->frame_sz);
 	if (unlikely(!skb))
 		return NULL;
 
@@ -2216,7 +2204,7 @@ static struct sk_buff *i40e_build_skb(struct i40e_ring *rx_ring,
 		skb_metadata_set(skb, metasize);
 
 	/* buffer is used by skb, update page_offset */
-	i40e_rx_buffer_flip(rx_buffer, truesize);
+	i40e_rx_buffer_flip(rx_buffer, xdp->frame_sz);
 
 	return skb;
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
