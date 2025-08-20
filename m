Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5437CB2DE84
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 16:01:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03946823E3;
	Wed, 20 Aug 2025 14:01:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vJizvxKI7BI; Wed, 20 Aug 2025 14:01:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BD0A82416
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755698493;
	bh=Ez8EXaPU6gqo8tF4j2Hkt1XfKuEpB2R1kQAFpXV01ss=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3RdhaqMyo7pphLqeVceCvG37WMXXKAvTRmUrxz8nOBG/oyOarnkM0LheWvODIRf4H
	 XqS47OWTt1w8CeKZUSJ2QGrbeITf4tKG6KMpjaiy9Z2cEF8FRovNuwM6FG0D5Xn1L+
	 DZfV7rfODN9O+ngM2pXauB4LLvnw/FWRQX34w0aBidvKOYRySV/WKnIOHPGziTjJQO
	 gfpL1t7NBTqMjIoYat4QIRE7geW2be5cfs+Lwe0qJYaM2MFzS0HI+Ey65UVK/gBO7y
	 hm2FaSj7c4GPUN3XXVbenTr4se1ku1OxcgZAVHbrGUZ47zlab4pk/fmEz/htc05/2a
	 hdvZTvZDOnhlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BD0A82416;
	Wed, 20 Aug 2025 14:01:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DA33E0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 14:01:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8439540753
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 14:01:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OyD3eRpF6Iz3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 14:01:30 +0000 (UTC)
X-Greylist: delayed 598 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 20 Aug 2025 14:01:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5203D4073F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5203D4073F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.144;
 helo=fout-a1-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
Received: from fout-a1-smtp.messagingengine.com
 (fout-a1-smtp.messagingengine.com [103.168.172.144])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5203D4073F
 for <intel-wired-lan@osuosl.org>; Wed, 20 Aug 2025 14:01:30 +0000 (UTC)
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.phl.internal (Postfix) with ESMTP id 8571AEC0871;
 Wed, 20 Aug 2025 09:51:31 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Wed, 20 Aug 2025 09:51:31 -0400
X-ME-Sender: <xms:49KlaGUfNf2-8VOhh8BP_YiYa_XiLxhe76V3sMmD16xxsJ96uElZng>
 <xme:49KlaNclwn679RPYirJ8Yd76P4ZdLQ0ZFq2ykL7SGBS-i1MOt8puw2tELRmV8cGWb
 IBX8Nby2kqeYQ>
X-ME-Received: <xmr:49KlaCMHDB5nhsUfq8xs_OdbJTFNCCE9oBKtGbSOlENqkjCo0OtAoC9dV3cV0OE06-kt9Ta7ApfqUNr-GcO_Ym7gFCxdz8OK__0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduheekheefucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepfffhvfevuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrrhgvkhcu
 ofgrrhgtiiihkhhofihskhhiqdfikphrvggtkhhiuceomhgrrhhmrghrvghksehinhhvih
 hsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnhepieeuteet
 udegieejjeeuvedvhfeltdeuuedutdejtdetvdeludffveejuedttdeknecuffhomhgrih
 hnpehoiihlrggsshdrohhrghdplhgruhhntghhphgrugdrnhgvthdpmhgrihhlqdgrrhgt
 hhhivhgvrdgtohhmpdhgihhthhhusgdrtghomhdpohhpvghnfigrlhhlrdhnvghtpdhosh
 huohhslhdrohhrghdpkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptden
 ucfrrghrrghmpehmrghilhhfrhhomhepmhgrrhhmrghrvghksehinhhvihhsihgslhgvth
 hhihhnghhslhgrsgdrtghomhdpnhgspghrtghpthhtohepgedpmhhouggvpehsmhhtphho
 uhhtpdhrtghpthhtohepthhimhhordhtvghrrghssehikhhirdhfihdprhgtphhtthhope
 hvihhtrghlhidrlhhifhhshhhithhssehinhhtvghlrdgtohhmpdhrtghpthhtohepihhn
 thgvlhdqfihirhgvugdqlhgrnhesohhsuhhoshhlrdhorhhgpdhrtghpthhtohepvghnqd
 ifvghirdifuhestggrnhhonhhitggrlhdrtghomh
X-ME-Proxy: <xmx:49KlaLiJtvXY4QVdlnlyT1dfEH-WtrOGNMeomm0i5gb_LsBVEaUzkQ>
 <xmx:49KlaF0BNP042Y7Lw7I6cqKhOvVc1Dvo2W6fe4GGx1aa4IH4Atyutw>
 <xmx:49KlaFhYWx1_Fin5iTmOy5pZPXFkCmrU6X7UvF8VKc8uFMedgBeNBw>
 <xmx:49KlaFf7-aDI8jRxBFrq4XqnddmfWt8VDvHbAxglgUB8ndlZyImbYA>
 <xmx:49KlaOiB7tKOxR5Yv3tlWKIB0BoINP7lH2wxrSQ3PjEJv_rWuRSScu9_>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 20 Aug 2025 09:51:30 -0400 (EDT)
Date: Wed, 20 Aug 2025 15:51:28 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: Timo Teras <timo.teras@iki.fi>
Cc: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 intel-wired-lan@osuosl.org, en-wei.wu@canonical.com
Message-ID: <aKXS4IVLImmevNv7@mail-itl>
References: <20250819124326.3346021-1-vitaly.lifshits@intel.com>
 <20250819201032.3873c62b@onyx.my.domain>
 <876ce7de-dc6e-4e98-9cc6-593cfe8ab73d@intel.com>
 <20250820095708.3e3060fb@onyx.my.domain>
 <5b4b31cd-4de4-46bf-b6e0-2ff3270b7c46@intel.com>
 <20250820162614.43226d39@onyx.my.domain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="rUmEUkhUkNps9xcC"
Content-Disposition: inline
In-Reply-To: <20250820162614.43226d39@onyx.my.domain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1755697891;
 x=1755784291; bh=Ez8EXaPU6gqo8tF4j2Hkt1XfKuEpB2R1kQAFpXV01ss=; b=
 iSPHYhZ6T9DSadmnnflCdMRhDN1YKsP6dfiu/WYBWRZKZR394KVEqYpkuYHvJRe/
 J63WjQJv6uhFa44W3/aYWo4HGngD2FGVilaPwN5GUA/HZtwZeB5nnyR5isyH/MTA
 bCvcmJhpxhaexK4eQb2kHJw9iyGRGjVZGdcfvrLwe5sbuSWn1Jq9OznFjxEcKYWY
 P4VhvBvN3YFSrOeSnJOxU5YDPfxyFyYRJqMJqMeKLe+B7BPgPUCw7Vkg/cPDdJHf
 VP0LlZb2grP7fEIsD3lBraRMXds0D9vVky8SsdgV7g41OniHERBo5/vBpEI1Jm/B
 goMYoDhbRWbSwdC/Af4YHw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1755697891; x=1755784291; bh=Ez8EXaPU6gqo8tF4j2Hkt1XfKuEpB2R1kQA
 FpXV01ss=; b=LerAdrgfgyHEN6APBiB38u8ZWlu+OlV3Krg+UdccBdV8mNZZU5N
 sISu/TVROTS3vbpI6oI2V4o8mpngMUPqwIFtVBr+kg1NX0/uRzJ2ffdO0/Mhj5uY
 BqqPbsLjGvKFvHj1QGDC8KWyDewZDw7Ex9/GsiFvmEzGCoDQ/MR9r1qNsniRVbBe
 xlEGKYYS2gvNxLzEkVlTd1jAL8Y+1z4ZG1SqbcavR8EWdloxEaYyGIYibWGyZLPw
 D/btwThdqO5K2pUY26lL3yg6rkK6TdMmJ7s5sM9dcAfMyxuCCdDtdvtnISrE4bWF
 UxHVBvt/LWVwbLP17cE0ljmxT6JuGIoliUg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm3
 header.b=iSPHYhZ6; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=LerAdrgf
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Introduce
 private flag to disable K1
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


--rUmEUkhUkNps9xcC
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 Aug 2025 15:51:28 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: Timo Teras <timo.teras@iki.fi>
Cc: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
	intel-wired-lan@osuosl.org, en-wei.wu@canonical.com
Subject: Re: [PATCH iwl-next v1 1/1] e1000e: Introduce private flag to
 disable K1

On Wed, Aug 20, 2025 at 04:26:14PM +0300, Timo Teras wrote:
> On Wed, 20 Aug 2025 15:38:12 +0300
> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
>=20
> > On 8/20/2025 9:57 AM, Timo Teras wrote:
> >=20
> > >>>
> > >>> Thanks for adding this!
> > >>>
> > >>> However, as a user, I find it inconvenient if the default setting
> > >>> results in a subtly broken system on a device I just from a store.
> > >>>
> > >>> Since this affects devices from multiple large vendors, would it
> > >>> be possible to add some kind of quirk mechanism to automatically
> > >>> enable this on known "bad" systems. Perhaps something based on
> > >>> the DMI or other system specific information. Could something
> > >>> like this be implemented?
> > >>>
> > >>> At least in my use case I have multiple e1000e using laptops on
> > >>> the same link partner working, and only one broken device for
> > >>> which I reported this issue. So at least on my experience the
> > >>> issue relates to specific system primarily (perhaps also
> > >>> requiring a specific link partner for the issue to show up). =20
> > >>
> > >> Unfortunately, there is no visible configuration that allows the
> > >> driver to reliably identify problematic systems.
> > >> If in the future we find such data, then we can improve the
> > >> workaround and make it automatic.
> > >>
> > >> At present, the user-controlled interface is the best we have. =20
> > >=20
> > > Could you look at:
> > >   - drivers/hid/i2c-hid/i2c-hid-dmi-quirks.c
> > >   - drivers/soundwire/dmi-quirks.c
> > >=20
> > > These use dmi_first_match() to match the DMI information of the
> > > system and then apply quirks based on the matching per-system data.
> > >=20
> > > Having similar mechanism in e1000e should be possible, right?
> > >=20
> > > I am happy to provide the needed DMI information from my system if
> > > this works out.
> > >=20
> > > Timo =20
> >=20
> > Hi Timo,
> >=20
> > At the moment, we have no clear knowledge as to which systems may be=20
> > affected, and what common characteristics they share.
> > We are working with vendors to try to narrow it down.
> > You are most welcome to share DMI information from your system. It
> > can help with further investigation.
> >=20
> > However, maintaining a DMI quirk for every single system for which an=
=20
> > issue has been reported is not feasible. Trying to deduce a pattern
> > from a handful of data points can lead to it being too broad or too
> > narrow. Furthermore, it may set up expectations of updating the quirk
> > every time another user comes and says 'your default setting does not
> > work for me'. This can quickly escalate out of control, and generally
> > seems like the wrong approach.
> >=20
> > Ultimately, vendors are best positioned to manage this, as they know=20
> > which of their systems require this parameter. If a list were to be=20
> > maintained, I=E2=80=99d suggest something similar to what Mario propose=
d for=20
> > Dell platforms a few years ago for a different issue:
> > https://patchwork.ozlabs.org/project/netdev/patch/20201202161748.128938=
-4-mario.limonciello@dell.com/
> >=20
> > For now, I prefer not to delay the current patch, acknowledging that=20
> > finding a better solution may take time.
>=20
> Thank you for the continued investigation on the issue!
>=20
> But I find this commit to not fix the reported regression. Nothing
> changes without additional admin/user changes. Things used to work and
> the added/modified K1 support thing is causing a regression.
>=20
> Ubuntu has already reverted the offending patch due to complaints in
> some flavors:
>  https://patchwork.ozlabs.org/project/ubuntu-kernel/patch/20250805071341.=
41797-2-en-wei.wu@canonical.com/
>  https://bugs.launchpad.net/bugs/2115393
>  https://www.mail-archive.com/kernel-packages@lists.launchpad.net/msg5511=
29.html

Qubes OS also has this change reverted in default kernel, for the same
reason:
https://github.com/QubesOS/qubes-issues/issues/9896
https://github.com/QubesOS/qubes-linux-kernel/commit/4fb8c96dd7bd73dda00a89=
d026b6ebefff939a67

We've got several reports of the regression caused by the "e1000e:
change k1 configuration on MTP and later platforms", and _none_
complains after reverting it. And we do have many users on MTL or newer.

> This is what I ended up also doing as it reliably fixes things on every
> model I have, and has not caused any of them to have any other issues
> (including packet loss).
>=20
> At least mainstream Dell Pro and HP Zbook laptops have been reported to
> be broken. See:
>  https://lists.openwall.net/netdev/2025/07/01/57
>  https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/=
048860.html
>=20
> This seems to be the same issue:
>  https://bugzilla.kernel.org/show_bug.cgi?id=3D218642
>=20
> So some questions at this point:
>=20
> If the added K1 configuration does not work and causes regressions,
> could it be reverted and added back when a k1 configuration change that
> can determine the affected systems is ready?
>=20
> Could you explain the commit "e1000e: change k1 configuration on MTP
> and later platforms" more? What does it fix? My understanding it is
> "minor packet loss that may affect some machines"?
>=20
> How many machines / what kind of scenario is affected? Is it fixing a
> more serious issue than the regression it is causing?
> The regression is completely defunct ethernet after unplugging cable.
>=20
> My understanding is that the K1 change affects only power consumption.
> Is this right? How much is the consumption difference? Would it rather
> make sense to disable K1 by default on the potentially affected mac/phy
> versions until a good common denominator is found?

Given the severity of the regression, I'd suggest something like the
above. Have functional configuration by default, and have an option to
potentially improve power consumption. Once criteria when it can be
safely enabled by default are figured out, then it's fine to apply the
improvement by default. But I'd rather have users with functional
ethernet, than slight power (or performance?) improvement at the cost of
completely breaking it for others...

> On the other hand, do you think that asking to have a list of the few
> currently known affected machines (until a simpler common denominator
> can be found) too unreasonable? If the list seems to grow much, it
> would be an indication that the default setting is wrong and changing
> the defaults might be a good idea.

Let me know what info you'd need for such list.

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--rUmEUkhUkNps9xcC
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmil0uAACgkQ24/THMrX
1ywFfAf+JuulSTeUdYPy0uRXLOnnhbUTqxFG7bnWYT/uLqx0tEOcvRwNxyN/9Spp
EJR17oXKq+WkCv5oactYVwDDSMkdbDIoCdUANeUCdzjqmt0d+JlLpmSXwqouDfif
RtFs0LHkBi+bPOBASSCuLSkxjbNaydlwA78ZCx0X36XKZJPJ+D/4crKQEgSPljwE
RO4jCUqqOD+vhmr8v461wp2k3xG6baqGfk77ipvarbBGGsXSQV99Cq2gf+zKkwzk
ZX+f1mNz9MIkyQ2JflPf8q3LLqZlgi4ANjcyUjCQXaUs/JlZCVP/kTOZhx33HCfZ
qq5DYEVjTj1o3/3g+ng8EjEwwv7jtQ==
=GNP5
-----END PGP SIGNATURE-----

--rUmEUkhUkNps9xcC--
