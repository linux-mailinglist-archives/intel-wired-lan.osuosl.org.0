Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A39100B84
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2019 19:33:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCE1485485;
	Mon, 18 Nov 2019 18:33:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e-erZLycJmdS; Mon, 18 Nov 2019 18:33:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C736185585;
	Mon, 18 Nov 2019 18:33:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CF3F1BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2019 18:33:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 69D4D87B77
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2019 18:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e51ZDaKcjiRd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2019 18:33:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6DB208733C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2019 18:33:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 10:33:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,321,1569308400"; 
 d="asc'?scan'208";a="258483502"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.74])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Nov 2019 10:33:28 -0800
Message-ID: <65af69ddd8880c3c288cd90cb0298f2162b2c48c.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Bowers, AndrewX"
 <andrewx.bowers@intel.com>
Date: Mon, 18 Nov 2019 10:33:28 -0800
In-Reply-To: <9C221CD4-702F-4A6F-8475-2A67012ADD10@intel.com>
References: <20191113192817.531297-1-jeffrey.t.kirsher@intel.com>
 <d05e40a7ad5246cdba8f63a6825ce9d9@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971758C2@ORSMSX103.amr.corp.intel.com>
 ,<897250446bee4cdc987a9478db97873a@intel.com>
 <9C221CD4-702F-4A6F-8475-2A67012ADD10@intel.com>
Organization: Intel
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select
 bitmap validation
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
Cc: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Arkady Gilinksky <arkady.gilinsky@harmonicinc.com>
Content-Type: multipart/mixed; boundary="===============6223651423064455835=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============6223651423064455835==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-GhWW9ivtH2MloMVJRR/j"


--=-GhWW9ivtH2MloMVJRR/j
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-11-15 at 18:43 -0800, Brandeburg, Jesse wrote:
> Brett is out on vacation but you=E2=80=99re right Andrew, the code should=
 use
> plural variables.=20

Yep, it was my fault.  I fat fingered the typo when creating the patch.
I have fixed the patch on my tree, just have not sent an updated patch
to IWL yet, to properly reflect the change.

>=20
> > On Nov 15, 2019, at 16:08, Bowers, AndrewX <
> > andrewx.bowers@intel.com> wrote:
> >=20
> > I was getting the same thing. Taking the compiler's suggestion and
> > changing _queue to _queues and it compiles but nobody responded to
> > my comments.=20
> >=20
> > > -----Original Message-----
> > > From: Brown, Aaron F
> > > Sent: Friday, November 15, 2019 3:53 PM
> > > To: Bowers, AndrewX <andrewx.bowers@intel.com>; Kirsher, Jeffrey
> > > T
> > > <jeffrey.t.kirsher@intel.com>; intel-wired-lan@lists.osuosl.org
> > > Cc: Creeley, Brett <brett.creeley@intel.com>; Arkady Gilinksky
> > > <arkady.gilinsky@harmonicinc.com>
> > > Subject: RE: [Intel-wired-lan] [PATCH] i40e: Fix
> > > virtchnl_queue_select bitmap
> > > validation
> > >=20
> > > This patch is causing a compile error for me.  If I pop revert it
> > > my compile
> > > error goes away:
> > > ---------------------------------------------------------------
> > > drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c: In function
> > > 'i40e_vc_validate_vqs_bitmaps':
> > > drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:2333:9: error:
> > > 'struct
> > > virtchnl_queue_select' has no member named 'rx_queue'
> > >      vqs->rx_queue >=3D BIT(I40E_MAX_VF_QUEUES) ||
> > >         ^
> > > drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:2334:9: error:
> > > 'struct
> > > virtchnl_queue_select' has no member named 'tx_queue'
> > >      vqs->tx_queue >=3D BIT(I40E_MAX_VF_QUEUES))
> > >         ^
> > > make[6]: *** [drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.o]
> > > Error 1
> > > make[6]: *** Waiting for unfinished jobs....
> > > make[5]: *** [drivers/net/ethernet/intel/i40e] Error 2
> > > make[4]: *** [drivers/net/ethernet/intel] Error 2
> > > make[4]: *** Waiting for unfinished jobs....
> > > make[3]: *** [drivers/net/ethernet] Error 2
> > > make[2]: *** [drivers/net] Error 2
> > > make[1]: *** [drivers] Error 2
> > > make: *** [sub-make] Error 2
> > >=20
> > > > -----Original Message-----
> > > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > > > Behalf
> > > > Of Bowers, AndrewX
> > > > Sent: Thursday, November 14, 2019 5:17 PM
> > > > To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-
> > > > wired-
> > > > lan@lists.osuosl.org
> > > > Cc: Creeley, Brett <brett.creeley@intel.com>; Arkady Gilinksky
> > > > <arkady.gilinsky@harmonicinc.com>
> > > > Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix
> > > > virtchnl_queue_select
> > > > bitmap validation
> > > >=20
> > > > Comments inline
> > > >=20
> > > > > -----Original Message-----
> > > > > From: Intel-wired-lan [mailto:
> > > > > intel-wired-lan-bounces@osuosl.org] On
> > > > > Behalf Of Jeff Kirsher
> > > > > Sent: Wednesday, November 13, 2019 11:28 AM
> > > > > To: intel-wired-lan@lists.osuosl.org
> > > > > Cc: Creeley, Brett <brett.creeley@intel.com>; Arkady
> > > > > Gilinksky
> > > > > <arkady.gilinsky@harmonicinc.com>
> > > > > Subject: [Intel-wired-lan] [PATCH] i40e: Fix
> > > > > virtchnl_queue_select
> > > > > bitmap validation
> > > > >=20
> > > > > From: Brett Creeley <brett.creeley@intel.com>
> > > > >=20
> > > > > Currently in i40e_vc_disable_queues_msg() we are incorrectly
> > > > > validating
> > > > the
> > > > > virtchnl queue select bitmaps. The virtchnl_queue_select
> > > > > rx_queues
> > > > > and tx_queue bitmap is being compared against
> > > > > ICE_MAX_VF_QUEUES,
> > > but
> > > > the
> > > > > problem is that these bitmaps can have a value greater than
> > > > > I40E_MAX_VF_QUEUES.
> > > > > Fix this by comparing the bitmaps against
> > > > > BIT(I40E_MAX_VF_QUEUES).
> > > > >=20
> > > > > Also, add the function i40e_vc_validate_vqs_bitmaps() that
> > > > > checks to
> > > > > see if both virtchnl_queue_select bitmaps are empty along
> > > > > with
> > > > > checking that
> > > > the
> > > > > bitmaps only have valid bits set. This function can then be
> > > > > used in
> > > > > both the queue enable and disable flows.
> > > > >=20
> > > > > Suggested-by: Arkady Gilinksky <
> > > > > arkady.gilinsky@harmonicinc.com>
> > > > > Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> > > > > ---
> > > > > .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 22
> > > > > +++++++++++++++----
> > > > > 1 file changed, 18 insertions(+), 4 deletions(-)
> > > > >=20
> > > <snip>
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


--=-GhWW9ivtH2MloMVJRR/j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl3S4/gACgkQ5W/vlVpL
7c4LCRAAjHLxpDdRRKk3jz/kteqdPEwekUPb+dNJkXzC+jw5pgX8dS24pHbC4Sjs
/Mgnh5ATU7KOoGZOaIefxd8365MXMfqqe/ku3HlDX59VTzm9GHnm3SEeVdDUjBw+
PKzsH9bv+OgsdjNmxkLg/6HcauzZlVy01ulNfSl6WTeMjutGiMb/ufQQl70qaPjU
YvdpBHtFbKq9lZj6Fcefh6XtuxwcdFP9u7PQ2C58Kio+ZJqXn9CQY1NE2Ot9UDqY
hZ6zRLtGXZ/Ap+zwaq9wKmMyx8glrrNvhDKLfWHBEmNDCOOKJgKuSw+3FNWeQOAd
gyTCskW8t9i3Y+v0JnzcGVAIxUYgKJZG7mlF1FhV42U4qT2z1UgtptXvYwVNBuY3
6cJiwa4yV1FauNCvLgeFZV31ID1khvB076ZI/0fsxauCS5hV9HR7+IFTxtMO7+MG
56B8UjfBfN0NGKzgI8oy1Jq7WWZe09HswCJUzuGeYUruwbOH3Ny9orvAIT0kAxoc
ISUYinjAnSKvQMywDkG7YdiU0SD8njiX9EaHiOOolK+uR4+7pPCTgPOdWduCUVYO
zwtykTUjQt80ZDXzApabjRwdM/trDD6sYwgN0zk2SAar1LXRqSAY5kL5uuY7PIZ0
oHBO7Ti1wMYB6tdg01QTFKyjxLUjeZ5o5IPRA411uAQdQyTF6TY=
=KHEK
-----END PGP SIGNATURE-----

--=-GhWW9ivtH2MloMVJRR/j--


--===============6223651423064455835==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6223651423064455835==--

