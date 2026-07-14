Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2PG/Ki5tVmpa5QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 19:09:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 957C6757377
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 19:09:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=bTk1HwH5;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FBCC81156;
	Tue, 14 Jul 2026 17:08:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X_HeewTtsgaH; Tue, 14 Jul 2026 17:08:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D305081142
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784048938;
	bh=Kh2P97NR23r0bPnBVfJUq5G6C7YiA7uuewthu/bIN7I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bTk1HwH5lJnQvK4MZADfCCPGWbmr44iw655XGruBJddHDfB9LujdXjnaby5k1I24u
	 09WiS+C4vgsC1o/+fkByBICdvs1LZZ56Due1muB3DP4Fznj8dUZuWYIjk0QctJk+3Y
	 dXWSSmaaMmpITl/JkkHEkibZwX5e37VWvxA4TFYkjPX8MCVCa27lPTJfmX7kP302GJ
	 vC1X4S7wLJ5MeW2+ot2vqvRgRXTwMb1atsMAg/oP5Fzb9zGkCyXoX7l5U18YzoBfv4
	 dH+RIv/sVzA2zO561Tkr69xGf1ydmYDJ4rxHFSUWGvH5D0L9bso0d8TjGuGMzdTUu2
	 rxz/4JjQ2P9fg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D305081142;
	Tue, 14 Jul 2026 17:08:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 679F4499
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 17:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4DD9240945
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 17:08:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9rYLU5mSdj9P for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2026 17:08:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=lorenzo@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4EEEF4093B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EEEF4093B
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4EEEF4093B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 17:08:56 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id AD353601ED;
 Tue, 14 Jul 2026 17:08:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB86C1F000E9;
 Tue, 14 Jul 2026 17:08:53 +0000 (UTC)
Date: Tue, 14 Jul 2026 19:08:51 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Stanislav Fomichev <sdf.kernel@gmail.com>
Cc: Vladimir Vdovin <deliran@verdict.gg>,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
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
 Jakub Sitnicki <jakub@cloudflare.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <alZtI782RGKb8y4Y@lore-desk>
References: <20260708203410.45121-1-deliran@verdict.gg>
 <20260708203410.45121-2-deliran@verdict.gg>
 <alE8oBxkrak8n602@devvm7509.cco0.facebook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="KHFfhBMWGk3EjgnD"
Content-Disposition: inline
In-Reply-To: <alE8oBxkrak8n602@devvm7509.cco0.facebook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1784048934;
 bh=Kh2P97NR23r0bPnBVfJUq5G6C7YiA7uuewthu/bIN7I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=byVwXbtL6pok60WoSXAQqDT9TWgMfVeTqOGTrFMFwA6AltQP5sZCa7aNR3xUn08rn
 98GWpxt2dYNmGN3CJfXbCsFPoQPyYPMQI3kXe6SG80ABed69gGNkY5Rp2sd/Lt2Awv
 p705lkbKrb86dy2CiTMLuTug1WxXpWM//OVfutelgu9l8QdbINaOd00urKNlK09LaY
 WVTNVNF88fHrRfCN7D+T5MpHamui9ymXS5/O9MsHoSNXn0GiIT+fAuFqoG9QVKh6l/
 OPEf8UexSOkk1UttwLnKuzJutIP/3N35XinvooYC6gdBZqJYcBqsUWKs419va0ZZgA
 RZQu0vRoP673g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=byVwXbtL
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 1/6] netlink: specs: Add
 XDP RX checksum capability to XDP metadata specs
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.59 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sdf.kernel@gmail.com,m:deliran@verdict.gg,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:sdfkernel@gmail.com,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_SENDER(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[verdict.gg,gmail.com,kernel.org,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,cloudflare.com,vger.kernel.org,lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lore-desk:mid,osuosl.org:from_smtp,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 957C6757377

--KHFfhBMWGk3EjgnD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 07/08, Vladimir Vdovin wrote:
> > From: Lorenzo Bianconi <lorenzo@kernel.org>
> >=20
> > Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> > checksum will be use by devices capable of exposing receive checksum
> > result via bpf_xdp_metadata_rx_checksum().
> > Moreover, introduce xmo_rx_checksum netdev callback in order to allow
> > the eBPF program bound to the device to retrieve the RX checksum result
> > computed by the hw NIC and reported via DMA descriptors.
> >=20
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > Signed-off-by: Vladimir Vdovin <deliran@verdict.gg>
> > ---
> >  Documentation/netlink/specs/netdev.yaml |  5 ++++
> >  include/net/xdp.h                       | 18 ++++++++++++++
> >  include/uapi/linux/netdev.h             |  3 +++
> >  net/core/xdp.c                          | 32 +++++++++++++++++++++++++
> >  tools/include/uapi/linux/netdev.h       |  3 +++
> >  5 files changed, 61 insertions(+)
> >=20
> > diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/ne=
tlink/specs/netdev.yaml
> > index 5f143da7458c..6d0d90d3a614 100644
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
> > index aa742f413c35..e255ff786131 100644
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
> > @@ -643,12 +647,26 @@ enum xdp_rss_hash_type {
> >  	XDP_RSS_TYPE_L4_IPV6_SCTP_EX =3D XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_=
L3_DYNHDR,
> >  };
>=20
> [..]
> =20
> > +/* Please note the driver is required to invalidate the checksum if th=
e NIC
> > + * reports CHECKSUM_UNNECESSARY or CHECKSUM_COMPLETE and the eBPF prog=
ram
> > + * modifies the packet since it can change some fields validated by the
> > + * checksum.
> > + */
>=20
> Sorry, a bit confused about this part. IIUC this is in response to this
> discussion https://lore.kernel.org/bpf/aaLYfWnuuf_ne72u@lore-desk/ ?
>=20
> Looking at a few drivers:
> - bnxt (bnxt_rx_pkt) does UNNECESSARY - ok
> - mlx5 (mlx5e_handle_csum) does UNNECESSARY and skips COMPLETE if there is
>   bpf prog attached
> - fbnic (fbnic_rx_csum) - can do COMPLETE even with xdp attached?
> - gve (gve_rx) - can do COMPLETE even with xdp attached?
>=20
> So none of the drivers invalidate anything (and nether the bpf machinery)=
, some
> choose to (correctly?) not report COMPLETE when there is XDP. So was the
> discussion about documenting this and giving some guidance? This probably
> belongs to that `DOC: skb checksums` section of include/linux/skbuff.h?

Hi Stanislav,

re-reading the previous upstream discussion, I guess we should just documen=
t the
expected driver behaviour (invalidate the cksum for both COMPLETE and
UNNECESSARY cases when the XDP program running on the NIC returns XDP_PASS)=
 and
add a given kselftest for it. Agree?

>=20
> Also, can you add your new rx_checksum to
> Documentation/networking/xdp-rx-metadata.rst's list of supported kfuncs?

ack, I will do it in the next iteration.

Regards,
Lorenzo

--KHFfhBMWGk3EjgnD
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCalZtIwAKCRA6cBh0uS2t
rGL6AQCi2BM+G5ULVwlhiTQ9mResmshhs2Y13j4jDPNLyIsVpAEAnHqdZsYDNeis
roaeeQ5EZov1q2vIZr/DExysvRJVBAg=
=iMpE
-----END PGP SIGNATURE-----

--KHFfhBMWGk3EjgnD--
