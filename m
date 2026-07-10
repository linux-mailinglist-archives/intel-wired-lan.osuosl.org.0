Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id St5yDVQBVWoLiwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 17:16:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE81D74CE72
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 17:16:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=C0VLPVwM;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CDB240907;
	Mon, 13 Jul 2026 15:16:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Td0eldHDkp78; Mon, 13 Jul 2026 15:16:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46D32408FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783955792;
	bh=VWBjaJanp528VpTu2TOH4GFEEplwcn9VXFowenlC8oo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C0VLPVwMeooo7t1yIAVnWT+5DvL1MQzJHaNu784l9jS/OPvYlRHaCgRhWijMgkvia
	 yL6e/qZqOuHFc5K+XU3PLpRIUlusULxqAn6SZo+wJCjtj4zvdt8i4SfgspjRs2Fw4h
	 dPPPGq+ivnyHPe/5ShkrZDU3lOAbn3rGj+56OZlOOenm6KgoZqm5oGGvNJo10Iadrh
	 ck6Tgo1WXAz3nZlTg1bKbg7uqAnir+CY6+Mdo6Z4vMQJWoke2S6FavLumK/clyeORC
	 T283PL9gkTB9t4AZphCq3LMyBZHxKQfwtoiGCnw60Jtk2u4smKbHEEoOzxKoQNoCmU
	 hDpkfBofhPLHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46D32408FB;
	Mon, 13 Jul 2026 15:16:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A01F2FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 19:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6309081024
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 19:07:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zMnu40BXI-re for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 19:07:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2607:f8b0:4864:3b::;
 helo=mail-pz2-x00.google.com; envelope-from=sdf.kernel@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7AAC680ED7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AAC680ED7
Received: from mail-pz2-x00.google.com (mail-pz2-x00.google.com
 [IPv6:2607:f8b0:4864:3b::])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AAC680ED7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 19:07:18 +0000 (UTC)
Received: by mail-pz2-x00.google.com with SMTP id
 41be03b00d2f7-c95bd574471so512866a12.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 12:07:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783710437; x=1784315237;
 h=in-reply-to:content-disposition:content-type:mime-version
 :references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=VWBjaJanp528VpTu2TOH4GFEEplwcn9VXFowenlC8oo=;
 b=VGIBV3Cjj4/gbOzWqH/ERJRnfDAuexbkD+cbKXztwqggrumCjfc+Ok0IV1uGRl0wvI
 fno9+DhUtSZq2f7eZbeiZTnMZsJmXBAKzZ4J5q4DerNBKb7MtgSeAgKuSMBlrF11f31y
 DA23NEL3KAi42A0ZWJ6pHVADuh7C2DiMglVqR3MNHwpUjnUpcEKgIeViQwOl3aA6ClEm
 wiO/ONPxcs711+38WMD9ZlFdyPKH2tFPiRemHz29yKz5za3TqM3KXOuxrS9eh5tAq75u
 q3HWRJnaSAH/K2JVO+QPxLfmoO/Djv78t9odHUUfNb3kpPFnVggBhfQp6PqFyDXpBaig
 3a4A==
X-Forwarded-Encrypted: i=1;
 AHgh+RrHlfO5AByf+lji5ybwF6WCfy0VMTsVLZE9fs4dUXkL1DwoZw7o/DyHneCQZ96KZB8NDUqxNI+khcGnEXcOzXM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz0fDeK/gPKGkwap1yZ3nelW85QI45ao2EH2tt+rME3L0lYx6P8
 N6lzdHOAFma0fTMuoECa7ozstrHcS8swfSc173g2T1n9N49JYSeJ7keQ
X-Gm-Gg: AfdE7cm9n5ubz85oapYlhT+serhU2QnOYQvdFKjDxQeRTgr+CxDUjf04N6hmMwZMYmS
 b8U48RRNUsix1iyAZ5Lix855V/EqK7GQeH2PFl+ohgyUl0H3Q8gxGMzlOtgASxDT6DV02itdTrB
 snFeur4riuq/3jSsQAyfGC1j4CkHWZkB005poLQbgmt4z8DdFOm9hi2fw58L63GnsCiWTXIGy+e
 nWD4/f+uveZ6HGgX9ha6Qrw7djSvlBt09f8/13XPd2eeisaW0HUIWvRBQIYLicsEdJJas/UiWdh
 ox06arQUvcL2FbhPuhYTyLeNJ55lWKKsLnvDTmkSnP9dJ2yIeSwoTOJaVrJwAJ6yPKXoovKb8x5
 73q9eHZMqXPi9fZB+/kWKrcSPKj69vOfcndOsI+yWpGb/deTvuvwZ/FtPNAc7qUHUZl4ThG6Rtl
 5jU5GnL5c22Kls9nm3
X-Received: by 2002:a05:6a00:180b:b0:848:2eac:bfb2 with SMTP id
 d2e1a72fcca58-848895db4e2mr303610b3a.13.1783710437502; 
 Fri, 10 Jul 2026 12:07:17 -0700 (PDT)
Received: from localhost ([2a03:2880:2ff:4f::])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-84856e7c8edsm3299574b3a.36.2026.07.10.12.07.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jul 2026 12:07:17 -0700 (PDT)
Date: Fri, 10 Jul 2026 12:05:23 -0700
From: Stanislav Fomichev <sdf.kernel@gmail.com>
To: Vladimir Vdovin <deliran@verdict.gg>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>, 
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, 
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>, 
 Martin KaFai Lau <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>,
 Song Liu <song@kernel.org>, 
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, 
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <alE8oBxkrak8n602@devvm7509.cco0.facebook.com>
References: <20260708203410.45121-1-deliran@verdict.gg>
 <20260708203410.45121-2-deliran@verdict.gg>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260708203410.45121-2-deliran@verdict.gg>
X-Mailman-Approved-At: Mon, 13 Jul 2026 15:16:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783710437; x=1784315237; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:content-type:mime-version
 :references:message-id:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to:content-type;
 bh=VWBjaJanp528VpTu2TOH4GFEEplwcn9VXFowenlC8oo=;
 b=StdM3qb36qmcL5fP9kPM9rtMVPGyYDFaB/NM8YWt8ZxhWJTJWYY5Oo9fTHdlnV4V0/
 O+LttcMKKTHLcKNRn0Ito3IRkbRIUEgk+JSGoPdhyOWyrFLcChKKvj0HYfJA9+J1ah/H
 ELgNvyBGnA2SK+GSpT80hc83CKaCHNqy/xWM6povR0h2nFlEfCXnRlIyQ8BqeI8CUqQ9
 wqdzEJ4Y0u47+2Uoxu/hRRLbDA9nwUSbkbHhqQ02yF3MSjN1JLZ2avY/gx+SkzXLv5BX
 KgHAzNDAIRlSvDRv5IjFgWGH8ewu3Uprcj2WS2VUaGJF9mZNySFkQ/QHDcPlSR+ac/2u
 +Hxg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=StdM3qb3
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[68];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:deliran@verdict.gg,m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,cloudflare.com,vger.kernel.org,lists.osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[sdfkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,devvm7509.cco0.facebook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sdfkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE81D74CE72

On 07/08, Vladimir Vdovin wrote:
> From: Lorenzo Bianconi <lorenzo@kernel.org>
> 
> Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> checksum will be use by devices capable of exposing receive checksum
> result via bpf_xdp_metadata_rx_checksum().
> Moreover, introduce xmo_rx_checksum netdev callback in order to allow
> the eBPF program bound to the device to retrieve the RX checksum result
> computed by the hw NIC and reported via DMA descriptors.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Vladimir Vdovin <deliran@verdict.gg>
> ---
>  Documentation/netlink/specs/netdev.yaml |  5 ++++
>  include/net/xdp.h                       | 18 ++++++++++++++
>  include/uapi/linux/netdev.h             |  3 +++
>  net/core/xdp.c                          | 32 +++++++++++++++++++++++++
>  tools/include/uapi/linux/netdev.h       |  3 +++
>  5 files changed, 61 insertions(+)
> 
> diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
> index 5f143da7458c..6d0d90d3a614 100644
> --- a/Documentation/netlink/specs/netdev.yaml
> +++ b/Documentation/netlink/specs/netdev.yaml
> @@ -61,6 +61,11 @@ definitions:
>          doc: |
>            Device is capable of exposing receive packet VLAN tag via
>            bpf_xdp_metadata_rx_vlan_tag().
> +      -
> +        name: checksum
> +        doc: |
> +          Device is capable of exposing receive checksum result via
> +          bpf_xdp_metadata_rx_checksum().
>    -
>      type: flags
>      name: xsk-flags
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index aa742f413c35..e255ff786131 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -586,6 +586,10 @@ void xdp_attachment_setup(struct xdp_attachment_info *info,
>  			   NETDEV_XDP_RX_METADATA_VLAN_TAG, \
>  			   bpf_xdp_metadata_rx_vlan_tag, \
>  			   xmo_rx_vlan_tag) \
> +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CHECKSUM, \
> +			   NETDEV_XDP_RX_METADATA_CHECKSUM, \
> +			   bpf_xdp_metadata_rx_checksum, \
> +			   xmo_rx_checksum)
>  
>  enum xdp_rx_metadata {
>  #define XDP_METADATA_KFUNC(name, _, __, ___) name,
> @@ -643,12 +647,26 @@ enum xdp_rss_hash_type {
>  	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_L3_DYNHDR,
>  };

[..]
 
> +/* Please note the driver is required to invalidate the checksum if the NIC
> + * reports CHECKSUM_UNNECESSARY or CHECKSUM_COMPLETE and the eBPF program
> + * modifies the packet since it can change some fields validated by the
> + * checksum.
> + */

Sorry, a bit confused about this part. IIUC this is in response to this
discussion https://lore.kernel.org/bpf/aaLYfWnuuf_ne72u@lore-desk/ ?

Looking at a few drivers:
- bnxt (bnxt_rx_pkt) does UNNECESSARY - ok
- mlx5 (mlx5e_handle_csum) does UNNECESSARY and skips COMPLETE if there is
  bpf prog attached
- fbnic (fbnic_rx_csum) - can do COMPLETE even with xdp attached?
- gve (gve_rx) - can do COMPLETE even with xdp attached?

So none of the drivers invalidate anything (and nether the bpf machinery), some
choose to (correctly?) not report COMPLETE when there is XDP. So was the
discussion about documenting this and giving some guidance? This probably
belongs to that `DOC: skb checksums` section of include/linux/skbuff.h?

Also, can you add your new rx_checksum to
Documentation/networking/xdp-rx-metadata.rst's list of supported kfuncs?
