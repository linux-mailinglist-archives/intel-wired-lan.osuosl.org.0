Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E7B5F7C9B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 19:58:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6197607D0;
	Fri,  7 Oct 2022 17:58:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6197607D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665165509;
	bh=nxpBvJy3mUIEdrOU66+w2nhHqY4tA2en6UKNbZZKgeU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ikw6BlYqV8nzULch3o0vfrgHjR++767b0ykypKJIF16PvJlIuRKqKTO20W/SG//19
	 noYqzWRP7Dirf3b98mHubFK8UK3KSVK+jW30RlPINBMIPW5B1eqd14s0xNGA5VYZIp
	 cueFYlozgqpjjg/bAsJbLnlOp2ED8y0pRBMMokUgLmj8ZwRF6tf+gghAFKdJzyCxkV
	 zyGom78WPCydHWsW5pcv/YPkXeLW0tcMT8kXNj17w+gAUbQqii2mWupUbPSkfHBto1
	 acKRnk8nl2aOIX8PlSHPpVgMSt6l9c6KJ2DCUasgvb1Fay9fSDasQWMv5itXES+GQ4
	 PB1J6X7l+PamQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TcVEQDKhY8TK; Fri,  7 Oct 2022 17:58:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4D8260009;
	Fri,  7 Oct 2022 17:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4D8260009
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DAC841BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B555B81775
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B555B81775
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y9T6y5l18MDL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 17:58:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E29581760
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E29581760
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:19 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id 78so5250891pgb.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 10:58:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xNDjKLhwL2kTGNEr27xp8J5TsBdq4kDpkXlCpFhKrQ4=;
 b=CBzKedN6JCm0BiNevsE3hI+VdwzKspT4T634TkHiZQxBw+a9VeUpQ7eLhccf3fVjnY
 6BQ3ZCfpAioXqShpnk888yBFONpdbeBP4A/cYtobLs3ZvPe/N8X26c9wcH3FM9ZIxcS8
 YYwJ2U9lQ5xGk7F10UCcqLIYRtTdbKwykCkCxzvQbFCTTGfUxFPF3JPZsBG3RFPR+MoI
 kgrv7qxCO6qoAnsiqWuQHyAm9aXatyFjf437Hv50ki9uIlGOQyOtfmPe2ttlQ8ajGNXt
 zeUSxl8FIJeSzmBebCPpFUicNmTOB+flg2+Sh7+PNn3wTMorkSX4xJTYSlEmlO8ZQ+cT
 01Ww==
X-Gm-Message-State: ACrzQf0Dr41pK7BWvPmn2qyOZz82QPeEW3dWiN20BHdvIanUqid12H7M
 ebZXJeL39YzW+iFxORngYAl1mOF2YFAtQK2EOhP54PcxId4n+N2RcLHDsreuKnC4Q1BMCKAU6Wm
 95tC/XmGGUt8M4Q3O+AcyC6lcbXV+YAh1g9u7jmcutuGmMf+eywEBMfoWshJiJRQbFlzhObe8IQ
 V2p4bH4Q==
X-Google-Smtp-Source: AMsMyM7IChpX/p2Wi8BTYVgni+zYgmhYaNERksxzKmCqopDt+4St7h9AF/7EolCye6XF02Z+DY4dyg==
X-Received: by 2002:a62:ea09:0:b0:562:a86f:63af with SMTP id
 t9-20020a62ea09000000b00562a86f63afmr6247367pfh.71.1665165499206; 
 Fri, 07 Oct 2022 10:58:19 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 a29-20020a631a1d000000b0045c5a749a8fsm1937498pga.61.2022.10.07.10.58.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 10:58:18 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 10:57:25 -0700
Message-Id: <1665165447-1802-3-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
References: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=xNDjKLhwL2kTGNEr27xp8J5TsBdq4kDpkXlCpFhKrQ4=;
 b=lLX2Y0kWHsstVysx6Gv7fOhnhvqzIzAvNoAn/thw7uqhn1mzMu8fAPyObWHDv8bROk
 ae3+0gIQvIali3pi3pkj9+COsGxLlXPko6l4L4LkOzd/Fo+WLQ6o7GltwprGp+YVgzou
 yBf14RSrDGfzlxn24NDSpBp9F0BowQCpc4nMg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=lLX2Y0kW
Subject: [Intel-wired-lan] [RFC,
 next-queue 2/4] i40e: Record number TXes cleaned during NAPI
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

Update i40e_clean_tx_irq to take an out parameter (tx_cleaned) which stores
the number TXs cleaned.

No XDP related TX code is touched. Care has been taken to avoid changing
the control flow of i40e_clean_tx_irq and i40e_napi_poll.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index b97c95f..274de1c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -923,11 +923,13 @@ void i40e_detect_recover_hung(struct i40e_vsi *vsi)
  * @vsi: the VSI we care about
  * @tx_ring: Tx ring to clean
  * @napi_budget: Used to determine if we are in netpoll
+ * @tx_cleaned: Out parameter set to the number of TXes cleaned
  *
  * Returns true if there's any budget left (e.g. the clean is finished)
  **/
 static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
-			      struct i40e_ring *tx_ring, int napi_budget)
+			      struct i40e_ring *tx_ring, int napi_budget,
+			      unsigned int *tx_cleaned)
 {
 	int i = tx_ring->next_to_clean;
 	struct i40e_tx_buffer *tx_buf;
@@ -1048,6 +1050,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
 		}
 	}
 
+	*tx_cleaned = total_packets;
 	return !!budget;
 }
 
@@ -2689,10 +2692,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 			       container_of(napi, struct i40e_q_vector, napi);
 	struct i40e_vsi *vsi = q_vector->vsi;
 	struct i40e_ring *ring;
+	bool tx_clean_complete = true;
 	bool clean_complete = true;
 	bool arm_wb = false;
 	int budget_per_ring;
 	int work_done = 0;
+	unsigned int tx_cleaned = 0;
 
 	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
 		napi_complete(napi);
@@ -2705,10 +2710,10 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	i40e_for_each_ring(ring, q_vector->tx) {
 		bool wd = ring->xsk_pool ?
 			  i40e_clean_xdp_tx_irq(vsi, ring) :
-			  i40e_clean_tx_irq(vsi, ring, budget);
+			  i40e_clean_tx_irq(vsi, ring, budget, &tx_cleaned);
 
 		if (!wd) {
-			clean_complete = false;
+			clean_complete = tx_clean_complete = false;
 			continue;
 		}
 		arm_wb |= ring->arm_wb;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
