Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1424542F4A4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Oct 2021 16:01:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C262406F0;
	Fri, 15 Oct 2021 14:01:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sbfYijy8Qg2E; Fri, 15 Oct 2021 14:01:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30A9A40688;
	Fri, 15 Oct 2021 14:01:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F27201BF31B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 14:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED5C76075E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 14:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQTQec2EkXR7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Oct 2021 14:01:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de [194.94.157.149])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73FEB606F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 14:01:10 +0000 (UTC)
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 9294D600005A;
 Fri, 15 Oct 2021 16:01:03 +0200 (CEST)
Received: from smtp1.uni-regensburg.de (smtp1.uni-regensburg.de
 [194.94.157.129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "smtp.uni-regensburg.de",
 Issuer "DFN-Verein Global Issuing CA" (not verified))
 by mx4.uni-regensburg.de (Postfix) with ESMTPS id 6015E6000059;
 Fri, 15 Oct 2021 16:01:03 +0200 (CEST)
From: "Andreas K. Huettel" <andreas.huettel@ur.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 15 Oct 2021 16:00:59 +0200
Message-ID: <4697216.31r3eYUQgx@kailua>
Organization: Universitaet Regensburg
In-Reply-To: <CAJZ5v0icUwksYVjKW0H5G0DNpfVHSyfm4oC782+Fsy56mQ330A@mail.gmail.com>
References: <1823864.tdWV9SEqCh@kailua> <9965462.DAOxP5AVGn@pinacolada>
 <CAJZ5v0icUwksYVjKW0H5G0DNpfVHSyfm4oC782+Fsy56mQ330A@mail.gmail.com>
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Jakub Kicinski <kubakici@wp.pl>,
 netdev <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Len Brown <lenb@kernel.org>
Content-Type: multipart/mixed; boundary="===============1565244425669807070=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1565244425669807070==
Content-Type: multipart/signed; boundary="nextPart4360949.LvFx2qVVIh"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart4360949.LvFx2qVVIh
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: "Andreas K. Huettel" <andreas.huettel@ur.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, "Rafael J. Wysocki" <rafael@kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kubakici@wp.pl>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Len Brown <lenb@kernel.org>, ACPI Devel Maling List <linux-acpi@vger.kernel.org>
Subject: Re: [EXT] Re: [Intel-wired-lan] Intel I350 regression 5.10 -> 5.14 ("The NVM Checksum Is Not Valid") [8086:1521]
Date: Fri, 15 Oct 2021 16:00:59 +0200
Message-ID: <4697216.31r3eYUQgx@kailua>
Organization: Universitaet Regensburg
In-Reply-To: <CAJZ5v0icUwksYVjKW0H5G0DNpfVHSyfm4oC782+Fsy56mQ330A@mail.gmail.com>
References: <1823864.tdWV9SEqCh@kailua> <9965462.DAOxP5AVGn@pinacolada> <CAJZ5v0icUwksYVjKW0H5G0DNpfVHSyfm4oC782+Fsy56mQ330A@mail.gmail.com>

Am Donnerstag, 14. Oktober 2021, 14:09:39 CEST schrieb Rafael J. Wysocki:
> > > > >>> huettel@pinacolada ~/tmp $ cat kernel-messages-5.10.59.txt |grep igb
> > > > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090675] igb: Intel(R) Gigabit Ethernet Network Driver
> > > > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090676] igb: Copyright (c) 2007-2014 Intel Corporation.
> > > > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090728] igb 0000:01:00.0: enabling device (0000 -> 0002)
> > > > >>
> > > > >> This line is missing below, it indicates that the kernel couldn't or
> > > > >> didn't power up the PCIe for some reason. We're looking for something
> > > > >> like ACPI or PCI patches (possibly PCI-Power management) to be the
> > > > >> culprit here.
> > > > >
> > > > > So I did a git bisect from linux-v5.10 (good) to linux-v5.14.11 (bad).
> > > > >
> > > > > The result was:
> > > > >
> > > > > dilfridge /usr/src/linux-git # git bisect bad
> > > > > 6381195ad7d06ef979528c7452f3ff93659f86b1 is the first bad commit
> > > > > commit 6381195ad7d06ef979528c7452f3ff93659f86b1
> > > > > Author: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > > Date:   Mon May 24 17:26:16 2021 +0200
> > > > >
> > > > >      ACPI: power: Rework turning off unused power resources
> > > > > [...]
> > > > >
> > > > > I tried naive reverting of this commit on top of 5.14.11. That applies nearly cleanly,
> > > > > and after a reboot the additional ethernet interfaces show up with their MAC in the
> > > > > boot messages.
> > > > >
> > > > > (Not knowing how safe that experiment was, I did not go further than single mode and
> > > > > immediately rebooted into 5.10 afterwards.)
> > >
> > > Reverting this is rather not an option, because the code before it was
> > > a one-off fix of an earlier issue, but it should be fixable given some
> > > more information.
> > >
> > > Basically, I need a boot log from both the good and bad cases and the
> > > acpidump output from the affected machine.
> > >
> >
> > https://dev.gentoo.org/~dilfridge/igb/
> >
> > ^ Should all be here now.
> >
> > 5.10 -> "good" log (the errors are caused by missing support for my i915 graphics and hopefully unrelated)
> > 5.14 -> "bad" log
> >
> > Thank you for looking at this. If you need anything else, just ask.
> 
> You're welcome.
> 
> Please test the attached patch and let me know if it helps.
> 

It helps (*); the second ethernet adaptor is initialized, and works normally as far as I can see.

(*) The debug output line following the if-condition apparently changed in the meantime, so I had 
to apply the change in the if-condition "manually".

igb: Intel(R) Gigabit Ethernet Network Driver
igb: Copyright (c) 2007-2014 Intel Corporation.
igb 0000:01:00.0: enabling device (0000 -> 0002)
igb 0000:01:00.0: added PHC on eth1
igb 0000:01:00.0: Intel(R) Gigabit Ethernet Network Connection
igb 0000:01:00.0: eth1: (PCIe:5.0Gb/s:Width x4) 6c:b3:11:23:d4:4c
igb 0000:01:00.0: eth1: PBA No: H47819-001
igb 0000:01:00.0: Using MSI-X interrupts. 8 rx queue(s), 8 tx queue(s)
igb 0000:01:00.1: enabling device (0000 -> 0002)
igb 0000:01:00.1: added PHC on eth2
igb 0000:01:00.1: Intel(R) Gigabit Ethernet Network Connection
igb 0000:01:00.1: eth2: (PCIe:5.0Gb/s:Width x4) 6c:b3:11:23:d4:4d
igb 0000:01:00.1: eth2: PBA No: H47819-001
igb 0000:01:00.1: Using MSI-X interrupts. 8 rx queue(s), 8 tx queue(s)

The full boot log is at https://dev.gentoo.org/~dilfridge/igb/ as 5.14.11-*.txt

Thanks,
Andreas


-- 
PD Dr. Andreas K. Huettel
Institute for Experimental and Applied Physics
University of Regensburg
93040 Regensburg
Germany

e-mail andreas.huettel@ur.de
http://www.akhuettel.de/
http://www.physik.uni-r.de/forschung/huettel/
--nextPart4360949.LvFx2qVVIh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQKTBAABCgB9FiEE6W4INB9YeKX6Qpi1TEn3nlTQogYFAmFpiZtfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldEU5
NkUwODM0MUY1ODc4QTVGQTQyOThCNTRDNDlGNzlFNTREMEEyMDYACgkQTEn3nlTQ
ogaJCxAAnSpBiRSKPdL45G3xs0gFEKfnunkYqdDtgK39lQ2XAVDMoIBdY6ibc11x
7y3S246ldBXqHhUVAummn/ZzyhTKXPODUT1rrvRfSYSVEzXhaTeOWpzpg/9bzXt4
ArlCEbsSMTXtqyf03ki3I/fIy/MUyvdgm3xZz10mdk4v2+cTWoKBk5/UNOx9gtCs
tpdj9PuEAVPK1xfse3hElF+Mp1FusLWiHehMcKm2DhLt1MRlk/nMK7M9wBS29Ghi
7doYHZXjDBvz1UUX9DbJGTw/1FrS8dYjS/jabI5FNNHhVUj8EoQuNQz22dhHW5WH
YRosN0fFONKyw1MhhV5ZZVFSllRoaIcjxx5SQhOzU44/KsnQ/zePZ1SoXbvLHZ28
/V1j4cq9nRQoZ6VN4a/i1xbaBtEuXlt4SLMcqA4/r2Br+AydGbzp99vAbtNvz/57
Lnn7nYb67t8QI/o4XVcURWnWO/KK/3Qbh0KkvnknY9BnpEGaQy+6y3iLBrLMYIzP
0zr739GISC+GHken1/uKVZt2IF5KQWVjCz5rH+y8W1+Z0mKOcATkwTXVIWqGuTGL
XUyc6QWXFdk87YBGUV0IEejopYUUV+mEzxNTVdkRUTbYdFwhAcc6VjBjN2++AWSS
AC1cWM4uUzaWQ0eNP5jpw18YlCb22wv2y9NqbWewUoIyuwxkfx8=
=DPDP
-----END PGP SIGNATURE-----

--nextPart4360949.LvFx2qVVIh--




--===============1565244425669807070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1565244425669807070==--



