Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YALMHGSKnGlWJQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 18:12:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A089B17A75B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 18:12:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92F21608FA;
	Mon, 23 Feb 2026 17:12:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7jLeKtDP2uW4; Mon, 23 Feb 2026 17:12:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05093608F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771866721;
	bh=tMyq+kEdthJtQjrAOpGOrjrHuIsktsNGVi8vZvT1snQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QCdvE9ujvu3belcGxLks9BW0FFrfdo7S2kONbIN4+f2EUFxMMHvrXlkgsdauSr2Dw
	 gMo6RX1hu88/6psBTQqSOccY8SP2RnbtIzS5fqkFPpA8LYfgMjCwhn466I+b/dk1G1
	 r+SPOnWE7o4zXc4t1EZQm6Mj677c6+3lisevmpYh18u59HKxtu77ehx79CZTP+PGFN
	 l5BKB61E8Krndrrru/L7p/2NmY9OqxKy4yw7qRsNeVmE4cpKePaaRy61bl0Md6lvN+
	 tkXDkSawXhpCb51vo2oBwGKxnhhEiG7dqzM8O4jg7Uo4U6MNQqbQtcN1PfuCrnNDzi
	 kfSHq5jPX1g/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05093608F0;
	Mon, 23 Feb 2026 17:12:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C5FE237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8DD8B400A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:11:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XFTa0fuv_JKb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 17:11:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=lorenzo@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D29B140072
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D29B140072
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D29B140072
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:11:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3CEDD6013F;
 Mon, 23 Feb 2026 17:11:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 709F9C116C6;
 Mon, 23 Feb 2026 17:11:56 +0000 (UTC)
Date: Mon, 23 Feb 2026 18:11:54 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Donald Hunter <donald.hunter@gmail.com>,
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
Message-ID: <aZyKWoxnywXKWth9@lore-desk>
References: <20260217-bpf-xdp-meta-rxcksum-v3-0-30024c50ba71@kernel.org>
 <20260217-bpf-xdp-meta-rxcksum-v3-1-30024c50ba71@kernel.org>
 <20260218174742.62a4074f@kernel.org> <aZbuWBnmh_SQJyVf@lore-desk>
 <20260219091344.1d8517f3@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="lh4l9TWd5fblWGcQ"
Content-Disposition: inline
In-Reply-To: <20260219091344.1d8517f3@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771866716;
 bh=yjmlAKXLz9VGGwKtdqReHY7E2dURU/svgnzBRJY8ND0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rNqVJA9aXljg/05FnhqGrVfPGaGndVN//YG8WZxBi8WmGQxJnQULX3r4n2ksAZk5t
 uva9rbjs52C9aMeXl3oWjrIiOTHSQ7ZgQbVvhaimr6KGOTtB1/U2No+HrPcq9ucTlu
 2SqeCSo4N4y9c7THlT0QKsFhw4KaT+0tr0ZyNNdsCQM6tSCRCPB96ZM17B4bMesqHw
 lOL327QqPw2kt6UupK1wALVSug+DySLfoDfVktoUMzi7LDdqFWv2qs8ANDVXGgn8HW
 wSB50W3Lg3zh2sPs9s2FrI6I840BMu+jFpEqnxr343X1Ot5MRVg0OOEO5amK/9WBdx
 sVNC4cMmLy18A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rNqVJA9a
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 1/5] netlink: specs: Add
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,davemloft.net,google.com,redhat.com,kernel.org,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,cloudflare.com,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:donald.hunter@gmail.com,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A089B17A75B
X-Rspamd-Action: no action


--lh4l9TWd5fblWGcQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Thu, 19 Feb 2026 12:04:56 +0100 Lorenzo Bianconi wrote:
> > > On Tue, 17 Feb 2026 09:33:56 +0100 Lorenzo Bianconi wrote: =20
> > > > + * In case of success, ``ip_summed`` is set to the RX checksum res=
ult. Possible
> > > > + * values are:
> > > > + * ``XDP_CHECKSUM_NONE``
> > > > + * ``XDP_CHECKSUM_UNNECESSARY``
> > > > + * ``XDP_CHECKSUM_COMPLETE``
> > > > + *
> > > > + * In case of success, ``cksum_meta`` contains the hw computed che=
cksum value
> > > > + * for ``XDP_CHECKSUM_COMPLETE`` or the ``csum_level`` for
> > > > + * ``XDP_CHECKSUM_UNNECESSARY``. It is set to 0 for ``XDP_CHECKSUM=
_NONE`` =20
> > >=20
> > > It's fairly common for NICs to report both csum complete and
> > > unnecessary. Which one should the driver return in that case? =20
> >=20
> > Do you mean what is value for cksum_meta if we do not report csum_level=
 for
> > XDP_CHECKSUM_UNNECESSARY/CHECKSUM_UNNECESSARY use-case? (as suggested by
> > Stanislav).
>=20
> More fundamentally whether the API is right.
>=20
> > My original idea is:
> > - if the hw reports CHECKSUM_COMPLETE:
> >   - ip_summed =3D XDP_CHECKSUM_COMPLETE
> >   - cksum_meta contains the checksum computed by the hw
> > - if the hw reports CHECKSUM_UNNECESSARY
> >   - ip_summed =3D XDP_CHECKSUM_UNNECESSARY
> >   - cksum_meta =3D csum_level <-- Stanislav suggests to drop this one
> > - if the hw reports CHECKSUM_NONE
> >   - ip_summed =3D XDP_CHECKSUM_NONE
> >   - cksum_meta =3D 0
>=20
> Off the top of my head drivers prefer reporting UNNECESSARY when they
> have both, and reserve COMPLETE for cases where L4 could not be found
> or is incorrect. Why don't we report both? We're using 3 args, we still
> have 3 to go. We could turn ip_summed into a bitmap and have explicit
> output args for both level and csum complete value?

Ack, thx for the explanation. Just for sake of understanding, is there
any NIC capable of reporting both csum_value and csum for the same packet
in the DMA descriptor? Or is this change needed to be future-proof?

>=20
> One more thing I'd like us to at least have a plan for at this stage
> is how to deal with COMPLETE + modified packet + XDP_PASS.
> Right now some drivers discard COMPLETE when XDP is attached since
> they can't be sure if XDP modifies the packet. Other drivers don't
> and we end up with bad csum splat. Do we have a recommendation on
> the correct behavior? If not - should we have a kfunc to adjust /
> discard csum complete explicitly?

At the moment there is no way to store the csum value we got running
bpf_xdp_metadata_rx_checksum() in order to be consumed during
xdp_buff/xdp_frame to skb conversion (this info can just be consumed in the
ebpf program bound to the NIC) but I guess the issue you pointed out can be
solved in the verifier during program load time. What do you think?

Regards,
Lorenzo


--lh4l9TWd5fblWGcQ
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaZyKWgAKCRA6cBh0uS2t
rHNBAP9ouJdti/YCdFjO7itL0UdmYksYWGbYroEEhW17p936FAEAlB7ZtUPKoY/y
NW9uhOZQbwVMVAX/rQD+HOzSllyTogw=
=F4hR
-----END PGP SIGNATURE-----

--lh4l9TWd5fblWGcQ--
