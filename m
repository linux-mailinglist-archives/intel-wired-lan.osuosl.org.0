Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1928A2AE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2019 17:53:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 84C86868E5;
	Mon, 12 Aug 2019 15:52:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vqfL74pTQCub; Mon, 12 Aug 2019 15:52:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 835958689B;
	Mon, 12 Aug 2019 15:52:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E673B1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 15:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DEE4585EC2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 15:52:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d5-DExTiJ51S for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2019 15:52:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 27CD585EAC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 15:52:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 08:49:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,378,1559545200"; 
 d="asc'?scan'208";a="200178298"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by fmsmga004.fm.intel.com with ESMTP; 12 Aug 2019 08:49:35 -0700
Message-ID: <1ddf059408158e6a1819f222127b353476110ba4.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org
Date: Mon, 12 Aug 2019 08:49:35 -0700
In-Reply-To: <20190810101732.26612-17-gregkh@linuxfoundation.org>
References: <20190810101732.26612-1-gregkh@linuxfoundation.org>
 <20190810101732.26612-17-gregkh@linuxfoundation.org>
Organization: Intel
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 16/17] ixgbe: no need to check
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
Content-Type: multipart/mixed; boundary="===============3206570442256787721=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3206570442256787721==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-EOUtTASVq+viiz5NfBUM"


--=-EOUtTASVq+viiz5NfBUM
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
>  .../net/ethernet/intel/ixgbe/ixgbe_debugfs.c  | 22 +++++----------
> ----
>  1 file changed, 5 insertions(+), 17 deletions(-)


--=-EOUtTASVq+viiz5NfBUM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl1Rio8ACgkQ5W/vlVpL
7c73CQ/+MRQwSGF5f4EP5Z5xB+mOP5Ik7hfozeweg8oRT1+81W3b6rUlHc7Lm/0p
tMHpLpGkZj/+Mis6IF07QCWZCszCf6ViCt1TWBzF200tbbcXZGQMfy2jr0ng5/vH
oftOvfvKR2UdzYwXNENsn6/unL4Drx7HM1Tfgd+qK1t1WpRWy4JS4p/6EP3gaqxy
yyoLFK4g8gI9AQBokCH4QWgifONAoy9Uq5djlh3nl9p409M12Y2JN4Gb2cbzZ6Aw
pxK6nEfz8FiwRIlNstL20Hb2GSb6yY14SnvQipGwfwJL/KOZB2HCsgo7rrjzTFPd
KHUvFDN1uiX7A14j33Nyosr5J7cr13ZdgsSQf30rZQ7AWMRbqZVBIdgYUA6EGalT
6r4cF2RwCHiVLxrVDXLilNIGJju0g2A6op6huTdYn6sSmnuN8rZstrgWWkKqUVWB
VnhqVQNDJ/zD9J9PWKgyEqiWXvQf3MmfwCn2kefdxzB17Oliu5d14XAhqvjjW9pr
cX2mX7HNATe+Fk1Q5zpOIULXxjnNSdv4kItuvZjiONZM7yoUMMHzajAckOj4HnDA
+Q746vqjwwA77xOl+dVLiU7FIGOQ57nDaWRbyutxH9OkhQz1JI7Qht7uotwt68Sm
BeQfnnVGK+at578k+vCoaAhWMAB+XNsKqyMyOWMkgd/wG+RCy0E=
=mVRo
-----END PGP SIGNATURE-----

--=-EOUtTASVq+viiz5NfBUM--


--===============3206570442256787721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3206570442256787721==--

