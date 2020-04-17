Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B781AE256
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2020 18:35:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 23519226FC;
	Fri, 17 Apr 2020 16:35:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AQAo8Uhi1maB; Fri, 17 Apr 2020 16:35:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C188022718;
	Fri, 17 Apr 2020 16:35:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 419B31BF28E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 16:35:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3D279866C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 16:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHyFHi34CecW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2020 16:35:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8A9FB866AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 16:35:35 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id s63so3050968qke.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 09:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:user-agent:mime-version
 :content-transfer-encoding;
 bh=3uELr8a2YBlygOjULXHfTsQ5W5OUjM3HBq49e4sxrQ8=;
 b=Wlb80tESjlhP0DPrVosDOIf78j+RGf9xqOjWNPyljdGYM35GyngClPCiyXzoiQxH9U
 jnla2a2AX44KFHYDsq2V/mebMtIzFixocqPuyqWSstv9jFXqx+xzsmXIwA7tWFnGoAp5
 DvDsvAq6G/PtrXOLa8BHxuTYWWbzNeXoTSBtBsSjIcUhWJzOqFo+ZlVM7lmpco61kmZp
 QAjhbxpwDh7/Tf6sLyS6AWbhdfZHaOziZPg8NEGgCOan9BSHfhyGsjlaRNS2R7bSbTOJ
 5djCbR4BcrUIPbrXmQ+GpqL1l1jonsvqD6vdgOJyrimmdtcQghKlPRBjQYCXij9sNvpg
 AhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=3uELr8a2YBlygOjULXHfTsQ5W5OUjM3HBq49e4sxrQ8=;
 b=KJP7oYGDioerTmzGYYLQW1IP4yMADvjsybxync4FXCrKAJ5PilslLvUyrwIDl7WxHE
 5rrdqt6Zlk5ZtjFmUD+RWh+OrRCw2jREYlFz+eHFIMgG5D8Az2x6mq72qG7QlKQYtGVS
 w1fCcSnolJ7se+75NqP8Dog5sevdYBCalgrleFes/gf4oM5fg6hWOcJLK4k2jD7dRAir
 w501XORQxzDF0UQ0dGDr0djhijyXfQAV0htGuU5YPowaapfiE2V3o2hT5Ko/9fi7y40J
 pGNA2gj5TVUSm39/Vv7bQ5A3Qs3SbV64JOCdDUMR6ToBXta6z/XSKXmhG1rVsatr+tp6
 IKWg==
X-Gm-Message-State: AGi0Pub/nL/neBNvDH/thqWbzAz1U/gM9FnYZpoELMfJWxNRuEmwFxnL
 +YsP02kvlDtIjKXwI3fGM+U=
X-Google-Smtp-Source: APiQypI+pT5MAJm0YqrCO54KsIwIRA4IbCHScStwYEKpUT5MghkIfcxJaldnITGI2xo3iRTd7eh0Pw==
X-Received: by 2002:a37:a5c7:: with SMTP id o190mr4265184qke.5.1587141333289; 
 Fri, 17 Apr 2020 09:35:33 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id g12sm17440621qtu.69.2020.04.17.09.35.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 Apr 2020 09:35:32 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: jeffrey.t.kirsher@intel.com
Date: Fri, 17 Apr 2020 09:35:31 -0700
Message-ID: <20200417163531.5041.22649.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-queue PATCH] e1000: Do not perform reset in
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
Cc: mussitantesmortem@gmail.com, intel-wired-lan@lists.osuosl.org
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

Tested-by: Maxim Zhukov <mussitantesmortem@gmail.com>
Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
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
