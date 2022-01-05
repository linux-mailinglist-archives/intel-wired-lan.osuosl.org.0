Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C88485576
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 16:09:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEB864163A;
	Wed,  5 Jan 2022 15:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ICPdaS7rDMl; Wed,  5 Jan 2022 15:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B225241614;
	Wed,  5 Jan 2022 15:09:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E027D1BF574
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 14:05:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC74942868
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 14:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S-Uxhq9elmKd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jan 2022 14:05:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED6F140879
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 14:05:03 +0000 (UTC)
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1n56uH-0000CK-Ba; Wed, 05 Jan 2022 15:04:49 +0100
Received: from pengutronix.de
 (2a03-f580-87bc-d400-7899-4998-133d-b4b9.ip6.dokom21.de
 [IPv6:2a03:f580:87bc:d400:7899:4998:133d:b4b9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 5F8C96D1A43;
 Wed,  5 Jan 2022 14:04:44 +0000 (UTC)
Date: Wed, 5 Jan 2022 15:04:43 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Eric Dumazet <edumazet@google.com>
Message-ID: <20220105140443.vwobz3yx4z3rux6a@pengutronix.de>
References: <0000000000007ea16705d0cfbb53@google.com>
 <000000000000c7845605d4d3f0a0@google.com>
 <CANn89i+LbcWn3xoYU-eMjjmQPz0x1pSAat2OpF=i0+RByc-h4w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANn89i+LbcWn3xoYU-eMjjmQPz0x1pSAat2OpF=i0+RByc-h4w@mail.gmail.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Wed, 05 Jan 2022 15:08:53 +0000
Subject: Re: [Intel-wired-lan] [syzbot] kernel BUG in pskb_expand_head
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
Cc: syzbot <syzbot+4c63f36709a642f801c5@syzkaller.appspotmail.com>,
 Oliver Hartkopp <socketcan@hartkopp.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Eric Dumazet <eric.dumazet@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 intel-wired-lan-owner@osuosl.org, changbin.du@intel.com,
 netdev <netdev@vger.kernel.org>, Yajun Deng <yajun.deng@linux.dev>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Christian Brauner <christian.brauner@ubuntu.com>, linux-can@vger.kernel.org,
 David Miller <davem@davemloft.net>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============2098048598322283706=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============2098048598322283706==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="72ar6nyolsauz65r"
Content-Disposition: inline


--72ar6nyolsauz65r
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 05.01.2022 05:59:35, Eric Dumazet wrote:
> On Wed, Jan 5, 2022 at 3:20 AM syzbot
> <syzbot+4c63f36709a642f801c5@syzkaller.appspotmail.com> wrote:
> >
> > syzbot has found a reproducer for the following issue on:
> >
> > HEAD commit:    c9e6606c7fe9 Linux 5.16-rc8
> > git tree:       upstream
> > console output: https://syzkaller.appspot.com/x/log.txt?x=3D148351c3b00=
000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=3D32f9fa260d7=
413b4
> > dashboard link: https://syzkaller.appspot.com/bug?extid=3D4c63f36709a64=
2f801c5
> > compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binu=
tils for Debian) 2.35.2
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D15435e2bb=
00000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D12f4508db00=
000
> >
>=20
> This C repro looks legit, bug should be in CAN layer.

ACK - it's bug in CAN's ISOTP

> > The issue was bisected to:
> >
> > commit e4b8954074f6d0db01c8c97d338a67f9389c042f
> > Author: Eric Dumazet <edumazet@google.com>
> > Date:   Tue Dec 7 01:30:37 2021 +0000
> >
> >     netlink: add net device refcount tracker to struct ethnl_req_info
>=20
> Ignore this bisection, an unrelated commit whent in its way.

ACK - We have a RFC fix for this:

https://lore.kernel.org/all/20220105132429.1170627-1-mkl@pengutronix.de

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--72ar6nyolsauz65r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmHVpXkACgkQqclaivrt
76m+pAf+M8hsvuG1OEtF6bw1HNGyTla1VDEhL4hbgurkpql5872fKSOA+ROtuCKi
I2gOI0cqp/kJNzH1fdIQuiXuIqaM1f38sXb3q51Ng9TsXpk82Rd3FHpHK698t/Rq
ImxBIWHEQWzGgIYcRfP/WKh2dsNzLyW4dFo4hmPMuacEluVI7JAmr/dU1OvXebH0
1D1Z63rR37GOnQL9M/Sh2oY29UC/n5a4BDMC42en3Wb+5vMEPEH5S/AjvG1MBzen
YlCkkIEhyHM2DqN9jaXG6/rbaz5ckPxaEm+ES3xNDg9aHSS0zLi/Ct9nyrl5tJlm
KXMaxmP7EmEYr1W9XIVrHhZVs5h2aQ==
=1PmX
-----END PGP SIGNATURE-----

--72ar6nyolsauz65r--

--===============2098048598322283706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2098048598322283706==--
