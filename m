Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8381B127E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2019 17:57:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1FB6F203F8;
	Thu, 12 Sep 2019 15:57:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tADYhOOlCtqb; Thu, 12 Sep 2019 15:57:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B75C82277A;
	Thu, 12 Sep 2019 15:57:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A5D3C1BF861
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 15:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A135386142
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 15:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SsN5SPyJM4KH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2019 15:57:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 41CA885FB4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 15:57:46 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 08:57:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,497,1559545200"; 
 d="asc'?scan'208";a="215087372"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by fmsmga002.fm.intel.com with ESMTP; 12 Sep 2019 08:57:44 -0700
Message-ID: <2783711bae4ed87e2210894bcd980f8a3f052e94.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: David Miller <davem@davemloft.net>, steffen.klassert@secunet.com
Date: Thu, 12 Sep 2019 08:57:44 -0700
In-Reply-To: <20190912.134359.345289288863944180.davem@davemloft.net>
References: <20190912110144.GS2879@gauss3.secunet.de>
 <20190912.134359.345289288863944180.davem@davemloft.net>
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
Cc: netdev@vger.kernel.org, snelson@pensando.io,
 intel-wired-lan@lists.osuosl.org, michael@michaelmarley.com
Content-Type: multipart/mixed; boundary="===============9178103701253970272=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============9178103701253970272==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-dLlFNIhBGHJp3KGXhmHo"


--=-dLlFNIhBGHJp3KGXhmHo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-09-12 at 13:43 +0200, David Miller wrote:
> From: Steffen Klassert <steffen.klassert@secunet.com>
> Date: Thu, 12 Sep 2019 13:01:44 +0200
>=20
> > The ixgbe driver currently does IPsec TX offloading
> > based on an existing secpath. However, the secpath
> > can also come from the RX side, in this case it is
> > misinterpreted for TX offload and the packets are
> > dropped with a "bad sa_idx" error. Fix this by using
> > the xfrm_offload() function to test for TX offload.
> >=20
> > Fixes: 592594704761 ("ixgbe: process the Tx ipsec offload")
> > Reported-by: Michael Marley <michael@michaelmarley.com>
> > Signed-off-by: Steffen Klassert <steffen.klassert@secunet.com>
>=20
> I'll apply this directly and queue it up for -stable, thanks.

Thanks Dave!

--=-dLlFNIhBGHJp3KGXhmHo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl16avgACgkQ5W/vlVpL
7c4+cg/+OLKEQa8bM0fQ8aiONJonrbUpkWedbvsxBlJuSneMuHM2ilv0kb2God07
PLdb8W+5GMZCfSDOA7OAYp9EqrWsfamsknqPt6Dva/BhpHU0n7/cfDiC/XIU+JAh
ZvLOargYmTSgDJ8HSSFzVoVFynz4liACyRaclp3Sb77bff4jNUwd48W/5q0b0PBm
H0eJnxreGKwc0ClppVsQqj+zjWjaFlzb+Iuj+ciiHx9tpipzQ+6lQHVvwWahAOtE
i01MvW/MsekbtgJ0PX5gaQnIrsJ3agVl24VFup+smFcZqUSSKwez4JcygrdRkNOR
hg9LksThjD7muk2HfQVis+PTocN9PVeOQpVrthr497KpiXMLUJ3OMJZ55t51CBr/
IjEmUkfnC+cSXwFr/1Qdo5YMG2AoplZp+TUFccV+ZF52DcxN7oUgAL2eu4hcOnld
IY6mhe/9HGv+bKdV+Vh5Rdrt9yGUnRtE/HddjFlChHhLcjpcxSjM2G4ASjVCifme
oVejEcsig6oD23b5xXdDuKSzbg9OlhAKHHpyrWHYCmsPtezi3qes2t9+xfhWoL7T
eS+zK256lZ41oKGvhXNduN838dExLXw7b6ED/Q+Umsk079alibZ0jEfo9QdijXya
nBHo/XjnBPCLuViuRbHcqHpJ9AA5Jo/rSYrrkfKfB218az4wIfQ=
=1KTM
-----END PGP SIGNATURE-----

--=-dLlFNIhBGHJp3KGXhmHo--


--===============9178103701253970272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============9178103701253970272==--

