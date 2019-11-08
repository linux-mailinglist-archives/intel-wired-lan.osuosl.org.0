Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF4DF5B42
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 23:46:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CED387120;
	Fri,  8 Nov 2019 22:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i1KAWmo2ptan; Fri,  8 Nov 2019 22:46:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76FDE8706B;
	Fri,  8 Nov 2019 22:46:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B9FF1BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 662C9237C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 62T+8ZJHscBj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 22:46:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B03823DB4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:46:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 14:46:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; 
 d="asc'?scan'208";a="206139841"
Received: from karaker-mobl.amr.corp.intel.com ([10.254.95.244])
 by orsmga003.jf.intel.com with ESMTP; 08 Nov 2019 14:46:28 -0800
Message-ID: <a9752e1b45b92956d91386cfa4649710c289ddde.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: David Miller <davem@davemloft.net>, magnus.karlsson@intel.com
Date: Fri, 08 Nov 2019 14:46:27 -0800
In-Reply-To: <20191108.141126.499156209602458565.davem@davemloft.net>
References: <1573243090-2721-1-git-send-email-magnus.karlsson@intel.com>
 <20191108.141126.499156209602458565.davem@davemloft.net>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] i40e: need_wakeup flag might
 not be set for Tx
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
Cc: maciej.fijalkowski@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 maciejromanfijalkowski@gmail.com
Content-Type: multipart/mixed; boundary="===============5995722189972474253=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============5995722189972474253==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-HZsBhx/tjGi2vx7jS/97"


--=-HZsBhx/tjGi2vx7jS/97
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-11-08 at 14:11 -0800, David Miller wrote:
> Jeff, please pick these up.
>=20
> Thanks.

Yep already have them queued up.  Just waiting confirmation from
validation.  I will have a 6 patch series of fixes for you in the next day
or two.

--=-HZsBhx/tjGi2vx7jS/97
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl3F8EQACgkQ5W/vlVpL
7c5dQxAAnEN4hhD73X3vWW+oL6DYFCX2TUZzzEnsdAr8xcJT44+jSV6fw7p7CZxE
DowJmyFSk/pJAxZE1EqbhDNyvgDxiWE8DteAIIDIyE3YKMJq0lrl5mk6tpqupGyo
0SBeLLIusxDNjsbUItD0NssDJnO+Otgv534ospNWl79cbUncyJ4uAVStIEl5G+hN
aMwGikuDwNFuQEjdS09oANAL+aTak5z9RdRHEkqb82MtUJ++vcZC7qPzHsGHIYMO
B1+UNzRLCCi3ebXBUR+VEecI3vDk+bBM1j7+JxPdBaFaSeNPwoRWzSMvwg91Q7Ga
Z7nUna9dFDy1kS2gFVChPXXfT7xXERcu25J2b94wz6LB/imeyVou+OYv7wiY0XQl
qVnEkd0DFYjGcCEDm1Uks66yjw5nhZpf42Kz8Gy72XX6RjtI+UuQBXVdjd2Ohouz
jt8Agml3oidS9kdboILB0HTAUZuR/Y64eYsUfSQ5hZZi45Ui8nbO+oCQcUkK1+UI
zu3kfx5++wKZodWX6jSZ2ecbjE+cm0oH5gm45ZIVLewnD+1GDbHfBPlhqFojUpL6
qXUfQXC+xR83xVN26C2k0uoIvmXKlZMNCa5UNBpdv8NctpNfCDxI1vNptarzNY8o
ThKGtE6cnu874P+9vZqwr0383xMAjez2oI9mAO+vjJrmJ9W9pyg=
=9P3X
-----END PGP SIGNATURE-----

--=-HZsBhx/tjGi2vx7jS/97--


--===============5995722189972474253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5995722189972474253==--

