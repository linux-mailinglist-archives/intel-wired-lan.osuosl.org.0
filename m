Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A16969693A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 17:21:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 978F5408F0;
	Tue, 14 Feb 2023 16:21:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 978F5408F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676391687;
	bh=0k9LowJ7e1A/4jbQQsKlxaZwwHvDVLCeYEkNQr5NA+s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S7C02JXulSGGo6fjGP5rREcy2ArIB/tlU2rqHF9NGJTtEn6Dw4rOfU4bnVzjcv0Dz
	 V2HGUMQmg7y3ZJkCn0VQHZ5v7JTZsYEEafqrL7FWcOR3d3DVQ9eFc3WVhzARz3YnSj
	 kPIJenu5yFbLCYQQKHkZP+1viYvLw+sex+b++XkHnfYf596qHtmjB7a+YN6MhMdCu3
	 GmCo+61gn+KTbcJ1OKSOTlx4mfPU+0u7Vlm3uvYL34v2reM5PgtrLTU3H3OYTJimJ/
	 rSTdDpuaL+7gYHp4AgOw+H3np9H9lUs4ZE0XtOTq11CdxGkl0wvGPYlD2Y0T8b50b0
	 6ZO6aBbQPHPJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k6Jnhw0jCPJx; Tue, 14 Feb 2023 16:21:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C609408EE;
	Tue, 14 Feb 2023 16:21:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C609408EE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 277C51BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 12:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6993840932
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 12:44:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6993840932
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ZY5EL47kh6M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 12:44:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E27240929
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E27240929
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 12:44:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417371209"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="417371209"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 04:44:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="778308618"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="778308618"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 04:44:47 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Feb 2023 18:00:16 +0530
Message-Id: <20230214123018.54386-7-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230214123018.54386-1-tirthendu.sarkar@intel.com>
References: <20230214123018.54386-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 14 Feb 2023 16:20:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676378688; x=1707914688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8VWWNqJ/ZkjsHE6fhyCY030LG6tahcl5cgZa5zjKV34=;
 b=mQp4zb5lbfjIZ2BS3yjDfP/tbEk/KwQ/OIRyNc36IoCm1UhXBW8BAhy3
 7IGV95QB8FG3Hmxl0fqmQ8yUl+niLx+xWv88xjXVMkETXfO4m8uAZ6NND
 ZLLUdgSE7HtKqDPvn5YFHg/Nq6Zo7QrWQKEACSZlO4QmVGf+xz+fBTQ0i
 XnH8CS0qm5qluKxCYUB3knx6pD4IoslcAvquyFATv6XDc5qaOGlQRG2ul
 fwyQyyONPJloXXl5ZRPdvGPM7xwkVzYIq3zy9ffmg2M8M8MDWyybtK7Ns
 Yc2F7YHbuX9++7i4BB1b9kIMvAfVaoqOtG1EcI9suOdEpTmkemuv9sMtV
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mQp4zb5l
Subject: [Intel-wired-lan] [PATCH intel-next v3 6/8] i40e: introduce
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
