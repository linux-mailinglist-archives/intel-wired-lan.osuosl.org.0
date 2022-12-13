Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9675264B926
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 17:01:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 109D660B6F;
	Tue, 13 Dec 2022 16:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 109D660B6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670947301;
	bh=jUSAbkrtu6a8WhXBb4msrNas4BGSLe3Y+7x14009Gzc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bSTbwzbzLtz6W4QT08UX3J2RvRnhbX3uAPgbWj3rwLdV1YjXOlU4gGRBWvT9f8WP5
	 qrrKeCF6PBSsiRcjeReIcILGKo75nHk/xK5DMLBhhOQXx/XFJZzp+2jnHVDTYI4/Yn
	 KdfQ+kNAvRunv6wFqN3sUzxeOJIv2KMLOvotcBp7p4dXYAnmsFnpeWfR7qX+DYyRg4
	 hUgVbsInL4gDR+Nwvww2SYK4oaP5BnUa3T4SJfYoFwn/+v74nS6Mo1Ki+di2nQh4D3
	 l/7wNMAwm7I7jFueM/9vgyfEMo0a7ZpURoEXfG9sfqZXx7FzJimmuizEXVIDIS8Ytz
	 Pfe5Ev8jFs7LQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lHIN3DDWeyvO; Tue, 13 Dec 2022 16:01:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED8DB60A8B;
	Tue, 13 Dec 2022 16:01:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED8DB60A8B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E93D81BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0AAD416C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0AAD416C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wSAWHlqxkwQL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Dec 2022 11:04:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1B1F416C3
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C1B1F416C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="305744380"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="305744380"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:04:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679263034"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="679263034"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:04:16 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: tirtha@gmail.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Dec 2022 16:20:20 +0530
Message-Id: <20221213105023.196409-3-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
References: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 13 Dec 2022 16:01:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670929458; x=1702465458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4UTEtnZ00MZCgO9jdhUN/FjjiE+1khoFY6F3x7SbkxA=;
 b=M53gucFq3lQQy4z+v4JUxuydocYKv6+75PklYAzA70OIf/hWa+zadeTc
 lOUUtsuUJn68zKL4YLLtJ4nyDhqTLdXH8/UdQGeRigJuF4q8XQqhiUNfv
 K6/neom0yPOIKxaS/KT/2zIFrZiu0tEXC8I695Nwb/vjYzJQFKXoNgI5b
 BJC/D2y41ZqIgvQ3irwZ3roPPDpEtFjM6VlcWM9vVXofheSLjxCFBqE4/
 d63naShWehKbaU6p/LG8OvnEnUFLRMkBa++1kd402KS2iqo91jf1Dixrh
 Yw9MSKw3CCBH15/9QQqYM7ZeJZ5m/uRWhQkmcPt+N18WZHBge0zBRPuRm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M53gucFq
Subject: [Intel-wired-lan] [PATCH intel-next 2/5] i40e: avoid per buffer
 next_to_clean access from i40e_ring
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change read/write of next_to_clean from per buffer to beginning and end
of i40_clean_rx_irq(). Use local variables for per buffer increments.

Move out default reading of buffer from 'next_to_clean' in
i40e_get_rx_buffer() and use caller provided index instead. This will
enable walking through all buffers of a multi-buffer packet.

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 33 ++++++++-------------
 1 file changed, 13 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index a7fba294a8f4..c6296cf08294 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -12,6 +12,7 @@
 #include "i40e_xsk.h"
 
 #define I40E_TXD_CMD (I40E_TX_DESC_CMD_EOP | I40E_TX_DESC_CMD_RS)
+#define I40E_IDX_NEXT(n, max) { if (++(n) > (max)) n = 0; }
 /**
  * i40e_fdir - Generate a Flow Director descriptor based on fdata
  * @tx_ring: Tx ring to send buffer on
@@ -2056,16 +2057,18 @@ static void i40e_add_rx_frag(struct i40e_ring *rx_ring,
  * i40e_get_rx_buffer - Fetch Rx buffer and synchronize data for use
  * @rx_ring: rx descriptor ring to transact packets on
  * @size: size of buffer to add to skb
+ * @next: index of the buffer to be fetched
  *
  * This function will pull an Rx buffer from the ring and synchronize it
  * for use by the CPU.
  */
 static struct i40e_rx_buffer *i40e_get_rx_buffer(struct i40e_ring *rx_ring,
-						 const unsigned int size)
+						 const unsigned int size,
+						 u32 next)
 {
 	struct i40e_rx_buffer *rx_buffer;
 
-	rx_buffer = i40e_rx_bi(rx_ring, rx_ring->next_to_clean);
+	rx_buffer = i40e_rx_bi(rx_ring, next);
 	rx_buffer->page_count =
 #if (PAGE_SIZE < 8192)
 		page_count(rx_buffer->page);
@@ -2402,19 +2405,6 @@ void i40e_finalize_xdp_rx(struct i40e_ring *rx_ring, unsigned int xdp_res)
 	}
 }
 
-/**
- * i40e_inc_ntc: Advance the next_to_clean index
- * @rx_ring: Rx ring
- **/
-static void i40e_inc_ntc(struct i40e_ring *rx_ring)
-{
-	u32 ntc = rx_ring->next_to_clean + 1;
-
-	ntc = (ntc < rx_ring->count) ? ntc : 0;
-	rx_ring->next_to_clean = ntc;
-	prefetch(I40E_RX_DESC(rx_ring, ntc));
-}
-
 /**
  * i40e_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: rx descriptor ring to transact packets on
@@ -2435,6 +2425,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 	u16 cleaned_count = I40E_DESC_UNUSED(rx_ring);
 	unsigned int offset = rx_ring->rx_offset;
 	struct sk_buff *skb = rx_ring->skb;
+	u16 ntc = rx_ring->next_to_clean;
+	u16 rmax = rx_ring->count - 1;
 	unsigned int xdp_xmit = 0;
 	struct bpf_prog *xdp_prog;
 	bool failure = false;
@@ -2461,7 +2453,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			cleaned_count = 0;
 		}
 
-		rx_desc = I40E_RX_DESC(rx_ring, rx_ring->next_to_clean);
+		rx_desc = I40E_RX_DESC(rx_ring, ntc);
 
 		/* status_error_len will always be zero for unused descriptors
 		 * because it's cleared in cleanup, and overlaps with hdr_addr
@@ -2480,8 +2472,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			i40e_clean_programming_status(rx_ring,
 						      rx_desc->raw.qword[0],
 						      qword);
-			rx_buffer = i40e_rx_bi(rx_ring, rx_ring->next_to_clean);
-			i40e_inc_ntc(rx_ring);
+			rx_buffer = i40e_rx_bi(rx_ring, ntc);
+			I40E_IDX_NEXT(ntc, rmax);
 			i40e_reuse_rx_page(rx_ring, rx_buffer);
 			cleaned_count++;
 			continue;
@@ -2493,7 +2485,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			break;
 
 		i40e_trace(clean_rx_irq, rx_ring, rx_desc, skb);
-		rx_buffer = i40e_get_rx_buffer(rx_ring, size);
+		rx_buffer = i40e_get_rx_buffer(rx_ring, size, ntc);
 
 		/* retrieve a buffer from the ring */
 		if (!skb) {
@@ -2537,7 +2529,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 		i40e_put_rx_buffer(rx_ring, rx_buffer);
 		cleaned_count++;
 
-		i40e_inc_ntc(rx_ring);
+		I40E_IDX_NEXT(ntc, rmax);
 		if (i40e_is_non_eop(rx_ring, rx_desc))
 			continue;
 
@@ -2559,6 +2551,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 		/* update budget accounting */
 		total_rx_packets++;
 	}
+	rx_ring->next_to_clean = ntc;
 
 	i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
 	rx_ring->skb = skb;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
