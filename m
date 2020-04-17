Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE86E1AE3EE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2020 19:43:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 978138679E;
	Fri, 17 Apr 2020 17:43:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n8ajvlRsnD93; Fri, 17 Apr 2020 17:43:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D399986672;
	Fri, 17 Apr 2020 17:43:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5FE691BF34C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 10:39:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 550C784526
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 10:39:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m2Rm5wcwjW82 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2020 10:39:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E8FA844FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 10:39:13 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id k21so1535898ljh.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 03:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fRLwnMEBt461Ph07V8A3ghv4XELawSjK9lrKKwem7bQ=;
 b=HC2kE3WFNBAtTVjT2enqahx320MxBl/24kd9GUmc6KN/3sZEB0SjvEU9yQEwQwGxN+
 UN3CnC+bW4sGk8zo6Qf6guNsTtqSdAW2n1q3ptwYT1U/LY8TZnihgRZ5//f/8wEW3mm0
 bUaV5+BXBgQPDFrZ3t8otJTAN7JW5Go6JeJMHMvvt0qKUklb7eV1sGeWgaXaijjIScyU
 8BrMnztXz0qgH18XJmLHvsqzBUgM8bNXkbmxaCIWvv0n0RbamK8f0wUXvk/bgsMBfz7O
 qj8HN7aRFVuGCN5wFoYXxWg5kFNDOkCKrVDLAF/P8WYAQaTjtUbrsZqXyr7QLsa064DR
 w4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fRLwnMEBt461Ph07V8A3ghv4XELawSjK9lrKKwem7bQ=;
 b=tMHtN2vbzCskRLM2EpG2a037KmGA1rfIkzW3CDFIfvsHJPrOdHWSInz+CGmSnjXgC4
 AJd5GXP0aitZj8tyxnS6890GMaNMxlYiZSYKXwjjn/9GX6oTIHOMCFEFlAKHZU22gGxb
 3csWmiPKy2X26G/oSfjRFIyUqFFZp8lkvDdRs7qr3b1M9ndyZ/GdmzyIqhyy60Anc89I
 pdh7V9AvEmLatBadb1VbEG+/XbnRNy+rWOI3mOb21MAE8r1XnWjsMeyD6cROlAidE1ic
 MkwIsf4vsOn54nKiNerKJ5JKCuTD8+xGp7WgVds33zs7itRqaYrOICdb+JG63snjI45T
 w/pA==
X-Gm-Message-State: AGi0Pubtl5q3pnePK6e1cEdRA37zFtgZvosCDkJiThe6Y+T+x6T1Q9hd
 D6tyyfkpXjPgvijMXnviWn9FFA==
X-Google-Smtp-Source: APiQypKp5LTxeP1YAvOyk6aoiVJNgaXloN/+akQtEcUyqUrXbQqtyau+lPPnbU7tSE3lXn+/zvqnxA==
X-Received: by 2002:a2e:9cce:: with SMTP id g14mr1679650ljj.161.1587119951308; 
 Fri, 17 Apr 2020 03:39:11 -0700 (PDT)
Received: from navi.cosmonova.net.ua ([95.67.24.131])
 by smtp.gmail.com with ESMTPSA id v2sm4233955lji.74.2020.04.17.03.39.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 03:39:10 -0700 (PDT)
From: andrew@daynix.com
To: alexander.duyck@gmail.com
Date: Fri, 17 Apr 2020 14:06:27 +0300
Message-Id: <20200417110627.3589435-1-andrew@daynix.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 17 Apr 2020 17:43:55 +0000
Subject: [Intel-wired-lan] [PATCH] e1000e: Fixed issue with LSC pending.
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andrew Melnychenko <andrew@daynix.com>

Bug: https://bugzilla.redhat.com/show_bug.cgi?id=1707441
The issue was detected with QEMU and doesn't reproduce on Windows guest.
CTRL_EXT.IAME is disabled by
rev 0a8047ac68e50e4ccbadcfc6b6b070805b976885:
"to avoid disruption from potential programs that access the registers
directly."
So let's leave it like that and add interrupt pending clearance
using write to ICR. It fixes the issue when removed cable can't be detected
by the driver.

Signed-off-by: Andrew Melnychenko <andrew@daynix.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 177c6da80c57..064bb4a47131 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -1898,6 +1898,9 @@ static irqreturn_t e1000_msix_other(int __always_unused irq, void *data)
 	struct e1000_hw *hw = &adapter->hw;
 	u32 icr = er32(ICR);
 
+	if (!(er32(CTRL_EXT) & E1000_CTRL_EXT_IAME))
+		ew32(ICR, icr & ~E1000_ICR_INT_ASSERTED);
+
 	if (icr & adapter->eiac_mask)
 		ew32(ICS, (icr & adapter->eiac_mask));
 
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
