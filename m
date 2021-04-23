Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C030368FF3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 12:00:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C883260DDB;
	Fri, 23 Apr 2021 10:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-O7f8jdI8Ck; Fri, 23 Apr 2021 10:00:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1D1F60DC9;
	Fri, 23 Apr 2021 10:00:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A4451BF330
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75B2E400D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id egjDlmZ9HI_p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 10:00:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF5F4400C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:00:08 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 k4-20020a7bc4040000b02901331d89fb83so877418wmi.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 03:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZtqQ/fIkMXnlZlanfCmzb1tC9yrRL/luQiVuBdOzdFM=;
 b=NqM4bPpUOvdfwmVITdWymYy9HXL3KF45WsVkLA5Y8OXd7H96ME50+YB22M4Ldn73Y2
 WImCXmtwUIfV+z0UY75hfbNeordkoEK5it9VK1MgPJdLkJ3SXWA59VO0QAXTyClcVeTO
 n6HP+4jZv8J5spzm2UrewFRLadNNEsJJoh/KR75oxDRAJXaV5b1cpoaYBA82EXeJ4Nn7
 EW/3FgEqpbUNg1I9JeuAYI/KGkEEJqHF8PfcrBFaSM55xdt+JH/R12Dgatv2GHFh7MDx
 YTb6AajCP2NHws2O6YpetKzcrkoN4cduJ/QbJgsYscM/qWxo93tfq2Z+y18YEwI6+6kw
 HeTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZtqQ/fIkMXnlZlanfCmzb1tC9yrRL/luQiVuBdOzdFM=;
 b=L7lMqZIVnyzNortQpnu1geatYdZLX2oemAN6MCdU4z/XIz8Q6OXuLMDA82PvTHMh6H
 9tobHEHKsFD4RlBYD42AQTzIjDdEPnzibeYDy7DdoLdiE+u2dRfbBxPtHB2y16ZO4Y/e
 g/GZAu20dXMGryHcE01e/+9cjO0GbeaQNm+paMsjKrrabaziCYcCb7WEF6VogE90QT/C
 D8KGedtJIal7YiQyTXu3DRW4HNp5Kgw0icaHufjb7fWxAUNn8XScEPz/X4HFHoYiRfv9
 7rRui1n0Ps+wv0YMhhwVrF91XqpPTjI8DAgspFu2B9GepX1VP4e+GzaKjaSc/G4TzXE9
 WTfA==
X-Gm-Message-State: AOAM530r1LEmsXSyQTM3YWUBDSmwTIea6F965JFRXi0ONWIu9H+APgsv
 AsEN0IRoOQGrITUdL4A9zIA=
X-Google-Smtp-Source: ABdhPJy98xK/2/EqIg1cNP1EzFamSR4COceu6JYV1Cgt3O9GiBfMBqML4+QxR30Ilz5sN1gbgRGnPA==
X-Received: by 2002:a1c:1dd0:: with SMTP id d199mr3319739wmd.54.1619172006911; 
 Fri, 23 Apr 2021 03:00:06 -0700 (PDT)
Received: from localhost.localdomain ([188.149.128.194])
 by smtp.gmail.com with ESMTPSA id e10sm8317114wrw.20.2021.04.23.03.00.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Apr 2021 03:00:06 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Fri, 23 Apr 2021 11:59:55 +0200
Message-Id: <20210423095955.15207-1-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net] i40e: fix broken XDP support
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
Cc: netdev@vger.kernel.org, Jesper Dangaard Brouer <brouer@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c") broke
XDP support in the i40e driver. That commit was fixing a sparse error
in the code by introducing a new variable xdp_res instead of
overloading this into the skb pointer. The problem is that the code
later uses the skb pointer in if statements and these where not
extended to also test for the new xdp_res variable. Fix this by adding
the correct tests for xdp_res in these places.

Fixes: 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c")
Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 06b4271219b1..46355c6bdc8f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1961,10 +1961,6 @@ static bool i40e_cleanup_headers(struct i40e_ring *rx_ring, struct sk_buff *skb,
 				 union i40e_rx_desc *rx_desc)
 
 {
-	/* XDP packets use error pointer so abort at this point */
-	if (IS_ERR(skb))
-		return true;
-
 	/* ERR_MASK will only have valid bits if EOP set, and
 	 * what we are doing here is actually checking
 	 * I40E_RX_DESC_ERROR_RXE_SHIFT, since it is the zeroth bit in
@@ -2447,7 +2443,6 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 	unsigned int xdp_xmit = 0;
 	bool failure = false;
 	struct xdp_buff xdp;
-	int xdp_res = 0;
 
 #if (PAGE_SIZE < 8192)
 	frame_sz = i40e_rx_frame_truesize(rx_ring, 0);
@@ -2459,6 +2454,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 		union i40e_rx_desc *rx_desc;
 		int rx_buffer_pgcnt;
 		unsigned int size;
+		int xdp_res = 0;
 		u64 qword;
 
 		/* return some buffers to hardware, one at a time is too slow */
@@ -2534,7 +2530,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 		}
 
 		/* exit if we failed to retrieve a buffer */
-		if (!skb) {
+		if (!xdp_res && !skb) {
 			rx_ring->rx_stats.alloc_buff_failed++;
 			rx_buffer->pagecnt_bias++;
 			break;
@@ -2547,7 +2543,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 		if (i40e_is_non_eop(rx_ring, rx_desc))
 			continue;
 
-		if (i40e_cleanup_headers(rx_ring, skb, rx_desc)) {
+		if (xdp_res || i40e_cleanup_headers(rx_ring, skb, rx_desc)) {
 			skb = NULL;
 			continue;
 		}

base-commit: bb556de79f0a9e647e8febe15786ee68483fa67b
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
