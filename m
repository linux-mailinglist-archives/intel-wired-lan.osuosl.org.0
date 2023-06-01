Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B1571A1DD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 17:07:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F78483B53;
	Thu,  1 Jun 2023 15:07:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F78483B53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685632051;
	bh=2cendpQ2znhB/nag8op3nUJFyrKCGBf4NkYNp/cwOAE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7H1tCGKnXFUzyiVA02Na/1lww+0Xp4NXniZ7/8v2ANy128TGKSfra64BcIbzkTOSk
	 XxBYrZRlkMz2S1d/ubZ0ATdw3agEJ/nbiL+Weeg6TjzoN3lqlgltavy6ChLjLyqU91
	 zl3uI62oVGbDiNt13DXPVNopTkUyVIETPiYBDIq+8CUErgaJ9S0KfuSuycoqgK55b+
	 exWQZ4fKqEat7VsGvCF0owHkUNjc2kRj32ZnQU6LSugi0eZQDAPlCbhKx5W3rkftvF
	 X5Q6TUb9KsSMgEOc06To4XaJPVDJh3IFRASbPzBfTupxEYIxvA8Jf+Zkuk4RPtwsfC
	 iyCL4NAprURtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aea0YRU5vuPf; Thu,  1 Jun 2023 15:07:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2904981F9C;
	Thu,  1 Jun 2023 15:07:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2904981F9C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19E3B1BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 01:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E515E81EE8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 01:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E515E81EE8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BJld7SLh7I_z for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 01:59:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A215081EE7
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A215081EE7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 01:59:51 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id
 41be03b00d2f7-52cb78647ecso138548a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 18:59:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685584791; x=1688176791;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Jdxxh2L1GD1WdZkYYziFAmyUtgwXwDB1emmhtFEA2sM=;
 b=NdVowRJ7kJLXTHQ/0MgRR2F2xrjMrT9RT7kYbgT2ka3aVzTb3A5kcQpqik2AQMWhZt
 2gpuIFntjfpC6BXxHs9cbjWe8cBw74hnv6A3McwW1XN1QOy/I9gJgSoIiJy4vzkfVAjd
 o3BAhiaH5YSB+QZ9HW5/Wzap37GLkk4hi3EcgmihhdTLkWdT+TaiGzEPQpMMwo1Fk1c9
 NjfFizPSWsuyc3WND1FIVV5KDiaKqTGOta3+vIteQHreTFdQBV0v8k5DVxpO+7m6IBdG
 ZA8H7r88LDNFhZf0WCdZc+7H7+obnOKMO0ok8t0/8VCwXskR3KAEPIahxKx0x1m/YXk0
 AmAQ==
X-Gm-Message-State: AC+VfDyImRpJY7Uppe0ByQZC0ZasoXymVW9zKS0XiwR+4XWaJk6r6YKL
 g2bm2bB/+p8PdnET/O00E6M=
X-Google-Smtp-Source: ACHHUZ7ZFmpjxk6hnAAfSXhlZcWQV0HmU+rN1vBZNd7ozRoimzKvZknP67nyT/0Ui5qaytH93QtCww==
X-Received: by 2002:a17:90a:c20d:b0:256:44f3:35e2 with SMTP id
 e13-20020a17090ac20d00b0025644f335e2mr5834673pjt.4.1685584790967; 
 Wed, 31 May 2023 18:59:50 -0700 (PDT)
Received: from dnptp-9.. ([111.198.57.33]) by smtp.gmail.com with ESMTPSA id
 k59-20020a17090a4cc100b0024df7d7c35esm189547pjh.43.2023.05.31.18.59.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 May 2023 18:59:50 -0700 (PDT)
From: Yuezhen Luan <eggcar.luan@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Thu,  1 Jun 2023 01:59:43 +0000
Message-Id: <20230601015943.1815-1-eggcar.luan@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 01 Jun 2023 15:07:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685584791; x=1688176791;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Jdxxh2L1GD1WdZkYYziFAmyUtgwXwDB1emmhtFEA2sM=;
 b=Oih3AhNmb0cusPW/ZitzBoCgoGC9evQgOEor7/GXLLHcV2qvdgZW2RWLChJ/xN7MaB
 t1zaNsQdUfHkCeeYPV1IugTm5maq28JVw3Y6fGEdVeEzkiSApOaB3ofagN1IR7EB4pkI
 9ur+SucXtYGfu/pAVhVRdPPq2p0udQme+keM6rPYgdH8kAevZubYO6aUhjpEcSUapXTR
 uokZ9DTzTWeqp1h466cWiHfX8f7voZGZLJVUEnGTmjePdl64svrWQPTODffe3VwuEeCP
 aCleDFmHNfiEFeZX+GJyVPEx9X9KkO8mRNVezGoK7QwpJ9xdFq6c4+KqBJQ0P4qqr71w
 BRmg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=Oih3AhNm
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
index 58872a4c2..bb3db387d 100644
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
+		spin_lock_irqsave(&adapter->tmreg_lock, flags);
+		ns = timecounter_cyc2time(&adapter->tc, ns);
+		spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
 		ts = ns_to_timespec64(ns);
 	} else {
 		ts.tv_nsec = rd32(auxstmpl);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
