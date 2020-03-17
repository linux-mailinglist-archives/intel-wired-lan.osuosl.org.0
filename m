Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABA11886C4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2020 15:04:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 016E8232A7;
	Tue, 17 Mar 2020 14:04:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2AhOCDn6jvW0; Tue, 17 Mar 2020 14:04:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5819D23067;
	Tue, 17 Mar 2020 14:04:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D26B1BF404
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 14:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 09110889CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 14:04:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3P1he-LzkElH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Mar 2020 14:04:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 48B468886A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 14:04:18 +0000 (UTC)
Received: from mail-pf1-f200.google.com ([209.85.210.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jECpM-0003P7-ER
 for intel-wired-lan@lists.osuosl.org; Tue, 17 Mar 2020 14:04:16 +0000
Received: by mail-pf1-f200.google.com with SMTP id n28so15460370pfq.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 07:04:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=S1zrSo5pUHiVOlqOKDSodqV+gbdZ1cU1bry3wwXLJnk=;
 b=LA/ZxaSrAJRPANwb5yd/D2ouRkgTZO8tM1XWl6SUg/Q8DW/lFT8m1/Hehd5V2jnVPo
 rE0kUf2xMF39rGZ/V9/bc6pj+ptoW4adAuIH1UUr9B81zIg4GdwKX5QluK79plz+B9XG
 T4pmPzbtrpEY3wMcjW4rZJG42m6BlY0Ckl9USGX2xJAIK3fqbqXmm85Eui+YiNb+l5PB
 an/G+9eUeo899R+zsVkz4/GAVBJaXFLwlul85XiMZUIfWgzoGtobA5xfHtoZ9iEwmiQb
 Oh0XCq3ARNPrcQu8Y24C28dHJs5/uvrFOHWZM5XDC8mDyj6Tqq/IgLuw2olWMbAZd51J
 OmAQ==
X-Gm-Message-State: ANhLgQ2C2Rvl4eDZJjjeXdH8ON402F42qbQYnYOz5cQgzHiGjaFq55kr
 zAEwl8mMXEpys6Wiwtvtu7mNVBDbp4HBI6mPcb5oXqia7n8Wqe1/VU+LGSnR+UMtoTv+B9rI3kl
 IPRZ35uL624MKSBac7rQUtfNsDkrzfW1vFsJd2FTpimWdyk8=
X-Received: by 2002:a17:902:507:: with SMTP id 7mr4568982plf.42.1584453855051; 
 Tue, 17 Mar 2020 07:04:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv3EUutnUH/tw89pDEfDo7M3gFqpJWQ+2QwXEKLOj+VeKlhqo7lh0gd+UJC20D2ULvpviY/jQ==
X-Received: by 2002:a17:902:507:: with SMTP id 7mr4568958plf.42.1584453854708; 
 Tue, 17 Mar 2020 07:04:14 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id c83sm3432381pfb.44.2020.03.17.07.04.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Mar 2020 07:04:14 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <8c0032bd-15be-734b-1b52-dedba72a8da3@intel.com>
Date: Tue, 17 Mar 2020 22:04:11 +0800
Message-Id: <897C8B9E-839A-4FC1-9411-B3CB141890BC@canonical.com>
References: <0A7D1E37-88A4-4E5A-8522-B80A8AE679EE@canonical.com>
 <8c0032bd-15be-734b-1b52-dedba72a8da3@intel.com>
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
Cc: Jason Yen <jason.yen@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Anthony Wong <anthony.wong@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On Mar 17, 2020, at 21:56, Neftin, Sasha <sasha.neftin@intel.com> wrote:
> 
> On 3/17/2020 15:34, Kai-Heng Feng wrote:
>> Hi,
>> Users reported that X1 Carbon 7th can only suspend once due of "e1000e 0000:00:1f.6 enp0s31f6: Hardware Error" [1] [2].
>> I managed to get one at hand and I can confirm the issue is 100% reproducible.
>> The error occurs at the first e1e_rphy() in e1000_copper_link_setup_82577() [3].
>> Reverting "e1000e: Add support for S0ix" makes suspend work again.
>> I also tried commit e1738282f6c6 "e1000e: fix S0ix flows for cable connected case" however the issue persists.
>> Kai-Heng
>> [1] https://bugs.launchpad.net/bugs/1865570
>> [2] https://bugs.launchpad.net/bugs/1866170
>> [3] https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/tree/drivers/net/ethernet/intel/e1000e/phy.c?h=dev-queue&id=e1738282f6c6ad0ec56a15c4d5a3b657d90e4435#n630
> please, check of ME enabled on this system. try disable ME and re-run

I disabled "Intel AMT", issue is still reproducible.

Kai-Heng
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
