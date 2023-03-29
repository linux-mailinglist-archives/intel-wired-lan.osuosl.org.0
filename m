Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4BA6CEC7E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 17:14:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 240E784151;
	Wed, 29 Mar 2023 15:14:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 240E784151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680102861;
	bh=8Z7yOTMWExS9gkt0u7LyTtPJLfWKKivZL3eN3vXDLaA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Uff++UKvV6GpOj0R4Dc/v4y2wWYiKb35chwD2qQccPGsvZZR+bfPrTFj7Wpcyifq0
	 qmf0K1sDaCiCd/pXyJaetV9+CZA7WnjisResVgBhaXsY9oKR2pUcinPDOA++GDT6bl
	 2pvs3N91JxP1z4/wjvR2GRfubhoyX005LdyUYUM9rlFFr2ks3qcAUF+SzNYVshaj45
	 xhBmVLak0gr7sOutQGERulifbDvVykiLEfzkiQxdHfk68dcK9EfB+fYpp/M3XfNqtV
	 SwjkVMi6UysuWMjz8QUwMJ+u5j12X4MDZocQuGDoxwzH3aVVFXnDt9fbPZ2f35U4qJ
	 haMtjLtJ0oSnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5g4of7ZjPxRv; Wed, 29 Mar 2023 15:14:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00EE98414A;
	Wed, 29 Mar 2023 15:14:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00EE98414A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCA771BF59E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:43:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A41FA60F44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:43:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A41FA60F44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3nSHnF6j50eF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 08:43:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7430560EAA
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7430560EAA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:43:14 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id h31so8823587pgl.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 01:43:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680079394;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qAkrUB7euHbox3v7PniPVKEwDjGJe30NY4iWbdoH0eQ=;
 b=osvx0kLooRp5lfiIlvcghsqqULQMj09RW6/HdUe6r9xvrog7WsH915/ZWQXdyTdZk1
 3ghpH1NEShrNTVY0EsXA3FMmB6888JKbovHcnpvxkI9hvhW1spXc4Zkc+YJn48L056l6
 EpIsiR1Aya8OcD4I3CeFdpViHLG2QPvGbaknI5TfEUIdGRxKDNtrYO666Ql4dmvkdCSM
 37ylL+yYvPFQZL2y1OqM+0CMk6rTyXdpilW003YzB2dnVS/xFAbS6TGjKlxbOmTLEXqr
 EDnpWE6d1v69bzKvOvL9dFLvdqeR1N/w5vBr+Grc9isU7NTZcvFGpChjTsXqeJTs7hS1
 59vQ==
X-Gm-Message-State: AAQBX9dxPv7j0b8vjRhXYOTqgvKuae0L6oYptuHvV2OLNRTRcw8oLceZ
 vWttzvElHUSDkbjnW36IUdongNaP0EA=
X-Google-Smtp-Source: AKy350Yi+FDtNs7I7ur07WPq3PMIY+FGuuQTrqAVCmZswBPeFKnK7Y3Ten8e6jx+gYtFseIR6XFIaA==
X-Received: by 2002:a62:5b44:0:b0:625:4b46:e019 with SMTP id
 p65-20020a625b44000000b006254b46e019mr1347521pfb.9.1680079393750; 
 Wed, 29 Mar 2023 01:43:13 -0700 (PDT)
Received: from debian.me (subs32-116-206-28-15.three.co.id. [116.206.28.15])
 by smtp.gmail.com with ESMTPSA id
 jk1-20020a170903330100b001a1d5d47105sm7445188plb.53.2023.03.29.01.43.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Mar 2023 01:43:13 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
 id C006B10670B; Wed, 29 Mar 2023 15:43:10 +0700 (WIB)
Date: Wed, 29 Mar 2023 15:43:10 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Takashi Iwai <tiwai@suse.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <ZCP6Hhs21zzpzBQE@debian.me>
References: <87jzz13v7i.wl-tiwai@suse.de>
MIME-Version: 1.0
In-Reply-To: <87jzz13v7i.wl-tiwai@suse.de>
X-Mailman-Approved-At: Wed, 29 Mar 2023 15:14:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680079394;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=qAkrUB7euHbox3v7PniPVKEwDjGJe30NY4iWbdoH0eQ=;
 b=irr7FA6utBPpPz/5zJXbIJCT2Q+4ojhBzwGf4kNFvchrW6lv4H9d86AXROqxDEMrVO
 chkl5Frsv2fKA0ZrHeh/IfpRPEcYYW+vFhOodmsrCxuTnJ6apmKiJMKU4LG2iS+3Z3Vs
 2TSuO+asfb7cmCsCCiO6u+cyIU1MDcVS1NEJt8IOGhmJRU0iGxSclduXzz9sRHTA6rrw
 IGlChkjyUbIRugm/X6iRnCljRiZmPNweLgf7Ki0sCM+IdL6QvBwbWUM0FBP5AHsujnbH
 DuFUdgLFKF//7wfVwTBtdHJaB3dKucztCT+xexWpq7dpw1WVNt5XIdHqKqJ1bLwdoAZh
 MUJQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=irr7FA6u
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 regressions@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1589862067885907792=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============1589862067885907792==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="635VUw/DoI3CBtIu"
Content-Disposition: inline


--635VUw/DoI3CBtIu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 28, 2023 at 02:40:33PM +0200, Takashi Iwai wrote:
> Hi,
>=20
> we've got a regression report for e1000e device on Lenovo T460p since
> 6.2 kernel (with openSUSE Tumbleweed).  The details are found in
>   https://bugzilla.opensuse.org/show_bug.cgi?id=3D1209254
>=20
> It seems that the driver can't detect the 1000Mbps but only 10/100Mbps
> link, eventually making the device unusable.
>=20
> On 6.1.12:
> [    5.119117] e1000e: Intel(R) PRO/1000 Network Driver
> [    5.119120] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> [    5.121754] e1000e 0000:00:1f.6: Interrupt Throttling Rate (ints/sec) =
set to dynamic conservative mode
> [    7.905526] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): Failed t=
o disable ULP
> [    7.988925] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): register=
ed PHC clock
> [    8.069935] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width x1) 5=
0:7b:9d:cf:13:43
> [    8.069942] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network Connec=
tion
> [    8.072691] e1000e 0000:00:1f.6 eth0: MAC: 12, PHY: 12, PBA No: 1000FF=
-0FF
> [   11.643919] e1000e 0000:00:1f.6 eth0: NIC Link is Up 1000 Mbps Full Du=
plex, Flow Control: None
> [   15.437437] e1000e 0000:00:1f.6 eth0: NIC Link is Up 1000 Mbps Full Du=
plex, Flow Control: None
>=20
> On 6.2.4:
> [    4.344140] e1000e: Intel(R) PRO/1000 Network Driver
> [    4.344143] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> [    4.344933] e1000e 0000:00:1f.6: Interrupt Throttling Rate (ints/sec) =
set to dynamic conservative mode
> [    7.113334] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): Failed t=
o disable ULP
> [    7.201715] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): register=
ed PHC clock
> [    7.284038] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width x1) 5=
0:7b:9d:cf:13:43
> [    7.284044] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network Connec=
tion
> [    7.284125] e1000e 0000:00:1f.6 eth0: MAC: 12, PHY: 12, PBA No: 1000FF=
-0FF
> [   10.897973] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full Dupl=
ex, Flow Control: None
> [   10.897977] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
> [   14.710059] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full Dupl=
ex, Flow Control: None
> [   14.710064] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
> [   59.894807] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full Dupl=
ex, Flow Control: None
> [   59.894812] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
> [   63.808662] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full Dupl=
ex, Flow Control: None
> [   63.808668] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
>=20
> The same problem persists with 6.3-rc3.
>=20

I'm adding this to regzbot:

#regzbot ^introduced: v6.1.12..v6.2.4
#regzbot: e1000 probe/link detection fails since v6.2

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--635VUw/DoI3CBtIu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZCP6HgAKCRD2uYlJVVFO
o8AHAQDFjzDRV29C1MwVXjNV+kbHZ1vxTvB6tFYmWn0YDTmtkwEAqupmkIIt1wg8
KgBw0VHxmNcJ4aCYAV9pZe8nMRr9pwg=
=+9Nm
-----END PGP SIGNATURE-----

--635VUw/DoI3CBtIu--

--===============1589862067885907792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1589862067885907792==--
