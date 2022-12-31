Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7010E65C42C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 17:48:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD43D60F77;
	Tue,  3 Jan 2023 16:48:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD43D60F77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672764519;
	bh=X+O4nBxqJP3Pft31pMOH0nvwUMu3IAgekSfpUBoIr54=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NHX1Ac6DSEwSNGgE86JjUWIectlGLb39j0SC1dtP+8oHP3GOJphCOEwytjocKLprE
	 oniFkg1Sdi7Ux9e8QwEu49eH9PQFtiSh3jRlL8wP2JLOJkzcumD1vvGxMUqGFhb34K
	 7OFAJtSNgQEQEydwgFs0N9/4kmPObwWX9bHrY24VivNwI616ehvJKG1k2GpYcho9dO
	 6UcN9b7jl/NFS3mL2gAzClZj5ctapdLHEGh0bGRAtDEF9L2WKBzsP2E68HaG7ZLkrG
	 4M48lGPr8bO0JdOW+iPh0T8kq7EbTlBrAm3PWfx1mOSRe44OaMRHtouX09zbB0iBtX
	 JgOsF/uSHHV3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fa7aNpSzDcQv; Tue,  3 Jan 2023 16:48:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B45E560D68;
	Tue,  3 Jan 2023 16:48:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B45E560D68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B7C861BF292
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Dec 2022 15:03:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 952F8402A8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Dec 2022 15:03:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 952F8402A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86fLUjUc-pba for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Dec 2022 15:03:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 137584029B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 137584029B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Dec 2022 15:03:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D8C0C60AAD;
 Sat, 31 Dec 2022 15:03:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCC71C433D2;
 Sat, 31 Dec 2022 15:02:59 +0000 (UTC)
Date: Sat, 31 Dec 2022 15:02:57 +0000
From: Conor Dooley <conor@kernel.org>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <Y7BPIYsBXN0ivoLE@spud>
References: <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
 <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
 <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
 <CAPAtJa_hbFbVXQbiNnb_byLqtZ-Dy_EBcvTFH9GyPqt__dFmLQ@mail.gmail.com>
 <Y3gKkYeijrAIhxjc@spud> <20221118145443.427ecf10@kernel.org>
 <Y3gTdsg4l71L0vz9@spud>
 <a15508df-eab4-ce00-7340-69323c462fdc@intel.com>
 <Y3qGHROcvdL1vKip@spud> <Y6NCzgXZzv+oJKV1@spud>
MIME-Version: 1.0
In-Reply-To: <Y6NCzgXZzv+oJKV1@spud>
X-Mailman-Approved-At: Tue, 03 Jan 2023 16:48:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672498982;
 bh=DRvrEzXvhk/WTMZtkXGdXs+d6WC46CQ4JRn21psmgIU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rqFWiwhHVPRTSegBVCKqUhTpSTUR0XhRBxJ6UCANex0hb1QoMn2L0m3T2rHBbPrZ8
 wsiC2OqJaFA3SPhE6WhQOZvNvbqdfEa0F8usUw3VRqP5iLn+YcPEYqoGGJUB8LfNv4
 hViIFCBpubZxdD6OgcQuzUgx9zgQSpX3s14IXBR9HqoCfy72bdrnLZLMgN803pK8ks
 5Ft72yL779/khuvd+RUHmWboitsXERkYhSArt5n0STr/TPp9HYAvLw786a9i6ijJzR
 B+knNsUG/zBjBLiGdBGmnoAgc0/sEfwWEfSa802NWRGwjLIQ80hUzh3TwRkmfDI9XS
 xAKiKwE4EJKhA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rqFWiwhH
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>, helgaas@kernel.org,
 regressions@lists.linux.dev, "Meir, NaamaX" <naamax.meir@intel.com>,
 Ivan Smirnov <isgsmirnov@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: multipart/mixed; boundary="===============5685893136271595873=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============5685893136271595873==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wuPkSkaRgTHeR4DW"
Content-Disposition: inline


--wuPkSkaRgTHeR4DW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 21, 2022 at 05:30:54PM +0000, Conor Dooley wrote:
> On Sun, Nov 20, 2022 at 07:55:09PM +0000, Conor Dooley wrote:
> > On Sat, Nov 19, 2022 at 08:06:05PM +0200, Neftin, Sasha wrote:
> > > On 11/19/2022 01:21, Conor Dooley wrote:
> > > > On Fri, Nov 18, 2022 at 02:54:43PM -0800, Jakub Kicinski wrote:
> > > > > On Fri, 18 Nov 2022 22:43:29 +0000 Conor Dooley wrote:
> > > > > > > Is there any update for the community? More and more folks ar=
e asking. We
> > > > > > > are all techies and happy to help debug.
> > > > > >=20
> > > > > > Vested interest since I am suffering from the same issue (X670E=
-F
> > > > > > Gaming), but is it okay to add this to regzbot? Not sure whethe=
r it
> > > > > > counts as a regression or not since it's new hw with the existi=
ng driver,
> > > > > > but this seems to be falling through the cracks without a respo=
nse for
> > > > > > several weeks.
> > > > >=20
> > > > > Dunno, Thorsten's will decide. The line has to be drawn somewhere
> > > > > on "vendor doesn't care about Linux support" vs "we broke uAPI".
> > > > > This is the kind of situation I was alluding to in my line of
> > > > > questioning at the maintainer summit: https://lwn.net/Articles/90=
8324/
> > > >=20
> > > > Yeah & it is /regression/ tracking which I don't (or rather didn't)
> > > > consider this situation to be. I'm generally a little unsure as to =
when
> > > > I should trigger regzbot in general:
> > > > - immediately when I find something?
> > > > - only if it goes a while with nothing constructive?
> > > > - is it okay to use it outside of "this used to work and now doesnt=
"?
> > > >=20
> > > > Either way, but I did some more googling and found this reddit thre=
ad:
> > > > https://www.reddit.com/r/intel/comments/lqb4km/for_people_having_i2=
25v_connection_issues/
> > > >=20
> > > > That's being reported against windows & I dunno if the dude is using
> > > > firmware and driver interchangeably etc. But the disabling power sa=
ving
> > > > etc sounds oddly like the issue we have here, since that was a prop=
osed
> > > > workaround in Ivan's 2022 reddit thread.
> > > >=20
> > > > Supposedly I am on firmware-version 1082:8770, but /I/ I have no id=
ea
> > > > how that corresponds to windows versioning. That may lend some cred=
ence
> > > > to your assertion about firmware being the source of many issues.
> > > >=20
> > > > > Finding a kernel release which does not suffer from the problem
> > > > > would certainly strengthen your case.
> > > >=20
> > > > Aye, likely to be a little difficult to do a meaningful bisection f=
or
> > > > me at least, since the motherboard I have with the problem is an AM5
> > > > one for the new Zen4 stuff. I'm not an x86 person, so not entirely
> > > > sure when that support landed. I may do some poking tomorrow..
> > > >=20
> > > I do not think we can resolve this problem on this forum.
> > > In early Ivan's report was reported error to netdev "PCIe link lost, =
device
> > > now detached"). Since the PCIe link unexpectedly drops it could lead =
to many
> > > problems (not only crashes).
> >=20
> > Hmm, I'll take a look at what mine spits out next time it dies, but I
> > would imagine that you're correct and I see it too.
>=20
> It does in fact say that, but interestingly only this peripheral has any
> issues. My GPUs etc have no problem at all.
>=20
> > > Before you go to SW/FW bisection (change FW(NVM), go back with a kern=
el
> > > version) - please, contact your board vendor (ASUS). Why PCIe link dr=
op?
> >=20
> > I dunno, I suppose it just entered a lower power state!
> >=20
> > > Circuit problem on board, the system performs power management flows =
and
> > > does not stop the driver.
> >=20
> > My GPU and other PCI devices are returning from lower power modes prope=
rly.
> > I wonder what's different about this specific device. As I said, not too
> > familiar with x86 stuff - is there someone from AMD worth poking as the
> > output from lspci is a wall of AMD bridges w/ endpoints mixed in.
> >=20
> > Doing a cursory look at other x670 stuff - the non-asus ones that I
> > looked at are not using Intel ethernet.
> >=20
> > > "failed to read reg 0xc030" (just symptom) happen after PCIe link los=
t.
> >=20
> > Per 47e16692b26b ("igb/igc: warn when fatal read failure happens"), it
> > looks as though this is not a *new* problem though as you guys have seen
> > this while testing.
> >=20
> > I've got a 1 G NIC, I like my dev machine to "just work" so I'll probab=
ly
> > throw that in and see how far that gets me. IIRC it's an igb one so will
> > at least make for a datapoint.
>=20
> FWIW I gave up on the igc driver and am using my NIC, couldn't be
> bothered with the disruption. I'll give the bios stuff mentioned
> elsewhere a go over Christmas now that v6.1.1 exists and see if that
> helps. Hopefully it does!

Hallo, me again...

I didn't actually give the bios stuff a go in the end. I figured that
changing everything at once would likely not be a good idea - but what I
did do was try v6.1.1 & have now been running for 50-something hours
without any issues while using the igc iface.

Whole-ly unscientific of course, but I had noticed this thread:
https://lore.kernel.org/all/20221226225045.GA400369@bhelgaas/
and that commit c01163dbd1b8 ("PCI/PM: Always disable PTM for all devices
during suspend") was not part of the v6.0.y kernels I was running but
*is* in v6.1.y, which was my impetus for trying the kernel upgrade.

I checked v6.0.16-rc2 and that commit does not appear to have been
backported yet.
Perhaps some of the other "victims" in this thread who have not yet
tried changing BIOS etc, could give v6.1.y a go & see if they still have
issues.

I may backport the aforementioned patch myself and see how it does, but
someone else trying v6.1.y & not seeing the iface dying would certainly
help with motivation :)

Thanks,
Conor.


--wuPkSkaRgTHeR4DW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY7BPIQAKCRB4tDGHoIJi
0uNCAQCiLQIDr2rkDhaLaBC29crc7MlSY26+tdKPWiO/SswOuAEAlZnlgmKi2gn9
8JD7K9xR6E9lDMmad3cjDmgb5epjuQQ=
=Li+b
-----END PGP SIGNATURE-----

--wuPkSkaRgTHeR4DW--

--===============5685893136271595873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5685893136271595873==--
