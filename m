Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3AD2C65A8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Nov 2020 13:20:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8221879E8;
	Fri, 27 Nov 2020 12:20:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nGCiJslufKNk; Fri, 27 Nov 2020 12:20:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21D82879D6;
	Fri, 27 Nov 2020 12:20:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 690141BF313
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Nov 2020 12:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F663879B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Nov 2020 12:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pVZiiDgkTf4i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Nov 2020 12:20:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 869CC8798B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Nov 2020 12:20:26 +0000 (UTC)
Received: from mail-pg1-f198.google.com ([209.85.215.198])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1kicjg-0003BV-Fz
 for intel-wired-lan@lists.osuosl.org; Fri, 27 Nov 2020 12:20:24 +0000
Received: by mail-pg1-f198.google.com with SMTP id c26so1407262pgw.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Nov 2020 04:20:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=AD55zNbNN3hSJeVAhPYoSyBdi6S9TrVNi5mGtnE8ZpU=;
 b=hHzM5LBoyfQ46gkC2xm6aCu067FF1ItRlXbkWrmiOKfDyRkQu99yOkQt1Ioqfv14V9
 Xz9O20+m9otvp8DuuiYHgnkvPJDQ6GvJskkCgo/kYLAYkEGrdH9o0oWdsmX/ZLbQqhY1
 m5TUIXOtbA8q8ZgFwOrfREuS3zr5ruV4ny48PBBYeEyGhezNq2U+t7pxIyI0LBU6DqYK
 aWT+UJgnpOIMQRUxnQWipbxBhkLp7vT6EasfOzj1XyzJfndl9XfqjJPvcu1tey7LXmwb
 1E3KGGmKx6KQ/j9iycUFyNjfdXzRSYcnvhoRaNhGtP8V3K3ynA9syAa+xtWK7G5zBKTw
 gMZw==
X-Gm-Message-State: AOAM5313PsUoNveW16rDJuTBN+cK7HdmxQyurFyx2oCetUFVH71adeQO
 5fuk7xkUTn3vsJRDA3Gi9ESuCBAB8zWmatUH6pjqbDKtNizayC7pgifjQRFEr5sHZ47foDT4Qbl
 HD69jXQ+BNye74Q47720HaG1BbE2sD2JT0tXr6n+JXn5RIl0=
X-Received: by 2002:a63:4950:: with SMTP id y16mr5471500pgk.415.1606479622886; 
 Fri, 27 Nov 2020 04:20:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyOBowy9IJi0/7OpQ1/omr4WS/MyPdQJSxY2m0LG0Nwtlwb0ImygarwrGxChNbnyIpsUl/q6Q==
X-Received: by 2002:a63:4950:: with SMTP id y16mr5471472pgk.415.1606479622534; 
 Fri, 27 Nov 2020 04:20:22 -0800 (PST)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id o18sm7538151pfp.16.2020.11.27.04.20.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Nov 2020 04:20:21 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.20.0.2.21\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20201126144536.GA19171@chenyu-office.sh.intel.com>
Date: Fri, 27 Nov 2020 20:20:17 +0800
Message-Id: <E385D730-1D0A-41B0-B6CC-CFBA7535BA1B@canonical.com>
References: <20201124153221.11265-1-yu.c.chen@intel.com>
 <8BA4D1E1-DACF-4E84-A5B8-75A7CEA65F98@canonical.com>
 <20201125103612.GA17700@chenyu-office.sh.intel.com>
 <B66CCBD9-5828-4514-AD08-C6FDF026646D@canonical.com>
 <20201126111053.GA15841@chenyu-office.sh.intel.com>
 <43247451-BA44-4958-A921-2BD0FF5FA5BA@canonical.com>
 <20201126144536.GA19171@chenyu-office.sh.intel.com>
To: Chen Yu <yu.c.chen@intel.com>
X-Mailer: Apple Mail (2.3654.20.0.2.21)
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Assign DPM_FLAG_SMART_SUSPEND
 and DPM_FLAG_MAY_SKIP_RESUME to speed up s2ram
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
Cc: Len Brown <len.brown@intel.com>, Linux PM list <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On Nov 26, 2020, at 22:45, Chen Yu <yu.c.chen@intel.com> wrote:
> 
> On Thu, Nov 26, 2020 at 08:05:02PM +0800, Kai-Heng Feng wrote:
>> 
>> 
>>> On Nov 26, 2020, at 19:10, Chen Yu <yu.c.chen@intel.com> wrote:
>>> 
>>> On Thu, Nov 26, 2020 at 02:36:42PM +0800, Kai-Heng Feng wrote:
>>>>>> 
>>>>>> What about plugging ethernet cable and using WoL after system is suspended?
>>>>>> Commit "e1000e: Exclude device from suspend direct complete optimization" was to address that scenario.
>>> [cut]
>>>> 
>>>> I don't think this is right.
>>>> Isn't E1000_WUFC_LNKC already set for runtime suspend?
>>>> What if WoL doesn't have it set?
>>>> 
>>> After re-taking a look at your description, please let me elaborate more about the scenario.
>>> With this patch applied, and with sysfs wake up disabled, the expected behavior is:
>>> 
>>> 1. If NIC is not runtime suspended:
>>> 1.1 s2ram suspend -> wufc will be set to 0(no WoL settings), suspend(), suspend_late(), suspend_noirq()
>>> 1.2 s2ram resume  -> NIC resumes normaly
>>> 
>>> 2. If NIC is runtime suspended:
>>> 2.1 s2ram suspend -> wufc set to E1000_WUFC_LNKC, skip the subsequent suspend callbacks.
>> 
>> Is it safe to keep E1000_WUFC_LNKC enabled here?
>> 
>> From commit 6bf6be1127f7 ("e1000e: Do not wake up the system via WOL if device wakeup is disabled"):
>> 
>>       /* Runtime suspend should only enable wakeup for link changes */
>>       if (runtime)
>>               wufc = E1000_WUFC_LNKC;
>>       else if (device_may_wakeup(&pdev->dev))
>>               wufc = adapter->wol;
>>       else
>>               wufc = 0;
>> 
>> So it has different wakeup settings for runtime suspend and system suspend, either device_may_wakeup() true or false.
> Right.
>> Or maybe e1000e devs can confirm E1000_WUFC_LNKC is a safe for system suspend?
>> 
> Does 'safe' here mean waking up the system?
> For s2ram, whether the NIC can wake up the system from S3 via cable plug is platform
> (BIOS) specific. So the wufc settings here is not directly related to system wake up
> via plug event.

Thanks for the confirmation. How about a different approach? 
Simply use direct-complete to let PM core handle the rest:

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index b30f00891c03..1d1424a20733 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -25,6 +25,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/aer.h>
 #include <linux/prefetch.h>
+#include <linux/suspend.h>
 
 #include "e1000.h"
 
@@ -6868,6 +6869,20 @@ static void e1000e_disable_aspm_locked(struct pci_dev *pdev, u16 state)
 	__e1000e_disable_aspm(pdev, state, 1);
 }
 
+static int e1000e_pm_prepare(struct device *dev)
+{
+	return pm_runtime_suspended(dev) &&
+	       pm_suspend_via_firmware() &&
+	       !device_may_wakeup(dev);
+}
+
+static void e1000e_pm_complete(struct device *dev)
+{
+	/* Detect link change */
+	if (pm_runtime_suspended(dev))
+		pm_request_resume(dev);
+}
+
 static int e1000e_pm_thaw(struct device *dev)
 {
 	struct net_device *netdev = dev_get_drvdata(dev);
@@ -7665,9 +7680,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	e1000_print_device_info(adapter);
 
-	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NO_DIRECT_COMPLETE);
-
-	if (pci_dev_run_wake(pdev) && hw->mac.type < e1000_pch_cnp)
+	if (pci_dev_run_wake(pdev))
 		pm_runtime_put_noidle(&pdev->dev);
 
 	return 0;
@@ -7890,6 +7903,8 @@ MODULE_DEVICE_TABLE(pci, e1000_pci_tbl);
 
 static const struct dev_pm_ops e1000_pm_ops = {
 #ifdef CONFIG_PM_SLEEP
+	.prepare	= e1000e_pm_prepare,
+	.complete	= e1000e_pm_complete,
 	.suspend	= e1000e_pm_suspend,
 	.resume		= e1000e_pm_resume,
 	.freeze		= e1000e_pm_freeze,


> thanks,
> Chenyu

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
