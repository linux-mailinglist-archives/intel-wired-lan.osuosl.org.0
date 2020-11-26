Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 764482C5742
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Nov 2020 15:43:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 11C1987402;
	Thu, 26 Nov 2020 14:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rjvj4ZxeLB5T; Thu, 26 Nov 2020 14:42:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E75D87403;
	Thu, 26 Nov 2020 14:42:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ADA1E1BF263
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 14:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A82BF87400
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 14:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M1s_hesrZ18I for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Nov 2020 14:42:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5ABFF873FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 14:42:55 +0000 (UTC)
IronPort-SDR: V33lTBLmwKuzY+ilrLhQtyNqMg5tscgCKLLwXhmtWKcVtpP41eGIZ1El9YNZuiD6tCDiHsmNSP
 A4isXMUumopA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="169732186"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="169732186"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 06:42:54 -0800
IronPort-SDR: IpvuAOan0gOjeGeK1nz7PkafYroutIPYpgzNH1m0RxWf2UrtEi6aAEhIOiQvJ0u/xmdA3m5x7D
 GFelO//WciyA==
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="547739896"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 06:42:51 -0800
Date: Thu, 26 Nov 2020 22:45:37 +0800
From: Chen Yu <yu.c.chen@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20201126144536.GA19171@chenyu-office.sh.intel.com>
References: <20201124153221.11265-1-yu.c.chen@intel.com>
 <8BA4D1E1-DACF-4E84-A5B8-75A7CEA65F98@canonical.com>
 <20201125103612.GA17700@chenyu-office.sh.intel.com>
 <B66CCBD9-5828-4514-AD08-C6FDF026646D@canonical.com>
 <20201126111053.GA15841@chenyu-office.sh.intel.com>
 <43247451-BA44-4958-A921-2BD0FF5FA5BA@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43247451-BA44-4958-A921-2BD0FF5FA5BA@canonical.com>
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

On Thu, Nov 26, 2020 at 08:05:02PM +0800, Kai-Heng Feng wrote:
> 
> 
> > On Nov 26, 2020, at 19:10, Chen Yu <yu.c.chen@intel.com> wrote:
> > 
> > On Thu, Nov 26, 2020 at 02:36:42PM +0800, Kai-Heng Feng wrote:
> >>>> 
> >>>> What about plugging ethernet cable and using WoL after system is suspended?
> >>>> Commit "e1000e: Exclude device from suspend direct complete optimization" was to address that scenario.
> > [cut]
> >> 
> >> I don't think this is right.
> >> Isn't E1000_WUFC_LNKC already set for runtime suspend?
> >> What if WoL doesn't have it set?
> >> 
> > After re-taking a look at your description, please let me elaborate more about the scenario.
> > With this patch applied, and with sysfs wake up disabled, the expected behavior is:
> > 
> > 1. If NIC is not runtime suspended:
> > 1.1 s2ram suspend -> wufc will be set to 0(no WoL settings), suspend(), suspend_late(), suspend_noirq()
> > 1.2 s2ram resume  -> NIC resumes normaly
> > 
> > 2. If NIC is runtime suspended:
> > 2.1 s2ram suspend -> wufc set to E1000_WUFC_LNKC, skip the subsequent suspend callbacks.
> 
> Is it safe to keep E1000_WUFC_LNKC enabled here?
> 
> From commit 6bf6be1127f7 ("e1000e: Do not wake up the system via WOL if device wakeup is disabled"):
> 
>        /* Runtime suspend should only enable wakeup for link changes */
>        if (runtime)
>                wufc = E1000_WUFC_LNKC;
>        else if (device_may_wakeup(&pdev->dev))
>                wufc = adapter->wol;
>        else
>                wufc = 0;
> 
> So it has different wakeup settings for runtime suspend and system suspend, either device_may_wakeup() true or false.
Right.
> Or maybe e1000e devs can confirm E1000_WUFC_LNKC is a safe for system suspend?
>
Does 'safe' here mean waking up the system?
For s2ram, whether the NIC can wake up the system from S3 via cable plug is platform
(BIOS) specific. So the wufc settings here is not directly related to system wake up
via plug event.
thanks,
Chenyu
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
