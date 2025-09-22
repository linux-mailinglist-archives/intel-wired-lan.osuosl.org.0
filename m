Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB4EB92164
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Sep 2025 17:56:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CB7840AB9;
	Mon, 22 Sep 2025 15:56:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oIJDoNbxcg5T; Mon, 22 Sep 2025 15:56:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DB2940ACF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758556586;
	bh=feUDgRpVes0Ekt4DP9ZVxVNq0Gj+kiErQCfqI+D4eyM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7o+8n/h2Qrr032JwcrA/sniGocdwkkkzGSJaSBaPE8wQBZsgLBAxe2Nt64WC4zeqW
	 jfNZHABwzhUEt66radHktPJJPv/LV14NZK2dKat5o8M5louQER+0mABREl+ZNpho5E
	 /g4jhucfxip2GrC+lbsd5NYfNgizqj13B9A4D4I9Vy7UTOl4N9ZCxtyQ4kX7QjE/tr
	 /aUyMqdy/oEQng9mONKcy31HNox2BEG03v+T5nmUnl0K3meDSNZTDaRxLSDhmKy6C4
	 /8QZuujEm6WaNqwyWeYlcjvP8VqUqBNPDgWW5cNmpPYARpQUH0XNwNduwR09vO10Jz
	 VodPqjN01Ijpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DB2940ACF;
	Mon, 22 Sep 2025 15:56:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B13C116C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C78C84653
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:56:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r0rURxnVxvfk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Sep 2025 15:56:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E5B738464E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5B738464E
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E5B738464E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:56:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 03A854069A;
 Mon, 22 Sep 2025 15:56:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55A9AC4CEF0;
 Mon, 22 Sep 2025 15:56:23 +0000 (UTC)
Date: Mon, 22 Sep 2025 17:56:21 +0200
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
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <aNFxpVGo7YdHKMMn@lore-desk>
References: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
 <20250920-xdp-meta-rxcksum-v1-2-35e76a8a84e7@kernel.org>
 <aNFupGy1QxlhRSUE@mini-arch>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="oLV4KCwzri5jB3PU"
Content-Disposition: inline
In-Reply-To: <aNFupGy1QxlhRSUE@mini-arch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758556583;
 bh=A6td5LYxhItzS+7GkGUIeiplez2Gyg59sgZwyjPm6Rs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U7F94CZGzy39yWMnpePBwU1gAZA6GtnNm5q+R2fJLT4HR32EAcFKOI5IJ2xzGPx8G
 ZlR+IorUm91M5N+ibx/KQfekktoMKN4Rz6K2FVBAKMAFbQcNQV6Dsb75Gfd96BUWg5
 eIlDggoK1y8rbZBKwwwdieyIQdnyz8spf5GVqiZgpg10zoVqkYGpWmanQWoIwojifh
 noOvNDu7DXpWScIj3NPn8L/lXRRtyeMBEynT8PC6xERBL+K813kxbijUkLkeWg1brJ
 7wMKAzsn/NSzP90e0Tts4xYJ5RxKUoZ8Bbh68hRndyEymRCvUAQvF2nfDTHHsA6L5p
 A4YorxVN+bKDg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=U7F94CZG
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next 2/6] net: xdp: Add
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


--oLV4KCwzri5jB3PU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 09/20, Lorenzo Bianconi wrote:
> > Introduce xmo_rx_checksum netdev callback in order allow the eBPF
> > program bounded to the device to retrieve the RX checksum result comput=
ed
> > by the hw NIC.
> >=20
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >  include/net/xdp.h |  6 ++++++
> >  net/core/xdp.c    | 29 +++++++++++++++++++++++++++++
> >  2 files changed, 35 insertions(+)
> >=20
> > diff --git a/include/net/xdp.h b/include/net/xdp.h
> > index 6fd294fa6841d59c3d7dc4475e09e731996566b0..481b39976ac8c8d4db2de39=
055c72ba8d0d511c3 100644
> > --- a/include/net/xdp.h
> > +++ b/include/net/xdp.h
> > @@ -581,6 +581,10 @@ void xdp_attachment_setup(struct xdp_attachment_in=
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
> > @@ -644,6 +648,8 @@ struct xdp_metadata_ops {
> >  			       enum xdp_rss_hash_type *rss_type);
> >  	int	(*xmo_rx_vlan_tag)(const struct xdp_md *ctx, __be16 *vlan_proto,
> >  				   u16 *vlan_tci);
> > +	int	(*xmo_rx_checksum)(const struct xdp_md *ctx, u8 *ip_summed,
> > +				   u32 *cksum_meta);
> >  };
> > =20
> >  #ifdef CONFIG_NET
> > diff --git a/net/core/xdp.c b/net/core/xdp.c
> > index 9100e160113a9a1e2cb88e7602e85c5f36a9f3b9..3edab2d5e5c7c2013b1ef98=
c949a83655eb94349 100644
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
> > + * ``CHECKSUM_NONE``
> > + * ``CHECKSUM_UNNECESSARY``
> > + * ``CHECKSUM_COMPLETE``
> > + * ``CHECKSUM_PARTIAL``
>=20
> What do you think about adding new UAPI enum here? Similar to
> xdp_rss_hash_type for the hash. The values can match the internal
> CHECKSUM_XXX ones with (BUILD_BUG_ONs to enforce the relationship).
> Will be a bit nicer api-wise to have an enum than an opaque u8.

ack, fine. I will fix it v1.

Regards,
Lorenzo


--oLV4KCwzri5jB3PU
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaNFxpQAKCRA6cBh0uS2t
rDlFAP9f4DjX1fOKxrEiOYqDgqgqHd37X+FW2Ruk7neFu2Lh3gEAvTvJwg8PnFeY
ayPyTpytuunY9VYrc/mA8PIfy/FidgU=
=lFKD
-----END PGP SIGNATURE-----

--oLV4KCwzri5jB3PU--
