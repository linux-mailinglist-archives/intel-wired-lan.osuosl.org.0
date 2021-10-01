Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 673DC41F210
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Oct 2021 18:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1DDC8451A;
	Fri,  1 Oct 2021 16:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7yusykfWf8j4; Fri,  1 Oct 2021 16:21:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A61684518;
	Fri,  1 Oct 2021 16:21:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF7571BF41E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 15:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ADF35614E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 15:51:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=purestorage.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3u9ggKRQejYg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Oct 2021 15:51:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe63.google.com (mail-vs1-xe63.google.com
 [IPv6:2607:f8b0:4864:20::e63])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E703607DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 15:51:06 +0000 (UTC)
Received: by mail-vs1-xe63.google.com with SMTP id f2so10977747vsj.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 01 Oct 2021 08:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=y9D3tK5MzDrr3RrezqGVKNrWdRXvDc5D2BVJlPimt0E=;
 b=CiUBo3xq8BlaomjKTWruGZ7m1p+CCljBMJ5GfEtdaAEAtB/E4q2kxbcaV2rypYoi2N
 rTTZ1+7LJly0jIUf5gFEpJZ1jx5/OKPTqNyX18FWVIoHPdwC5k04NrC6Rr3O1/vBjilp
 UTC1OszA8NKPmLQkCsuMEL72pQRcHS/+qDqzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=y9D3tK5MzDrr3RrezqGVKNrWdRXvDc5D2BVJlPimt0E=;
 b=rOcELUYR4c+BjjdAQZgRARTrB1EQ6pkk+AeRwpYdU0+3bDHdCF75kOKDfBGEkmg1Ld
 x0zassdlYW45nyofWEiCk5a6dwfto3joJoW0ITJsq2QqLlbZUM1P+wdVSaDhT23372+O
 VWHgvcah+JDkgTwds5Wj2KQHgwG8QTD6mIP/sEvz8kuFN2/UoqsEEOdriZx2iiUxLe42
 6qJ4GxYxwJKujLqDpN0AIGf/Ps9HwKtmCC8Tn19NafRymNKfKPpgqA9yK9q4VxGGgKsN
 /zEv7jPR3Z8IOBSpKYe7k0t3dx+r7YoA3MOPoDKr8qlYy7lNZt25yU7KzEnxpf8uUqYo
 C+Zg==
X-Gm-Message-State: AOAM531bdeByQ0GsOJMGoECc1FxetWH+vhNbYfSZ8rThvo9j2BQdt4It
 qpwx6LOtrEknikIqTtk6yGWp5Nn20nM/cRvCZp4Uo+fBfIpcEd3FtEZGp4ug3OyQUg==
X-Google-Smtp-Source: ABdhPJyZK8fpfpvrxhCNmdqrL8GD4MwiuUEEaiQ39UH723rGEdAdPH26Sl8pAX0qbYcGW065QpnOdVrnzQVw
X-Received: by 2002:a67:f685:: with SMTP id n5mr4833413vso.31.1633103465312;
 Fri, 01 Oct 2021 08:51:05 -0700 (PDT)
Received: from c7-smtp.dev.purestorage.com ([2620:125:9007:320:7:32:106:0])
 by smtp-relay.gmail.com with ESMTPS id l16sm1984679vkn.0.2021.10.01.08.51.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 01 Oct 2021 08:51:05 -0700 (PDT)
X-Relaying-Domain: purestorage.com
Received: from dev-csander.dev.purestorage.com
 (dev-csander.dev.purestorage.com [10.7.70.37])
 by c7-smtp.dev.purestorage.com (Postfix) with ESMTP id 2E60322084;
 Fri,  1 Oct 2021 09:51:04 -0600 (MDT)
Received: by dev-csander.dev.purestorage.com (Postfix, from userid 1557716354)
 id 22151E40977; Fri,  1 Oct 2021 09:50:34 -0600 (MDT)
From: Caleb Sander <csander@purestorage.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Oct 2021 09:50:06 -0600
Message-Id: <20211001155006.30732-1-csander@purestorage.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Fri, 01 Oct 2021 16:21:04 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: avoid spin loop in
 i40e_asq_send_command()
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
Cc: Caleb Sander <csander@purestorage.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previously, the kernel could spend up to 250 ms waiting for a command to
be submitted to an admin queue. This function is also called in a loop,
e.g., in i40e_get_module_eeprom() (through i40e_aq_get_phy_register()),
so the time spent in the kernel may be even higher. We observed
scheduling delays of over 2 seconds in production,
with stacktraces pointing to this code as the culprit.

Add a call to cond_resched() so the loop can yield the CPU.
Also compute the total time using the jiffies counter
instead of assuming udelay() waits the precise time interval requested.

Signed-off-by: Caleb Sander <csander@purestorage.com>
Reviewed-by: Joern Engel <joern@purestorage.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 593912b17..f1fcb867a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -902,7 +902,7 @@ i40e_status i40e_asq_send_command(struct i40e_hw *hw,
 	 * we need to wait for desc write back
 	 */
 	if (!details->async && !details->postpone) {
-		u32 total_delay = 0;
+		unsigned long timeout_end = jiffies + usecs_to_jiffies(hw->aq.asq_cmd_timeout);
 
 		do {
 			/* AQ designers suggest use of head for better
@@ -910,9 +910,9 @@ i40e_status i40e_asq_send_command(struct i40e_hw *hw,
 			 */
 			if (i40e_asq_done(hw))
 				break;
+			cond_resched();
 			udelay(50);
-			total_delay += 50;
-		} while (total_delay < hw->aq.asq_cmd_timeout);
+		} while (time_before(jiffies, timeout_end));
 	}
 
 	/* if ready, copy the desc back to temp */
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
