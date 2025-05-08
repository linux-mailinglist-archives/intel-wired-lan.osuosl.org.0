Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4093AB0607
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 00:41:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E22361073;
	Thu,  8 May 2025 22:41:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bGBPT2GNHWgw; Thu,  8 May 2025 22:41:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA9546107F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746744116;
	bh=VhyooSbDZMIl9H6nssdWpcCnSqUmlpGN+MP3g89gs7k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xl/nbrGnVo37XLtF719TwxUzC8vllwxmPSxm8eSpb1Octgq9ZoRl8dUsxm/Ea/m3P
	 36qL4dHg7N4PSILmH5dlDVkUeuUwCf7hLheStdC1KazBQ7+LhBdk61XwHRSavQMCbn
	 fV7OT+LcOfsJJbiGiCEKSLCfi6JwDfQ5J9QnpN3aUNNBbwtuZSxPqCMSe0gIGl5W9o
	 iR9NUQYxWzLWhcmKuQKUVK1TTLQ6cbibYUnwLa0Wt9UKUX7qzpgJZP2I0/OFRQgGJ8
	 vKVLK6f6CL8L0XXe34ICAsY+rlegoEFI3MM7mSoRZN3zTa08x7RNvrgOIdOdC6upmj
	 EGJ3W9SO6JCSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA9546107F;
	Thu,  8 May 2025 22:41:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F65B15A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 22:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 45A8980DF0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 22:41:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eHHuMOhYBSTU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 22:41:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.154;
 helo=fhigh-b3-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4DD0580DEB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DD0580DEB
Received: from fhigh-b3-smtp.messagingengine.com
 (fhigh-b3-smtp.messagingengine.com [202.12.124.154])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DD0580DEB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 22:41:54 +0000 (UTC)
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 0EC7225400EE;
 Thu,  8 May 2025 18:41:53 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-04.internal (MEProxy); Thu, 08 May 2025 18:41:53 -0400
X-ME-Sender: <xms:MDMdaGa_CoOphFTFXptVYDRYag88XXYylFBWPrjgfsv9cujFYyP2-Q>
 <xme:MDMdaJY-h6EQPwfEAhUwh-jx96JcYyZuSR3XvkJvprN4xFGuyO6ipB3yZneryvIRQ
 -xFEaRFBV8XqA>
X-ME-Received: <xmr:MDMdaA_CeAasc107GpBMBt4DUwmndiFBpSeHlP0IAThSOIW5j7SyeLXh_11cDIYGomZaucvmfEj9SFh06vzLDK9TUz5YXjJ5BA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvledtleeiucetufdoteggodetrf
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
X-ME-Proxy: <xmx:MDMdaIqGe2wGDbLyoym4cZiDUNQG7a-ObBYGxPLtYTyk9XAnrb4nVw>
 <xmx:MDMdaBoJ9BoktY3WGncL6lWjxkHNICXBtkCb30wnvJ1kpB2uw3KEUg>
 <xmx:MDMdaGTY8yq9MgAIDxx4wiNu7WM_Gjt1O67BSjl7AyWHkhUF_5HHJA>
 <xmx:MDMdaBqMCgWvOw5lZ7ot8TP1ihqXP6Ac-jdWt25PF-idUCIO01uvKA>
 <xmx:MDMdaNdPV0_TjXIHalq_XB7LYCf4YhLxsmbvc5aOg2xV5Ju8Ybst0tye>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 8 May 2025 18:41:51 -0400 (EDT)
Date: Fri, 9 May 2025 00:41:46 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
 stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Message-ID: <aB0zLQawNrImVqPE@mail-itl>
References: <Z_z9EjcKtwHCQcZR@mail-itl>
 <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com>
 <Z_0GYR8jR-5NWZ9K@mail-itl>
 <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
 <b5d72f51-3cd0-aeca-60af-41a20ad59cd5@intel.com>
 <Z_-l2q9ZhszFxiqA@mail-itl>
 <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com>
 <aAZF0JUKCF0UvfF6@mail-itl> <aAZH7fpaGf7hvX6T@mail-itl>
 <e0034a96-e285-98c8-b526-fb167747aedc@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="ByRfoeeiVZcoSeIO"
Content-Disposition: inline
In-Reply-To: <e0034a96-e285-98c8-b526-fb167747aedc@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1746744112;
 x=1746830512; bh=VhyooSbDZMIl9H6nssdWpcCnSqUmlpGN+MP3g89gs7k=; b=
 dUw5uSudTrZewD8hmlUgYu8m24AL5VLqyf6sD/D2y8zgeCaO5wHG9D/r3EOtDAtK
 rh5U7VC4v/16LEYT06zlsVwSS2n0Ceeb6r9zoBiwwdSmDvt59hl9B9VLuUtrZ2rr
 En3DplLGmpI2ObvYKOvKx7uuyCw471V8XyHYpZ9qRBxFI8BYu7n1a0UuU41oLb0d
 M7wk1lKiIt3Fgo6wvfETDHZ2+uocMTgiseA4y+exEJkJA+jfcI8+AdZvNq2DbVuR
 K+bMC4+e5yLUSzqidcu4FZBpVq4ibt6bZ7owBFZ/BKzti/MdSumHS2enSN735lsp
 5ByB3D8BZ3kvLN9iuwbyfg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1746744112; x=1746830512; bh=VhyooSbDZMIl9H6nssdWpcCnSqUmlpGN+MP
 3g89gs7k=; b=ZPLRDzMU2XFCAZZYz8m8Ev8uebRz4kfSHRe9KU7lQjAZAwKggJy
 OPSldOoTvBsOvHpLi2x4IkIV0Jdn6QK1xjMioPkJceeVfYsA5gfhu9vKG+ir9eHO
 EeTZ25SiMWF9+x1x4aI1Xo6AY/S19vXkyR/7ywMIZh6idORWMRqDMZLm4dCcTVpI
 xhLN4BjWmZPPb2Qu34euHTZNnw6IndZvdJSpa3sY2FidNOi/2/sRKVskhLibaNXm
 yD+WuB1ggRqwQblX1dmfT9+tfleoMVLALrrzffETE/xE0IwPOFGurS6y1UOhKjLN
 Wfxcl3keYBl7ETF/J+dIKTYPs5WbbzXYDxw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm3
 header.b=dUw5uSud; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=ZPLRDzMU
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


--ByRfoeeiVZcoSeIO
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 9 May 2025 00:41:46 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
	stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2

On Thu, May 08, 2025 at 09:26:18AM +0300, Lifshits, Vitaly wrote:
>=20
>=20
> On 4/21/2025 4:28 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > On Mon, Apr 21, 2025 at 03:19:12PM +0200, Marek Marczykowski-G=C3=B3rec=
ki wrote:
> > > On Mon, Apr 21, 2025 at 03:44:02PM +0300, Lifshits, Vitaly wrote:
> > > >=20
> > > >=20
> > > > On 4/16/2025 3:43 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > > > > On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits, Vitaly wrote:
> > > > > > Can you please also share the output of ethtool -i? I would lik=
e to know the
> > > > > > NVM version that you have on your device.
> > > > >=20
> > > > > driver: e1000e
> > > > > version: 6.14.1+
> > > > > firmware-version: 1.1-4
> > > > > expansion-rom-version:
> > > > > bus-info: 0000:00:1f.6
> > > > > supports-statistics: yes
> > > > > supports-test: yes
> > > > > supports-eeprom-access: yes
> > > > > supports-register-dump: yes
> > > > > supports-priv-flags: yes
> > > > >=20
> > > >=20
> > > > Your firmware version is not the latest, can you check with the boa=
rd
> > > > manufacturer if there is a BIOS update to your system?
> > >=20
> > > I can check, but still, it's a regression in the Linux driver - old
> > > kernel did work perfectly well on this hw. Maybe new driver tries to =
use
> > > some feature that is missing (or broken) in the old firmware?
> >=20
> > A little bit of context: I'm maintaining the kernel package for a Qubes
> > OS distribution. While I can try to update firmware on my test system, I
> > have no influence on what hardware users will use this kernel, and
> > which firmware version they will use (and whether all the vendors
> > provide newer firmware at all). I cannot ship a kernel that is known
> > to break network on some devices.
> >=20
> > > > Also, you mentioned that on another system this issue doesn't repro=
duce, do
> > > > they have the same firmware version?
> > >=20
> > > The other one has also 1.1-4 firmware. And I re-checked, e1000e from
> > > 6.14.2 works fine there.
> >=20
>=20
> Dear Marek,
>=20
> Thank you for your detailed feedback and for providing the requested
> information.
>=20
> We have conducted extensive testing of this patch across multiple systems
> and have not observed any packet loss issues. Upon comparing the mentioned
> setups, we noted that while the LAN controller is similar, the CPU differ=
s.
> We believe that the issue may be related to transitions in the CPU's low
> power states.
>=20
> Consequently, we kindly request that you disable the CPU low power state
> transitions in the S0 system state and verify if the issue persists. You =
can
> disable this in the kernel parameters on the command line with idle=3Dpol=
l.
> Please note that this command is intended for debugging purposes only, as=
 it
> may result in higher power consumption.

I tried with idle=3Dpoll, and it didn't help, I still see a lot of packet
losses. But I can also confirm that idle=3Dpoll makes the system use
significantly more power (previously at 25-30W, with this option stays
at about 42W).

Is there any other info I can provide, enable some debug features or
something?

I see the problem is with receiving packets - in my simple ping test,
the ping target sees all the echo requests (and respond to them), but
the responses aren't reaching ping back (and are not visible on tcpdump
on the problematic system either).

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--ByRfoeeiVZcoSeIO
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmgdMy0ACgkQ24/THMrX
1ywpfwgAgaXr4R1HDblvJIBuWQENhB81vk6s0R2CM+y6Can3PiR0JQP4wLO5/ShS
UFZmjEHvg49VVGNVKE4XeYsaeZQz+yYWx38LGRI8RfuFzm4ITN7zSTcIv3ihQOKz
HTnewvpPKIJba1LkFHhmZzq7y0F5ignOaAZhkgfYhxgI3u7x7RUUZLJ4YulA5iaI
ZnACpz914NppIRzAdLY7zWeLtNSK5I4Gt2gSakNT5vSLGh5qTgqRUUsMBMF24i5V
IMd1Ute2aLCPScgBLrtgUgBw8AX2BSp7uNS8pqlH1F/pQdw3LtnshkrW49GWCGP5
xrpSUbxcCsHprXGjENoBb6puUPvdpw==
=Mrw1
-----END PGP SIGNATURE-----

--ByRfoeeiVZcoSeIO--
