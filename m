Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A289D696A49
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 17:49:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3493240B6D;
	Tue, 14 Feb 2023 16:49:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3493240B6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676393390;
	bh=2YfcsuEiNov+Yr+fH51uAhXD5YbiAK6b4l1jJaRSnOU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pqfpi2VRbwvPKk1nMwCAmGNERB7+ot5sMd1nl8P4M5KQSgZBPa2iRpEcrym3WCmZ5
	 V8na+xp3kn1jx5SS4vmOVZHEOtrYhl++21aGnbGEpHZxc3IVpF40I2IxSxMUihS5eX
	 /JJT2ZjoK6gELaZVYG1thdU7pde/nUw9gGj7rkwqCLQ/RcBYtWNZYmFvT4c9ZsWV+X
	 7QFO9juHr/fxTN+TWVI2br0e3fUqw+ggZPfxZx9s0jYI71E69toZpgrGh5rR07D2DX
	 JRoh14V+ugQbN6vcOFotxacVmZJNCA1BAJBHlO/3B8Ko1ecncFF+qif/C91cnC00Nu
	 tradkN4nOTliw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E20x-H6Ov8bS; Tue, 14 Feb 2023 16:49:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CCD24053C;
	Tue, 14 Feb 2023 16:49:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CCD24053C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A750D1BF57F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 16:49:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7EF7081410
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 16:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EF7081410
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v32znFQBHBKQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 16:49:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42BA98140A
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 42BA98140A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 16:49:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 896F0B81E33;
 Tue, 14 Feb 2023 16:49:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9A34C433EF;
 Tue, 14 Feb 2023 16:49:38 +0000 (UTC)
Date: Tue, 14 Feb 2023 17:49:35 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <Y+u7n4gRNy+F3fkx@lore-desk>
References: <8a4781511ab6e3cd280e944eef69158954f1a15f.1676385351.git.lorenzo@kernel.org>
 <Y+u6jkfVo4oZWn42@boxer>
MIME-Version: 1.0
In-Reply-To: <Y+u6jkfVo4oZWn42@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1676393379;
 bh=W6B/m734m/kjyz8yYIdkGxVDEUrxtpcevEyOfjHm0fI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mp7Ml6EwpyWc6g/LrmUibcSqt3a54lHoxaY8SquxXrAuN8KNvk5Ci4gnHscJNs3gV
 MiZ04nahIfDS2wSaSNSsLR3F/PGxJMclfCxoWDOS7hwl7dbNJt7oyW4DqBHtoTrLFX
 qjW5A92KXb3oTK3rMNBmt+ULEx9/LOjQ6D3xcdTnQUqZcL9eb4mYetvlxr3cqc8DGD
 a9vpf0c/lolSsSquF1vl8tjdrU7i6tIapqXasA+CqeEVK4sT1NzCDE+nWrAkIBi+wM
 eRgaTb/ybR5N78ZpAW+q7Dxa9EFSPowSKXgWlnksfqyL7PiE1wfRsN1ndd+3T5QG2W
 UNa7p5TpmrFiQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mp7Ml6Ew
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice: update xdp_features
 with xdp multi-buff
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============6236109862735742228=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============6236109862735742228==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hgOXsxVkxdzX+dA9"
Content-Disposition: inline


--hgOXsxVkxdzX+dA9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Tue, Feb 14, 2023 at 03:39:27PM +0100, Lorenzo Bianconi wrote:
> > Now ice driver supports xdp multi-buffer so add it to xdp_features.
> > Check vsi type before setting xdp_features flag.
> >=20
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> > Changes since v1:
> > - rebase on top of net-next
> > - check vsi type before setting xdp_features flag
> > ---
> >  drivers/net/ethernet/intel/ice/ice_main.c | 18 ++++++++++++------
> >  1 file changed, 12 insertions(+), 6 deletions(-)
> >=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/et=
hernet/intel/ice/ice_main.c
> > index 0712c1055aea..4994a0e5a668 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -2912,7 +2912,7 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bp=
f_prog *prog,
> >  			if (xdp_ring_err)
> >  				NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Tx resources failed");
> >  		}
> > -		xdp_features_set_redirect_target(vsi->netdev, false);
> > +		xdp_features_set_redirect_target(vsi->netdev, true);
> >  		/* reallocate Rx queues that are used for zero-copy */
> >  		xdp_ring_err =3D ice_realloc_zc_buf(vsi, true);
> >  		if (xdp_ring_err)
> > @@ -3333,10 +3333,11 @@ static void ice_napi_add(struct ice_vsi *vsi)
> > =20
> >  /**
> >   * ice_set_ops - set netdev and ethtools ops for the given netdev
> > - * @netdev: netdev instance
> > + * @vsi: the VSI associated with the new netdev
> >   */
> > -static void ice_set_ops(struct net_device *netdev)
> > +static void ice_set_ops(struct ice_vsi *vsi)
> >  {
> > +	struct net_device *netdev =3D vsi->netdev;
> >  	struct ice_pf *pf =3D ice_netdev_to_pf(netdev);
> > =20
> >  	if (ice_is_safe_mode(pf)) {
> > @@ -3348,6 +3349,13 @@ static void ice_set_ops(struct net_device *netde=
v)
> >  	netdev->netdev_ops =3D &ice_netdev_ops;
> >  	netdev->udp_tunnel_nic_info =3D &pf->hw.udp_tunnel_nic;
> >  	ice_set_ethtool_ops(netdev);
> > +
> > +	if (vsi->type !=3D ICE_VSI_PF)
> > +		return;
> > +
> > +	netdev->xdp_features =3D NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRE=
CT |
> > +			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
> > +			       NETDEV_XDP_ACT_RX_SG;
>=20
> FWIW we do support frags in ndo_xdp_xmit() now so
> NETDEV_XDP_ACT_NDO_XMIT_SG should be set.

yep, I have enabled them in ice_xdp_setup_prog() setting support_sg to true=
 in
xdp_features_set_redirect_target().

Regards,
Lorenzo

>=20
> >  }
> > =20
> >  /**
> > @@ -4568,9 +4576,7 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
> >  	np->vsi =3D vsi;
> > =20
> >  	ice_set_netdev_features(netdev);
> > -	netdev->xdp_features =3D NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRE=
CT |
> > -			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
> > -	ice_set_ops(netdev);
> > +	ice_set_ops(vsi);
> > =20
> >  	if (vsi->type =3D=3D ICE_VSI_PF) {
> >  		SET_NETDEV_DEV(netdev, ice_pf_to_dev(vsi->back));
> > --=20
> > 2.39.1
> >=20
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--hgOXsxVkxdzX+dA9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY+u7nwAKCRA6cBh0uS2t
rMTHAP93bN/jYu+AAvLkcKUqmaTdtSl/6TN2MOxTBN19p78SYgD9HY7Qo51GylZ/
LCDj5x3hEReTGwgZU/XPaOEdkgLXsQg=
=1ukL
-----END PGP SIGNATURE-----

--hgOXsxVkxdzX+dA9--

--===============6236109862735742228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6236109862735742228==--
