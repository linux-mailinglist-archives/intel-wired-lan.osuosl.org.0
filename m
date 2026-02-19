Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGDeGWPulmngrAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 12:05:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C6A15E26A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 12:05:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D457881140;
	Thu, 19 Feb 2026 11:05:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tD49QPDPLB_x; Thu, 19 Feb 2026 11:05:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2A4C81181
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771499103;
	bh=PeArRwqk26+SI+xspD8PG3ePuZ4SENBsYimjrDRR2fM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NQJFtyFJKnNE3OeF5pf09qhJpHrnckFDlwtlIUD1PU7Rg3Ys2YRRm/cbLeh2sHC4H
	 RCg9fJ5j1dn39zjcIWHzib2cgeNdlN4JkrTqsemquAoNfelAYxF4DLUtU8IQCh0J80
	 ydvFeV6nXKWvecZkZXNQptCdw7WsekNbUOidCItPoZYi14dI+PrSJz2Zz0L8vK8k5O
	 Gr28jm+ChG3bytR+gedMrMZv49Vu/29q2/RJTKLiLsgFnZMy+noBAvC77o+5LwWn+W
	 krFdLbmthZFM7QFfOBVGs9JFdTMqhKx1Wkg2nCDNuv1RuHwqataocUmnGkgnAO4rYf
	 xqNFia27V8yoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2A4C81181;
	Thu, 19 Feb 2026 11:05:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EABA71CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 11:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0B1B60C0F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 11:05:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MitJbyOkBNkm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Feb 2026 11:05:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 194E160C1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 194E160C1E
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 194E160C1E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 11:04:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4F59244096;
 Thu, 19 Feb 2026 11:04:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA6CCC4CEF7;
 Thu, 19 Feb 2026 11:04:58 +0000 (UTC)
Date: Thu, 19 Feb 2026 12:04:56 +0100
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
Message-ID: <aZbuWBnmh_SQJyVf@lore-desk>
References: <20260217-bpf-xdp-meta-rxcksum-v3-0-30024c50ba71@kernel.org>
 <20260217-bpf-xdp-meta-rxcksum-v3-1-30024c50ba71@kernel.org>
 <20260218174742.62a4074f@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="7EEdEqOMZc2AsItl"
Content-Disposition: inline
In-Reply-To: <20260218174742.62a4074f@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771499099;
 bh=dypEWTVlE89/7xWq0IMW0YOdKTTzDMNo3Lyu5x3skpc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gAtAjWUvVDmTRToDssVu6nnZikmwl3JN7acRo2iLd0lEvmhvgfXflHnTynALA9mrq
 nTHeuHwRaRZY615Y8GKhJcQeL4r4a64YN20cDYuJFOE46yhNoSyO9SQ4ld+5JYiR3M
 N8RLdY8Ha/7M69wnFNBNtL95Y34OFoZi03vsTgYT97t5cJvJ20Ys+HF67rNOuxooQR
 8jN+mOTIvtulLGPfmGWSn/cmg79C1iRwlPkT8P6G+XYIVviS8c6h4pa1rFzMlJIiIc
 070DFDc3uDPap4Rjh1pjsjApp/txIT6RjA3087C0vptI1egOPum1zhC/Sc8rsfhVI2
 HAnIbLUnh/1Sg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gAtAjWUv
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,davemloft.net,google.com,redhat.com,kernel.org,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,cloudflare.com,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:donald.hunter@gmail.com,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
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
X-Rspamd-Queue-Id: 89C6A15E26A
X-Rspamd-Action: no action


--7EEdEqOMZc2AsItl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Tue, 17 Feb 2026 09:33:56 +0100 Lorenzo Bianconi wrote:
> > + * In case of success, ``ip_summed`` is set to the RX checksum result.=
 Possible
> > + * values are:
> > + * ``XDP_CHECKSUM_NONE``
> > + * ``XDP_CHECKSUM_UNNECESSARY``
> > + * ``XDP_CHECKSUM_COMPLETE``
> > + *
> > + * In case of success, ``cksum_meta`` contains the hw computed checksu=
m value
> > + * for ``XDP_CHECKSUM_COMPLETE`` or the ``csum_level`` for
> > + * ``XDP_CHECKSUM_UNNECESSARY``. It is set to 0 for ``XDP_CHECKSUM_NON=
E``
>=20
> It's fairly common for NICs to report both csum complete and
> unnecessary. Which one should the driver return in that case?

Do you mean what is value for cksum_meta if we do not report csum_level for
XDP_CHECKSUM_UNNECESSARY/CHECKSUM_UNNECESSARY use-case? (as suggested by
Stanislav).

My original idea is:
- if the hw reports CHECKSUM_COMPLETE:
  - ip_summed =3D XDP_CHECKSUM_COMPLETE
  - cksum_meta contains the checksum computed by the hw
- if the hw reports CHECKSUM_UNNECESSARY
  - ip_summed =3D XDP_CHECKSUM_UNNECESSARY
  - cksum_meta =3D csum_level <-- Stanislav suggests to drop this one
- if the hw reports CHECKSUM_NONE
  - ip_summed =3D XDP_CHECKSUM_NONE
  - cksum_meta =3D 0

Regards,
Lorenzo

> What if the user prefers the other one?..

--7EEdEqOMZc2AsItl
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaZbuWAAKCRA6cBh0uS2t
rK3sAP0Y8MEfTYmbOSyx5stUp9dR847DtJFisjm3SerE8v89VgEAxRUCoRfB45R8
ogSiJLBtXUXr8+9VJlQ99d28Dja/LgY=
=gmGu
-----END PGP SIGNATURE-----

--7EEdEqOMZc2AsItl--
