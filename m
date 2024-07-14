Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB37932EAA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2024 18:51:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FD8281176;
	Tue, 16 Jul 2024 16:51:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7tyuW8NjqQmy; Tue, 16 Jul 2024 16:51:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E0FB81147
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721148705;
	bh=OMK9o7IrpO4MqbMGDLfUl1DTeKpqT2I9IzRC/2uuvo4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K/GxY7j1+s9FXyxsoyTfgaJd1wI7z7dXEvbcUjFrpP1xrBdAYEaMF5FhiY6o5kOrD
	 0x497/ssi4c4aeoLXawHrSCGMeltx6zbLQXnp1xn4ZM0lf7Z7itNLU4ccnty//ClPA
	 qQDeZriU4nO0WKf9ohObrMM8jwB5RGZlt6E6t+9GJKct7YmejyfBZcW0WnWBWQnrdc
	 TMdkMscgrlwjjYTxTVFqFkqSTwhp+k3SjnJSsYwBU47QQddbYpArrSOUtyIQ7U9C5o
	 wL6qDZTitM7ndUf9ezmZuANRaH4Ph6jkTelAfVqiiYwyuhA+BxKEaShxP4silfvptT
	 Wd+uAdivFEa+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E0FB81147;
	Tue, 16 Jul 2024 16:51:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 203EB1BF40B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jul 2024 19:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BF10401F6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jul 2024 19:43:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Poqbi8jn3jC for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jul 2024 19:43:54 +0000 (UTC)
X-Greylist: delayed 399 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 14 Jul 2024 19:43:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 132EA400E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 132EA400E2
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a05:f480:1800:ee:5400:4ff:feab:5961; helo=prime.voidband.net;
 envelope-from=oleksandr@natalenko.name; receiver=<UNKNOWN> 
Received: from prime.voidband.net (prime.voidband.net
 [IPv6:2a05:f480:1800:ee:5400:4ff:feab:5961])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 132EA400E2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jul 2024 19:43:53 +0000 (UTC)
Received: from spock.localnet (unknown [212.20.115.26])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
 (No client certificate requested)
 by prime.voidband.net (Postfix) with ESMTPSA id EA6AB6356CC1;
 Sun, 14 Jul 2024 21:37:06 +0200 (CEST)
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: intel-wired-lan@lists.osuosl.org, Chen Yu <yu.c.chen@intel.com>
Date: Sun, 14 Jul 2024 21:36:49 +0200
Message-ID: <8412242.T7Z3S40VBb@natalenko.name>
In-Reply-To: <cover.1605073208.git.yu.c.chen@intel.com>
References: <cover.1605073208.git.yu.c.chen@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart10511005.nUPlyArG6x";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Mailman-Approved-At: Tue, 16 Jul 2024 16:51:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=natalenko.name; 
 s=dkim-20170712; t=1720985827;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OMK9o7IrpO4MqbMGDLfUl1DTeKpqT2I9IzRC/2uuvo4=;
 b=pBxxOFyaXABu6FFPGNLIf2eONRdauwxAQ3e4zfIvAB8mrsXShi34TWCRe61XoFSWqCJcpN
 ZnSkg1tm/OrnLavs0KkLkLK8U0BDbL3RriWE2WNiknT4S0bXCXqGItsV9hGshgOmIB5vFp
 xKBh5bSjG3IGknhBV632vwHuxWQAU5c=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=natalenko.name
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=natalenko.name header.i=@natalenko.name
 header.a=rsa-sha256 header.s=dkim-20170712 header.b=pBxxOFya
Subject: Re: [Intel-wired-lan] [PATCH 0/4][RFC] Disable e1000e power
 management if hardware error is detected
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
Cc: Len Brown <len.brown@intel.com>, "Neftin, Sasha" <sasha.neftin@intel.com>,
 Chen Yu <yu.c.chen@intel.com>, netdev@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, "Brandt, Todd E" <todd.e.brandt@intel.com>,
 Zhang Rui <rui.zhang@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--nextPart10511005.nUPlyArG6x
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: intel-wired-lan@lists.osuosl.org, Chen Yu <yu.c.chen@intel.com>
Date: Sun, 14 Jul 2024 21:36:49 +0200
Message-ID: <8412242.T7Z3S40VBb@natalenko.name>
In-Reply-To: <cover.1605073208.git.yu.c.chen@intel.com>
References: <cover.1605073208.git.yu.c.chen@intel.com>
MIME-Version: 1.0

Hello Yu.

On st=C5=99eda 11. listopadu 2020 6:50:35, SEL=C4=8C Chen Yu wrote:
> This is a trial patchset that aims to cope with an intermittently
> triggered hardware error during system resume.
>=20
> On some platforms the NIC's hardware error was detected during
> resume from S3, causing the NIC to not fully initialize
> and remain in unstable state afterwards. As a consequence
> the system fails to suspend due to incorrect NIC status.
>=20
> In theory if the NIC could not be initialized after resumed,
> it should not do system/runtime suspend/resume afterwards.
> There are two proposals to deal with this situation:
>=20
> Either:
> 1. Each time before the NIC going to suspend, check the status
>    of NIC by querying corresponding registers, bypass the suspend
>    callback on this NIC if it's unstable.
>=20
> Or:
> 2. During NIC resume, if the hardware error was detected, removes
>    the NIC from power management list entirely.
>=20
> Proposal 2 was chosen in this patch set because:
> 1. Proposal 1 requires that the driver queries the status
>    of the NIC in e1000e driver. However there seems to be
>    no specific registers for the e1000e to query the result
>    of NIC initialization.
> 2. Proposal 1 just bypass the suspend process but the power management
>    framework is still aware of this NIC, which might bring potential issue
>    in race condition.
> 3. Approach 2 is a clean solution and it is platform independent
>    that, not only e1000e, but also other drivers could leverage
>    this generic mechanism in the future.
>=20
> Comments appreciated.
>=20
> Chen Yu (4):
>   e1000e: save the return value of e1000e_reset()
>   PM: sleep: export device_pm_remove() for driver use
>   e1000e: Introduce workqueue to disable the power management
>   e1000e: Disable the power management if hardware error detected during
>     resume
>=20
>  drivers/base/power/main.c                  |  1 +
>  drivers/base/power/power.h                 |  8 -------
>  drivers/net/ethernet/intel/e1000e/e1000.h  |  1 +
>  drivers/net/ethernet/intel/e1000e/netdev.c | 27 ++++++++++++++++++----
>  include/linux/pm.h                         | 12 ++++++++++
>  5 files changed, 37 insertions(+), 12 deletions(-)
>=20
>=20

It seems this submission was stuck at the RFC stage, and I'm not sure you g=
ot any feedback on it. Sorry for necrobumping this thread, but what is the =
current state of it?

I can confirm v6.8 is still affected (I've discovered this on T490s), and a=
s a workaround I just unload e1000e module before doing S3, and load it bac=
k after resume.

=46or LKML reference, the linked kernel BZ is: https://bugzilla.kernel.org/=
show_bug.cgi?id=3D205015

Thank you.

=2D-=20
Oleksandr Natalenko (post-factum)
--nextPart10511005.nUPlyArG6x
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZUOOw5ESFLHZZtOKil/iNcg8M0sFAmaUKNEACgkQil/iNcg8
M0sBig/9GY5XmbywcNYRllfR85OnhiIBkhfL9RW63QuVA/N1+BvHHJDMHZdh+Gs6
jhF2q29KtliUa+M+r4X1/+CbFeSuEUYsfD2u9qV6oYO5mktVCmkNQoCyx5i9PTw4
0VLYn26//BVxxGlQhhyrpfcpJ+IelvEwFxXRmiItJRgXFMaN3djOc8pUm0iEL9oc
zRXAxZx+MyJ9uV84tsO26usfgh8pXcMXusxgRkhVeNx+pwM4UhfEuIxCc//EZ2Z/
Ol4dEIfYf/3L0f+S21B1V2mGwK7pXdogH7fVaa8JWEgfxpDnZC+FsaJf7Zd8iNJC
QMDm8EPNfYupInQwq1HYt0voG6USt0d/vDgcj86iAnvvXUmOyyl55zob/GQaVLB9
juGuiQ0tDSVsnlNupNRwZTh1sLG1xPvKTOFSlahqNW5ZWLWFVr2j3LEbtXICk8/2
PBWjL3krI8z2epL0Or1qKVPsgtpWdH3Blh6Frqr1VyH88tQ6vOId3foRq+mwtOWq
kjGOzdF5EFYvoqQn/0puOWPLTosetCFYP/4hDofMRQ9gKlkVxH6d79Misx+HlpTq
zCwt09FI73nc8p7mWJUILlIUMpZzRSMPIi/JQJcqhN4/En2GZGBS4XDo6JT6/QNW
R+dc2VBNvIYhpeEb2p3En+ErpUcZbCwHqmdFV6KKtwtK0WnmZpk=
=W14v
-----END PGP SIGNATURE-----

--nextPart10511005.nUPlyArG6x--



