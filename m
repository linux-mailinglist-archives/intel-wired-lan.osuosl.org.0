Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F9C7EC85B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 17:20:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA30442249;
	Wed, 15 Nov 2023 16:20:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA30442249
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700065231;
	bh=Tv0cqO1AnUndSLt7WXmSPVvo2kccQsmwAoGf1kYLP50=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dlOxUhrosW6c10eXhdx4VBtBJfQhwXMLlszvxUntfDOE7+shwD6dhlTqhpQAq7ss0
	 h6KdbAcN+3GudEQLXhOZ9bBii6AqFSCFHYJy7mWpRvfDg9nJy5ZuQLawD6HRDWhf0p
	 p41rVmhlVdyarzbh2qhN8xtUI1AQeyGQ4Fv0x9Q0gb/uSdmdApX9rgetW+J3B3P1OP
	 66igEaCJaMLA7+Pxqi7km/WmqHuobRBX7tXR8ZLMkxGFgwoq8SWJF1SJNuN3NGA9an
	 wnaB9f9sKLPnd300LCucQO8nrt18SyKTWSLnul9PQBfXJbbJmSzKUBQjgcukcKiITg
	 D+rnuodRaE/DQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L9iiwJr2Ef1F; Wed, 15 Nov 2023 16:20:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB02D4158F;
	Wed, 15 Nov 2023 16:20:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB02D4158F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7434E1BF363
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 13:11:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4CBAC81FDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 13:11:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CBAC81FDE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 70kDA-tISgUh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 13:11:08 +0000 (UTC)
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FB0F81F5B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 13:11:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FB0F81F5B
Received: by mail-pj1-x102d.google.com with SMTP id
 98e67ed59e1d1-2801d7f46f9so410951a91.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 05:11:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700053868; x=1700658668;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EhfVaGER9sTAd2B+qVaDfxqJSQ9hYyt4DuktjBuV3bs=;
 b=ULCcZZ2UkKmQpH99iYo1oQ76d2Syp1xXIBCZj+90YnReOSLCjhHt0XVLt53E6EWHdi
 MjjVkHqW343QsCfeDcxlioMZhoFhWvpzgalCPAUDN5aEwGPiUPDRq4R6ydHHya3YhN2t
 LN0VjmvFkuw/JINt/6ObWeAI7s8N53KmM20Z2UXOPPiaKXEYNgACvZGj9aId3UuygRer
 7TpbVh97imRQ9QaPLEU4NwvBS7BbybJ5K+1ymfpnuRxaq8HnL+8NXagtOOs6WZLsVUSs
 hGiLa5Jh6/78DZf+MspNWD+QNohXX245AD6hrNZ9Lqdmap+9zJVgvamtgdG7+T2y7VpO
 UI3g==
X-Gm-Message-State: AOJu0YwMmNlVcsAPDo/762aLQBIDqphbrFqKqyViqU4KHauYcw4aUgLN
 zEgdNmglDlXfi6uFSHIw2tY=
X-Google-Smtp-Source: AGHT+IF+Tp/0plK9/VgBp5NpeKL0shngz+o/5+5GbHwpQgFqtAF/n2vwDB9t8Qvx+i5meirX7aUHMw==
X-Received: by 2002:a17:90b:3149:b0:27d:4901:b0b7 with SMTP id
 ip9-20020a17090b314900b0027d4901b0b7mr11047462pjb.30.1700053867647; 
 Wed, 15 Nov 2023 05:11:07 -0800 (PST)
Received: from archie.me ([103.131.18.64]) by smtp.gmail.com with ESMTPSA id
 f6-20020a17090a8e8600b0027df6ff00eesm6757051pjo.19.2023.11.15.05.11.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Nov 2023 05:11:07 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
 id CA40910D2CF4C; Wed, 15 Nov 2023 20:11:04 +0700 (WIB)
Date: Wed, 15 Nov 2023 20:11:04 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Anil Choudhary <anilchabba@gmail.com>,
 Linux Regressions <regressions@lists.linux.dev>
Message-ID: <ZVTDaJOtjxEOPbNq@archie.me>
References: <986716ed-f898-4a02-a8f6-94f85b355a05@gmail.com>
 <32716.1700009673@famine>
 <0f97acf9-012d-4bb2-a766-0c2737e32b2c@leemhuis.info>
 <CC024511-980A-4508-8ABF-659A04367C2B@gmail.com>
MIME-Version: 1.0
In-Reply-To: <CC024511-980A-4508-8ABF-659A04367C2B@gmail.com>
X-Mailman-Approved-At: Wed, 15 Nov 2023 16:19:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700053868; x=1700658668; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=EhfVaGER9sTAd2B+qVaDfxqJSQ9hYyt4DuktjBuV3bs=;
 b=d4OrDRfozxTzclrXpCMfzjAx4nWCJQX04qQG0/Wi1hzTmnBQDfXKpvPu694BB80K4r
 9mCuQYz37FceXUXhU8iM3aG592+0OG4uDGvQIbGohPtZPmq54G7oL7t6ciiHkm7JbA6L
 IGE2EC/eTfy4k+9765Q1wn6cQ/dQthi2yX8/MYdN5bvPs5NyufGjRmhNyIPXP/RsYcTQ
 XQ+rdojIJyjIWVcRwaDQrL6cagRQqi/6qkThGRCFTGlR1nAMFsaPTfDFTmVydkP6YTzl
 4vdD+R7lduhJRUQ+PTHfMNUKjcgyIAoY6+BcWgBpHKzltIRE0EIz24RZUZjZA4Rz9P0g
 Dn4w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=d4OrDRfo
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
Content-Type: multipart/mixed; boundary="===============8026562185676773857=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============8026562185676773857==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5OAjmnZvSGI+Kva2"
Content-Disposition: inline


--5OAjmnZvSGI+Kva2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 14, 2023 at 10:19:25PM -0800, Anil Choudhary wrote:

>=20
>=20
>=20
> Following error error scribing to said is also new
>=20

Please don't top-post; reply inline with appropriate context instead.

What error? Can you reply with logs pasted (with error you mentioned)?

Confused...

--=20
An old man doll... just what I always wanted! - Clara

--5OAjmnZvSGI+Kva2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZVTDaAAKCRD2uYlJVVFO
o+HWAQCGEf3FzxnS66Tm5OsffefCiiLmkMPkFzFUGydECWnqQgEAuTWunm1ReBNR
PWiCRjKLt7pQpv6KX8OQt1zipha9ngI=
=PeMO
-----END PGP SIGNATURE-----

--5OAjmnZvSGI+Kva2--

--===============8026562185676773857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8026562185676773857==--
