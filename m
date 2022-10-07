Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3465F7C9D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 19:58:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A358606ED;
	Fri,  7 Oct 2022 17:58:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A358606ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665165518;
	bh=iBo2VPlG6bKRmJ2NtaIoi49WgElDP/v7TSZAD4xEe40=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KZKVQFPwrXyLTZzANJPL4WIBrnN7zAFTKYKJWii3frSsSdCik3OcLcpoR4wWEImle
	 iYIvX6t7gQhZSQbUzKnUX2KUp1ULa0ENadK5PpZwMmYQtX8M3ODB/S7Ib0O9hbrrWs
	 /ClsUYayO4YsOcG5VCSiefhmLX1ioapd6uYBV6u9zDqEPESkGFL6Bu5dfYii+6I2V9
	 9v+NvhacJuPVfgtV0Cw2zm8ulwzhO7VACXApEbr74JYho6xDSASFhRjjRy8BiflqgQ
	 xBhaKwadpmrkprdd79dvCu4vS4OfV6DbJ7uuwsMWWGoItdYcCh7FFh1+o5E05PtHxx
	 VINlBr4+WIerQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6oOXgV-CnUjW; Fri,  7 Oct 2022 17:58:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 481106006A;
	Fri,  7 Oct 2022 17:58:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 481106006A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A9F111BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8393A40358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8393A40358
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6Kz8w2xaA7Y for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 17:58:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F4CC4033D
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F4CC4033D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:21 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id y136so5552533pfb.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 10:58:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9/BPnj1Nhn6MgzQqr2NDRl2Vn5kg5dhYp/e0DPKsG20=;
 b=xOJa/z+XDHreQC7CDGfWFpX/Y/ZDSeKXF13YKLbJbSH/1X1Tcuqvr32uaqHsiunzdS
 bP74mw71URnTV559IPdVwwj+P23Oa2xPfb7deRCb0mg4YAZou62rVe55k85rAPxWiNGF
 8I3EzBBPOIl52znsZGshGe9ZghUUNU4sGMeHZ15qCdceFwLh7MeaA7LBV3X6t0lkgnXj
 ysWH1LGFUW+czc5S8QsBwVGuLKBPfjEmFNOmniYOLa4/RoUZTGx4+GKnjj49XCaqCW+P
 4cUTn55OPbWmEMEIIVCrdm3+FByriydVe+HZbK86yFngbi/uWwsD9i+75J9HC3Xuv8Cz
 evdw==
X-Gm-Message-State: ACrzQf1iYBNSnfiqhCU2m5319ffDzruCwueaifwmuzhe85uNMb1Tg0fK
 2jhqsRwytsjdQQXKrwPWdbJRxCiVhdKrCY6llNu0yZA6o/VSiWm5x7JEIXYf93XTf8aOfr1lYAW
 TysMlI82T9ojarTYgc+6Qyf7BceFy5fPtz1PCg3Jy2RN4f5FsYzb3gNW2l6Duk0Q4gD0WDNkhmE
 +jO4Xcww==
X-Google-Smtp-Source: AMsMyM6doWmXubRGQFViO9/No29FfEL31RgE/kfG5wJjPiPp69zH2aTzFmBsByXRCmmIZVkQd1C3LA==
X-Received: by 2002:a63:f349:0:b0:43a:b82b:1173 with SMTP id
 t9-20020a63f349000000b0043ab82b1173mr5716443pgj.534.1665165500291; 
 Fri, 07 Oct 2022 10:58:20 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 a29-20020a631a1d000000b0045c5a749a8fsm1937498pga.61.2022.10.07.10.58.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 10:58:20 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 10:57:26 -0700
Message-Id: <1665165447-1802-4-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
References: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=9/BPnj1Nhn6MgzQqr2NDRl2Vn5kg5dhYp/e0DPKsG20=;
 b=Ehy/sHsBL6/C8V7k/Mjypt8k4/+lFXGCfy4ZRd4ntYJzxvuPNhA6mU7k02qDlAZ4xZ
 6SB/Ka+htHErtt856BkiSysNLJOiMUst4XR2TNLf18nvmYizZP+0oQtWTrXPWvRsxCQy
 v3RvVXsgkOzMXtrgcKIVDZVXSHPZPmkdg5YfM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=Ehy/sHsB
Subject: [Intel-wired-lan] [RFC,
 next-queue 3/4] i40e: Record number of RXes cleaned during NAPI
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
Cc: Joe Damato <jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adjust i40e_clean_rx_irq to accept an out parameter which records the number of
RX packets cleaned.

No XDP related code is modified and care has been taken to avoid changing
control flow.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 274de1c..5901e58 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2425,6 +2425,7 @@ static void i40e_inc_ntc(struct i40e_ring *rx_ring)
  * i40e_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: rx descriptor ring to transact packets on
  * @budget: Total limit on number of packets to process
+ * @rx_cleaned: Out parameter of the number of packets processed
  *
  * This function provides a "bounce buffer" approach to Rx interrupt
  * processing.  The advantage to this is that on systems that have
@@ -2433,7 +2434,8 @@ static void i40e_inc_ntc(struct i40e_ring *rx_ring)
  *
  * Returns amount of work completed
  **/
-static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
+static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
+			     unsigned int *rx_cleaned)
 {
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0, frame_sz = 0;
 	u16 cleaned_count = I40E_DESC_UNUSED(rx_ring);
@@ -2570,6 +2572,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 
 	i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);
 
+	*rx_cleaned = total_rx_packets;
+
 	/* guarantee a trip back through this routine if there was a failure */
 	return failure ? budget : (int)total_rx_packets;
 }
@@ -2693,11 +2697,13 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	struct i40e_vsi *vsi = q_vector->vsi;
 	struct i40e_ring *ring;
 	bool tx_clean_complete = true;
+	bool rx_clean_complete = true;
 	bool clean_complete = true;
 	bool arm_wb = false;
 	int budget_per_ring;
 	int work_done = 0;
 	unsigned int tx_cleaned = 0;
+	unsigned int rx_cleaned = 0;
 
 	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
 		napi_complete(napi);
@@ -2738,12 +2744,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	i40e_for_each_ring(ring, q_vector->rx) {
 		int cleaned = ring->xsk_pool ?
 			      i40e_clean_rx_irq_zc(ring, budget_per_ring) :
-			      i40e_clean_rx_irq(ring, budget_per_ring);
+			      i40e_clean_rx_irq(ring, budget_per_ring, &rx_cleaned);
 
 		work_done += cleaned;
 		/* if we clean as many as budgeted, we must not be done */
 		if (cleaned >= budget_per_ring)
-			clean_complete = false;
+			clean_complete = rx_clean_complete = false;
 	}
 
 	/* If work not completed, return budget and polling will return */
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
