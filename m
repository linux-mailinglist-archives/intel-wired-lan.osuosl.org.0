Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SI/zKlsPlWlsKgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 02:01:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BDA1526E8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 02:01:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BE31403F8;
	Wed, 18 Feb 2026 01:01:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dq5WRMGmr4wD; Wed, 18 Feb 2026 01:01:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73EC740437
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771376472;
	bh=SHDJ91Fh3k4sfksoLBobkNabAM6CU9B6Swq8q++g+cs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m73JeSltFkGUhgasnQR/Kl0QUmsEmst/ypQvCOGl5b/5+cmQYWzkurgqFlmeu9XON
	 8yG+IZ2BobxNV1DkDChc2oS1Me+BOPcLwFT5Tk8MRyV3N+eH3kKsfT2cxd70NjJUAO
	 FWiGazvaoFusjRea9/vSONX/5hCuo7nV8S9KJvE/bWVCfPUlKtGtxhrEX5vvluK+w1
	 sokDwA7cuAVogkyLUdYBgmKgzix0/QZ1E9Vxry9Lcd/DFufp+VbHc8MRfOSKNF7lNG
	 6p9trURr1r4cVS9+rHsx9+pkjIMjknYoyDpZgMt+9TUlRsUZErKzCyoNPtZQwa9I46
	 gYLHaGGA941mQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73EC740437;
	Wed, 18 Feb 2026 01:01:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 13713270
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 01:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 04C17403E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 01:01:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ekaxV92-EhJU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 01:01:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1234; helo=mail-dl1-x1234.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3B5074034A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B5074034A
Received: from mail-dl1-x1234.google.com (mail-dl1-x1234.google.com
 [IPv6:2607:f8b0:4864:20::1234])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B5074034A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 01:01:10 +0000 (UTC)
Received: by mail-dl1-x1234.google.com with SMTP id
 a92af1059eb24-1275750cfc7so1076513c88.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 17:01:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771376469; x=1771981269;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SHDJ91Fh3k4sfksoLBobkNabAM6CU9B6Swq8q++g+cs=;
 b=k+B+/fF3FGpwShDbSC1I8uWr/KkQF9vYwRcEUzY1WWM9d7Q3rCV2VatO0yjyPFiatm
 lEuhf0KI8WkMrW9XSxLQiGLjNQIJ0xA/TFHM7b4swP0YFhV3YRND9AWRvYPkg7m77sXd
 5LL/zkmerEOsjJqdf99xtCMI+pOHs2urMcHavtoNxRpB/9i7ZXkbo18by27J/zZKl9lI
 Z9kL3B8wq0Pqc6uErSwrUpQQxYwbSBjUwiqVrCFgBRWysz32cJZ6LPLpPkoYClztbFXd
 yWTKXMFn0jtOnZ3ogTMTqv5XnQ0mPL8C6aalmKjEUQXkZlmn7pBrE/cPUjAUisTK9U8A
 a+jA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUtjYXw+YkcAReweH18Expexxf/wmc0cGuUT3tmMhEcKfE0irJQTi6DGiSDoHJe2cfRklkHl1U1g+P6PFUulaw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxqTaObrfINXZJYp7WzbJeNzt8908kBf6GUSXl/OpGLCLC9T0wd
 BFluSip1UTZoKoifpYGQ8bwpCY2roTUdEORn62uag+Rt2R9HxGsbqlU=
X-Gm-Gg: AZuq6aI0XizaXIeL/RUR2gLOBtiB64kf8D3yrGtTvSiIqUtpqryRH9Z1o2kbToVqjhR
 ds6wwUfYnMXspjeI2JqbzEwOyr4xDdrDaMkJxyz+epXiR5E10p4g1ktyW5XTPn+4CT0PtLjWKok
 IR9x+PMhRTqZdlUz3cdbNP7Lvh/iT299StiqiI1e/cvV5gkY85r0hrsqb1xIf5IO4VdQcu2VNs7
 OKSScrMh9z0puk0hn/0IJIJpwQw8R4DGCHs0O9ucipNUuHIBe/4pakE4j/g920vprHuZhH794wv
 AgQ/Vm/wNbYAHmdGj4QHU/QVa7P9OTYvbKomoJTqxUeYdc6uHzlaQh7/6tD5pqJoG9ocqM6STcq
 chMnQOavvOgHdhkqN4MMW3M37J8ouPNYnI80o5yTvcnBTq278NnNo5CCenLEdFKCnb4y6o3a3lM
 gh4FoD1s1q9jxJU33YE3Dhp4qvI6dpcVZodN8q6fa47NZB88TeoMe4h0nuANr52JhFCUPljUujV
 GK3jz1pdKqqyaF1Bg==
X-Received: by 2002:a05:7022:1707:b0:124:9dea:188d with SMTP id
 a92af1059eb24-12759a709cfmr63162c88.30.1771376468918; 
 Tue, 17 Feb 2026 17:01:08 -0800 (PST)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-12742c6dc70sm16497835c88.8.2026.02.17.17.01.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Feb 2026 17:01:08 -0800 (PST)
Date: Tue, 17 Feb 2026 17:01:07 -0800
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Jesper Dangaard Brouer <hawk@kernel.org>
Cc: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
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
Message-ID: <aZUPUwYMRNXSg-eI@mini-arch>
References: <20260217-bpf-xdp-meta-rxcksum-v3-0-30024c50ba71@kernel.org>
 <20260217-bpf-xdp-meta-rxcksum-v3-1-30024c50ba71@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260217-bpf-xdp-meta-rxcksum-v3-1-30024c50ba71@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1771376469; x=1771981269; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=SHDJ91Fh3k4sfksoLBobkNabAM6CU9B6Swq8q++g+cs=;
 b=NVJZKrbAyHf3dGoQxgSeCQ/Fe6PyAWHsSU6PDuQlkAHN/D8T6CpS/wsgtYASm5ixPr
 SjPr4zXOGEYAH3t1VnO8psY+CxiZ6lEyiLG7GmDAwqI0O6svuAJGOn8/nzREm2DshHA0
 HDdYLvTDgbX2qMkEKjvZAZfOBDjq0yBK2/imDpVS3dgwLm2bu7sZd707Pr4/3/e8PwBV
 kSEJVFsLtLO5tSH0Y4CdDlVoxZQe+P4oEMFSNIooNyDMBr36/6kcEeLYXPdD3hWjRI5g
 8viX9aYfy8U7GZEXL4wiKqo2BdwRq+72l0afeNRmIoE0EjuDLRJuXXTILLIcMUmJYUx2
 xRGA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=NVJZKrbA
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:hawk@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:lorenzo@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,cloudflare.com,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A1BDA1526E8
X-Rspamd-Action: no action

On 02/17, Lorenzo Bianconi wrote:
> Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> checksum will be use by devices capable of exposing receive checksum
> result via bpf_xdp_metadata_rx_checksum().
> Moreover, introduce xmo_rx_checksum netdev callback in order to allow
> the eBPF program bound to the device to retrieve the RX checksum result
> computed by the hw NIC.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  Documentation/netlink/specs/netdev.yaml |  5 +++++
>  include/net/xdp.h                       | 13 +++++++++++++
>  include/uapi/linux/netdev.h             |  3 +++
>  net/core/xdp.c                          | 28 ++++++++++++++++++++++++++++
>  tools/include/uapi/linux/netdev.h       |  3 +++
>  5 files changed, 52 insertions(+)
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
> index aa742f413c358575396530879af4570dc3fc18de..00abb2e1e85514b4080d0e4e6e3b8f5f67f73b61 100644
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
> @@ -643,12 +647,21 @@ enum xdp_rss_hash_type {
>  	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_L3_DYNHDR,
>  };
>  
> +enum xdp_checksum {
> +	XDP_CHECKSUM_NONE		= CHECKSUM_NONE,
> +	XDP_CHECKSUM_UNNECESSARY	= CHECKSUM_UNNECESSARY,
> +	XDP_CHECKSUM_COMPLETE		= CHECKSUM_COMPLETE,
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
> index fee6d080ee85fc2d278bfdddfd1365633058ec06..7d1e08d8ab4151ab42c91203def2afafc66d3149 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -961,6 +961,34 @@ __bpf_kfunc int bpf_xdp_metadata_rx_vlan_tag(const struct xdp_md *ctx,
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
> + *
> + * In case of success, ``cksum_meta`` contains the hw computed checksum value
> + * for ``XDP_CHECKSUM_COMPLETE`` or the ``csum_level`` for
> + * ``XDP_CHECKSUM_UNNECESSARY``. It is set to 0 for ``XDP_CHECKSUM_NONE``

The only thing I'm still not sure about is the csum_level and whether
we need to export it or just start with csum_level=0 and extend later
when needed. The rest looks good.

Jesper, Lorenzo mentioned that you might need it? Can you clarify?
