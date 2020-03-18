Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E602E1896D2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2020 09:23:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F74287F19;
	Wed, 18 Mar 2020 08:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MFMbNCmIWM-Q; Wed, 18 Mar 2020 08:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7BA988638;
	Wed, 18 Mar 2020 08:23:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9BCB31BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 08:23:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 94A7C889D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 08:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AWdsSQwccIQF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 08:23:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 661E08895B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 08:23:14 +0000 (UTC)
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jETyq-0007Ul-4Z
 for intel-wired-lan@lists.osuosl.org; Wed, 18 Mar 2020 08:23:12 +0000
Received: by mail-pf1-f199.google.com with SMTP id h24so16836226pfn.15
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 01:23:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=wXQomjDxhqOSmXN4rvh+6cb9koMhAmGBPz7PcdvQIZE=;
 b=n2DcEIQ8lUzMtbX1Olgfgrpm81m+QPPaEZVGz/DRVgT6PK2Hrw49YKRzDNLFV1jm/l
 rPnXSqiYrpfhLGO4jGns/RpqxWTpXUy6L2N1k2izHCT0XPCqlXd0YmDT4qknY41qBymI
 NZSUyn3bAcPUcyA4eufbiudrQ6Ylf3bqsl0NA7SRIP/fDyav99/fhnIntPbswuNpP+2K
 TeRWK43TMRxQCpeswMnlyA+PUuobpPjbnYB8POf31sc6RUNcMWYhZg3r/CsWRc0M4WmF
 QWFO4rVswFX/sp2FbMogkRKjIvKz+d84+w6sa/QdTnwQclt7aAOaC1fSG5vbCPw5Xyf4
 9fuw==
X-Gm-Message-State: ANhLgQ3NCNGjRMYhap4m8yblQKwWB/crWv4/jLJXhinxy4izLB5PVkYn
 096pL/RtQk9IwVAkcCIWqOAWl12sdpT4QDJFROn/8xrsH6t7a5SI7BqjPqm8SsbT0hvpVPRoEzO
 RatPoic3i0MPCfy9Bf4V0jXJvL0uuKke6+CGTJvkxTQvoN4s=
X-Received: by 2002:a17:902:aa06:: with SMTP id
 be6mr2825612plb.132.1584519790542; 
 Wed, 18 Mar 2020 01:23:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtJ+B+MDwyV+zGBC2sZSj2kkq4zwyi821W6THI5EkPgDkigRvV0P8Q+mmjrsozZ2LCJfAE/KQ==
X-Received: by 2002:a17:902:aa06:: with SMTP id
 be6mr2825576plb.132.1584519790107; 
 Wed, 18 Mar 2020 01:23:10 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id t17sm4987942pgn.94.2020.03.18.01.23.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Mar 2020 01:23:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <38766b04-eec3-f4ce-5fe5-6352562b271c@intel.com>
Date: Wed, 18 Mar 2020 16:23:06 +0800
Message-Id: <FFE42849-4E95-4ADC-9B46-7A0F5B58508B@canonical.com>
References: <0A7D1E37-88A4-4E5A-8522-B80A8AE679EE@canonical.com>
 <8c0032bd-15be-734b-1b52-dedba72a8da3@intel.com>
 <897C8B9E-839A-4FC1-9411-B3CB141890BC@canonical.com>
 <540fd2d3-9187-1dba-185a-58d94c4c5b69@intel.com>
 <BA29B851-8765-4F47-AC98-E2D604595EA6@canonical.com>
 <38766b04-eec3-f4ce-5fe5-6352562b271c@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: Re: [Intel-wired-lan] [Regression] "e1000e: Add support for S0ix"
 breaks s2idle on Lenovo X1 Carbon 7th
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
Cc: "Shalev, Avi" <avi.shalev@intel.com>, Jason Yen <jason.yen@canonical.com>,
 Anthony Wong <anthony.wong@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,

> On Mar 18, 2020, at 15:32, Neftin, Sasha <sasha.neftin@intel.com> wrote:
> 
> On 3/18/2020 05:12, Kai-Heng Feng wrote:
>> Hi Vitaly,
>>> On Mar 17, 2020, at 22:39, Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:
>>> 
>>> On 3/17/2020 16:04, Kai-Heng Feng wrote:
>>>>> On Mar 17, 2020, at 21:56, Neftin, Sasha <sasha.neftin@intel.com> wrote:
>>>>> 
>>>>> On 3/17/2020 15:34, Kai-Heng Feng wrote:
>>>>>> Hi,
>>>>>> Users reported that X1 Carbon 7th can only suspend once due of "e1000e 0000:00:1f.6 enp0s31f6: Hardware Error" [1] [2].
>>>>>> I managed to get one at hand and I can confirm the issue is 100% reproducible.
>>>>>> The error occurs at the first e1e_rphy() in e1000_copper_link_setup_82577() [3].
>>>>>> Reverting "e1000e: Add support for S0ix" makes suspend work again.
>>>>>> I also tried commit e1738282f6c6 "e1000e: fix S0ix flows for cable connected case" however the issue persists.
>>>>>> Kai-Heng
>>>>>> [1] https://bugs.launchpad.net/bugs/1865570
>>>>>> [2] https://bugs.launchpad.net/bugs/1866170
>>>>>> [3] https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/tree/drivers/net/ethernet/intel/e1000e/phy.c?h=dev-queue&id=e1738282f6c6ad0ec56a15c4d5a3b657d90e4435#n630
>>>>> please, check of ME enabled on this system. try disable ME and re-run
>>>> I disabled "Intel AMT", issue is still reproducible.
>>>> Kai-Heng
>>> Hi Kai,
>>> 
>>> Do you work with cable connected?
>> No, ethernet cable is not plugged.
>>> If so, please try to run this command:
>>> sudo echo 3 > /sys/kernel/debug/pmc_core/ltr_ignore
>> Same issue after doing that.
>> Though unlikely, can this be caused by the special design of X1 Carbon?
>> To keep the laptop thin, it doesn't have a RJ45 port. Instead it has a special connecter which requires a RJ45 dongle to support ethernet.
>> Maybe that's why the PHY part isn't working after suspend?
> Hello Kai-Heng,
> Thanks for your response. I would like clarify/understand Lenovo X1 Carbon setup:
> How laptop connected to the docking station?

There's no docking station involved. Just a regular e1000e device connects to root complex.

> Thunderbolt or Lenovo proprietary connection?

No thunderbolt involved.

I'd say it's proprietary:
https://www.lenovo.com/us/en/accessories-and-monitors/cables-and-adapters/adapters/CABLE-BO-Ethernet-Extension-Adapter-2/p/4X90Q84427

The ethernet port is next to thunderbolt, but it's not thunderbolt:
https://images.idgesg.net/images/article/2018/08/left-ports-100769115-orig.jpg

> Where is LAN located (physically) in a laptop or dock?
> PHY located in docking, right?

This I don't know. I'll raise the issue to Lenovo hardware team.

> 
> And last question: does this system supported Sx or S0ix (do you know)?

Sx you mean S3?

I think the system supports S3 but it defaults to S0ix.

> The reason I ask it due from my understanding dock always connected to the power and system should be Sx supported.

There's no dock.
For this issue, _nothing_ connects to the ethernet port.

> 
> Therefore may be we need introduce difference behavior between Sx and S0ix support. (if I understand correctly, such systems as Lenovo Carbon X1 should be Sx support, we need ignore S0ix entry/exit in such cases - ACPI interface should provide us with this info)

For this case S0ix is used.

Kai-Heng

> 
>> Kai-Heng
> Sasha

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
