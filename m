Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE0C8C6D65
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 22:51:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 926B741B67;
	Wed, 15 May 2024 20:51:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y3-3KII1T5oe; Wed, 15 May 2024 20:51:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB68341B74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715806278;
	bh=La7shS+zS3wTP17U3gfvOwPX7PwmzI+3Y3Ke6tCzPrM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Oncaz5PgPG7yFoOVjkBvHfXl/GYLE2wUZzgdt0yUg7kulo5ph9JG4pLruGRTBeBQ0
	 ZcjnRwEIimWhtM4bez4xFENdM2gPWByBVdXqTVTD8QPN2Dg6IFQdRNZF/4Q8GRPlAq
	 LwQKl6NoXMbeFKOwtArIV38+gomj5QDXWeMmr4UClPBwIjmy+giy1Rl4rBtI0pXNxm
	 EDTv5ne20Ie8AHnfOqFXJaVafpxd3PjH9zqEo5VNs5NYRQalo/odU1IZiCNsgwD0e7
	 s55pCFeZdawXK9cALyEQL6rWx8lfYFKHxxfyw1Y5do4cCMYYQ3utFr8adBulyDRuqX
	 DjN4c1M6LCZMA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB68341B74;
	Wed, 15 May 2024 20:51:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4B361BF23B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 11:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8DAF981EBC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 11:16:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wkvf6lqom8Bc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 11:16:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:4860:4864:20::2e; helo=mail-oa1-x2e.google.com;
 envelope-from=bagasdotme@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D3C2681EB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3C2681EB4
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com
 [IPv6:2001:4860:4864:20::2e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D3C2681EB4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 11:16:28 +0000 (UTC)
Received: by mail-oa1-x2e.google.com with SMTP id
 586e51a60fabf-23f2996b634so3825486fac.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 04:16:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715771787; x=1716376587;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=La7shS+zS3wTP17U3gfvOwPX7PwmzI+3Y3Ke6tCzPrM=;
 b=cZqOEjbbcljeV24gRarmLcSampZe7sweWI1dN4iEAAr1wP95A37qJ2B4+obuq5Ph/J
 390znAqaw5Au95iY48+ptDTUbaP+uISMOLlsAstxADohP38gTZFahOPRhogVBnzQnQ5A
 go3az0zIrYepYply5gk7V89WJREHlVjVABvmxe2NglrxWs8EjNuXqjGZ7uXjc80eJ6gP
 rUoBl6OUHKjVjFBDf+VLemuZkBdEV/dbwiyV4jj2GpgG9hrbceVSJB2vPqbsJC51O+S1
 0peXbCDzfOiwIoq8rC7yvmV23nPkP23vEdAz6SyHQx1BaFl56sA7piazQgNeM0PT5jEO
 6rRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWfQQQ8cPOCvTPzhluJEBLhI1GjZSl/zODg5iamZRHMKn1pM0/XQl4C0Od3p3vLlZFoN/k4V+5dlWLes7Pqt3Pm7t4UZ6fvbJx/beTnyXzrZA==
X-Gm-Message-State: AOJu0YyLpPgY6wwx95auvdz+n2a/i03X55dh1imFSngwlqnIng5/JlGu
 HMOs0o6GuZw0nTNcAPsM/clwAtNt49g9unTer6I/IA1TfzU092o5
X-Google-Smtp-Source: AGHT+IEko0JSqQuagK5nJLQhpzLNI4UBWf1hkGCMsz0mbLd4XAPdp/+V3f92NeCVpS+QrlY3oDwjRw==
X-Received: by 2002:a05:6871:813:b0:23c:9f74:f6d4 with SMTP id
 586e51a60fabf-24172f617ccmr18241288fac.52.1715771786922; 
 Wed, 15 May 2024 04:16:26 -0700 (PDT)
Received: from archie.me ([103.124.138.155]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-6f4d2b060f9sm10807819b3a.182.2024.05.15.04.16.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 May 2024 04:16:26 -0700 (PDT)
Received: by archie.me (Postfix, from userid 1000)
 id E407019B4FD45; Wed, 15 May 2024 18:16:21 +0700 (WIB)
Date: Wed, 15 May 2024 18:16:21 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: lakshmi.sowjanya.d@intel.com, tglx@linutronix.de, jstultz@google.com,
 giometti@enneenne.com, corbet@lwn.net, linux-kernel@vger.kernel.org
Message-ID: <ZkSZhVz6vyyUt3ot@archie.me>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
 <20240513103813.5666-12-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="xeKKm072pVbJUx/X"
Content-Disposition: inline
In-Reply-To: <20240513103813.5666-12-lakshmi.sowjanya.d@intel.com>
X-Mailman-Approved-At: Wed, 15 May 2024 20:51:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715771787; x=1716376587; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=La7shS+zS3wTP17U3gfvOwPX7PwmzI+3Y3Ke6tCzPrM=;
 b=FKSxw2/Fl7P1KSQQoxBh4OCngqVRteCYYcrxhY6kks5jJyKwMbzmElJnF5oLSLkseH
 nvJ+2M5WXMG9dTGbU7zCW9xNEpjSqHNr0VBlPqaWS+UEmHa44wAERFwAp+5HPMNQx2au
 O1LR0aum1FwzwkwEjYKVr+lFzV4U4kSA+qdv4bbUTxZjk0OYIx+XsRKC3Tag6bo0TaNs
 Aiin6WVCH8QSCkkf78hao/8DOBW0S1r28ZKyuT213HCYH+PFMNTSd4q44rKJ8bick6go
 E8UOA4lTW9NQ/8/YpYFI9oXvym6vDAnwmmFFlecJNg30PhygJr8zPyESAUH2HCF6E2TH
 XLcw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=FKSxw2/F
Subject: Re: [Intel-wired-lan] [PATCH v8 11/12] Documentation: driver-api:
 pps: Add Intel Timed I/O PPS generator
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
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 linux-doc@vger.kernel.org, netdev@vger.kernel.org, pandith.n@intel.com,
 x86@kernel.org, eddie.dong@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 joabreu@synopsys.com, intel-wired-lan@lists.osuosl.org,
 mcoquelin.stm32@gmail.com, thejesh.reddy.t.r@intel.com, perex@perex.cz,
 anthony.l.nguyen@intel.com, andriy.shevchenko@linux.intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--xeKKm072pVbJUx/X
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 13, 2024 at 04:08:12PM +0530, lakshmi.sowjanya.d@intel.com wrot=
e:
> +Timed I/O and system time are both driven by same hardware clock. The si=
gnal
> +is generated with a precision of ~20 nanoseconds. The generated PPS sign=
al
> +is used to synchronize an external device with system clock. For example,
> +share your clock with a device that receives PPS signal, generated by
"... it can be used to share your clock ..."
> +Timed I/O device. There are dedicated Timed I/O pins to deliver the PPS =
signal
> +to an external device.
> +

That's it.

--=20
An old man doll... just what I always wanted! - Clara

--xeKKm072pVbJUx/X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZkSZgAAKCRD2uYlJVVFO
o/6oAP9w3HhiHmrFlOlNQ8EunlgWag4y2WHPIAlhy2UNCHLgUgEAmmZbh7KrfLCK
neKfTlKuPupWFFMWIJvouCJXmLae8wI=
=GWg5
-----END PGP SIGNATURE-----

--xeKKm072pVbJUx/X--
