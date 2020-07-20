Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 080B82254D5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jul 2020 02:10:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A804C85AE9;
	Mon, 20 Jul 2020 00:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kyh5-1TD8u5U; Mon, 20 Jul 2020 00:10:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3CE485A78;
	Mon, 20 Jul 2020 00:10:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DB851BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 00:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 16E3186388
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 00:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y1ydeORtQnyj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jul 2020 00:10:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E5DAA86272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 00:10:49 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 5F651AF5B;
 Mon, 20 Jul 2020 00:10:53 +0000 (UTC)
Received: by lion.mk-sys.cz (Postfix, from userid 1000)
 id 046B960743; Mon, 20 Jul 2020 02:10:47 +0200 (CEST)
Date: Mon, 20 Jul 2020 02:10:46 +0200
From: Michal Kubecek <mkubecek@suse.cz>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20200720001046.g7y3p7wrua5qz6i2@lion.mk-sys.cz>
References: <20200707234800.39119-1-andre.guedes@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200707234800.39119-1-andre.guedes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH ethtool 0/4] Add support for IGC driver
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============6302199446691093537=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============6302199446691093537==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ej7tdyo6eki5dxpl"
Content-Disposition: inline


--ej7tdyo6eki5dxpl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 07, 2020 at 04:47:56PM -0700, Andre Guedes wrote:
> Hi all,
>=20
> This patch series adds support for parsing registers dumped by the IGC dr=
iver.
> For now, the following registers are parsed:
>=20
> 	* Receive Address Low (RAL)
> 	* Receive Address High (RAH)
> 	* Receive Control (RCTL)
> 	* VLAN Priority Queue Filter (VLANPQF)
> 	* EType Queue Filter (ETQF)
>=20
> More registers should be parsed as we need/enable them.
>=20
> Cheers,
> Andre

Series merged. But please consider making the output consistent with
other Intel drivers which use lowercase keywords for values (e.g.
"enabled") and "yes"/"no" for bool values (rather than "True" / "False").

Michal

>=20
> Andre Guedes (4):
>   Add IGC driver support
>   igc: Parse RCTL register fields
>   igc: Parse VLANPQF register fields
>   igc: Parse ETQF registers
>=20
>  Makefile.am |   3 +-
>  ethtool.c   |   1 +
>  igc.c       | 283 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  internal.h  |   3 +
>  4 files changed, 289 insertions(+), 1 deletion(-)
>  create mode 100644 igc.c
>=20
> --=20
> 2.26.2
>=20

--ej7tdyo6eki5dxpl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEWN3j3bieVmp26mKO538sG/LRdpUFAl8U4PsACgkQ538sG/LR
dpXm9QgAq72fYscACYbNgLvt5loeQmo308467Y/f74rgitTYOHpomU6d+mK2ipkt
dO8k6vbPnFJSQET6VhS/HSP/FyYcvvhLe36yoai9CKdPrFxoe5SIDA6N347b5vaD
CHzOr48YgA+Ja63JQ7GtNQ1XouElw0htGLHrqTp6VFTq7vUx5TgcitoOzO9bZN4m
v1TiHVqw/rexWVn8EEWMUpNTviVmAyiAsktume3iW81JncrPiZNgyH//gsFLAd0u
g73Wg3hsP9uhkuXrcXeQWGZp8DZaT47PfYajbtsQYrba43nL3t2Yi5giYAHvZgUC
oWOaGXiNylF3ZsvYDi0rDIUqsXwNBQ==
=tfbV
-----END PGP SIGNATURE-----

--ej7tdyo6eki5dxpl--

--===============6302199446691093537==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6302199446691093537==--
