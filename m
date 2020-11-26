Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E3B2C5295
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Nov 2020 12:08:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7187287834;
	Thu, 26 Nov 2020 11:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cn6XrE7xB4-k; Thu, 26 Nov 2020 11:08:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03FFC87830;
	Thu, 26 Nov 2020 11:08:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C4FC1BF417
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 11:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1F9122E141
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 11:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Npg-l-UcXBP6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Nov 2020 11:08:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id AA85A2034A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 11:08:11 +0000 (UTC)
IronPort-SDR: cHVxiENVS0MyhFNhMmXPLlv9VBulfhQI5JGZiS3ZxQdH9vES1JSghrW/8uOxDFRORubqh9Mdz9
 Jp9fQoz0PBwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="171491929"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="171491929"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 03:08:11 -0800
IronPort-SDR: /otGytfWFdq11RlkqghqeGVZ5TK8O2oVv3LITrALkdBxK95l6C9CFbg2bATVVs3oY3X+CXJeez
 +5Nka8IWZHmw==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="479318878"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 03:08:08 -0800
Date: Thu, 26 Nov 2020 19:10:54 +0800
From: Chen Yu <yu.c.chen@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20201126111053.GA15841@chenyu-office.sh.intel.com>
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
Cc: Len Brown <len.brown@intel.com>, Chen Yu <yu.c.chen@intel.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 26, 2020 at 02:36:42PM +0800, Kai-Heng Feng wrote:
> >> 
> >> What about plugging ethernet cable and using WoL after system is suspended?
> >> Commit "e1000e: Exclude device from suspend direct complete optimization" was to address that scenario.
[cut]
> 
> I don't think this is right.
> Isn't E1000_WUFC_LNKC already set for runtime suspend?
> What if WoL doesn't have it set?
>
After re-taking a look at your description, please let me elaborate more about the scenario.
With this patch applied, and with sysfs wake up disabled, the expected behavior is:

1. If NIC is not runtime suspended:
 1.1 s2ram suspend -> wufc will be set to 0(no WoL settings), suspend(), suspend_late(), suspend_noirq()
 1.2 s2ram resume  -> NIC resumes normaly

2. If NIC is runtime suspended:
 2.1 s2ram suspend -> wufc set to E1000_WUFC_LNKC, skip the subsequent suspend callbacks.
 2.2 s2ram resume -> skip the subsequent resume callbacks.

If between 2.1 and 2.2, the cable is plugged, the user is unable to use WoL to wake up
the system.

But if the sysfs wake up is enabled, the code logic falls into the old path, and
the user can wake up the system via WoL by plugging the cable, and send packages to the
system. Or do I miss something?

thanks,
Chenyu


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
