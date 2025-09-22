Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE3EB9002A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Sep 2025 12:32:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C59D844FB;
	Mon, 22 Sep 2025 10:32:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wwdZm7c_2pcU; Mon, 22 Sep 2025 10:32:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1E78844FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758537137;
	bh=7oHLkXDAOSJ2InhIHp6a8yNjQCKgxmCcAXpLu7A7yW0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=efYTkAqcORzMgMDGMEU88IEW/NiX8FYSKIt3p7ZHds9KDmaMHCM1SdsNQOLH3LnqK
	 CZkeWvYgcuuQ++0Tr2x5JUdOSXSzhAZ4mqTMyyIoNkX+c/2DQkbI4d04f7YiRGOFQF
	 PWP53uqTu7Gf2Fdkng8Be6DeKvPhdQNXJgryUQKrcNauko2rFuwa35btfOzXwsFJnJ
	 8T3O8ISEstaZjmtBOT9VrIgXS+xK4i4UbVZEf5IguOW7RQZr5b7qq1HTN90bA5q7ty
	 TQvFLvqq6LWsHUZAyeOn4YFnQrTGAMq0wsG8mVKgi6N2OOcHBnpHLpaqpTcmFz+I2B
	 t78RDCQOCVEKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1E78844FC;
	Mon, 22 Sep 2025 10:32:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1ED95116C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:32:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E325844F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:32:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k0ufOI4fwkon for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Sep 2025 10:32:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5C464844F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C464844F9
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C464844F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:32:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A847043FC4;
 Mon, 22 Sep 2025 10:32:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A28AC4CEF0;
 Mon, 22 Sep 2025 10:32:14 +0000 (UTC)
Date: Mon, 22 Sep 2025 12:32:12 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <aNElrLdHoh__L1xj@lore-desk>
References: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
 <20250920-xdp-meta-rxcksum-v1-4-35e76a8a84e7@kernel.org>
 <aNEh5Q1c93J0p9TN@boxer>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="qM5OlCJeilOSMSrU"
Content-Disposition: inline
In-Reply-To: <aNEh5Q1c93J0p9TN@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758537134;
 bh=B9O+nSY4hY0MXqA71yFEvWYGoOuvl+qfDkdqhXGasd8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U6MHeGFde4gXsJlwWZ4GpD0ZI1gd7bvPC02oM40wF8aCOaZ3HCCBYsLUcuhPobnQh
 uaN8F8rAOJY7niRsT09DA/Wh19O+Jqrb+igkhP7SaJ69vvox8xcsap36g1nXKgmvTf
 3e/BiURFcvu9epA95EMsbLuJP1SBcSJouEdfqW7DvWiQKPj8e6XIfn4WUxa6WmShgU
 fj7hxR7YM71u3SSjQ+X4T51bN2mpi9VI36HHSEVzNgi6dhRdWMjPpl4/cza9p/7S9Q
 KLj6txjndlBUNnbeehkE84yNFY3i1DCMc9DQbkVDAt9gLw8uHGilGSbyb00svY9vzj
 s3c6Wqx/Rznpg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=U6MHeGFd
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next 4/6] net: ice: Add
 xmo_rx_checksum callback
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--qM5OlCJeilOSMSrU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[...]
>=20
> Hi Lorenzo,
>=20
> any chance we could have some common code used both here and in
> ice_rx_csum() ?

Hi Maciej,

ack, I will look into it.

Regards,
Lorenzo

>=20
> > +{
> > +	const struct ice_xdp_buff *xdp_ext =3D (void *)ctx;
> > +	const union ice_32b_rx_flex_desc *rx_desc =3D xdp_ext->eop_desc;
> > +	u16 rx_status0, rx_status1, ptype =3D ice_get_ptype(rx_desc);
> > +	struct libeth_rx_pt decoded =3D libie_rx_pt_parse(ptype);
> > +	bool ipv4, ipv6;
> > +
> > +	if (!libeth_rx_pt_has_checksum(xdp_ext->xdp_buff.rxq->dev, decoded))
> > +		goto checksum_none;
> > +
> > +	rx_status0 =3D le16_to_cpu(rx_desc->wb.status_error0);
> > +	rx_status1 =3D le16_to_cpu(rx_desc->wb.status_error1);
> > +	if ((xdp_ext->pkt_ctx->rxq_flags & ICE_RX_FLAGS_RING_GCS) &&
> > +	    rx_desc->wb.rxdid =3D=3D ICE_RXDID_FLEX_NIC &&
> > +	    (decoded.inner_prot =3D=3D LIBETH_RX_PT_INNER_TCP ||
> > +	     decoded.inner_prot =3D=3D LIBETH_RX_PT_INNER_UDP ||
> > +	     decoded.inner_prot =3D=3D LIBETH_RX_PT_INNER_ICMP)) {
> > +		const struct ice_32b_rx_flex_desc_nic *desc;
> > +		u16 csum;
> > +
> > +		desc =3D (struct ice_32b_rx_flex_desc_nic *)rx_desc;
> > +		*ip_summed =3D CHECKSUM_COMPLETE;
> > +		csum =3D (__force u16)desc->raw_csum;
> > +		*cksum_meta =3D csum_unfold((__force __sum16)swab16(csum));
> > +		return 0;
> > +	}
> > +
> > +	/* check if HW has decoded the packet and checksum */
> > +	if (!(rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
> > +		goto checksum_none;
> > +
> > +	ipv4 =3D libeth_rx_pt_get_ip_ver(decoded) =3D=3D LIBETH_RX_PT_OUTER_I=
PV4;
> > +	if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S))=
))
> > +		goto checksum_none;
> > +
> > +	if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S))))
> > +		goto checksum_none;
> > +
> > +	ipv6 =3D libeth_rx_pt_get_ip_ver(decoded) =3D=3D LIBETH_RX_PT_OUTER_I=
PV6;
> > +	if (ipv6 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_IPV6EXADD_S))=
))
> > +		goto checksum_none;
> > +
> > +	/* check for L4 errors and handle packets that were not able to be
> > +	 * checksummed due to arrival speed
> > +	 */
> > +	if (rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_L4E_S))
> > +		goto checksum_none;
> > +
> > +	/* check for outer UDP checksum error in tunneled packets */
> > +	if ((rx_status1 & BIT(ICE_RX_FLEX_DESC_STATUS1_NAT_S)) &&
> > +	    (rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_S)))
> > +		goto checksum_none;
> > +
> > +	/* If there is an outer header present that might contain a checksum
> > +	 * we need to bump the checksum level by 1 to reflect the fact that
> > +	 * we are indicating we validated the inner checksum.
> > +	 */
> > +	if (decoded.tunnel_type >=3D LIBETH_RX_PT_TUNNEL_IP_GRENAT)
> > +		*cksum_meta =3D 1;
> > +
> > +	*ip_summed =3D CHECKSUM_UNNECESSARY;
> > +	return 0;
> > +
> > +checksum_none:
> > +	*ip_summed =3D CHECKSUM_NONE;
> > +	*cksum_meta =3D 0;
> > +
> > +	return 0;
> > +}
> > +
> >  /**
> >   * ice_xdp_rx_vlan_tag - VLAN tag XDP hint handler
> >   * @ctx: XDP buff pointer
> > @@ -584,4 +665,5 @@ const struct xdp_metadata_ops ice_xdp_md_ops =3D {
> >  	.xmo_rx_timestamp		=3D ice_xdp_rx_hw_ts,
> >  	.xmo_rx_hash			=3D ice_xdp_rx_hash,
> >  	.xmo_rx_vlan_tag		=3D ice_xdp_rx_vlan_tag,
> > +	.xmo_rx_checksum		=3D ice_xdp_rx_checksum,
> >  };
> >=20
> > --=20
> > 2.51.0
> >=20
> >=20

--qM5OlCJeilOSMSrU
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaNElrAAKCRA6cBh0uS2t
rFcoAP9aT3PFRGa6yS1AxMmdlGIGO/DoAgJ7vQ4PFQYAk4xNDQEAtBXT+YT8A6UI
p8pZCyMVt0y6JOY5aiUWR5eJIMOO9Ak=
=bSu6
-----END PGP SIGNATURE-----

--qM5OlCJeilOSMSrU--
