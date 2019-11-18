Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC68100B78
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2019 19:29:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44809844B7;
	Mon, 18 Nov 2019 18:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m95Ys7aUOSSk; Mon, 18 Nov 2019 18:29:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86FC3845AA;
	Mon, 18 Nov 2019 18:29:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B5D11BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2019 18:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5633321561
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2019 18:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tp8mAWO-FozK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2019 18:29:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 6BA9B2155E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2019 18:29:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 10:29:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,321,1569308400"; 
 d="asc'?scan'208";a="356860973"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.74])
 by orsmga004.jf.intel.com with ESMTP; 18 Nov 2019 10:29:20 -0800
Message-ID: <92b94935dea3b8c7e7236d6f4e1ac148e6cd2ffd.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Jan Janssen <medhefgo@web.de>, intel-wired-lan@lists.osuosl.org, 
 "Neftin, Sasha" <sasha.neftin@intel.com>
Date: Mon, 18 Nov 2019 10:29:20 -0800
In-Reply-To: <3945198.J3aOToa6sv@minako>
References: <3945198.J3aOToa6sv@minako>
Organization: Intel
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Regression: e1000e link not coming up
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
Cc: "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============6047007901265519222=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============6047007901265519222==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-pcQuMDGRxQ3AgA6v1Ruz"


--=-pcQuMDGRxQ3AgA6v1Ruz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2019-11-16 at 12:50 +0100, Jan Janssen wrote:
> Hi,
>=20
> since 5.3 my I219-V network interface sometimes doesn't come up when
> booting
> or resuming from suspend. This either forces me to use "ip link
> down/up" or
> reloading the module to get working internet.
>=20
> I reported this issue previously to netdev@vger.kernel.org where I
> initially
> bisected to a wrong commit. After finding the right one nobody
> reacted to it,
> so now I am trying this again here.

I apologize, this is the correct mailing list for issues with the Intel
wired LAN.


> There is also a bugzilla entry for this, but it seems to be ignored
> by
> maintainers too: https://bugzilla.kernel.org/show_bug.cgi?id=3D205067
> For me, this happens with systemd-networkd, but the people in the
> bugzilla
> report are observing this with NetworkManager.
>=20
> The commit introducing the bug is
> 59653e6497d16f7ac1d9db088f3959f57ee8c3db
> (e1000e: Make watchdog use delayed work) and reverting it did make
> this bug go
> away. Though, it cannot be reverted automatically on the latest git
> tree from
> Torvalds anymore.

I will work with the e1000e driver lead (Sasha Neftin) to work up a
patch that will apply to David Miller's net tree.  I will make sure you
are CC'd on the patch, so you will know when it makes it into the
upstream kernel.

> I've also tried the master branch on jkirsher/net-queue.git  and
> jkirsher/next-queue.git, but the bug is still present there too.
>=20
> This bug is really annoying and inconvenient, so I would really
> appreciate if
> somebody could fix this bug or at least have the offending commit
> reverted.
>=20
> Regards,
> Jan
>=20
>=20


--=-pcQuMDGRxQ3AgA6v1Ruz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl3S4wAACgkQ5W/vlVpL
7c4thhAAodUWquLYk1BV+8mILhwg4hFkfjDe6jN3z6AbBq8nzHm5UzrlhzPwY04n
x71Q+IwH9L1j8LZiJ7KIXENUS03BNUQ/OeUu4e2JXJacE8HI4AxR/i5is/zaQWsI
nUeXV4UIJCc9NGmHJh9p5/4az1IrkYxS7VNUxAdodkCZjlio8TDZn29AnqjTaWmc
5yXCc2lqP1E3opeSso+mCtAUGAM7hxp9wenIQ5Fm6NpDX6Cp+Sb0ydypPT2SCgBR
8MfGYTqChCZE+4nnMvEK26ps9j80UQxT3346hjtizmSSaBW05H73EVQZlryBKAgh
GhwmJbRBKCoprGGbx7D7xI8nKNavfTHE2z8TcDZKUQgLA5C57p8DMwZU9pKjI1gF
nYC6KlqANo7QdcyME1AE16md1MFd3GCxDuH5tGcwxysT4MAt+V/+AdTMx22SgZZb
zYi4+NckQ+sUt83hlm553iRchDJ47wx1FlAgwXuM83duD+VpVtX27VyJTLMAr2zC
LYFyOyh23NQE3YStzJ9p935mLA6C+9wXEloHp+ade6i50+2WH/vBeAsVCvZZ7p18
ZE4/Vku40ECol4aCzvJHQaxoA0WgNUIiQlkc6FEHepjqI51aTohImqXS544kbdBR
/58rFL9PomE6IllD8khbfrkjF7rHnXheJqJd5cmK2h+Y5wxVXv0=
=Mxwy
-----END PGP SIGNATURE-----

--=-pcQuMDGRxQ3AgA6v1Ruz--


--===============6047007901265519222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6047007901265519222==--

