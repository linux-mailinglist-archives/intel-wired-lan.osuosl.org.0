Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A0A696938
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 17:21:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A034415EF;
	Tue, 14 Feb 2023 16:21:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A034415EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676391683;
	bh=pDFKwVgLGUaw2n2lwYBNlfP+fFAWpUrGzsp4aovtrPg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nKlzPF4V0SPS9njjw71YdXfD91+/aAV2Tcriuzs2r7m1UP6yWn0fwOF2wIt++YwFx
	 k8eJMRWIP8FVbdGVDvztydIVHsF4BYSEQ0DwTOkAFQdoP1EyMfjvVdvg0KH/onrYXK
	 M5NB1hzm6KdEJXYwHA/r3HXKzDaBcOpmY02KqbOKlowNYUwEVvtgnwOmTe2iVYyUM1
	 pW10DZuEwikBF4jA6fPsVyOK8YrfJ/8xrUqQkrXOynsEMpLJ5A0wYoK9B2yzSW0pk+
	 uLB9qLHlrjGpGkYgYJ9V2anXEC/oIcVhIhrZQLj96AazvLK3rFMbbT62lGY4XthY3d
	 O0v0cP9Ux2R1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cgZC28MiR37o; Tue, 14 Feb 2023 16:21:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 104DD408AA;
	Tue, 14 Feb 2023 16:21:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 104DD408AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6627B1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 12:44:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43D3340932
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 12:44:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43D3340932
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7pt0TOan_t0I for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 12:44:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72C5040929
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72C5040929
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 12:44:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417371202"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="417371202"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 04:44:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="778308612"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="778308612"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 04:44:46 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Feb 2023 18:00:15 +0530
Message-Id: <20230214123018.54386-6-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230214123018.54386-1-tirthendu.sarkar@intel.com>
References: <20230214123018.54386-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 14 Feb 2023 16:20:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676378687; x=1707914687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4pFUgogt9bqox2rhMdnsKjEOVqWd0AEf78XAdhv5ZaE=;
 b=mJ8IY9A1ZrxaZ25CTvZCE6t8zc8ofjF4phspaFfF6UmlRn7W8eSec1yn
 5KatjOqoY1bfq229ff9NMrJH7y8RFuF99DEBYO0i9Fy0jdk/38Bi/rhPT
 HqoaCipx3xe1MrR5C6BFFAeT2gokMVkKu9Xz6ZGXVGsmvhaMMMJT2CwN0
 IfMveryEhb3Mxuq14sXLjm9k648jpmzpEqyMiQrRdKXAVEOwpCsUxcRn2
 pECxUyOXcoK05eDrt5MoBPPpXCPMLT6k8iDOmpaIkxU6GUHbiGKyQY3Qq
 bMy3pbnYlPvUk+uH4MFSyg0RBs8U4FTUSLJnv+9ajVRTmQAYGr0EM/sHZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mJ8IY9A1
Subject: [Intel-wired-lan] [PATCH intel-next v3 5/8] i40e: use frame_sz
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
