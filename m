Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D54A7EC859
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 17:20:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD86F4223C;
	Wed, 15 Nov 2023 16:20:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD86F4223C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700065227;
	bh=77WkxbmC4LEuOPKJU7f1JfBwF8m77rRbYLuk9rOVKfU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xDdZjuzVjdMnOTPnb+Qy1SE9q7cJ1vGniPI5JbSGd1Hi+bwlOW4tfhdUTPyyYKXDC
	 tkMNuPYrupZt+yd2JMr5/EMhFbD9kP9s3ooJD0Eafi23dBBpOGYhf6qbnmhCLxDwns
	 7n/CCNkB6cRQkwJ/MEi50fMnDZnsN2dzJjPGKxW2lHOp/JDxHoeCb1Ekq/XzBuf5ef
	 yvLxlwg8G0fc9oA/mPUxpWbcryz+f3pDOI8igwSsg/QxA6RG2hh1kC/ZJVtBbSLEdd
	 1fkF6te4R7wsrHpDw3O4iQUL7owmtMk5x+OmG73db5GkzPQ2Oi06NhVH8Gq2DejQaS
	 9zq5HKIvTr7Yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TmNqrNJQcUkX; Wed, 15 Nov 2023 16:20:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B0BA41F68;
	Wed, 15 Nov 2023 16:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B0BA41F68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 69CCF1BF363
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 13:08:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4778281E45
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 13:08:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4778281E45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LcYdLippV28g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 13:08:54 +0000 (UTC)
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com
 [IPv6:2607:f8b0:4864:20::12c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 955B881E0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 13:08:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 955B881E0E
Received: by mail-il1-x12c.google.com with SMTP id
 e9e14a558f8ab-35ab17957c3so15695655ab.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 05:08:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700053733; x=1700658533;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2G7KKhFVeQmxaFRbIzLkNzcWPuqBCIhAsSh4RiIuT1I=;
 b=ZghyAqI/pgpB++n0suex48I/B1Bvj634TMJTe36RWUkUaY0gk87ZJanAJaeWRsAjDG
 D46ovge9BcrYIEx1adpf8QzVxDBzcnxqYByVT2AomR4+JEfJupyjnOMg/uogYrb877js
 AVlxEFTHDfIvGN58b6sIdMn59fFkuYaHIMt4/N42COftg1czE72XAp3e0rlg5IMkdDWK
 pBnuClM36LdSGECv9FP8U6usHisBTNnFeIV+3ax4RWhGaQtnJdMLiEAGV0i+TNQl0z2I
 lUKQIJFTVU+lSD+xSiyqhYw1/CWln1HnGwzQRNUS7AogyLRh2TgDw/tSWd0kas3sC1/S
 /tJA==
X-Gm-Message-State: AOJu0YyR1vq2JjOrcWyNnxYn9xCL2eB8iFM/z5KnNjAixx75OmgPYqfv
 Ns+43ZQhNt4W401BmYZ8G3Q=
X-Google-Smtp-Source: AGHT+IGncX9Sp484saKBYPhrt6VsYQAv9Vd4w8EynNKUe9Jg4dSABTLWDpVC1bdKnnXmLG7qErBq7w==
X-Received: by 2002:a05:6e02:1d1e:b0:351:5acb:281 with SMTP id
 i30-20020a056e021d1e00b003515acb0281mr16123680ila.31.1700053733533; 
 Wed, 15 Nov 2023 05:08:53 -0800 (PST)
Received: from archie.me ([103.131.18.64]) by smtp.gmail.com with ESMTPSA id
 g2-20020a63fa42000000b005af08f65227sm1161196pgk.80.2023.11.15.05.08.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Nov 2023 05:08:53 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
 id 8D3D210D2CF4C; Wed, 15 Nov 2023 20:08:49 +0700 (WIB)
Date: Wed, 15 Nov 2023 20:08:49 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Anil Choudhary <anilchabba@gmail.com>,
 Linux Regressions <regressions@lists.linux.dev>
Message-ID: <ZVTC4WYHVdXpMlGj@archie.me>
References: <986716ed-f898-4a02-a8f6-94f85b355a05@gmail.com>
 <32716.1700009673@famine>
 <0f97acf9-012d-4bb2-a766-0c2737e32b2c@leemhuis.info>
 <EFC5ADF4-1EE4-4900-B250-AC35656DC68B@gmail.com>
MIME-Version: 1.0
In-Reply-To: <EFC5ADF4-1EE4-4900-B250-AC35656DC68B@gmail.com>
X-Mailman-Approved-At: Wed, 15 Nov 2023 16:19:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700053733; x=1700658533; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=2G7KKhFVeQmxaFRbIzLkNzcWPuqBCIhAsSh4RiIuT1I=;
 b=H7OheITzbj9a2AvTiA0Ptar8tk3rsjI9d4bywLrJ4c9SkFlKsLARC1uVr0kv1z6lPO
 hQwrllQ614sFwoibkTM6gpbfg1pExV3K77oJ5bLcZYDghX12owLngVeaePrKnoNWFsb1
 uzub/7FfYEvzaIUtbHtCnHDg2gobb1nxwgZp/7LA7uF3aLN3yprimbR7hbJXbCdXQkVW
 i54d6Xi0ZhMScvaUSOotDADVw3Nx/sGSzGWqDBzkuqs6iWt4FjyhFzy3e4gbdMxt7tWV
 daZglxfEq3Q0uEjs0XsOq7isy9fecG367kPuVHMzWJuQigtFnq/V0MZshOWfhLhiQun5
 WFWg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=H7OheITz
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
Cc: Eric Dumazet <edumazet@google.com>,
 Linux Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Linux Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: multipart/mixed; boundary="===============4300365618093595376=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============4300365618093595376==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gSEusbUJJj55spLS"
Content-Disposition: inline


--gSEusbUJJj55spLS
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 14, 2023 at 10:13:20PM -0800, Anil Choudhary wrote:
> Its not hardware issue when I do rmmod iavf ping started working .
> So issue is certainly in this kernel and with sriov only
> Iavf id Nic driver for VF(sriovnic)
>=20
>=20

Please don't top-post; reply inline with appropriate context instead.

So you have this regression on vanilla kernel, right? If so, please
bisect (see Documentation/admin-guide/bug-bisect.rst in the kernel
sources for reference).

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--gSEusbUJJj55spLS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZVTC4QAKCRD2uYlJVVFO
ozl7AQCiSqoKyASKox740kkcu7j+siyKKyJXruoehKgsCPd1LAEA26VtD2CPSqwh
y4FW2w4+L9KPEdjbyzmPH47DduTREgc=
=YJK6
-----END PGP SIGNATURE-----

--gSEusbUJJj55spLS--

--===============4300365618093595376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4300365618093595376==--
