Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E124A67D817
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 23:00:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 063E78254A;
	Thu, 26 Jan 2023 22:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 063E78254A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674770426;
	bh=kvdwu3DCpODK6DiE2ADF48MWohEMViXF0uGgsFkTLLQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bAlfaSSS/QsMFQS71Q9vqY6ns6YEIEpQEjF+XP+J8yV3FYzG3L9tAODetUBMzwgwd
	 Euc0TKLcjYh0GY+bC+U90NzwZFLp5lUaWWUG1oIGgQgjUzjVR4BSPu78D6akoTfaUm
	 hjDi2fJDTR6ZVz2+uyw5n5+lOyYkzUkQSx5+Y/eESgJpT6cun+VTOBInJ3sOGlp8No
	 JVttdcQ5kB761WrN1mr0h49Mjjv8atG2mIGhGdyhklKmiJhAGB5k1KtJiQ2T93TOLg
	 1XZ3LtnUGmM1grqDXhBdgQWBGuMQbn6zFSge3Ju+w1a+f8UnAkq7RAyHlmrwQhcEfm
	 rQYLa/8WCZpwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iODADwBIwVny; Thu, 26 Jan 2023 22:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 073D38249B;
	Thu, 26 Jan 2023 22:00:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 073D38249B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F2431BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 22:00:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 846D6824CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 22:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 846D6824CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n1Spo1bxrLhO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 22:00:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9B6D8249B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9B6D8249B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 22:00:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D823A6194D;
 Thu, 26 Jan 2023 22:00:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFE06C433D2;
 Thu, 26 Jan 2023 22:00:16 +0000 (UTC)
Date: Thu, 26 Jan 2023 23:00:13 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Gerhard Engleder <gerhard@engleder-embedded.com>
Message-ID: <Y9L37bVacFMYdqVv@lore-desk>
References: <cover.1674606193.git.lorenzo@kernel.org>
 <c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo@kernel.org>
 <28eedfd5-4444-112b-bfbc-1c7682385c88@engleder-embedded.com>
MIME-Version: 1.0
In-Reply-To: <28eedfd5-4444-112b-bfbc-1c7682385c88@engleder-embedded.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674770417;
 bh=mG3PIraFDoP2NR/mGww1RDWi7EAzYTplzCN246slWDw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=khERF1GxXIngu4mAhc/cQRMghNSkohz9N2rYq8SBOuiAS5r1em1yMmDOGtDK4GGG9
 /gxYH8f+YF2biApjK5+AhIKTEpJ1o1Lh40qQYVVPh79QBULrfTmyomUHn022V5bF/h
 IDcP2U5onKr5ux7dT5JQYKlMv26xt4yFzthbEZkZ/wJ8xt+Tqx5NVDN8DTvgMPmcP7
 Zs9YPPn8aStUk0NizoSpu9xCaTLZIsXX5sBGCI5Jy6WzwQY3jvtXh9jEzeniGXxORw
 7GEbwoePVmFNVk3aJkdEu39VChzUzzpi3eCsWGh/LSAahafnAoSbbx3HOXFqyd5a3L
 3ixe/EFUg6VoQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=khERF1Gx
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf-next 2/8] drivers: net: turn on
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
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============3899865676552135388=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3899865676552135388==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wgPVbgvG3x7so8fA"
Content-Disposition: inline


--wgPVbgvG3x7so8fA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 25.01.23 01:33, Lorenzo Bianconi wrote:
> > From: Marek Majtyka <alardam@gmail.com>
> >=20
> > A summary of the flags being set for various drivers is given below.
> > Note that XDP_F_REDIRECT_TARGET and XDP_F_FRAG_TARGET are features
> > that can be turned off and on at runtime. This means that these flags
> > may be set and unset under RTNL lock protection by the driver. Hence,
> > READ_ONCE must be used by code loading the flag value.
> >=20
> > Also, these flags are not used for synchronization against the availabi=
lity
> > of XDP resources on a device. It is merely a hint, and hence the read
> > may race with the actual teardown of XDP resources on the device. This
> > may change in the future, e.g. operations taking a reference on the XDP
> > resources of the driver, and in turn inhibiting turning off this flag.
> > However, for now, it can only be used as a hint to check whether device
> > supports becoming a redirection target.
> >=20
> > Turn 'hw-offload' feature flag on for:
> >   - netronome (nfp)
> >   - netdevsim.
> >=20
> > Turn 'native' and 'zerocopy' features flags on for:
> >   - intel (i40e, ice, ixgbe, igc)
> >   - mellanox (mlx5).
> >   - stmmac
> >=20
> > Turn 'native' features flags on for:
> >   - amazon (ena)
> >   - broadcom (bnxt)
> >   - freescale (dpaa, dpaa2, enetc)
> >   - funeth
> >   - intel (igb)
> >   - marvell (mvneta, mvpp2, octeontx2)
> >   - mellanox (mlx4)
> >   - qlogic (qede)
> >   - sfc
> >   - socionext (netsec)
> >   - ti (cpsw)
> >   - tap
> >   - veth
> >   - xen
> >   - virtio_net.
> >=20
> > Turn 'basic' (tx, pass, aborted and drop) features flags on for:
> >   - netronome (nfp)
> >   - cavium (thunder)
> >   - hyperv.
> >=20
> > Turn 'redirect_target' feature flag on for:
> >   - amanzon (ena)
> >   - broadcom (bnxt)
> >   - freescale (dpaa, dpaa2)
> >   - intel (i40e, ice, igb, ixgbe)
> >   - ti (cpsw)
> >   - marvell (mvneta, mvpp2)
> >   - sfc
> >   - socionext (netsec)
> >   - qlogic (qede)
> >   - mellanox (mlx5)
> >   - tap
> >   - veth
> >   - virtio_net
> >   - xen
>=20
> XDP support for tsnep was merged to net-next last week. So this driver
> cannot get XDP feature support in bpf-next as it is not there currently.
> Should I add these flags with a fix afterwards? Or would net-next be the
> better target for this patch series?

It is better to target this series to bpf-next I guess since there are some
libbpf and bpf changes.
I would say we can fix tsnep with a follow-up patch or I can add it to the
series if bpf-next will be rebased before the series is merged, it depends =
on
the upstream discussion.

Regards,
Lorenzo

>=20
> Gerhard

--wgPVbgvG3x7so8fA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY9L37QAKCRA6cBh0uS2t
rH69AQChogm+pILXQ5apmdID9EOinCFNzrdmsYfWKZTkNX3DHAD9FLa+koGMdvfi
Sra3pIlrfq3pfEJtrDxxK+cbpWGBfgE=
=Pvrl
-----END PGP SIGNATURE-----

--wgPVbgvG3x7so8fA--

--===============3899865676552135388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3899865676552135388==--
