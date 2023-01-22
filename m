Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 558A1676C74
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Jan 2023 12:49:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D350E60E5B;
	Sun, 22 Jan 2023 11:49:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D350E60E5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674388173;
	bh=djHw7evFhNMyY1kGZ348Cqkl5M3C/1m893ZxsG1HncM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hRPVGmvWzEnb5KFnAocWMR6h8Xzx4+cQxCsGQPWU6hPsGeICO+J28EoSs7r6B5UjE
	 tjEZjwspEoxi7Xa8qdRgSwNKX98vlFe+Lhq9BxFIHeM5Laz+kC8+ANmpjfSU2lgvYN
	 NfrvqRYR4n918bLkg3sj5DQt3j4w0sJX27BFXrLhfOCht4fXHQEoSR1kDCdczQ1iIU
	 taQsE1hkfN3xJ1O7twP1mauk22Fhxl9aW8a997fFB8tW73Jo5T+oyVrDoh6hKuWv9G
	 RtEo1cQ8YMQUXkpdbv9qE6pCSHyFR+kFPQ2ZRylvEuuSZD9g8rpCEc+oJKqJKAYmGX
	 TQkc/Y5a/hfig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gT2EIfswN6oz; Sun, 22 Jan 2023 11:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B75B860B19;
	Sun, 22 Jan 2023 11:49:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B75B860B19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15C041BF379
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 11:49:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EACFD415CB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 11:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EACFD415CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J57hePrGQ1yM for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Jan 2023 11:49:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 279C5413D3
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 279C5413D3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 11:49:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E143060BA6;
 Sun, 22 Jan 2023 11:49:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAE01C433D2;
 Sun, 22 Jan 2023 11:49:23 +0000 (UTC)
Date: Sun, 22 Jan 2023 12:49:20 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y80iwBNd3tPvEbMd@lore-desk>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <861224c406f78694530fde0d52c49d92e1e990a2.1674234430.git.lorenzo@kernel.org>
 <20230120191152.44d29bb1@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230120191152.44d29bb1@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674388164;
 bh=Vx8kZgpecl8j894UuS9Gy9fQuZxp9dtbzjLs5dhZuiU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M13eMLVacR/YRSqNczt3ZXzVnr7q5dfyicuZPEXGiMjZ63P+TpCeUD1qRt3g6PRiQ
 83MIGHNJm3ZZULp3JZbGVXlQRIXP41xEuheEDPP7DJpbp1mMU4WZggOo/dO0Yj0x8q
 rKfMMa1pkQGKAJBo42r+KnSy+tvUnlcz3Vy57ohLw+jrGdhJuKMTWxe9zbUMLQR8Jb
 OAtsVvntsNbS4wS7DT6NVqzhVkq0YtmO35XgwOEPxKJHPrhXih7QG/CB2sUuON38br
 meH6mkihj2+3/thSEC9o6A9vTAuUbjgmOrhCc2CLRuyO7DqLpfc0TGqrtJ7Poa7LdI
 R/6uawCbo0NUg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=M13eMLVa
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/7] drivers: net: turn on
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
 niklas.soderlund@corigine.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============0668144023696231801=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============0668144023696231801==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w+GUdlDdqYVq1hNu"
Content-Disposition: inline


--w+GUdlDdqYVq1hNu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Fri, 20 Jan 2023 18:16:51 +0100 Lorenzo Bianconi wrote:
> > +static inline void
> > +xdp_features_set_redirect_target(xdp_features_t *xdp_features, bool su=
pport_sg)
> > +{
> > +	*xdp_features |=3D NETDEV_XDP_ACT_NDO_XMIT;
> > +	if (support_sg)
> > +		*xdp_features |=3D NETDEV_XDP_ACT_NDO_XMIT_SG;
> > +}
> > +
> > +static inline void
> > +xdp_features_clear_redirect_target(xdp_features_t *xdp_features)
> > +{
> > +	*xdp_features &=3D ~(NETDEV_XDP_ACT_NDO_XMIT |
> > +			   NETDEV_XDP_ACT_NDO_XMIT_SG);
> > +}
> > +
>=20
> Shouldn't these generate netlink notifications?

ack, I would say we need to add NETDEV_XDP_FEAT_CHANGE case in
netdev_genl_netdevice_event routine and maybe add a new
NETDEV_XDP_FEAT_CHANGE flag in netdev_cmd. What do you think?

Regards,
Lorenzo

--w+GUdlDdqYVq1hNu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY80iwAAKCRA6cBh0uS2t
rAxtAP9ZfJkB37hk72ekJNDpeCVLGZ9NJ+YCmn3/JWHaNxQTzQEAycDTiwQ0yNkk
GG1x89Gce/hWDOmYnA2ThF+j/KgquQo=
=vN6K
-----END PGP SIGNATURE-----

--w+GUdlDdqYVq1hNu--

--===============0668144023696231801==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0668144023696231801==--
