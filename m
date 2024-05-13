Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5536E8C48A1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 23:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9261A409AF;
	Mon, 13 May 2024 21:05:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y9OP6mWbqYEu; Mon, 13 May 2024 21:05:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE911408BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715634358;
	bh=y7lPqf6Kbd8pfKb7R0gWDlNSm18f/VWp7Do2LxaEh3w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Jyog25kcw3OAaVjXeQFGeofeHkj3NCHfC0KQXEtiLRjNXFalJso5TYYGGhxIZQ95M
	 OTJoZYxWuYbHwgtgE+Li3JSgDUZhoEqZpTvlu6XX994srqm1erXMuGXV4szsTWn6F/
	 auudPFVJAE7OQJw3QzvsX1jOlc6AntvlWBMGzP/ry/TX+2fNRQnUztP68GSK/4byhx
	 3nRw37ZuShH9nN8R5CjEO5535B/CfNXqpnjM/3vl47/dZnPPXcg6OoKqpl4H0NhMU6
	 21UXO7YCERIi9cSnz16HP0hKe0ct03Dhm3N8PCweKueCVplOmGpLoJJKP03SlT1TeS
	 OTCZVgpk9YAHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE911408BC;
	Mon, 13 May 2024 21:05:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 59DE61BF86C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 52B4960889
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:42:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DAzObuf2NHEy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 08:42:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=bagasdotme@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7C5CD60665
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C5CD60665
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C5CD60665
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:42:54 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-1ec69e3dbcfso30530485ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 01:42:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715589774; x=1716194574;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=y7lPqf6Kbd8pfKb7R0gWDlNSm18f/VWp7Do2LxaEh3w=;
 b=fmiiu+8A4QUfbFZ7j4JcogCvBhQ8q1++0I+s2/hAYvCjk4HmW6GfbwcvMFh35WWVk4
 VFyCIt8mRbhM5Bm2mdT0SUMoKoAyUNQY6q3wga0vg9KOYWaYnLGid2FeypPiFedwXkgF
 MpPe0p7YJsTiFYEClU424Wui5hdG1+8Win5qhDf5uUNMLzcUM0c995WkfRzV5WcNRY2s
 JdDuWE2mKzWPxuCvm6cq98d+60Jcm2y/7CIy8Gj3O/1kepbtl2iyQln7llbJoJCFXOUZ
 3h5vEo7fU/bFC/UrIRJ+5bhIoO7tsf9+c+N7ciLLQ2pbUtHREiVTODD3txjvGSas2lY8
 lHBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVBYOmgKZsPcAC6Oe804Wj1fWH+zfTtasIdc4kLXmywKDDKy1Cf8QpyPraY3C8s+l31F+jsASRUt7sWIbAt/IyYeH3+UHpnuGCHfypwfBA/uw==
X-Gm-Message-State: AOJu0Yz8TevzSqP82Is9QzMqgSyIjLO96zzQRC41oyUTw46oQF1J8C76
 2oGIXRShr6+JBlNP/lXPVrlyURCi8L15B7XewxUJR0WkQAFDgM6QChko4w==
X-Google-Smtp-Source: AGHT+IG75rkNOpcpo5GhLpsIDduIrQUEWF6yC924gDigs5v7pfDFIFCXraNZ7Di0/yOikq6t4XIz3Q==
X-Received: by 2002:a17:903:1251:b0:1eb:5344:6a01 with SMTP id
 d9443c01a7336-1ef4404a25bmr103311395ad.44.1715589773717; 
 Mon, 13 May 2024 01:42:53 -0700 (PDT)
Received: from archie.me ([103.124.138.155]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1ef0bf31a32sm75607045ad.123.2024.05.13.01.42.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 May 2024 01:42:53 -0700 (PDT)
Received: by archie.me (Postfix, from userid 1000)
 id EB5A2181C8FA4; Mon, 13 May 2024 15:42:50 +0700 (WIB)
Date: Mon, 13 May 2024 15:42:50 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Regressions <regressions@lists.linux.dev>,
 Linux Networking <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org
Message-ID: <ZkHSipExKpQC8bWJ@archie.me>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="2ae47ss+eiIbn41c"
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 13 May 2024 21:05:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715589774; x=1716194574; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=y7lPqf6Kbd8pfKb7R0gWDlNSm18f/VWp7Do2LxaEh3w=;
 b=eRjdN5tYQeOduGHSp2opAWKOd1UcQczPhYHolaNwXtDJtpQAGn6vWrdr9v/p1mzV0c
 ekE812DXVPhpapulAq0H62Fi9yiUJDyr+p+8KQgtPeM5Kem8RU7brMMuqqpAiNHLAx+e
 eRW/1jt0tESykODrFU8E37tl1SUU8wJEGeei+NX51x3TqRhvSHtT5IAekq3knTAD6B2b
 6F+u0+flW4NulG0AghXnuLrEuwDtzoPCGXned2BQVQmIiMfKNTw33jaS5kM5NIzccKgK
 BFZr/PU/cdpQJyQ8xBA3P0K7XhQA68q8ICWVfO612h2uTHz120xy+/QbPzirEGMkOvO/
 kIiQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=eRjdN5tY
Subject: [Intel-wired-lan] Regression of e1000e (I219-LM) from 6.1.90 to
 6.6.30
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
Cc: lukas.probsthain@googlemail.com, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--2ae47ss+eiIbn41c
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

<lukas.probsthain@googlemail.com> reported on Bugzilla
(https://bugzilla.kernel.org/show_bug.cgi?id=3D218826) regression on his Th=
inkpad
T480 with Intel I219-LM:

> After updating from kernel version 6.1.90 to 6.6.30, the e1000e driver ex=
hibits a regression on a Lenovo Thinkpad T480 with an Intel I219-LM Etherne=
t controller. The system experiences a freeze when an Ethernet cable is plu=
gged in. The issue is not present in the previous kernel version 6.1.90.
>=20
> System Information:
> - Model: Lenovo Thinkpad T480
> - BIOS Version: N24ET76W (1.51) dated 02/27/2024
> - Ethernet Controller: Intel Corporation Ethernet Connection (4) I219-LM =
(rev 21)
> - Kernel Module in Use: e1000e
> - Operating System: Manjaro Linux, kernel version 6.6.30-1
>=20
> Steps to Reproduce:
> 1. Boot system with kernel version 6.6.30.
> 2. Connect the Ethernet cable to the laptop.
> 3. Observe that the system freezes.
>=20
> Expected Behavior:
> The system should remain stable and maintain network connectivity without=
 freezing when the Ethernet cable is connected.
>=20
> Actual Behavior:
> The system freezes immediately upon plugging in the Ethernet cable.
>=20
> Additional Information:
> The regression seems to be introduced in one of the updates between kerne=
l versions 6.1.90 and 6.6.30. The issue does not occur with the older kerne=
l version 6.1.90.

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--2ae47ss+eiIbn41c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZkHSigAKCRD2uYlJVVFO
o0Z/AQCIkJz7plid8wPPU7db5xKtA7Ftq60HC/uJ7718jfmBkgEAtvtduKsDn2CB
sliUh8IN6Cx7oNQTIYq+Il73paLXMAk=
=lNxt
-----END PGP SIGNATURE-----

--2ae47ss+eiIbn41c--
