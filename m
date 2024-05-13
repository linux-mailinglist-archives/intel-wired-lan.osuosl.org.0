Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F718C489F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 23:06:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFB7C4099B;
	Mon, 13 May 2024 21:05:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WNL3ISZCdTzU; Mon, 13 May 2024 21:05:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9854F408F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715634356;
	bh=1l1gBuhAghDzGTpmKFRmMZDa6k+2TjMJBTuOI8PxFZE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=365Y/VFMfUVnLfwPtcLTcdnat5htuNNY4pz3Id8U3QTYOrRyJwOzckRqylp8p9Th+
	 jan3rdRr0V313Ib8LPeFrUtDRblz6KCnhOsE6/koh+AONA4ni8B2td40paEUxnouv1
	 MbrrXIXtyVb0yJfzaEZTOTa6glZIOChm4Qb0GyTmOuz/vacjnq0wARPe6y+4d3dk+T
	 BehZ3FWvLpQrlKslieHta2OIxD7K9WB3qOGakFpunnCanVKWqnarG1HEfkxkVHWvqb
	 Sn9VLB2Glt+MG6SuG2n66V5NHKWWiNlU8Fw3FC4t9e+Ih1Rsj/vBnHL+ePpuLXb/J/
	 IkecDA+1Sp5Jw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9854F408F7;
	Mon, 13 May 2024 21:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B984F1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:28:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E911608C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:28:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TmzY25L69SHJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 08:28:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=bagasdotme@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D40A60684
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D40A60684
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D40A60684
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:28:58 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-1eeabda8590so28650965ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 01:28:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715588937; x=1716193737;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1l1gBuhAghDzGTpmKFRmMZDa6k+2TjMJBTuOI8PxFZE=;
 b=QStip0nH/xwYgD063GoLgHNY19cOhGhKOne3ltokY1/xMSvyfEJkQShoA6bcsySZ09
 BKR1sovZZBwgODd/Sw2Jm4dLxsE+tVHZxn8WGByxCWOvHxCMf60hxDF4JHkxeIkQF4MR
 u6CQs9VYNOTnPuXgY0V2EYaBiektfXg5YbrkzX5lVR25IP1PkVhIxqEmqGX/UbnFwPMV
 WoBslbXD28BW2dloV5Mby8MZQvWArUq2Oar9w6NoBzIwFFsIeQDtDrSHfNuI9B6d0wfC
 MZtnIhadwr0GA4TMKTtxbvnwlvv1a+lVxMbJaJWotxQKRFUXbcO0FzSisMSeWDx5n19Q
 yWIg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXzxS30wZJoF164lB3dLvsMbytpQawyh1x8Z39DxjME3Ujdqgz15oBNyXHlrmF7NiSswpnclCfGO0Id0QuNbFjEdFk5cIyzOuzjJpp4Zh3Yvw==
X-Gm-Message-State: AOJu0Yzzvv2jXYroQVkG52WyqUkVN75hsxaytDI6WwLr+CmiG2MHFsdV
 mm4EHpnpL1EkBKQkvGXrd6BmJlk/WplHLWP/eR/7aKrmJg9cGu/O
X-Google-Smtp-Source: AGHT+IEyFi9OkHesvUDKD8WJBIa2kU2vFMcbgW2nT+sM0xKfUBCZ7S9sE6dvQzu9KaR545YjlGNXYw==
X-Received: by 2002:a17:902:da8c:b0:1eb:4a72:f468 with SMTP id
 d9443c01a7336-1ef4416113fmr111274895ad.52.1715588937322; 
 Mon, 13 May 2024 01:28:57 -0700 (PDT)
Received: from archie.me ([103.124.138.155]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1ef0b9d1807sm73594535ad.59.2024.05.13.01.28.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 May 2024 01:28:56 -0700 (PDT)
Received: by archie.me (Postfix, from userid 1000)
 id 26731184762DF; Mon, 13 May 2024 15:28:52 +0700 (WIB)
Date: Mon, 13 May 2024 15:28:52 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Regressions <regressions@lists.linux.dev>,
 Linux Networking <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org
Message-ID: <ZkHPRBLlHJpRytIB@archie.me>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="MqJ187FVOnOf64oY"
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 13 May 2024 21:05:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715588937; x=1716193737; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=1l1gBuhAghDzGTpmKFRmMZDa6k+2TjMJBTuOI8PxFZE=;
 b=KYUe/2FaAROdEC6iYoU78I161uAgUd1IuP2YRDJlO6So64OPM/DtXKMHbQTf0PXO+C
 CnsxQteWt3rI2rEDsNwzwjJ+3tPsQ1RgcL+0Fs6FdEnQPz07mxS/Q+wo5LQchU3zGFwW
 7BPcLOAlfFHJzcRRo67B+Vf8fZN3BTJYt3N076HoJTw8dGploz6rbEsD/N5Ty6h/gP51
 oW0LHQsPz6RdIqTG6JiDG9pp3Bto9PkKktxNIhN4CfWZWOWB3OzFqHycj6mYvTEEvr//
 RszoX1zAktrwQ4xDr7rfGFx0eCUj6YxMxLYwwojUCzAeNpNaru/hRk7UQjhjKIEl1fh5
 pdbA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=KYUe/2Fa
Subject: [Intel-wired-lan] pi
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


--MqJ187FVOnOf64oY
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

--MqJ187FVOnOf64oY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZkHPOgAKCRD2uYlJVVFO
o5k0AQCvBu6nHDzpTwo8OJz3jjdqc5D6AsxCg7E3p+QX6zJ72AEA1/QI1liupwSO
V+b6OxS6Ih+R0okARxUMwGuT3svVQw8=
=hyi0
-----END PGP SIGNATURE-----

--MqJ187FVOnOf64oY--
