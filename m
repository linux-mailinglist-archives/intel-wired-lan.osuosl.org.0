Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8541A2108F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2019 00:36:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D61886775;
	Thu, 16 May 2019 22:36:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QLrjoPDGInGj; Thu, 16 May 2019 22:36:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 24B758676E;
	Thu, 16 May 2019 22:36:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D2681BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 22:36:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 87F3622650
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 22:36:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Szup0Phs9zL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2019 22:36:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E6DD21F76
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 22:36:17 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 15:36:16 -0700
X-ExtLoop1: 1
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by FMSMGA003.fm.intel.com with ESMTP; 16 May 2019 15:36:16 -0700
Message-ID: <19c1d6910766549625766d4209ded28c26cebfe8.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Paul Stewart <pstew@chromium.org>, netdev@vger.kernel.org,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Date: Thu, 16 May 2019 15:36:14 -0700
In-Reply-To: <CAMcMvsgiebYeAc7csDog=j4cj9h2_QdLm7dO=7hU5BOceN6anw@mail.gmail.com>
References: <CAMcMvsgiebYeAc7csDog=j4cj9h2_QdLm7dO=7hU5BOceN6anw@mail.gmail.com>
Organization: Intel
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] ixgbe device for Intel C3508
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
Reply-To: jeffrey.t.kirsher@intel.com
Content-Type: multipart/mixed; boundary="===============3794035549290287519=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3794035549290287519==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-JCuSoS8vkQpIrPqPQkUf"


--=-JCuSoS8vkQpIrPqPQkUf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-05-16 at 12:53 -0700, Paul Stewart wrote:
> I was pleased to fine that the ixgbe driver had good support for the
> 10GBit interfaces on the Atom C3708 device I was using.  However, the
> same is not true of the 2.5GBit interfaces on the Atom C3508.  The
> PCI
> IDs on these interfaces are very similar -- 8086:15cf on the C3508 vs
> 8086:15ce on the C3708.  Modifying the ixgbe driver to simply treat
> 8086:15cf almost works -- the 4 Ethernet interfaces are discovered
> and
> *something* happens when I plug in a Gigiabit ethernet cable into the
> SFP port:
>=20
> [  269.233242] ixgbe 0000:0c:00.0 eth1: NIC Link is Up 1 Gbps, Flow
> Control: RX/
> TX
> [  269.240733] IPv6: ADDRCONF(NETDEV_CHANGE): eth1: link becomes
> ready
> [  269.337230] ixgbe 0000:0c:00.0 eth1: NIC Link is Down
> [  289.682588] ixgbe 0000:0c:00.1 eth2: detected SFP+: 6
> [  392.859888] ixgbe 0000:0c:00.0: removed PHC on eth1
> [  393.497099] ixgbe 0000:0c:00.1: removed PHC on eth2
> [  394./MA257214] ixgbe 0000:0d:00.0: removed PHC on eth3
> [  394.867122] ixgbe 0000:0d:00.1 eth4: NIC Link is Up 1 Gbps, Flow
> Control: RX/TX
> [  394.889384] ixgbe 0000:0d:00.1: removed PHC on eth4
>=20
> Clearly not all is well, as could be expected -- I'm sure there's a
> real reason why these are separate PCI IDs.   Is there someone out
> there that can point me at docs I can use to support the device
> myself, or does anyone know if support is coming?  Should this device
> be considered an X550 or is this a different device fundamentally
> (should I not use the Intel X550 docs as a reference, if I were to
> hunt down some documentation about the difference between these
> parts?)

Adding the intel-wired-lan mailing, which is the proper mailing list
for issues like this.

Let me look into this and get back to you.

--=-JCuSoS8vkQpIrPqPQkUf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAlzd5d4ACgkQ5W/vlVpL
7c6mWhAApiJNKHdZELQE2OJyHKg7krP3ZVadEpI1LXRJvx+5uVJ0iZ9zsqTS1cXF
EbGq4ouB4uAtAfdQOdQKIk77OiiMt+64oCgOGlsCvviht09p2kB2/9tFFdIFESbB
QZRQ82EnYaCLPQpBsKzApsoYIun8wRDJN+ouCMezrBsoHmvStzVOWG4gj+YyUQ0s
aud13pFxWG18/0loVwUS2o9vCEo1hUYy5ntFGBSgRranGk9fIki0Psc6RvsPgVfr
UhDU8QMIis6mYY4SUS1s3/tV2ZPWLR86kBFkACkaE/6l8cWCxS1v1EqSa1RB42fZ
0t3WIbfPxdWPUy727wzPFkSqreu8Xe2DWokG1iIBjsyLRqwdrYQVW7Xukzo6mucC
jdm1xs1bj/K3UW2Sm5toBR8KSXPcyQEkD0adPZ5Vnxfkg0BRSg4evISkN4FfUaRZ
Daiy4Y/sMOGmU8eca2yb9ZENw0EycKvP9zTS+Me/3BkUsQA6qt0nznlBO4H7UDev
OfWG8mQ4LrhZEm26w7LKwBgXvSPLD8cRkcLBijbYMv8z1Wo3z3h+L5iboJojgJNL
Y0eu1zFFw8Q4JWH89tpsUZLsWbPw7qTaE6K+5Vt/F4G1vTVWuQyOTGW3Bg7rrYr/
HaRRKALh+2z40r2xpY/0U4WoZtMha/Lc8YF3aSQZA5KWBSXvToo=
=ln/b
-----END PGP SIGNATURE-----

--=-JCuSoS8vkQpIrPqPQkUf--


--===============3794035549290287519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3794035549290287519==--

