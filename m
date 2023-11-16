Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B907EE504
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 17:16:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4878140899;
	Thu, 16 Nov 2023 16:15:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4878140899
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700151359;
	bh=bw60nIvhS2DPCBu5lPS3cMzLla6vupGDN7B/GcprkHY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W+2YpnUl7mJSEKA+B5CtwQHC+/1JLCLLjv3gvXURkS0z3dp/pO0cGxHrOCBhyKKk7
	 8GTd7EizqJQrDe66kx1MhhfeZR32SUJWsLj07S4/zfLwufN5w02hfQQCT+VV2YmIFu
	 Y+1jy4VWznC1PU/ofCVkkSrj9X/fIf6wHGNwm2Ay3Gwkxzzle1g3RdO/DvAKXfoH+b
	 XW+iyIAr+eHb05o/n6Isd4ueY/qpyvgzAgjBRdWMJJ5/KBo+SS30Jo/RPK18Z3jhMy
	 zvbEO3qjEQ4wqB0n0oqjAMgsKKTLhY4dW4fN6682/7xQtnhwHoSf/0C1LdlGe3AVGD
	 SpBM9KRZqDqjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tpq7LQAixqob; Thu, 16 Nov 2023 16:15:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19992408FF;
	Thu, 16 Nov 2023 16:15:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19992408FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 738F81BF32C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 10:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46B4740558
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 10:53:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46B4740558
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wbio0yjc8e2u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 10:53:18 +0000 (UTC)
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 38A9F404F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 10:53:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38A9F404F1
Received: by mail-pj1-x1034.google.com with SMTP id
 98e67ed59e1d1-282e3beb418so526687a91.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 02:53:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700131997; x=1700736797;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=J6wLYSXzg5tmYqidzmV/DNDn2+dFtQpnSIBReQdUv9g=;
 b=DPYWz3KAXxupntpB0C8cN8yfzXuZ64eNkO4zdqxOUZQnOArZyviD971RFwXiIBRAoV
 ERfI8w8i2JigFOyt1Cz7LXpGvdjAi6vaevLowZ4u8I2in+P4y5HMm0Eb7G+Vh2iGfw1c
 fGLelDFGFT6XItmuFOq6XJbI2wIyqHRW7xYbjrVZmCCeqzeCTXnANL2uulsz7+O3zO4F
 YopkFkbfRgBKi7wKl88lHvxLYYMJVIN7qXo+wtmd4x+/Q/aFU88+zgdRHxK0FMbsOYdQ
 bJOWKuXkOfi0rTJhfNrLrEmwracrD32SDlk4M8v9biA8UFVQ6bq7OzXKjyb0nd9lIMve
 Rezw==
X-Gm-Message-State: AOJu0YxOWuQy7Wz2xUM/bCrJhyjqkoa7HJxb2dFd0NwdaIoCBsDLgeZV
 KUBA3qtSMjqQsCaCNMpLr7o=
X-Google-Smtp-Source: AGHT+IHviUA6wsN7WBJ0vdUlc5oRn54uPX/2SL1zM7nRFKveJPLaxBH16YaTE8jA32XcURweaSCFnA==
X-Received: by 2002:a17:90b:1810:b0:280:2652:d42 with SMTP id
 lw16-20020a17090b181000b0028026520d42mr17763037pjb.23.1700131997392; 
 Thu, 16 Nov 2023 02:53:17 -0800 (PST)
Received: from archie.me ([103.131.18.64]) by smtp.gmail.com with ESMTPSA id
 r6-20020a17090a560600b0026b3f76a063sm1300560pjf.44.2023.11.16.02.53.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Nov 2023 02:53:16 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
 id 9876410206E62; Thu, 16 Nov 2023 17:53:11 +0700 (WIB)
Date: Thu, 16 Nov 2023 17:53:11 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Anil Choudhary <anilchabba@gmail.com>,
 Linux regressions mailing list <regressions@lists.linux.dev>
Message-ID: <ZVX0l0pTgbe0LKp7@archie.me>
References: <986716ed-f898-4a02-a8f6-94f85b355a05@gmail.com>
 <32716.1700009673@famine>
 <0f97acf9-012d-4bb2-a766-0c2737e32b2c@leemhuis.info>
 <CC024511-980A-4508-8ABF-659A04367C2B@gmail.com>
 <7AC9E8F6-B229-47AA-84CE-1149F45D7E0F@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7AC9E8F6-B229-47AA-84CE-1149F45D7E0F@gmail.com>
X-Mailman-Approved-At: Thu, 16 Nov 2023 16:15:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700131997; x=1700736797; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=J6wLYSXzg5tmYqidzmV/DNDn2+dFtQpnSIBReQdUv9g=;
 b=PbeioP+uUvnK5Ad0sHnAwK6fNA3IuLyn95igzK5nHCPbldB7vhYh35cw9NWm+mcARK
 jb8pDqD5UCX0GPvBKnVIxCkFQVT2pvP53La262teKQeiiTvHp7bm8AGMDsOL5fCOeeGG
 /MzPeqTyz3xLVIQ4cDRJmJI45XYejtPPT36Y91jR+Fr9vJ39zSmcXN0vFoGgI7h0La52
 O7elCxF6LR31G6Bve0bIY0YAGk5Y8GLjpFB+/oUDXEP/ujjm+/MfX1cd/+LvEcroZxhA
 Z/1kEIt58bc+4nhyjAYcGsMgYe4+odbxBUltkIziwvIHcu34cwevn5NX0s9VZ4xCtaXp
 MX8A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=PbeioP+u
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
Cc: Daniel Machon <daniel.machon@microchip.com>,
 Eric Dumazet <edumazet@google.com>, Linux Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Linux Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Dave Ertman <david.m.ertman@intel.com>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: multipart/mixed; boundary="===============7020669984280732404=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============7020669984280732404==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e1HJro3cB6s4ipwc"
Content-Disposition: inline


--e1HJro3cB6s4ipwc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 12:48:51PM -0800, Anil Choudhary wrote:
> We are getting errorError subscribing to SWID 0x0000.
>  from following code
> root@us-ash-r1-c2-m1:~/linux# grep -rn -e "subscribing to " .
> grep: ./debian/linux-image/lib/modules/6.6.1-vdx/kernel/drivers/net/ether=
net/intel/ice/ice.ko: binary file matches
> ./samples/connector/ucon.c:149: ulog("subscribing to %u.%u\n", CN_TEST_ID=
X, CN_TEST_VAL);
> ./Documentation/driver-api/media/v4l2-event.rst:117:add      called when =
a new listener gets added (subscribing to the same
> ./Documentation/driver-api/media/v4l2-event.rst:130:Unsubscribing to an e=
vent is via:
> ./Documentation/maintainer/feature-and-driver-maintainers.rst:44:mailing =
list. Either by subscribing to the whole list or using more
> grep: ./drivers/net/ethernet/intel/ice/ice_lag.o: binary file matches
> grep: ./drivers/net/ethernet/intel/ice/ice.o: binary file matches
> grep: ./drivers/net/ethernet/intel/ice/ice.ko: binary file matches
> ./drivers/net/ethernet/intel/ice/ice_lag.c:1007:                dev_err(i=
ce_pf_to_dev(local_lag->pf), "Error subscribing to SWID 0x%04X\n",
> root@us-ash-r1-c2-m1:~/linux#
>=20

Again, please don't top-post; reply inline with appropriate context instead.
You may need to configure your email client to start reply below the quoted
context.

OK, now on your Bugzilla ticket, please attach the full log (either from
dmesg or from journalctl). And don't forget to perform bisection if
you'd like to get this regression fixed.

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--e1HJro3cB6s4ipwc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZVX0kwAKCRD2uYlJVVFO
o7fjAQC0MeTuZpur/LspKJ2Mx7S+c45gX313sk1uD4kt7ANNVwEA/ivKY/8tlYLK
LIZuHFWvA3qMyHT4vgtG8fcqbuN8igc=
=O+Fn
-----END PGP SIGNATURE-----

--e1HJro3cB6s4ipwc--

--===============7020669984280732404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7020669984280732404==--
