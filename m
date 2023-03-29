Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AF36CEC7D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 17:14:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03BC88418C;
	Wed, 29 Mar 2023 15:14:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03BC88418C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680102857;
	bh=HFl2vMs1Wc+2AUCazH8boC08qjwYcVwPf4zow6sjEn4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lyo6AX1raqNRjI5MMLfm5xdtnwMd0gJ4wOa4sL84Tyka2abIuBSMBXHqDk2P8ME+a
	 aEI6bDCkIG+ovIZ+B4jal/MQjpiP6WdoNSL3UPAYQyfDntK5VuVefvo/P8ahNnvNCE
	 hXIfTmh0gfwxODVuG/BuKFu1ATsIS0zRx5tP3vWoXjkzmANNNS18IELSK45WhAo8BN
	 WTg+F5RUSvphPSDC3YkqcyBR2YWztmSW7QWe93FYSL1RYsucyfrTP+K0kL9xmOwrWw
	 1Ti2baCJ4IufCridzsqQdk0kmKRoZxSE2Rg3N15bx+sLQSROpPKUx15UmunslbeL1n
	 2xQZOTCHKe1rQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W2tRy16dyiPT; Wed, 29 Mar 2023 15:14:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 050528414A;
	Wed, 29 Mar 2023 15:14:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 050528414A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D2BE1BF59E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4565960F44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4565960F44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJ837BHWCXKS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 08:40:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA26560E77
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA26560E77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:40:48 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id i15so9772693pfo.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 01:40:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680079248;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=T4nFg4zKMGojw1a9EUgiYrx0HzwuMwAbekbAVn3z66s=;
 b=Yquv6eqGlBoPL4RI2GZqw884/TEc9dO83Ai5R5K/5jU8pwHfExUi0GmUBEkw/AVEXJ
 yIH/vnxt6SpiK7lJVnkVBubo4kZuVoPX4k7MKCtMjy5niFUdTeShX0ofKYGio2b29Atj
 OkMRthJdF3/P+r/enEgc1qpo3O5Kcx7AgEQB01KbAW2AqcENnxGv7Lkags0UrMDyowS0
 xHYnOeMinwaZgFpJqexggUDCkQIdqM30JuRDpvHWNe0iI2+JXsd7TPDWUJWOP5nfUQtV
 leGbC7yEkpFC4J0g7w2VAEMe2tYA5yNbJRM7emfc1CwIQnU+NvcJVv71lLrlaD9dYMYC
 YWDg==
X-Gm-Message-State: AAQBX9eQEEF6aDH8x0uZu9R/Nd6yAo0SRo/TonLPHkB5xBaFq4duwX3r
 vec/ZHW4OpmCG67s4bvoJP0=
X-Google-Smtp-Source: AKy350ZeSdakn87GYUZYeIzq/R0++5i4nskJlkhQzoG11bTfiOXNzxI+PTUP/mlACh8Rh4Eqqw7oCA==
X-Received: by 2002:a62:5254:0:b0:626:286d:b701 with SMTP id
 g81-20020a625254000000b00626286db701mr17920670pfb.20.1680079247947; 
 Wed, 29 Mar 2023 01:40:47 -0700 (PDT)
Received: from debian.me (subs32-116-206-28-15.three.co.id. [116.206.28.15])
 by smtp.gmail.com with ESMTPSA id
 a25-20020a62e219000000b00590ede84b1csm23173046pfi.147.2023.03.29.01.40.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Mar 2023 01:40:47 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
 id 8D8D4106705; Wed, 29 Mar 2023 15:40:44 +0700 (WIB)
Date: Wed, 29 Mar 2023 15:40:44 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, Takashi Iwai <tiwai@suse.de>
Message-ID: <ZCP5jOTNypwG4xK6@debian.me>
References: <87jzz13v7i.wl-tiwai@suse.de>
 <652a9a96-f499-f31f-2a55-3c80b6ac9c75@molgen.mpg.de>
MIME-Version: 1.0
In-Reply-To: <652a9a96-f499-f31f-2a55-3c80b6ac9c75@molgen.mpg.de>
X-Mailman-Approved-At: Wed, 29 Mar 2023 15:14:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680079248;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=T4nFg4zKMGojw1a9EUgiYrx0HzwuMwAbekbAVn3z66s=;
 b=V4fUz5/MNZNeW1jMG5OcBY4Tpy3nx8pejz1mjjui8TMA8VFc8VTH90eQvkJxcjRK+q
 qGiV1pS07CiLbAP1AaqcNcR+CoYmiHz3aZBc6RmMTnufrnZ6yrYnW4l/SIZ90x2tR/yq
 qqU6ywlIXlm77nooDOXfDuoT3iClb8PMr6I1sD5GBrc4Q6n7UX12trb5um9753Y5CujO
 +tDQgOFl8OCqHAMWEKeuPO39s8ChLyRfjgHKDCOX05VAKhPocYKkTbV8Op1lo6XSMZdX
 lWPnb20TOnLVjnx/2CNWpkIL6ykc6HjvCCGA1S2Efsb6Jw5jbbX3GUMSCnZf1kBiJS/e
 Ik1w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=V4fUz5/M
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e probe/link detection
 fails since 6.2 kernel
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
Cc: regressions@lists.linux.dev, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: multipart/mixed; boundary="===============3400794384850788497=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3400794384850788497==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cyVgV9qP40t8gPzM"
Content-Disposition: inline


--cyVgV9qP40t8gPzM
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 28, 2023 at 04:39:01PM +0200, Paul Menzel wrote:
> Does openSUSE Tumbleweed make it easy to bisect the regression at least on
> =E2=80=9Crc level=E2=80=9D? It be great if narrow it more down, so we kno=
w it for example
> regressed in 6.2-rc7.
>=20

Alternatively, can you do bisection using kernel sources from Linus's
tree (git required)?

--=20
An old man doll... just what I always wanted! - Clara

--cyVgV9qP40t8gPzM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZCP5hgAKCRD2uYlJVVFO
oyl2AP4j+bMThihDAhQDsVmg3q4Dgn/R1Tm/T9ALIQekbXtkvwD+IWh8158WgO5h
qOc7nN3lZwaB/V+HxGXv7L6aRMBQ3A4=
=4fBA
-----END PGP SIGNATURE-----

--cyVgV9qP40t8gPzM--

--===============3400794384850788497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3400794384850788497==--
