Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF87C8A294
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2019 17:47:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D6CE875AD;
	Mon, 12 Aug 2019 15:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dEHPnxkia-8i; Mon, 12 Aug 2019 15:46:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A23D487594;
	Mon, 12 Aug 2019 15:46:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8E1F1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 15:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A51748682A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 15:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rJImjLexJRLa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2019 15:46:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D48DC8680D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 15:46:56 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 08:46:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; 
 d="asc'?scan'208";a="178379626"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga003.jf.intel.com with ESMTP; 12 Aug 2019 08:46:55 -0700
Message-ID: <96c726571a7372a763db5ac7a6aa447911cb894b.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org
Date: Mon, 12 Aug 2019 08:46:55 -0700
In-Reply-To: <20190810101732.26612-15-gregkh@linuxfoundation.org>
References: <20190810101732.26612-1-gregkh@linuxfoundation.org>
 <20190810101732.26612-15-gregkh@linuxfoundation.org>
Organization: Intel
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 14/17] fm10k: no need to check
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
Content-Type: multipart/mixed; boundary="===============5105501147189462697=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============5105501147189462697==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-TP5enwrva10FVHjMa2s9"


--=-TP5enwrva10FVHjMa2s9
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
>  drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c | 2 --
>  1 file changed, 2 deletions(-)


--=-TP5enwrva10FVHjMa2s9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl1Rie8ACgkQ5W/vlVpL
7c6bPg/7BF9EYDdpaiAlL4I8rUBAtfVu37dFgSjiXWwI3QrWhNmVPwWz/jFBnMhO
CruByStXZ6WX41QmixQtCdhC1KTvDeJZ8vklVCVvrcdnbjOp5klWd/p8Dy5Z6qEO
U7r/tXI+UlLfCOqYVhL54NWxPoqPQSFQk71w7qCpljOWOKRBWsg2xuFz/IsynD9l
F4hju6mHAPM+VGj6Q3g1VJFq1ZII954iV2lMqBGCEkQ5k3FSAtwjxqBoeEE4LaSH
Ku+x6m/VdWy3ffMd7og4Lfqyx90zlda2xMiXIgC1fgAWZexqw8PwnEFD0Z754+4Y
xhMmZmfchAkHyXbiAme3xGmgHnqwVFl9frJriW3/Adcx6c6a2aqEPjTdklDYv+G9
zOvdRDdVP+o8hheycYz9kcP0CJb/vwTpbaL521Tz03op8Vxdx9IrvEJdScT3hlI7
h6s5sQ09FtzZdQYWOcp+8FdH2ELP6tqnfqWUXBLhGLAnUHtdk0eo1NhRNhr3VuuQ
itruAkQZ5Em3X8vNivC/UMJT6o/z0YsSTZojMbjc6sDOYuPPI5pby16bpgmSZxio
KWtZv31RGg6Zl2ljw/IW4OWgAO3ifskpUwBHzgHO9aOHF5yaJ/VxPLxTB+wnvBqL
iCjmI4O6PR3CWo/heNlULWmQl46p5hwylBKOvtSNhhpKcCb5ZNA=
=FAT3
-----END PGP SIGNATURE-----

--=-TP5enwrva10FVHjMa2s9--


--===============5105501147189462697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5105501147189462697==--

