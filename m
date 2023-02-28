Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D51AA6A6230
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 23:12:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DE7460B0F;
	Tue, 28 Feb 2023 22:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DE7460B0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677622327;
	bh=f208brtPol4GqlwZlA9gUJS8Xd+Z4Dbi4NEysPZvkLQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Cde4Opon531iZRv5J3GGdUAYtnA+9f8B8YRoziJq+ehyrIcB6PwXcJU9gxaIx5StJ
	 oo32X8on7WCktVbJB+U/9qFdfu3i7S+3//MGfw8C9um2tiEDXLgMbcUlH+Wy8o2YNw
	 AwJ9pFshx03/KeLcqVxgcG/UDsR8c9Je4wnAFT/swhW1l8t2Io8WhjYMfdOIEX9Scl
	 J02IBKMqUtdb01FhZoUJuGwBkoslTrf2Hl0yS/9ON+fDkRH9AQjE50YL+pWx/OhWXV
	 aIgMt6/K0t29/NqQmDhEWLiCk6pD7GMhYEu/gxgtKHNd8ld+BrbP+ujG44WSHh7q6g
	 2GzrDXnMPA58w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TDwrSl1iY6Qs; Tue, 28 Feb 2023 22:12:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D01860AE2;
	Tue, 28 Feb 2023 22:12:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D01860AE2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B17691BF580
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 22:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89DEE40190
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 22:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89DEE40190
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qPWZD_ODawRw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 22:12:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C519A400C8
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C519A400C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 22:12:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0477B611D6;
 Tue, 28 Feb 2023 22:12:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E21AFC433EF;
 Tue, 28 Feb 2023 22:11:58 +0000 (UTC)
Date: Tue, 28 Feb 2023 23:11:55 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Shay Agroskin <shayagr@amazon.com>
Message-ID: <Y/58Kzah/ERCYMGD@lore-desk>
References: <cover.1674913191.git.lorenzo@kernel.org>
 <948292cc7d72f2bc04b5973008ecf384f9296677.1674913191.git.lorenzo@kernel.org>
 <pj41zlcz5v1kkg.fsf@u570694869fb251.ant.amazon.com>
MIME-Version: 1.0
In-Reply-To: <pj41zlcz5v1kkg.fsf@u570694869fb251.ant.amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677622319;
 bh=Ko8B2Ke9vuu9enxqAJfFgtkV4iIhtcxQhPpeZO6LJZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B49WSNmZNSoOAYuuji8BrzI2neC5SBuPf8A2Ey5Rt6OaxZQ5rgwSNCIqHEuf/iIqv
 7J6AE4mqsVAawMdBgL4w2jYG6DsENOwSUbruH30cCVvrH68BdOKz1TWdbDMj62pKJH
 WPCHlZ752a9J31MGt6wmY45TMzHSLOtNQc3pMzpF/NnHixaNTedROFSeeZ5C4EUuLg
 /1N/FyFBbYgbrQYe/+iOYKNXVbKnZ2SRNEQCx0kcrpr/rFK3xCZ6dsq2nIvnEAe3Qi
 NzI42z8sGwUxepJ66pjcHUSb93T6LHfw/a/pd/XNhXKKAZ3JmFWnshE+cVlS3wBWgA
 kl0SBtr14etqA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=B49WSNmZ
Subject: Re: [Intel-wired-lan] [PATCH v4 bpf-next 2/8] drivers: net: turn on
 XDP features
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
 edumazet@google.com, anthony.l.nguyen@intel.com, sdf@google.com,
 daniel@iogearbox.net, andrii@kernel.org, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, martin.lau@linux.dev, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============3144815866359256235=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3144815866359256235==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2LGuPtBJE1KxgoLc"
Content-Disposition: inline


--2LGuPtBJE1KxgoLc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

>=20
> Lorenzo Bianconi <lorenzo@kernel.org> writes:
>=20
> > From: Marek Majtyka <alardam@gmail.com>
> >=20
> > ...
> >=20
> > diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c
> > b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> > index e8ad5ea31aff..d3999db7c6a2 100644
> > --- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
> > +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> > @@ -597,7 +597,9 @@ static int ena_xdp_set(struct net_device *netdev,
> > struct netdev_bpf *bpf)
> >  				if (rc)
> >  					return rc;
> >  			}
> > +			xdp_features_set_redirect_target(netdev, false);
> >  		} else if (old_bpf_prog) {
> > + xdp_features_clear_redirect_target(netdev);
> >  			rc =3D  ena_destroy_and_free_all_xdp_queues(adapter);
> >  			if (rc)
> >  				return rc;
> > @@ -4103,6 +4105,8 @@ static void ena_set_conf_feat_params(struct
> > ena_adapter *adapter,
> >  	/* Set offload features */
> >  	ena_set_dev_offloads(feat, netdev);
> >   +	netdev->xdp_features =3D NETDEV_XDP_ACT_BASIC |
> > NETDEV_XDP_ACT_REDIRECT;
> > +
> >  	adapter->max_mtu =3D feat->dev_attr.max_mtu;
> >  	netdev->max_mtu =3D adapter->max_mtu;
> >  	netdev->min_mtu =3D ENA_MIN_MTU;
> >=20
>=20
> Hi, thanks for the time you put in adjusting the ENA driver as well.

Hi Shay,

>=20
> Why did you set NETDEV_XDP_ACT_NDO_XMIT dynamically for some drivers (like
> ENA and mlx5) and statically for others (like atlantic driver which also
> redirects packets only when XDP program is loaded) ?
> Is it only for the sake of notifying the user that an XDP program has been
> loaded ?

there are some drivers (e.g. mvneta) where NETDEV_XDP_ACT_NDO_XMIT is always
supported while there are other drivers (e.g. intel drivers) where it
depends on other configurations (e.g. if the driver needs to reserve
some queues for xdp).

Regards,
Lorenzo

>=20
> Thanks,
> Shay
>=20
> > ...
> > diff --git a/net/core/xdp.c b/net/core/xdp.c
> > index a5a7ecf6391c..82727b47259d 100644
> > --- a/net/core/xdp.c
> > +++ b/net/core/xdp.c
> > @@ -773,3 +773,21 @@ static int __init xdp_metadata_init(void)
> >  	return register_btf_kfunc_id_set(BPF_PROG_TYPE_XDP,
> > &xdp_metadata_kfunc_set);
> >  }
> >  late_initcall(xdp_metadata_init);
> > +
> > +void xdp_features_set_redirect_target(struct net_device *dev, bool
> > support_sg)
> > +{
> > +	dev->xdp_features |=3D NETDEV_XDP_ACT_NDO_XMIT;
> > +	if (support_sg)
> > +		dev->xdp_features |=3D NETDEV_XDP_ACT_NDO_XMIT_SG;
> > +
> > +	call_netdevice_notifiers(NETDEV_XDP_FEAT_CHANGE, dev);
> > +}
> > +EXPORT_SYMBOL_GPL(xdp_features_set_redirect_target);
> > +
> > +void xdp_features_clear_redirect_target(struct net_device *dev)
> > +{
> > +	dev->xdp_features &=3D ~(NETDEV_XDP_ACT_NDO_XMIT |
> > +			       NETDEV_XDP_ACT_NDO_XMIT_SG);
> > +	call_netdevice_notifiers(NETDEV_XDP_FEAT_CHANGE, dev);
> > +}
> > +EXPORT_SYMBOL_GPL(xdp_features_clear_redirect_target);
>=20

--2LGuPtBJE1KxgoLc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY/58KwAKCRA6cBh0uS2t
rLKPAQDQyKfTANyIcDmS/mWg8vodAL3S9+fGnbTjTcIElAlHxwD9EWMFpLyzB8od
kMPPssGYZhGW38vxvWYGIyRAEAIMaAM=
=Y0Sa
-----END PGP SIGNATURE-----

--2LGuPtBJE1KxgoLc--

--===============3144815866359256235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3144815866359256235==--
