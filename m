Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 719CF2CC0FF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 16:38:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE27087900;
	Wed,  2 Dec 2020 15:38:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xYT67409NERO; Wed,  2 Dec 2020 15:38:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 120A587902;
	Wed,  2 Dec 2020 15:38:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5437D1BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:38:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 441C82E17D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:38:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qXBtbLF+Pruu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 15:38:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 13D7E203FA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:38:02 +0000 (UTC)
IronPort-SDR: gebG4AUf+mIxzHvF+y7vwagVayZ+UMqhUaPTZQa4YXOTR4SbmsfG5rAsIQy1lFsHm1sCNtz4L7
 poLCyxC5s2Lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="234639977"
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; d="scan'208";a="234639977"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 07:38:00 -0800
IronPort-SDR: ug/EuDJ5RuAzG+MVKRDo3eqBUamL0BzqxYq9Qqm+l+QXBJOeXqOgDlDaGzOi+kNFnWnZKrFvpA
 Tx6DOD6g1mcQ==
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; d="scan'208";a="550104523"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 07:37:57 -0800
Date: Wed, 2 Dec 2020 23:40:46 +0800
From: Chen Yu <yu.c.chen@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20201202154046.GA17693@chenyu-office.sh.intel.com>
References: <cover.1606757180.git.yu.c.chen@intel.com>
 <b8896b7748e516e9c440ab22e582e30f1389776c.1606757180.git.yu.c.chen@intel.com>
 <DF79FD96-31E6-4D9A-BF0D-40B7FC563C0B@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DF79FD96-31E6-4D9A-BF0D-40B7FC563C0B@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-wired-lan] [PATCH 1/2][v3] e1000e: Leverage
 direct_complete to speed up s2ram
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Len Brown <len.brown@intel.com>,
 netdev@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, "Brandt, Todd E" <todd.e.brandt@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Kai-Heng,
On Wed, Dec 02, 2020 at 09:06:19PM +0800, Kai-Heng Feng wrote:
> > ---
> > v2: Added test data and some commit log revise(Paul Menzel)
> >    Only skip the suspend/resume if the NIC is not a wake up device specified
> >    by the user(Kai-Heng Feng)
> > v3: Leverage direct complete mechanism to skip all hooks(Kai-Heng Feng)
> > ---
> > 
> > -	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NO_DIRECT_COMPLETE);
> > +	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_SMART_PREPARE);
> 
> This isn't required for pci_pm_prepare() to use driver's .prepare callback.
>
pci_pm_prepare() is likely to return 1 even if driver's prepare() return 0,
when DPM_FLAG_SMART_PREPARE is not set, which might cause prblems:
if (!error && dev_pm_test_driver_flags(dev, DPM_FLAG_SMART_PREPARE))
	return 0;
> > 
> > 	if (pci_dev_run_wake(pdev) && hw->mac.type < e1000_pch_cnp)
> > 		pm_runtime_put_noidle(&pdev->dev);
> > @@ -7890,6 +7897,7 @@ MODULE_DEVICE_TABLE(pci, e1000_pci_tbl);
> > 
> > static const struct dev_pm_ops e1000_pm_ops = {
> > #ifdef CONFIG_PM_SLEEP
> > +	.prepare	= e1000e_pm_prepare,
> 
> How do we make sure a link change happened in S3 can be detect after resume, without a .complete callback which ask device to runtime resume?
> 
The pm core's device_complete() has already done that pm_runtime_put() in the end.

Just talked to Rafael and he might also give some feedbacks later.

thanks,
Chenyu
> Kai-Heng
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
