Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D10C42AD4B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 21:28:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3ADB823C0;
	Tue, 12 Oct 2021 19:28:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rdJ8bylIpvR9; Tue, 12 Oct 2021 19:28:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6841781C56;
	Tue, 12 Oct 2021 19:28:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2952C1BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 19:28:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2002081BF4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 19:28:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id htmRqDHVT769 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 19:28:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.uni-regensburg.de (mx1.uni-regensburg.de [194.94.157.146])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D058080DD0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 19:28:44 +0000 (UTC)
Received: from mx1.uni-regensburg.de (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 0C5A2600004E;
 Tue, 12 Oct 2021 21:28:40 +0200 (CEST)
Received: from smtp1.uni-regensburg.de (smtp1.uni-regensburg.de
 [194.94.157.129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "smtp.uni-regensburg.de",
 Issuer "DFN-Verein Global Issuing CA" (not verified))
 by mx1.uni-regensburg.de (Postfix) with ESMTPS id D5287600004D;
 Tue, 12 Oct 2021 21:28:39 +0200 (CEST)
From: "Andreas K. Huettel" <andreas.huettel@ur.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 12 Oct 2021 21:28:36 +0200
Message-ID: <9965462.DAOxP5AVGn@pinacolada>
Organization: Universitaet Regensburg
In-Reply-To: <CAJZ5v0gf0y6qDHUJOsvLFctqn8tgKeuTYn5S9rb6+T0Sj26aKw@mail.gmail.com>
References: <1823864.tdWV9SEqCh@kailua>
 <6faf4b92-78d5-47a4-63df-cc2bab7769d0@molgen.mpg.de>
 <CAJZ5v0gf0y6qDHUJOsvLFctqn8tgKeuTYn5S9rb6+T0Sj26aKw@mail.gmail.com>
MIME-Version: 1.0
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
Content-Type: multipart/mixed; boundary="===============6112039872961142928=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6112039872961142928==
Content-Type: multipart/signed; boundary="nextPart3199422.h16uAIiOU7"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart3199422.h16uAIiOU7
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: "Andreas K. Huettel" <andreas.huettel@ur.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kubakici@wp.pl>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Len Brown <lenb@kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [EXT] Re: [Intel-wired-lan] Intel I350 regression 5.10 -> 5.14 ("The NVM Checksum Is Not Valid") [8086:1521]
Date: Tue, 12 Oct 2021 21:28:36 +0200
Message-ID: <9965462.DAOxP5AVGn@pinacolada>
Organization: Universitaet Regensburg
In-Reply-To: <CAJZ5v0gf0y6qDHUJOsvLFctqn8tgKeuTYn5S9rb6+T0Sj26aKw@mail.gmail.com>
References: <1823864.tdWV9SEqCh@kailua> <6faf4b92-78d5-47a4-63df-cc2bab7769d0@molgen.mpg.de> <CAJZ5v0gf0y6qDHUJOsvLFctqn8tgKeuTYn5S9rb6+T0Sj26aKw@mail.gmail.com>

Am Dienstag, 12. Oktober 2021, 19:58:47 CEST schrieb Rafael J. Wysocki:
> On Tue, Oct 12, 2021 at 7:42 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
> >
> > [Cc: +ACPI maintainers]
> >
> > Am 12.10.21 um 18:34 schrieb Andreas K. Huettel:
> > >>> The messages easily identifiable are:
> > >>>
> > >>> huettel@pinacolada ~/tmp $ cat kernel-messages-5.10.59.txt |grep igb
> > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090675] igb: Intel(R) Gigabit Ethernet Network Driver
> > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090676] igb: Copyright (c) 2007-2014 Intel Corporation.
> > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090728] igb 0000:01:00.0: enabling device (0000 -> 0002)
> > >>
> > >> This line is missing below, it indicates that the kernel couldn't or
> > >> didn't power up the PCIe for some reason. We're looking for something
> > >> like ACPI or PCI patches (possibly PCI-Power management) to be the
> > >> culprit here.
> > >
> > > So I did a git bisect from linux-v5.10 (good) to linux-v5.14.11 (bad).
> > >
> > > The result was:
> > >
> > > dilfridge /usr/src/linux-git # git bisect bad
> > > 6381195ad7d06ef979528c7452f3ff93659f86b1 is the first bad commit
> > > commit 6381195ad7d06ef979528c7452f3ff93659f86b1
> > > Author: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > Date:   Mon May 24 17:26:16 2021 +0200
> > >
> > >      ACPI: power: Rework turning off unused power resources
> > > [...]
> > >
> > > I tried naive reverting of this commit on top of 5.14.11. That applies nearly cleanly,
> > > and after a reboot the additional ethernet interfaces show up with their MAC in the
> > > boot messages.
> > >
> > > (Not knowing how safe that experiment was, I did not go further than single mode and
> > > immediately rebooted into 5.10 afterwards.)
> 
> Reverting this is rather not an option, because the code before it was
> a one-off fix of an earlier issue, but it should be fixable given some
> more information.
> 
> Basically, I need a boot log from both the good and bad cases and the
> acpidump output from the affected machine.
> 

https://dev.gentoo.org/~dilfridge/igb/

^ Should all be here now. 

5.10 -> "good" log (the errors are caused by missing support for my i915 graphics and hopefully unrelated)
5.14 -> "bad" log

Thank you for looking at this. If you need anything else, just ask.
Andreas

-- 
PD Dr. Andreas K. Huettel
Institute for Experimental and Applied Physics
University of Regensburg
93040 Regensburg
Germany

e-mail andreas.huettel@ur.de
http://www.akhuettel.de/

--nextPart3199422.h16uAIiOU7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQKTBAABCgB9FiEE6W4INB9YeKX6Qpi1TEn3nlTQogYFAmFl4eRfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldEU5
NkUwODM0MUY1ODc4QTVGQTQyOThCNTRDNDlGNzlFNTREMEEyMDYACgkQTEn3nlTQ
ogZUrw//Y4taohugIt9kOpPE2xjRjz2ARhCxQsO59WPlgYGjuNhO0kQVvhAKC8TV
eCGhPQZVuxSqv6BKpWfyz2TYx5duM8SL9Z3Cyr4I23ACTZJZFHxWmbYlFbtS1Vqk
qBQuBWaMudAZgJJgN//nusoGe4Rk6Zbx7kn+sihup6YuxaEFEl0mPMRp4NspBnp5
jfOtLd2bY1Xibfryr/f2GhEAYtiP0BH9ZOtiIFsJQIS7Jsv5e/YrRMI4Tq2ra1Cd
7xOsLO7srBfLkDh9p0/kssXVTaFdQ6753Oj/Ija6t4dWdYi/Nb/m4wrW+aDyJDs6
xLTkMuTfHw1+9dQ+0lsazBdUfAEAASi+wtRpJpKFAsP1IbCbQpxj8gCG1yd9GeUT
IzN5VZBexk3b0tSDlkfXt4QSLG2EENsO3iygsVpa7xHOwJfxUNtCPiH9/W1qGonl
tqoVeJJmZA2Cu2rcKSP2hRJfz1D/82kUBFMdr5s10viKrO2dxyQ2QbegVlunqXN5
udgNeu/4WB+cbvxSJkWzwConVPNFwdkS0EeKpamNjUDiJ11vDiTQshd9oU7S6L/P
O97IoRb8RUO/1Nm8aeLEVDOUrMH1oReSIu4mWLns1ujTSjZWuplc+JmUa3t5xGF0
960CZiNtLY5h/Qv680gRgYoWWVH74VdT3uEErf7TaN6fHWAKC+8=
=yBdM
-----END PGP SIGNATURE-----

--nextPart3199422.h16uAIiOU7--




--===============6112039872961142928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6112039872961142928==--



