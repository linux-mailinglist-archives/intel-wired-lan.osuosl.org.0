Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A893A951AA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Apr 2025 15:28:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 785FC80D6A;
	Mon, 21 Apr 2025 13:28:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B1Zar6ZmFesw; Mon, 21 Apr 2025 13:28:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3DCF80D81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745242100;
	bh=0qVkw3Shy50bKVumUVEOY0hrPGUdQGC9Px7ESgUdwPI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FlJf8rWGO+vFXoG7oAmOeAd6LMGInaw5xye04YIAOyflIOuJR2m34WWzFfCyoYj4e
	 sbtdwy+PDxOsHfV0Z6eeJd3ymB3MxK5Kz27EFDbcqbOweZ6P0Xynw4l3i/NUm7mOmK
	 IgEemOIsppJETOWwc+wl4OHJ5efG+vDrjKFGpx695hX5FuhN3/MMbtwhKMz7ABwFy1
	 CfDYQpIbzigCWTv1QVSGvnHVQb9+f4JX4HVPsSrnyH0kHi8NapErvQyLSZmznBkfwg
	 HAc1HQ6oIdi00VW2DWW609eirs7C1q+ZqTSFDd/jtcmiGwL7DM7ATQrrepFxYqQBjf
	 PlDEfQ9eWFF3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3DCF80D81;
	Mon, 21 Apr 2025 13:28:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 482B868
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 13:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 396136085F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 13:28:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dFt3k4vPFUnI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Apr 2025 13:28:18 +0000 (UTC)
X-Greylist: delayed 541 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 21 Apr 2025 13:28:18 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 59466607D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59466607D3
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.149;
 helo=fout-a6-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
Received: from fout-a6-smtp.messagingengine.com
 (fout-a6-smtp.messagingengine.com [103.168.172.149])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59466607D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 13:28:18 +0000 (UTC)
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfout.phl.internal (Postfix) with ESMTP id 2EF6913801E1;
 Mon, 21 Apr 2025 09:28:17 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Mon, 21 Apr 2025 09:28:17 -0400
X-ME-Sender: <xms:8EcGaA0nCNkqsGCB3-A5JGrfK6zazK-dAkfTWJIRLWAu3jjK-P40xA>
 <xme:8EcGaLFqgEksz8DbdJkEi6aA3FY2cJnhB7OJKqWYLpFKyo7MjhnrVbrkKCwVLHWnH
 TmIG_Wa6lZeEQ>
X-ME-Received: <xmr:8EcGaI7LFHxmY0cOnK-PUxsH7CZreptB7y_63gMfTC_VJoeNji9d2sUTKi7a3W2Ro1t9lMiUn2fOTRTfGQWm3ui5SNlrCe0Ljg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvgedtleejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesghdtreertddt
 jeenucfhrhhomhepofgrrhgvkhcuofgrrhgtiiihkhhofihskhhiqdfikphrvggtkhhiuc
 eomhgrrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecu
 ggftrfgrthhtvghrnhepgfduleetfeevhfefheeiteeliefhjefhleduveetteekveettd
 dvgeeuteefjedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
 rhhomhepmhgrrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
 dpnhgspghrtghpthhtohepkedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepvhhi
 thgrlhihrdhlihhfshhhihhtshesihhnthgvlhdrtghomhdprhgtphhtthhopehjvghssh
 gvrdgsrhgrnhguvggsuhhrghesihhnthgvlhdrtghomhdprhgtphhtthhopegrnhhthhho
 nhihrdhlrdhnghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtthhopehnvghtuggvvh
 esvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehinhhtvghlqdifihhrvggu
 qdhlrghnsehlihhsthhsrdhoshhuohhslhdrohhrghdprhgtphhtthhopehrvghgrhgvsh
 hsihhonhhssehlihhsthhsrdhlihhnuhigrdguvghvpdhrtghpthhtohepshhtrggslhgv
 sehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshgrshhhrghlsehkvghrnh
 gvlhdrohhrgh
X-ME-Proxy: <xmx:8EcGaJ2rh5PwY3x0_lr2Ab43gObWDK2UoFCwret-rkg08bf2I00Ksw>
 <xmx:8EcGaDHk8ks_ttZLUUMRGZarUIM1Fxox91PpBtZbUqb0m3_0ey5KOQ>
 <xmx:8EcGaC_LgeuqN_3HAJFOhwcf8x9DXFombyislo9_SfGgpb-tTGyFBQ>
 <xmx:8EcGaIlOwWa2FZYzEMxrYp0Z65b3x0Q0CLRI7jffDIZpQzAXIMmtZQ>
 <xmx:8UcGaM4lhdbQpb3Ng1Ox1ioxy2jfwtF3pm7lAz8N1PTTqoYOTWc-qptw>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 21 Apr 2025 09:28:15 -0400 (EDT)
Date: Mon, 21 Apr 2025 15:28:13 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
 stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Message-ID: <aAZH7fpaGf7hvX6T@mail-itl>
References: <Z_z9EjcKtwHCQcZR@mail-itl>
 <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com>
 <Z_0GYR8jR-5NWZ9K@mail-itl>
 <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
 <b5d72f51-3cd0-aeca-60af-41a20ad59cd5@intel.com>
 <Z_-l2q9ZhszFxiqA@mail-itl>
 <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com>
 <aAZF0JUKCF0UvfF6@mail-itl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="905i3CbqCZm+HHvF"
Content-Disposition: inline
In-Reply-To: <aAZF0JUKCF0UvfF6@mail-itl>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1745242097;
 x=1745328497; bh=0qVkw3Shy50bKVumUVEOY0hrPGUdQGC9Px7ESgUdwPI=; b=
 BBCtm0r21NtdT/wx7sN6S5nvF196m6MHLg778hwYFYxru1XxmE9GRjwCR32vfYRQ
 rsBT6hwdRFwrDZILrlmO0o8/fLc1j1A+FG4rWW8mQBSrICcTmBUxbJpWa7Wh0zDf
 DCmbESiUWqvJHXBPryXEEU+GXKjX2obVEsjTU2xoAaK4yrl3RHus+Y86Lbcpdp63
 1A46dnrM5RZAn+tWN3g0EWNvzpQy2d155f44gr2NVP7h/lxsIcpdF6BJvaAgXDHR
 oclUqTX5C+Mxwrh6zk4m1GHrlPbkmaTa94yUyLr1LQU1zaJwUR5t/FQ1OZBVLnv1
 60HBXlgyIc7rraxGpEuTug==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1745242097; x=1745328497; bh=0qVkw3Shy50bKVumUVEOY0hrPGUdQGC9Px7
 ESgUdwPI=; b=IsHkOrr1D9U44QgLYMugomS5SZH2D/6JiOmoUSK7JAslfQ3I9Fs
 cbfBjJjADNpu/ec/96xTVHwCtZ62/EUAiiM9aLA9vG/i3B3KVT/X6t9aD1TnfmSe
 EfxGqd+Q4dhXXbkNbpULorYiqNLrC2vdd2TX8K5acxE67hQKPsnkpvHMNff9P8IV
 iszTUGWzUjwlnhz5AaWZU9wwkqXk7o6u2XHpjdCtjrbrbR0pb3hp8pEdnBuBOcCG
 kyuocuHiLTX8yKsQhecLyVwVoUnr8w9v58wljoFmrvCRY0ZWdVJwVvaHQQgH4cSj
 YrnPLPLOgunEOLT5hl10AaT9mCYe0CeIXWg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm2
 header.b=BBCtm0r2; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=IsHkOrr1
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


--905i3CbqCZm+HHvF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 21 Apr 2025 15:28:13 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
	stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2

On Mon, Apr 21, 2025 at 03:19:12PM +0200, Marek Marczykowski-G=C3=B3recki w=
rote:
> On Mon, Apr 21, 2025 at 03:44:02PM +0300, Lifshits, Vitaly wrote:
> >=20
> >=20
> > On 4/16/2025 3:43 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > > On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits, Vitaly wrote:
> > > > Can you please also share the output of ethtool -i? I would like to=
 know the
> > > > NVM version that you have on your device.
> > >=20
> > > driver: e1000e
> > > version: 6.14.1+
> > > firmware-version: 1.1-4
> > > expansion-rom-version:
> > > bus-info: 0000:00:1f.6
> > > supports-statistics: yes
> > > supports-test: yes
> > > supports-eeprom-access: yes
> > > supports-register-dump: yes
> > > supports-priv-flags: yes
> > >=20
> >=20
> > Your firmware version is not the latest, can you check with the board
> > manufacturer if there is a BIOS update to your system?
>=20
> I can check, but still, it's a regression in the Linux driver - old
> kernel did work perfectly well on this hw. Maybe new driver tries to use
> some feature that is missing (or broken) in the old firmware?

A little bit of context: I'm maintaining the kernel package for a Qubes
OS distribution. While I can try to update firmware on my test system, I
have no influence on what hardware users will use this kernel, and
which firmware version they will use (and whether all the vendors
provide newer firmware at all). I cannot ship a kernel that is known
to break network on some devices.

> > Also, you mentioned that on another system this issue doesn't reproduce=
, do
> > they have the same firmware version?
>=20
> The other one has also 1.1-4 firmware. And I re-checked, e1000e from
> 6.14.2 works fine there.

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--905i3CbqCZm+HHvF
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmgGR+0ACgkQ24/THMrX
1yxQZQf/YKyAaZ6uRKoItVe64l4tTEHFhwtsfm1XnV8YQ7kifFzR2nqj01vPZccG
GB5o+uI2XY/q927n+QlEemEM+bAt66etky1bC5noOxyZeLbQdUj32e7gG5pb5Gh5
XaUSK4DVQEL3NLzsfV2DQlEDOHaGOWie4Ya/83ic5TyXxbEcqLWRznvA699akDf4
z9XXTLmDfJrdu1qneGDb6p5tzsqkHHdODr3jAtDh/q6GDBEGlJ2wxYz138RJKfVG
i3R+n9n5UwcfQNK4wUg1NX2678f1oT3aLqABYCCvQGN/iscU8C4msM+yZYlZffQd
S80FnW5zu4unYc34FjocJnc1Yp7ovA==
=VB7y
-----END PGP SIGNATURE-----

--905i3CbqCZm+HHvF--
