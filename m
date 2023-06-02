Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A977205CC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 17:19:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71F65400FE;
	Fri,  2 Jun 2023 15:19:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71F65400FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685719193;
	bh=Ov4Dv54mzmTvZThsUt2f8wxj19RkKaQcqKAAOVTGJLI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UNWmblxnE4PMSjQaQdk8jorDTGxbrxZl023y1KVmPdejiYXFliMhk6bwsLs6dN4C0
	 yMO7eCDUwt6y+zwFDHE2pNdSe3ks+iqzQrhmX6UUdJRjxfEz5gtv8l4gPTSDWctadm
	 1pvOF4OIsNEZ/vsmq9ZTF+XVbuV3omHmEGJWDdu/vHEBEcMLy6KctqoV3bsHY66ovN
	 Ff7fKr1zCqKEmgdQpzTQdYrSNNRiMCVZBiD5i9u5iaoM5rcH6ZKYGaruR3Eij0NYd8
	 ik87EZcgrnHfaU8+sbx6NrrhEtfRvoU9K9Yaus6kJKoyo1gu8SmAs9Z4ZvacuM9Z/v
	 uLfqA4A0dld3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Q8xU7ZWotur; Fri,  2 Jun 2023 15:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6550B41877;
	Fri,  2 Jun 2023 15:19:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6550B41877
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 562CE1BF599
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:04:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2CACE42080
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:04:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CACE42080
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6RyWZ_3cqVCT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 07:04:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52FA742064
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52FA742064
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:04:28 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-64fbfe0d037so2293408b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jun 2023 00:04:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685689468; x=1688281468;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Zx4FMc0sVk+rwjCWqO76VEczo14IYbRluwgeL4nENPs=;
 b=gwN2C+aPmYsx1G7c10Kv76DY8ZTGDp4psaeP4mIS22K8a/bVeKwXRHfFUpPCyOT22y
 tRMge+vhW5KnsChaZ9ZDKh5Nm7vAVt+L7GMopMmgM/RaMkmqd60kQNVr2jGf9gkXxgQ4
 hzPBQH9BZExMQEoNEjZKMvy19AOIBqqLMgNL1Nk9iz73hlu+ZuaGzYIEWC5jq2Ze/B9J
 imv85tAAiAOvLPe/5CdojvGVuvYzz0cB3px8X49lZpfPiIqhXVBCBNAOKePCRaJJxLFQ
 C/Bf3mUpTiAJ5JrmKjLvc7skKBMjgtTiNoE7ZsDq12mfMOJ9X74us+qyhadVkbCyDvEe
 SiBg==
X-Gm-Message-State: AC+VfDwjscoLO4avO5HJ0G3B0GiG5dUuVvUJdI4GM7hUDfGr8ALJkKAQ
 NHLQI4hqQ38LloYkUIns3Dw=
X-Google-Smtp-Source: ACHHUZ4d2bX/UI/9TjW/+9fZety85pnDvoU1eN9s8tbpuQPK4d3S5wWBhLVhBjBL5PhUAvm4M56hKw==
X-Received: by 2002:a05:6a21:7891:b0:10a:eea0:6987 with SMTP id
 bf17-20020a056a21789100b0010aeea06987mr4999826pzc.26.1685689468352; 
 Fri, 02 Jun 2023 00:04:28 -0700 (PDT)
Received: from dnptp-9.. ([111.198.57.33]) by smtp.gmail.com with ESMTPSA id
 p30-20020a631e5e000000b00514256c05c2sm570259pgm.7.2023.06.02.00.04.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jun 2023 00:04:27 -0700 (PDT)
From: Yuezhen Luan <eggcar.luan@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Fri,  2 Jun 2023 07:04:22 +0000
Message-Id: <20230602070422.1808-1-eggcar.luan@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 02 Jun 2023 15:19:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685689468; x=1688281468;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Zx4FMc0sVk+rwjCWqO76VEczo14IYbRluwgeL4nENPs=;
 b=PmVs8Q7YIRLQab59Z5PrWLF8LtScAkyvxfEyncKDeQn0VgRQpcn+CzE6E1yxwc8/Ve
 entQ11T96eUdvRIKVjiR0rd/k53AmAUnKvx4UJmgaHAVki9p9Q5bLjLOeXyTjThQnsbQ
 q0rYzTgbzEdVZ0A2HFo8ZylTih6paODNKbLwI9HKvGMB+AmSfVuOua5ZmIUCVHpuM4HH
 cpqxhbwbJQXH/lqswAJjWjaAazXQo3NJ2MDip/1OZaCnsOGV5HftC7x9uahIMsdzScTh
 kN+vQ2zjk3WpuxZpkxFgDAHYx/b3jArKlZQ7fLjcgm/AXiS1rHWzGsYSF4zwN0YF7zao
 INpQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=PmVs8Q7Y
Subject: [Intel-wired-lan] [PATCHv3 net] igb: Fix extts capture value format
 for 82580/i354/i350
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

This issue can be reproduced on i350 nics, connecting an 1PPS
signal to a SDP pin, and run 'ts2phc' command to read external
1PPS timestamp value. On i210 this works fine, but on i350 the
extts is not correctly converted.

The i350/i354/82580's SYSTIM and other timestamp registers are
40bit counters, presenting time range of 2^40 ns, that means these
registers overflows every about 1099s. This causes all these regs
can't be used directly in contrast to the newer i210/i211s.

The igb driver needs to convert these raw register values to
valid time stamp format by using kernel timecounter apis for i350s
families. Here the igb_extts() just forgot to do the convert.

Fixes: 38970eac41db ("igb: support EXTTS on 82580/i354/i350")
Signed-off-by: Yuezhen Luan <eggcar.luan@gmail.com>
---
V2 -> V3: Add 'Fixes' tag, and add 'net' tag in patch title
V1 -> V2: Fix typo in the source code, and add detailed explanation

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
