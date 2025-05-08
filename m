Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 992C6AB067B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 01:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 103C5408CC;
	Thu,  8 May 2025 23:28:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WTZ63osM_J4M; Thu,  8 May 2025 23:28:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BC0D4091D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746746924;
	bh=IJqSlMGSjYMgJIHKbPM3YyFA5RfvykcsmoPIZTS7ViQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KYutDOocMJ2E5wnmyrywxP80aZ/m6CzZed8peITSo9V2WGjql2J62CYp7vTYtxqrw
	 GdxmQLyh0BmbhNjMRJ86I1to7GPsjoWB1kdzzc6KvlAqJetmfUrbgFinjiYTrq5Za8
	 KttbPfSk5lBs/sTkk9yulKWP6UDUIYC6NAP2axS4BbfG1AkbLtiuMkPhyWvbNOXy9A
	 54UpYuss9f6/x+fCYN2op4swnVinervVavaxslci4aSzhCCumIbGoXPTUi4gD1h1c2
	 wPEK2qJC2CzzjhoX3iyQbrjbFJhMAT5jQS9Tzf0XirIkjv105gJNw69R8wCXdMnDSZ
	 FUbomrZAM6Slg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BC0D4091D;
	Thu,  8 May 2025 23:28:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A4962E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 23:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9603540264
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 23:28:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sWhaqNFC6ogS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 23:28:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.147;
 helo=fout-b4-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ADA8A40275
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADA8A40275
Received: from fout-b4-smtp.messagingengine.com
 (fout-b4-smtp.messagingengine.com [202.12.124.147])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ADA8A40275
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 23:28:41 +0000 (UTC)
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id 6742411400C3;
 Thu,  8 May 2025 19:28:40 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Thu, 08 May 2025 19:28:40 -0400
X-ME-Sender: <xms:Jz4daLVjZ8aK7ifKCrZsXuBRWI0cQmSn_y47f1TBqtmiTg9jL1g_gg>
 <xme:Jz4daDkubIZFMppuCgsXYHALF74KUaGu9__imNszAunfol_ZWn0DWTCJ5SSnBzH27
 Xrhv1B2GNWqBQ>
X-ME-Received: <xmr:Jz4daHY8g2-T-rmkcR5Yn1m739oGbxA1eEyRk5MLaN0-S4mRGJe0_-Cwlo-dQnMzTp3X5NnNkWhEYffP-wNMdEQ1vsXRfgGuBA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvledutdeiucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesghdtreertddt
 jeenucfhrhhomhepofgrrhgvkhcuofgrrhgtiiihkhhofihskhhiqdfikphrvggtkhhiuc
 eomhgrrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecu
 ggftrfgrthhtvghrnhepgfduleetfeevhfefheeiteeliefhjefhleduveetteekveettd
 dvgeeuteefjedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
 rhhomhepmhgrrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
 dpnhgspghrtghpthhtohepledpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepphhm
 vghniigvlhesmhholhhgvghnrdhmphhgrdguvgdprhgtphhtthhopehvihhtrghlhidrlh
 hifhhshhhithhssehinhhtvghlrdgtohhmpdhrtghpthhtoheprghnthhhohhnhidrlhdr
 nhhguhihvghnsehinhhtvghlrdgtohhmpdhrtghpthhtohepphhriigvmhihshhlrgifrd
 hkihhtshiivghlsehinhhtvghlrdgtohhmpdhrtghpthhtohepnhgvthguvghvsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnh
 eslhhishhtshdrohhsuhhoshhlrdhorhhgpdhrtghpthhtoheprhgvghhrvghsshhiohhn
 sheslhhishhtshdrlhhinhhugidruggvvhdprhgtphhtthhopehsthgrsghlvgesvhhgvg
 hrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehsrghshhgrlheskhgvrhhnvghlrdho
 rhhg
X-ME-Proxy: <xmx:Jz4daGUu3rh-StBKiPlTZ41MrdUyXyAJ2pifuJJh2wweN4FBEdwNAA>
 <xmx:Jz4daFlDqOu-L9I3EGDruZbZlzU-auIdXm8z2YGDI8rEAygnQORrEg>
 <xmx:Jz4daDc_GUggdqXWInxX46Mjq4TN89bKvS90mM2znBlsowoYkxwfeQ>
 <xmx:Jz4daPHl3MxFpaiOXbuOchlS_zq_ng3WuMkUHzAK5kClTqPtDd4bkA>
 <xmx:KD4daMKJ4vYNwSVTB04R7jTksfFNjj7jmnxeia2I_65Ja9_RMs8R9naC>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 8 May 2025 19:28:38 -0400 (EDT)
Date: Fri, 9 May 2025 01:28:36 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 regressions@lists.linux.dev, stable@vger.kernel.org,
 Sasha Levin <sashal@kernel.org>
Message-ID: <aB0-JLSDT03fosST@mail-itl>
References: <Z_0GYR8jR-5NWZ9K@mail-itl>
 <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
 <b5d72f51-3cd0-aeca-60af-41a20ad59cd5@intel.com>
 <Z_-l2q9ZhszFxiqA@mail-itl>
 <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com>
 <aAZF0JUKCF0UvfF6@mail-itl> <aAZH7fpaGf7hvX6T@mail-itl>
 <e0034a96-e285-98c8-b526-fb167747aedc@intel.com>
 <aB0zLQawNrImVqPE@mail-itl>
 <c918d4f5-ee53-4f64-b152-cea0f6d99c4f@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="MKivEXeJngpk5/D4"
Content-Disposition: inline
In-Reply-To: <c918d4f5-ee53-4f64-b152-cea0f6d99c4f@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1746746920;
 x=1746833320; bh=IJqSlMGSjYMgJIHKbPM3YyFA5RfvykcsmoPIZTS7ViQ=; b=
 dBO+woswp3j9IO1OVO+kJZ4RehlaaChEV2MdIYZptRP7xukvFqK8vYJ3It2YhUzj
 81kGvutZDC6En7CRqFQxFWEdOcDxZYp4PV9Gn7krkSX10cj/7ub/rCmJcXMSyv8I
 xuew+nVt4szDnvqr3tD4lHt2L+wlEqrC7DMXGAhgDBRgbUV8QrODlg0lOn2/vFjB
 EjDd268JCRpAxh0FlV37z78HErJ8HoZlp2Gr+GEtSEAkb08lpRdDwztvKQ8cKHda
 rZyPi8ixJq6BxcHY6kLpNIyU8rE8l4VcnrHZcvWT/5XH9Du3aYb9I7nFNtslKH9k
 O6wlOm4MmHUqgnvA92p0xA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1746746920; x=1746833320; bh=IJqSlMGSjYMgJIHKbPM3YyFA5RfvykcsmoP
 IZTS7ViQ=; b=QCgNjUWi8aq3iW4G7KF8GVI7fDf0OduNL/ZfYxOPVB8NV65LR89
 ZSCfE9UP+gJa0t1Jaf0f83vp7JeqPhREOfAn8l9ZqQoYY3ehPROSKIkHL5DG06qm
 YXKDD2fquwXyVeP3Kr1Xovu8G85cNt7UoSg68460eZnHBgsXyMC/sIGtW3n3lOi+
 tV3TnQ7SLx9Fv4s+ICLA6aOVIUj9Ng+9XI4EDhetRim3Wlpo5sbTMrQL0nY5v6tZ
 C8I/rtGtvJkhLVr0PQfaobMGaghZRjmw+qaOriQ2S5qX4zxsa4Dpd4NVTRTlhheZ
 RDimG9kY0eikC1IAzGt9L23TIqhCN5Jr8CQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm3
 header.b=dBO+wosw; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=QCgNjUWi
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--MKivEXeJngpk5/D4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 9 May 2025 01:28:36 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>,
	Przemek Kitszel <przemyslaw.kitszel@intel.com>,
	netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
	regressions@lists.linux.dev, stable@vger.kernel.org,
	Sasha Levin <sashal@kernel.org>
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2

On Fri, May 09, 2025 at 01:13:28AM +0200, Paul Menzel wrote:
> Dear Marek, dear Vitaly,
>=20
>=20
> Am 09.05.25 um 00:41 schrieb Marek Marczykowski-G=C3=B3recki:
> > On Thu, May 08, 2025 at 09:26:18AM +0300, Lifshits, Vitaly
> > > On 4/21/2025 4:28 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > > > On Mon, Apr 21, 2025 at 03:19:12PM +0200, Marek Marczykowski-G=C3=
=B3recki wrote:
> > > > > On Mon, Apr 21, 2025 at 03:44:02PM +0300, Lifshits, Vitaly wrote:
> > > > > >=20
> > > > > >=20
> > > > > > On 4/16/2025 3:43 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > > > > > > On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits, Vitaly wr=
ote:
> > > > > > > > Can you please also share the output of ethtool -i? I would=
 like to know the
> > > > > > > > NVM version that you have on your device.
> > > > > > >=20
> > > > > > > driver: e1000e
> > > > > > > version: 6.14.1+
> > > > > > > firmware-version: 1.1-4
> > > > > > > expansion-rom-version:
> > > > > > > bus-info: 0000:00:1f.6
> > > > > > > supports-statistics: yes
> > > > > > > supports-test: yes
> > > > > > > supports-eeprom-access: yes
> > > > > > > supports-register-dump: yes
> > > > > > > supports-priv-flags: yes
> > > > > > >=20
> > > > > >=20
> > > > > > Your firmware version is not the latest, can you check with the=
 board
> > > > > > manufacturer if there is a BIOS update to your system?
> > > > >=20
> > > > > I can check, but still, it's a regression in the Linux driver - o=
ld
> > > > > kernel did work perfectly well on this hw. Maybe new driver tries=
 to use
> > > > > some feature that is missing (or broken) in the old firmware?
> > > >=20
> > > > A little bit of context: I'm maintaining the kernel package for a Q=
ubes
> > > > OS distribution. While I can try to update firmware on my test syst=
em, I
> > > > have no influence on what hardware users will use this kernel, and
> > > > which firmware version they will use (and whether all the vendors
> > > > provide newer firmware at all). I cannot ship a kernel that is known
> > > > to break network on some devices.
> > > >=20
> > > > > > Also, you mentioned that on another system this issue doesn't r=
eproduce, do
> > > > > > they have the same firmware version?
> > > > >=20
> > > > > The other one has also 1.1-4 firmware. And I re-checked, e1000e f=
rom
> > > > > 6.14.2 works fine there.
>=20
> > > Thank you for your detailed feedback and for providing the requested
> > > information.
> > >=20
> > > We have conducted extensive testing of this patch across multiple sys=
tems
> > > and have not observed any packet loss issues. Upon comparing the ment=
ioned
> > > setups, we noted that while the LAN controller is similar, the CPU di=
ffers.
> > > We believe that the issue may be related to transitions in the CPU's =
low
> > > power states.
> > >=20
> > > Consequently, we kindly request that you disable the CPU low power st=
ate
> > > transitions in the S0 system state and verify if the issue persists. =
You can
> > > disable this in the kernel parameters on the command line with idle=
=3Dpoll.
> > > Please note that this command is intended for debugging purposes only=
, as it
> > > may result in higher power consumption.
> >=20
> > I tried with idle=3Dpoll, and it didn't help, I still see a lot of pack=
et
> > losses. But I can also confirm that idle=3Dpoll makes the system use
> > significantly more power (previously at 25-30W, with this option stays
> > at about 42W).
> >=20
> > Is there any other info I can provide, enable some debug features or
> > something?
> >=20
> > I see the problem is with receiving packets - in my simple ping test,
> > the ping target sees all the echo requests (and respond to them), but
> > the responses aren't reaching ping back (and are not visible on tcpdump
> > on the problematic system either).
>=20
> As the cause is still unclear, can the commit please be reverted in the
> master branch due adhere to Linux=E2=80=99 no-regression policy, so that =
it can be
> reverted from the stable series?
>=20
> Marek, did you also test 6.15 release candidates?

The last test I did was on 6.15-rc3. I can re-test on -rc5.

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--MKivEXeJngpk5/D4
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmgdPiQACgkQ24/THMrX
1yyHzQf9Ff8sqJ07qvWeLgrsktZeS+HffHZLA9w76Of342AJEHdXT0Sxem4VK0XW
wZPWCa3Y0bOPpY+YsNk8X457RlfTr0LuSPi78Tq5Zsuj6B7nPORfbGKZPfBU1Ezl
NtahR6GNlxLNvr0SJ/Kh4oXaMUurOR6noOCEN9QKnb02+hl8tKyN3HNAVm2VuVmh
xmhIvAjXmR/x6Xm0q7ud+XEQKKE7PlxoXNcJ1acF4T7A4o0eRq8G35ol63pxsZo7
QHYPxHuj1phbluQSSnZALgNcaiZ3ATC5s0G1dXYTnKb56FPS4E9FC27Wz8bxgfxG
YwwZt06X8HvgnGTzeVrx77foDn85Tg==
=K2no
-----END PGP SIGNATURE-----

--MKivEXeJngpk5/D4--
