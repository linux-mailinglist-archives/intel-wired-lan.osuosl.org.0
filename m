Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 694D9B148C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2019 20:47:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF7C386ACB;
	Thu, 12 Sep 2019 18:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YT1OdSXFAUqm; Thu, 12 Sep 2019 18:47:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47A95875A9;
	Thu, 12 Sep 2019 18:47:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E6051BF328
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 18:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6A7D886ACB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 18:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RrQc68BebDCh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2019 18:47:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 46F5386767
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 18:47:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 11:47:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; 
 d="asc'?scan'208";a="190076321"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga006.jf.intel.com with ESMTP; 12 Sep 2019 11:47:46 -0700
Message-ID: <1d831c0ee1800a972c177cc15720f43ed1a6703d.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Jonathan Tooker <jonathan@reliablehosting.com>, Steffen Klassert
 <steffen.klassert@secunet.com>, intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Sep 2019 11:47:46 -0700
In-Reply-To: <9d94bd04-c6fa-d275-97bc-5d589304f038@reliablehosting.com>
References: <20190912110144.GS2879@gauss3.secunet.de>
 <9d94bd04-c6fa-d275-97bc-5d589304f038@reliablehosting.com>
Organization: Intel
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix secpath usage for IPsec TX
 offload.
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
Cc: netdev@vger.kernel.org, Shannon Nelson <snelson@pensando.io>,
 Michael Marley <michael@michaelmarley.com>
Content-Type: multipart/mixed; boundary="===============2030024553970300315=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============2030024553970300315==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-PVY+GfDYV+4zQNHz3hBy"


--=-PVY+GfDYV+4zQNHz3hBy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-09-12 at 11:33 -0500, Jonathan Tooker wrote:
> On 9/12/2019 6:01 AM, Steffen Klassert wrote:
> > The ixgbe driver currently does IPsec TX offloading
> > based on an existing secpath. However, the secpath
> > can also come from the RX side, in this case it is
> > misinterpreted for TX offload and the packets are
> > dropped with a "bad sa_idx" error. Fix this by using
> > the xfrm_offload() function to test for TX offload.
> >=20
> Does this patch also need to be ported to the ixgbevf driver? I can=20
> replicate the bad sa_idx error using a VM that's using a VF & the=20
> ixgebvf  driver.
>=20

I am putting together a patch for ixgbevf right now.

--=-PVY+GfDYV+4zQNHz3hBy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl16ktIACgkQ5W/vlVpL
7c49Rg/+LR4SKXAcAuyAVRSSF8I1PYvA5gKeeczoLXzOGmG4Z+8w4zL+zvQ8iWfZ
HoCyICZjmlwMRowvAf6T8lCOh3GxMZlRP/zLrEkbymuf8dv+n3pCBh2LdwkfRkmK
wIJTpyq2U826HK2vlMkFmt0xcFadNXYmM2jkFpZR6XTywQF6gOwEixn40qTHeaf4
nMIRroQ3U9e/2TfNfWnW+Y8bf03kXMSOKl0dlX0NMaP8xLqQ9zhRVD+21ABDFIUo
GCYtbwckSIgbGBBDG+9X2uvayfuBaUK4/kmbFmQd8s/wmj2X6CQNrIpdApJODLN5
TdosA2s2ZBC0LokSnjshljObnG4fwzpa8xOdvLSmwRAxsQFJ7EC5dem9eIECyX5w
svW0H9NGXrSakIK92ugTf7WXmN8zTDWH34KdcfIGIBL8vD8JFgAQu7F+3dz/Xzj7
9iiYOgDFKx+3KJI+vo2vcWguO/LPnPv1Z0jGroig/nRgwXyVSH3mB0+IDOvOXaAW
nM2BDdvUhRBpnZqOlXZzy6VANBJmcVU6WiQn6MVW+c+9ylBlVkYhE3Fp6YcZFtRR
eQdALIEgt7voSTMk+FJ5Ml28bsiPiAJt8fJLCBe+AC/xblY+yzGZE1WaDao7pCH3
wvKImJR8ov8Bgd6goh34PUUeANxc7tdslazcCFjCdserp9GdQvA=
=OYZ5
-----END PGP SIGNATURE-----

--=-PVY+GfDYV+4zQNHz3hBy--


--===============2030024553970300315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2030024553970300315==--

