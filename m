Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26C669B370
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 20:56:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 763F540496;
	Fri, 17 Feb 2023 19:56:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 763F540496
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676663773;
	bh=pDFKwVgLGUaw2n2lwYBNlfP+fFAWpUrGzsp4aovtrPg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IMDKBjcHT8D50rcXWW3Vs2IUUP/s3/fSqSiffYiyW6R3Z+AQ3dH+xJ/FBd7IPBAcc
	 OwQSaNet+sY+WPBOmdNOs3gTheYo91IIDpM2Pu6Dcn3LoKpL26pIx3xmtTrj9/BebA
	 Jb9F7SoW3FzxGBZGu5kiiZoxvQUOCGVy3wseeMmON36ylK3INk8P5Lq5tW1QIUoXXa
	 qhADk9JSSvPgCeHW5d03nvWMGIlEXbtduh9T/o1fY28m+pweY99YAs1Rm/x9gTk44c
	 iOfEcRDIy3YSRVyS2aa9rCjpA1dg8/xeHl5OjbLYB33f/Z+pvqkbLpCD5n9p5+1KUI
	 vwI8MHkfVRIXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qJ3jtYGceHnY; Fri, 17 Feb 2023 19:56:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6816E41143;
	Fri, 17 Feb 2023 19:56:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6816E41143
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D6691BF295
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 19:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF14E400CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 19:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF14E400CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RXBZbY-KyiRG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 19:29:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C072402F7
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C072402F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 19:29:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="394550061"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="394550061"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 11:29:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="701013391"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="701013391"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 11:29:50 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 18 Feb 2023 00:45:12 +0530
Message-Id: <20230217191515.166819-6-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230217191515.166819-1-tirthendu.sarkar@intel.com>
References: <20230217191515.166819-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 17 Feb 2023 19:55:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676662191; x=1708198191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4pFUgogt9bqox2rhMdnsKjEOVqWd0AEf78XAdhv5ZaE=;
 b=YziZftzBY/l3GVYS83VSW5pv3OiEP/ls/EbM3KS/jYNIh+RoCdsDpgZ0
 uV+wirnCAEOsC2VZHKA5fC7nC04BYp3Sz0W2nTx7qV3hFmM1D2zSSctwy
 HLveSe8pt3KRM8bWyuepic5dQC+IFZfhFCg0cP9EEzXh0u9f16KasmYKv
 IY/HoQ7f9Wq4Wci2HyNDW1/t6aXluLfwm26IzqgMF3DU3qGbTN49A7s79
 0F/Mw32qo9l0e1pcNLkbxHIjvhTjukRCrhf/e18mTzvPsA29HdDhZyJzV
 rFJ65b8InRBKZ43h0PYRXkqiLPK/pk35UM9aLmX7QQYoubkPpBeSphVhH
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YziZftzB
Subject: [Intel-wired-lan] [PATCH intel-next v6 5/8] i40e: use frame_sz
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
