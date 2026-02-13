Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHLiFc3OjmmBFAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 08:12:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5070B1336AF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 08:12:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C282A40AC6;
	Fri, 13 Feb 2026 07:12:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 98SExR-Ge-8d; Fri, 13 Feb 2026 07:12:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF9AF40A5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770966730;
	bh=WFllcNF1m/veazpXfhkGge2XTmCfSEav8feNbAw2Nvs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XjMYONzTtQcvKFHmJBNxNPnXnjh/JEMMM4ZjurLJ7bwa5Dc9YSjMSea7flhPm00uU
	 OhfiWr/Ufh7o9HuWTyevGz9kFVWbAzqWpqfE1LyeMF5t7CT1sdi9X8lF5XtJ/VktnD
	 voGleJY7a1iz+4nvJlG41nfjju4LJvCp74Vv+bZvtbcTAOJr58BD1zpCcTrlIr26lh
	 jtJgj/9N2q2bv+9/sXjRjZw3ldZwaI0gfJOL45cxw8M5V8VA7u8o0q9hzRR7R3m3E/
	 1F0X5qBKXsko9t6ZW0HStX28h8Q2nkFFlZjHxSVAO1KMQFUXYyStane/ODqK+9vRAI
	 ZNLuU3er2B7gQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF9AF40A5C;
	Fri, 13 Feb 2026 07:12:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BF39F1D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 07:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A047E4103D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 07:12:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jUiJ3EUfxz7R for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 07:12:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1230; helo=mail-dl1-x1230.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8C22E400AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C22E400AE
Received: from mail-dl1-x1230.google.com (mail-dl1-x1230.google.com
 [IPv6:2607:f8b0:4864:20::1230])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C22E400AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 07:12:07 +0000 (UTC)
Received: by mail-dl1-x1230.google.com with SMTP id
 a92af1059eb24-126ea4e9694so1691627c88.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 23:12:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770966726; x=1771571526;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WFllcNF1m/veazpXfhkGge2XTmCfSEav8feNbAw2Nvs=;
 b=FybyNsDjCaNTFjhACgWkfkUbeV6/0mVVjOabpLtrjxKsLQgnulvWPN+PDUTyw+5/WN
 MHOwP0b+qghQaoSpVuyivVcG0RuguZUnSMs565UNijsR1JV0nWPHPnY1fOgqIXtfs8Gj
 QHLwMMbzaf6+lXnchAzlPHTxzzUFzfvHrOgszwdMyxv86u2LWAHCWYV8IRJ2zf33ZUAJ
 iwBmeGA517U32mybcafsDxEmflRfaohIoudQsPUeQG8qAdxa0AStpZhLO8vFFl3Il97N
 Jvbq3X6gfCW41mvbTutTmdvPzwvWcaO1t2HKCqbgBCRZwRQoOn1TyiqHuSb+ijxRR63C
 5XJQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVckU9RC6bKBnzjdfVz4w5XyvrKJ6HnZs3iUWfk2KnfGE46b8/npcRmeyM/dOivZs6ur95s0WgoPQrCnsEqrGY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxRaazNGeFJuWWQwdZrDKrmNuisaguBYBADHk+0GayTpkMBuYxX
 mQ/uMjyr8QVC9Z5kj7B1/NpWlCenfj6a4hpaszSxgBflErFo9xreRjhZiJH2
X-Gm-Gg: AZuq6aK/KrctxD5yra19idseTmBhuO5yzMPoF135Q2WfT+sgUDcGRTEu4LCmeF/yKM2
 R9Z7hiNDetTekahhkPqOqHnbg2GFek3tIVp/bNjIWZXgB9eKqeX31lJfTdHfbTLX8LDnKwPjet7
 ynDATea0YLasTPuxC4wNEUE7BHhF3xfSDAippvzCsshXFCPsf+0LMTI80W6S7c20iL+xCjsRosS
 bmV+ZjT5EXgvCSv1JMSFAx+BNClfs2ja6ZUKfyFcX5jabxQaxgDXg/am2/0ej2FAyGC1YHphcul
 h/7+HGNugtekbQcf3ftYLdMQgGIfSY+9KJ1VFSsSsPh1KPqps9YUuooAvyX54UQTAY3fi/0KfWC
 2kPh57gtvHUv0eH5eKqf0e+7YUi2megG5o+AKA+eVSm80E+XUs8UM5zmrerDgoe8XT7lkUurBr1
 ftPTVHb4e8VSoWdRbb8UxC2t7Kzuj5FzkicbxVxA8BN0jeGXWEDsIYEuEHzbAvSiksC5NGRb82M
 6yaIpqmKVztSjNxkkuheR9NrbD3
X-Received: by 2002:a05:7301:2f99:b0:2ba:7033:533b with SMTP id
 5a478bee46e88-2babc47ff16mr240332eec.32.1770959815327; 
 Thu, 12 Feb 2026 21:16:55 -0800 (PST)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2ba9dbe123asm5764986eec.13.2026.02.12.21.16.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Feb 2026 21:16:54 -0800 (PST)
Date: Thu, 12 Feb 2026 21:16:54 -0800
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <aY6zxmRcBSt4ju86@mini-arch>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
 <aNYUqdaIJV1cvFCb@mini-arch>
 <e03d6d69-73ea-46dc-b632-149ef5831f85@kernel.org>
 <aNcZdfCivLR2slFw@mini-arch> <aYtqKfv0F0l2-hgy@lore-desk>
 <aY0zd4Esewxa-8hw@mini-arch> <aY4FB_Gf31V-VYiF@lore-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aY4FB_Gf31V-VYiF@lore-desk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770966726; x=1771571526; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=WFllcNF1m/veazpXfhkGge2XTmCfSEav8feNbAw2Nvs=;
 b=H9Gc2i0TAtP0dqmDehuTzZWgDKgLUdfZd63yDYrRPOYpdgCJr9qLhg9KEH36oJC3bT
 S9gNvwRSX84dlrt3wOBHg93xgxvK0/LU9dem8U3wzMsn9x9Jf9zeauYCxD1162ahLe04
 NKULTPgEdqcQQsGXDW6VzjVA8PZM1jkVsbplvT4GHjgIul3ILKWhZgqx3mDcf1fDdEdG
 cpx6FMjKgQ3tGdo/R4+U63HJHN5SmLQXxGuOq5852TMjPWz04cl7GoiuCO9PSCXjbBz/
 /C+nAaw3VC/bQewb+nvye06ob9vf1CQTavM0DO3SYeseNiqi5gc9WhhBL9u4CahqN/9W
 7yLA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=H9Gc2i0T
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:linux-kselftest@vger.kernel.org,m:ast@kernel.org,m:song@kernel.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:yonghong.song@linux.dev,m:shuah@kernel.org,m:jolsa@kernel.org,m:donald.hunter@gmail.com,m:daniel@iogearbox.net,m:aleksander.lobakin@intel.com,m:przemyslaw.kitszel@intel.com,m:john.fastabend@gmail.com,m:andrii@kernel.org,m:sdf@fomichev.me,m:kuba@kernel.org,m:pabeni@redhat.com,m:maciej.fijalkowski@intel.com,m:hawk@kernel.org,m:kpsingh@kernel.org,m:haoluo@google.com,m:netdev@vger.kernel.org,m:eddyz87@gmail.com,m:horms@kernel.org,m:bpf@vger.kernel.org,m:martin.lau@linux.dev,m:davem@davemloft.net,m:andrew+netdev@lunn.ch,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	URIBL_MULTI_FAIL(0.00)[osuosl.org:server fail,smtp4.osuosl.org:server fail];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,google.com,intel.com,linux.dev,gmail.com,iogearbox.net,fomichev.me,lists.osuosl.org,redhat.com,davemloft.net,lunn.ch];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5070B1336AF
X-Rspamd-Action: no action

On 02/12, Lorenzo Bianconi wrote:
> > On 02/10, Lorenzo Bianconi wrote:
> > > > On 09/26, Jesper Dangaard Brouer wrote:
> > > > > 
> > > > > 
> > > > > On 26/09/2025 06.20, Stanislav Fomichev wrote:
> > > > > > On 09/25, Lorenzo Bianconi wrote:
> > > > > > > Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> > > > > > > checksum will be use by devices capable of exposing receive checksum
> > > > > > > result via bpf_xdp_metadata_rx_checksum().
> > > > > > > Moreover, introduce xmo_rx_checksum netdev callback in order allow the
> > > > > > > eBPF program bounded to the device to retrieve the RX checksum result
> > > > > > > computed by the hw NIC.
> > > > > > > 
> > > > > > > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > > > > ---
> > > > > > >   Documentation/netlink/specs/netdev.yaml |  5 +++++
> > > > > > >   include/net/xdp.h                       | 14 ++++++++++++++
> > > > > > >   net/core/xdp.c                          | 29 +++++++++++++++++++++++++++++
> > > > > > >   3 files changed, 48 insertions(+)
> > > > > > > 
> > > > > > > diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
> > > > > > > index e00d3fa1c152d7165e9485d6d383a2cc9cef7cfd..00699bf4a7fdb67c6b9ee3548098b0c933fd39a4 100644
> > > > > > > --- a/Documentation/netlink/specs/netdev.yaml
> > > > > > > +++ b/Documentation/netlink/specs/netdev.yaml
> > > > > > > @@ -61,6 +61,11 @@ definitions:
> > > > > > >           doc: |
> > > > > > >             Device is capable of exposing receive packet VLAN tag via
> > > > > > >             bpf_xdp_metadata_rx_vlan_tag().
> > > > > > > +      -
> > > > > > > +        name: checksum
> > > > > > > +        doc: |
> > > > > > > +          Device is capable of exposing receive checksum result via
> > > > > > > +          bpf_xdp_metadata_rx_checksum().
> > > > > > >     -
> > > > > > >       type: flags
> > > > > > >       name: xsk-flags
> > > > > > > diff --git a/include/net/xdp.h b/include/net/xdp.h
> > > > > > > index aa742f413c358575396530879af4570dc3fc18de..9ab9ac10ae2074b70618a9d4f32544d8b9a30b63 100644
> > > > > > > --- a/include/net/xdp.h
> > > > > > > +++ b/include/net/xdp.h
> > > > > > > @@ -586,6 +586,10 @@ void xdp_attachment_setup(struct xdp_attachment_info *info,
> > > > > > >   			   NETDEV_XDP_RX_METADATA_VLAN_TAG, \
> > > > > > >   			   bpf_xdp_metadata_rx_vlan_tag, \
> > > > > > >   			   xmo_rx_vlan_tag) \
> > > > > > > +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CHECKSUM, \
> > > > > > > +			   NETDEV_XDP_RX_METADATA_CHECKSUM, \
> > > > > > > +			   bpf_xdp_metadata_rx_checksum, \
> > > > > > > +			   xmo_rx_checksum)
> > > > > > >   enum xdp_rx_metadata {
> > > > > > >   #define XDP_METADATA_KFUNC(name, _, __, ___) name,
> > > > > > > @@ -643,12 +647,22 @@ enum xdp_rss_hash_type {
> > > > > > >   	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_L3_DYNHDR,
> > > > > > >   };
> > > > > > > +enum xdp_checksum {
> > > > > > > +	XDP_CHECKSUM_NONE		= CHECKSUM_NONE,
> > > > > > > +	XDP_CHECKSUM_UNNECESSARY	= CHECKSUM_UNNECESSARY,
> > > > > > > +	XDP_CHECKSUM_COMPLETE		= CHECKSUM_COMPLETE,
> > > > > > > +	XDP_CHECKSUM_PARTIAL		= CHECKSUM_PARTIAL,
> > > > > > > +};
> > > > > > 
> > > > > > Btw, might be worth mentioning, awhile ago we had settled on a smaller set of
> > > > > > exposed types:
> > > > > > 
> > > > > > https://lore.kernel.org/netdev/20230811161509.19722-13-larysa.zaremba@intel.com/
> > > > > > 
> > > > > > Maybe go through the previous postings and check if the arguments are
> > > > > > still relevant? (or explain why we want more checksum now)
> > > > > 
> > > > > IHMO the linked proposal reduced the types too much.
> > > > 
> > > > IIRC, PARTIAL was removed because it's mostly (or only) a TX feature?
> > > > So no real need to expose it as an rx hint. And I think empty xdp_csum_status
> > > > in that proposal might have indicated NONE?
> > > 
> > > Sorry for the (very) late reply. According to [0] CHECKSUM_PARTIAL can be used
> > > even on Rx side, right?
> > 
> > So is this for virtio (which I don't think you need)? Or something else?
> 
> I forgot to mention before CHECKSUM_PARTIAL is used for the veth use-case
> when the packet is coming from the networking stack.

But what do you do with that partial state in BPF? I doubt you're
calculating/verifying it? Can we treat/export it as NONE/UNNECESSARY for now?
