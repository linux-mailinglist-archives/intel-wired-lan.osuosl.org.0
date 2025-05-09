Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAC7AB06F9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 02:17:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CAD141512;
	Fri,  9 May 2025 00:17:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G6mnBGB_ZtCj; Fri,  9 May 2025 00:17:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52FEB414CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746749861;
	bh=bgHJflbPL1ZQTYsAd2pB4rR8mFMyVmjAMJfDeemkDT8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I4AFq4EJNqbbPR51t43IdnMicrSXRhfiJ7Xhu6EmM+yd4w4d6MrwKXEEBR2jNKFOZ
	 G24CWFEjAOjmfvmtd6X6Hd/cJrAMluZJev7n2n+u9zPqaz9zdJKDMya0WtXYtCrq8Y
	 A1OJjmtDxCMLIY7qDHnUbtPBLThjOVGPFAprHhsc/8v1EpntW0ZhDpGIaBE3qfpSIq
	 TC/N5gQ4xKjhdHLpsu21XUnMfakm/48+6M0AI2/8yvNa8dfw18WDRhRU3PimaxYUHo
	 0dqTROTYKLAtUoD22VOLNZAce3Pb1H/X9NLL2ViQE/aiCDQ2WB5Jz+o/vz6ivtZfOV
	 ds40dlIdfOOrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52FEB414CA;
	Fri,  9 May 2025 00:17:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 29AB71A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 00:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F1B083750
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 00:17:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FrG9KCq-oWSb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 00:17:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.155;
 helo=fhigh-b4-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 19E0483443
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19E0483443
Received: from fhigh-b4-smtp.messagingengine.com
 (fhigh-b4-smtp.messagingengine.com [202.12.124.155])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19E0483443
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 00:17:37 +0000 (UTC)
Received: from phl-compute-03.internal (phl-compute-03.phl.internal
 [10.202.2.43])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 7711425400F3;
 Thu,  8 May 2025 20:17:36 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-03.internal (MEProxy); Thu, 08 May 2025 20:17:36 -0400
X-ME-Sender: <xms:n0kdaM_jyzM0Mj6qJqYvb4-ZOESNADMDs94fkOWFRsmvRpnVaDdmWA>
 <xme:n0kdaEsVRgnEck-1zYNBg7wez07XgycZY2Zjd2kvObJw3cOeQOL1CalMpDI2nEDRG
 gx_qkfPRPCZ0Q>
X-ME-Received: <xmr:n0kdaCDLfIxUt3D02DlLhJEqxUt0OiMcTqW_DOuB_lSMKd4L9LsvbEEATgYalzwZue3dUu712EMScjA7hHwqDGD6nP5hE9tpAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvleduudeiucetufdoteggodetrf
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
X-ME-Proxy: <xmx:oEkdaMeoBDYQtrGOZOnFG1VmLHKojrxNh6QVm4NzkfIZImjijPZVTQ>
 <xmx:oEkdaBNrVpVy4pPbBQkjnxPHw-mtom2XhGdXFIf9YyUkA3MPVjP_kw>
 <xmx:oEkdaGlFaepKy2O1nPmTmaWgXUj0qzDJVSqaV9x0BWBf0cujwnMC7A>
 <xmx:oEkdaDt1mOAbQN6NUCE7beRz8Gij4RqlB_bwM7qpCBYMWUwlhvvYHQ>
 <xmx:oEkdaGSZkcJvQWro2fvms4v08_gsHZWCni7f9hkkYd5V_hI1eaVusN_S>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 8 May 2025 20:17:34 -0400 (EDT)
Date: Fri, 9 May 2025 02:17:32 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 regressions@lists.linux.dev, stable@vger.kernel.org,
 Sasha Levin <sashal@kernel.org>
Message-ID: <aB1JnJG_CH5vxAsw@mail-itl>
References: <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
 <b5d72f51-3cd0-aeca-60af-41a20ad59cd5@intel.com>
 <Z_-l2q9ZhszFxiqA@mail-itl>
 <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com>
 <aAZF0JUKCF0UvfF6@mail-itl> <aAZH7fpaGf7hvX6T@mail-itl>
 <e0034a96-e285-98c8-b526-fb167747aedc@intel.com>
 <aB0zLQawNrImVqPE@mail-itl>
 <c918d4f5-ee53-4f64-b152-cea0f6d99c4f@molgen.mpg.de>
 <aB0-JLSDT03fosST@mail-itl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="n/MWWdr08H3gZy0e"
Content-Disposition: inline
In-Reply-To: <aB0-JLSDT03fosST@mail-itl>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1746749856;
 x=1746836256; bh=bgHJflbPL1ZQTYsAd2pB4rR8mFMyVmjAMJfDeemkDT8=; b=
 gC5tilBAAP54Lw04gwewVC6RS8re5PYM06mtGXclfNM1rIiH68Dz0tPN3W/gehL+
 YQMkieZNr8FzBW1Eq0d2SKKfEs3TajsAlTfjoLts9V7M+7BOUP00UTB5FUko0bv1
 CEcWbxGmPLVTe6Faam1cV9GYtVWWDCw4Jon+6Yri1ZV9FlZTE9gUj7xqjZEZ6SSC
 x70RLp37F6i2Pkf+Mc/Mu8fFaiHBKQTYCHTooCBYt+D3RzPy8H9dQKhFq4sonGyu
 6tdN5iXWuZtZsQGEiY6s8wVH831jn3fgknqWu7RpdzauIz5cFoZyW4Nu/hiSkrRQ
 oQ6F5zLq6eWEWCzXCGvZdA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1746749856; x=1746836256; bh=bgHJflbPL1ZQTYsAd2pB4rR8mFMyVmjAMJf
 DeemkDT8=; b=ssaGgH705DTYvEOmTn32UH7m1LusRBexQqyf+Z6EQf0M5OMB0C0
 MkY+qWFDeUh7VIv6P/5YuUZZ8kYot8k6qLjtE8XuVIQVPjJ8bcGKg3kPnaey/LRN
 rMhMsLlxl7LlebcV++G9BCW5rK6D/RkySncJ8jH+sOWejFURQqKZ5v/GFCo22XzO
 kYOcXuLO/MnRKniFiTO6PZa+ArHeiGSV0e7S3yEEJl1Xo/ocb49pX7N5MVotJbcR
 4LcW/BJ9OZ13jw0E7+iNud7SNseLDbP223IPdBcsaGHXbx2/kY2YLHzXRuR+vM4r
 Ty//7aVwf/qtZSVAwhmcmewb5sB5is7BZdA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm3
 header.b=gC5tilBA; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=ssaGgH70
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


--n/MWWdr08H3gZy0e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 9 May 2025 02:17:32 +0200
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

On Fri, May 09, 2025 at 01:28:36AM +0200, Marek Marczykowski-G=C3=B3recki w=
rote:
> On Fri, May 09, 2025 at 01:13:28AM +0200, Paul Menzel wrote:
> > Dear Marek, dear Vitaly,
> >=20
> >=20
> > Am 09.05.25 um 00:41 schrieb Marek Marczykowski-G=C3=B3recki:
> > > On Thu, May 08, 2025 at 09:26:18AM +0300, Lifshits, Vitaly
> > > > On 4/21/2025 4:28 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > > > > On Mon, Apr 21, 2025 at 03:19:12PM +0200, Marek Marczykowski-G=C3=
=B3recki wrote:
> > > > > > On Mon, Apr 21, 2025 at 03:44:02PM +0300, Lifshits, Vitaly wrot=
e:
> > > > > > >=20
> > > > > > >=20
> > > > > > > On 4/16/2025 3:43 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > > > > > > > On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits, Vitaly =
wrote:
> > > > > > > > > Can you please also share the output of ethtool -i? I wou=
ld like to know the
> > > > > > > > > NVM version that you have on your device.
> > > > > > > >=20
> > > > > > > > driver: e1000e
> > > > > > > > version: 6.14.1+
> > > > > > > > firmware-version: 1.1-4
> > > > > > > > expansion-rom-version:
> > > > > > > > bus-info: 0000:00:1f.6
> > > > > > > > supports-statistics: yes
> > > > > > > > supports-test: yes
> > > > > > > > supports-eeprom-access: yes
> > > > > > > > supports-register-dump: yes
> > > > > > > > supports-priv-flags: yes
> > > > > > > >=20
> > > > > > >=20
> > > > > > > Your firmware version is not the latest, can you check with t=
he board
> > > > > > > manufacturer if there is a BIOS update to your system?
> > > > > >=20
> > > > > > I can check, but still, it's a regression in the Linux driver -=
 old
> > > > > > kernel did work perfectly well on this hw. Maybe new driver tri=
es to use
> > > > > > some feature that is missing (or broken) in the old firmware?
> > > > >=20
> > > > > A little bit of context: I'm maintaining the kernel package for a=
 Qubes
> > > > > OS distribution. While I can try to update firmware on my test sy=
stem, I
> > > > > have no influence on what hardware users will use this kernel, and
> > > > > which firmware version they will use (and whether all the vendors
> > > > > provide newer firmware at all). I cannot ship a kernel that is kn=
own
> > > > > to break network on some devices.
> > > > >=20
> > > > > > > Also, you mentioned that on another system this issue doesn't=
 reproduce, do
> > > > > > > they have the same firmware version?
> > > > > >=20
> > > > > > The other one has also 1.1-4 firmware. And I re-checked, e1000e=
 from
> > > > > > 6.14.2 works fine there.
> >=20
> > > > Thank you for your detailed feedback and for providing the requested
> > > > information.
> > > >=20
> > > > We have conducted extensive testing of this patch across multiple s=
ystems
> > > > and have not observed any packet loss issues. Upon comparing the me=
ntioned
> > > > setups, we noted that while the LAN controller is similar, the CPU =
differs.
> > > > We believe that the issue may be related to transitions in the CPU'=
s low
> > > > power states.
> > > >=20
> > > > Consequently, we kindly request that you disable the CPU low power =
state
> > > > transitions in the S0 system state and verify if the issue persists=
=2E You can
> > > > disable this in the kernel parameters on the command line with idle=
=3Dpoll.
> > > > Please note that this command is intended for debugging purposes on=
ly, as it
> > > > may result in higher power consumption.
> > >=20
> > > I tried with idle=3Dpoll, and it didn't help, I still see a lot of pa=
cket
> > > losses. But I can also confirm that idle=3Dpoll makes the system use
> > > significantly more power (previously at 25-30W, with this option stays
> > > at about 42W).
> > >=20
> > > Is there any other info I can provide, enable some debug features or
> > > something?
> > >=20
> > > I see the problem is with receiving packets - in my simple ping test,
> > > the ping target sees all the echo requests (and respond to them), but
> > > the responses aren't reaching ping back (and are not visible on tcpdu=
mp
> > > on the problematic system either).
> >=20
> > As the cause is still unclear, can the commit please be reverted in the
> > master branch due adhere to Linux=E2=80=99 no-regression policy, so tha=
t it can be
> > reverted from the stable series?
> >=20
> > Marek, did you also test 6.15 release candidates?
>=20
> The last test I did was on 6.15-rc3. I can re-test on -rc5.

Same with 6.15-rc5.

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--n/MWWdr08H3gZy0e
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmgdSZwACgkQ24/THMrX
1yzoAQgAioPuDagIQxZe0pqULGrZjcrKqwKAiq91lo8jeuvVdB7Yd8j9r++ORea9
uKZ9wGXKSwB8ZXBJ628zNTRbNUcLlCToAqmHkxXFvLk839u9G55nvVW6g8aT6Ahg
zBkvllcehFRPSLPd0KfHPVaeoj6squmhG8TnFs/bsn/heimrnCHIzCU7RayK2tim
UBRAwloLWZJmk5+p+fIvYoODDlvpUlXY8/pnaRFWb2YOMX+ylFzCF1MEelNh36VN
w1WCAlylz7kMG0bp0NuVEequjHbOU+7A2ppHPQdEjFMj4h6bDvprc1SnzTG+0GR/
AMGxAIrdhQnrGDsKREVZsassJjIG4Q==
=NlgR
-----END PGP SIGNATURE-----

--n/MWWdr08H3gZy0e--
