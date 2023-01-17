Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4724B670D99
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 00:34:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2FA781313;
	Tue, 17 Jan 2023 23:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2FA781313
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673998456;
	bh=JPncpumHblBkhOYws5f1VBYo1Sfwnqy8vj/PZVF716A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9dvoy+3TT816uUpcKU3JxX9WOCloO3Ygh2TJT1xd8Ps/7BN1NYwNq3udS38CYKSlk
	 4xU9WHbbFfd7qAepcPNLN71griGHV57WdMV/ZdOYP8l8tBdLL+L5c/2nCqarj0ygE2
	 lqVdJ/A9FeqNTme5pjUeT7liYIgR9xJ9tUZOkS6boqKFguB2QTbKTivNUXxOkT1xli
	 TXzWpnt/74W69L+1Qkk21feBm0Otxfsuh8vgJcGJEcE3cHoQtWmzQU+uWelnW5CSUs
	 6W9MTnSUICVkZgI4gffWIlrUiNByqEYkb+h3KsL3XtB7vlK0G7bej4A10rM0YNWFvj
	 1EW2YUM4+MDZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3yAT5C90Ql24; Tue, 17 Jan 2023 23:34:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 972E2812CD;
	Tue, 17 Jan 2023 23:34:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 972E2812CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C2C661BF33F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 23:34:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98ACC409A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 23:34:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98ACC409A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QL9Er1AclaJu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 23:34:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FC9C4095F
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4FC9C4095F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 23:34:08 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6F55FB8190F;
 Tue, 17 Jan 2023 23:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3EA8C433D2;
 Tue, 17 Jan 2023 23:34:04 +0000 (UTC)
Date: Wed, 18 Jan 2023 00:34:01 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Yonghong Song <yhs@meta.com>
Message-ID: <Y8cwaVPDG/CN/JsU@lore-desk>
References: <cover.1673710866.git.lorenzo@kernel.org>
 <36956338853442e6d546687678a93470a164ff17.1673710867.git.lorenzo@kernel.org>
 <5e20044c-6057-e5c7-624b-a1373c30fc12@meta.com>
MIME-Version: 1.0
In-Reply-To: <5e20044c-6057-e5c7-624b-a1373c30fc12@meta.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1673998445;
 bh=vjs3q6bsR2pHna86wjXL8AslohMK3OxlyjG1u0ig/WU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VgIiFuTCNXnCX6fPe7+/H4pRIJ54Ca3A52w6NrBUO1F/sene+fEmSdqhi6Xqim3Bx
 Pb1KAdlRy1HIEEZ/zvvcSFT4Lv9JG07Sw7NwCu2NxRCcf0qWUFJ5q2T2fEicfM1eU3
 m8rpPHg9UJxVTw54J6wsjOJQthBaoK6MK9eIYMEBBz9o1G9YYKdeTI+eTOexvwsSPh
 0WI61ygRV7Mx/l8j7f37wVoLkLDaB292KEQgUu+kLZj+iXpokOddr5evzIV+7kVVRv
 imm+k/gB+6TZ3fGsyefTSbwXTJwN2XpR2veX5FMtqVH5/mAmorWJV6kpSX4qZ5QKWG
 j2vXhiJEkXZfQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=VgIiFuTC
Subject: Re: [Intel-wired-lan] [RFC v2 bpf-next 3/7] xsk: add usage of XDP
 features flags
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============4975414021572466645=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============4975414021572466645==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vPJhlgCQKsEzlrAt"
Content-Disposition: inline


--vPJhlgCQKsEzlrAt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

>=20
>=20
> On 1/14/23 7:54 AM, Lorenzo Bianconi wrote:
> > From: Marek Majtyka <alardam@gmail.com>
> >=20
> > Change necessary condition check for XSK from ndo functions to
> > xdp features flags.
> >=20
> > Signed-off-by: Marek Majtyka <alardam@gmail.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >   net/xdp/xsk_buff_pool.c | 3 +--
> >   1 file changed, 1 insertion(+), 2 deletions(-)
> >=20
> > diff --git a/net/xdp/xsk_buff_pool.c b/net/xdp/xsk_buff_pool.c
> > index ed6c71826d31..2e6fa082142a 100644
> > --- a/net/xdp/xsk_buff_pool.c
> > +++ b/net/xdp/xsk_buff_pool.c
> > @@ -178,8 +178,7 @@ int xp_assign_dev(struct xsk_buff_pool *pool,
> >   		/* For copy-mode, we are done. */
> >   		return 0;
> > -	if (!netdev->netdev_ops->ndo_bpf ||
> > -	    !netdev->netdev_ops->ndo_xsk_wakeup) {
> > +	if ((netdev->xdp_features & NETDEV_XDP_ACT_ZC) !=3D NETDEV_XDP_ACT_ZC=
) {
>=20
> Maybe:
> 	if (!(netdev->xdp_features & NETDEV_XDP_ACT_ZC))

I would say it not equivalent since:

NETDEV_XDP_ACT_ZC =3D 0x5f

and we want the device supports all the ZC requested features. Agree?

Regards,
Lorenzo

> ?
>=20
> >   		err =3D -EOPNOTSUPP;
> >   		goto err_unreg_pool;
> >   	}

--vPJhlgCQKsEzlrAt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY8cwaQAKCRA6cBh0uS2t
rBs3AQDXuAXS4DxM+X4Q/ORhsZeogOkEybJCJEW6N92Bhiq0QgD/SO1ZZLKk4NXg
n9vkEm23Z5PvEqfYV4y/CMOMynatFg0=
=3buO
-----END PGP SIGNATURE-----

--vPJhlgCQKsEzlrAt--

--===============4975414021572466645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4975414021572466645==--
