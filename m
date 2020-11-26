Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 818212C5387
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Nov 2020 13:05:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3712687411;
	Thu, 26 Nov 2020 12:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7A3ufYg4cRn7; Thu, 26 Nov 2020 12:05:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF87587475;
	Thu, 26 Nov 2020 12:05:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0F7F1BF401
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 12:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC1C084410
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 12:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iiw3V7XbQ264 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Nov 2020 12:05:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C66D8836CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 12:05:13 +0000 (UTC)
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1kiG1P-0002qE-Kl
 for intel-wired-lan@lists.osuosl.org; Thu, 26 Nov 2020 12:05:11 +0000
Received: by mail-pf1-f199.google.com with SMTP id k10so1504952pfh.17
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 04:05:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=2wQOqkLciXhZSa/eX0rv+nPfiTXpG5hQx1UgN703x9c=;
 b=kVlAdyHb76fc3aRW98GzD/OvBbmlVpMH9JODV9GNU7B7fyL5AdA7is43UlBeLYSWKA
 IyLvZJuGfKonI3sOrvlMESgT5vVTNFtGDcnQ4+ZWJ6tXmXIWoJf54kdNFv+JTknF3qxC
 7izi/buYx/571StGuLaLijWHosiDEyR91jF6nz3b3ngH1mb6GDRKiqRWJao7RMHG5jTT
 VYzWoVYDQ/8SBqPw4PkRSZNtNGmN/rNMucp3e//jJOjSW+W7YztmOruqDFT4mRsZntvu
 8pmmirHwv1vOgsIMo4n48Szu7mBRgGSs1iaiCF4cdG+XWxAKIpsYeUcMzAMwAaG4XVz1
 gQpw==
X-Gm-Message-State: AOAM532TOb/hv85gu7RJol8Fk0Agc8h93uKR4j2jIvpgkSgJYR86j2vV
 +Wa17RTVDZCA055ZRznsymXGI4orVr0o3Cehgbx3I8JHQIYgqKIvpAcynVrZB6Oa7RAs1bB/aUj
 0YP48kAOWL4/UvdlZQBoZDmdoQI0hLqu2gKNos85sxXVyBJw=
X-Received: by 2002:a17:902:778e:b029:d8:d024:a9a with SMTP id
 o14-20020a170902778eb02900d8d0240a9amr2482626pll.12.1606392309252; 
 Thu, 26 Nov 2020 04:05:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxZdbB/oS59J2hcjxdfEHQ3/vuVWVDPkfcJuDonwLSjoic73L1Oi3/WtkoHq0Q1nDSedirS0w==
X-Received: by 2002:a17:902:778e:b029:d8:d024:a9a with SMTP id
 o14-20020a170902778eb02900d8d0240a9amr2482519pll.12.1606392307554; 
 Thu, 26 Nov 2020 04:05:07 -0800 (PST)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id oc13sm6089197pjb.5.2020.11.26.04.05.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Nov 2020 04:05:06 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.20.0.2.21\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20201126111053.GA15841@chenyu-office.sh.intel.com>
Date: Thu, 26 Nov 2020 20:05:02 +0800
Message-Id: <43247451-BA44-4958-A921-2BD0FF5FA5BA@canonical.com>
References: <20201124153221.11265-1-yu.c.chen@intel.com>
 <8BA4D1E1-DACF-4E84-A5B8-75A7CEA65F98@canonical.com>
 <20201125103612.GA17700@chenyu-office.sh.intel.com>
 <B66CCBD9-5828-4514-AD08-C6FDF026646D@canonical.com>
 <20201126111053.GA15841@chenyu-office.sh.intel.com>
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



> On Nov 26, 2020, at 19:10, Chen Yu <yu.c.chen@intel.com> wrote:
> 
> On Thu, Nov 26, 2020 at 02:36:42PM +0800, Kai-Heng Feng wrote:
>>>> 
>>>> What about plugging ethernet cable and using WoL after system is suspended?
>>>> Commit "e1000e: Exclude device from suspend direct complete optimization" was to address that scenario.
> [cut]
>> 
>> I don't think this is right.
>> Isn't E1000_WUFC_LNKC already set for runtime suspend?
>> What if WoL doesn't have it set?
>> 
> After re-taking a look at your description, please let me elaborate more about the scenario.
> With this patch applied, and with sysfs wake up disabled, the expected behavior is:
> 
> 1. If NIC is not runtime suspended:
> 1.1 s2ram suspend -> wufc will be set to 0(no WoL settings), suspend(), suspend_late(), suspend_noirq()
> 1.2 s2ram resume  -> NIC resumes normaly
> 
> 2. If NIC is runtime suspended:
> 2.1 s2ram suspend -> wufc set to E1000_WUFC_LNKC, skip the subsequent suspend callbacks.

Is it safe to keep E1000_WUFC_LNKC enabled here?

From commit 6bf6be1127f7 ("e1000e: Do not wake up the system via WOL if device wakeup is disabled"):

       /* Runtime suspend should only enable wakeup for link changes */
       if (runtime)
               wufc = E1000_WUFC_LNKC;
       else if (device_may_wakeup(&pdev->dev))
               wufc = adapter->wol;
       else
               wufc = 0;

So it has different wakeup settings for runtime suspend and system suspend, either device_may_wakeup() true or false.
Or maybe e1000e devs can confirm E1000_WUFC_LNKC is a safe for system suspend?

Kai-Heng

> 2.2 s2ram resume -> skip the subsequent resume callbacks.
> 
> If between 2.1 and 2.2, the cable is plugged, the user is unable to use WoL to wake up
> the system.
> 
> But if the sysfs wake up is enabled, the code logic falls into the old path, and
> the user can wake up the system via WoL by plugging the cable, and send packages to the
> system. Or do I miss something?
> 
> thanks,
> Chenyu
> 
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
