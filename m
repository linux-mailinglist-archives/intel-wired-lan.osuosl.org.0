Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5801798C1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Mar 2020 20:17:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE031848FC;
	Wed,  4 Mar 2020 19:16:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FeFVaKAgZGnz; Wed,  4 Mar 2020 19:16:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60DA784922;
	Wed,  4 Mar 2020 19:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 425D91BF589
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 19:16:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 39979203A7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 19:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d684-pc9hjR6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2020 19:16:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 39724203A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 19:16:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 11:16:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; 
 d="asc'?scan'208";a="387258262"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by orsmga004.jf.intel.com with ESMTP; 04 Mar 2020 11:16:53 -0800
Message-ID: <6ae80c13890cb71f6e079393173b08c5b4bd9917.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Date: Wed, 04 Mar 2020 11:16:53 -0800
In-Reply-To: <20200304111008.2c85f386@kicinski-fedora-PC1C0HJN>
References: <9e23756531794a5e8b3d7aa6e0a6e8b6@AcuMS.aculab.com>
 <32fd09495d86bb2800def5b19e782a6a91a74ed9.camel@intel.com>
 <20200304111008.2c85f386@kicinski-fedora-PC1C0HJN>
Organization: Intel
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 0/1] e1000e: Stop tx/rx setup
 spinning for upwards of 300us.
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
Cc: Network Development <netdev@vger.kernel.org>,
 David Laight <David.Laight@ACULAB.COM>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============6421371146438112791=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============6421371146438112791==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-wq+fY5fqMTH9QTFXP/PF"


--=-wq+fY5fqMTH9QTFXP/PF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-03-04 at 11:10 -0800, Jakub Kicinski wrote:
> On Wed, 04 Mar 2020 10:02:08 -0800 Jeff Kirsher wrote:
> > Adding the intel-wired-lan@lists.osuosl.org mailing list, so that
> > the
> > developers you want feedback from will actually see your
> > patches/questions/comments.
>=20
> Is that list still moderated? I was going to CC it yesterday but=20
> I don't want to subject people who respond to moderation messages..

Yes, this is still moderated, helps keep the crap email out of peoples
inbox.

--=-wq+fY5fqMTH9QTFXP/PF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl5f/qUACgkQ5W/vlVpL
7c4/2A/9Hh2qTBx4p0PDED97hNsz7hNuhJMjIkQqTCViICTxSsw4O6NTpLwOWcOD
KqsxJZACSMsFdGZsJAmitg/ungAFpnC/hBHIArbI4XCqnf3tVJqgvfuI/klwrNe4
JSArked3Ifw31ICONW8uaNJs4C3OVD5VQR8h/FDE+HP1kJHo5jeIzDEOlKtONhum
NEhLLxYCc2ZOEKnxa21ryZSQrMcZgVlKAOgIebcQxZ2tnISxHIsYl6Ka5MNuDxDZ
ERyvzEGNMjGz0DzZKgIcKvxGJ/FA6iiXW/cFOkUzlN1qqBktiftA+rW1lQGAMmWi
qWaKXyaPFJ9QmJdHWPbcRUBAkTRvytrC+HKnwevSdRpPLt/1WoROWPRhzn8oK8lR
YQMw+tg+pSpXMBspEvm36OkDh3Rw/y0VN45KspkGbJCVae/EIRUmkdz2aSZCanEB
pmSEr4y8sij3k3kDluo1WSxxnRmiSuxRVb4F9rA//w4BlKAbj5wy9FeuW3gOoKBt
TvAnHjXXhfu9cjZgUvCkNGLwRr5GkXIbl2fk+WnjkHB7p09o9DrkUcD0/pRf4gDH
7F5aDzJKozzGBEhYHniKZVoK+IRfzMr75b7p3KGBtvuwu2q9zTJnuzQI1jnm6e3V
eHPNYZgn8bdvzbbDmVnL1mn0ULjWpy/ky2Oj+hnFjqjPURDa2Gk=
=VEjK
-----END PGP SIGNATURE-----

--=-wq+fY5fqMTH9QTFXP/PF--


--===============6421371146438112791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6421371146438112791==--

