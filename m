Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CEC653595
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 18:48:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7EDB61072;
	Wed, 21 Dec 2022 17:48:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7EDB61072
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671644926;
	bh=QZdcVskiGrP+pFIXfsaEsyAdMSy6haH4K7l97LFrmrE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iXKRka8ecrNrSEpDeP0uFGqkChXZNi+xJJfGJGkmiKpWS+6vH8IHQmLTB+CK5Va6u
	 FFC8XJ8UbXbXpQLA8H4+KUEkw8Xq8vsLNaz/iGt1d0/ytMSm/GG4H/WsVvuNsIjK8E
	 zF7USlcZn6ZudPBeNje95WNKU1T1AHytD0gy8b9bB4OKxpCB/PRnVGoKX+DbENda1g
	 wvXUnTBw3HmCdSnBm2agsbKxftps2MqCiqQlaSGek1OiyUYf8y2jRrfvavnfJcKJLi
	 nNYS6cBKDSoxq65wzISEUxfmIvIJzNcz9YG779BgTTo0unghqk+Q0RKqHYBvRaZ2k+
	 LqZlIHhB/veYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MAEsZEFmHpdu; Wed, 21 Dec 2022 17:48:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98CFE60B6C;
	Wed, 21 Dec 2022 17:48:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98CFE60B6C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C41061BF844
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 17:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9455A60BA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 17:31:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9455A60BA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1bd-puSgsmQ7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 17:31:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52EA660A47
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 52EA660A47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 17:31:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3AEC261881;
 Wed, 21 Dec 2022 17:31:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67A73C433D2;
 Wed, 21 Dec 2022 17:30:57 +0000 (UTC)
Date: Wed, 21 Dec 2022 17:30:54 +0000
From: Conor Dooley <conor@kernel.org>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <Y6NCzgXZzv+oJKV1@spud>
References: <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
 <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
 <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
 <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
 <CAPAtJa_hbFbVXQbiNnb_byLqtZ-Dy_EBcvTFH9GyPqt__dFmLQ@mail.gmail.com>
 <Y3gKkYeijrAIhxjc@spud> <20221118145443.427ecf10@kernel.org>
 <Y3gTdsg4l71L0vz9@spud>
 <a15508df-eab4-ce00-7340-69323c462fdc@intel.com>
 <Y3qGHROcvdL1vKip@spud>
MIME-Version: 1.0
In-Reply-To: <Y3qGHROcvdL1vKip@spud>
X-Mailman-Approved-At: Wed, 21 Dec 2022 17:48:41 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671643859;
 bh=F3rQjEuCT/Nq0S3JVc1uP7Z7hT1xeuLDQLKUL8W9PvQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CAVSH7F1Apb+LgBKPHHX2IN16IefkXDkLUjtTs3naha1fgT5r1C2/rXbnfsTXxEXK
 kjTUOA5+CQVsaUqGj5LTLKaS4JwrWC/8YLfDR2bHpc8nl6kN+lQEY/Swroj/MxoMFf
 Brj/eKkzy8vhIMuoorAPJ5wXIvLSlQfkMQzYRML3iAe+xObuYeyyJt1/qq++OMoBx6
 WBSfa+tjOOk1sYzQ+l200WxVNkQ+35+YNr2n9YzHxMasIobIUYNq7zaXCPCGrQJf8R
 MoIT2s1ShRro4FhpUH2pY8kEu+ObWGkHXiTtQqMCs5Xmjh6eBQ9f7wBnYI7OBuPb3x
 ITgs3Mh99ztlw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CAVSH7F1
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
 regressions@lists.linux.dev, "Meir, NaamaX" <naamax.meir@intel.com>,
 Ivan Smirnov <isgsmirnov@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: multipart/mixed; boundary="===============2190483204651362134=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============2190483204651362134==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XdTdINNilYUYYXgD"
Content-Disposition: inline


--XdTdINNilYUYYXgD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 20, 2022 at 07:55:09PM +0000, Conor Dooley wrote:
> On Sat, Nov 19, 2022 at 08:06:05PM +0200, Neftin, Sasha wrote:
> > On 11/19/2022 01:21, Conor Dooley wrote:
> > > On Fri, Nov 18, 2022 at 02:54:43PM -0800, Jakub Kicinski wrote:
> > > > On Fri, 18 Nov 2022 22:43:29 +0000 Conor Dooley wrote:
> > > > > > Is there any update for the community? More and more folks are =
asking. We
> > > > > > are all techies and happy to help debug.
> > > > >=20
> > > > > Vested interest since I am suffering from the same issue (X670E-F
> > > > > Gaming), but is it okay to add this to regzbot? Not sure whether =
it
> > > > > counts as a regression or not since it's new hw with the existing=
 driver,
> > > > > but this seems to be falling through the cracks without a respons=
e for
> > > > > several weeks.
> > > >=20
> > > > Dunno, Thorsten's will decide. The line has to be drawn somewhere
> > > > on "vendor doesn't care about Linux support" vs "we broke uAPI".
> > > > This is the kind of situation I was alluding to in my line of
> > > > questioning at the maintainer summit: https://lwn.net/Articles/9083=
24/
> > >=20
> > > Yeah & it is /regression/ tracking which I don't (or rather didn't)
> > > consider this situation to be. I'm generally a little unsure as to wh=
en
> > > I should trigger regzbot in general:
> > > - immediately when I find something?
> > > - only if it goes a while with nothing constructive?
> > > - is it okay to use it outside of "this used to work and now doesnt"?
> > >=20
> > > Either way, but I did some more googling and found this reddit thread:
> > > https://www.reddit.com/r/intel/comments/lqb4km/for_people_having_i225=
v_connection_issues/
> > >=20
> > > That's being reported against windows & I dunno if the dude is using
> > > firmware and driver interchangeably etc. But the disabling power savi=
ng
> > > etc sounds oddly like the issue we have here, since that was a propos=
ed
> > > workaround in Ivan's 2022 reddit thread.
> > >=20
> > > Supposedly I am on firmware-version 1082:8770, but /I/ I have no idea
> > > how that corresponds to windows versioning. That may lend some creden=
ce
> > > to your assertion about firmware being the source of many issues.
> > >=20
> > > > Finding a kernel release which does not suffer from the problem
> > > > would certainly strengthen your case.
> > >=20
> > > Aye, likely to be a little difficult to do a meaningful bisection for
> > > me at least, since the motherboard I have with the problem is an AM5
> > > one for the new Zen4 stuff. I'm not an x86 person, so not entirely
> > > sure when that support landed. I may do some poking tomorrow..
> > >=20
> > I do not think we can resolve this problem on this forum.
> > In early Ivan's report was reported error to netdev "PCIe link lost, de=
vice
> > now detached"). Since the PCIe link unexpectedly drops it could lead to=
 many
> > problems (not only crashes).
>=20
> Hmm, I'll take a look at what mine spits out next time it dies, but I
> would imagine that you're correct and I see it too.

It does in fact say that, but interestingly only this peripheral has any
issues. My GPUs etc have no problem at all.

> > Before you go to SW/FW bisection (change FW(NVM), go back with a kernel
> > version) - please, contact your board vendor (ASUS). Why PCIe link drop?
>=20
> I dunno, I suppose it just entered a lower power state!
>=20
> > Circuit problem on board, the system performs power management flows and
> > does not stop the driver.
>=20
> My GPU and other PCI devices are returning from lower power modes properl=
y.
> I wonder what's different about this specific device. As I said, not too
> familiar with x86 stuff - is there someone from AMD worth poking as the
> output from lspci is a wall of AMD bridges w/ endpoints mixed in.
>=20
> Doing a cursory look at other x670 stuff - the non-asus ones that I
> looked at are not using Intel ethernet.
>=20
> > "failed to read reg 0xc030" (just symptom) happen after PCIe link lost.
>=20
> Per 47e16692b26b ("igb/igc: warn when fatal read failure happens"), it
> looks as though this is not a *new* problem though as you guys have seen
> this while testing.
>=20
> I've got a 1 G NIC, I like my dev machine to "just work" so I'll probably
> throw that in and see how far that gets me. IIRC it's an igb one so will
> at least make for a datapoint.

FWIW I gave up on the igc driver and am using my NIC, couldn't be
bothered with the disruption. I'll give the bios stuff mentioned
elsewhere a go over Christmas now that v6.1.1 exists and see if that
helps. Hopefully it does!

Conor.


--XdTdINNilYUYYXgD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY6NCzgAKCRB4tDGHoIJi
0gIwAQDh7mXOiqQoCyqrOP20dYw0RJbgxjlPYGXaz3N81qKWwAD/U2DsXu3JRw5b
rIXhqpaFGm+DlE3ri1r0kQ6KDoikTwU=
=NO96
-----END PGP SIGNATURE-----

--XdTdINNilYUYYXgD--

--===============2190483204651362134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2190483204651362134==--
