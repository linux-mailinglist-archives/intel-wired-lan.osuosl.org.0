Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Pl4CMxJhWkN/QMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 02:54:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34997F919B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 02:54:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF8A14191D;
	Fri,  6 Feb 2026 01:54:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HpZPxHmO27tG; Fri,  6 Feb 2026 01:54:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C49C41914
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770342855;
	bh=x9TxfH7WAqjkoPCJzsyw7dRmowDEOSglf24VdOjiuVA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o1DRWXFpCnHWpBqL65C7brhhwts4E7qwcqsgFIuTZiPeyqwL54bLMCtY66GdkQaNj
	 rY1wiTNRU0khYJbYqaWTLjbLzeQ7KCYU8TYsf0XmRVFt5q4wsJ6IIgPMrX1WqAVh+p
	 hOWYwiJ2L4C9bzCSP4JZ6vEqpYHX34GZjT6J3zPbaT7gjtkmhRzq6t9y3WrmpDH/Jd
	 7H5u0KsRDXa9pK0V6rnEiS3+vU2/RAAyGAYb4TkuUxLy2y84nd6qIzEeBeKIx3859A
	 xfz7X36W22jDuJGhWq0pDDOCnZWYT68co2ndeXWKPixzl51cLUyplJp/RZkQL1hp8n
	 dKZPYghN3lfWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C49C41914;
	Fri,  6 Feb 2026 01:54:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C2E01198
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 01:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFC0E608C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 01:54:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OMLDlkyvFOxJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Feb 2026 01:54:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C69BF6063E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C69BF6063E
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C69BF6063E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 01:54:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4B6476001A;
 Fri,  6 Feb 2026 01:54:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E1E8C4CEF7;
 Fri,  6 Feb 2026 01:54:09 +0000 (UTC)
Date: Thu, 5 Feb 2026 17:54:08 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Larysa Zaremba
 <larysa.zaremba@intel.com>
Cc: bpf@vger.kernel.org, Claudiu Manoil <claudiu.manoil@nxp.com>, Wei Fang
 <wei.fang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev
 <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
 <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>, Song Liu
 <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, KP Singh
 <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Simon Horman <horms@kernel.org>, Shuah Khan
 <shuah@kernel.org>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF
 Foundation)" <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, "Ricardo
 B. =?UTF-8?B?TWFybGniiJrCrnJl?=" <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, Toke
 Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260205175408.30ab72a1@kernel.org>
In-Reply-To: <20260205134046.pggwyosutj7ggi4i@skbuf>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-7-larysa.zaremba@intel.com>
 <20260205005901.gnju3zmqimtgeu2b@skbuf>
 <20260204173401.282899d0@kernel.org>
 <20260205122953.lscemcctayrvszdu@skbuf>
 <aYSP344FT-JlylwY@soc-5CG4396X81.clients.intel.com>
 <20260205124638.hxzvjiocephzlrk3@skbuf>
 <aYSZw4wbd-nvLTuD@soc-5CG4396X81.clients.intel.com>
 <20260205134046.pggwyosutj7ggi4i@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770342851;
 bh=5J3kMshGAuQBNb43c32R/D42M6M9n/bqmLxIbWEwyAg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JuOxFJ+4wxUl1w911PrccY2p3Vmohj2BvL9fBMt1cWe/0L4OK4QPqbUd3fy94/Mcf
 6V43l4m0aLTlQSxxUxPf4hj17JW7JZD9P1/iHdt5D7QkKC1BGyK9z65SH09Z3oTCDa
 ljqWhIuXiDyG8kEJ3beU5HL6/T2d5rVuFWHTe1BLMi1zBxYS1LkEggFv9V4VuzlXnQ
 5t161dfkh7E3JuMKyLaOredWzSUQTmlQR2/7C1kgO0oycAUgZmLy1xr4hNfP8f7DWg
 haIZ33cCUoa8VVXPp6gxDSZhasWB8pxbjqzmfd+Irqyx6BD/kOUM6nRYyEwXYUqsHw
 xw2DRGYeSIzKA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=JuOxFJ+4
Subject: Re: [Intel-wired-lan] [PATCH bpf 6/6] net: enetc: use truesize as
 XDP RxQ info frag_size
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,intel.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vladimir.oltean@nxp.com,m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andr
 ew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 34997F919B
X-Rspamd-Action: no action

On Thu, 5 Feb 2026 15:40:46 +0200 Vladimir Oltean wrote:
> > > I mean, it should "work" given the caveat that calling bpf_xdp_adjust_tail()
> > > on a first-half page buffer with a large offset risks leaking into the
> > > second half, which may also be in use, and this will go undetected, right?
> > > Although the practical chances of that happening are low, the requested
> > > offset needs to be in the order of hundreds still.  
> > 
> > Oh, I did get carried away there...
> > Well, one thing is shared page memory model in enetc and i40e, another thing is
> > xsk_buff_pool, where chunk size can be between 2K and PAGE_SIZE. What about
> > 
> > tailroom = rxq->frag_size - skb_frag_size(frag) -
> >            (skb_frag_off(frag) % rxq->frag_size);
> > 
> > When frag_size is set to 2K, headroom is let's say 256, so aligned DMA write
> > size is 1420.
> > last frag at the start of the page: offset=256, size<=1420
> >     tailroom >= 2K - 1420 - 256 = 372
> > last frag in the middle of the page: offset=256+2K, size<=1420
> >     tailroom >= 2K - 1420 - ((256 + 2K) % 2K) = 372
> > 
> > And for drivers that do not fragment pages for multi-buffer packets, nothing
> > changes, since offset is always less than rxq->frag_size.
> > 
> > This brings us back to rxq->frag_size being half of a page for enetc and i40e,
> > and seems like in ZC mode it should be pool->chunk_size to work properly.  
> 
> With skb_frag_off() taken into account modulo 2K for the tailroom
> calculation, I can confirm bpf_xdp_frags_increase_tail() works well for
> ENETC. I haven't fully considered the side effects, though.

+1, also seems to me like it would work tho I haven't thought thru all 
the cases. We do need to document and name things well, tho, 'cause
subtleties are piling up ;) Maybe it's time for an ASCII art
for xdp layout?

FWIW my feeling is that instead of nickel and diming leftover space 
in the frags if someone actually cared about growing mbufs we should
have the helper allocate a new page from the PP and append it to the
shinfo. Much simpler, "infinite space", and works regardless of the
driver. I don't mean that to suggest you implement it, purely to point
out that I think nobody really uses positive offsets.. So we can as
well switch more complicated drivers back to xdp_rxq_info_reg().
