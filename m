Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A23BF678C07
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 00:29:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B27260FDA;
	Mon, 23 Jan 2023 23:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B27260FDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674516559;
	bh=0Q6nsaQ5gpM3cqcYm7LMUHMc9xYTKRG+dOtvPSOdqXY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9PNRafqYyuvuTydThRpuDmwMy98/DODokMXw3m9vQ56IdQkfnhPe8f47qPRBawk4v
	 JcbQafs+0W1FDxV/13ASGdk6ppACKPTAKDLhGxYZH14B5t/VMuKzDajWJChax9fjKe
	 Z4/gNxp9zaZeB1nJtJoQJ8r/BM1c+7K+aP7SR+3rxhDGnxY6EfqzZGkNu1+vkkxQhf
	 PZl/qY4jfR9F0ZazRmDorwhYKkxevD60bpkDcejQyAJx4FpyjPrPjRJx3MLF4gwEV7
	 mySZnBdZJj6dAolUr6xDWvwmcB6L4A9ntiiRm2HXpn5gaexZiN8QnoOr3JRysHfdM+
	 0S/8JNLLmvBfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id khZvM8LM_s8M; Mon, 23 Jan 2023 23:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AFE960F3D;
	Mon, 23 Jan 2023 23:29:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AFE960F3D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C18C1BF332
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 23:29:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 120EE416BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 23:29:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 120EE416BE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qD_QG7dZC4Zu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 23:29:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 956A24161A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 956A24161A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 23:29:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8678561117;
 Mon, 23 Jan 2023 23:29:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 739CDC433EF;
 Mon, 23 Jan 2023 23:29:10 +0000 (UTC)
Date: Tue, 24 Jan 2023 00:29:07 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y88YQzh1WCjFTmGl@lore-desk>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <acc9460e6e29dfe02cf474735277e196b500d2ef.1674234430.git.lorenzo@kernel.org>
 <d0232e99-862b-3255-aeac-7c04486cb773@linux.dev>
 <Y80odbX/CVjlYalh@lore-desk> <20230123120958.741cf5f1@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230123120958.741cf5f1@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674516550;
 bh=Ggo5QP8q+ffH6krbPwKFl4pj1x/CqV1c9NmMozm8TA0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OsTlxwEQDGypI1iVMP8OE5hNIBZw1xSJI4yB6/ix/Gzj9g1Urb6GVYLfLwUP1ASQO
 lKbVPvX4G9PZalf/FfTN4WcmeEMwui1R05r9HDNIBK8mL09L0arX0CHkOctYfrvDbf
 EcBp4QgIfJ+EiZfT+zB+U5rCVJxxNhhhI1s+78cZb34XNdNv+h5EgfwA0W09+R4qCi
 daDVxxMatyhfYII2mzIzq2nIC40pNQRdssZc8Uqus4Km9S9pWiqU9/MB43CThpci7V
 1/nS6QjaUfJLPg9A1SgAwnzCIGIYpblkxacTzInDOPsK4b4Vr0bRfIkZd86Rmw7wCt
 nsTThmhDksiCw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OsTlxwEQ
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 6/7] bpf: devmap: check XDP
 features in bpf_map_update_elem and __xdp_enqueue
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
 niklas.soderlund@corigine.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, Martin KaFai Lau <martin.lau@linux.dev>,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============3080712498739916567=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3080712498739916567==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qziEnyJPquu9LTl8"
Content-Disposition: inline


--qziEnyJPquu9LTl8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Jan 23, Jakub Kicinski wrote:
> On Sun, 22 Jan 2023 13:13:41 +0100 Lorenzo Bianconi wrote:
> > > > diff --git a/kernel/bpf/devmap.c b/kernel/bpf/devmap.c
> > > > index d01e4c55b376..69ceecc792df 100644
> > > > --- a/kernel/bpf/devmap.c
> > > > +++ b/kernel/bpf/devmap.c
> > > > @@ -474,7 +474,11 @@ static inline int __xdp_enqueue(struct net_dev=
ice *dev, struct xdp_frame *xdpf,
> > > >   {
> > > >   	int err;
> > > > -	if (!dev->netdev_ops->ndo_xdp_xmit)
> > > > +	if (!(dev->xdp_features & NETDEV_XDP_ACT_NDO_XMIT)) =20
> > >=20
> > > The current "dev->netdev_ops->ndo_xdp_xmit" check is self explaining.
> > > Any plan to put some document for the NETDEV_XDP_ACT_* values?
> > >  =20
> >=20
> > I am not a yaml description expert but I guess we can xdp features desc=
ription
> > in Documentation/netlink/specs/netdev.yaml.
> >=20
> > @Jakub: what do you think?
>=20
> I've added the ability to document enums recently, so you may need
> to rebase. But it should work and render the documentation as kdoc=20
> in the uAPI header (hopefully in a not-too-ugly way).
>=20
> Example of YAML:
> https://github.com/kuba-moo/ynl/blob/dpll/Documentation/netlink/specs/dpl=
l.yaml#L27-L46

ack, it works properly I guess, I got the following kdoc in the uAPI:

/**
 * enum netdev_xdp_act
 * @NETDEV_XDP_ACT_BASIC: XDP feautues set supported by all drivers
 *   (XDP_ABORTED, XDP_DROP, XDP_PASS, XDP_TX)
 * @NETDEV_XDP_ACT_REDIRECT: The netdev supports XDP_REDIRECT
 * @NETDEV_XDP_ACT_NDO_XMIT: This feature informs if netdev implements
 *   ndo_xdp_xmit callback.
 * @NETDEV_XDP_ACT_XSK_ZEROCOPY: This feature informs if netdev supports AF=
_XDP
 *   in zero copy mode.
 * @NETDEV_XDP_ACT_HW_OFFLOAD: This feature informs if netdev supports XDP =
hw
 *   oflloading.
 * @NETDEV_XDP_ACT_RX_SG: This feature informs if netdev implements non-lin=
ear
 *   XDP buffer support in the driver napi callback.
 * @NETDEV_XDP_ACT_NDO_XMIT_SG: This feature informs if netdev implements
 *   non-linear XDP buffer support in ndo_xdp_xmit callback.
 */
enum netdev_xdp_act {
        NETDEV_XDP_ACT_BASIC,
        NETDEV_XDP_ACT_REDIRECT,
        NETDEV_XDP_ACT_NDO_XMIT,
        NETDEV_XDP_ACT_XSK_ZEROCOPY,
        NETDEV_XDP_ACT_HW_OFFLOAD,
        NETDEV_XDP_ACT_RX_SG,
        NETDEV_XDP_ACT_NDO_XMIT_SG,
};

Regards,
Lorenzo

>=20
> I've also talked to the iproute2-py maintainer about generating
> documentation directly from YAML to Sphinx/htmldocs, hopefully=20
> that will happen, too. It would be good to have a few families=20
> to work with before we start that work, tho.

--qziEnyJPquu9LTl8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY88YQwAKCRA6cBh0uS2t
rEWoAP9E7+yhe6xzWNvVhGDtR0Vbhmo4cx8MtqrkRR1v7KgJDAD+Opg5Jj9EYfqC
SGFVAfjquj2QKYGMgbChLVyZs0yjUwk=
=FQIt
-----END PGP SIGNATURE-----

--qziEnyJPquu9LTl8--

--===============3080712498739916567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3080712498739916567==--
