Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1083421B04
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 02:18:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09EFC83B32;
	Tue,  5 Oct 2021 00:18:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MfYjkbPrf8Hc; Tue,  5 Oct 2021 00:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E64983B31;
	Tue,  5 Oct 2021 00:18:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C6C9B1BF574
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 00:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C16B083B31
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 00:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vr-CjEBx448s for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 00:18:41 +0000 (UTC)
X-Greylist: delayed 00:06:21 by SQLgrey-1.8.0
Received: from mx1.uni-regensburg.de (mx1.uni-regensburg.de [194.94.157.146])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 34FEF83B2E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 00:18:41 +0000 (UTC)
Received: from mx1.uni-regensburg.de (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id B8BAC600004E;
 Tue,  5 Oct 2021 02:12:12 +0200 (CEST)
Received: from smtp2.uni-regensburg.de (smtp2.uni-regensburg.de
 [194.94.157.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "smtp.uni-regensburg.de",
 Issuer "DFN-Verein Global Issuing CA" (not verified))
 by mx1.uni-regensburg.de (Postfix) with ESMTPS id A0119600004D;
 Tue,  5 Oct 2021 02:12:12 +0200 (CEST)
From: "Andreas K. Huettel" <andreas.huettel@ur.de>
To: Jakub Kicinski <kubakici@wp.pl>, Hisashi T Fujinaka <htodd@twofifty.com>
Date: Tue, 05 Oct 2021 02:12:07 +0200
Message-ID: <1763660.QCnGb9OGeP@pinacolada>
Organization: Universitaet Regensburg
In-Reply-To: <7064659e-fe97-f222-5176-844569fb5281@twofifty.com>
References: <1823864.tdWV9SEqCh@kailua>
 <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <7064659e-fe97-f222-5176-844569fb5281@twofifty.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [EXT] Re: Intel I350 regression 5.10 -> 5.14
 ("The NVM Checksum Is Not Valid") [8086:1521]
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============7695242013788072370=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7695242013788072370==
Content-Type: multipart/signed; boundary="nextPart1830747.g5d078U9FE"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart1830747.g5d078U9FE
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: "Andreas K. Huettel" <andreas.huettel@ur.de>
To: Jakub Kicinski <kubakici@wp.pl>, Hisashi T Fujinaka <htodd@twofifty.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Subject: Re: [EXT] Re: [Intel-wired-lan] Intel I350 regression 5.10 -> 5.14 ("The NVM Checksum Is Not Valid") [8086:1521]
Date: Tue, 05 Oct 2021 02:12:07 +0200
Message-ID: <1763660.QCnGb9OGeP@pinacolada>
Organization: Universitaet Regensburg
In-Reply-To: <7064659e-fe97-f222-5176-844569fb5281@twofifty.com>
References: <1823864.tdWV9SEqCh@kailua> <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com> <7064659e-fe97-f222-5176-844569fb5281@twofifty.com>

> >> 
> >> Any advice on how to proceed? Willing to test patches and provide
> >> additional debug info.
> Sorry to reply from a non-Intel account. I would suggest first
> contacting Dell, and then contacting DeLock. This sounds like an
> issue with motherboard firmware and most of what I can help with
> would be with the driver. I think the issues are probably before
> things get to the driver.

Ouch. OK. Can you think of any temporary workaround?

(Other than downgrading to 5.10 again, which I can't since it fails
at the graphics (i915) modesetting...)

--nextPart1830747.g5d078U9FE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQKTBAABCgB9FiEE6W4INB9YeKX6Qpi1TEn3nlTQogYFAmFbmFdfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldEU5
NkUwODM0MUY1ODc4QTVGQTQyOThCNTRDNDlGNzlFNTREMEEyMDYACgkQTEn3nlTQ
ogbdshAAuFBG8OIaWdfgGHuHTh6dT2hK03IkqtfT5NqHtB7LenaU2tddBmFcm44k
8/Moh1sI7E0YJDf5Ae35sN5qryl6iX+4NM0pnpoR769Blfs777FkUclA/4Arn5xG
HVuBg/QUd53sPqvvbJ9JNTlt4oriaVQRmIPcBEQRJw0AJl8sgjU3ddAVhmbjZ2uF
apBEjVup8oq8qDs3gOMyICX7eT0vcR4KL+pRJo525Y9btnVa4T1pBFXSMhSx/egg
3Z6z//ufoyfaWPbCa5l7UmgLnysMwnuDVkZ5U7EKoQT4zXWuaHkmxyKiM72vt90u
pU+bB55nLzMNvN93ROClscIk49tlgUMqTBS0GkfkGbSMNF2fpzCmSERYlt3UpVRJ
lXf6+LljAtxAo4UgGOHCt4k3fqns+IKWW4qH0E5B1giGY7CJ1cgmPZlH9MYn0KK7
a+G/xvPQKHuAwEYD44CE09UbHJF25JHNLxrx9H+v44j6oNTSeeXEtYIyBnt0rC53
Sqn7Qt8y3s8UJ5lazUKWhSTXw3HKuYolscoag0wJaiKL98dUrroeQqH7XxK5Nabk
vz66yjZevR/MGHgVO/+/0+vq2FuIeHpjq4j5MqRsyHLkemlkqBWJ2u82H9Angndl
DJYuMLIxhOghlgVPQo6iNylr2l1RPq9rq7GqRpi16oHQmHnGgSM=
=G/5u
-----END PGP SIGNATURE-----

--nextPart1830747.g5d078U9FE--




--===============7695242013788072370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7695242013788072370==--



