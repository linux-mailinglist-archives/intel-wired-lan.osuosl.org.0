Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10EE9F414
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 22:28:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 876E188543;
	Tue, 27 Aug 2019 20:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kynioTMmaBsu; Tue, 27 Aug 2019 20:28:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C90EF88527;
	Tue, 27 Aug 2019 20:27:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D32C21BF355
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 20:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CFEA1207A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 20:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Th6V0aoFMT7z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 20:27:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 175462079D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 20:27:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 13:27:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; 
 d="asc'?scan'208";a="174685212"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga008.jf.intel.com with ESMTP; 27 Aug 2019 13:27:56 -0700
Message-ID: <3713e82a6f329df4674b279fdbeb49feb7e6a7ef.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Forrest Fleming <ffleming@gmail.com>, Joe Perches <joe@perches.com>
Date: Tue, 27 Aug 2019 13:27:56 -0700
In-Reply-To: <CAE7kSDuHi3e_b0qyvXqocSVaNJrj3X7PPiawBWa68ZyrLSAZyA@mail.gmail.com>
References: <20190823191421.3318-1-ffleming@gmail.com>
 <c2279a78904b581924894b712403299903eacbfc.camel@intel.com>
 <877726fc009ee5ffde50e589d332db90c9695f06.camel@perches.com>
 <c40b4043424055fc4dae97771bb46c8ab15c6230.camel@intel.com>
 <b1ea77866e8736fa691cf4658a87ca2c1bf642d6.camel@perches.com>
 <CAE7kSDuHi3e_b0qyvXqocSVaNJrj3X7PPiawBWa68ZyrLSAZyA@mail.gmail.com>
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
Cc: netdev@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4428641869498986932=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============4428641869498986932==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-tKIWyGIUEVgIXGAVIt0k"


--=-tKIWyGIUEVgIXGAVIt0k
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-08-27 at 12:45 -0700, Forrest Fleming wrote:
> On Tue, Aug 27, 2019 at 12:07 PM Joe Perches <joe@perches.com> wrote:
> > On Tue, 2019-08-27 at 12:02 -0700, Jeff Kirsher wrote:
> > > On Mon, 2019-08-26 at 20:41 -0700, Joe Perches wrote:
> > > > On Mon, 2019-08-26 at 01:03 -0700, Jeff Kirsher wrote:
> > > > > On Fri, 2019-08-23 at 19:14 +0000, Forrest Fleming wrote:
> > > > > > suggested by checkpatch
> > > > > >=20
> > > > > > Signed-off-by: Forrest Fleming <ffleming@gmail.com>
> > > > > > ---
> > > > > >  .../net/ethernet/intel/e1000/e1000_param.c    | 28
> > > > > > +++++++++--
> > > > > > --------
> > > > > >  1 file changed, 14 insertions(+), 14 deletions(-)
> > > > >=20
> > > > > While I do not see an issue with this change, I wonder how
> > > > > important it is
> > > > > to make such a change.  Especially since most of the hardware
> > > > > supported by
> > > > > this driver is not available for testing.  In addition, this
> > > > > is one
> > > > > suggested change by checkpatch.pl that I personally do not
> > > > > agree
> > > > > with.
> > > >=20
> > > > I think checkpatch should allow consecutive }}.
> > >=20
> > > Agreed, have you already submitted a formal patch Joe with the
> > > suggested change below?
> >=20
> > No.
> >=20
> > >   If so, I will ACK it.
> >=20
> > Of course you can add an Acked-by:
> >=20
>=20
> Totally fair - I don't have strong feelings regarding the particular
> rule. I do
> feel strongly that we should avoid violating our rules as encoded by
> checkpatch,
> but I'm perfectly happy for the change to take the form of modifying
> checkpatch
> to allow a perfectly sensible (and readable) construct.
>=20
> I'm happy to withdraw this patch from consideration; I couldn't find
> anything
> about there being a formal procedure for so doing, so please let me
> know if
> there's anything more I need to do (or point me to the relevant
> docs).
>=20
> Thanks to everyone!

Nothing for you to do, I will drop the patch.

--=-tKIWyGIUEVgIXGAVIt0k
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl1lkkwACgkQ5W/vlVpL
7c55SQ//f2SxkdXNmAdM0JrA2pz5BmCM2IYesY6Ojy96yngPcvqum+AmDFwb5owY
hBEa8ZczB5ouFlX47NedltvtMwNb0zq5Shbpk6FdymBLnjj11uy32HuzBojpuVOA
AAy9qVjSPIf+sce7GIzEravYrIx5Gv+5E+RFgQsE4fl2cxUUZkiGSsvzauY+cAdq
dv3mKmIG72apgRdAHX6zGQVjCqJ/bH+EVdkIT015BAGaHnGY9yOv1umWtRVUZ6CP
7mU3vK+i96yM4szcZizh/aKIJ7mKjpSJtnWFsr8t+dEgZHpO64Jo+D6Wo1BT34vN
6GRYUEMi/hgvfHlZQrUe0QbXOFTtQ4BytLGD+zIISxeZ7hPybt9O17Bz2ETa1mt4
+EosUljssnYQrL6Z9YQ1GGzdzgG/mBZgDnNLk5AxsfXE3MNoc6URW7KCHAkPGhaD
f4DXDF1lDoe9KOYLovcrdrCZ1pAdX0hBDPfBCiJxgmyekkcItMlJ40o+jJ1UMpsX
KmScSliBJZ3ZTeaDKanCi3NvhLKiCPvxXlumSDmCYKY7NSP/X9Crk0Aqvu0FnlbX
2ov+ZF1IL9hGNPltstQhVwrNqpIh4mJypm1IemlR8D/Tc0kp0q1o+XPjDPKmPwwm
36mGRIfMACZhEAsyZYYarMjx6kVi86GV5udXzzSKcmOWC+03A60=
=G8tT
-----END PGP SIGNATURE-----

--=-tKIWyGIUEVgIXGAVIt0k--


--===============4428641869498986932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4428641869498986932==--

