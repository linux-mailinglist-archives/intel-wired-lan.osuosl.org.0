Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC02D51710A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 May 2022 15:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4156460E21;
	Mon,  2 May 2022 13:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yFAx04FncVUX; Mon,  2 May 2022 13:57:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A64560ED7;
	Mon,  2 May 2022 13:57:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A40D01BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 14:13:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89FFC60D74
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 14:13:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PJDvJRa-Pjzk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Apr 2022 14:13:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 13FD260AEC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 14:13:35 +0000 (UTC)
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1nkRN3-0001gg-GR; Fri, 29 Apr 2022 16:13:21 +0200
Received: from pengutronix.de
 (2a03-f580-87bc-d400-725c-f539-4e8e-4648.ip6.dokom21.de
 [IPv6:2a03:f580:87bc:d400:725c:f539:4e8e:4648])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id D56B571000;
 Fri, 29 Apr 2022 14:13:18 +0000 (UTC)
Date: Fri, 29 Apr 2022 16:13:18 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Niklas Schnelle <schnelle@linux.ibm.com>
Message-ID: <20220429141318.qonhkqar2nwyub7d@pengutronix.de>
References: <20220429135108.2781579-1-schnelle@linux.ibm.com>
 <20220429135108.2781579-36-schnelle@linux.ibm.com>
MIME-Version: 1.0
In-Reply-To: <20220429135108.2781579-36-schnelle@linux.ibm.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Mon, 02 May 2022 13:57:17 +0000
Subject: Re: [Intel-wired-lan] [RFC v2 21/39] net: add HAS_IOPORT
 dependencies
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 "open list:CAN NETWORK DRIVERS" <linux-can@vger.kernel.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "open list:AX.25 NETWORK LAYER" <linux-hams@vger.kernel.org>,
 linux-pci@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============3131361453803854821=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3131361453803854821==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lqcj2mbryc4mt5il"
Content-Disposition: inline


--lqcj2mbryc4mt5il
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 29.04.2022 15:50:33, Niklas Schnelle wrote:
> In a future patch HAS_IOPORT=3Dn will result in inb()/outb() and friends
> not being declared. We thus need to add HAS_IOPORT as dependency for
> those drivers using them. It also turns out that with HAS_IOPORT handled
> explicitly HAMRADIO does not need the !S390 dependency and successfully
> builds the bpqether driver.
>=20
> Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Co-developed-by: Arnd Bergmann <arnd@kernel.org>
> Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
> ---
>  drivers/net/can/cc770/Kconfig      | 1 +
>  drivers/net/can/sja1000/Kconfig    | 1 +

For drivers/net/can:

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--lqcj2mbryc4mt5il
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEBsvAIBsPu6mG7thcrX5LkNig010FAmJr8nsACgkQrX5LkNig
010rRQf+I21I3qExctz2dzFcblEyXWU6OZwWbigahGhoVi7VXxh/udlftKM5SSh+
Cbv6NDOt9GxEP3/0Y4muCTq4Xg9jQenFXBGXRT89GaRIDiiAT11MOJ/e6YCiAtBq
yHx8f04ddLmYcRFLdgZS5GvWd8/5Ji6XKBdPf3hE5KgYjEhrGNEGWFQgne10eP2c
WqxPPa+kql2KQ2lDKUY6QcNpdhcug0PxAGJL9gnatBMVQGlwotjP/kpeKK7/7LVX
11FA2bCHvNSpqljEGADPjl73qQsnsY9TgauxzytBOgrmDginWo2AmeJ0Pu8KbP5k
bcb5RRiJNIkv36dBdpipE0wixsnf5A==
=iK8a
-----END PGP SIGNATURE-----

--lqcj2mbryc4mt5il--

--===============3131361453803854821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3131361453803854821==--
