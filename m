Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D9DCBEB3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2019 17:12:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 928A423B31;
	Fri,  4 Oct 2019 15:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRc44yLblg27; Fri,  4 Oct 2019 15:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CDA1B23509;
	Fri,  4 Oct 2019 15:12:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB8651BF9B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 17:39:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB2A2226B2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 17:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dGj2lLl6yP3h for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2019 17:39:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by silver.osuosl.org (Postfix) with ESMTPS id 9070223039
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 17:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570124327;
 bh=/TbK1mymQEaa2H+046Wrhdb127ERFuPBUEYgqSfKjCo=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=I/tqS1OqKdC6MCVWUUEoyf64re8NeYUOm04KtuqTmHFD9zxl72LuyMfY8AVKjLJr3
 CkGD07es8AA0tVfCcOYQIJbvxvkop6CqI4437no1asQRE3ZmHn40dLkdvgsNwSHGAl
 KV7FqcUakhx+OrxkSexSWAv5d0/PM/zwlXDv+AM8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([89.0.25.131]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M6lpM-1iCDyz1GvO-008HpZ; Thu, 03
 Oct 2019 19:38:47 +0200
Date: Thu, 3 Oct 2019 19:38:43 +0200
From: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20191003173843.GA19803@latitude>
References: <20191002150956.16234-1-j.neuschaefer@gmx.net>
 <20191003104737.3774a00f@lwn.net>
MIME-Version: 1.0
In-Reply-To: <20191003104737.3774a00f@lwn.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:IwwsrWR/0STQtQnGk01FB0eTCBKrJppKW8/DjClPV/XAPz0A3yh
 bH4GjKQfaB+pdfh0SKsLkoLfPfKGo8fCiGReYHq+CYsncV9zyeKsddxRgjH2m5kdg33iB6b
 d71jqPXCHEdoGNoiqC4Fcn/DL2e9SLCs0bFx/andqOQGDxv+QI5EwHru2NKAyglMXnfxGHe
 IlaAaTIUEIZPe0MjunJOg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:KxC9MUHuFSE=:RplwkCc4Y029tfvsaEStjk
 PQreAmrgqL0zQKzu+r/jU9JbGt7E408nDWt5rzGeXEmr7GbJg7lUWNIPelQyPugTccxAGUVQx
 DSwZt/2qsVRiDpZ04oXZ75rndEzfnWLMcfD+Yi0FVzt+Tsv2MQMxyu2C5KsksXff00g5vPlbU
 6VhWZfMLEx2jNX8Eq93pZdM3Ntg/FLkMa9jKItRaRapy6y4tocNddCLR32sHEywQrfKxerBbi
 /HVzR4la0ueaZlBRCy9kpvwXh8l8sdQf6X+loOQupwjyWk5xJgWKnW14MS+4+MDb5ATfT+TCI
 3lZJhZJb09+KSgGZ0GPsGxb5vx9SMR7nRYYHagHX5uclyNhkC/Irt8CgHd5sGdciW7x5zW4SB
 xwajpisovtWlYvgUh9fuB7jFrHQ4OYRdLykOhM0h8NhIhOQzajCZVKDw3WeI1bVs3ceqDBS1a
 DNTRJtIapT6vrW/QSHOO5g88bY/wHPKhjtg1o6xxdOlZ96UDo9XRDZyYhI0GNAFKTnmCeBpR2
 V9JmzKOfv9mXO9MV10oLDZMp5w4g/2DBwa2UzJuXP8NLBIiwdalfqBEYZRaktzL26mTM/9Fua
 4AKQwmYENqrDTEl5FglcO+abE7i8E/S6Pw0MtSeM5lcXC3L/42fANT+1Jy3ubsmwTRMNJdDHp
 vAjdbUDoVzAUvg/g44QYUUYd1h3Er2G17GaXwUGW/32Ex6WyypOqiHFD/79g+MtRZa5x4SZIQ
 b9ZYq4CvY3lCz2MaDufdItDVU2cAOoPVtgn2PqMBu8Is3CUExjZssvPTJHhGyJ+LW8swPUCVd
 RkxSKtK948JH6zebZUqWOsLzTYDla5oNRM3xNOV8jvRC9ave9D2AFsdDBVX0zMySJWaTlg/iO
 ztx/mgNyhlZSUTnuMUwJnt+5OSn7XqumDHEaMk0x70IX6kilEV1Nrr3+PdSzhPnc61dQPjj3i
 Jwd/ZH9lk/NkYzEDyTsgD/uc+3uJ0fUmFdznFnX1F01FjG9dyeasFXn1L6eXvw9KBt1UA+t+j
 NULaUafEgiIuZnbt6iBVQr8Dz5FxZYsh4u0/d+OeVMu+nDE0+Aj4Zqouco+Lf3J67zOlCxeMC
 1IcvGBaqWdDvLxIwKDQQNC27Roayv3wFweZbXlDv0u61cmKf5qn3WSWHnHvfhZNAVXsHmAQkq
 DwZ26h0ZaXnt9y3HWJULFrSpyMMcGkkD2bwKC6ChrpAUkrxXOWsuK9vlsWkaVYisTuGKMr2mA
 jJBMR4ZdpN4P6XaHBiEG3ZkGi26vflyocBK2Nq7MrJviHsSTZtCxOi6Gzfsk=
X-Mailman-Approved-At: Fri, 04 Oct 2019 15:12:08 +0000
Subject: Re: [Intel-wired-lan] [PATCH] Documentation: networking: device
 drivers: Remove stray asterisks
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
Cc: linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Pensando Drivers <drivers@pensando.io>, Shannon Nelson <snelson@pensando.io>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============5508232813155553660=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============5508232813155553660==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline


--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 03, 2019 at 10:47:37AM -0600, Jonathan Corbet wrote:
> On Wed,  2 Oct 2019 17:09:55 +0200
> Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net> wrote:
>=20
> > These asterisks were once references to a line that said:
> >   "* Other names and brands may be claimed as the property of others."
> > But now, they serve no purpose; they can only irritate the reader.
> >=20
> > Fixes: de3edab4276c ("e1000: update README for e1000")
> > Fixes: a3fb65680f65 ("e100.txt: Cleanup license info in kernel doc")
> > Fixes: da8c01c4502a ("e1000e.txt: Add e1000e documentation")
> > Fixes: f12a84a9f650 ("Documentation: fm10k: Add kernel documentation")
> > Fixes: b55c52b1938c ("igb.txt: Add igb documentation")
> > Fixes: c4e9b56e2442 ("igbvf.txt: Add igbvf Documentation")
> > Fixes: d7064f4c192c ("Documentation/networking/: Update Intel wired LAN=
 driver documentation")
> > Fixes: c4b8c01112a1 ("ixgbevf.txt: Update ixgbevf documentation")
> > Fixes: 1e06edcc2f22 ("Documentation: i40e: Prepare documentation for RS=
T conversion")
> > Fixes: 105bf2fe6b32 ("i40evf: add driver to kernel build system")
> > Fixes: 1fae869bcf3d ("Documentation: ice: Prepare documentation for RST=
 conversion")
> > Fixes: df69ba43217d ("ionic: Add basic framework for IONIC Network devi=
ce driver")
> > Signed-off-by: Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>
>=20
> So just FYI: as I applied this, I removed most of the "Fixes" tags.  The
> cited commits were adding documentation as plain-text files, so the extra
> asterisk was *not* an error to be fixed at that point.  The RST-conversion
> patches, instead, should have caught that...

Ah, ok. My reasoning here was more that the asterisks had no meaning
when the text files were added, rather than about potential ReST syntax
errors.


Thanks

--lrZ03NoBR/3+SXJZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAl2WMhsACgkQCDBEmo7z
X9s/sQ/+Lco7NZOLyMdMnHgNzdP9zdwEygec/+bKavlX+Ryx0TIHoL0wtTX83vAZ
ef68QPhiZ6HsctpZuukxbFw1Hx9bPwMPWVbNSgavGv73YC6h8Ez9ev9SzGsEMVjL
vFZOd9qMiPN1wJOt7aSxeeth41NOjqEswjYSdYN2No+C/YIFWLwLRF7oQ1co1wm9
qHpeBUULMHNuCQ2rXQy6L+3hFDztpoviRIb8i01Mj5pc/2qaHNuca+LiIsApVdEw
P+kEfov1zpHOoE5nZdZ7runSUR866aGWWMKHsrKNQu1zHWaMh4wTZn227GSypTYY
PoNTbOQOO0ckECSlXEMFmEIpJmJsefbzhl9LnDdFJs73v4wEb29hSxt62RHQpdpd
v9SwDb1bVO04kGeptyLKMIK2sGASQzyKU4fCijEV98IS3EUv/lQQBu29Ng6Z3Ldt
6kDbh5eye5iBepQSVO4OXrpauvIKdeb/gU474o2qqTBHjwLOZNtOh1IL0/guj2m0
a/VEzaS1Xbf6u0Plc8ZVUy+a7rCiqUoZEv5iz9H2uvNDRgV/Gf3s/o9A5oODOErR
/oNthdxtvhPF/wAahDva/U8+Fgw5Bbu9yzgic3xMXvXzi/j/FcLqbnrZ9RFFMXXx
ALutVWTyj/Rczdryz3q/iv2yNZP7xPJ9i8u4saPzk+yZ6B00Chk=
=ae3K
-----END PGP SIGNATURE-----

--lrZ03NoBR/3+SXJZ--

--===============5508232813155553660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5508232813155553660==--
