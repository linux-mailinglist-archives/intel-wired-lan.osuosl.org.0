Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343526837BB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 21:45:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B59AD4052E;
	Tue, 31 Jan 2023 20:45:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B59AD4052E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675197937;
	bh=W44eOOzi2npjHQ1OGxdg95HC2scPEuIpm+pulP/cUFo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RkxfDBz0mBu5CvIOB2tJUbAysQCQQ8c1SNOqTdrwhtcb28KR5fBlBbvoXVCEwuZFV
	 ouqprZ9O/fzX27T0zNXBT47Xo0ZNOZGD5O+WBrqqLzcWXIkV2GJhp/KN2TFC8wFhUH
	 fMnOc2zR5XMcTwN/lKa2gWab3T25jWTceePoerLUQnMkWKwdVhJ/tDSgJpveSuEfNn
	 wrdKuHmI9YnhPGgntLTZLqyR/MGJpllNnMEvin77e+olQEvZtYEfmuBGINtGgUOnxd
	 4cnUmj4ENt5tfbC4c4ut+NXCBo3TA0nLXfJjvLGQv1Nh1MK1pbBTexgW37C2rj0S7y
	 uk6VtgLT2xqEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Be440biRg84o; Tue, 31 Jan 2023 20:45:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A46F2400C8;
	Tue, 31 Jan 2023 20:45:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A46F2400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7963E1BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 52CB260BF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52CB260BF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zpa9NgS9dffj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 20:45:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E12960BDE
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E12960BDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414167141"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414167141"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:45:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788595248"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788595248"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2023 12:45:19 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 21:44:57 +0100
Message-Id: <20230131204506.219292-5-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
References: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197923; x=1706733923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fuhQHeKyui2rL3EdaJvz4AGvRHpKLNGu3DMNSdYMsqk=;
 b=eRMwGtBHRBEmIXaepdP/8zKVzqBXyv254Gu9ufkM1vzq/SDfRZhEHzOW
 Ih68wGCCc9561gnAzp7f3a8/filkbRri72g5N9boptqRlvrfaqJNGyg9V
 FT2u8FeNadHasKSLXYvTl8ru4L1qQR93gluSzIOLqbc8SZgCYrGErBn6R
 NXoUllsi/6KyffdEWGYaLeoivuggypuRCjJ6ZOJb3L/Yw8DMr/2GEVsig
 skQ2K0REtwfazN7iG7PcE2SyMpuzRSL/tzLoBRTRzY39KQ0tfPf0G+uNh
 HCgNsXUE3EMYw/UmHdnt1dDxOPgoXl6lmHmjp7gDBLOaGWmM/QlJsRlZU
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eRMwGtBH
Subject: [Intel-wired-lan] [PATCH bpf-next 04/13] ice: pull out
 next_to_clean bump out of ice_put_rx_buf()
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
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Plan is to move ice_put_rx_buf() to the end of ice_clean_rx_irq() so
in order to keep the ability of walking through HW Rx descriptors, pull
out next_to_clean handling out of ice_put_rx_buf().

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 29 +++++++++++++----------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 03edabd3ec80..1139b16f57cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -898,11 +898,12 @@ ice_reuse_rx_page(struct ice_rx_ring *rx_ring, struct ice_rx_buf *old_buf)
  * for use by the CPU.
  */
 static struct ice_rx_buf *
-ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size)
+ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
+	       const unsigned int ntc)
 {
 	struct ice_rx_buf *rx_buf;
 
-	rx_buf = &rx_ring->rx_buf[rx_ring->next_to_clean];
+	rx_buf = &rx_ring->rx_buf[ntc];
 	rx_buf->pgcnt =
 #if (PAGE_SIZE < 8192)
 		page_count(rx_buf->page);
@@ -1040,19 +1041,12 @@ ice_construct_skb(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf,
  * @rx_ring: Rx descriptor ring to transact packets on
  * @rx_buf: Rx buffer to pull data from
  *
- * This function will update next_to_clean and then clean up the contents
- * of the rx_buf. It will either recycle the buffer or unmap it and free
- * the associated resources.
+ * This function will clean up the contents of the rx_buf. It will either
+ * recycle the buffer or unmap it and free the associated resources.
  */
 static void
 ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
 {
-	u16 ntc = rx_ring->next_to_clean + 1;
-
-	/* fetch, update, and store next to clean */
-	ntc = (ntc < rx_ring->count) ? ntc : 0;
-	rx_ring->next_to_clean = ntc;
-
 	if (!rx_buf)
 		return;
 
@@ -1114,6 +1108,8 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	unsigned int xdp_res, xdp_xmit = 0;
 	struct sk_buff *skb = rx_ring->skb;
 	struct bpf_prog *xdp_prog = NULL;
+	u32 ntc = rx_ring->next_to_clean;
+	u32 cnt = rx_ring->count;
 	bool failure;
 
 	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
@@ -1136,7 +1132,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		u16 rx_ptype;
 
 		/* get the Rx desc from Rx ring based on 'next_to_clean' */
-		rx_desc = ICE_RX_DESC(rx_ring, rx_ring->next_to_clean);
+		rx_desc = ICE_RX_DESC(rx_ring, ntc);
 
 		/* status_error_len will always be zero for unused descriptors
 		 * because it's cleared in cleanup, and overlaps with hdr_addr
@@ -1160,6 +1156,8 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			if (rx_desc->wb.rxdid == FDIR_DESC_RXDID &&
 			    ctrl_vsi->vf)
 				ice_vc_fdir_irq_handler(ctrl_vsi, rx_desc);
+			if (++ntc == cnt)
+				ntc = 0;
 			ice_put_rx_buf(rx_ring, NULL);
 			cleaned_count++;
 			continue;
@@ -1169,7 +1167,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			ICE_RX_FLX_DESC_PKT_LEN_M;
 
 		/* retrieve a buffer from the ring */
-		rx_buf = ice_get_rx_buf(rx_ring, size);
+		rx_buf = ice_get_rx_buf(rx_ring, size, ntc);
 
 		if (!size) {
 			xdp->data = NULL;
@@ -1203,6 +1201,8 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		total_rx_pkts++;
 
 		cleaned_count++;
+		if (++ntc == cnt)
+			ntc = 0;
 		ice_put_rx_buf(rx_ring, rx_buf);
 		continue;
 construct_skb:
@@ -1222,6 +1222,8 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			break;
 		}
 
+		if (++ntc == cnt)
+			ntc = 0;
 		ice_put_rx_buf(rx_ring, rx_buf);
 		cleaned_count++;
 
@@ -1262,6 +1264,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		total_rx_pkts++;
 	}
 
+	rx_ring->next_to_clean = ntc;
 	/* return up to cleaned_count buffers to hardware */
 	failure = ice_alloc_rx_bufs(rx_ring, cleaned_count);
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
