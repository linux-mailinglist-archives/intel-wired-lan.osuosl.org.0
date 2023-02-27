Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D55516A46FA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Feb 2023 17:29:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9D9960FE4;
	Mon, 27 Feb 2023 16:29:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9D9960FE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677515376;
	bh=IsG1KGPpHoibjq+/B1shDddexWHD1Y3k7/qlqtt5oZc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fw0L3Ky7jM/5Tqrp9ISfYmJPp6syHaScIxLUfwMfkwVK3lt5KJ0fv8W5gOG6x0oTI
	 fZ5exTiOj1ZgUWu5NEmsiVp1I6/TfwxQLRpUx5J+GnBeMGZp08WsJ6zLISFe7HaUNT
	 YA6w6rDqi8f65aBZhP+b0Xxm1N79X+COE7KHfHpbWm8xbnXQf5Ch0ZF/0Zo5dmbpm7
	 MqabT1f9unulHkjC1Q968+l2lWhtoguRuoD42YnchxvnHwY6cpeOLvG5DUCTkDA7Wm
	 Ur6A3OStK6ysCjwBVEyvtzo0fkZ9tkxmz9cZlo3nIw2XoOJlqo/tq/KzHpSNcOk6gU
	 aImSQgtoralxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N3K1gijEKTcw; Mon, 27 Feb 2023 16:29:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA3EC60BE4;
	Mon, 27 Feb 2023 16:29:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA3EC60BE4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59F701BF38E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 13:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F9D0409B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 13:06:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F9D0409B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Aw2Bi04F9zqQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Feb 2023 13:06:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A02F40982
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A02F40982
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 13:06:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 344FF60DFB;
 Mon, 27 Feb 2023 13:06:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5C8FC433D2;
 Mon, 27 Feb 2023 13:06:14 +0000 (UTC)
Date: Mon, 27 Feb 2023 13:06:10 +0000
From: Mark Brown <broonie@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <Y/yqwifeQBC3sSaD@sirena.org.uk>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-6-o.rempel@pengutronix.de>
 <Y/ufuLJdMcxc6f47@sirena.org.uk>
 <20230227055241.GC8437@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230227055241.GC8437@pengutronix.de>
X-Cookie: On the eighth day, God created FORTRAN.
X-Mailman-Approved-At: Mon, 27 Feb 2023 16:29:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677503179;
 bh=+TZvd92l9qjnJ46cOT5L9UcQe7CKFe0gXGAYlHM+pn4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MBZPUuouC2wHJXTMDns2HmltZ/Am3KtGB6qtPlCrb3/MBdH12QLCyQ124jkJwejTj
 /9jv3pfgL9kql6Rp3/Mq2/oP7T0TD+IVY2I/dEo4N2srigsxf9hH5lZRHbih9dWDwj
 bKmH5HuGP7y3RcKuUDughHTcAD0HLkjvOCAa0YLQU63I5krx7OlxqjLjJRKRa5iMW1
 1WqULk3QoqzkYDvk171oAv6DocJ1wuNnQRljHqnVaZ3QnM0+BZNRt9FqYD6ukaYhF9
 4YfWL+ENcpjdEgqhggrilecv9D1A/jzeAWs5nQjTAv+W3u/OFvR0OfJHKMWv/o+m+N
 5kgeZLeLoTRXw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MBZPUuou
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 5/9] net: phy: add
 genphy_c45_ethtool_get/set_eee() support
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Eric Dumazet <edumazet@google.com>, linux-amlogic@lists.infradead.org,
 Arun.Ramadoss@microchip.com, Florian Fainelli <f.fainelli@gmail.com>,
 Jose Abreu <joabreu@synopsys.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, Wei Fang <wei.fang@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 kernel@pengutronix.de, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============3948262252797166592=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3948262252797166592==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="18YmcFoX2FMeA9qB"
Content-Disposition: inline


--18YmcFoX2FMeA9qB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 27, 2023 at 06:52:41AM +0100, Oleksij Rempel wrote:
> On Sun, Feb 26, 2023 at 06:06:48PM +0000, Mark Brown wrote:

> > Currently mainline is failing to bring up networking on the Libre
> > Computer AML-S905X-CC, with a bisect pointing at this commit,
> > 022c3f87f88 upstream (although I'm not 100% sure I trust the bisect it
> > seems to be in roughly the right place).  I've not dug into what's going
> > on more than running the bisect yet.

> Can you please test following fixes:
> https://lore.kernel.org/all/167715661799.11159.2057121677394149658.git-patchwork-notify@kernel.org/
> https://lore.kernel.org/all/20230225071644.2754893-1-o.rempel@pengutronix.de/

They seem to work, thanks!  I had found and tried the second patch but
it doesn't apply without the first series.  Will those patches be going
to Linus for -rc1?  It's pretty disruptive to a bunch of the test
infrastructure to not be able to NFS boot.

--18YmcFoX2FMeA9qB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmP8qsIACgkQJNaLcl1U
h9Bl6Qf+Kb7ZKOT7CiUaam7FNIgjrgALxbl+vEoK4Jd449ZZ8D4wKW/ZCeFYsMtX
jDz4FdBm3yWIycYw0aDgBv+Rx5022ewQlSidOoHLtqJFyn4C8anRLgge2fCwGXRt
87RUPWhKsqyl7wpZaQirbjkkS5e2eJnXYg7qRUIkNYwjO4IGBxdx4Y05qCGI90vD
d5orhnfGEb5O5rf9JpGlz6X6FuoTaNF+QE8PJWaYve86GxFeZ45r2LA2mwO5KXK2
lR9TEJAspu738yEXGCxU4J6pZn/PAH6MdaAL3nz5SonmmQ4xcPZxveXbYEI2amK+
qUGMfJEdqtVeKb0reNsl0z2pPn1Lwg==
=p/hg
-----END PGP SIGNATURE-----

--18YmcFoX2FMeA9qB--

--===============3948262252797166592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3948262252797166592==--
