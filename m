Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2587D7EC857
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 17:20:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9F7E4223E;
	Wed, 15 Nov 2023 16:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9F7E4223E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700065223;
	bh=to/0q8vbNwZcplrFMIvktNIJL6b6p9WH/asQq6VufMU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8/4UlWlAKlzRC9Chvtap2+R08k19NjVRGhykJWTzZxxm7V1zfa37kzDFIwUMfcZsc
	 sG52sMEgW5jZjj3K2HYliSmcHRwoUtWvW02HNBqmhoPEbIdBrA3/AYVaSTKFk82kZ2
	 D1R6EeFEA+JBvnf7lcIv+83ptej0orfo7U5JQwD8ZRNQ4zhj6Zc2Yx9Ti13U6bPQcL
	 Kem2pGKtbJCV7ejV/lSI0/IzjoCt2O0Ns2foBRFWLXrLsbW5H/N4lraE0jqapgwl9w
	 jQrgW8w1tQQt6wXCxqoWLp2FOT5QL/X/LXURru/BzgAkhV5yqPvJpdeZLIAxtiQZlx
	 VrtRO7Z3Q0xfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KPXmg2BbM7Ll; Wed, 15 Nov 2023 16:20:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AFCF41F68;
	Wed, 15 Nov 2023 16:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AFCF41F68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E7AC1BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 13:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 326028219F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 13:04:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 326028219F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7b1qwOZ4QUp0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 13:04:15 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A0A581EB5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 13:04:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A0A581EB5
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-1cc5fa0e4d5so60610285ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 05:04:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700053454; x=1700658254;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OkYOVnrNszXvWvkQGHx/ExOJXa42vN+162FNhiylr54=;
 b=GrrAOGfgo9meDLnGNMuRGHXHRrsJXQPOB0Ove8ISdm/UUSlTYhISqSgK7c1egB761U
 wiPPPE7tHUWDxgTyZpd4O39YB0wPLKz62fYiPx38XctIYtbElpev1hhSh+dNtlIHqPE9
 0Mj5IpfZrrE3Tn5InH1Nx3jlESEsrQrvTDdD3K9spV5Tkxc/ck2C5mRK+5+mqg6KjUc3
 tOhDYqVhMAeJ3icdV5AdNfnY03mxAwm1bK+XBcR1L66lsNPXBCw9XktAd1psdVHeX8MF
 rI4Vn2cP8t9wDS7aJo0LGY/Lea6Gv+Kf5kIW5WWc8LUffOD8QwByBmTs5rZgvoT099DL
 1DnA==
X-Gm-Message-State: AOJu0YycyXxbTIVRyo9E4SACNk7RixtEvLOJdHYmwRZbDC4JpA2nP0ew
 ajroUAlAAWnrhbxRWXyOMDI=
X-Google-Smtp-Source: AGHT+IFoJc5v2jLX5P6naZxuHnJGL8hluqhvmcPS71ADf+fwTIah/n7HHi6vjowFiwV9Es0U4e+6Hg==
X-Received: by 2002:a17:902:e88e:b0:1c5:6157:f073 with SMTP id
 w14-20020a170902e88e00b001c56157f073mr5749438plg.11.1700053454452; 
 Wed, 15 Nov 2023 05:04:14 -0800 (PST)
Received: from archie.me ([103.131.18.64]) by smtp.gmail.com with ESMTPSA id
 s14-20020a170902ea0e00b001cc2c6cc39asm7327074plg.243.2023.11.15.05.04.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Nov 2023 05:04:13 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
 id 2CD7C10D2CF4C; Wed, 15 Nov 2023 20:04:08 +0700 (WIB)
Date: Wed, 15 Nov 2023 20:04:08 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Regressions <regressions@lists.linux.dev>,
 Jay Vosburgh <jay.vosburgh@canonical.com>
Message-ID: <ZVTByHx1HfYds_v-@archie.me>
References: <986716ed-f898-4a02-a8f6-94f85b355a05@gmail.com>
 <32716.1700009673@famine>
 <0f97acf9-012d-4bb2-a766-0c2737e32b2c@leemhuis.info>
MIME-Version: 1.0
In-Reply-To: <0f97acf9-012d-4bb2-a766-0c2737e32b2c@leemhuis.info>
X-Mailman-Approved-At: Wed, 15 Nov 2023 16:19:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700053454; x=1700658254; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=OkYOVnrNszXvWvkQGHx/ExOJXa42vN+162FNhiylr54=;
 b=l0UPWnXG+CsINerbeCMTMwbql9kSakdAYRICC7g8cAzasYoN0F4suqApIgZM0eC9Bw
 paUt/T3w4SoLzDQVpNizmOsyhw9v4YTDMTIyDr76epH1ndZH7w1GVk48/4M7lntu8szC
 H04+4U5ks5q/HhFvFkdcijJ4pRwu8QreoxV4+3unq+Xei2DE964wT7PzHMzcgHqArB07
 E4v7JUIh0ast37A8wezCOSDLB+6WXCT5ao3Y9EEUERU/rQkhZfsix3NysRzwAMkbGKYX
 Hso+t/BmLJR4V7kpVvat8/FnHUti13mjhCrs7rPo3hvth/EQnnFJNwn1SfDMVk11lxC/
 ZT6w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=l0UPWnXG
Subject: Re: [Intel-wired-lan] sr-iov related bonding regression (two
 regressions in one report)
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
Cc: Anil Choudhary <anilchabba@gmail.com>,
 Linux Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Linux Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: multipart/mixed; boundary="===============6016672906675455683=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============6016672906675455683==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HhXcdjV1bC1Xdz0l"
Content-Disposition: inline


--HhXcdjV1bC1Xdz0l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 06:50:26AM +0100, Linux regression tracking (Thorst=
en Leemhuis) wrote:
> On 15.11.23 01:54, Jay Vosburgh wrote:
> > Bagas Sanjaya <bagasdotme@gmail.com> wrote:
> >=20
> >> I come across LACP bonding regression on Bugzilla [1].
>=20
> Side note: Stephen forwards some (all?) network regressions to the right
> people:
> https://lore.kernel.org/all/20231113083746.5e02f8b0@hermes.local/
>=20
> Would be best to check for that, no need to forward things twice, that
> just results in a mess.
>=20
> >> The reporter
> >> (Cc'ed) has two regressions. The first is actual LACP bonding
> >> regression (but terse):
> >>
> >>> Till linkx kernel 6.5.7 it is working fine, but after upgrading to 6.=
6.1 ping stop working with LACP bonding.
> >>> When we disable SR-IOV from bios , everything working fine
>=20
> Makes me wonder if things have been working with or without the OOT
> module on 6.5.7, as strictly speaking it's only considered a kernel
> regression if thing worked with a vanilla kernel (e.g. without OOT
> modules) beforehand and broke when switching to a newer vanilla kernel.
> If that's the case it would be okay to add to regzbot.
>=20
> >> And the second is out-of-tree module FTBFS:
> > [... skip OOT stuff ...]
> >=20
> >> Should I add the first regression to regzbot (since the second one
> >> is obviously out-of-tree problem), or should I asked detailed regressi=
on
> >> info to the reporter?
> >=20
> > 	My vote is to get additional information.  Given the nature of
> > the workaround ("When we disable SR-IOV from bios , everything working
> > fine"), it's plausible that the underlying cause is something
> > platform-specific.
>=20
> Maybe, but when it comes to the "no regressions" rule that likely makes
> no difference from Linus perspective.
>=20
> But I guess unless the intel folks or someone else has an idea what
> might be wrong here we likely need a bisection (with vanilla kernels of
> course) to get anywhere.
>=20

OK, thanks!

--=20
An old man doll... just what I always wanted! - Clara

--HhXcdjV1bC1Xdz0l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZVTBxAAKCRD2uYlJVVFO
ox6sAP40u0SKVLzT4BNbDjtm94gpIOlXkZH3Ws+BPEiboL4k3gEApxdqq7NlgEAD
GyJzIx/ubZyOfPDwwwJIr67RSLUaZQg=
=OikB
-----END PGP SIGNATURE-----

--HhXcdjV1bC1Xdz0l--

--===============6016672906675455683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6016672906675455683==--
