Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8F09F412
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 22:27:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5953E86AC1;
	Tue, 27 Aug 2019 20:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZYk3v4CG9Ja7; Tue, 27 Aug 2019 20:27:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7ECCD86B10;
	Tue, 27 Aug 2019 20:27:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DAE91BF355
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 20:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 77D8E207A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 20:27:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4kfX5k00wtIQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 20:27:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 88AE92079D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 20:27:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 13:27:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; 
 d="asc'?scan'208";a="171315729"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga007.jf.intel.com with ESMTP; 27 Aug 2019 13:27:29 -0700
Message-ID: <b85dcabca674255c806490db762bd4e8483db575.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Joe Perches <joe@perches.com>, Forrest Fleming <ffleming@gmail.com>, 
 Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 27 Aug 2019 13:27:29 -0700
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
Content-Type: multipart/mixed; boundary="===============0104365381202299420=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============0104365381202299420==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-YmTzQXEbwTH2qCEhzGh1"


--=-YmTzQXEbwTH2qCEhzGh1
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

Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

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


--=-YmTzQXEbwTH2qCEhzGh1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl1lkjEACgkQ5W/vlVpL
7c70dA//TBdhCFVY4W6lcn7qyR2v4ZCGN7FL/v/TUItJZt5NFKWWTv8f5VuR281s
k1eCdRHzK0ZSibKg2cveB/ziqBJCy+xvZqxn+SrLl/viW5qEKZkf7cvr/z4+AaSv
ovU+aiUkeL23F+fiDCCprYHI/fA5hkcbcIzLS6t/Cn+1PhQTHc4RUqciKRTmu3c7
OIbPHEN0H5uFFYPSObCwJaGsVp02GsufyVu0hRvPVvhSx5hiIISO7PH5/6a5Ru3B
4xvhk6T+TxtkUW2/pZCT/6LlhPeBZZjjSn7BqE5fxSq0ZMiCksRDnDjR2kCxRYJp
T46pokeAR2r9x6FPCWuSJ/fe2UgNDrOLWRRNOsm3RsBLU435xJ8Riu2n5LMWfqCC
9rWOu/nNx4cjOyf3NR4GeIDUaVfzUIkfeUc8zV7yswJbu5Y3JWo5P4ApqS7rCxfM
ipOn5+ROL1oj0cGhGmcWlFJxLbGj/JKybuJswJXxkAaFQMby+ITGxhLiIfNPwx5P
XVu/HYCGPG/dEFCU+9vXEgkO1ZzkUFN/GUFQ/1a1mkvmwJYTymPkvOb3ssByNMTC
D8zhOp0Pv0qrgTTdfitYEsMa8gdrWX0mhLTjYVshC6cAWgEkVsmKgiyw2C6ryvwK
wsYciMmCHxGm8+RA6KoTFlFm2RBeLNAhBmKuBZtALV0SaPS1YC8=
=27iJ
-----END PGP SIGNATURE-----

--=-YmTzQXEbwTH2qCEhzGh1--


--===============0104365381202299420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0104365381202299420==--

