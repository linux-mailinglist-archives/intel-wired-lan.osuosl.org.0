Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 907C942FB35
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Oct 2021 20:43:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C7554085F;
	Fri, 15 Oct 2021 18:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eDPnivRgRpGW; Fri, 15 Oct 2021 18:43:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CFCB40857;
	Fri, 15 Oct 2021 18:43:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7571C1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 18:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5924E4011F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 18:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ZsIUHSX40s9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Oct 2021 18:43:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 898B4400DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 18:43:08 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id e63so14306942oif.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 11:43:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fZwrJiqd9seqRcT3s1yzrveoPyn/0SNgpRsZ6dkHhUE=;
 b=P8Z2lDMrB4JB6t/Q6isAV5e4anXxlmCAODL3hp/myboqvOP0zCUF6CgANMkNHhRx+F
 LRxbMrMZMo1mqsur9mixaLTt6OeKMeBJx/aunPELMbYDMpeuC1Nyzdre+jWRYVZFkbSk
 rLBR1Inm2NTQWmuPZnN+ex6oau+qr7eLDcL0ODfD3QxVZn7qb6mf2x7PgxuA7paz9K84
 2NC4AUqxutKmN6zJPpxOOafg6dNAA8ZXW/nTPAMhv+/jUAfWiy5WnK6BHpxpWPTEM+v2
 8MQ+LTor5/+ofVaJMP3yTNNTAP6ATem4TD890SUQoZx5P47JY9rkciR8t8SKdthMvuRJ
 y2pg==
X-Gm-Message-State: AOAM530drbfOeY7YaC1UgbkGua3DrYtrNr3GgBgkRDFAVXniwJ12dOob
 rWTMUi1FQ+UScWxTwfT8vurC2mJPq9QepDf9zAk=
X-Google-Smtp-Source: ABdhPJzZ0uV63o3Hwjz2dns+zeVN4BkgONSzt2MO9uu96aEdLiBcXu2SI6u4FCs4OUzOhUCZmQ/Q7BviE23krVGt358=
X-Received: by 2002:aca:b5c3:: with SMTP id e186mr19063404oif.51.1634323387558; 
 Fri, 15 Oct 2021 11:43:07 -0700 (PDT)
MIME-Version: 1.0
References: <1823864.tdWV9SEqCh@kailua> <9965462.DAOxP5AVGn@pinacolada>
 <CAJZ5v0icUwksYVjKW0H5G0DNpfVHSyfm4oC782+Fsy56mQ330A@mail.gmail.com>
 <4697216.31r3eYUQgx@kailua>
In-Reply-To: <4697216.31r3eYUQgx@kailua>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 15 Oct 2021 20:42:56 +0200
Message-ID: <CAJZ5v0grz=_vi-+S7M8xshigpETtjYw__vvt3=Aeb1XbARfkng@mail.gmail.com>
To: "Andreas K. Huettel" <andreas.huettel@ur.de>
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Jakub Kicinski <kubakici@wp.pl>,
 netdev <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 15, 2021 at 4:01 PM Andreas K. Huettel
<andreas.huettel@ur.de> wrote:
>
> Am Donnerstag, 14. Oktober 2021, 14:09:39 CEST schrieb Rafael J. Wysocki:
> > > > > >>> huettel@pinacolada ~/tmp $ cat kernel-messages-5.10.59.txt |grep igb
> > > > > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090675] igb: Intel(R) Gigabit Ethernet Network Driver
> > > > > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090676] igb: Copyright (c) 2007-2014 Intel Corporation.
> > > > > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090728] igb 0000:01:00.0: enabling device (0000 -> 0002)
> > > > > >>
> > > > > >> This line is missing below, it indicates that the kernel couldn't or
> > > > > >> didn't power up the PCIe for some reason. We're looking for something
> > > > > >> like ACPI or PCI patches (possibly PCI-Power management) to be the
> > > > > >> culprit here.
> > > > > >
> > > > > > So I did a git bisect from linux-v5.10 (good) to linux-v5.14.11 (bad).
> > > > > >
> > > > > > The result was:
> > > > > >
> > > > > > dilfridge /usr/src/linux-git # git bisect bad
> > > > > > 6381195ad7d06ef979528c7452f3ff93659f86b1 is the first bad commit
> > > > > > commit 6381195ad7d06ef979528c7452f3ff93659f86b1
> > > > > > Author: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > > > Date:   Mon May 24 17:26:16 2021 +0200
> > > > > >
> > > > > >      ACPI: power: Rework turning off unused power resources
> > > > > > [...]
> > > > > >
> > > > > > I tried naive reverting of this commit on top of 5.14.11. That applies nearly cleanly,
> > > > > > and after a reboot the additional ethernet interfaces show up with their MAC in the
> > > > > > boot messages.
> > > > > >
> > > > > > (Not knowing how safe that experiment was, I did not go further than single mode and
> > > > > > immediately rebooted into 5.10 afterwards.)
> > > >
> > > > Reverting this is rather not an option, because the code before it was
> > > > a one-off fix of an earlier issue, but it should be fixable given some
> > > > more information.
> > > >
> > > > Basically, I need a boot log from both the good and bad cases and the
> > > > acpidump output from the affected machine.
> > > >
> > >
> > > https://dev.gentoo.org/~dilfridge/igb/
> > >
> > > ^ Should all be here now.
> > >
> > > 5.10 -> "good" log (the errors are caused by missing support for my i915 graphics and hopefully unrelated)
> > > 5.14 -> "bad" log
> > >
> > > Thank you for looking at this. If you need anything else, just ask.
> >
> > You're welcome.
> >
> > Please test the attached patch and let me know if it helps.
> >
>
> It helps (*); the second ethernet adaptor is initialized, and works normally as far as I can see.
>
> (*) The debug output line following the if-condition apparently changed in the meantime, so I had
> to apply the change in the if-condition "manually".
>
> igb: Intel(R) Gigabit Ethernet Network Driver
> igb: Copyright (c) 2007-2014 Intel Corporation.
> igb 0000:01:00.0: enabling device (0000 -> 0002)
> igb 0000:01:00.0: added PHC on eth1
> igb 0000:01:00.0: Intel(R) Gigabit Ethernet Network Connection
> igb 0000:01:00.0: eth1: (PCIe:5.0Gb/s:Width x4) 6c:b3:11:23:d4:4c
> igb 0000:01:00.0: eth1: PBA No: H47819-001
> igb 0000:01:00.0: Using MSI-X interrupts. 8 rx queue(s), 8 tx queue(s)
> igb 0000:01:00.1: enabling device (0000 -> 0002)
> igb 0000:01:00.1: added PHC on eth2
> igb 0000:01:00.1: Intel(R) Gigabit Ethernet Network Connection
> igb 0000:01:00.1: eth2: (PCIe:5.0Gb/s:Width x4) 6c:b3:11:23:d4:4d
> igb 0000:01:00.1: eth2: PBA No: H47819-001
> igb 0000:01:00.1: Using MSI-X interrupts. 8 rx queue(s), 8 tx queue(s)
>
> The full boot log is at https://dev.gentoo.org/~dilfridge/igb/ as 5.14.11-*.txt

Thank you!

I've added a changelog to it and resent along with another patch to
test for you:

https://lore.kernel.org/linux-acpi/21226252.EfDdHjke4D@kreacher/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
