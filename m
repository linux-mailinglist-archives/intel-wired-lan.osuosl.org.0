Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC1C6717EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 10:38:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BEDBB403BF;
	Wed, 18 Jan 2023 09:38:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEDBB403BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674034737;
	bh=Os1RsmrvyG1smMKtJWaFvwlzJckYVq+eY/iiYX8b5Eo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qfawWF8mmFPP5sOvJ9L21PvTLBkFkxy/GaPBYPeInGeG98OnydFgHONpUOAUvzn5W
	 Yoqn/sHc0+2pqZ2TZU0jo/bL0akq1I+Zl6orel83XMzSVzFWHgaeLR7UklWXT9N/bU
	 ev++4VAofF5itSUS9H0Z47MavDJmqtSlP4aYK7sLV45m9jKHV+L96pQkv0cX8sI50x
	 A3bYVJueSH8lC60iJDE574r/6hdyBpbnjU3uqYDBCX7eGwYRHyh0HuLJfvyMvOb/zi
	 EcTi/UJXy24vH5QyVEMMbByRhzA5Sn8RUpJ0S7GBZ1N6fLoyCIMahfI8B52USYDZKz
	 W9byEf8Der2JQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fvJnXMDUyx7j; Wed, 18 Jan 2023 09:38:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A18540377;
	Wed, 18 Jan 2023 09:38:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A18540377
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 093C91BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 09:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D78DC40377
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 09:38:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D78DC40377
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j2kCXowU0Dab for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 09:38:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 108EA40360
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 108EA40360
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 09:38:50 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 53CED61729;
 Wed, 18 Jan 2023 09:38:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A854C433F0;
 Wed, 18 Jan 2023 09:38:49 +0000 (UTC)
Date: Wed, 18 Jan 2023 10:38:45 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@corigine.com>
Message-ID: <Y8e+JVtrEqtZemF3@lore-desk>
References: <cover.1673710866.git.lorenzo@kernel.org>
 <b606e729c9baf36a28be246bf0bfa4d21cc097fb.1673710867.git.lorenzo@kernel.org>
 <Y8cTKOmCBbMEZK8D@sleipner.dyn.berto.se>
 <Y8czKD8/yXywbl+f@lore-desk>
 <Y8ey7Sg3BcPfsU9d@sleipner.dyn.berto.se>
MIME-Version: 1.0
In-Reply-To: <Y8ey7Sg3BcPfsU9d@sleipner.dyn.berto.se>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674034729;
 bh=Wp7SIfyM1gO8OrC9XajKRdbO1OmnZftFUcrZn5tA//M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oyDTDalpqxaonpaJBV8oor4IuPzbrf2AdRuvJ1KPaGcugs0fU5jJJEV7/Hob5wec1
 IOsWwltDfvPl4XGHckz02xs3iDFj0fr71qDZM8RixGS2IRZJUegZAPRBkygWX3+tBL
 1+0BFNk931x0kUpjLWJ5VBFAW3Lf9yUhb8CL2g4GDD91FLuVvEpmmKDLbYHSXVEdiH
 YHEY1Oem7zXy+sgKuiReFABUTZkIeZb7uvpYDXOYnl9JMQb+jHXrqzAlxVK575Qwc7
 Gu9kNoQiCKb7Zzgvjs4QC9OgRnOdL/mkZca9nNsEHFbpjFWCyNZFEKix1FNrid0Kv5
 eiTNeD5ssTYzQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oyDTDalp
Subject: Re: [Intel-wired-lan] [RFC v2 bpf-next 2/7] drivers: net: turn on
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
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============7934112573249512944=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============7934112573249512944==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hD3us42baC0rGwVf"
Content-Disposition: inline


--hD3us42baC0rGwVf
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Hi Lorenzo,
>=20
> On 2023-01-18 00:45:44 +0100, Lorenzo Bianconi wrote:
> > > Hi Lorenzo and Marek,
> > >=20
> > > Thanks for your work.
> > >=20
> > > On 2023-01-14 16:54:32 +0100, Lorenzo Bianconi wrote:
> > >=20
> > > [...]
> > >=20
> > > >=20
> > > > Turn 'hw-offload' feature flag on for:
> > > >  - netronome (nfp)
> > > >  - netdevsim.
> > >=20
> > > Is there a definition of the 'hw-offload' written down somewhere? Fro=
m=20
> > > reading this series I take it is the ability to offload a BPF program=
? =20
> >=20
> > correct
> >=20
> > > It would also be interesting to read documentation for the other flag=
s=20
> > > added in this series.
> >=20
> > maybe we can add definitions in Documentation/netlink/specs/netdev.yaml?
> >=20
> > >=20
> > > [...]
> > >=20
> > > > diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c=20
> > > > b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> > > > index 18fc9971f1c8..5a8ddeaff74d 100644
> > > > --- a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> > > > +++ b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> > > > @@ -2529,10 +2529,14 @@ static void nfp_net_netdev_init(struct nfp_=
net *nn)
> > > >  	netdev->features &=3D ~NETIF_F_HW_VLAN_STAG_RX;
> > > >  	nn->dp.ctrl &=3D ~NFP_NET_CFG_CTRL_RXQINQ;
> > > > =20
> > > > +	nn->dp.netdev->xdp_features =3D NETDEV_XDP_ACT_BASIC |
> > > > +				      NETDEV_XDP_ACT_HW_OFFLOAD;
> > >=20
> > > If my assumption about the 'hw-offload' flag above is correct I think=
=20
> > > NETDEV_XDP_ACT_HW_OFFLOAD should be conditioned on that the BPF firmw=
are=20
> > > flavor is in use.
> > >=20
> > >     nn->dp.netdev->xdp_features =3D NETDEV_XDP_ACT_BASIC;
> > >=20
> > >     if (nn->app->type->id =3D=3D NFP_APP_BPF_NIC)
> > >         nn->dp.netdev->xdp_features |=3D NETDEV_XDP_ACT_HW_OFFLOAD;
> >=20
> > ack, I will fix it.
>=20
> Thanks. I have just been informed from Yinjun Zhang that this check is=20
> not enough as this function is reused for VF where nn->app is not set. I=
=20
> think a better check would be
>=20
>     if (nn->app && nn->app->type->id =3D=3D NFP_APP_BPF_NIC)
>=20
> Yinjun also informed me that you can make this code a bit neater by,
>=20
>     s/nn->dp.netdev->xdp_features/netdev->xdp_features/
>=20
> Thanks again for your work.

ack thx Niklas, I will fix it.

Regards,
Lorenzo

>=20
> >=20
> > >=20
> > > > +
> > > >  	/* Finalise the netdev setup */
> > > >  	switch (nn->dp.ops->version) {
> > > >  	case NFP_NFD_VER_NFD3:
> > > >  		netdev->netdev_ops =3D &nfp_nfd3_netdev_ops;
> > > > +		nn->dp.netdev->xdp_features |=3D NETDEV_XDP_ACT_XSK_ZEROCOPY;
> > > >  		break;
> > > >  	case NFP_NFD_VER_NFDK:
> > > >  		netdev->netdev_ops =3D &nfp_nfdk_netdev_ops;
> > >=20
> > > This is also a wrinkle I would like to understand. Currently NFP supp=
ort=20
> > > zero-copy on NFD3, but not for offloaded BPF programs. But with the B=
PF=20
> > > firmware flavor running the device can still support zero-copy for=20
> > > non-offloaded programs.
> > >=20
> > > Is it a problem that the driver advertises support for both=20
> > > hardware-offload _and_ zero-copy at the same time, even if they can't=
 be=20
> > > used together but separately?
> >=20
> > xdp_features should export NIC supported features in the current
> > configuration and it is expected they can be used concurrently.
> >=20
> > Regards,
> > Lorenzo
> >=20
> > >=20
> > > --=20
> > > Kind Regards,
> > > Niklas S=F6derlund
>=20
>=20
>=20
> --=20
> Kind Regards,
> Niklas S=F6derlund

--hD3us42baC0rGwVf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY8e+JQAKCRA6cBh0uS2t
rNsWAP9IWlqhjMPf1TD9MZNwspDMNKBoSGgWXHpRq3zu+fJHDQD/aizWK7i8NwAJ
0Mw7uKi5IULG/hLknsC/LDOiVgt1pAI=
=/s9e
-----END PGP SIGNATURE-----

--hD3us42baC0rGwVf--

--===============7934112573249512944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7934112573249512944==--
