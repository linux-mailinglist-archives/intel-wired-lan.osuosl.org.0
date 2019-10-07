Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A858CEE97
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2019 23:48:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B058487CDA;
	Mon,  7 Oct 2019 21:48:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ynLhBC0-OU4U; Mon,  7 Oct 2019 21:48:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E73FC87CD2;
	Mon,  7 Oct 2019 21:48:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6BF1BF34C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 21:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 537AA845C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 21:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7gxDoS5GmP2j for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2019 21:48:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CC28B82DFC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 21:48:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 14:48:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; 
 d="asc'?scan'208";a="393159975"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by fmsmga005.fm.intel.com with ESMTP; 07 Oct 2019 14:48:29 -0700
Message-ID: <c1d8f90b8a8bf97554f40aba85154088e5c1181c.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Joe Perches <joe@perches.com>, intel-wired-lan@lists.osuosl.org, netdev
 <netdev@vger.kernel.org>
Date: Mon, 07 Oct 2019 14:48:28 -0700
In-Reply-To: <02fe65d8989ef1d030cf31c7134c574a242afc17.camel@perches.com>
References: <edf91d8284a2a19d956eb8b7e8b6c4984ceaa1ab.camel@perches.com>
 <a00c9af7d24ac0dd6af8698c9e545591392720fe.camel@intel.com>
 <02fe65d8989ef1d030cf31c7134c574a242afc17.camel@perches.com>
Organization: Intel
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] i40e_pto.c: Odd use of strlcpy converted from
 strncpy
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
Cc: Patryk =?UTF-8?Q?Ma=C5=82ek?= <patryk.malek@intel.com>
Content-Type: multipart/mixed; boundary="===============4507949353648718474=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============4507949353648718474==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-1jcHMXPBxllk+bzSqbrL"


--=-1jcHMXPBxllk+bzSqbrL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-10-07 at 13:48 -0700, Joe Perches wrote:
> On Mon, 2019-10-07 at 13:44 -0700, Jeff Kirsher wrote:
> > On Sun, 2019-10-06 at 10:19 -0700, Joe Perches wrote:
> > > This got converted from strncpy to strlcpy but it's
> > > now not necessary to use one character less than the
> > > actual size.
> > >=20
> > > Perhaps the sizeof() - 1 is now not correct and it
> > > should use strscpy and a normal sizeof.
> []
> > You are also missing you signed-off-by: and Fixes:, I can get your
> > change under test in the meantime to confirm your fix.
>=20
> I didn't sign off as all I intended was to bring it
> to your attention.  The diff is just the simplest way.
> It's trivial if it's a defect.

Ah, thanks for bringing it to our attention.

--=-1jcHMXPBxllk+bzSqbrL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl2bsqwACgkQ5W/vlVpL
7c611g/9Ek6o90DGjbKC+lo5ATPWgrpPeOkh0NxbE8nTYTc+9oYzSUm1YlIPeHB+
77rzE/FbGgWNxNkg3AmUiAFoYKGhdD6U32z3pKC4vTYCYbriaPYSndaZqs1ULwyC
QB90AnwJKQmDwMb1mxD6ctQZBLZaWeDSVfZMO1k1Y4YUBqoj7o3HiaCSrKskqGgx
mLwQIuAHPEhZNLd3BZ0lTgWdfFG32ZlnsTSzMjkira2bz/jEne8SlPXV98OrMotJ
XprsHHsKjK1PKVHkXYfHAKWKpOzajIXqXO18V4TCpMOUr4CsEwBAcWYRaCnRNsBw
cMz5RB1iJPILQqJlrRVx63nfz6PlOaAnakjzQv40DNE7qkYUmLG3t4bJui20Q1AM
xcqkNgLpjX76WVN0IV6eXZkpFFeEzZa2pq/M6C/F7B6Cm/QWI38TQOhfJHgDYM2C
iUB2JNmRFPeCSbFqfaPmNfgXMC2nwoa3yk5vj9LjoyPWGXEO0kMKisvAHKrcD0Wq
5fSPqm2wnrkmMzcrBN+uW7zfel2ljQFfhWl4kyNrMAzhErFQo7XU/m+7fQVV1rW1
dO2koqEkKGNJBAzdG91tPSQAsW0WulIrta5cK/+7k8WAQFSj4CyUJE06BT50gNPu
0L1QBqXMJCKGiFi0bPx6r5bUOeKX9Hi0vBWBqz2yMTAi8aYYvh4=
=sf6m
-----END PGP SIGNATURE-----

--=-1jcHMXPBxllk+bzSqbrL--


--===============4507949353648718474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4507949353648718474==--

