Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FB664B928
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 17:01:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B207881E86;
	Tue, 13 Dec 2022 16:01:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B207881E86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670947308;
	bh=tM7/l+IyYHrkRwFINCqvaUQhYykC0/AhE5aFSGCw6Pk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7JgOtY9GDKHTs2L8Z5oAp9G02xIff+6MlWlqMnx6Hagqgw7ZwTfoGJwysduyWZ6uz
	 m4LoTnMCoFBM3gSafM56NgUohGKdiouduiM7AsAtvPhg5+ojAkpdk+SH72IqYH+sFb
	 XqmJ7pBSv6ULKUNHOzwTV8j6isg0OEnd2h0P53eYx5GwjSuL+09TolFMMaDTPPVrUs
	 3vKDGCiEJttQ6+wACXKZutV+uNeNr46cE2sizRq/4EdYUPkw/JBSNKr+bJahARPT05
	 7pyW2R9KpiVyXXV0C+J4uDfB9nQhfguJje1J2I5CaK9XkmstM+6iQ8L7aqj8kIctwi
	 1jgY/UE3UNrDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3vFT6woflS0O; Tue, 13 Dec 2022 16:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADC998143C;
	Tue, 13 Dec 2022 16:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADC998143C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D4A991BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AEC90416CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEC90416CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x47flEXkR3aS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Dec 2022 11:04:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2105416C3
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2105416C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="305744407"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="305744407"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:04:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679263050"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="679263050"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:04:21 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: tirtha@gmail.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Dec 2022 16:20:22 +0530
Message-Id: <20221213105023.196409-5-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
References: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 13 Dec 2022 16:01:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670929463; x=1702465463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tQWynMwI6beWgXu1++OI8/HcznIn+RkDmF5yOjh7mMw=;
 b=LFHpmRUCAAciOhXHarEHBH9Xn9PQTHdl9h1EBwSXrkZZI2jzcDc7RwZN
 7Y/J4Xyhy5MFsKOyz4pdiXNUBXIiWvBY7aD6UogaGztEnOtWFTrbKkMGE
 fl/kckpAOHtsKQultjo8ixpWxwhFqnY5byBB+9iQaTWgggJlb6LV6nLG5
 532jZv/wFjvaYa+/M8Mvn3YRgeJAMv3ztwtHoWAh2JY3m/Isu/gj/9k2p
 pKJbOoAX8vmkr+Zs7uZD/qJ2YeiLPqw44VVBERHsnxLJq6BzTNyIp334z
 EIDwo6hchPYaYFO9GnNDGe+6PGoNO6CDDBvLc8b7wsz7AUtyneFE4JfxL
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LFHpmRUC
Subject: [Intel-wired-lan] [PATCH intel-next 4/5] i40e: pull out rx buffer
 allocation to end of i40e_clean_rx_irq()
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

Previously i40e_alloc_rx_buffers() was called for every 32 cleaned
buffers. For multi-buffers this may not be optimal as there may be more
cleaned buffers in each i40e_clean_rx_irq() call. So this is now pulled
out of the loop and moved to the end of i40e_clean_rx_irq().

As a consequence instead of counting the number of buffers to be cleaned,
I40E_DESC_UNUSED() can be used to call i40e_alloc_rx_buffers().

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index e01bcc91a196..dc9dc0acdd37 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2425,7 +2425,6 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			     unsigned int *rx_cleaned)
 {
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0, frame_sz = 0;
-	u16 cleaned_count = I40E_DESC_UNUSED(rx_ring);
 	unsigned int offset = rx_ring->rx_offset;
 	struct sk_buff *skb = rx_ring->skb;
 	u16 ntp = rx_ring->next_to_process;
@@ -2450,13 +2449,6 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 		unsigned int size;
 		u64 qword;
 
-		/* return some buffers to hardware, one at a time is too slow */
-		if (cleaned_count >= I40E_RX_BUFFER_WRITE) {
-			failure = failure ||
-				  i40e_alloc_rx_buffers(rx_ring, cleaned_count);
-			cleaned_count = 0;
-		}
-
 		rx_desc = I40E_RX_DESC(rx_ring, ntp);
 
 		/* status_error_len will always be zero for unused descriptors
@@ -2479,7 +2471,6 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			rx_buffer = i40e_rx_bi(rx_ring, ntp);
 			I40E_INC_NEXT(ntp, ntc, rmax);
 			i40e_reuse_rx_page(rx_ring, rx_buffer);
-			cleaned_count++;
 			continue;
 		}
 
@@ -2531,7 +2522,6 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 		}
 
 		i40e_put_rx_buffer(rx_ring, rx_buffer);
-		cleaned_count++;
 
 		I40E_INC_NEXT(ntp, ntc, rmax);
 		if (i40e_is_non_eop(rx_ring, rx_desc))
@@ -2558,6 +2548,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 	rx_ring->next_to_process = ntp;
 	rx_ring->next_to_clean = ntc;
 
+	failure = i40e_alloc_rx_buffers(rx_ring, I40E_DESC_UNUSED(rx_ring));
+
 	i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
 	rx_ring->skb = skb;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
