Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 315D826CCFE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Sep 2020 22:52:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7C6087720;
	Wed, 16 Sep 2020 20:52:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWHxxi36dW1Z; Wed, 16 Sep 2020 20:52:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E0A587728;
	Wed, 16 Sep 2020 20:52:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A3B51BF855
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Sep 2020 20:50:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 14D1687720
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Sep 2020 20:50:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4+B0NjKe8s4j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Sep 2020 20:50:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D5D0C8771E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Sep 2020 20:50:13 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id y15so4410725wmi.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Sep 2020 13:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TVdlmRRpxaOmJp0wpVVEjEPcXY/5kO+TQCDCCLVJ6hg=;
 b=G7Qd/LcqX6GnUw4HwAETsZJC3kfYWCGoq88416Zk1MSfG7rWo/v7qEKxRG+cTU4wPW
 CqFZDKDK3+BvEwALubLpQ2zYb8mJnl5Jo2e/2k4YRx2EB1d1sAx1K12STM9pjqpyEad9
 RppDA3yh5l5I9VaDWylWdso3bnBfYWcoYHdf79CnqWojt9u71DuQQ8gsW+Gps7y4XxjY
 u+NocKWfdGXAm+mhCAvVTtVE3Fytl//yoSvXDta0rCzv6rUvNqtzfZbxieHdeK/KN0xC
 hhBVcitoo/1hOeeUN2YxtPHIYcBWjuYEADSNFm2Z1kF89SzbJN89YON3HQSc2Hd7hJ0Q
 SB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TVdlmRRpxaOmJp0wpVVEjEPcXY/5kO+TQCDCCLVJ6hg=;
 b=rXwPRLQ1yCiLq5W9ly8mvnvlgSiT1ADfuJo0DsRQvbGtyOf+M3Xt4dACD+2OKqbagS
 tbZ7nkes5Gt8UZ0n2byLhuUy5EGQL3+3viTGT0Zfg/W+4uAjHHghGsZQZyX6LiQk88Cl
 BxtfCJaw6E2D7MORwldXsp06LDqHhiOeyuY1ovuKpCm5HnH1nvlDQllPzF2hXGlI+M5e
 aXDuX3tEGQ6kfQbMc65DiJ8LfHz5W7t7Mnz8R7JywI6DdTwnsNYuoh+lAkuRFA7mM01B
 SetNHWwxPuEqO/ItPjflZsBxp2p7Pe5UuKZpBVIGpiUFuxHGvWRmJrypd0n3RyJ2AvbH
 49KQ==
X-Gm-Message-State: AOAM531r2ojNrPKWcfCsHAISIsThJpD/HBJFfUEnrpKgEfg7Q4s4Bk2O
 8n+yGHZ7p5N9jifbAPU+aCk=
X-Google-Smtp-Source: ABdhPJxRPEz6cLPrGaaD3Q9jTaxwljb6VA9QWbvZQVPXsnVMm7Zkyqz9HkM8Q8wHaWQKhjFcp6Jivg==
X-Received: by 2002:a05:600c:2109:: with SMTP id
 u9mr6167718wml.147.1600289411985; 
 Wed, 16 Sep 2020 13:50:11 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id z7sm34879619wrw.93.2020.09.16.13.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 13:50:11 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: 
Date: Wed, 16 Sep 2020 21:49:42 +0100
Message-Id: <20200916204943.41017-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 16 Sep 2020 20:52:19 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: Fix use of uninitialized variable
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Alex Dewar <alex.dewar90@gmail.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In i40e_clean_rx_irq_zc(), the variable failure is only set when a
condition is met, but then its value is used unconditionally. Fix this.

Addresses-Coverity: 1496986 ("Uninitialized value")
Fixes: 8cbf74149903 ("i40e, xsk: move buffer allocation out of the Rx processing loop")
Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 6acede0acdca..18c05d23e15e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -364,8 +364,8 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		napi_gro_receive(&rx_ring->q_vector->napi, skb);
 	}
 
-	if (cleaned_count >= I40E_RX_BUFFER_WRITE)
-		failure = !i40e_alloc_rx_buffers_zc(rx_ring, cleaned_count);
+	failure = (cleaned_count >= I40E_RX_BUFFER_WRITE) &&
+		  !i40e_alloc_rx_buffers_zc(rx_ring, cleaned_count);
 
 	i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
 	i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
