Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ABB442020
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Nov 2021 19:36:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA9344011B;
	Mon,  1 Nov 2021 18:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IC-BdFJwKKHw; Mon,  1 Nov 2021 18:36:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D34B4400FF;
	Mon,  1 Nov 2021 18:36:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A2EF1BF358
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 17:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48DED80C48
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 17:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=purestorage.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AXlfFwLgIfj5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Nov 2021 17:39:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x962.google.com (mail-ua1-x962.google.com
 [IPv6:2607:f8b0:4864:20::962])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB0A980C47
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 17:39:36 +0000 (UTC)
Received: by mail-ua1-x962.google.com with SMTP id v3so33155132uam.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 01 Nov 2021 10:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pDN+LX8hoURSSUz1DrVeeghR7JgkeBcWslmRDKSGtoQ=;
 b=Q/vvQL+mIv8C6AZFa+0iEKNXJecivwO18EznsQBhpgm71PWJ4m9GWpO93xbf0MzSM+
 q3fqrnqiKkXgX/XQu0n5lYjs9GcxMkECZCV6LNj3GbwxRNLPeKaRaEsIuh0ZqwyzsPc+
 zZ7s743plnuYssqOVJjE93zOHAeewJ/M7kJRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pDN+LX8hoURSSUz1DrVeeghR7JgkeBcWslmRDKSGtoQ=;
 b=10cLa+HKRU00XnfUXQidxgo1ak+CmzrIG+4sqVinVDVCPnOVEDbwdzaLI8CZ2nKDUd
 +ZFPJNMSVwF7sSDgZu1VQTHd0c7MNSsWBdSP2fTFWo30IIzaczSPLmftlPJzwpgm9CDW
 Z0NtLhVidZbsNBBC2Phga5mFAOUKT0O4aH3Dus0+Gp6wYC48VlFw0U7qzwP53pnsckM8
 yr9v94prkPb9+24JVU23oDrn1S/m1hMaKjzhsiVTVwC7MJ2PIGaNw3P4MXUm9RJX2Gew
 drggecI94RI93m9rx6bLQjVm5qg5U9BhIL4rXKv+VDrtFXNqAf2O+/11b9eCEO8wV1Ql
 nQHA==
X-Gm-Message-State: AOAM533uSGTY0fWSa9fBbkXWiASHuRFd/z/DPvrzdWK1ofSb9qnSeFj7
 VYz1qeiJfglPmWv9Rd9V9dSVzTd0e0hhrCH4Qqf3WkI9En5Owg==
X-Google-Smtp-Source: ABdhPJy4t8pvVdqZYGJa1F1/4nv5Nf8SRkx9ePNsfEbpUWt4iuP3oNNHCwZJBCS2roQPwQfzvFoZMw5owcR9
X-Received: by 2002:a05:6102:11f5:: with SMTP id
 e21mr12607991vsg.47.1635788375831; 
 Mon, 01 Nov 2021 10:39:35 -0700 (PDT)
Received: from c7-smtp.dev.purestorage.com ([192.30.188.252])
 by smtp-relay.gmail.com with ESMTPS id bk48sm315897vkb.12.2021.11.01.10.39.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Nov 2021 10:39:35 -0700 (PDT)
X-Relaying-Domain: purestorage.com
Received: from dev-csander.dev.purestorage.com
 (dev-csander.dev.purestorage.com [10.7.70.37])
 by c7-smtp.dev.purestorage.com (Postfix) with ESMTP id A9E1A22085;
 Mon,  1 Nov 2021 11:39:34 -0600 (MDT)
Received: by dev-csander.dev.purestorage.com (Postfix, from userid 1557716354)
 id 9DA80E40BDC; Mon,  1 Nov 2021 11:39:04 -0600 (MDT)
From: Caleb Sander <csander@purestorage.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  1 Nov 2021 11:38:08 -0600
Message-Id: <20211101173808.1735144-1-csander@purestorage.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <YXq3M5XvOkpMgiOg@cork>
References: <YXq3M5XvOkpMgiOg@cork>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 01 Nov 2021 18:36:40 +0000
Subject: [Intel-wired-lan] [PATCH v2] i40e: avoid spin loop in
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
Cc: netdev@vger.kernel.org, Caleb Sander <csander@purestorage.com>,
 Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net, sassmann@redhat.com,
 Joern Engel <joern@purestorage.com>
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

Use usleep_range() instead of udelay() so the loop can yield the CPU.
Also compute the elapsed time using the jiffies counter rather than
assuming udelay() waits exactly the time interval requested.

Signed-off-by: Caleb Sander <csander@purestorage.com>
Reviewed-by: Joern Engel <joern@purestorage.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

Changed from v1:
Use usleep_range() instead of udelay() + cond_resched(),
to avoid using the CPU while waiting.
Use 50 us as the max for the range since hrtimers schedules the sleep
for the max (unless another timer interrupt occurs after the min).
Since checking if the command is done too frequently would waste time
context-switching, use half of the max (25 us) as the min for the range.

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 593912b17..b2c27ab3b 100644
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
@@ -910,9 +910,8 @@ i40e_status i40e_asq_send_command(struct i40e_hw *hw,
 			 */
 			if (i40e_asq_done(hw))
 				break;
-			udelay(50);
-			total_delay += 50;
-		} while (total_delay < hw->aq.asq_cmd_timeout);
+			usleep_range(25, 50);
+		} while (time_before(jiffies, timeout_end));
 	}
 
 	/* if ready, copy the desc back to temp */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
