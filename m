Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFXwI6P/jmmOGwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 11:40:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EE41352CD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 11:40:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E5FA60D6F;
	Fri, 13 Feb 2026 10:40:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CiHRhzAwpX-k; Fri, 13 Feb 2026 10:40:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFF0B60BF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770979233;
	bh=SGFtY0YBg6EtwaWHrtwhus4hVNvdQN9nVG3iVlJcN0o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9C6vQbiFymTHLZHNsJDGnMQc/t3/T9Of9njMfbQxv/5irgYQ3AFobS92w5gxC5B+D
	 0VSkqf3SFsRS8wcTfzKPk1+5XlAkVCyaFM5bwcXioEkUrI3UFvtVlHLjLgLUGF8b9/
	 ruvKU95C5AGOSZ6hQYFJ8YFnD9YG96/VHnvQFD5yQH0fceYgVRvdnbVCOtmyPreWCn
	 IP1hswA3kHxD0lpo57efGPL0zDUxOYSsW8ZUd+TTb/x3tS4jit/LEA33xd/Ic/1hOf
	 2BXZnNFMbrim3oh1kdoqFPrKXJ/iHcpZaD7YY0QixKxtVqCT9W5RjHpyMw2C5PIhzB
	 tczy+geF3H5wQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFF0B60BF2;
	Fri, 13 Feb 2026 10:40:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 85B93EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 10:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A86C40B01
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 10:40:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NMDiBIEM3Yyo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 10:40:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=lorenzo@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A689B40208
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A689B40208
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A689B40208
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 10:40:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B7E2D43D77;
 Fri, 13 Feb 2026 10:40:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15CD8C116C6;
 Fri, 13 Feb 2026 10:40:29 +0000 (UTC)
Date: Fri, 13 Feb 2026 11:40:27 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Stanislav Fomichev <stfomichev@gmail.com>
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
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org
Message-ID: <aY7_m0CEjL9zTQ45@lore-desk>
References: <20260210-bpf-xdp-meta-rxcksum-v1-0-e5d55caa0541@kernel.org>
 <20260210-bpf-xdp-meta-rxcksum-v1-1-e5d55caa0541@kernel.org>
 <aY60QrE6DpXVecze@mini-arch>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="qwJIGiRKX8fs1N5o"
Content-Disposition: inline
In-Reply-To: <aY60QrE6DpXVecze@mini-arch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770979229;
 bh=SC2ovmnTmN31BJMgWSDQstBBBIerODPENfDec9d9YDM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mAdbZlLlE2sYlveU4i9kF08qSHcQUHP3CpPs4Zj5+WqKzalKAeEPuvX3K6k4peRql
 gMK+S09NxnEhq0iJwR0aCKlws6UHTq3w2hQIQ84G2TlbZpnYApfNxmGSSMCa0CNrBs
 2S0ZMe2kAWouyXlIlaffTcNyEdDn7SzDB89hFurup7S6g/iBz0nuX0VImNEJtXP0Mu
 TqpfuXbE+xaDpMelpayQ7cAy4ED9vDGY53FTrfuHKvlFRl+MBlZB4jBii+bv/KMlmf
 2RSUbDfzvtovAQ8+N0BuOxsMz+P/ZEDFUGYQun0kN+scYNscoHdeboWsYY1hPMBzN3
 yT5cvSKD0p3VA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mAdbZlLl
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/5] netlink: specs: Add XDP
 RX checksum capability to XDP metadata specs
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[31];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stfomichev@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,cloudflare.com,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 17EE41352CD
X-Rspamd-Action: no action


--qwJIGiRKX8fs1N5o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Feb 12, Stanislav Fomichev wrote:
> On 02/10, Lorenzo Bianconi wrote:
> > Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> > checksum will be use by devices capable of exposing receive checksum
> > result via bpf_xdp_metadata_rx_checksum().
> > Moreover, introduce xmo_rx_checksum netdev callback in order allow the
> > eBPF program bounded to the device to retrieve the RX checksum result
> > computed by the hw NIC.
> >=20
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >  Documentation/netlink/specs/netdev.yaml |  5 +++++
> >  include/net/xdp.h                       | 14 ++++++++++++++
> >  include/uapi/linux/netdev.h             |  3 +++
> >  net/core/xdp.c                          | 29 +++++++++++++++++++++++++=
++++
> >  tools/include/uapi/linux/netdev.h       |  3 +++
> >  5 files changed, 54 insertions(+)
> >=20
> > diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/ne=
tlink/specs/netdev.yaml
> > index 596c306ce52b8303b20680ff0cd34d4fd9db0e48..58eda634668a07860447a65=
d9fc2284839af6244 100644
> > --- a/Documentation/netlink/specs/netdev.yaml
> > +++ b/Documentation/netlink/specs/netdev.yaml
> > @@ -61,6 +61,11 @@ definitions:
> >          doc: |
> >            Device is capable of exposing receive packet VLAN tag via
> >            bpf_xdp_metadata_rx_vlan_tag().
> > +      -
> > +        name: checksum
> > +        doc: |
> > +          Device is capable of exposing receive checksum result via
> > +          bpf_xdp_metadata_rx_checksum().
> >    -
> >      type: flags
> >      name: xsk-flags
> > diff --git a/include/net/xdp.h b/include/net/xdp.h
> > index aa742f413c358575396530879af4570dc3fc18de..9ab9ac10ae2074b70618a9d=
4f32544d8b9a30b63 100644
> > --- a/include/net/xdp.h
> > +++ b/include/net/xdp.h
> > @@ -586,6 +586,10 @@ void xdp_attachment_setup(struct xdp_attachment_in=
fo *info,
> >  			   NETDEV_XDP_RX_METADATA_VLAN_TAG, \
> >  			   bpf_xdp_metadata_rx_vlan_tag, \
> >  			   xmo_rx_vlan_tag) \
> > +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CHECKSUM, \
> > +			   NETDEV_XDP_RX_METADATA_CHECKSUM, \
> > +			   bpf_xdp_metadata_rx_checksum, \
> > +			   xmo_rx_checksum)
> > =20
> >  enum xdp_rx_metadata {
> >  #define XDP_METADATA_KFUNC(name, _, __, ___) name,
> > @@ -643,12 +647,22 @@ enum xdp_rss_hash_type {
> >  	XDP_RSS_TYPE_L4_IPV6_SCTP_EX =3D XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_=
L3_DYNHDR,
> >  };
> > =20
> > +enum xdp_checksum {
> > +	XDP_CHECKSUM_NONE		=3D CHECKSUM_NONE,
> > +	XDP_CHECKSUM_UNNECESSARY	=3D CHECKSUM_UNNECESSARY,
> > +	XDP_CHECKSUM_COMPLETE		=3D CHECKSUM_COMPLETE,
> > +	XDP_CHECKSUM_PARTIAL		=3D CHECKSUM_PARTIAL,
> > +};
> > +
> >  struct xdp_metadata_ops {
> >  	int	(*xmo_rx_timestamp)(const struct xdp_md *ctx, u64 *timestamp);
> >  	int	(*xmo_rx_hash)(const struct xdp_md *ctx, u32 *hash,
> >  			       enum xdp_rss_hash_type *rss_type);
> >  	int	(*xmo_rx_vlan_tag)(const struct xdp_md *ctx, __be16 *vlan_proto,
> >  				   u16 *vlan_tci);
> > +	int	(*xmo_rx_checksum)(const struct xdp_md *ctx,
> > +				   enum xdp_checksum *ip_summed,
> > +				   u32 *cksum_meta);
> >  };
> > =20
> >  #ifdef CONFIG_NET
> > diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
> > index e0b579a1df4f2126acec6c44c299e97bbbefe640..d20da430cfd57bc26b5ea2f=
406c27b48d8a81693 100644
> > --- a/include/uapi/linux/netdev.h
> > +++ b/include/uapi/linux/netdev.h
> > @@ -47,11 +47,14 @@ enum netdev_xdp_act {
> >   *   hash via bpf_xdp_metadata_rx_hash().
> >   * @NETDEV_XDP_RX_METADATA_VLAN_TAG: Device is capable of exposing rec=
eive
> >   *   packet VLAN tag via bpf_xdp_metadata_rx_vlan_tag().
> > + * @NETDEV_XDP_RX_METADATA_CHECKSUM: Device is capable of exposing rec=
eive
> > + *   checksum result via bpf_xdp_metadata_rx_checksum().
> >   */
> >  enum netdev_xdp_rx_metadata {
> >  	NETDEV_XDP_RX_METADATA_TIMESTAMP =3D 1,
> >  	NETDEV_XDP_RX_METADATA_HASH =3D 2,
> >  	NETDEV_XDP_RX_METADATA_VLAN_TAG =3D 4,
> > +	NETDEV_XDP_RX_METADATA_CHECKSUM =3D 8,
> >  };
> > =20
> >  /**
> > diff --git a/net/core/xdp.c b/net/core/xdp.c
> > index fee6d080ee85fc2d278bfdddfd1365633058ec06..e51346ad3031f28d11c11f8=
205da6cd954da82de 100644
> > --- a/net/core/xdp.c
> > +++ b/net/core/xdp.c
> > @@ -961,6 +961,35 @@ __bpf_kfunc int bpf_xdp_metadata_rx_vlan_tag(const=
 struct xdp_md *ctx,
> >  	return -EOPNOTSUPP;
> >  }
> > =20
> > +/**
> > + * bpf_xdp_metadata_rx_checksum - Read XDP frame RX checksum.
> > + * @ctx: XDP context pointer.
> > + * @ip_summed: Return value pointer indicating checksum result.
> > + * @cksum_meta: Return value pointer indicating checksum result metada=
ta.
> > + *
> > + * In case of success, ``ip_summed`` is set to the RX checksum result.=
 Possible
> > + * values are:
> > + * ``XDP_CHECKSUM_NONE``
> > + * ``XDP_CHECKSUM_UNNECESSARY``
> > + * ``XDP_CHECKSUM_COMPLETE``
> > + * ``XDP_CHECKSUM_PARTIAL``
> > + *
> > + * In case of success, ``cksum_meta`` contains the hw computed checksu=
m value
> > + * for ``XDP_CHECKSUM_COMPLETE`` or the ``csum_level`` for
> > + * ``XDP_CHECKSUM_UNNECESSARY``. It is set to 0 for ``XDP_CHECKSUM_NON=
E`` and
> > + * ``XDP_CHECKSUM_PARTIAL``.
> > + *
> > + * Return:
> > + * * Returns 0 on success or ``-errno`` on error.
> > + * * ``-EOPNOTSUPP`` : means device driver does not implement kfunc
> > + * * ``-ENODATA``    : means no RX-timestamp available for this frame
> > + */
> > +__bpf_kfunc int bpf_xdp_metadata_rx_checksum(const struct xdp_md *ctx,
> > +					     u8 *ip_summed, u32 *cksum_meta)
> > +{
>=20
> Any reason not to do enum xdp_checksum *ip_summed here as well?

ack, I will fix it in v2.

Regards,
Lorenzo


--qwJIGiRKX8fs1N5o
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaY7/mwAKCRA6cBh0uS2t
rPcoAQCb7m6pbv19sIu76bYil26EtBbnmmstPmm4RPxwfLKneAEA63LE9ex6Lo4S
bBOpGzrQF7VzBTabcYLSnAVzI5jkiQI=
=YHsg
-----END PGP SIGNATURE-----

--qwJIGiRKX8fs1N5o--
