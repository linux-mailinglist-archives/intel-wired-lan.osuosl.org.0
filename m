Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODRQFk20jmngDwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 06:19:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 563DB132FB6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 06:19:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 383B241983;
	Fri, 13 Feb 2026 05:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TKC5Vf3TEHp9; Fri, 13 Feb 2026 05:19:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42D2941988
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770959944;
	bh=JgXT3I4sUDI0oaN+QbxtrFi8HM7j7HM1bT+EMzWKpeQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QyNU0/PfAiJCM+PTMx5dNLp4ObBY0QsbXNxQ/rbI4LbsHWAz41KFTFwI2hWzdTyDz
	 ZxQq55ZI7MYEs1thnrkdoKGrXwsbwfFvLasED5BykJHXlgNGkdvrKqmvr8BZiiw9pT
	 An9fCqPYe9JtptbtnUzmavHmGZg3KUHylUTNftmdzHt79R7LqKhLh9JmsxeBkJlWAS
	 1GF3xVzDQ57aWD7LDetwnTcieIE3fOOTaXkCgZi10fYzGTTHV5EAetr7J3AaY9/Pnw
	 M+A7VjbUk0K37vsJplwPotk2gZWXcwzw4jNrfvqZ3S4l5gM7QkL9CkqQr4aKNknPTh
	 wxQ9mvrJiRraw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42D2941988;
	Fri, 13 Feb 2026 05:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0025C1D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 05:19:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D97CC83BF3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 05:19:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pM3ucHfg9rve for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 05:19:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::132d; helo=mail-dy1-x132d.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0181283BEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0181283BEA
Received: from mail-dy1-x132d.google.com (mail-dy1-x132d.google.com
 [IPv6:2607:f8b0:4864:20::132d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0181283BEA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 05:19:00 +0000 (UTC)
Received: by mail-dy1-x132d.google.com with SMTP id
 5a478bee46e88-2ba94dbf739so653242eec.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 21:19:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770959940; x=1771564740;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JgXT3I4sUDI0oaN+QbxtrFi8HM7j7HM1bT+EMzWKpeQ=;
 b=J/Lly7XTkahQey+/gGSXAGqsJmSPJhpiyr/eEuNEHb52rM05GQ6DWksW1dvlWvTJbG
 9+Y1SBSJzWfdi708gT3StQ8C9nxvQ1+ks/31JZWfRTQn7s5QMNFnA295FS80U8mrCrkb
 U103dQ6SaCbD48UDqYfI7WNkbaJrg/ljUfN4XIq3/J8JltVh7sJ5sto1WMRnKVLIGki4
 /dB6DcboFDI+2sY9h4EgjQkmA4XyTi12nWO4CEIHow44v9+J4HW4tgn0bMnSaz7GdFTv
 +CxqlZiK8cODRQMNE/o76ywIVX3SJTNYM34otDG7X0ClTIoxfmsKs4E1tg/hMrQdNimo
 z8aQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgz31iK/BiQywgvL1rendcb+soto1pJGJGFKkeBNksxqNSmMSpzM613NCgIZSlH/HcAeJLAnQiWk5fUH+ciHk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzwnrmfpwk052zmbdbAhivmA/oMHl3O+bVe9T4UG2EWHebK/Gro
 R6GSX0VdcGnd0YnxqsyzPgW4LJEplDLgUf8ZLZUpQXzaGv0mX4e7ZyI=
X-Gm-Gg: AZuq6aI+Abpnv3hU/BEfQ7bCzXTq7FWxvID/cIgERGJGSySjqBi2uYAymnSfqTstK/X
 hYkuuRPI62NvS3OSlMZPHjeDifJ09zMuTH3yGcvBBMg8QKa6nobMKVuNSlBqY+QMJDrP3zOjW9I
 eKq6NqmOIfpII3EmtxGfRQJ0NkOQRJbcTmuDHmprcRJ2Tpx9AqQI1oz72dKtG+Ge+CbxDVlaOUu
 axdo/kNOaqz0K/X/NlNdOP/3Rfn3FVojDDry+DlpGEA3ZaoMc6tsyuLqIV20K012XH8IHh6xe51
 TS5hNsndbyIPh815g/LGZJNRiv74+dqA2mBrJ+t4n9N09Vyx35PV0jmSrk2UwlJVqr9VYi32h8x
 d/wYaz6b1id2AHbthRxBBvJzMDL+g2e5CS8q1pbCSGiB4l+oGbZGMfNBk2rr/gUlMeCHGAn9mbL
 6T0LmFbK4/yHLUVGN1IeUn0hAdL04qzJ1kB5dnlH2MyACIO4RMPed9/rNtxfUsiMrIjqn8MIB16
 3kNna5naoaeNFNKEg==
X-Received: by 2002:a05:7301:7214:b0:2b7:ee0e:e9bf with SMTP id
 5a478bee46e88-2babc4558femr275595eec.27.1770959939783; 
 Thu, 12 Feb 2026 21:18:59 -0800 (PST)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2ba9dcd0614sm5463343eec.22.2026.02.12.21.18.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Feb 2026 21:18:59 -0800 (PST)
Date: Thu, 12 Feb 2026 21:18:58 -0800
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
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
Message-ID: <aY60QrE6DpXVecze@mini-arch>
References: <20260210-bpf-xdp-meta-rxcksum-v1-0-e5d55caa0541@kernel.org>
 <20260210-bpf-xdp-meta-rxcksum-v1-1-e5d55caa0541@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260210-bpf-xdp-meta-rxcksum-v1-1-e5d55caa0541@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770959940; x=1771564740; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=JgXT3I4sUDI0oaN+QbxtrFi8HM7j7HM1bT+EMzWKpeQ=;
 b=WPvD0tmLwUeKVXTFFiQ0YKtVqVOObcFG84TfwccyNwix9ke8tL95VuwPntkW2knXPo
 F2WCplICQ5e3FOdZyLKPcJzLMrWn2r/wbbMkuXE0CTrq55wy/RfpbIU9g0P05bslFXzI
 J+HwUeEUfeC1A3QkCluPXdyynfQGUjVd3bJt03RUWKElRoD6UaNy+LhAT0qt6lQ/DvuT
 FdgS2L4RABDe/rcSS32//jiF8pm+d7VWdTXc1OxauMqUfKGGPV0P7lhsh+o6aPJjU5Fe
 V9BTHTj2tKkRNuuKNICQwVT/mh/nBotZHEAvxNlzmIvF3Kbutu2dK/tZQ4d8lBRGh0EW
 lfMQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=WPvD0tmL
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/5] netlink: specs: Add XDP
 RX checksum capability to XDP metadata specs
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,cloudflare.com,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 563DB132FB6
X-Rspamd-Action: no action

On 02/10, Lorenzo Bianconi wrote:
> Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> checksum will be use by devices capable of exposing receive checksum
> result via bpf_xdp_metadata_rx_checksum().
> Moreover, introduce xmo_rx_checksum netdev callback in order allow the
> eBPF program bounded to the device to retrieve the RX checksum result
> computed by the hw NIC.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  Documentation/netlink/specs/netdev.yaml |  5 +++++
>  include/net/xdp.h                       | 14 ++++++++++++++
>  include/uapi/linux/netdev.h             |  3 +++
>  net/core/xdp.c                          | 29 +++++++++++++++++++++++++++++
>  tools/include/uapi/linux/netdev.h       |  3 +++
>  5 files changed, 54 insertions(+)
> 
> diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
> index 596c306ce52b8303b20680ff0cd34d4fd9db0e48..58eda634668a07860447a65d9fc2284839af6244 100644
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
> index aa742f413c358575396530879af4570dc3fc18de..9ab9ac10ae2074b70618a9d4f32544d8b9a30b63 100644
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
> @@ -643,12 +647,22 @@ enum xdp_rss_hash_type {
>  	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_L3_DYNHDR,
>  };
>  
> +enum xdp_checksum {
> +	XDP_CHECKSUM_NONE		= CHECKSUM_NONE,
> +	XDP_CHECKSUM_UNNECESSARY	= CHECKSUM_UNNECESSARY,
> +	XDP_CHECKSUM_COMPLETE		= CHECKSUM_COMPLETE,
> +	XDP_CHECKSUM_PARTIAL		= CHECKSUM_PARTIAL,
> +};
> +
>  struct xdp_metadata_ops {
>  	int	(*xmo_rx_timestamp)(const struct xdp_md *ctx, u64 *timestamp);
>  	int	(*xmo_rx_hash)(const struct xdp_md *ctx, u32 *hash,
>  			       enum xdp_rss_hash_type *rss_type);
>  	int	(*xmo_rx_vlan_tag)(const struct xdp_md *ctx, __be16 *vlan_proto,
>  				   u16 *vlan_tci);
> +	int	(*xmo_rx_checksum)(const struct xdp_md *ctx,
> +				   enum xdp_checksum *ip_summed,
> +				   u32 *cksum_meta);
>  };
>  
>  #ifdef CONFIG_NET
> diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
> index e0b579a1df4f2126acec6c44c299e97bbbefe640..d20da430cfd57bc26b5ea2f406c27b48d8a81693 100644
> --- a/include/uapi/linux/netdev.h
> +++ b/include/uapi/linux/netdev.h
> @@ -47,11 +47,14 @@ enum netdev_xdp_act {
>   *   hash via bpf_xdp_metadata_rx_hash().
>   * @NETDEV_XDP_RX_METADATA_VLAN_TAG: Device is capable of exposing receive
>   *   packet VLAN tag via bpf_xdp_metadata_rx_vlan_tag().
> + * @NETDEV_XDP_RX_METADATA_CHECKSUM: Device is capable of exposing receive
> + *   checksum result via bpf_xdp_metadata_rx_checksum().
>   */
>  enum netdev_xdp_rx_metadata {
>  	NETDEV_XDP_RX_METADATA_TIMESTAMP = 1,
>  	NETDEV_XDP_RX_METADATA_HASH = 2,
>  	NETDEV_XDP_RX_METADATA_VLAN_TAG = 4,
> +	NETDEV_XDP_RX_METADATA_CHECKSUM = 8,
>  };
>  
>  /**
> diff --git a/net/core/xdp.c b/net/core/xdp.c
> index fee6d080ee85fc2d278bfdddfd1365633058ec06..e51346ad3031f28d11c11f8205da6cd954da82de 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -961,6 +961,35 @@ __bpf_kfunc int bpf_xdp_metadata_rx_vlan_tag(const struct xdp_md *ctx,
>  	return -EOPNOTSUPP;
>  }
>  
> +/**
> + * bpf_xdp_metadata_rx_checksum - Read XDP frame RX checksum.
> + * @ctx: XDP context pointer.
> + * @ip_summed: Return value pointer indicating checksum result.
> + * @cksum_meta: Return value pointer indicating checksum result metadata.
> + *
> + * In case of success, ``ip_summed`` is set to the RX checksum result. Possible
> + * values are:
> + * ``XDP_CHECKSUM_NONE``
> + * ``XDP_CHECKSUM_UNNECESSARY``
> + * ``XDP_CHECKSUM_COMPLETE``
> + * ``XDP_CHECKSUM_PARTIAL``
> + *
> + * In case of success, ``cksum_meta`` contains the hw computed checksum value
> + * for ``XDP_CHECKSUM_COMPLETE`` or the ``csum_level`` for
> + * ``XDP_CHECKSUM_UNNECESSARY``. It is set to 0 for ``XDP_CHECKSUM_NONE`` and
> + * ``XDP_CHECKSUM_PARTIAL``.
> + *
> + * Return:
> + * * Returns 0 on success or ``-errno`` on error.
> + * * ``-EOPNOTSUPP`` : means device driver does not implement kfunc
> + * * ``-ENODATA``    : means no RX-timestamp available for this frame
> + */
> +__bpf_kfunc int bpf_xdp_metadata_rx_checksum(const struct xdp_md *ctx,
> +					     u8 *ip_summed, u32 *cksum_meta)
> +{

Any reason not to do enum xdp_checksum *ip_summed here as well?
