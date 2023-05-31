Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEC77185C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 17:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 185A0613DB;
	Wed, 31 May 2023 15:11:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 185A0613DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685545899;
	bh=w9ufMh+ZRzSfMcR+UXaoAvxoB+e0nLAaHCeTIK+QbJw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0CHMBE53E94z1BYUWrXvuEeVvlfYO2oPM1xv8YcW7YM84QI5F/NTLVu/jPta0pjDq
	 TFsuxkZbu4YuQfmzqTdsx6jwp7h2RAkNRQ/tr7c1ez+CILOJHVhlmbPBKct0FnI9lf
	 8FN72dvU5UXEqursFV9nGGuweaShtixvkeIQpOlHYxTn96yoRYMgwgYx3oxNZBEdqO
	 k2+UTdIdixFCDOpo43CKL5Q/071CbmpxQFgVypV5S+4XdVMpciDYMyblKcrnPP/w5/
	 YOAqwJ1CeEks20eywiYckDmAKpjiC8To6PoWZdICEnIHaLrJ9irODC1FiTyP2Nc0xG
	 RWCh5KOmnVGYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q82k7-ooVvtk; Wed, 31 May 2023 15:11:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E437610B3;
	Wed, 31 May 2023 15:11:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E437610B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 390231BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 09:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 116C68214F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 09:08:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 116C68214F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e0fD4bS_gYS3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 09:08:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3CA28214D
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3CA28214D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 09:08:12 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-1b065154b79so5489425ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 02:08:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685524092; x=1688116092;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zNY4EKzfKsAn+Tw0pdU/DlskQLBEcbNUP9B//ABNXKo=;
 b=K5h4fYoPW92lLKWQaJK1vI8cJQanL9+rjp7pVk1STOKvoPpNeDYn0CBL47Tcx/d/H0
 QVLP9v5z3R9BNLKFfNA8wyQNUkbLZ4VEWmT09AiEe6J2xkwL8h2X4YJKDTpk1Dzo6Hdc
 jHcYegA1zM5dAUWAG2FpnEtr8sFfensme3FNKxBxbNTzXEl4yKCkejXLYp5i/p48B1B9
 2cTApCwFKm6DIfZ/ZnQ4eF4BA1PIkaDCloJi4vTzM1X4fqOkvMDn5B74P70PskAgyE1p
 PDIuDBmNwJans68+zkYaEIYf+wdHcefnJLt+NgPJmWSRKUIdovoDk+WWymv8PW/1rY6g
 0heg==
X-Gm-Message-State: AC+VfDz59uEa3m8NcYTeNJYu9XqQa1HB0D0saXWtYhlPvo3yuerihR9q
 bUtQdZ6W6sepXdnBZZX5FzNwQAsKWpAqSDOGi39DUg==
X-Google-Smtp-Source: ACHHUZ7PlcGg25hqG5yK0pvujwaiLLSRqp1UCGBgYjGU+csBEfyU/PrJhHHWONWkARerQcIF7Cqqow==
X-Received: by 2002:a17:903:120b:b0:1af:e10f:ba96 with SMTP id
 l11-20020a170903120b00b001afe10fba96mr5564993plh.1.1685524092348; 
 Wed, 31 May 2023 02:08:12 -0700 (PDT)
Received: from dnptp-9.. ([111.198.57.33]) by smtp.gmail.com with ESMTPSA id
 ij17-20020a170902ab5100b001ae4e8e8edasm857822plb.18.2023.05.31.02.08.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 May 2023 02:08:12 -0700 (PDT)
From: Yuezhen Luan <eggcar.luan@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Wed, 31 May 2023 09:08:05 +0000
Message-Id: <20230531090805.3959-1-eggcar.luan@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 31 May 2023 15:11:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685524092; x=1688116092;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=zNY4EKzfKsAn+Tw0pdU/DlskQLBEcbNUP9B//ABNXKo=;
 b=HVxqm7U5R6Ltzm1U6CfDIcHedKqA6ItNj4qNL9ntOHlC4ImTd6w5SkwEOrZTodpQPo
 8LFcVzQ91JtjMgezIC5DAmUPiOuPJXDAluOkF4Yrvc/MhHho1PMHzgrqlHVP8ddXIaN/
 B/87YpqBufsonhciCiywd4e7BLiWbe8hgByfmxTfy79XwvuniUAJyB7BbAEVNgq9ECWX
 dRq7vW3bon4Y9CCwefhthtdPAxsW0Q2Tk9SSwREhhJa/IkOZKwYk5Wbu95qG53n3viYu
 al22pDkTECcvdGLTfVjQg4GSCmpq7sFlntIAXzi+t3kPZOBQCAfsn6A1EPP7pVZkHp0w
 ow9w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=HVxqm7U5
Subject: [Intel-wired-lan] [PATCH] igb: Fix extts capture value format for
 82580/i354/i350
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Yuezhen Luan <eggcar.luan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

82580/i354/i350 features circle-counter-like timestamp registers
that are different with newer i210. The EXTTS capture value in
AUXTSMPx should be converted from raw circle counter value to
timestamp value in resolution of 1 nanosec by the driver.

Signed-off-by: Yuezhen Luan <eggcar.luan@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 58872a4c2..187daa8ef 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6947,6 +6947,7 @@ static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
 	struct e1000_hw *hw = &adapter->hw;
 	struct ptp_clock_event event;
 	struct timespec64 ts;
+	unsigned long flags;
 
 	if (pin < 0 || pin >= IGB_N_SDP)
 		return;
@@ -6954,9 +6955,12 @@ static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
 	if (hw->mac.type == e1000_82580 ||
 	    hw->mac.type == e1000_i354 ||
 	    hw->mac.type == e1000_i350) {
-		s64 ns = rd32(auxstmpl);
+		u64 ns = rd32(auxstmpl);
 
-		ns += ((s64)(rd32(auxstmph) & 0xFF)) << 32;
+		ns += ((u64)(rd32(auxstmph) & 0xFF)) << 32;
+		spin_lock_irqsave(&adapter->tc, ns);
+		ns = timecounter_cyc2time(&adapter->tc, ns);
+		spin_unlock_irqrestore(&adapter->tc, ns);
 		ts = ns_to_timespec64(ns);
 	} else {
 		ts.tv_nsec = rd32(auxstmpl);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
