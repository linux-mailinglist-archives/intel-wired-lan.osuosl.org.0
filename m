Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7159E7FB35E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 08:57:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF35D4097C;
	Tue, 28 Nov 2023 07:57:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF35D4097C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701158232;
	bh=VSTnKY0tSI8ezyjlS9veRDgdYuH8+6/nRkDqCOEhTcg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DCwMedWdRBOT4NIqI58IC56UEVnrkJrCiAZa6Dwyvtdj5HN7bfSx6sQmIMmmafc9n
	 YfF4C0wBx95p4+CquV3WcDJ1VpfElkVpFGUxkEWI3ylCCYXr2dsC/MtXNtLAiIhvZQ
	 lKnXIhOtlcgfdj0ZBMQunBcU97MJpVOJIRIECWCeBu55vyvs9K9wx6N2me7kblS63h
	 H/DMBhWAItaMXw1eRHgL0eikXhRbdqRZPi6mFhwdGMxzeSfhbSI6WH0nmjZqV6tgi6
	 SodaVaCqVfH4MzT0d9QqoZgiC6hmr03qbKX3naEmiYIfsHfM2H7onIylpesRcks8dU
	 Dfct6OWQtRQ2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pmO433IxX1ta; Tue, 28 Nov 2023 07:57:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95880403A5;
	Tue, 28 Nov 2023 07:57:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95880403A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 368EE1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D37786059A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D37786059A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sgmdp6T3Mjmh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3193260FB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3193260FB2
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue, 28 Nov 2023 08:48:45 +0100
Message-Id: <20231128074849.16863-2-kurt@linutronix.de>
In-Reply-To: <20231128074849.16863-1-kurt@linutronix.de>
References: <20231128074849.16863-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701157750;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CmL5CR8zibxfhiUX9MHRDXtBuY7eM7PtZ3gjs/r7JEM=;
 b=tf3HDo8Pcxdn2zZGTCzvHX5WdaOdAE98Gt7/uQybYZJgLZcsv/eNzmAjKdViaopJ0nAa9V
 8YRSFtXavP/pvc9cTte5IDVOFg6Jo3K4829mrXKBRMCtmN12Q1pRh+6fgfzUn+nCG8kKId
 nT48wmYbW0ZZfz/s22fKQj9DbQtYX3KjHdr/ssIlKsiyoi0wkHl/lvg9w+hY++R3RAZj3t
 W1RQ6nDSyLOfMnn15cJ0JCZmJt3mUVdUehSFnE4nfper6X544Pq0nA0DAEhEDkGkH821GL
 r3iJR+QIfLMfCB+UnUbdyOufaDTQZq1B/tjSRhJzQ/A9r8UkV/UPAsG2gzWfSw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701157750;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CmL5CR8zibxfhiUX9MHRDXtBuY7eM7PtZ3gjs/r7JEM=;
 b=2d8p37jwNTwJtuS/sWIm14SQk0yQvChVx1l3325ynf1+hSxRM24O7UI4pzV1Cv3Ms0oV86
 AKz/2R3AWKl1dyBA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=tf3HDo8P; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=2d8p37jw
Subject: [Intel-wired-lan] [PATCH net-next 1/5] igc: Use reverse xmas tree
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use reverse xmas tree coding style convention in igc_add_flex_filter().

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 61db1d3bfa0b..d4150542a5c5 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3577,9 +3577,9 @@ static bool igc_flex_filter_in_use(struct igc_adapter *adapter)
 static int igc_add_flex_filter(struct igc_adapter *adapter,
 			       struct igc_nfc_rule *rule)
 {
-	struct igc_flex_filter flex = { };
 	struct igc_nfc_filter *filter = &rule->filter;
 	unsigned int eth_offset, user_offset;
+	struct igc_flex_filter flex = { };
 	int ret, index;
 	bool vlan;
 
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
