Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E318A63ADC2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:32:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0625B40600;
	Mon, 28 Nov 2022 16:32:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0625B40600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653125;
	bh=yfwT4UgCvaGPKcdW57/luRpq1Dtm+paSD4kcb/b/UfI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A4RZiHcl0pdmIojNvvDJJYDG8NYG+WJKUqEm5m81QF6WbwNjG3Im12JXD4xXgC6fL
	 IPJlzuydcay+S3vtKUbc9Vnin+uNEYREzXOn2UCkAH/a0gNKQvcrjjnRMbAYyIMeZJ
	 a4FGPEkZOgDLdBu57ZjgBaen2LESXzQE1uRsPm6TlH4tMZ1g8ggqXkL/gUv1hEDAac
	 6BFCPEytLgO9yLoah6UFWgcfuNtoBnhGfCv6cn8ETS7HRoVxb06kNungkFuriydhGk
	 WasxZ08Akjk/pbYqI6e6eW6/T4HSB47jdkDg/55Ll03lHUDqemww87IEwpHCrD7kmc
	 twAOEe/BxI4ZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SMKewRABjyt6; Mon, 28 Nov 2022 16:32:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFE9F400DB;
	Mon, 28 Nov 2022 16:32:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFE9F400DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB0491BF842
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Nov 2022 06:20:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D191E610C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Nov 2022 06:20:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D191E610C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VkdD8MJHKLBr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Nov 2022 06:20:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7368860701
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7368860701
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Nov 2022 06:20:37 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-3b10392c064so7108637b3.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 22:20:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ply/VD5JoR0RS6w50JLEaFl+zQ721rBYSv/OPaNqRQU=;
 b=sJ10qkI9OsS4yZg3RC+7go9gYt6DppwxzKlIJbKx1ttbPZI16w9tSl8UtcMWg4VVIt
 uN+Pn9LjHcXvISRXcm+PJdlFGwyXmFr2bO/gzIDuCGA+Ux6FIF13sammdeAcOImXoEYi
 1oJTee9NNuOQ01yiqlym1LGT3qB0Hd0RjnUSwlV1/fj0kzRvq+ipVy1QVkLaxRlBlQNc
 AggnEbfI2lvzCFCSxGKXf3FSoYHeadUkA4oiXTXs/cONu5feVAx0UJpSorx7PRXgnWkl
 KS7NNsVqw5NPCOlX24mLUKTrRrgF+I+xCR3NizWiekqFa4sJYj86r3iwMPKGHleKLaFe
 PL7Q==
X-Gm-Message-State: ANoB5plFGOs8pkYFAvLOu8vzNZ2bCU9ltTcbWEIAq81B04sq1BDi5Eg2
 lVoZxuHujWkO7Q9LbIolZgOwsNty/g5buhiyOuQ=
X-Google-Smtp-Source: AA0mqf4dIyqsRb/y7hYbuA9J5d7aaerIx0TPZr/udZlmKP1eiyQO236bcaNXiXz2pZ3q3izZt0iIlCMmSGe8Qv7sF4U=
X-Received: by 2002:a81:4789:0:b0:39a:adfe:bf5c with SMTP id
 u131-20020a814789000000b0039aadfebf5cmr12164072ywa.403.1669270835954; Wed, 23
 Nov 2022 22:20:35 -0800 (PST)
MIME-Version: 1.0
References: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
 <20221031170535.77be0eb5@kernel.org>
 <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
 <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
 <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
 <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
 <CAPAtJa_hbFbVXQbiNnb_byLqtZ-Dy_EBcvTFH9GyPqt__dFmLQ@mail.gmail.com>
 <3b5abe94-c9bc-3b7b-afae-d70ab6fe44c1@intel.com>
In-Reply-To: <3b5abe94-c9bc-3b7b-afae-d70ab6fe44c1@intel.com>
From: Ivan Smirnov <isgsmirnov@gmail.com>
Date: Wed, 23 Nov 2022 23:20:09 -0700
Message-ID: <CAPAtJa-xMj1NJNP6BjE-WCysc29JOfutLYOTdcC4rZj89ur2uw@mail.gmail.com>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ply/VD5JoR0RS6w50JLEaFl+zQ721rBYSv/OPaNqRQU=;
 b=lSFep9EL6YiTkd/Imz5oq9Fl2KOz8Egyzx+HHX8UA5+JvYSX48GgAzQXxb/rpnoxbC
 FuP/HCQX7XDFCwmclQWSbPGUljR/Zt3gYJSv+cMDYUyTLyfnBYABkOhvF85PcHRiSfOH
 QykXzGDPpoBi8KWQDVuroYNbpXxxVWQ8IcygO12GVPkJ2hBIKfHQ23N4VRPPOZvoFHFC
 YJL+dU6+DBAqUqYP3/eXd4ZTvVGllpJbqCb+T1AH4CyiPLbpOWni0EdGEfVLKGCVvF8W
 BiNnER9C8nErXVhWMbrWPJJjXN3VtHLl88AjBxiF5vqq+rLTw8ra14hrZ2BFEyCYZ8nO
 WvQg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=lSFep9EL
Subject: Re: [Intel-wired-lan] igc kernel module crashes on new hardware
 (Intel Ethernet I225-V)
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org, "Avivi,
 Amir" <amir.avivi@intel.com>
Content-Type: multipart/mixed; boundary="===============3998113619562061549=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3998113619562061549==
Content-Type: multipart/alternative; boundary="00000000000036083c05ee316762"

--00000000000036083c05ee316762
Content-Type: text/plain; charset="UTF-8"

Hi Dima,

Thank you for the measured response. Do I have your permission to post it
on the reddit thread to inform other users? We can all reach out to ASUS
and hopefully get this escalated past the usual tier-1 support tarpit.

Thanks,
- Ivan
--
Ivan Smirnov
https://ivans.io/ | https://blog.ivansmirnov.name/
https://www.linkedin.com/in/ismirnov |
*https://ivansmirnov.name/ <https://ivansmirnov.name/>*
*https://github.com/issmirnov <https://ivansmirnov.name/>*


On Wed, Nov 23, 2022 at 4:47 AM Ruinskiy, Dima <dima.ruinskiy@intel.com>
wrote:

> I have looked at this thread and the other threads referenced from it.
>
> I see multiple users reporting issues with the the I225 and its Linux
> driver, on a specific series of ASUS motherboards (X670), and at least
> one report of a similar issue with a different ASUS board (Z690).
>
> The problem looks like the device 'disappears' from the bus, and becomes
> inaccessible to the driver. If it happens early - the driver will not
> load, if it happens later - it may fail with sporadic access errors.
>
> There are some reports of partially working workarounds (i.e., some
> users claim it solved their issues, while for others it did not help) -
> that have to do with tweaking various PCIe power management settings. I
> can see the connection here, because PCIe power management is not
> trivial, and depends on a combination of hardware, firmware, BIOS, OS
> and driver factors. When there is a problem somewhere - it can manifest
> exactly like what has been reported here.
>
> The user will see that the driver is crashing, but that does not
> necessarily mean that the problem is in the driver. It may be a bug in
> any other component, or an interoperability issue. A fix/workaround may
> also be implemented in any of the involved modules, depending on the
> root cause and the complexity.
>
> We, the igc driver maintainers, are unable to offer any software patch
> for the problem at this point, because the issue has not been
> root-caused, as far as I know. We have not seen this problem during our
> in-house testing, and since it has been reported, have not been able to
> reproduce it on any of our test setups.
>
> The I225 network device is a "LAN on motherboard" solution. While the
> chip, the firmware and the driver are provided by Intel, the motherboard
> vendor is the one that controls the layout, the electrical
> interconnects, the BIOS, and the specific FW version that is flashed to
> the chip.
>
> The fact that many such reports are coming recently from specific ASUS
> boards, and not from other vendors with I225 solutions, would lead me to
> first check in ASUS's direction. ASUS may be able to address this issue
> with a range of solutions - hardware replacement, BIOS update, I225
> firmware rollout, or instructions on how to tweak the settings -
> depending on the cause they will determine. The more reports they get
> from their customers, the more likely they will figure it out.
>
> For instance - a recent report from adam.lamarz on the Bugzilla thread
> https://bugzilla.kernel.org/show_bug.cgi?id=216652#c15
> indicates that there is some hope the issue can be alleviated with a
> BIOS update and a tweak to the kernel settings.
>
> Is it _possible_ that in the end there will be some patch in the igc
> driver for this issue, together or independently from other components?
> Yes.
>
> Can we offer such a patch based on what we know so far? No, because we
> have not been able to reproduce the issue in-house, and have also not
> received any communication about it from ASUS (who, I expect, have their
> own validation and test procedures, before they roll-out their hardware
> to the end-users).
>
> I understand this is not the definitive answer to the problem that we
> may all want to see, but this is what I have at the moment.
>
> --Dima
>
> On 17/11/2022 0:23, Ivan Smirnov wrote:
> > Hi folks,
> >
> > Is there any update for the community? More and more folks are asking.
> > We are all techies and happy to help debug.
> >
> > Thank you kindly,
> > - Ivan
> >
> > On Thu, Nov 10, 2022 at 03:44 Ivan Smirnov <isgsmirnov@gmail.com
> > <mailto:isgsmirnov@gmail.com>> wrote:
> >
> >     Some more data from another user. Do you guys have any preliminary
> >     investigation you could share back with the community?
> >
> >     Same issue, been struggling with it for a last month or so: both
> >     with Ubuntu and Arch Linux. I have a dual-boot system with Windows
> >     11, and did not notice any issues with ethernet or wifi on Windows.
> >     So this indeed seems like a firmware issue, particularly in igc. Not
> >     the adapter itself
> >
> >     Running on Arch Linux kernel 6.0.7, same motherboard as in your post
> >
> >     https://gist.github.com/LilDojd/2f030ecc5c5b6f8c3285725adfb8c456
> >     <https://gist.github.com/LilDojd/2f030ecc5c5b6f8c3285725adfb8c456>
> >
> >
> >
> >
> >     On Thu, Nov 3, 2022 at 05:53 Ivan Smirnov <isgsmirnov@gmail.com
> >     <mailto:isgsmirnov@gmail.com>> wrote:
> >
> >         Here is the gist from one reddit user:
> >         https://gist.github.com/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335
> >         <
> https://gist.github.com/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335>
> >
> >         Here are my gists (crash free for now):
> >
> https://gist.github.com/issmirnov/b9ac74d232e1865ae849a3e64dce2afe
> >         <
> https://gist.github.com/issmirnov/b9ac74d232e1865ae849a3e64dce2afe>
> >
> >         --
> >         Ivan Smirnov
> >         https://ivans.io/ <https://ivans.io/> |
> >         https://blog.ivansmirnov.name/ <https://blog.ivansmirnov.name/>
> >         https://www.linkedin.com/in/ismirnov
> >         <https://www.linkedin.com/in/ismirnov> | _
> https://ivansmirnov.name/
> >         <https://ivansmirnov.name/>_
> >         _https://github.com/issmirnov <https://ivansmirnov.name/>_
> >
> >
> >         On Wed, Nov 2, 2022 at 10:54 AM Ivan Smirnov
> >         <isgsmirnov@gmail.com <mailto:isgsmirnov@gmail.com>> wrote:
> >
> >             Hi folks,
> >
> >             As usual, the computers know when the experts join the
> >             chat... I haven't been able to reproduce the issue for the
> >             past few days. Yay for stability, boo for debugging.
> >
> >             I posted on the reddit thread
> >             <
> https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/
> > asking
> >             other users to post their output. I'll do my best to keep an
> >             eye out for this issue and get you the logs ASAP once I
> >             repro the crash.
> >
> >             Thank you for your responsiveness - will keep you posted!
> >
> >             Best,
> >             - Ivan
> >             --
> >             Ivan Smirnov
> >             https://ivans.io/ <https://ivans.io/> |
> >             https://blog.ivansmirnov.name/ <
> https://blog.ivansmirnov.name/>
> >             https://www.linkedin.com/in/ismirnov
> >             <https://www.linkedin.com/in/ismirnov> |
> >             _https://ivansmirnov.name/
> >             <https://ivansmirnov.name/>_
> >             _https://github.com/issmirnov <https://ivansmirnov.name/>_
> >
> >
> >             On Tue, Nov 1, 2022 at 10:21 AM Neftin, Sasha
> >             <sasha.neftin@intel.com <mailto:sasha.neftin@intel.com>>
> wrote:
> >
> >                 On 11/1/2022 02:05, Jakub Kicinski wrote:
> >                  > CC: intel-wired
> >                  >
> >                  > On Sun, 30 Oct 2022 14:44:57 -0600 Ivan Smirnov wrote:
> >                  >> Hi folks,
> >                  >>
> >                  >> I found your commits on the linux kernel igc
> >                  >>
> >                 <
> https://github.com/torvalds/linux/commits/master/drivers/net/ethernet/intel/igc
> >                 <
> https://github.com/torvalds/linux/commits/master/drivers/net/ethernet/intel/igc
> >>
> >                  >> folder. There appears to be a bug with the igc
> >                 kernel module on Intel
> >                  >> I225-V chips.
> >                  >>
> >                  >> Specifically, the probe fails at startup with error:
> >                 "igc: probe of
> >                  >> 0000:06:00.0 failed with error -13". When it does
> >                 load, it crashes after a
> >                  >> few hours with error "igc failed to read reg 0xc030".
> >                  >>
> >                 Could you provide dmesg -w -T | grep -i igc on the boot
> >                 stage? ethtool -i?
> >                 I've cc'd our PAE expert Amir who also could try to look
> >                 at this problem.
> >
> >                  >> There are several affected users posting on
> >                  >>
> >
> https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/
> >                 <
> https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/
> >
> >                  >> with more details.
> >                  >>
> >                  >> Could I help you debug this? This problem has been
> >                 reproduced on the
> >                  >> following setups:
> >                  >>
> >                  >> 1. Asus TUF-GAMING-Z690-PLUS-WIFI-D4
> >                  >>
> >                 <
> https://www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-z690-plus-wifi-d4/
> >                 <
> https://www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-z690-plus-wifi-d4/
> >>
> >                  >> on
> >                  >> Arch Linux, kernel 6.0.2-arch1-1
> >                  >> 2. rog strix x670e-e gaming wifi
> >                  >>
> >                 <
> https://rog.asus.com/us/motherboards/rog-strix/rog-strix-x670e-e-gaming-wifi-model/
> >                 <
> https://rog.asus.com/us/motherboards/rog-strix/rog-strix-x670e-e-gaming-wifi-model/
> >>
> >                  >> on
> >                  >> Proxmox 7, as well as Ubuntu Linux (kernel 5.19, I
> >                 believe)
> >                  >>
> >                  >> I'm happy to load any debug modules or provide
> >                 additional logs as per
> >                  >> your request.
> >                  >>
> >                  >> Thank you
> >                  >>
> >                  >>
> >                  >>
> >                  >>
> >                  >> --
> >                  >> Ivan Smirnov
> >                  >> https://ivans.io/ <https://ivans.io/> |
> >                 https://blog.ivansmirnov.name/
> >                 <https://blog.ivansmirnov.name/>
> >                  >> https://www.linkedin.com/in/ismirnov
> >                 <https://www.linkedin.com/in/ismirnov> |
> >                  >> *https://ivansmirnov.name/
> >                 <https://ivansmirnov.name/> <https://ivansmirnov.name/
> >                 <https://ivansmirnov.name/>>*
> >                  >> *https://github.com/issmirnov
> >                 <https://github.com/issmirnov>
> >                 <https://ivansmirnov.name/ <https://ivansmirnov.name/>>*
> >                  >
> >
> >     --
> >     --
> >     Ivan Smirnov
> >     https://ivans.io/ <https://ivans.io/> |
> >     https://blog.ivansmirnov.name/ <https://blog.ivansmirnov.name/>
> >     https://www.linkedin.com/in/ismirnov
> >     <https://www.linkedin.com/in/ismirnov> | _https://ivansmirnov.name/
> >     <https://ivansmirnov.name/>_
> >     _https://github.com/issmirnov <https://ivansmirnov.name/>_
> >
> > --
> > --
> > Ivan Smirnov
> > https://ivans.io/ <https://ivans.io/> | https://blog.ivansmirnov.name/
> > <https://blog.ivansmirnov.name/>
> > https://www.linkedin.com/in/ismirnov
> > <https://www.linkedin.com/in/ismirnov> | _https://ivansmirnov.name/
> > <https://ivansmirnov.name/>_
> > _https://github.com/issmirnov <https://ivansmirnov.name/>_
>
>

--00000000000036083c05ee316762
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dima,<div><br></div><div>Thank you for the measured res=
ponse. Do I have your permission to post it on the reddit thread to inform =
other users? We can all reach out to ASUS and hopefully get this escalated =
past the usual tier-1 support tarpit.</div><div><br></div><div>Thanks,</div=
><div>- Ivan<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><font color=3D"#666666=
">--</font></div><div><font color=3D"#666666">Ivan Smirnov</font></div><div=
><font color=3D"#666666"><a href=3D"https://ivans.io/" target=3D"_blank">ht=
tps://ivans.io/</a>=C2=A0|=C2=A0<a href=3D"https://blog.ivansmirnov.name/" =
target=3D"_blank">https://blog.ivansmirnov.name/</a><br></font></div><div><=
font color=3D"#666666"><a href=3D"https://www.linkedin.com/in/ismirnov" tar=
get=3D"_blank">https://www.linkedin.com/in/ismirnov</a>=C2=A0</font><span s=
tyle=3D"color:rgb(102,102,102)">|=C2=A0</span><font color=3D"#0000ee"><u><a=
 href=3D"https://ivansmirnov.name/" target=3D"_blank">https://ivansmirnov.n=
ame/<br></a></u></font></div><div><font color=3D"#0000ee"><u><a href=3D"htt=
ps://ivansmirnov.name/" target=3D"_blank">https://github.com/issmirnov</a><=
/u></font></div></div></div></div></div></div></div></div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed,=
 Nov 23, 2022 at 4:47 AM Ruinskiy, Dima &lt;<a href=3D"mailto:dima.ruinskiy=
@intel.com">dima.ruinskiy@intel.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">I have looked at this thread and the oth=
er threads referenced from it.<br>
<br>
I see multiple users reporting issues with the the I225 and its Linux <br>
driver, on a specific series of ASUS motherboards (X670), and at least <br>
one report of a similar issue with a different ASUS board (Z690).<br>
<br>
The problem looks like the device &#39;disappears&#39; from the bus, and be=
comes <br>
inaccessible to the driver. If it happens early - the driver will not <br>
load, if it happens later - it may fail with sporadic access errors.<br>
<br>
There are some reports of partially working workarounds (i.e., some <br>
users claim it solved their issues, while for others it did not help) - <br=
>
that have to do with tweaking various PCIe power management settings. I <br=
>
can see the connection here, because PCIe power management is not <br>
trivial, and depends on a combination of hardware, firmware, BIOS, OS <br>
and driver factors. When there is a problem somewhere - it can manifest <br=
>
exactly like what has been reported here.<br>
<br>
The user will see that the driver is crashing, but that does not <br>
necessarily mean that the problem is in the driver. It may be a bug in <br>
any other component, or an interoperability issue. A fix/workaround may <br=
>
also be implemented in any of the involved modules, depending on the <br>
root cause and the complexity.<br>
<br>
We, the igc driver maintainers, are unable to offer any software patch <br>
for the problem at this point, because the issue has not been <br>
root-caused, as far as I know. We have not seen this problem during our <br=
>
in-house testing, and since it has been reported, have not been able to <br=
>
reproduce it on any of our test setups.<br>
<br>
The I225 network device is a &quot;LAN on motherboard&quot; solution. While=
 the <br>
chip, the firmware and the driver are provided by Intel, the motherboard <b=
r>
vendor is the one that controls the layout, the electrical <br>
interconnects, the BIOS, and the specific FW version that is flashed to <br=
>
the chip.<br>
<br>
The fact that many such reports are coming recently from specific ASUS <br>
boards, and not from other vendors with I225 solutions, would lead me to <b=
r>
first check in ASUS&#39;s direction. ASUS may be able to address this issue=
 <br>
with a range of solutions - hardware replacement, BIOS update, I225 <br>
firmware rollout, or instructions on how to tweak the settings - <br>
depending on the cause they will determine. The more reports they get <br>
from their customers, the more likely they will figure it out.<br>
<br>
For instance - a recent report from adam.lamarz on the Bugzilla thread <br>
<a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D216652#c15" rel=3D=
"noreferrer" target=3D"_blank">https://bugzilla.kernel.org/show_bug.cgi?id=
=3D216652#c15</a><br>
indicates that there is some hope the issue can be alleviated with a <br>
BIOS update and a tweak to the kernel settings.<br>
<br>
Is it _possible_ that in the end there will be some patch in the igc <br>
driver for this issue, together or independently from other components? Yes=
.<br>
<br>
Can we offer such a patch based on what we know so far? No, because we <br>
have not been able to reproduce the issue in-house, and have also not <br>
received any communication about it from ASUS (who, I expect, have their <b=
r>
own validation and test procedures, before they roll-out their hardware <br=
>
to the end-users).<br>
<br>
I understand this is not the definitive answer to the problem that we <br>
may all want to see, but this is what I have at the moment.<br>
<br>
--Dima<br>
<br>
On 17/11/2022 0:23, Ivan Smirnov wrote:<br>
&gt; Hi folks,<br>
&gt; <br>
&gt; Is there any update for the community? More and more folks are asking.=
 <br>
&gt; We are all techies and happy to help debug.<br>
&gt; <br>
&gt; Thank you kindly,<br>
&gt; - Ivan<br>
&gt; <br>
&gt; On Thu, Nov 10, 2022 at 03:44 Ivan Smirnov &lt;<a href=3D"mailto:isgsm=
irnov@gmail.com" target=3D"_blank">isgsmirnov@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:isgsmirnov@gmail.com" target=3D"_blank">i=
sgsmirnov@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Some more data from another user. Do you guys have =
any preliminary<br>
&gt;=C2=A0 =C2=A0 =C2=A0investigation you could share back with the communi=
ty?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Same issue, been struggling with it for a last mont=
h or so: both<br>
&gt;=C2=A0 =C2=A0 =C2=A0with Ubuntu and Arch Linux. I have a dual-boot syst=
em with Windows<br>
&gt;=C2=A0 =C2=A0 =C2=A011, and did not notice any issues with ethernet or =
wifi on Windows.<br>
&gt;=C2=A0 =C2=A0 =C2=A0So this indeed seems like a firmware issue, particu=
larly in igc. Not<br>
&gt;=C2=A0 =C2=A0 =C2=A0the adapter itself<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Running on Arch Linux kernel 6.0.7, same motherboar=
d as in your post<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://gist.github.com/LilDojd/2f030ecc=
5c5b6f8c3285725adfb8c456" rel=3D"noreferrer" target=3D"_blank">https://gist=
.github.com/LilDojd/2f030ecc5c5b6f8c3285725adfb8c456</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://gist.github.com/LilDojd/2f03=
0ecc5c5b6f8c3285725adfb8c456" rel=3D"noreferrer" target=3D"_blank">https://=
gist.github.com/LilDojd/2f030ecc5c5b6f8c3285725adfb8c456</a>&gt;<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Thu, Nov 3, 2022 at 05:53 Ivan Smirnov &lt;<a hr=
ef=3D"mailto:isgsmirnov@gmail.com" target=3D"_blank">isgsmirnov@gmail.com</=
a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:isgsmirnov@gmail.com" =
target=3D"_blank">isgsmirnov@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Here is the gist from one reddit user=
:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://gist.github.com/Da=
rkArc/50ffca5fc343e2ff8166bc81d3ff8335" rel=3D"noreferrer" target=3D"_blank=
">https://gist.github.com/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://gist.github.co=
m/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335" rel=3D"noreferrer" target=3D"_b=
lank">https://gist.github.com/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335</a>&=
gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Here are my gists (crash free for now=
):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://gist.github.com/is=
smirnov/b9ac74d232e1865ae849a3e64dce2afe" rel=3D"noreferrer" target=3D"_bla=
nk">https://gist.github.com/issmirnov/b9ac74d232e1865ae849a3e64dce2afe</a><=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://gist.github.co=
m/issmirnov/b9ac74d232e1865ae849a3e64dce2afe" rel=3D"noreferrer" target=3D"=
_blank">https://gist.github.com/issmirnov/b9ac74d232e1865ae849a3e64dce2afe<=
/a>&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ivan Smirnov<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://ivans.io/" rel=3D"=
noreferrer" target=3D"_blank">https://ivans.io/</a> &lt;<a href=3D"https://=
ivans.io/" rel=3D"noreferrer" target=3D"_blank">https://ivans.io/</a>&gt;=
=C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://blog.ivansmirnov.n=
ame/" rel=3D"noreferrer" target=3D"_blank">https://blog.ivansmirnov.name/</=
a> &lt;<a href=3D"https://blog.ivansmirnov.name/" rel=3D"noreferrer" target=
=3D"_blank">https://blog.ivansmirnov.name/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://www.linkedin.com/i=
n/ismirnov" rel=3D"noreferrer" target=3D"_blank">https://www.linkedin.com/i=
n/ismirnov</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://www.linkedin.c=
om/in/ismirnov" rel=3D"noreferrer" target=3D"_blank">https://www.linkedin.c=
om/in/ismirnov</a>&gt; | _<a href=3D"https://ivansmirnov.name/" rel=3D"nore=
ferrer" target=3D"_blank">https://ivansmirnov.name/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://ivansmirnov.na=
me/" rel=3D"noreferrer" target=3D"_blank">https://ivansmirnov.name/</a>&gt;=
_<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_<a href=3D"https://github.com/issmir=
nov" rel=3D"noreferrer" target=3D"_blank">https://github.com/issmirnov</a> =
&lt;<a href=3D"https://ivansmirnov.name/" rel=3D"noreferrer" target=3D"_bla=
nk">https://ivansmirnov.name/</a>&gt;_<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Wed, Nov 2, 2022 at 10:54 AM Ivan =
Smirnov<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:isgsmirnov@gmai=
l.com" target=3D"_blank">isgsmirnov@gmail.com</a> &lt;mailto:<a href=3D"mai=
lto:isgsmirnov@gmail.com" target=3D"_blank">isgsmirnov@gmail.com</a>&gt;&gt=
; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Hi folks,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0As usual, the computers=
 know when the experts join the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0chat... I haven&#39;t b=
een able to reproduce the issue for the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0past few days. Yay for =
stability, boo for debugging.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I posted on the reddit =
thread<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://=
www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_contr=
oller_i225v_igc/" rel=3D"noreferrer" target=3D"_blank">https://www.reddit.c=
om/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_=
igc/</a>&gt;=C2=A0asking<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0other users to post the=
ir output. I&#39;ll do my best to keep an<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0eye out for this issue =
and get you the logs ASAP once I<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0repro the crash.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Thank you for your resp=
onsiveness - will keep you=C2=A0posted!<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Best,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- Ivan<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ivan Smirnov<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://ivan=
s.io/" rel=3D"noreferrer" target=3D"_blank">https://ivans.io/</a> &lt;<a hr=
ef=3D"https://ivans.io/" rel=3D"noreferrer" target=3D"_blank">https://ivans=
.io/</a>&gt;=C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://blog=
.ivansmirnov.name/" rel=3D"noreferrer" target=3D"_blank">https://blog.ivans=
mirnov.name/</a> &lt;<a href=3D"https://blog.ivansmirnov.name/" rel=3D"nore=
ferrer" target=3D"_blank">https://blog.ivansmirnov.name/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://www.=
linkedin.com/in/ismirnov" rel=3D"noreferrer" target=3D"_blank">https://www.=
linkedin.com/in/ismirnov</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://=
www.linkedin.com/in/ismirnov" rel=3D"noreferrer" target=3D"_blank">https://=
www.linkedin.com/in/ismirnov</a>&gt; |<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_<a href=3D"https://iva=
nsmirnov.name/" rel=3D"noreferrer" target=3D"_blank">https://ivansmirnov.na=
me/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://=
ivansmirnov.name/" rel=3D"noreferrer" target=3D"_blank">https://ivansmirnov=
.name/</a>&gt;_<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_<a href=3D"https://git=
hub.com/issmirnov" rel=3D"noreferrer" target=3D"_blank">https://github.com/=
issmirnov</a> &lt;<a href=3D"https://ivansmirnov.name/" rel=3D"noreferrer" =
target=3D"_blank">https://ivansmirnov.name/</a>&gt;_<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Tue, Nov 1, 2022 at =
10:21 AM Neftin, Sasha<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:s=
asha.neftin@intel.com" target=3D"_blank">sasha.neftin@intel.com</a> &lt;mai=
lto:<a href=3D"mailto:sasha.neftin@intel.com" target=3D"_blank">sasha.nefti=
n@intel.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On 11/1/2=
022 02:05, Jakub Kicinski wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; CC:=
 intel-wired<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; On =
Sun, 30 Oct 2022 14:44:57 -0600 Ivan Smirnov wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 Hi folks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 I found your commits on the linux kernel igc<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://github.com/torvalds/linux/commits/master/drivers/net/ethernet=
/intel/igc" rel=3D"noreferrer" target=3D"_blank">https://github.com/torvald=
s/linux/commits/master/drivers/net/ethernet/intel/igc</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://github.com/torvalds/linux/commits/master/drivers/net/ethernet=
/intel/igc" rel=3D"noreferrer" target=3D"_blank">https://github.com/torvald=
s/linux/commits/master/drivers/net/ethernet/intel/igc</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 folder. There appears to be a bug with the igc<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kernel mo=
dule on Intel<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 I225-V chips.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 Specifically, the probe fails at startup with error:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;igc=
: probe of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 0000:06:00.0 failed with error -13&quot;. When it does<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0load, it =
crashes after a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 few hours with error &quot;igc failed to read reg 0xc030&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Could you=
 provide dmesg -w -T | grep -i igc on the boot<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0stage? et=
htool -i?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I&#39;ve =
cc&#39;d our PAE expert Amir who also could try to look<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0at this p=
roblem.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 There are several affected users posting on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=
=3D"https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_et=
hernet_controller_i225v_igc/" rel=3D"noreferrer" target=3D"_blank">https://=
www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_contr=
oller_i225v_igc/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_=
ethernet_controller_i225v_igc/" rel=3D"noreferrer" target=3D"_blank">https:=
//www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_con=
troller_i225v_igc/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 with more details.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 Could I help you debug this? This problem has been<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reproduce=
d on the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 following setups:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 1. Asus TUF-GAMING-Z690-PLUS-WIFI-D4<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://www.asus.com/motherboards-components/motherboards/tuf-gaming/=
tuf-gaming-z690-plus-wifi-d4/" rel=3D"noreferrer" target=3D"_blank">https:/=
/www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-z6=
90-plus-wifi-d4/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://www.asus.com/motherboards-components/motherboards/tuf-gaming/=
tuf-gaming-z690-plus-wifi-d4/" rel=3D"noreferrer" target=3D"_blank">https:/=
/www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-z6=
90-plus-wifi-d4/</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 Arch Linux, kernel 6.0.2-arch1-1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 2. rog strix x670e-e gaming wifi<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://rog.asus.com/us/motherboards/rog-strix/rog-strix-x670e-e-gami=
ng-wifi-model/" rel=3D"noreferrer" target=3D"_blank">https://rog.asus.com/u=
s/motherboards/rog-strix/rog-strix-x670e-e-gaming-wifi-model/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://rog.asus.com/us/motherboards/rog-strix/rog-strix-x670e-e-gami=
ng-wifi-model/" rel=3D"noreferrer" target=3D"_blank">https://rog.asus.com/u=
s/motherboards/rog-strix/rog-strix-x670e-e-gaming-wifi-model/</a>&gt;&gt;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 Proxmox 7, as well as Ubuntu Linux (kernel 5.19, I<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0believe)<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 I&#39;m happy to load any debug modules or provide<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0additiona=
l logs as per<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 your request.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 Thank you<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 Ivan Smirnov<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 <a href=3D"https://ivans.io/" rel=3D"noreferrer" target=3D"_blank">https:/=
/ivans.io/</a> &lt;<a href=3D"https://ivans.io/" rel=3D"noreferrer" target=
=3D"_blank">https://ivans.io/</a>&gt; |<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=
=3D"https://blog.ivansmirnov.name/" rel=3D"noreferrer" target=3D"_blank">ht=
tps://blog.ivansmirnov.name/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://blog.ivansmirnov.name/" rel=3D"noreferrer" target=3D"_blank">=
https://blog.ivansmirnov.name/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 <a href=3D"https://www.linkedin.com/in/ismirnov" rel=3D"noreferrer" target=
=3D"_blank">https://www.linkedin.com/in/ismirnov</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://www.linkedin.com/in/ismirnov" rel=3D"noreferrer" target=3D"_b=
lank">https://www.linkedin.com/in/ismirnov</a>&gt; |<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 *<a href=3D"https://ivansmirnov.name/" rel=3D"noreferrer" target=3D"_blank=
">https://ivansmirnov.name/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://ivansmirnov.name/" rel=3D"noreferrer" target=3D"_blank">https=
://ivansmirnov.name/</a>&gt; &lt;<a href=3D"https://ivansmirnov.name/" rel=
=3D"noreferrer" target=3D"_blank">https://ivansmirnov.name/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://ivansmirnov.name/" rel=3D"noreferrer" target=3D"_blank">https=
://ivansmirnov.name/</a>&gt;&gt;*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;=
 *<a href=3D"https://github.com/issmirnov" rel=3D"noreferrer" target=3D"_bl=
ank">https://github.com/issmirnov</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://github.com/issmirnov" rel=3D"noreferrer" target=3D"_blank">ht=
tps://github.com/issmirnov</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a hr=
ef=3D"https://ivansmirnov.name/" rel=3D"noreferrer" target=3D"_blank">https=
://ivansmirnov.name/</a> &lt;<a href=3D"https://ivansmirnov.name/" rel=3D"n=
oreferrer" target=3D"_blank">https://ivansmirnov.name/</a>&gt;&gt;*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0Ivan Smirnov<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://ivans.io/" rel=3D"noreferrer" ta=
rget=3D"_blank">https://ivans.io/</a> &lt;<a href=3D"https://ivans.io/" rel=
=3D"noreferrer" target=3D"_blank">https://ivans.io/</a>&gt;=C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://blog.ivansmirnov.name/" rel=3D"n=
oreferrer" target=3D"_blank">https://blog.ivansmirnov.name/</a> &lt;<a href=
=3D"https://blog.ivansmirnov.name/" rel=3D"noreferrer" target=3D"_blank">ht=
tps://blog.ivansmirnov.name/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://www.linkedin.com/in/ismirnov" re=
l=3D"noreferrer" target=3D"_blank">https://www.linkedin.com/in/ismirnov</a>=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://www.linkedin.com/in/ismirnov=
" rel=3D"noreferrer" target=3D"_blank">https://www.linkedin.com/in/ismirnov=
</a>&gt; | _<a href=3D"https://ivansmirnov.name/" rel=3D"noreferrer" target=
=3D"_blank">https://ivansmirnov.name/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://ivansmirnov.name/" rel=3D"no=
referrer" target=3D"_blank">https://ivansmirnov.name/</a>&gt;_<br>
&gt;=C2=A0 =C2=A0 =C2=A0_<a href=3D"https://github.com/issmirnov" rel=3D"no=
referrer" target=3D"_blank">https://github.com/issmirnov</a> &lt;<a href=3D=
"https://ivansmirnov.name/" rel=3D"noreferrer" target=3D"_blank">https://iv=
ansmirnov.name/</a>&gt;_<br>
&gt; <br>
&gt; -- <br>
&gt; --<br>
&gt; Ivan Smirnov<br>
&gt; <a href=3D"https://ivans.io/" rel=3D"noreferrer" target=3D"_blank">htt=
ps://ivans.io/</a> &lt;<a href=3D"https://ivans.io/" rel=3D"noreferrer" tar=
get=3D"_blank">https://ivans.io/</a>&gt;=C2=A0| <a href=3D"https://blog.iva=
nsmirnov.name/" rel=3D"noreferrer" target=3D"_blank">https://blog.ivansmirn=
ov.name/</a> <br>
&gt; &lt;<a href=3D"https://blog.ivansmirnov.name/" rel=3D"noreferrer" targ=
et=3D"_blank">https://blog.ivansmirnov.name/</a>&gt;<br>
&gt; <a href=3D"https://www.linkedin.com/in/ismirnov" rel=3D"noreferrer" ta=
rget=3D"_blank">https://www.linkedin.com/in/ismirnov</a> <br>
&gt; &lt;<a href=3D"https://www.linkedin.com/in/ismirnov" rel=3D"noreferrer=
" target=3D"_blank">https://www.linkedin.com/in/ismirnov</a>&gt; | _<a href=
=3D"https://ivansmirnov.name/" rel=3D"noreferrer" target=3D"_blank">https:/=
/ivansmirnov.name/</a><br>
&gt; &lt;<a href=3D"https://ivansmirnov.name/" rel=3D"noreferrer" target=3D=
"_blank">https://ivansmirnov.name/</a>&gt;_<br>
&gt; _<a href=3D"https://github.com/issmirnov" rel=3D"noreferrer" target=3D=
"_blank">https://github.com/issmirnov</a> &lt;<a href=3D"https://ivansmirno=
v.name/" rel=3D"noreferrer" target=3D"_blank">https://ivansmirnov.name/</a>=
&gt;_<br>
<br>
</blockquote></div>

--00000000000036083c05ee316762--


--===============3998113619562061549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3998113619562061549==--


