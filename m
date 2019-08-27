Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 912299F2D7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 21:02:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 35B3422720;
	Tue, 27 Aug 2019 19:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OVVG5RLOFORj; Tue, 27 Aug 2019 19:02:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 87D3E226F3;
	Tue, 27 Aug 2019 19:02:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E4101BF29E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 19:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7A74488373
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 19:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aXtQ8-NMv8XG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 19:02:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4AD5E8852F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 19:02:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 12:02:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; 
 d="asc'?scan'208";a="182883162"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga003.jf.intel.com with ESMTP; 27 Aug 2019 12:02:23 -0700
Message-ID: <c40b4043424055fc4dae97771bb46c8ab15c6230.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Joe Perches <joe@perches.com>, Forrest Fleming <ffleming@gmail.com>, 
 Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 27 Aug 2019 12:02:23 -0700
In-Reply-To: <877726fc009ee5ffde50e589d332db90c9695f06.camel@perches.com>
References: <20190823191421.3318-1-ffleming@gmail.com>
 <c2279a78904b581924894b712403299903eacbfc.camel@intel.com>
 <877726fc009ee5ffde50e589d332db90c9695f06.camel@perches.com>
Organization: Intel
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] net: intel: Cleanup e1000 - add space
 between }}
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5051163739747250122=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============5051163739747250122==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-PzZZlzhczhl8y9zxLvXV"


--=-PzZZlzhczhl8y9zxLvXV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-08-26 at 20:41 -0700, Joe Perches wrote:
> On Mon, 2019-08-26 at 01:03 -0700, Jeff Kirsher wrote:
> > On Fri, 2019-08-23 at 19:14 +0000, Forrest Fleming wrote:
> > > suggested by checkpatch
> > >=20
> > > Signed-off-by: Forrest Fleming <ffleming@gmail.com>
> > > ---
> > >  .../net/ethernet/intel/e1000/e1000_param.c    | 28 +++++++++--
> > > --------
> > >  1 file changed, 14 insertions(+), 14 deletions(-)
> >=20
> > While I do not see an issue with this change, I wonder how
> > important it is
> > to make such a change.  Especially since most of the hardware
> > supported by
> > this driver is not available for testing.  In addition, this is one
> > suggested change by checkpatch.pl that I personally do not agree
> > with.
>=20
> I think checkpatch should allow consecutive }}.

Agreed, have you already submitted a formal patch Joe with the
suggested change below?  If so, I will ACK it.

>=20
> Maybe:
> ---
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 287fe73688f0..ac5e0f06e1af 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -4687,7 +4687,7 @@ sub process {
> =20
>  # closing brace should have a space following it when it has
> anything
>  # on the line
> -		if ($line =3D~ /}(?!(?:,|;|\)))\S/) {
> +		if ($line =3D~ /}(?!(?:,|;|\)|\}))\S/) {
>  			if (ERROR("SPACING",
>  				  "space required after that close
> brace '}'\n" . $herecurr) &&
>  			    $fix) {
>=20
>=20


--=-PzZZlzhczhl8y9zxLvXV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl1lfj8ACgkQ5W/vlVpL
7c42BA//Z9SlWegHrA18nOZaU+Swr64eNrhWPo/WZ7Gm0zFEVzWcLNtltCqD9Jtl
CfJUYiVbQpQRrJFUqAQkqo43yDNwykuwY8ephV6SYYC2aIdFZY+1XOWgfaFbMHA3
fdK06+voblQ3BpvqLnJqkEyxd+F2mkJe8EqKwcPXOqC7dusUxtn102tJzmoafSsS
gSicmyu+U0eUmZcntnshQrpLIwIFA6QkTyRr/tPXQ9vMYjdnTd+suskSAdK7KTvv
IS6IZg0csmaeyzqu9crXeSUgYcy2clM+Izogg83fyDOAB0VTg5dE/HWqp47osQEd
Xphj+7sYBuTjtW6zFUfydNUuHNQZw7gVj4+7W3LF7axLcusAanbJD8xrM/J4v7Rr
vHDnr04u9RTklkgVn0M2OskGqpHR4g4xwbkpYvQzU5yVPz7NrZDjpPQSJf02neBx
P2HW//gQL1+s7u2a9XWyJew3tbGrKbGsSH/xccUSSS/GoFEL5O4SK3fV1fQEwDGI
HGXsFQ1XEPndPix7srpRJRCMMOT/J3PmoOywkvEnNFr6xmhrdyyCkCAFDkCy6Db5
fNb6ypzROM0gXyiiBWUf/E42fLpL4t6t8R9k42XKAZtb39Uo5DIIWnfVmtw/1I9e
zaEr8EJ6pQ7qCgCYH8uzjnezC97IF8QluOaO+LYlyoVSj/G1MXk=
=Jk5o
-----END PGP SIGNATURE-----

--=-PzZZlzhczhl8y9zxLvXV--


--===============5051163739747250122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5051163739747250122==--

