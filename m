Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EED142AB61
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 19:59:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8107681C18;
	Tue, 12 Oct 2021 17:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QxGj4AfB8_YP; Tue, 12 Oct 2021 17:59:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F48681C11;
	Tue, 12 Oct 2021 17:59:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA6BC1BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:58:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DAB6A403FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qwMV0BFNLT_G for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 17:58:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1A8FC40196
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:58:59 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id
 g62-20020a9d2dc4000000b0054752cfbc59so404556otb.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 10:58:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c2wHi0IsvvbTH5QwojHP29Nw/ht55S854mw0G0+05o0=;
 b=1x/3+dDMnIz3hwkj6fHfpdLDDe3tp28CvhUBkqa+ckxXkyIxh84lVWtJiLnekGmBge
 FtV8Nf0368QYkrYHLIxbLu4Etq4C1vr0TxFACKgkZNiEW3YkKtnObpT6jM4PkGfgT0io
 quCmKzdrzSoKAxCAfjrYbZkW/fj6tPUBy+X1qzaFgEsv60E4NHPET9SB2TWN2/TDhqtE
 ofPPi4qpzhdTHeREUU/aqnofMN3cgQJPFvS7KJhbzHlPzz3xwsVmHZW00GyLen/56tFe
 osypiouLb7RBfMugI47nhe3YjYFkyCW5KXtAaKjEt3P/34bA/kVAZcR+sww9DpCbNePp
 AS2Q==
X-Gm-Message-State: AOAM533GdlsUMnQX8KsAFAuITt/Je332mndw0K9oTTFybd/fkxr3Tuug
 PQF/wA4TTl5e90jEO1WGMQC+At/9Hmc6SsLlHss=
X-Google-Smtp-Source: ABdhPJwkV3+7VqGccFRlX/nVgDFie+jFqR5G8Jl/Z4xr89wPEnQZO0oUkBCcsthggrRRQ4FA82xwXHIZxYklyLJUq/k=
X-Received: by 2002:a05:6830:1af0:: with SMTP id
 c16mr14382990otd.16.1634061538134; 
 Tue, 12 Oct 2021 10:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <1823864.tdWV9SEqCh@kailua> <2944777.ktpJ11cQ8Q@pinacolada>
 <c75203e9-0ef4-20bd-87a5-ad0846863886@intel.com> <2801801.e9J7NaK4W3@kailua>
 <6faf4b92-78d5-47a4-63df-cc2bab7769d0@molgen.mpg.de>
In-Reply-To: <6faf4b92-78d5-47a4-63df-cc2bab7769d0@molgen.mpg.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 12 Oct 2021 19:58:47 +0200
Message-ID: <CAJZ5v0gf0y6qDHUJOsvLFctqn8tgKeuTYn5S9rb6+T0Sj26aKw@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [EXT] Re: Intel I350 regression 5.10 -> 5.14
 ("The NVM Checksum Is Not Valid") [8086:1521]
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Jakub Kicinski <kubakici@wp.pl>,
 netdev <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 12, 2021 at 7:42 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> [Cc: +ACPI maintainers]
>
> Am 12.10.21 um 18:34 schrieb Andreas K. Huettel:
> >>> The messages easily identifiable are:
> >>>
> >>> huettel@pinacolada ~/tmp $ cat kernel-messages-5.10.59.txt |grep igb
> >>> Oct  5 15:11:18 dilfridge kernel: [    2.090675] igb: Intel(R) Gigabit Ethernet Network Driver
> >>> Oct  5 15:11:18 dilfridge kernel: [    2.090676] igb: Copyright (c) 2007-2014 Intel Corporation.
> >>> Oct  5 15:11:18 dilfridge kernel: [    2.090728] igb 0000:01:00.0: enabling device (0000 -> 0002)
> >>
> >> This line is missing below, it indicates that the kernel couldn't or
> >> didn't power up the PCIe for some reason. We're looking for something
> >> like ACPI or PCI patches (possibly PCI-Power management) to be the
> >> culprit here.
> >
> > So I did a git bisect from linux-v5.10 (good) to linux-v5.14.11 (bad).
> >
> > The result was:
> >
> > dilfridge /usr/src/linux-git # git bisect bad
> > 6381195ad7d06ef979528c7452f3ff93659f86b1 is the first bad commit
> > commit 6381195ad7d06ef979528c7452f3ff93659f86b1
> > Author: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > Date:   Mon May 24 17:26:16 2021 +0200
> >
> >      ACPI: power: Rework turning off unused power resources
> > [...]
> >
> > I tried naive reverting of this commit on top of 5.14.11. That applies nearly cleanly,
> > and after a reboot the additional ethernet interfaces show up with their MAC in the
> > boot messages.
> >
> > (Not knowing how safe that experiment was, I did not go further than single mode and
> > immediately rebooted into 5.10 afterwards.)

Reverting this is rather not an option, because the code before it was
a one-off fix of an earlier issue, but it should be fixable given some
more information.

Basically, I need a boot log from both the good and bad cases and the
acpidump output from the affected machine.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
