Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49151673B9A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 15:23:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C945940591;
	Thu, 19 Jan 2023 14:23:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C945940591
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674138224;
	bh=ABWTwdlPxRJAhPCMe0yjh/LZcEWrpXqJmnKrHRO29dI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GjTf8PwUgwLMQj180jq1RIgioEl8HwnmpInNZ8B1p/isjD5Rgl0hiKL81LtFacRaF
	 bQA2iz+0Vf8DarETf9kowrww6KVuafGpbtaRwgvTQLUKk6awAvJ9liuM19QiIixuls
	 VLZzscObG77fVhiXLQeR6IbC8LTy7dFjSFZvIa3DHuKJK917G6eqGhyqX76iawGE0M
	 8KFRSf6AXslVysYbJSyKIi6HHhE5sKBx+rxRH4VjdwhlGkjNrA2kB1VrhWC1JxP4+y
	 qxG+JmBHN9rUzGUpz/TGyyIMOP3hs4PbX9IfdVDMFcDiJojdyITQPfG5+hUuQgSaOS
	 1TUEDvQJ9+XlQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oTFbF1YSPOD4; Thu, 19 Jan 2023 14:23:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A422F404D1;
	Thu, 19 Jan 2023 14:23:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A422F404D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBDE91BF372
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 14:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 243AB60FE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 14:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 243AB60FE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QMrVX47M8Mzi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 14:23:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE61260E27
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE61260E27
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 14:23:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AE99C615C6;
 Thu, 19 Jan 2023 14:23:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91C19C433EF;
 Thu, 19 Jan 2023 14:23:34 +0000 (UTC)
Date: Thu, 19 Jan 2023 15:23:31 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: sdf@google.com
Message-ID: <Y8lSY2rfx5woNJOu@lore-desk>
References: <cover.1673710866.git.lorenzo@kernel.org>
 <b606e729c9baf36a28be246bf0bfa4d21cc097fb.1673710867.git.lorenzo@kernel.org>
 <Y8hW8IqJTa0zE2aS@google.com>
MIME-Version: 1.0
In-Reply-To: <Y8hW8IqJTa0zE2aS@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674138215;
 bh=jF//NUpq1HN0b0Ns8y/1mrIp01dJ2M8KP6bnPkFL0Pw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QP5CbJkXPMLvndjLQvNjPZre9nwiEdaj8L8gv34aK3Otf9uzVr3hRZ07gRufUbIEY
 agchRoYYSlcIUq9G5scJxX0rzXcs/lFAWB3cp/Oj62rwhVMjo/HpOYmCEl2EwvUFB7
 KKevnkP85UC19IYIzAsWLig0fWUz/ZTU4LW0ysYU28O0JTjUu9Lc0nezYpX3KAijfx
 a8NA9sFCnvv4kaFoFAD8qhrlaGfx4tuBdLwZB6UzDu2FDYfm2E/EMO0MNPwyuyvYO4
 WVUwASBd+0RyvrOBxsX5H56Lovom6n7fsFtYcUrrzqORTaNrvdzXwZJfkDVl+lvklp
 7fOk1h5EobDWQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QP5CbJkX
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
Content-Type: multipart/mixed; boundary="===============4766052422205452276=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============4766052422205452276==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DGAPQT9oFXfrtSAg"
Content-Disposition: inline


--DGAPQT9oFXfrtSAg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 01/14, Lorenzo Bianconi wrote:
> > From: Marek Majtyka <alardam@gmail.com>
>=20

[...]

>=20
> Maybe stupid question: why do we need WRITE_ONCE here?
> And if we do need it, do we need READ_ONCE as well?
>=20
> WRITE_ONCE(*xdp_features, READ_ONCE(*xdp_features) | flags);

This part is from the Marek's original series. I will let him to comment on=
 it.

>=20
> ?
>=20
> Also, would it make sense to drop this __xdp_features_set_redirect_target
> and just define the following:
>=20
> static inline void
> xdp_features_set_redirect_target(xdp_features_t *xdp_features, bool
> support_sg)
> {
> 	xdp_features_t flags =3D NETDEV_XDP_ACT_NDO_XMIT;
>=20
> 	if (support_sg)
> 		flags |=3D NETDEV_XDP_ACT_NDO_XMIT_SG;
> 	*xdp_features |=3D flags; /* or WRITE_ONCE */
> }
>=20
> This should avoid having two different sets of functions. Or does it
> look worse because of that 'naked' true/false argument in the call
> sites?

I did this way because we will mainly run it with support_sg set to false,
but I do not have a strong opinion on it, I am fine both ways. I will fix i=
t.

Regards,
Lorenzo

>=20
>=20
> > +}
> > +
> > +static inline void
> > +xdp_features_clear_redirect_target(xdp_features_t *xdp_features)
> > +{
> > +	WRITE_ONCE(*xdp_features,
> > +		   *xdp_features & ~(NETDEV_XDP_ACT_NDO_XMIT |
> > +				     NETDEV_XDP_ACT_NDO_XMIT_SG));
> > +}
> > +
> > +#else
> > +
> > +static inline void
> > +__xdp_features_set_redirect_target(xdp_features_t *xdp_features, u32
> > flags)
> > +{
> > +}
> > +
> > +static inline void
> > +xdp_features_clear_redirect_target(xdp_features_t *xdp_features)
> > +{
> > +}
> > +
> > +#endif
> > +
> > +static inline void
> > +xdp_features_set_redirect_target(xdp_features_t *xdp_features)
> > +{
> > +	__xdp_features_set_redirect_target(xdp_features,
> > +					   NETDEV_XDP_ACT_NDO_XMIT |
> > +					   NETDEV_XDP_ACT_NDO_XMIT_SG);
> > +}
> > +
> >   #define DEV_MAP_BULK_SIZE XDP_BULK_QUEUE_SIZE
>=20
> >   #endif /* __LINUX_NET_XDP_H__ */
> > --
> > 2.39.0
>=20

--DGAPQT9oFXfrtSAg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY8lSYwAKCRA6cBh0uS2t
rJtrAPwK/+nlrw98yKOdg+WYuzD06o+yaCcuTx3jjb6lFn3v+wEA6kHNa8gGGDXU
RHgliiOFhY71LPPYr2/wItwtHw9/3Ak=
=s5kN
-----END PGP SIGNATURE-----

--DGAPQT9oFXfrtSAg--

--===============4766052422205452276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4766052422205452276==--
