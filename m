Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E006F69B371
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 20:56:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F69441153;
	Fri, 17 Feb 2023 19:56:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F69441153
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676663777;
	bh=0k9LowJ7e1A/4jbQQsKlxaZwwHvDVLCeYEkNQr5NA+s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cJRcDsCbuGrUiewUVfO1WdtVESWqdiAM1ypuXLcE0gbxni86M+4+NiSjqtGpXfsfv
	 eblYSe9d1uVneHMeA5CxA0R5WdjdxjDVc+ST0mVUZ5R7iJNQ3XiNagppiDtr2te3E4
	 aWtAOQlCqSzPnJHTyY1lgK2fXn2KP4tZQRAtXwQ+RRh/s8rfn3rHApKxVtHQ+oh2Dq
	 bNlKdYWEggp15mY/q4ywqpt3ucho5dA5tPryJvi+Sf0pEigdXZdwcBOPtZ/BcKIoaI
	 dm+GocI2FF+fKnzveNJbn/NzV3feVdwYiVwIBkdY5BELO/eIgioxEzRr/0BwbcG0yf
	 GODqTZvTTjQ8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EkUpGqchFU6o; Fri, 17 Feb 2023 19:56:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A1F140503;
	Fri, 17 Feb 2023 19:56:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A1F140503
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 580A81BF976
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 19:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC42F401D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 19:29:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC42F401D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7rV6R9vFYWk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 19:29:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32E19402DC
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32E19402DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 19:29:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="394550072"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="394550072"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 11:29:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="701013394"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="701013394"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 11:29:51 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 18 Feb 2023 00:45:13 +0530
Message-Id: <20230217191515.166819-7-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230217191515.166819-1-tirthendu.sarkar@intel.com>
References: <20230217191515.166819-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 17 Feb 2023 19:55:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676662192; x=1708198192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8VWWNqJ/ZkjsHE6fhyCY030LG6tahcl5cgZa5zjKV34=;
 b=VfNJqCimP1aqwEBYRN38pisV9MR3/jJMxTU23UXyiIqfSR4FhXtFWPc9
 yx0E5O3dOm8yt2O5KpnulgAHwMRU3pS++32KyM1VyLe9kJsxAMbcI0JOu
 ms+/KF/DtyhrH0QMnuV+I8qUveWbuwqQca4yBMkZeeZkTBx1TtUSpWRf6
 e4OBn1v94J+eYekW3WWL2nNpvnRwPY0m7jaXl2ghjWeHyzIi2YgHrjRB3
 D905IAudCO7jCHw8omrCMghKM488Mi4wkAwmqEfX//+LVTlMyaqagWCE7
 IC1YTh7P7gegd9WOsF30LIL3vrd21TcK1Jnu4TsvddLuuWu7E+v8Aotoe
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VfNJqCim
Subject: [Intel-wired-lan] [PATCH intel-next v6 6/8] i40e: introduce
 next_to_process to i40e_ring
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

Add a new field called next_to_process in the i40e_ring that is
advanced for every buffer and change the semantics of next_to_clean to
point to the first buffer of a packet. Driver will use next_to_process
in the same way next_to_clean was used previously.

For the non multi-buffer case, next_to_process and next_to_clean will
always be the same since each packet consists of a single buffer.

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 26 ++++++++++++---------
 drivers/net/ethernet/intel/i40e/i40e_txrx.h |  4 ++++
 2 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 01340f620d96..94c50fa223bd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1524,6 +1524,7 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
 
 	rx_ring->next_to_alloc = 0;
 	rx_ring->next_to_clean = 0;
+	rx_ring->next_to_process = 0;
 	rx_ring->next_to_use = 0;
 }
 
@@ -1576,6 +1577,7 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
 
 	rx_ring->next_to_alloc = 0;
 	rx_ring->next_to_clean = 0;
+	rx_ring->next_to_process = 0;
 	rx_ring->next_to_use = 0;
 
 	/* XDP RX-queue info only needed for RX rings exposed to XDP */
@@ -2076,7 +2078,7 @@ static struct i40e_rx_buffer *i40e_get_rx_buffer(struct i40e_ring *rx_ring,
 {
 	struct i40e_rx_buffer *rx_buffer;
 
-	rx_buffer = i40e_rx_bi(rx_ring, rx_ring->next_to_clean);
+	rx_buffer = i40e_rx_bi(rx_ring, rx_ring->next_to_process);
 	rx_buffer->page_count =
 #if (PAGE_SIZE < 8192)
 		page_count(rx_buffer->page);
@@ -2375,16 +2377,16 @@ void i40e_finalize_xdp_rx(struct i40e_ring *rx_ring, unsigned int xdp_res)
 }
 
 /**
- * i40e_inc_ntc: Advance the next_to_clean index
+ * i40e_inc_ntp: Advance the next_to_process index
  * @rx_ring: Rx ring
  **/
-static void i40e_inc_ntc(struct i40e_ring *rx_ring)
+static void i40e_inc_ntp(struct i40e_ring *rx_ring)
 {
-	u32 ntc = rx_ring->next_to_clean + 1;
+	u32 ntp = rx_ring->next_to_process + 1;
 
-	ntc = (ntc < rx_ring->count) ? ntc : 0;
-	rx_ring->next_to_clean = ntc;
-	prefetch(I40E_RX_DESC(rx_ring, ntc));
+	ntp = (ntp < rx_ring->count) ? ntp : 0;
+	rx_ring->next_to_process = ntp;
+	prefetch(I40E_RX_DESC(rx_ring, ntp));
 }
 
 /**
@@ -2421,6 +2423,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
+		u16 ntp = rx_ring->next_to_process;
 		struct i40e_rx_buffer *rx_buffer;
 		union i40e_rx_desc *rx_desc;
 		unsigned int size;
@@ -2433,7 +2436,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			cleaned_count = 0;
 		}
 
-		rx_desc = I40E_RX_DESC(rx_ring, rx_ring->next_to_clean);
+		rx_desc = I40E_RX_DESC(rx_ring, ntp);
 
 		/* status_error_len will always be zero for unused descriptors
 		 * because it's cleared in cleanup, and overlaps with hdr_addr
@@ -2452,8 +2455,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			i40e_clean_programming_status(rx_ring,
 						      rx_desc->raw.qword[0],
 						      qword);
-			rx_buffer = i40e_rx_bi(rx_ring, rx_ring->next_to_clean);
-			i40e_inc_ntc(rx_ring);
+			rx_buffer = i40e_rx_bi(rx_ring, ntp);
+			i40e_inc_ntp(rx_ring);
 			i40e_reuse_rx_page(rx_ring, rx_buffer);
 			cleaned_count++;
 			continue;
@@ -2509,7 +2512,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 		i40e_put_rx_buffer(rx_ring, rx_buffer);
 		cleaned_count++;
 
-		i40e_inc_ntc(rx_ring);
+		i40e_inc_ntp(rx_ring);
+		rx_ring->next_to_clean = rx_ring->next_to_process;
 		if (i40e_is_non_eop(rx_ring, rx_desc))
 			continue;
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index 3e2935365104..6e0fd73367df 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -338,6 +338,10 @@ struct i40e_ring {
 	u8 dcb_tc;			/* Traffic class of ring */
 	u8 __iomem *tail;
 
+	/* Next descriptor to be processed; next_to_clean is updated only on
+	 * processing EOP descriptor
+	 */
+	u16 next_to_process;
 	/* high bit set means dynamic, use accessor routines to read/write.
 	 * hardware only supports 2us resolution for the ITR registers.
 	 * these values always store the USER setting, and must be converted
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
