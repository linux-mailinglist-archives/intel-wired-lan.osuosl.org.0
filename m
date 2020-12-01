Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F06A82C9456
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Dec 2020 01:54:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B18E185F29;
	Tue,  1 Dec 2020 00:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xNusHkqvllDm; Tue,  1 Dec 2020 00:54:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F194485F8B;
	Tue,  1 Dec 2020 00:54:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B4311BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 00:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 36A94873AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 00:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fxGukx30QXnx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Dec 2020 00:54:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9159F873A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 00:54:40 +0000 (UTC)
IronPort-SDR: M247hwVwur0EY1mXPCWs/8K9mdADkNtdDiv65+L/Q0X+5pC3TbtU1tTOwd9RTTaZEczH/c6BIO
 t9oxC1VGhwzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="169239874"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="169239874"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 16:54:39 -0800
IronPort-SDR: qU0d+lB8KhXVQ255+eZHNZq/i+221phAkTJLHeRWS9bfh3ZCvz73KTaCOSPgYYluq9Xsx6x/ra
 eP6PoJ7mjCWg==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="549332866"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 16:54:36 -0800
Date: Tue, 1 Dec 2020 08:57:26 +0800
From: Chen Yu <yu.c.chen@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20201201005725.GA32155@chenyu-office.sh.intel.com>
References: <20201124153221.11265-1-yu.c.chen@intel.com>
 <8BA4D1E1-DACF-4E84-A5B8-75A7CEA65F98@canonical.com>
 <20201125103612.GA17700@chenyu-office.sh.intel.com>
 <B66CCBD9-5828-4514-AD08-C6FDF026646D@canonical.com>
 <20201126111053.GA15841@chenyu-office.sh.intel.com>
 <43247451-BA44-4958-A921-2BD0FF5FA5BA@canonical.com>
 <20201126144536.GA19171@chenyu-office.sh.intel.com>
 <E385D730-1D0A-41B0-B6CC-CFBA7535BA1B@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E385D730-1D0A-41B0-B6CC-CFBA7535BA1B@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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

On Fri, Nov 27, 2020 at 08:20:17PM +0800, Kai-Heng Feng wrote:
> Thanks for the confirmation. How about a different approach? 
> Simply use direct-complete to let PM core handle the rest:
>
Thanks for your suggestion and sorry about replying too late.
Yes, using direct-complete could leverage pm core to do that,
although this is a little different than my original thought
to mainly skip the resume process. But anyway, I'll use direct
complete and send a v3 out.
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index b30f00891c03..1d1424a20733 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -25,6 +25,7 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/aer.h>
>  #include <linux/prefetch.h>
> +#include <linux/suspend.h>
>  
>  #include "e1000.h"
>  
> @@ -6868,6 +6869,20 @@ static void e1000e_disable_aspm_locked(struct pci_dev *pdev, u16 state)
>  	__e1000e_disable_aspm(pdev, state, 1);
>  }
>  
> +static int e1000e_pm_prepare(struct device *dev)
> +{
> +	return pm_runtime_suspended(dev) &&
> +	       pm_suspend_via_firmware() &&
> +	       !device_may_wakeup(dev);
> +}
device_may_wakeup() is not needed as pm core will check it anyway.
> +
> +static void e1000e_pm_complete(struct device *dev)
> +{
> +	/* Detect link change */
> +	if (pm_runtime_suspended(dev))
> +		pm_request_resume(dev);
> +}
There is no need to force resume the device, just keep it
runtime suspended would be okay. Besides the pm core's complete()
will restore runtime usage_count which is increased by pm core's
prepare(), so there is no need to do that here again.
> +
>  static int e1000e_pm_thaw(struct device *dev)
>  {
>  	struct net_device *netdev = dev_get_drvdata(dev);
> @@ -7665,9 +7680,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  	e1000_print_device_info(adapter);
>  
> -	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NO_DIRECT_COMPLETE);
> -
DPM_FLAG_SMART_PREPARE must be set otherwise pci subsystem will ignore the
.prepare() from the driver.
> -	if (pci_dev_run_wake(pdev) && hw->mac.type < e1000_pch_cnp)
> +	if (pci_dev_run_wake(pdev))
>  		pm_runtime_put_noidle(&pdev->dev);
>
I would prefer to only disable runtime for cnp, in case of
any user regressions.

thanks,
Chenyu
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
