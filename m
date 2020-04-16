Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC801AD12C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2020 22:34:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBD7684F12;
	Thu, 16 Apr 2020 20:34:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EHdlyCCQWYRg; Thu, 16 Apr 2020 20:34:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 150E58683A;
	Thu, 16 Apr 2020 20:34:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BFEA1BF371
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 20:34:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 21D73861D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 20:34:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9pO2iZw-azlk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2020 20:34:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D5C9F84F12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 20:34:21 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id 20so36912qkl.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 13:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=iAAkg/ZFJmL7wuVqtACQGH5GsSS+iZDvt0bORPhAs+w=;
 b=ddtAM8EqUMeCI6sip4tt1MpJLWA+caTNHVwcDi2vrIZ/zzoJP+FeSGgoSTGqUBM0Ex
 iwVaQCxxKtzHnfUcf/ADYkvzZMsokOiZJb2p8KGv4kBmQQPZ13QnYH5zr3AkJwX4s3wl
 /Cb5eVrmiTZStfloVgcOYPFKk5ZRliIPFqmOY/mrjBPieR+T+BrGYMlD0XpsAVlvYME8
 VcqDeBVWUVToKFRsEsfmQnwW0iZyKLdxHmIdmrHfB8/LCbOw8Te8to0UT2FVuy6M6B1F
 T7hUGmmjWI8sPOmTLW7Ti9mZPegY59IJJi8BQEghzLgPtVHawc3c/cdE6SCwjwEy+L8h
 nI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=iAAkg/ZFJmL7wuVqtACQGH5GsSS+iZDvt0bORPhAs+w=;
 b=nhBH+/RbskirNODirXcZaGV2Jw3+m22A0iPNc6YCgq6ZxV1A0lAahvaY7bObRkb2IC
 +82HKx62qRw/LTQhhyeq1I/XcpF8X4eBmhoPiEDtlMOZrsl/7bOGMUj8O/F114AR7Vb0
 HZ65shJ443SSncTjipIZw6R3ARSm/de0AAVhl5pkfOFbJrUebiJF3wdNjo8wh0UgnkRV
 a/O/1WEHOH4NxyIsVhnyGr2k7JldCTf+7CaDp2jg6rD3RqJjBCcy9qFWobYaZ7eNgDo5
 EDOFa8hlyoZOqOTYW1s2aIKaur4ERfHIyq7tAVFl/ZeltY48ifDiCaDF6hXKHXNNsFMV
 eFkA==
X-Gm-Message-State: AGi0PuYEx/gmjxyDWr1T1LBxL1mqGSsQ8zmlDk5/gUOwOiNFsYzS6wVs
 Ao5VdEA2VjdsuBPVaP7AzZI=
X-Google-Smtp-Source: APiQypJl9k+ZDLZSDurCjd0oAAGKg3VUjked8scIjzWeyuYPjcpBiprQo1sXCJkstOltXn9VR42KSw==
X-Received: by 2002:ae9:ec12:: with SMTP id h18mr31264024qkg.387.1587069260711; 
 Thu, 16 Apr 2020 13:34:20 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id h25sm2360065qte.37.2020.04.16.13.34.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 13:34:20 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: mussitantesmortem@gmail.com
Date: Thu, 16 Apr 2020 13:34:19 -0700
Message-ID: <20200416203151.10210.78244.stgit@localhost.localdomain>
In-Reply-To: <20200414184547.ue7mvj6olmr76m2i@laptop>
References: <20200414184547.ue7mvj6olmr76m2i@laptop>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH] e1000: Do not perform reset in
 reset_task if we are already down
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

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

We are seeing a deadlock in e1000 down when NAPI is being disabled. Looking
over the kernel function trace of the system it appears that the interface
is being closed and then a reset is hitting which deadlocks the interface
as the NAPI interface is already disabled.

To prevent this from happening I am disabling the reset task when
__E1000_DOWN is already set. In addition code has been added so that we set
the __E1000_DOWN while holding the __E1000_RESET flag in e1000_close in
order to guarantee that the reset task will not run after we have started
the close call.

Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---

Maxim,

If possible I would appreciate it if you could try this patch and see if
it addresses the issues you were seeing. From what I can tell this issue
is due to the interface being closed around the same time a reset is
scheduled so the two are racing and resulting in down being called after
a down was already completed. Adding this test for the down flag should
correct that.

If it does I will resubmit this patch as a non-RFC.

Thanks.

Alex

 drivers/net/ethernet/intel/e1000/e1000_main.c |   18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index f7103356ef56..566bbcb74056 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -542,8 +542,13 @@ void e1000_reinit_locked(struct e1000_adapter *adapter)
 	WARN_ON(in_interrupt());
 	while (test_and_set_bit(__E1000_RESETTING, &adapter->flags))
 		msleep(1);
-	e1000_down(adapter);
-	e1000_up(adapter);
+
+	/* only run the task if not already down */
+	if (!test_bit(__E1000_DOWN, &adapter->flags)) {
+		e1000_down(adapter);
+		e1000_up(adapter);
+	}
+
 	clear_bit(__E1000_RESETTING, &adapter->flags);
 }
 
@@ -1433,10 +1438,15 @@ int e1000_close(struct net_device *netdev)
 	struct e1000_hw *hw = &adapter->hw;
 	int count = E1000_CHECK_RESET_COUNT;
 
-	while (test_bit(__E1000_RESETTING, &adapter->flags) && count--)
+	while (test_and_set_bit(__E1000_RESETTING, &adapter->flags) && count--)
 		usleep_range(10000, 20000);
 
-	WARN_ON(test_bit(__E1000_RESETTING, &adapter->flags));
+	WARN_ON(count < 0);
+
+	/* signal that we're down so that the reset task will no longer run */
+	set_bit(__E1000_DOWN, &adapter->flags);
+	clear_bit(__E1000_RESETTING, &adapter->flags);
+
 	e1000_down(adapter);
 	e1000_power_down_phy(adapter);
 	e1000_free_irq(adapter);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
