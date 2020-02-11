Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19429159DA5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2020 00:48:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 097A020423;
	Tue, 11 Feb 2020 23:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L7vf4DAn+MiK; Tue, 11 Feb 2020 23:48:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DA06020502;
	Tue, 11 Feb 2020 23:48:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E531D1BF33F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 23:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DC08A8647A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 23:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q4dwyaYyLYQY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2020 23:48:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3589881DD2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 23:48:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 15:48:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; 
 d="asc'?scan'208";a="233621554"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.74])
 by orsmga003.jf.intel.com with ESMTP; 11 Feb 2020 15:48:09 -0800
Message-ID: <43c9336e1c0c23e374420586868052e947b75126.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Linux PM
 <linux-pm@vger.kernel.org>
Date: Tue, 11 Feb 2020 15:48:09 -0800
In-Reply-To: <10624145.o336LLEsho@kreacher>
References: <1654227.8mz0SueHsU@kreacher> <10624145.o336LLEsho@kreacher>
Organization: Intel
User-Agent: Evolution 3.34.3 (3.34.3-1.fc31) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 20/28] drivers: net: Call
 cpu_latency_qos_*() instead of pm_qos_*()
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
Cc: Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, LKML <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>
Content-Type: multipart/mixed; boundary="===============7601743566128866768=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============7601743566128866768==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-GaZoanpPv4L3uFpFpUoG"


--=-GaZoanpPv4L3uFpFpUoG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-02-12 at 00:24 +0100, Rafael J. Wysocki wrote:
> From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
>=20
> Call cpu_latency_qos_add/update/remove_request() instead of
> pm_qos_add/update/remove_request(), respectively, because the
> latter are going to be dropped.
>=20
> No intentional functional impact.
>=20
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com

For the e1000e changes

> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c   | 13 ++++++-------
>  drivers/net/wireless/ath/ath10k/core.c       |  4 ++--
>  drivers/net/wireless/intel/ipw2x00/ipw2100.c | 10 +++++-----
>  3 files changed, 13 insertions(+), 14 deletions(-)


--=-GaZoanpPv4L3uFpFpUoG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl5DPTkACgkQ5W/vlVpL
7c4a3g//SCBWhCZ3vnz6qb26ASH5pK5fgz/l9o0FmD/sOn6jHfXbGmD3C8zTo6ic
j1pQ488wAXMKm+Ay6CNyy3tqC3l9Lg1GKu6wQ4R/evm7cCk38Mwg7+sHa5aNdjwo
6+KmMvHD9aY3Ya+QzsrJg5ZztvW/CWP69SJ1J2JfM9a401S0Us5MX/O2WmdyYo/9
nXRGTYYj3Aekg1Ghs2JdWkYyiPGUDTic1R8psB8I7rDHZV5zmrrBferSMz8jB9Gk
ReQE43h5rF0CZKQevMws/J6gO2Ndfbre5BZoXA7wydzs4kkV2O98u0aTc/HBP16l
q8vf//TZ0cJy+rTEexxKIlWsfdIKQbYsWIenY6GEjR7W0n/chJYQZw40wGODisMd
Et4ZZwL7fVpWxLxVtSrhlAieD2RpAYyCYl6l9s46lcmHSf59kbx1EyN/EmwrpEIn
N9wCiCX9s1Nj4kH1CQAdTXhK8InLFKxKdApKSbACTwXyKuxMB/Pk65fbh4BVGTGo
kX0PZgKNIFo4+YvZZUwin+rioyBGQopgfbgy5z4StXQ2Rd0jEpwrMIu0mxXy39PG
X9A0+gUBAlsWDr+Jv8NCXpw5Q74vbSzHuUZwi4wpDbwnjqb6WO2yXv9mJXJCgR+b
xJA8RDrjt9XmBr4zk43EzPZqqPlp5w2oiPH3e7cJ84sDSG7H9Sc=
=6ivJ
-----END PGP SIGNATURE-----

--=-GaZoanpPv4L3uFpFpUoG--


--===============7601743566128866768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7601743566128866768==--

