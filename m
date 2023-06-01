Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0923C71A1DF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 17:07:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 996A0842F2;
	Thu,  1 Jun 2023 15:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 996A0842F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685632059;
	bh=vV7gPXKA+xvYehMdZK4ddchw0BgmINqkVGG7Obo278A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LSaoeGO+b/bqfr5cV42hdvw+82BdWCWkoPEigLF1HWgTZZhSe6RoQmcZ8rqTdoDMe
	 /k680aZiGWcYVfcEval5/qDbJyvk0nNvfSX00/o1q91yBXZHkW7vSCfwXShArONamF
	 P48AqwS376L3DHcHFgCLdqG2syJaQnO9cuVfIwDAEQXHRNtMoYt4mL7O1ajzPSVnao
	 8N2VwYGkIZChUfra+O1q6D/LKz1ueZwRjMz0IBkTUJwfkhtob2ATWXodCXJkdp6nJq
	 0PUS4TBBluNVDh0z1fb/FzBUV3x4Nfi2seDyYrfQfksYueFrHdjyoMdJWaQhlm8Lgd
	 f5DiwQQ4QAJVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1JmF5dOAZnYJ; Thu,  1 Jun 2023 15:07:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72CF0831A2;
	Thu,  1 Jun 2023 15:07:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72CF0831A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0693A1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 07:01:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD1CB42082
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 07:01:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD1CB42082
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id olmI9fJp3Xxl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 07:01:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E02C142081
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com
 [IPv6:2607:f8b0:4864:20::c2a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E02C142081
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 07:01:05 +0000 (UTC)
Received: by mail-oo1-xc2a.google.com with SMTP id
 006d021491bc7-5552cbcda35so421043eaf.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Jun 2023 00:01:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685602865; x=1688194865;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ufZlzhRbgrp2ECAGGL+klhy80faTIJsC40pw0AO7I/s=;
 b=J8Koof4vo2Jg6E4912JU74Bp5EjXIHRxPvrjkz+RlhQbEBuzfGOoeL5c6OvyKz33ek
 tJYoyq4utFyv8qkLLh28P5gGf6EF3CAPBkrbW9raUgGrDrjMS0wmeDRspZpJ89rwC4cQ
 AbhwN7Mv9z0E1ho20D0ZMQ7/7Im5Uk+SI8BpBo0jYGhVzMDxz1aeXOciuOV7dR0a6yK7
 tyjRTJrJRFbWsNopvrnaF64egaBI7CmwBBk7OKu+kJFGZg9Z6/TgXhMV5FO4HEjXYaOL
 yQWTDEWM7XejbJOLwoGXyA6LqWrMDFO8CfY26LcjF49BHsh790MOWuInRKl9BxVWtKVT
 Ujog==
X-Gm-Message-State: AC+VfDyEFMMhp+CIPob7154e2htaEhmiivykPrQYCfxvlepEdDiH5Khs
 a76ANyT0q7cGhGtgN9tHLv8=
X-Google-Smtp-Source: ACHHUZ4baPIwOegGnCejHi+mh7aZuQhlsdJwMQ6jefUHQyPArJwNd9ujW+n/AO/1O63Z2BURJHViDw==
X-Received: by 2002:a05:6358:419b:b0:123:30e2:4cfd with SMTP id
 w27-20020a056358419b00b0012330e24cfdmr5972236rwc.18.1685602864726; 
 Thu, 01 Jun 2023 00:01:04 -0700 (PDT)
Received: from dnptp-9.. ([111.198.57.33]) by smtp.gmail.com with ESMTPSA id
 s34-20020a17090a2f2500b0024df6bbf5d8sm712591pjd.30.2023.06.01.00.01.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Jun 2023 00:01:04 -0700 (PDT)
From: Yuezhen Luan <eggcar.luan@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Thu,  1 Jun 2023 07:00:58 +0000
Message-Id: <20230601070058.2117-1-eggcar.luan@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 01 Jun 2023 15:07:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685602865; x=1688194865;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=ufZlzhRbgrp2ECAGGL+klhy80faTIJsC40pw0AO7I/s=;
 b=YStVcwYM9hqQJgsRY155+ZbILLF0giQbOMCgHsvoLaIGmWRAYdASz8Wl56wm6r/H9q
 Jsj/WQiM1qH3TcQ32k8TkLSRqu/EPfPGo69MgOAqjwLEXFfu9kiPbjjoRrxO6AM5mP/b
 JRf3yrWLDEBmxdGQG85LcPICjjP592buGPWHAt6cYZtHlRkFsfex1eom5FrDjhAOQKYZ
 EiuhRLFexR1Tbbp9cvG7u2nCbY3HnzemsEadP/UNabsQqAlGqIVv4srG1ooiPdN1S/2x
 366sRBsmGhW/5Fkk13AJ8/X7XQnI/f0qU9j7TqZqRd8XsM09FdYYpgVBntPNvZ/Pcb1/
 cmKA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=YStVcwYM
Subject: [Intel-wired-lan] [PATCH v2] igb: Fix extts capture value format
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
