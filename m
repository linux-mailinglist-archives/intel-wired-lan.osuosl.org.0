Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46C5438334
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Oct 2021 12:27:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BE0B40336;
	Sat, 23 Oct 2021 10:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0wh87PWv5FJ4; Sat, 23 Oct 2021 10:27:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF4904023C;
	Sat, 23 Oct 2021 10:27:07 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14C101BF859
 for <intel-wired-lan@osuosl.org>; Sat, 23 Oct 2021 10:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 02DC9823F6
 for <intel-wired-lan@osuosl.org>; Sat, 23 Oct 2021 10:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gmx.net
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0FkOGFJxPtcO for <intel-wired-lan@osuosl.org>;
 Sat, 23 Oct 2021 10:27:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9993A823F4
 for <intel-wired-lan@osuosl.org>; Sat, 23 Oct 2021 10:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634984812;
 bh=qwOrtTYWMLa4m1dTYU4XDEb1fwdvqci49YndT6+Eu0I=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Ita/mG7afJp9/xt1Exmyk0MIowsm7RzIdHtxIREM+hIMItLhEtRaWPYUaJX3fwtgY
 aD9I4egaFVh4Ud3b2K1LE8FH3nupCjC0VNZr2C5wyQkCA+ueQO2NVa1c29IHKfuGcB
 PnPZa2Dg8ZbfZqrkk0b+6RYndBcuvs04iVNFKhu4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [91.64.35.151] ([91.64.35.151]) by web-mail.gmx.net
 (3c-app-gmx-bs13.server.lan [172.19.170.65]) (via HTTP); Sat, 23 Oct 2021
 12:26:52 +0200
MIME-Version: 1.0
Message-ID: <trinity-4996ecb4-40ec-4245-9026-02a0de74e76d-1634984812430@3c-app-gmx-bs13>
From: Robert Schlabbach <robert_s@gmx.net>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Date: Sat, 23 Oct 2021 12:26:52 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <6eff4d45-00be-2021-338f-b717a4378d65@molgen.mpg.de>
References: <trinity-58e35e17-0323-4cde-bbed-1582c3520822-1634891867291@3c-app-gmx-bap44>
 <9f4603a5-7811-c653-951b-777070f7ce54@molgen.mpg.de>
 <46f43c5a-d0a8-e743-e246-7f2c5a27e6cc@silicom-usa.com>
 <6eff4d45-00be-2021-338f-b717a4378d65@molgen.mpg.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:JPqMILgRTqTLeMnRE+O5bR77Deo4BYslRKFfj2pJexI6pB6/tHnNPs76l37yyejBrhMiu
 lyGiPj5hbrODmbZdZ/Q3k8xtr+fUp+6B0s94pdHRbfs/NriMGEJuQt1BZm4y/iTTq/II6xVwCqDt
 o68VXdpf1CfsXKtkItJJOn0FHUgsco1Z4KeYOyGH5bmUaqwtJrtdOKVBiHARrilqvDItYiawW0+X
 7ruAktktIOlVW5P2AoDw/R7EuOOW6jkfZZpCRctaJPhvx6iujn3f1VmF1M/DWfmHYd30KxPoG+n6
 QU=
X-UI-Out-Filterresults: notjunk:1;V03:K0:kBttJetGDm8=:l8GWpySoWVzMHf54QOfW/H
 ScIz00cG8lMIUKroPqLaSZhAVd7qFBU330B4+TEYgAuBHmgnlsZCGycIUkmo2ty2RUwGdXKnR
 x3iCo+246BKhE/P7dr9hx3AhugS8m/L9zCzFd5wM9ywlA7uncb1KBAhrvbwFa71AOi3d+opbl
 tsQT9WU6bex3p4e0KYii+2UJCrGOueE3fr6rZbr9G3+wKYik+R2rLCBwQJ3K1pRH4JWhlpf6q
 +mL7u8bE6/wqC1RJLwsDMcfNd2HcC/XgjrCjRBAeyQsBbf7XzuqurDZwDGZ/i4LyMvj8XcDED
 iVd0ULy94S0WEkXFfeCv4yoA1uHtEH4Y95Dk+6m2P3OwBck95fp3pAuotzBlpGxO5c3+T2TYl
 zPXgy5kGBRzArbUNXiSLrqIaP8+c7ZV/Tq73K/kCt2iRiS/HP1ZJ0U5KwggfdkeFqEETuMvFR
 DRul/AseXpDDEfQxyKGUJtXrOr6QWEQM1iLy76dgsgRzvcuXraoYHPKfbencAApZGb+gW7Fmb
 y8dg/NxV5jISFhT08vbQT4ERnyhEFF6g5+SP2es/FqC89w4pZgepfQfmBRO8LExmhuBXMVj0R
 lCkmOppgCqbfirce68rb1jkvgIoezPethYjrW7Db/0/co+srUO8WPcobv2f4LakoEsKkzdSH1
 u+xt7TkwUabS9AevaR6g+4i+xe115s+MNe+MzzBt995SwltkB82Y5eywprLw9NQAVF4PpEQGf
 20eIjq+p1SFq3bYUWLhIPyE6GqYa/O7ZqWrv5QxljCHBJltNYQG9KcjnTd1JlyPFPdU+Q/frv
 fF44rWE
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: Allow disabling NBASE-T
 suppression hack
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

"Paul Menzel" <pmenzel@molgen.mpg.de> wrote:
> Am 22.10.21 um 17:21 schrieb Stephen Douthit:
> > I'd agree with Paul that having the default behavior basically revert
> > a296d665eae1 seems cleaner.
>
> With your information breaking even more systems, the commit should be
> reverted, and the developers should take a look again.

I third that commit a296d665eae1 rightfully deserves to be reverted. There
  is just too much wrong with it:

1. Incorrect/misleading commit subject and message: The true nature of this
   patch is "Disable NBASE-T support, but allow reenabling via ethtool"

2. Incomplete: The ethtool command to control NBASE-T support was not added
   to the documentation file ixgbe.rst.

3. Collateral damage, as described by Stephen. It seems the patch was
   rushed without proper consideration, testing nor code review.

4. Incorrect approach: If Intel thinks ethtool is a viable solution to
   control NBASE-T support, the ethtool support should have been added
   WITHOUT the offending code lines which disable NBASE-T support by
   default. Instead, documentation should have been added to ixgbe.rst
   describing how users with broken network switches may disable NBASE-T
   support using ethtool.

However, I do not think using ethtool to control NBASE-T support is a
viable solution, neither for the users with broken network switches, nor
for the users with NBASE-T switches. I think a module parameter that
allows controlling NBASE-T support at boot time is the best solution,
i.e. the patch (v3) I submitted. Thus, I urge the Intel devs to reconsider
their stance on it and instead engage in a constructive discussion how to
fix this. I'm open to discussion whether the default should be enabled or
disabled.

BTW note that the official X550 product brief states:

https://www.intel.com/content/www/us/en/products/docs/network-io/ethernet/network-adapters/ethernet-x550-brief.html

> Supports NBASE-T technology  (2.5 and 5GbE over CAT5e)
>
> Autonegotiation between 1GbE, 2.5GbE, 5GbE, and 10GbE provides the
> necessary backwards compatibility required for a smooth transition and
> easy migration to 10GbE.

So IMHO this is an official feature of the device, and NOT an "option"
that Intel may deliver or not, nor "hide" from the customers by
suppressing it in the driver.

Best Regards,
-Robert Schlabbach
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
