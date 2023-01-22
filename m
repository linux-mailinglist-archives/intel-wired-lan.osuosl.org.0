Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F18A676CAC
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Jan 2023 13:09:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 897A460E4A;
	Sun, 22 Jan 2023 12:09:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 897A460E4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674389391;
	bh=SdLR6fPRQYZiRWE7Z8siTH4uKE3W3t83HIBL/17hU4s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AvUoWXhZBFAVuie/FpCt3S6+3HNW25EID892padlY/NPIQDOoNVc0HMDOmRhYO66r
	 0filgpaiWU8aGdVkd3VdXi+gjn4KkAkgbIOH8CFFmPrFfnFRMRD6IGeTBAl9S99BVP
	 LEwb+f/YuZ/7T2c2P15HpSNOA/Gdcb6P5jIaM65Kj7aJXxHc395cWCPiqy5QKsBlMh
	 907OBs4Jr8bByJVaF/YZrDfIBVEjhwHDPrAu67uJabI9IH8oTEDYg+0JzTcuOjycJd
	 EGzoFrKMm+UpIgm9gLU6D2pFocgi7Bm6TT4LKc1BourgsODj2ep8ArE6EvtZosebie
	 L6WEwQ07WA0PQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GocJ8U5-EqJx; Sun, 22 Jan 2023 12:09:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8916660B43;
	Sun, 22 Jan 2023 12:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8916660B43
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B8BC1BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 12:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4316E40328
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 12:09:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4316E40328
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8GteJAo2CaIl for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Jan 2023 12:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 099894010E
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 099894010E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 12:09:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 46B3B60BE9;
 Sun, 22 Jan 2023 12:09:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B0EBC433EF;
 Sun, 22 Jan 2023 12:09:42 +0000 (UTC)
Date: Sun, 22 Jan 2023 13:09:38 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y80ngqGcHIp3b8Rz@lore-desk>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <31e46f564a30e0d3d1e06edb27045be9f318ff0b.1674234430.git.lorenzo@kernel.org>
 <20230120192059.66d058bf@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230120192059.66d058bf@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674389382;
 bh=T0RMawtfeLWYRS29q6KiwNJBY0Mqii5zhUzrcZ1hlOU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=idc1lXaUwHxDTM8i2sAyiYggmThJuVvFcd0+c2Wn2eeRAMCexSlzIZ9VT9Ob7NzwC
 RIPcjCvsaa+9tFOY5SbfvcUdXGyNxMca9zNvHphm8DwZEFinxaiUN31bcDbTLB2ndz
 uF/sK/TBJxGaIrUKXrZekCxwrl2zWJWsYhCucC79x0QoS7RryYL0o/2iXwADXGFsbu
 iJYjB+44HX42srxP41X0EKZ3wB9jcq/jg+HQOWCxWChui47HlV1Vbct05yKOkRPEAU
 q39st4NHWaFI3/CaBQTgcoSUXpP6EAsM4TkffO82pO5tCZi2PW9PFhtVQMAKtOGZXr
 qQYBZo0lHJ5cw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=idc1lXaU
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 5/7] libbpf: add API to get
 XDP/XSK supported features
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
Content-Type: multipart/mixed; boundary="===============3261137354890073696=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3261137354890073696==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0tACK8m4bRM0/8/P"
Content-Disposition: inline


--0tACK8m4bRM0/8/P
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Fri, 20 Jan 2023 18:16:54 +0100 Lorenzo Bianconi wrote:
> > +static int libbpf_netlink_resolve_genl_family_id(const char *name,
> > +						 __u16 len, __u16 *id)
> > +{
> > +	struct libbpf_nla_req req =3D {
> > +		.nh.nlmsg_len	=3D NLMSG_LENGTH(GENL_HDRLEN),
> > +		.nh.nlmsg_type	=3D GENL_ID_CTRL,
> > +		.nh.nlmsg_flags	=3D NLM_F_REQUEST,
> > +		.gnl.cmd	=3D CTRL_CMD_GETFAMILY,
> > +		.gnl.version	=3D 1,
>=20
> nlctrl is version 2, shouldn't matter in practice

ack, I will fix it.

Regards,
Lorenzo

--0tACK8m4bRM0/8/P
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY80nggAKCRA6cBh0uS2t
rPC7AQDu6l1kKMwrf9Bhnb/F1h4rjFppYj8nmw/lsCuNWc4JSwD+OxLIp1k3DkBy
Ts1xkVfkP6+VjvYnGb9NCb5k9adttwU=
=1C3N
-----END PGP SIGNATURE-----

--0tACK8m4bRM0/8/P--

--===============3261137354890073696==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3261137354890073696==--
