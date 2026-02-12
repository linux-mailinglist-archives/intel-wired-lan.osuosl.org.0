Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMqjG89LjWlN0wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 04:41:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE0C12A39E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 04:41:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A4F0611EF;
	Thu, 12 Feb 2026 03:41:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L2U2YRVsYk9O; Thu, 12 Feb 2026 03:41:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EF6F611F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770867660;
	bh=tK21a4JoivTAPugf5a0tgKET71snd9+E0xX3YsV0FIM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F09vhUhU6IdkF31EnF/c08RcSxMKaK6mH4cMoLydeTKwX2AJutpXTlF09y3vJwh8z
	 hI9+xL4dIsLC2WJ7qc1TTeDdJEOINNPqvTyTomcHZOrAahxxtAOH2U2LxJ9uocz1cp
	 /CnB89CvF2SN6OEiC+NM3YBMXI+hnrXdHn1sjguVJQ/OtjtLzw0yr6+p/ytFBE4XFh
	 6+PfcazaC5czHB6wEAvGQAlU1uve1ikVosoj9gd/OO36zzEtqEC7xLyUV9sL+zX1wO
	 6vTHVSQ33vn7v0j0F2lZrdhdw1POEoLm2tjsiTCRJYdU62+DA4HkexeJ4BxTOmIiM7
	 vaTQOsDWMXH7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EF6F611F0;
	Thu, 12 Feb 2026 03:41:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 05CCEBE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 03:40:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE20E4028B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 03:40:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3QtEZ4tx53OE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 03:40:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:4860:4864:20::32; helo=mail-oa1-x32.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AB1C74016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB1C74016B
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com
 [IPv6:2001:4860:4864:20::32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB1C74016B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 03:40:57 +0000 (UTC)
Received: by mail-oa1-x32.google.com with SMTP id
 586e51a60fabf-404254ffe8aso1014166fac.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 19:40:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770867656; x=1771472456;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tK21a4JoivTAPugf5a0tgKET71snd9+E0xX3YsV0FIM=;
 b=fgi6p9a/BuZMcBTg0TaqckQb+4S2lg1dsRuG8uCIIh7sRiL7/wF//Nn6USxxK54Xat
 BRA6WTKmJe0rwieqMBKVwW07X7aAhQaYHW8kk4fANXl79Yf47zXdTCN6BohXUFqQjH6l
 F4HAzmDi2rkr5rXA/t/4bwXCNNNlFv4vWowHFBJCdYhUrgLJBoAD2KYJrutmAG7PlPC4
 aCKoJVytQTQcbun+zK8UG2U/+qUGHgBTabYWdy9xuANq5jrujgVTRa3i26qZ6xMCXNBF
 2hJ53HEN+vx6RoXc2oTg+ZATl84lINSvUwi2zMlq3l5qNRXKUc/LCkX3wxlWvlGjObmX
 q+uQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXB6W2nhydmlI5ZCREELQ4yCE3SrodyBtRRlL6+z3Bz5gMBE6u8eO1TExHm2NlbCnWZnmVIZZnKHhPlN2qX+Rw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzXeClgdPh0INCS2ILs38BDiflTlysqcxqHi0PmSlrlB/CnRtX0
 AhgY+qhDGD8B4hTpAvo8P8KsxYXXchVNNw9Id3JKk4fB8auikxcgTJoEN3y9
X-Gm-Gg: AZuq6aJW5oSJJU7H4KAQJzrQCIFyjbH3R2Q249GySopXCP3X80ykB/PAmfIMugi8Nqv
 OGe21WJK2A3TPKc0MA3Ea5QIrtmTs6h7378fH6IinL4eTT2jXXSzmqqBwrrCWqXW9GpuhXave3I
 KGYA29bY5OQH2NrapON7nwj6K/CLb6X1YsznJRK/BnX3KAerjVsFow5PITrPEZG+L1WY1YRaZmG
 p989RePy3VbbPYWr3uBI7d60bqxn4PKR4sWnZ5ldNss5rARR4IiMUSyIqr9G44xeICSMZW9qLsP
 gTjr34OSB/HWor7vKh6mgvU1pEm3SdWpr4xIhiCdkuSPHbj1SE1qYydDukk4Lv+EU9T7StVDu9h
 UR4zFOwsGxanzMTkYNp9LgDkGuPGEifG5ztUqEBYYsaZAgO2zS8O+/XrhC08Vnx8BnhxAtbxuZm
 TZn125xhBqp1ln01CmuQf/85AXE5FHLie93pGMI3OtjIGAwAfsD9s3WAIBYHw82cC+73WkXBYDQ
 yLbRQHt9uIY59YIrw==
X-Received: by 2002:a05:7022:249f:b0:121:d898:edae with SMTP id
 a92af1059eb24-1272fd99529mr389245c88.24.1770861432625; 
 Wed, 11 Feb 2026 17:57:12 -0800 (PST)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-1272a6e943fsm2870384c88.11.2026.02.11.17.57.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Feb 2026 17:57:12 -0800 (PST)
Date: Wed, 11 Feb 2026 17:57:11 -0800
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
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
Message-ID: <aY0zd4Esewxa-8hw@mini-arch>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
 <aNYUqdaIJV1cvFCb@mini-arch>
 <e03d6d69-73ea-46dc-b632-149ef5831f85@kernel.org>
 <aNcZdfCivLR2slFw@mini-arch> <aYtqKfv0F0l2-hgy@lore-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aYtqKfv0F0l2-hgy@lore-desk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770867656; x=1771472456; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=tK21a4JoivTAPugf5a0tgKET71snd9+E0xX3YsV0FIM=;
 b=J1QaE16Bk2YpFc2ibycAUK8whN8yiPHh4fzGLT9hrlj6aDUnIBMsyhXFLcPdB+4m8+
 oYxiDV0LnLNjkzRxoPEw0AC6wjBMQX3gIZ2x5alHSdlWagq2lEDt3QZLBwySuk8v0wwT
 t6MpShFT/AlBxO1QNaAFKAF+D9DC5y8CN5IAcmpO6gsrsYMA6LEh3c+CtJ09Je8DPJp9
 FHPMlQOpIX+H1tvvvOOkhbWQQDRpLAy/JK1QcdckUlUfQS6Ue0VcI0UsYkrDxKXlhdq2
 5NTquYl+jPknmPU4W4QduglI5jRJuhLg1GbiOs6P/pphdpD5PYQ+z9Eqvoe+9W3lcfpY
 asPQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=J1QaE16B
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:lorenzo.bianconi@redhat.com,m:hawk@kernel.org,m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DAE0C12A39E
X-Rspamd-Action: no action

On 02/10, Lorenzo Bianconi wrote:
> > On 09/26, Jesper Dangaard Brouer wrote:
> > > 
> > > 
> > > On 26/09/2025 06.20, Stanislav Fomichev wrote:
> > > > On 09/25, Lorenzo Bianconi wrote:
> > > > > Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> > > > > checksum will be use by devices capable of exposing receive checksum
> > > > > result via bpf_xdp_metadata_rx_checksum().
> > > > > Moreover, introduce xmo_rx_checksum netdev callback in order allow the
> > > > > eBPF program bounded to the device to retrieve the RX checksum result
> > > > > computed by the hw NIC.
> > > > > 
> > > > > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > > ---
> > > > >   Documentation/netlink/specs/netdev.yaml |  5 +++++
> > > > >   include/net/xdp.h                       | 14 ++++++++++++++
> > > > >   net/core/xdp.c                          | 29 +++++++++++++++++++++++++++++
> > > > >   3 files changed, 48 insertions(+)
> > > > > 
> > > > > diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
> > > > > index e00d3fa1c152d7165e9485d6d383a2cc9cef7cfd..00699bf4a7fdb67c6b9ee3548098b0c933fd39a4 100644
> > > > > --- a/Documentation/netlink/specs/netdev.yaml
> > > > > +++ b/Documentation/netlink/specs/netdev.yaml
> > > > > @@ -61,6 +61,11 @@ definitions:
> > > > >           doc: |
> > > > >             Device is capable of exposing receive packet VLAN tag via
> > > > >             bpf_xdp_metadata_rx_vlan_tag().
> > > > > +      -
> > > > > +        name: checksum
> > > > > +        doc: |
> > > > > +          Device is capable of exposing receive checksum result via
> > > > > +          bpf_xdp_metadata_rx_checksum().
> > > > >     -
> > > > >       type: flags
> > > > >       name: xsk-flags
> > > > > diff --git a/include/net/xdp.h b/include/net/xdp.h
> > > > > index aa742f413c358575396530879af4570dc3fc18de..9ab9ac10ae2074b70618a9d4f32544d8b9a30b63 100644
> > > > > --- a/include/net/xdp.h
> > > > > +++ b/include/net/xdp.h
> > > > > @@ -586,6 +586,10 @@ void xdp_attachment_setup(struct xdp_attachment_info *info,
> > > > >   			   NETDEV_XDP_RX_METADATA_VLAN_TAG, \
> > > > >   			   bpf_xdp_metadata_rx_vlan_tag, \
> > > > >   			   xmo_rx_vlan_tag) \
> > > > > +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CHECKSUM, \
> > > > > +			   NETDEV_XDP_RX_METADATA_CHECKSUM, \
> > > > > +			   bpf_xdp_metadata_rx_checksum, \
> > > > > +			   xmo_rx_checksum)
> > > > >   enum xdp_rx_metadata {
> > > > >   #define XDP_METADATA_KFUNC(name, _, __, ___) name,
> > > > > @@ -643,12 +647,22 @@ enum xdp_rss_hash_type {
> > > > >   	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_L3_DYNHDR,
> > > > >   };
> > > > > +enum xdp_checksum {
> > > > > +	XDP_CHECKSUM_NONE		= CHECKSUM_NONE,
> > > > > +	XDP_CHECKSUM_UNNECESSARY	= CHECKSUM_UNNECESSARY,
> > > > > +	XDP_CHECKSUM_COMPLETE		= CHECKSUM_COMPLETE,
> > > > > +	XDP_CHECKSUM_PARTIAL		= CHECKSUM_PARTIAL,
> > > > > +};
> > > > 
> > > > Btw, might be worth mentioning, awhile ago we had settled on a smaller set of
> > > > exposed types:
> > > > 
> > > > https://lore.kernel.org/netdev/20230811161509.19722-13-larysa.zaremba@intel.com/
> > > > 
> > > > Maybe go through the previous postings and check if the arguments are
> > > > still relevant? (or explain why we want more checksum now)
> > > 
> > > IHMO the linked proposal reduced the types too much.
> > 
> > IIRC, PARTIAL was removed because it's mostly (or only) a TX feature?
> > So no real need to expose it as an rx hint. And I think empty xdp_csum_status
> > in that proposal might have indicated NONE?
> 
> Sorry for the (very) late reply. According to [0] CHECKSUM_PARTIAL can be used
> even on Rx side, right?

So is this for virtio (which I don't think you need)? Or something else?
Can we start with the "easy" cases of UNNECESSARY/COMPLETE/NONE? I'm not even
sure we need to expose the csum_level (start with level=0 and handle
encap if/when there is a real usecase). With kfuncs we should be able to
change/extend the API when needed.

(for PARTIAL, not even sure what the BPF prog is supposed to do with it)
