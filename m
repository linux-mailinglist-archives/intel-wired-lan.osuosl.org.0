Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B022C2E43
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Nov 2020 18:17:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41AD1861A1;
	Tue, 24 Nov 2020 17:17:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dNYsUTFQVsRq; Tue, 24 Nov 2020 17:17:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C91C862C7;
	Tue, 24 Nov 2020 17:17:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49F471BF397
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 17:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4247B86726
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 17:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VTVQ1mirqv8J for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Nov 2020 17:17:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD68E864D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 17:17:35 +0000 (UTC)
Received: from mail-pl1-f199.google.com ([209.85.214.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1khbwb-00011h-UC
 for intel-wired-lan@lists.osuosl.org; Tue, 24 Nov 2020 17:17:34 +0000
Received: by mail-pl1-f199.google.com with SMTP id u14so14157846plq.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 09:17:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=VRMiJUNLgr9M7h46m/eHssvcueu9oqfWJ7ck5ke8IpY=;
 b=ne/Dg1Tp+F+eP/Ht7Kbi2F53wQIJbtmvFy8rLJBSIE7vEBwpmxCFGKsj1jTP+2XiJT
 /lcrOY2fqb1H4BIYZw0SankJCrR27dMzGahZRMk6Tvy9q275PmCMowQaMfOe/RJMFY3a
 ewsamZ7jLw8t1DI9iEcxSbjRkG6CLRUmKXt72+nc/18AjsxxZZWsPTAFwWncRHhP4HV3
 jOiPQHesqSm88X6nYLO/bYqEml0D3tb3tCJ7GRUMl29mQk0NOXU+hwUM6WgD+8MCxstS
 O87AbCm4QalzY1P7fBMRJbZKrvgO77f/dWVEf4KQSXISS7CWxCIG6LxnWz86eNyKd51/
 XvOg==
X-Gm-Message-State: AOAM533LZgSUVeY6bVDKXghfotpUUGGP4ob5Oojvh/lqAXEun9SQXTpQ
 IS7wLPrIxFTLcBJhC7vszzGR03FTNRMh56HjySyuJHRqSw8FpjqCsxUvJ0ykeelVuBg8nisLqAs
 HtfkmbDjt1s9u2eO8t/YipwdWuu5pT0h41UKUSbzsJoovKlk=
X-Received: by 2002:a05:6a00:794:b029:197:e418:ac4d with SMTP id
 g20-20020a056a000794b0290197e418ac4dmr4887486pfu.47.1606238252494; 
 Tue, 24 Nov 2020 09:17:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzIVyAqIJC5/bha05OEWX9Zk7sJdoBbnLioL22z3QEJ5PX0MShrmdxI3UM/mbFBfxGHgiS6Hg==
X-Received: by 2002:a05:6a00:794:b029:197:e418:ac4d with SMTP id
 g20-20020a056a000794b0290197e418ac4dmr4887455pfu.47.1606238252111; 
 Tue, 24 Nov 2020 09:17:32 -0800 (PST)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id o132sm14969443pfg.100.2020.11.24.09.17.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Nov 2020 09:17:31 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.20.0.2.21\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20201124153221.11265-1-yu.c.chen@intel.com>
Date: Wed, 25 Nov 2020 01:17:28 +0800
Message-Id: <8BA4D1E1-DACF-4E84-A5B8-75A7CEA65F98@canonical.com>
References: <20201124153221.11265-1-yu.c.chen@intel.com>
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

Hi Yu,

> On Nov 24, 2020, at 23:32, Chen Yu <yu.c.chen@intel.com> wrote:
> 
> The NIC is put in runtime suspend status when there is no wire connected.
> As a result, it is safe to keep this NIC in runtime suspended during s2ram
> because the system does not rely on the NIC plug event nor WOL to wake up
> the system. Unlike the s2idle, s2ram does not need to manipulate S0ix settings
> during suspend.

Please see below for the reason why I explicitly disable direct-complete in the driver.

> 
> This patch assigns DPM_FLAG_SMART_SUSPEND and DPM_FLAG_MAY_SKIP_RESUME
> to the e1000e driver so that the s2ram could skip the .suspend_late(),
> .suspend_noirq() and .resume_noirq() .resume_early() when possible.
> Also skip .suspend() and .resume() if dev_pm_skip_suspend() and
> dev_pm_skip_resume() return true, so as to speed up the s2ram.

If we really want direct-complete here, maybe always set current WoL setting in runtime suspend routine?

> 
> Signed-off-by: Chen Yu <yu.c.chen@intel.com>
> ---
> drivers/base/power/main.c                  |  2 ++
> drivers/net/ethernet/intel/e1000e/netdev.c | 14 +++++++++++++-
> 2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/base/power/main.c b/drivers/base/power/main.c
> index c7ac49042cee..9cd8abba8612 100644
> --- a/drivers/base/power/main.c
> +++ b/drivers/base/power/main.c
> @@ -580,6 +580,7 @@ bool dev_pm_skip_resume(struct device *dev)
> 
> 	return !dev->power.must_resume;
> }
> +EXPORT_SYMBOL_GPL(dev_pm_skip_resume);

I don't think it's a good idea to use this predicate out side of PM core, must_resume may change during suspend process.

> 
> /**
>  * device_resume_noirq - Execute a "noirq resume" callback for given device.
> @@ -2010,3 +2011,4 @@ bool dev_pm_skip_suspend(struct device *dev)
> 	return dev_pm_test_driver_flags(dev, DPM_FLAG_SMART_SUSPEND) &&
> 		pm_runtime_status_suspended(dev);
> }
> +EXPORT_SYMBOL_GPL(dev_pm_skip_suspend);
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index b30f00891c03..d79fddabc553 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6965,6 +6965,14 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
> 	struct e1000_hw *hw = &adapter->hw;
> 	int rc;
> 
> +	/* Runtime suspended means that there is no wired connection
> +	 * and it has nothing to do with WOL that, we don't need to
> +	 * adjust the WOL settings. So it is safe to put NIC in
> +	 * runtime suspend while doing system suspend.
> +	 */

What about plugging ethernet cable and using WoL after system is suspended?
Commit "e1000e: Exclude device from suspend direct complete optimization" was to address that scenario.

> +	if (dev_pm_skip_suspend(dev))
> +		return 0;
> +
> 	e1000e_flush_lpic(pdev);
> 
> 	e1000e_pm_freeze(dev);
> @@ -6989,6 +6997,9 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
> 	struct e1000_hw *hw = &adapter->hw;
> 	int rc;
> 
> +	if (dev_pm_skip_resume(dev))
> +		return 0;
> +
> 	/* Introduce S0ix implementation */
> 	if (hw->mac.type >= e1000_pch_cnp &&
> 	    !e1000e_check_me(hw->adapter->pdev->device))
> @@ -7665,7 +7676,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> 
> 	e1000_print_device_info(adapter);
> 
> -	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NO_DIRECT_COMPLETE);
> +	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NO_DIRECT_COMPLETE |
> +				DPM_FLAG_SMART_SUSPEND | DPM_FLAG_MAY_SKIP_RESUME);
> 
> 	if (pci_dev_run_wake(pdev) && hw->mac.type < e1000_pch_cnp)
> 		pm_runtime_put_noidle(&pdev->dev);

Also, most e1000e device on modern platforms doesn't runtime suspend at all after commit "e1000e: Disable runtime PM on CNP+".

Kai-Heng

> -- 
> 2.25.1
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
