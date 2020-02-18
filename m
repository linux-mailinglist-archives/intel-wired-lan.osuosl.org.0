Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5877A163578
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 22:50:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94330204F0;
	Tue, 18 Feb 2020 21:50:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FuwK4SWHzkWp; Tue, 18 Feb 2020 21:50:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 87976204E8;
	Tue, 18 Feb 2020 21:50:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 835021BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 21:50:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7F4FF8495A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 21:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7zDNnj75R_bd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 21:50:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3020784922
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 21:50:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 13:49:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; 
 d="asc'?scan'208";a="434250424"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.76])
 by fmsmga005.fm.intel.com with ESMTP; 18 Feb 2020 13:49:59 -0800
Message-ID: <3f966849ef8a21343d5a96b1ef89b7ad00b65b80.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Heiner Kallweit <hkallweit1@gmail.com>, David Miller
 <davem@davemloft.net>,  Alexander Duyck <alexander.h.duyck@linux.intel.com>
Date: Tue, 18 Feb 2020 13:49:58 -0800
In-Reply-To: <47621909-1b75-e8d1-cf32-857c1601e0af@gmail.com>
References: <fffc8b6d-68ed-7501-18f1-94cf548821fb@gmail.com>
 <47621909-1b75-e8d1-cf32-857c1601e0af@gmail.com>
Organization: Intel
User-Agent: Evolution 3.34.3 (3.34.3-1.fc31) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 06/13] e1000(e): use new
 helper tcp_v6_gso_csum_prep
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============8640625490073308935=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============8640625490073308935==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-796u9qmPm7ptgG3w0PuR"


--=-796u9qmPm7ptgG3w0PuR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-02-18 at 21:05 +0100, Heiner Kallweit wrote:
> Use new helper tcp_v6_gso_csum_prep in additional network drivers.
>=20
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>

Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

> ---
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 6 +-----
>  drivers/net/ethernet/intel/e1000e/netdev.c    | 5 +----
>  2 files changed, 2 insertions(+), 9 deletions(-)


--=-796u9qmPm7ptgG3w0PuR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl5MXAYACgkQ5W/vlVpL
7c7JJRAAja7gTuoCY8nLUTo/e7RixJCcGoY9h5CIHHGwnH2rgCX+uVtSwaLhprto
4w+ku8RVydlnA9dACtEMljTnC2jiC6Wdh13M9cvLO7BFTcvqTG06BjrRCKB8UQC8
fJRoC+JkNVNJ8Z4VQ7x6TRNTTZaHfzAVn5rqlmxZ67BWNeq9bsLgn4CBirXiR7BB
5rgc0/jUvFV6k1G9RTUfqecvjpkX2siOzL8OQAK5VK3B/FzqhcWjUhJGlzoNVAp2
3DA0h+mVkA6xfsjJFb6TC+Hbf0XyScSVUdh3mgwbNxDcqeHUlIk4hvoJMD4I83Uy
AMxzCXMeC9cRczdIlwqcB+5iyE02J/GtMxzeZTE2Tj2IYEMI0mo4jktWDMqY+TPD
2CJ8UyQP2jF7xZjDv8yNhZFPUiKOU4g+WQrnLqZ3cBCjE4qEJk3iTGRlaMrbnA3g
rIK+CDTeJ2FGmhj0f8kqRW+wAiaUD3b0AWHEhh5WlaxbK7116JGIQ67gWQ0mOnQX
8Gu6PlzVjgdf0ZYlc0DtuzeBdXI5qDMxmDMme2kASAhTVvcJOhKXUxPQ0ii7aEdo
KTUQtgRDegW31wH6gOnsZBOUZ2xIYgC8Co4Vrss84U2axHBHT8JXcDd1oHSIyKgt
tQBuSQ8iHDLHiyIInbLgc1yGmWShwOMupIJKLYw3qpsSwbdxF+M=
=bwIq
-----END PGP SIGNATURE-----

--=-796u9qmPm7ptgG3w0PuR--


--===============8640625490073308935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8640625490073308935==--

