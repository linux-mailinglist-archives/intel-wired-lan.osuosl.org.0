Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJzOHjhqi2k1UQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 18:26:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0476711DEA5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 18:26:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 950A74027F;
	Tue, 10 Feb 2026 17:26:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ijxycar-IV3N; Tue, 10 Feb 2026 17:26:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCB0A4024E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770744373;
	bh=M6SXb5IczZILKvt9qVo3/THUDjn6esbNCNc+i/3NT+A=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nI5panmyOB4DsUSQ4bwMwbx1wjnGfEU4k8cM39uTuFRh0Pjx8E2CMWTtkZZZwIUzp
	 M2HTlzjr+pF+NOrC+QWQARiEtKh5fbO4gdkRlhoBbKMVD/IebqjidYgd3sweFco0GQ
	 3+rz+lR3vt/ZAvVMCCYjKWRvgdeZmkG4fG1g8aabBowDLMqJQeEaC66QuYV95KHIw+
	 m8pDtcdYBIYKiGgI6pYDWr23GabQas7TFvje7n98zSfE62x+fhfF6QEwdZ65ZcPMSr
	 V6wjvSJQo9gahU8J2CHNmCu7n8R/Y/KH1qYCkD/wMeb2RQ1szbNks42rv3ZmhfIhZC
	 gANmQGnVW4DoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCB0A4024E;
	Tue, 10 Feb 2026 17:26:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 872C9F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:26:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74F3240892
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:26:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K36OhaWKQK8x for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 17:26:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com;
 envelope-from=lorenzo.bianconi@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A1D264068D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1D264068D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1D264068D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:26:08 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-304-O_q00b6HNv-oQwj73awmZQ-1; Tue, 10 Feb 2026 12:26:04 -0500
X-MC-Unique: O_q00b6HNv-oQwj73awmZQ-1
X-Mimecast-MFC-AGG-ID: O_q00b6HNv-oQwj73awmZQ_1770744363
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-4359e322f30so5035974f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 09:26:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770744363; x=1771349163;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=M6SXb5IczZILKvt9qVo3/THUDjn6esbNCNc+i/3NT+A=;
 b=TrhtHEDQe5xYsOuRcxayjwOm72EYm/lbPaigDCSPXF5YG1gtuqWTlm+DR574iT2avH
 Frn7fl6ki6mPGFif+FKdWv1cpghu9j6p6BTF4uBJ0ahgZ9r2+HS/NnrPkzyX22SWUmtd
 FOosMG+KavqbwBWEGbIYsNLtN/lKlZDNWkf/gZVMeB0cOGoGm+IgklJU+L3csBonYxtq
 cXB09+9gkYe3e8SczCJ/oJsRMvV8v30jg3tGGKCaf3kcrnIGCUzVE8mkbK7CPtce989B
 gpHLQevQDItFBi4LHvbSAhPG6wbUzeaOPcpck7mzF+mr/8yshFAaV1l6m9ad9GEQS2nm
 OZRg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUnIeSzyCIiaAeoI+adsDfId9+gHruIKoAEYN1Y11TUUTSOKzNoO2jnW5+tmcee1l6B8IEIln5ZLEjBZ4p1yE8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywgb1cQooZiKyWVwgryelNqjTjDhjHDOCMliPnLIWI5Qp5MHEOp
 0HXK52B+UUtik5CN/fXa4kyriW4Mbklw+iBjbd/9PAINURRKgE2FPXEmQwP+PoC4Ey5c5K6tZ9s
 +HeiQNnB1q0JNy1JaZ5vZM9oVLy2VSfYS7d6k/O6XVkxH6NwsQEYi97yHsetjhdPSXHcGBqs=
X-Gm-Gg: AZuq6aIzwwkFJgRONLdShjh8ySDC9pBHAnhaLHeProh4CMRA5RaK3/NIA2P3ZWzwokC
 jkGmxo8OT1KOgS5viRgqR7YY+OWpTnjWycz2clPLJWHC+ViqcURifqD42iDucLKwsaSyBqErH/X
 ZHsCGjMdYTTjhiQgcQ4H1CngekTA0SsF8LNDFGVjzCCTZibE8g1t/KVTFadjhwXUF/+IO10NPe+
 1JXjkWt7uqAL3f3YwsRkF1YydHWGEpnTV80H0GE031T7YQ0qy2kry7GlqqIA31Yr5Bvdfc3augv
 YlyLWget8P/YzRCboGB5PSWp0rCGA/eJlLEre/orO2Fp14CX61GJFLM+Q8TrsYXtF6+B0GcDqUJ
 578qpWQKwp/4YxhX9nYr5V1tDPq16jI9G7kCZWmTxZEECtaAAXBRBwuSattAsfBFb7yV/hA==
X-Received: by 2002:a05:6000:2287:b0:432:5d73:79a1 with SMTP id
 ffacd0b85a97d-4377a5a89c5mr4412126f8f.55.1770744363101; 
 Tue, 10 Feb 2026 09:26:03 -0800 (PST)
X-Received: by 2002:a05:6000:2287:b0:432:5d73:79a1 with SMTP id
 ffacd0b85a97d-4377a5a89c5mr4412089f8f.55.1770744362668; 
 Tue, 10 Feb 2026 09:26:02 -0800 (PST)
Received: from localhost (net-37-119-153-93.cust.vodafonedsl.it.
 [37.119.153.93]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-436296bd4a1sm35585372f8f.17.2026.02.10.09.26.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Feb 2026 09:26:01 -0800 (PST)
Date: Tue, 10 Feb 2026 18:26:01 +0100
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
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
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <aYtqKfv0F0l2-hgy@lore-desk>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
 <aNYUqdaIJV1cvFCb@mini-arch>
 <e03d6d69-73ea-46dc-b632-149ef5831f85@kernel.org>
 <aNcZdfCivLR2slFw@mini-arch>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="Kbaeu9Ugo55vjxdy"
Content-Disposition: inline
In-Reply-To: <aNcZdfCivLR2slFw@mini-arch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770744368;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=M6SXb5IczZILKvt9qVo3/THUDjn6esbNCNc+i/3NT+A=;
 b=TfoOVhbYOKxnTGmtCQiAg8ooCspFzbUhEiE4rUjOhWXjhUNTW3G2bt9EfFW/n1s/hm+Zah
 fGNtsTm1fviCnuiEZKIyH+d5udfTr8hdnPYDndw/3UfdpgFzHJJ5qLyLfnOOoEugTQWIWE
 /yTneVloyU0XLywXccGkgQfGysdu0fI=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1770744363; x=1771349163; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=M6SXb5IczZILKvt9qVo3/THUDjn6esbNCNc+i/3NT+A=;
 b=PoWCPyLXPFgxo3Va+K2fVfsfK3eYwsytXrUT0SJBXEPj/U59fFGVbfT7SoGUa3RlhF
 ympF3TH+zxV0YUVJBEYk3HKoc5hBQ/DvzPA6TE8rCvzy69SLgc5aF93CxYkts1W7tq4C
 U6UAUv8h+L0GWMBiC9l3plXcv0lfMQIJ7erdc3wjb1xMezLfDQuxGmudX3A0CI1M2SK1
 sQ1BCd0glmBLOesK4LdRzzm8PQxQe6stjYnW+FVEANlbdUHZdpbf6VXpgqiVkAuUrs5U
 Ij/cO21DnUm9J2xJMr+ApamWeMRDphIBrhr6Aj5G0d2dj/oLufKd/yWcndVy/Ps8Vds6
 UJ2A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key, unprotected) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=TfoOVhbY; 
 dkim=pass (2048-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=google header.b=PoWCPyLX
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[31];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stfomichev@gmail.com,m:hawk@kernel.org,m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[lorenzo.bianconi@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,vger.kernel.org,lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo.bianconi@redhat.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 0476711DEA5
X-Rspamd-Action: no action


--Kbaeu9Ugo55vjxdy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 09/26, Jesper Dangaard Brouer wrote:
> >=20
> >=20
> > On 26/09/2025 06.20, Stanislav Fomichev wrote:
> > > On 09/25, Lorenzo Bianconi wrote:
> > > > Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> > > > checksum will be use by devices capable of exposing receive checksum
> > > > result via bpf_xdp_metadata_rx_checksum().
> > > > Moreover, introduce xmo_rx_checksum netdev callback in order allow =
the
> > > > eBPF program bounded to the device to retrieve the RX checksum resu=
lt
> > > > computed by the hw NIC.
> > > >=20
> > > > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > ---
> > > >   Documentation/netlink/specs/netdev.yaml |  5 +++++
> > > >   include/net/xdp.h                       | 14 ++++++++++++++
> > > >   net/core/xdp.c                          | 29 ++++++++++++++++++++=
+++++++++
> > > >   3 files changed, 48 insertions(+)
> > > >=20
> > > > diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentatio=
n/netlink/specs/netdev.yaml
> > > > index e00d3fa1c152d7165e9485d6d383a2cc9cef7cfd..00699bf4a7fdb67c6b9=
ee3548098b0c933fd39a4 100644
> > > > --- a/Documentation/netlink/specs/netdev.yaml
> > > > +++ b/Documentation/netlink/specs/netdev.yaml
> > > > @@ -61,6 +61,11 @@ definitions:
> > > >           doc: |
> > > >             Device is capable of exposing receive packet VLAN tag v=
ia
> > > >             bpf_xdp_metadata_rx_vlan_tag().
> > > > +      -
> > > > +        name: checksum
> > > > +        doc: |
> > > > +          Device is capable of exposing receive checksum result via
> > > > +          bpf_xdp_metadata_rx_checksum().
> > > >     -
> > > >       type: flags
> > > >       name: xsk-flags
> > > > diff --git a/include/net/xdp.h b/include/net/xdp.h
> > > > index aa742f413c358575396530879af4570dc3fc18de..9ab9ac10ae2074b7061=
8a9d4f32544d8b9a30b63 100644
> > > > --- a/include/net/xdp.h
> > > > +++ b/include/net/xdp.h
> > > > @@ -586,6 +586,10 @@ void xdp_attachment_setup(struct xdp_attachmen=
t_info *info,
> > > >   			   NETDEV_XDP_RX_METADATA_VLAN_TAG, \
> > > >   			   bpf_xdp_metadata_rx_vlan_tag, \
> > > >   			   xmo_rx_vlan_tag) \
> > > > +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CHECKSUM, \
> > > > +			   NETDEV_XDP_RX_METADATA_CHECKSUM, \
> > > > +			   bpf_xdp_metadata_rx_checksum, \
> > > > +			   xmo_rx_checksum)
> > > >   enum xdp_rx_metadata {
> > > >   #define XDP_METADATA_KFUNC(name, _, __, ___) name,
> > > > @@ -643,12 +647,22 @@ enum xdp_rss_hash_type {
> > > >   	XDP_RSS_TYPE_L4_IPV6_SCTP_EX =3D XDP_RSS_TYPE_L4_IPV6_SCTP | XDP=
_RSS_L3_DYNHDR,
> > > >   };
> > > > +enum xdp_checksum {
> > > > +	XDP_CHECKSUM_NONE		=3D CHECKSUM_NONE,
> > > > +	XDP_CHECKSUM_UNNECESSARY	=3D CHECKSUM_UNNECESSARY,
> > > > +	XDP_CHECKSUM_COMPLETE		=3D CHECKSUM_COMPLETE,
> > > > +	XDP_CHECKSUM_PARTIAL		=3D CHECKSUM_PARTIAL,
> > > > +};
> > >=20
> > > Btw, might be worth mentioning, awhile ago we had settled on a smalle=
r set of
> > > exposed types:
> > >=20
> > > https://lore.kernel.org/netdev/20230811161509.19722-13-larysa.zaremba=
@intel.com/
> > >=20
> > > Maybe go through the previous postings and check if the arguments are
> > > still relevant? (or explain why we want more checksum now)
> >=20
> > IHMO the linked proposal reduced the types too much.
>=20
> IIRC, PARTIAL was removed because it's mostly (or only) a TX feature?
> So no real need to expose it as an rx hint. And I think empty xdp_csum_st=
atus
> in that proposal might have indicated NONE?

Sorry for the (very) late reply. According to [0] CHECKSUM_PARTIAL can be u=
sed
even on Rx side, right?

Regards,
Lorenzo

[0] https://github.com/torvalds/linux/blob/master/include/linux/skbuff.h#L1=
48

>=20

--Kbaeu9Ugo55vjxdy
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaYtqKAAKCRA6cBh0uS2t
rFNfAP9IZ4RIoXiTgNfqdm61xXJO8X8DZttEjYppOw1iHdPLUAEAtTMcYDTh8p0A
ZFsUX/AZUM9EY7k2Fd9cdM0dbkaAKg8=
=ofYP
-----END PGP SIGNATURE-----

--Kbaeu9Ugo55vjxdy--

