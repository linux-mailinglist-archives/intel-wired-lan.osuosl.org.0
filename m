Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAADBBA55E4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Sep 2025 00:53:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA3BB42397;
	Fri, 26 Sep 2025 22:53:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DyMY56BuG9Gt; Fri, 26 Sep 2025 22:53:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C500B423A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758927226;
	bh=L64jj/1bEf6Wb3tfKGPiM7Hcv1CIUMxOk206Ub6oLd8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XRPn7UmDYNbtnFkQm0pRX9u8QQATK+A5eG2yQH38Bj5Dxlg9lpsecCqwWKvW849gt
	 Bfcjye6RaAmTKxxp+Vb7RlK0p+uOFQPMlKQ9N4WOb5AEm3YTt6fQaf0XfW29gSlZPL
	 ZiLiYNwk0XILtKOLUwc/0KrruRq6Pbf/6IlMkBdeKhI2pQ4Izl7Ojrthh4Mev6eLEz
	 H5AXYYuxahatnxOo3KMLof4kf4TSwnlyS8y7vbw31UluchgNIo0Rac1fVZ1zHcI9UT
	 y0QgTp+hza5NGqjzqNQ1dyymWd8xcQmyQtr5tTDItxkeDtACnMejARnrwLRbofHngx
	 Ydcuqf7UUavUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C500B423A1;
	Fri, 26 Sep 2025 22:53:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CBB1C198
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 22:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1A5941F5D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 22:53:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KHMWqcuZNRbS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 22:53:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::432; helo=mail-pf1-x432.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BC9AD41F4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC9AD41F4C
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC9AD41F4C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 22:53:43 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id
 d2e1a72fcca58-77f169d8153so2745100b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 15:53:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758927223; x=1759532023;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=L64jj/1bEf6Wb3tfKGPiM7Hcv1CIUMxOk206Ub6oLd8=;
 b=XOEzL83WoJBkbSFFXzHS9RmqhhJRXJIZCLkrp0zV0OnLZKj7Rxk3bMyM4FAUpwokko
 c3HqgESyDemdmnMCzKJ7WC5q7i+sf16S3BELappXK3AaZO9rJZSRdznaxnK+9cY/tWRW
 2MGfBGjilhU04djf9ROZD3JTMU3+PPf1mSI4E6BfkRh5E2ITRvZa2dR7TIVmVrvxsEeY
 wRsCEFrL4rTyDIn+gkPbOwUjLYcVkuB63UAVUToJQp4UiAYDUWqS4x/M0XW2cZUNuA+P
 dQ/z5kBIMfgsfvneVG/CYopENkeR5BYyUamx1YbgBETwCIlPOkL8eAFOS+9jN+nCEcKb
 kvgQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWZUkngpttb7yoLMgERuYikh8Y7G8lXJQXbbWYKxz4Er+eVxMSmCx2QjiQ7U75qc0MjvSPB5HV9qJeTuyKqemw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy51myM806KTMHCKa75aVqs6HVXDwrl1A32H6bYUWBjtstlwBAy
 DYJ4DD096FtJeueU/ZnS5pb/4AIb3RD6raY2s43+sMzwnOIUxLXpSmw=
X-Gm-Gg: ASbGncsRV22S0Pra0xLFVc+CudicIeD5q0thBh48N162IHVRc8d9xg0CFJSk/nfQbpU
 zt9u2L5G86gL6yHe7Cu1J7IozBW1Kty4g8C7MaQS/CahVr0V8cfnccCQ13652ktSoTO8HLo5ibw
 0Al8dFMpugbEBKN2zx03/EzDKJpoUKt9RNJLnBzoO58xJV642kk5O4eu7C9TJx/nFUtx7Nm+3ZR
 IngW9WEqg0DxOeGfegO8IYo1sWi42GnRxPmdTUNCFpdFvYrEqDKW0z+ktHsEcgJD6ojrVhXyuu3
 uRkIQ5Z6DGblugnxBvhBDh6lFvrJnU0nhY6Vy/syVMvajRa8jW4SjYXIF+VnI/GM6RBc804A0Rg
 wR0SxELUbOx58ltt/6A3me2Q0N2RIbmsc2FZfZaSOb0tQvbxp1L3kEodm/Srh1vNOOxFRla8Y0g
 2Hj6kAGW/XPXASa5QG2j1vNS/UTH6u1Cc+dGBygrdzIwYQh6WJdabSHiv+7UaCsFT1Ei7QMMo0/
 MnfN/8DcfrIlJ0=
X-Google-Smtp-Source: AGHT+IHzUVqGkwRKGx9oX64k2CwdiQYFO+LB2LrVkfcj7y3QFUFaw1ssnQ7tqKDzQxD8YBaWVCcYfg==
X-Received: by 2002:a05:6a00:2345:b0:77f:2e62:1e32 with SMTP id
 d2e1a72fcca58-780fce1f177mr9884757b3a.2.1758927222725; 
 Fri, 26 Sep 2025 15:53:42 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d2e1a72fcca58-78102b22f5fsm5418527b3a.53.2025.09.26.15.53.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Sep 2025 15:53:42 -0700 (PDT)
Date: Fri, 26 Sep 2025 15:53:41 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Jesper Dangaard Brouer <hawk@kernel.org>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>,
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
Message-ID: <aNcZdfCivLR2slFw@mini-arch>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
 <aNYUqdaIJV1cvFCb@mini-arch>
 <e03d6d69-73ea-46dc-b632-149ef5831f85@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <e03d6d69-73ea-46dc-b632-149ef5831f85@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758927223; x=1759532023; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=L64jj/1bEf6Wb3tfKGPiM7Hcv1CIUMxOk206Ub6oLd8=;
 b=jZiROuuAFjtIg0YNNqg1MwD7HeFWgdeeCLufcaD0vppJIEfM+K9Gi0acmWsCdouO0G
 nsswwP9CIg5LEmHbHgjvX9GNKZEpTpbejzyk7K+teapvElHJ0Wynh2hHvjWFsaBg7DEo
 qr6tZl8RUAHVxbEl9mkQnuRx+kx65DOH1cfZ47NPrepXNbOGmjdbRZQ10UY49dfgjsSa
 xXCbBWTuTrbwGUh0p7wdwmhTblz72tIYjNEJK51btRU+QoQhL2cExEtU2+jgVQ33EJuh
 N+igp7xQCr9nG0xmg00j69l6dwZnsh2dQlJ4rT4huUMFjhlEhQs/Kkuq5cAQtrqKs7x8
 ltig==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=jZiROuuA
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

On 09/26, Jesper Dangaard Brouer wrote:
> 
> 
> On 26/09/2025 06.20, Stanislav Fomichev wrote:
> > On 09/25, Lorenzo Bianconi wrote:
> > > Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> > > checksum will be use by devices capable of exposing receive checksum
> > > result via bpf_xdp_metadata_rx_checksum().
> > > Moreover, introduce xmo_rx_checksum netdev callback in order allow the
> > > eBPF program bounded to the device to retrieve the RX checksum result
> > > computed by the hw NIC.
> > > 
> > > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > ---
> > >   Documentation/netlink/specs/netdev.yaml |  5 +++++
> > >   include/net/xdp.h                       | 14 ++++++++++++++
> > >   net/core/xdp.c                          | 29 +++++++++++++++++++++++++++++
> > >   3 files changed, 48 insertions(+)
> > > 
> > > diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
> > > index e00d3fa1c152d7165e9485d6d383a2cc9cef7cfd..00699bf4a7fdb67c6b9ee3548098b0c933fd39a4 100644
> > > --- a/Documentation/netlink/specs/netdev.yaml
> > > +++ b/Documentation/netlink/specs/netdev.yaml
> > > @@ -61,6 +61,11 @@ definitions:
> > >           doc: |
> > >             Device is capable of exposing receive packet VLAN tag via
> > >             bpf_xdp_metadata_rx_vlan_tag().
> > > +      -
> > > +        name: checksum
> > > +        doc: |
> > > +          Device is capable of exposing receive checksum result via
> > > +          bpf_xdp_metadata_rx_checksum().
> > >     -
> > >       type: flags
> > >       name: xsk-flags
> > > diff --git a/include/net/xdp.h b/include/net/xdp.h
> > > index aa742f413c358575396530879af4570dc3fc18de..9ab9ac10ae2074b70618a9d4f32544d8b9a30b63 100644
> > > --- a/include/net/xdp.h
> > > +++ b/include/net/xdp.h
> > > @@ -586,6 +586,10 @@ void xdp_attachment_setup(struct xdp_attachment_info *info,
> > >   			   NETDEV_XDP_RX_METADATA_VLAN_TAG, \
> > >   			   bpf_xdp_metadata_rx_vlan_tag, \
> > >   			   xmo_rx_vlan_tag) \
> > > +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CHECKSUM, \
> > > +			   NETDEV_XDP_RX_METADATA_CHECKSUM, \
> > > +			   bpf_xdp_metadata_rx_checksum, \
> > > +			   xmo_rx_checksum)
> > >   enum xdp_rx_metadata {
> > >   #define XDP_METADATA_KFUNC(name, _, __, ___) name,
> > > @@ -643,12 +647,22 @@ enum xdp_rss_hash_type {
> > >   	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_L3_DYNHDR,
> > >   };
> > > +enum xdp_checksum {
> > > +	XDP_CHECKSUM_NONE		= CHECKSUM_NONE,
> > > +	XDP_CHECKSUM_UNNECESSARY	= CHECKSUM_UNNECESSARY,
> > > +	XDP_CHECKSUM_COMPLETE		= CHECKSUM_COMPLETE,
> > > +	XDP_CHECKSUM_PARTIAL		= CHECKSUM_PARTIAL,
> > > +};
> > 
> > Btw, might be worth mentioning, awhile ago we had settled on a smaller set of
> > exposed types:
> > 
> > https://lore.kernel.org/netdev/20230811161509.19722-13-larysa.zaremba@intel.com/
> > 
> > Maybe go through the previous postings and check if the arguments are
> > still relevant? (or explain why we want more checksum now)
> 
> IHMO the linked proposal reduced the types too much.

IIRC, PARTIAL was removed because it's mostly (or only) a TX feature?
So no real need to expose it as an rx hint. And I think empty xdp_csum_status
in that proposal might have indicated NONE?
