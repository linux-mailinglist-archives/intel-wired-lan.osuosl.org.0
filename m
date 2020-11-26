Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 375DD2C4F12
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Nov 2020 08:04:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9C44B2DE2A;
	Thu, 26 Nov 2020 07:04:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KW9qYzCU-D-4; Thu, 26 Nov 2020 07:04:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9DE072E103;
	Thu, 26 Nov 2020 07:04:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 90C221BF599
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 07:04:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8B8CE8779E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 07:04:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aieUAmk751bx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Nov 2020 07:04:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 75A0087796
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 07:04:31 +0000 (UTC)
IronPort-SDR: 1E4MTOvgSdfQev5n912GIVQ956gTq31zI2pmhsL5rKui0Npm4rXJL9b64XJWxJO5dqqeBClqhq
 ph9LLJtqKTIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="152080699"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="152080699"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:04:30 -0800
IronPort-SDR: yVSjYmtJ+eioJgW7PA/ayVVuOjAUDc4rKztwNTMKguZfpkMWZyS265pQ3UDhWQjQu/PIBnor6H
 StHm6Sk0xspQ==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="479242797"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:04:27 -0800
Date: Thu, 26 Nov 2020 15:07:13 +0800
From: Chen Yu <yu.c.chen@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20201126070712.GA8072@chenyu-office.sh.intel.com>
References: <20201124153221.11265-1-yu.c.chen@intel.com>
 <8BA4D1E1-DACF-4E84-A5B8-75A7CEA65F98@canonical.com>
 <20201125103612.GA17700@chenyu-office.sh.intel.com>
 <B66CCBD9-5828-4514-AD08-C6FDF026646D@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <B66CCBD9-5828-4514-AD08-C6FDF026646D@canonical.com>
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

On Thu, Nov 26, 2020 at 02:36:42PM +0800, Kai-Heng Feng wrote:
> 
> 
> > On Nov 25, 2020, at 18:36, Chen Yu <yu.c.chen@intel.com> wrote:
> > 
> > Hi Kai-Heng,
> > On Wed, Nov 25, 2020 at 01:17:28AM +0800, Kai-Heng Feng wrote:
> >> Hi Yu,
> >> 
> >>> On Nov 24, 2020, at 23:32, Chen Yu <yu.c.chen@intel.com> wrote:
> >>> 
> >>> The NIC is put in runtime suspend status when there is no wire connected.
> >>> As a result, it is safe to keep this NIC in runtime suspended during s2ram
> >>> because the system does not rely on the NIC plug event nor WOL to wake up
> >>> the system. Unlike the s2idle, s2ram does not need to manipulate S0ix settings
> >>> during suspend.
> >> 
> >> Please see below for the reason why I explicitly disable direct-complete in the driver.
> >> 
> > Okay.
> >>> 
> >>> This patch assigns DPM_FLAG_SMART_SUSPEND and DPM_FLAG_MAY_SKIP_RESUME
> >>> to the e1000e driver so that the s2ram could skip the .suspend_late(),
> >>> .suspend_noirq() and .resume_noirq() .resume_early() when possible.
> >>> Also skip .suspend() and .resume() if dev_pm_skip_suspend() and
> >>> dev_pm_skip_resume() return true, so as to speed up the s2ram.
> >> 
> >> If we really want direct-complete here, maybe always set current WoL setting in runtime suspend routine?
> >> 
> > Indeed, that would be a choice.
> >>> 
> >>> Signed-off-by: Chen Yu <yu.c.chen@intel.com>
> >>> ---
> >>> drivers/base/power/main.c                  |  2 ++
> >>> drivers/net/ethernet/intel/e1000e/netdev.c | 14 +++++++++++++-
> >>> 2 files changed, 15 insertions(+), 1 deletion(-)
> >>> 
> >>> diff --git a/drivers/base/power/main.c b/drivers/base/power/main.c
> >>> index c7ac49042cee..9cd8abba8612 100644
> >>> --- a/drivers/base/power/main.c
> >>> +++ b/drivers/base/power/main.c
> >>> @@ -580,6 +580,7 @@ bool dev_pm_skip_resume(struct device *dev)
> >>> 
> >>> 	return !dev->power.must_resume;
> >>> }
> >>> +EXPORT_SYMBOL_GPL(dev_pm_skip_resume);
> >> 
> >> I don't think it's a good idea to use this predicate out side of PM core, must_resume may change during suspend process.
> >> 
> > The dev_pm_skip_resume() is used during system resume, not during suspend, so
> > there would be no race condition I suppose?
> 
> I think it's better to let PM core to decide.
>
Humm, drivers/acpi/acpi_lpss.c alread used it in acpi_lpss_resume_early(), so e1000e is not the only
one that wants to leverage this interface : )
> >>> 
> >>> /**
> >>> * device_resume_noirq - Execute a "noirq resume" callback for given device.
> >>> @@ -2010,3 +2011,4 @@ bool dev_pm_skip_suspend(struct device *dev)
> >>> 	return dev_pm_test_driver_flags(dev, DPM_FLAG_SMART_SUSPEND) &&
> >>> 		pm_runtime_status_suspended(dev);
> >>> }
> >>> +EXPORT_SYMBOL_GPL(dev_pm_skip_suspend);
> >>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> >>> index b30f00891c03..d79fddabc553 100644
> >>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> >>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> >>> @@ -6965,6 +6965,14 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
> >>> 	struct e1000_hw *hw = &adapter->hw;
> >>> 	int rc;
> >>> 
> >>> +	/* Runtime suspended means that there is no wired connection
> >>> +	 * and it has nothing to do with WOL that, we don't need to
> >>> +	 * adjust the WOL settings. So it is safe to put NIC in
> >>> +	 * runtime suspend while doing system suspend.
> >>> +	 */
> >> 
> >> What about plugging ethernet cable and using WoL after system is suspended?
> >> Commit "e1000e: Exclude device from suspend direct complete optimization" was to address that scenario.
> >> 
> > Yes, this is what I concerned previously. So in order to support this case,
> > let's adjust this by checking
> > 	if (device_may_wakeup() && dev_pm_skip_suspend())
> > 
> > so that if the user has disabled WOL via sysfs then we do not fall
> > into this optimization
> > commit 6bf6be1127f7 ("e1000e: Do not wake up the system via WOL if
> > device wakeup is disabled")
> 
> I don't think this is right.
> Isn't E1000_WUFC_LNKC already set for runtime suspend?
> What if WoL doesn't have it set?
>
I did not quite get what your meaning is.
First, it was a typo, please check v2 patch set, it is:
	if (dev_pm_skip_suspend() && !device_may_wakeup(dev))
if the NIC is runtime suspended, it means that, device_may_wakeup() return
true, the code will continue to execute. In summary, if the NIC is a wake up
device, we don't fall into the optimization.

> >>> +	if (dev_pm_skip_suspend(dev))
> >>> +		return 0;
> >>> +
> >>> 	e1000e_flush_lpic(pdev);
> >>> 
> >>> 	e1000e_pm_freeze(dev);
> >>> @@ -6989,6 +6997,9 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
> >>> 	struct e1000_hw *hw = &adapter->hw;
> >>> 	int rc;
> >>> 
> >>> +	if (dev_pm_skip_resume(dev))
> >>> +		return 0;
> >>> +
> >>> 	/* Introduce S0ix implementation */
> >>> 	if (hw->mac.type >= e1000_pch_cnp &&
> >>> 	    !e1000e_check_me(hw->adapter->pdev->device))
> >>> @@ -7665,7 +7676,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >>> 
> >>> 	e1000_print_device_info(adapter);
> >>> 
> >>> -	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NO_DIRECT_COMPLETE);
> >>> +	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NO_DIRECT_COMPLETE |
> >>> +				DPM_FLAG_SMART_SUSPEND | DPM_FLAG_MAY_SKIP_RESUME);
> >>> 
> >>> 	if (pci_dev_run_wake(pdev) && hw->mac.type < e1000_pch_cnp)
> >>> 		pm_runtime_put_noidle(&pdev->dev);
> >> 
> >> Also, most e1000e device on modern platforms doesn't runtime suspend at all after commit "e1000e: Disable runtime PM on CNP+".
> >> 
> > Yes, I did some hack on this to make runtime suspend work.
> > As we do have more newer NICs to come, how about removing the
> > restriction of runtime suspend and let the user determine whether
> > to enable the runtime suspend via echo 'on' or 'auto' via
> > sysfs's control.
> 
> There's a discussion on enable runtime PM by default for all PCI devices.
> So removing this workaround will expose the bug for users.
>
> Let me get the system with the bug (Latitude 5500) and see if latest ACPI code can fix the GPE bug.
>
There is sysfs for user to disable runtime suspend. If there is an issue on that platform and
if we don't want to break the user space(because the blacklist is already there), I think we
should only disable the runtime suspend on that platform, but not blocking other platforms IMO.

thanks,
Chenyu
> Kai-Hengs
> 
> > 
> > thanks,
> > Chenyu
> >> Kai-Heng
> >> 
> >>> -- 
> >>> 2.25.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
