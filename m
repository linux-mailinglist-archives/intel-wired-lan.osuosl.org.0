Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D76F3BC8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2019 23:52:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0BA4985D92;
	Thu,  7 Nov 2019 22:52:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jqH1QTCrQnb9; Thu,  7 Nov 2019 22:52:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C47EF85D9B;
	Thu,  7 Nov 2019 22:52:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E69AC1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 22:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E274B86DCA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 22:52:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a8IzBQyLxVAN for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2019 22:52:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 508F686D7A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 22:52:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 14:52:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; 
 d="asc'?scan'208";a="205819558"
Received: from karaker-mobl.amr.corp.intel.com ([10.254.95.244])
 by orsmga003.jf.intel.com with ESMTP; 07 Nov 2019 14:52:18 -0800
Message-ID: <6784fee2096c9bb103b8e0b8eb50cc1d9e494ad1.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org
Date: Thu, 07 Nov 2019 14:52:17 -0800
In-Reply-To: <20191107223537.23440-2-f.fainelli@gmail.com>
References: <20191107223537.23440-1-f.fainelli@gmail.com>
 <20191107223537.23440-2-f.fainelli@gmail.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] net: ethernet: intel:
 Demote MTU change prints to debug
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>, Timur Tabi <timur@kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============5731765123357461783=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============5731765123357461783==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-+hEZUL/LnhJlbIkpTIaT"


--=-+hEZUL/LnhJlbIkpTIaT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-11-07 at 14:35 -0800, Florian Fainelli wrote:
> Changing a network device MTU can be a fairly frequent operation, and
> failure to change the MTU is reflected to user-space properly, both by
> an appropriate message as well as by looking at whether the device's MTU
> matches the configuration.
>=20
> Demote the prints to debug prints by using netdev_dbg(), making all
> Intel wired LAN drivers consistent, since they used a mixture of PCI
> device and network device prints before.
>=20
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

> ---
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 4 ++--
>  drivers/net/ethernet/intel/e1000e/netdev.c    | 3 ++-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 4 ++--
>  drivers/net/ethernet/intel/igb/igb_main.c     | 5 ++---
>  drivers/net/ethernet/intel/igbvf/netdev.c     | 4 ++--
>  drivers/net/ethernet/intel/igc/igc_main.c     | 5 ++---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
>  7 files changed, 14 insertions(+), 14 deletions(-)


--=-+hEZUL/LnhJlbIkpTIaT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl3EoCEACgkQ5W/vlVpL
7c6Hkw//RAJ6/Y27nm995XzPzodZn0WzSEYsVPgc31gxVqdbPB3ZjbKCqxAgbnth
EA0ktXZh15OLcrONJB73WKDbPaeAGGXB+nPiGWa+6YApJ6YLh1feoqMUnB2Ah6RF
S8o2z3vsXFhzt28Zl0OEIou6/haJLy5ZhSOo9ftaKJmAWgQXbJ8IKQX5HEx4Y4W3
UQ/Zgcly2OgwoHHBwyYEyawhVJbl7+vOyjuk7DZUc9zWuCAOhd2whv74q6JNxS95
1QS3IpETL/S5GJ+FRM5Ijd8FmKxp9/FyknnxWF6mirtqlDTY+jwmmuQtVoKseH/+
RIxJ83NjX8PUtFNRXdRtW16y6OUGe1A1KGMC25u35N4ZSV63fma0d9+zIQzymKfr
8zVP5W1eGK+4lIJq8t8vZUybYPGXF+XevodBpavPX5x89c0yqe3XKNVrjgH1/FVv
J42nRFPijGxnDiUOz+5AgLmNrHy3zV8014fn7rTfpRoPIx+Wq+NoB3fZBZMeFfWA
IVBa7VWe+Xfg7N8GJbAiqTdiy5OScb0bcgv3vKt2f4kWdels0Zk3EkyqybozuKN3
QHl35P0L+p2K5wcC5LGS5jk8iQhcC61fQVar/aAOTR8uXKj9HmPScrQVf48ovA55
lcNSdYZobNrqG2jt/HgTu2pLMzi2Hy8Hc1Ux8thywIzrPKVad/Q=
=wWG1
-----END PGP SIGNATURE-----

--=-+hEZUL/LnhJlbIkpTIaT--


--===============5731765123357461783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5731765123357461783==--

