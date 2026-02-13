Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIy3IO5Aj2nqOQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 16:19:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F61A137737
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 16:19:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6B3B41CBB;
	Fri, 13 Feb 2026 15:19:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wHygtDssWFNw; Fri, 13 Feb 2026 15:19:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AEA641D2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770995947;
	bh=/LNKPP/noVL2x639mYZIbbv4oooOLrxUd5SsoTpgRSY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=20sfiB8cpQBLzlxzCYRzyUeECG1ZU/GVATWadFPDV/T6Onis6yNRE8hELgFQM5qNx
	 NKtC/mD3vEof+8MIPDx4CMG5Xiv9hSESwVMIRZQb43EzTDJujE4piNQx2l8JFL9RPg
	 dEbNFJQzii1VTt3z08w7q48TCWvXLwsu0yBZ+PImp33Q7rCuKNwWF9NecFYB+I++Ra
	 tjPrIPCdiVXBzXzwsVyz8M+C1CIS18r8fdLwAjdxs72lFMKgDo68LJqnJ/sUWuzjrh
	 VP8TpWST68/HUi7VNwtT93hHzBmUP+b/ecqNTleKnGiUPlEkzXP5Hgm+RX1CUOsZbJ
	 KBep2KNOBfZ/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AEA641D2C;
	Fri, 13 Feb 2026 15:19:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E9842EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:19:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE64D611FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gSIx7q1lbqbx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 15:19:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E1CC1607CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1CC1607CF
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E1CC1607CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:19:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 781B442A1F;
 Fri, 13 Feb 2026 15:19:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF7CDC116C6;
 Fri, 13 Feb 2026 15:19:03 +0000 (UTC)
Date: Fri, 13 Feb 2026 16:19:01 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Stanislav Fomichev <stfomichev@gmail.com>
Message-ID: <aY9A5QiTKuu7Kypp@lore-desk>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
 <aNYUqdaIJV1cvFCb@mini-arch>
 <e03d6d69-73ea-46dc-b632-149ef5831f85@kernel.org>
 <aNcZdfCivLR2slFw@mini-arch> <aYtqKfv0F0l2-hgy@lore-desk>
 <aY0zd4Esewxa-8hw@mini-arch> <aY4FB_Gf31V-VYiF@lore-desk>
 <aY6zxmRcBSt4ju86@mini-arch>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="9b/WtXUSgY2WwYsX"
Content-Disposition: inline
In-Reply-To: <aY6zxmRcBSt4ju86@mini-arch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770995944;
 bh=eiw7P98b9Y19G0mrHqahDozgDK96ClCh7LOvVh3Wd/4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MnCx3SDciUicyMSx7uOIbiKMefwb0JIgH3zrqfC6qFxFxnqqcBXWlN+DoROrCcjaP
 KfzTRgaMb5mWo9LnAMquz1SDZEiXyIDiQ7T/jGtyAIE0NZ1Z9XP5PSe8K49ZTrnvTN
 2E4xn3fG6heTFD9davXyPrRLiotB2fDEbaH1SRGzr0EnU9TiGiYOpAgGUz7RRPdrbq
 YXZM6QIjQzlNKlqXr8BwCzb29vx044mnJthpe+cwiiPTX6joUOPip6JluCU/Yuhm4j
 KrbFk/Oaga1oshLL8//hTJpbMjZOXyVC/yylilnEQk0pYzAbmbZejQS7ca0vf5X7cC
 EG7AvxYceljIQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MnCx3SDc
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next v2 1/5] netlink: specs:
 Add XDP RX checksum capability to XDP metadata specs
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
Cc: linux-kselftest@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Yonghong Song <yonghong.song@linux.dev>, Shuah Khan <shuah@kernel.org>,
 Jiri Olsa <jolsa@kernel.org>, Donald Hunter <donald.hunter@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, netdev@vger.kernel.org,
 Eduard Zingerman <eddyz87@gmail.com>, Simon Horman <horms@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>,
 "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew+netdev@lunn.ch>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:stfomichev@gmail.com,m:linux-kselftest@vger.kernel.org,m:ast@kernel.org,m:song@kernel.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:yonghong.song@linux.dev,m:shuah@kernel.org,m:jolsa@kernel.org,m:donald.hunter@gmail.com,m:daniel@iogearbox.net,m:aleksander.lobakin@intel.com,m:przemyslaw.kitszel@intel.com,m:john.fastabend@gmail.com,m:andrii@kernel.org,m:sdf@fomichev.me,m:kuba@kernel.org,m:pabeni@redhat.com,m:maciej.fijalkowski@intel.com,m:hawk@kernel.org,m:kpsingh@kernel.org,m:haoluo@google.com,m:netdev@vger.kernel.org,m:eddyz87@gmail.com,m:horms@kernel.org,m:bpf@vger.kernel.org,m:martin.lau@linux.dev,m:davem@davemloft.net,m:andrew+netdev@lunn.ch,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,google.com,intel.com,linux.dev,gmail.com,iogearbox.net,fomichev.me,lists.osuosl.org,redhat.com,davemloft.net,lunn.ch];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7F61A137737
X-Rspamd-Action: no action


--9b/WtXUSgY2WwYsX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Feb 12, Stanislav Fomichev wrote:
> On 02/12, Lorenzo Bianconi wrote:
> > > On 02/10, Lorenzo Bianconi wrote:
> > > > > On 09/26, Jesper Dangaard Brouer wrote:
> > > > > >=20
> > > > > >=20
> > > > > > On 26/09/2025 06.20, Stanislav Fomichev wrote:
> > > > > > > On 09/25, Lorenzo Bianconi wrote:
> > > > > > > > Introduce XDP RX checksum capability to XDP metadata specs.=
 XDP RX
> > > > > > > > checksum will be use by devices capable of exposing receive=
 checksum
> > > > > > > > result via bpf_xdp_metadata_rx_checksum().
> > > > > > > > Moreover, introduce xmo_rx_checksum netdev callback in orde=
r allow the
> > > > > > > > eBPF program bounded to the device to retrieve the RX check=
sum result
> > > > > > > > computed by the hw NIC.
> > > > > > > >=20
> > > > > > > > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > > > > > ---
> > > > > > > >   Documentation/netlink/specs/netdev.yaml |  5 +++++
> > > > > > > >   include/net/xdp.h                       | 14 ++++++++++++=
++
> > > > > > > >   net/core/xdp.c                          | 29 ++++++++++++=
+++++++++++++++++
> > > > > > > >   3 files changed, 48 insertions(+)
> > > > > > > >=20
> > > > > > > > diff --git a/Documentation/netlink/specs/netdev.yaml b/Docu=
mentation/netlink/specs/netdev.yaml
> > > > > > > > index e00d3fa1c152d7165e9485d6d383a2cc9cef7cfd..00699bf4a7f=
db67c6b9ee3548098b0c933fd39a4 100644
> > > > > > > > --- a/Documentation/netlink/specs/netdev.yaml
> > > > > > > > +++ b/Documentation/netlink/specs/netdev.yaml
> > > > > > > > @@ -61,6 +61,11 @@ definitions:
> > > > > > > >           doc: |
> > > > > > > >             Device is capable of exposing receive packet VL=
AN tag via
> > > > > > > >             bpf_xdp_metadata_rx_vlan_tag().
> > > > > > > > +      -
> > > > > > > > +        name: checksum
> > > > > > > > +        doc: |
> > > > > > > > +          Device is capable of exposing receive checksum r=
esult via
> > > > > > > > +          bpf_xdp_metadata_rx_checksum().
> > > > > > > >     -
> > > > > > > >       type: flags
> > > > > > > >       name: xsk-flags
> > > > > > > > diff --git a/include/net/xdp.h b/include/net/xdp.h
> > > > > > > > index aa742f413c358575396530879af4570dc3fc18de..9ab9ac10ae2=
074b70618a9d4f32544d8b9a30b63 100644
> > > > > > > > --- a/include/net/xdp.h
> > > > > > > > +++ b/include/net/xdp.h
> > > > > > > > @@ -586,6 +586,10 @@ void xdp_attachment_setup(struct xdp_a=
ttachment_info *info,
> > > > > > > >   			   NETDEV_XDP_RX_METADATA_VLAN_TAG, \
> > > > > > > >   			   bpf_xdp_metadata_rx_vlan_tag, \
> > > > > > > >   			   xmo_rx_vlan_tag) \
> > > > > > > > +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CHECKSUM, \
> > > > > > > > +			   NETDEV_XDP_RX_METADATA_CHECKSUM, \
> > > > > > > > +			   bpf_xdp_metadata_rx_checksum, \
> > > > > > > > +			   xmo_rx_checksum)
> > > > > > > >   enum xdp_rx_metadata {
> > > > > > > >   #define XDP_METADATA_KFUNC(name, _, __, ___) name,
> > > > > > > > @@ -643,12 +647,22 @@ enum xdp_rss_hash_type {
> > > > > > > >   	XDP_RSS_TYPE_L4_IPV6_SCTP_EX =3D XDP_RSS_TYPE_L4_IPV6_SC=
TP | XDP_RSS_L3_DYNHDR,
> > > > > > > >   };
> > > > > > > > +enum xdp_checksum {
> > > > > > > > +	XDP_CHECKSUM_NONE		=3D CHECKSUM_NONE,
> > > > > > > > +	XDP_CHECKSUM_UNNECESSARY	=3D CHECKSUM_UNNECESSARY,
> > > > > > > > +	XDP_CHECKSUM_COMPLETE		=3D CHECKSUM_COMPLETE,
> > > > > > > > +	XDP_CHECKSUM_PARTIAL		=3D CHECKSUM_PARTIAL,
> > > > > > > > +};
> > > > > > >=20
> > > > > > > Btw, might be worth mentioning, awhile ago we had settled on =
a smaller set of
> > > > > > > exposed types:
> > > > > > >=20
> > > > > > > https://lore.kernel.org/netdev/20230811161509.19722-13-larysa=
=2Ezaremba@intel.com/
> > > > > > >=20
> > > > > > > Maybe go through the previous postings and check if the argum=
ents are
> > > > > > > still relevant? (or explain why we want more checksum now)
> > > > > >=20
> > > > > > IHMO the linked proposal reduced the types too much.
> > > > >=20
> > > > > IIRC, PARTIAL was removed because it's mostly (or only) a TX feat=
ure?
> > > > > So no real need to expose it as an rx hint. And I think empty xdp=
_csum_status
> > > > > in that proposal might have indicated NONE?
> > > >=20
> > > > Sorry for the (very) late reply. According to [0] CHECKSUM_PARTIAL =
can be used
> > > > even on Rx side, right?
> > >=20
> > > So is this for virtio (which I don't think you need)? Or something el=
se?
> >=20
> > I forgot to mention before CHECKSUM_PARTIAL is used for the veth use-ca=
se
> > when the packet is coming from the networking stack.
>=20
> But what do you do with that partial state in BPF? I doubt you're
> calculating/verifying it? Can we treat/export it as NONE/UNNECESSARY for =
now?

actually I guess we can get rid of XDP_CHECKSUM_PARTIAL and threat it as
XDP_CHECKSUM_NONE for the veth case. I will fix it in v2.

Regards,
Lorenzo

--9b/WtXUSgY2WwYsX
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaY9A5QAKCRA6cBh0uS2t
rKh1AP91nCOFfR1O8ToCLIB00RY8q43IM5a8fg8TFjvQVtKNCwEAl1d1VGfd5rN+
jesX7vIacybDs4i1SG/WmD3CH/hWeAQ=
=yFYG
-----END PGP SIGNATURE-----

--9b/WtXUSgY2WwYsX--
