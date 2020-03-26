Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0EC194537
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2020 18:16:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DCA2189165;
	Thu, 26 Mar 2020 17:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QNkJ7QTk4Nti; Thu, 26 Mar 2020 17:16:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A52788C01;
	Thu, 26 Mar 2020 17:16:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C1A41BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 17:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17CA68869E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 17:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nsifv0n4-8NZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2020 17:16:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E24BF8868C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 17:16:46 +0000 (UTC)
Received: from mail-pj1-f71.google.com ([209.85.216.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jHW7Y-0002zO-Tt
 for intel-wired-lan@lists.osuosl.org; Thu, 26 Mar 2020 17:16:45 +0000
Received: by mail-pj1-f71.google.com with SMTP id y21so5046767pjn.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 10:16:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=dqfMGNuGJlDejAz9mJaTfol96HG948oTLjPcdkSSNds=;
 b=r3bmoTs7JMzd4Rg7qw/l7RQ7TyeOpyCV2fpkX/bpntoIpCjnm+Sm6UjHoPfP1IMcH9
 qE9dZvwENRjwuDfG414XVanC4ulsVNmJHXUbE3lXWDj2QaybKIGif4tvXmP8on4bvp22
 kwKpFpn22I/wKCJIjrmrs9SrHuG1dSh4V6ZUYQWh2zN3koHap9t0QhmNnZMY2doUSzLy
 vDVC+Q37bdq3DUGFriFWbP7dOhpXiSANaauXCPrizTe/HSfx9R6Bi6vPELCOwe1DEIHy
 j4k2l+9o+nPa/DcnnjPfeHq2FhO/r99VpQG2iMRbDnmkO0q9XN7LIVpwanxXLlUsMCO4
 Oeeg==
X-Gm-Message-State: ANhLgQ3uVCKwZpuOzNsReXANq0mAu4y1qVepzncKk2YmIDWzdTt6A/kL
 iwV+JH/yTNXJs1HLpn4HD/4rsoQZcoORzDIyk+PbJnm3BxtMYFwT+8NLhR2Gf75j9n+1hsdN6NY
 adYDrzTNuV7mdlxBBDTDVQbzM3idh4HqW35lQtpyH6Ncr38E=
X-Received: by 2002:a63:8948:: with SMTP id v69mr9362896pgd.318.1585243003072; 
 Thu, 26 Mar 2020 10:16:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vswShhL/EpTuaoi1tKEpPiSR0ktuhOQpRbacspfuWfDowPWsafFEAU3XqSauf9zfbjWpcjqHQ==
X-Received: by 2002:a63:8948:: with SMTP id v69mr9362862pgd.318.1585243002685; 
 Thu, 26 Mar 2020 10:16:42 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id f69sm2157271pfa.124.2020.03.26.10.16.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Mar 2020 10:16:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <CAKgT0UfFnXcSSsXvxk8+xiZvyzDh+8V-9bCT-z5U+MEVoAVKLw@mail.gmail.com>
Date: Fri, 27 Mar 2020 01:16:39 +0800
Message-Id: <98E86E5A-4EE9-4CB5-81CF-49C3E74C3AE6@canonical.com>
References: <20200326103926.20888-1-kai.heng.feng@canonical.com>
 <CAKgT0UfFnXcSSsXvxk8+xiZvyzDh+8V-9bCT-z5U+MEVoAVKLw@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: Re: [Intel-wired-lan] [PATCH] igb: Use a sperate mutex insead of
 rtnl_lock()
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Alexander,

> On Mar 27, 2020, at 00:27, Alexander Duyck <alexander.duyck@gmail.com> wrote:
> 
> On Thu, Mar 26, 2020 at 3:39 AM Kai-Heng Feng
> <kai.heng.feng@canonical.com <mailto:kai.heng.feng@canonical.com>> wrote:
>> 
>> Commit 9474933caf21 ("igb: close/suspend race in netif_device_detach")
>> fixed race condition between close and power management ops by using
>> rtnl_lock().
>> 
>> This fix is a preparation for next patch, to prevent a dead lock under
>> rtnl_lock() when calling runtime resume routine.
>> 
>> However, we can't use device_lock() in igb_close() because when module
>> is getting removed, the lock is already held for igb_remove(), and
>> igb_close() gets called during unregistering the netdev, hence causing a
>> deadlock. So let's introduce a new mutex so we don't cause a deadlock
>> with driver core or netdev core.
>> 
>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> 
> So this description doesn't make much sense to me. You describe the
> use of the device_lock() in igb_close() but it isn't used there.

Sorry I forgot to add a revision number.
It was used by previous version and Aaron found a regression when device_lock() is used.

> In addition it seems like you are arbitrarily moving code that was
> wrapped in the rtnl_lock out of it. I'm not entirely sure that is safe
> since there are calls within many of these functions that assume the
> rtnl_lock is held and changing that is likely going to introduce more
> issues.

The reason why rtnl lock needs to be removed is because of the following patch:
https://lore.kernel.org/lkml/20200207101005.4454-2-kai.heng.feng@canonical.com/

Ethtools helpers already held rtnl_lock, so to prevent a deadlock, my idea is to use another lock to solve what "igb: close/suspend race in netif_device_detach" originally tried to fix.

> 
> 
> 
>> ---
>> drivers/net/ethernet/intel/igb/igb_main.c | 19 +++++++++++++------
>> 1 file changed, 13 insertions(+), 6 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>> index b46bff8fe056..dc7ed5dd216b 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -288,6 +288,8 @@ static const struct igb_reg_info igb_reg_info_tbl[] = {
>>        {}
>> };
>> 
>> +static DEFINE_MUTEX(igb_mutex);
>> +
>> /* igb_regdump - register printout routine */
>> static void igb_regdump(struct e1000_hw *hw, struct igb_reg_info *reginfo)
>> {
>> @@ -4026,9 +4028,14 @@ static int __igb_close(struct net_device *netdev, bool suspending)
>> 
>> int igb_close(struct net_device *netdev)
>> {
>> +       int err = 0;
>> +
>> +       mutex_lock(&igb_mutex);
>>        if (netif_device_present(netdev) || netdev->dismantle)
>> -               return __igb_close(netdev, false);
>> -       return 0;
>> +               err = __igb_close(netdev, false);
>> +       mutex_unlock(&igb_mutex);
>> +
>> +       return err;
>> }
>> 
> 
> Okay, so I am guessing the problem has something to do with the
> addition of the netdev->dismantle test here and the fact that it is
> bypassing the present check for the hotplug remove case?

Please see the rationale above.

> 
> So it looks like nobody ever really reviewed commit 888f22931478
> ("igb: Free IRQs when device is hotplugged"). What I would recommend
> is reverting it and instead we fix the remaining pieces that need to
> be addressed in igb so it more closely matches what we have in e1000e
> after commit a7023819404a ("e1000e: Use rtnl_lock to prevent race
> conditions between net and pci/pm"). From what I can tell the only
> pieces that are really missing is to update igb_io_error_detected so
> that in addition to igb_down it will call igb_free_irq, and then in
> addition we should be wrapping most of the code in that function with
> an rtnl_lock since it is detaching a device and making modifications
> to it.

In addition to that, igb_shutdown() indirectly calls igb_close() when netdev unregistering the device.

My "only scratch the surface" approach is because I don't have a reproducer for commit "igb: close/suspend race in netif_device_detach", and I am afraid of breaking it.

Kai-Heng
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
