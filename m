Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECBE8A2A3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2019 17:49:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3740E83FF4;
	Mon, 12 Aug 2019 15:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sDQv1tgdgo9e; Mon, 12 Aug 2019 15:49:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52A0C83F06;
	Mon, 12 Aug 2019 15:49:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9052C1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 15:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8C32B220E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 15:49:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aVdjgpjfN6n9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2019 15:49:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 4E0D31FD90
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 15:49:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 08:48:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; 
 d="asc'?scan'208";a="327390767"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga004.jf.intel.com with ESMTP; 12 Aug 2019 08:48:53 -0700
Message-ID: <016fd56f6128723b6112f1dfe938c9c641e422dc.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org
Date: Mon, 12 Aug 2019 08:48:53 -0700
In-Reply-To: <20190810101732.26612-16-gregkh@linuxfoundation.org>
References: <20190810101732.26612-1-gregkh@linuxfoundation.org>
 <20190810101732.26612-16-gregkh@linuxfoundation.org>
Organization: Intel
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 15/17] i40e: no need to check
 return value of debugfs_create functions
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
Cc: intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============8933921366190763020=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============8933921366190763020==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-gpvAGt0BDOe1HuoxIctz"


--=-gpvAGt0BDOe1HuoxIctz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2019-08-10 at 12:17 +0200, Greg Kroah-Hartman wrote:
> When calling debugfs functions, there is no need to ever check the
> return value.  The function can work or not, but the code logic
> should
> never do something different based on this.
>=20
> Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

> ---
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    | 22 ++++-------------
> --
>  1 file changed, 4 insertions(+), 18 deletions(-)


--=-gpvAGt0BDOe1HuoxIctz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl1RimUACgkQ5W/vlVpL
7c763Q/+OSDQpuPnOE7cSF2ADx/seyiELQQz1zWAMcP/cBXw05nyrDVp6OVnhzJt
eUQo902CfmFi2aLJwr4nv2V01/iiXPQigtq7zRXfAti6xcwq9o3bil7o9nsiIX9I
J+CzUySEe+8o2vnb9DmxncwKcwTamJ4Bm60sKO2IZ4L26kZWLk8IzExou6D9p01a
KCMnb/EkZOufqnB68mOe5Yss4hxqtPJIqY+UzjvmAoLEHmTASI8mNZ+dOjTOmpAE
4b/qg9T4LInDdUYjGHIQCpnh61vJLiU0R+VtAtLQwGDS9Q+Oxtndo4wsiAxYnfRR
GSjqbAFsIfy432PQG30EwFgGb7Vq9REPMHOMJYXViKuUeluVbF9voSMC9HVaJ/xg
7yDssWwIDb9ylkpjpiVAdoo5jCZ+NAqLUMCAnLcr5/u82O+A/hq8QCUfGZMYN10e
HVO7ZlUtJA1la81MU3ZxYcNprhcWtZK63Tvbg2h5TMmGJyolTVBlk1U4SFdsmDrl
9BPj5wjLDvcZymAIdBPK+oNUj4R7vyK3yoCqAsC7q4735L2tkcljkw38+BtTerRO
xWya/3J97ezf2U6fp61VfSbThI0Msqi2eVySxVDqUjiK3Kc+Ml1Ou0LsJa6nt9D/
h75LaxXiK1YIiSi7m6cJwrkcKt7JyZtr+XeiyCRJcmp9bpPEYbg=
=EyOA
-----END PGP SIGNATURE-----

--=-gpvAGt0BDOe1HuoxIctz--


--===============8933921366190763020==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8933921366190763020==--

