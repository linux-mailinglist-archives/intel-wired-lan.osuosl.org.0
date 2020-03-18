Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB803189449
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2020 04:12:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F935880F6;
	Wed, 18 Mar 2020 03:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aRpoAGb74aS6; Wed, 18 Mar 2020 03:12:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E9E188538;
	Wed, 18 Mar 2020 03:12:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC74A1BF999
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 03:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79F0825CA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 03:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y7ABHm0qR3jf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 03:12:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 3BE8925C57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 03:12:30 +0000 (UTC)
Received: from mail-pf1-f198.google.com ([209.85.210.198])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jEP87-0001ZJ-Je
 for intel-wired-lan@lists.osuosl.org; Wed, 18 Mar 2020 03:12:27 +0000
Received: by mail-pf1-f198.google.com with SMTP id h191so17170731pfe.14
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 20:12:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=l4/jByA516A4vfF7JREpMzwgrcL+J3njPTKVNvxHohw=;
 b=jDahkV6CzvBH3LhCAA3b0ZZveDmSUYIUfoMkSBXfBXKwUAdMBKk2A9hq9e3bbzPKKT
 7CAKZ/x1gINHAqu8kEISYNMaO3uUQTyiIf6cLYwdOWmD8/v4nuer26vQRi94CNRMP3fq
 +C0+nYv4LN1r3QZ5R+nk4RIY/l9uoTit8riXA26rIUIUmTRmx2pkno88P8RPcchM/PlX
 sRkzk9/PJF6v3X0u38jdDnKhoMpT4ZXqEMzSOrQoSUJNU/lZ4z2OWGe+e7POIhZDh7Li
 kZ5tsBNoDVVFjw59qJFYiru7lUnNVQ5koVkntTTqCYeXMLta8yct5Jc5BcoeUDXIxOLs
 l6CQ==
X-Gm-Message-State: ANhLgQ2TmlbuLDq/Eqd0zOzaH5Vr5XgJhHVB53KNqwJJbp8sBV5Dvd0h
 abskVgy//on66RZVfpEVG9sFu+705u+H9W3wVQB7iPuIawjpWJ3dfVMTfdp32uN2cLdHnEM1A2w
 eDI0h8l1Cp2s5leG727OZpsNO1sGRvXW0H+dSVDCsP7NU2+M=
X-Received: by 2002:a17:90a:bd0e:: with SMTP id
 y14mr2461263pjr.11.1584501146087; 
 Tue, 17 Mar 2020 20:12:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsaXhjDz+kND+n7xIPp/XLdb739bZj6nzrn/FQ+Fl9xpK24upx/ZpRP7mrdhIAe5YDbshnXLA==
X-Received: by 2002:a17:90a:bd0e:: with SMTP id
 y14mr2461230pjr.11.1584501145677; 
 Tue, 17 Mar 2020 20:12:25 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id i124sm4360676pfg.14.2020.03.17.20.12.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Mar 2020 20:12:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <540fd2d3-9187-1dba-185a-58d94c4c5b69@intel.com>
Date: Wed, 18 Mar 2020 11:12:20 +0800
Message-Id: <BA29B851-8765-4F47-AC98-E2D604595EA6@canonical.com>
References: <0A7D1E37-88A4-4E5A-8522-B80A8AE679EE@canonical.com>
 <8c0032bd-15be-734b-1b52-dedba72a8da3@intel.com>
 <897C8B9E-839A-4FC1-9411-B3CB141890BC@canonical.com>
 <540fd2d3-9187-1dba-185a-58d94c4c5b69@intel.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
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
Cc: Jason Yen <jason.yen@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Anthony Wong <anthony.wong@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vitaly,

> On Mar 17, 2020, at 22:39, Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:
> 
> On 3/17/2020 16:04, Kai-Heng Feng wrote:
>>> On Mar 17, 2020, at 21:56, Neftin, Sasha <sasha.neftin@intel.com> wrote:
>>> 
>>> On 3/17/2020 15:34, Kai-Heng Feng wrote:
>>>> Hi,
>>>> Users reported that X1 Carbon 7th can only suspend once due of "e1000e 0000:00:1f.6 enp0s31f6: Hardware Error" [1] [2].
>>>> I managed to get one at hand and I can confirm the issue is 100% reproducible.
>>>> The error occurs at the first e1e_rphy() in e1000_copper_link_setup_82577() [3].
>>>> Reverting "e1000e: Add support for S0ix" makes suspend work again.
>>>> I also tried commit e1738282f6c6 "e1000e: fix S0ix flows for cable connected case" however the issue persists.
>>>> Kai-Heng
>>>> [1] https://bugs.launchpad.net/bugs/1865570
>>>> [2] https://bugs.launchpad.net/bugs/1866170
>>>> [3] https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/tree/drivers/net/ethernet/intel/e1000e/phy.c?h=dev-queue&id=e1738282f6c6ad0ec56a15c4d5a3b657d90e4435#n630
>>> please, check of ME enabled on this system. try disable ME and re-run
>> I disabled "Intel AMT", issue is still reproducible.
>> Kai-Heng
> Hi Kai,
> 
> Do you work with cable connected?

No, ethernet cable is not plugged.

> If so, please try to run this command:
> sudo echo 3 > /sys/kernel/debug/pmc_core/ltr_ignore

Same issue after doing that.

Though unlikely, can this be caused by the special design of X1 Carbon?
To keep the laptop thin, it doesn't have a RJ45 port. Instead it has a special connecter which requires a RJ45 dongle to support ethernet.
Maybe that's why the PHY part isn't working after suspend?

Kai-Heng
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
