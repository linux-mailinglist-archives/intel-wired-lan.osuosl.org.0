Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67997BA260A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 06:21:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B05E7828EF;
	Fri, 26 Sep 2025 04:21:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vL3N3722JFa4; Fri, 26 Sep 2025 04:21:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F32FF84936
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758860463;
	bh=sXTN/i9kgbuo8arMMY6rYBFHJ+Czs9wquc3zmOOkLw8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YFXlSllQmu5cmR4sKrVZRibAxkY3zrpzFLWDh9/au4gwgfbGDNVX6WsRR/mtDy3uQ
	 VhBZvDbSb7ETgub1q22VDRn7BfPtXKHHOEVM+Pkas/uNTOVOocreHofxzO0Azlqr1D
	 32I6NSPM1EHF1kqyILE9k16T96URsl7/yvKNw15aEAV9iEze3R9akd6KPrhxy1fNBv
	 2EM9O2W7AYKeVwS7TBxsVTn//fJRJwWeFRSojzq5LjDqtkpDZ8TTprDPYFpC0MLyBk
	 lXbrpk1BJb/2AjPPGwuxEV618m/0vAuGTmN/DJXsWxZdKdIUZlxOwmGbuLZPBE8C70
	 wpOSynH9mnY3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F32FF84936;
	Fri, 26 Sep 2025 04:21:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 82DC212D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 04:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77B3A41F80
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 04:21:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OzNwIW557FVt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 04:20:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8558B41F7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8558B41F7C
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8558B41F7C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 04:20:59 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-27eceb38eb1so20243595ad.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 21:20:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758860459; x=1759465259;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sXTN/i9kgbuo8arMMY6rYBFHJ+Czs9wquc3zmOOkLw8=;
 b=KbYOo0a6s73xvupin9/qJVt+N5bU0ruujn9GWwJBaigbknGPcnL7nWLFAS6cowpDjo
 C6/XnvcSr2dGxAMiho+YuD9VTaZvZN64MCQLhXcBA37l9duAD8qmdNpMBx+Wnm/y28ud
 lbARhuBeKiMLGDlsb/swFZydyE1lzaiYKRLUArrjGEBuDfpeYhJTMtKT10YltJGUTeTF
 bPFWA6bp8Agzw1TtHMoTG9+gxjQ25nQ9SxP/99DPhuK5t++8FkujKCvchnZjZtq5n5v+
 eItMcXcjhgXDMsWfKU8RCG6samxq1IYxe0hxBsUqQti4fRJzsS+p7mxPkecv08cUGZC4
 Kh+Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCV3iwQqYaVErGqQkEVGhDYgWfgkOtnx+UpKypwuN5HAOd+HWLKAlqC3nNVg+2n0WjshUt3LskGPWHNthPTzPfQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy0W3XbRml1NrmIKolELWdfL3PVp3nn+prq1d/1gM079hpZaJT4
 jSRiMJtFB9IZjmSIOlrYqrQ56/NIbwDj0zmPQkto1HTqVQcY55F+puE=
X-Gm-Gg: ASbGncsbxxI1XVjswlH8OD5Y/MO2/7g6BhJNK3UfaE+YwwINebHeFQM5F+yKmeaj3pe
 QBNb4++ueMR2Ik+GWd5/V+FlLAxTlNC/LhOguPHrcZZDnsvVstLJRFZ90N/phRWxq8k5HUVH1X7
 uLghyrm2W5WXMrx/kpsxPD8ENZpBjH8A9yrcDYcGjAXdGAarFnt7GXzxDpLZQMatYRDr/FAZ2Yp
 3WuhBAmpCjExyOPGvjbYN9yrAT7iMI2Mq9Zgv7DqiN5e1tFU2nh9+6w3qEF2uZzWACBXAsA4NaX
 A0mt3WJP6FPHJlTFzuRsbSbT8Xs6knGkuL7dpi9VhpeBx2XnK+RAUwGBOFlbU+N/Q8OCu0JClLs
 zurmUVbWVNvnlwUbmjHWxwikReWp9SbBK5Qr7sFUG5CER6lzeZd6fYeI7+aZBa96Rl44vOllhzE
 8f7Xeq8XRA0SjjjkHOtjZ+4n0omKPsCrvKbvQd26Xj2wH+QYVKjPavLXPjGRkJqd4jGXt4S7pJF
 haD
X-Google-Smtp-Source: AGHT+IGHgag9Cvz1ZRdx/09/Op9JnLEt1h9vJf23LW70kwNFj3KdcgxMtOnNN6rMFnuWqeU3odbSTw==
X-Received: by 2002:a17:902:cccf:b0:252:50ad:4e6f with SMTP id
 d9443c01a7336-27ed4adad59mr69191975ad.54.1758860458545; 
 Thu, 25 Sep 2025 21:20:58 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-27ed6700ccdsm40125045ad.37.2025.09.25.21.20.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Sep 2025 21:20:58 -0700 (PDT)
Date: Thu, 25 Sep 2025 21:20:57 -0700
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
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <aNYUqdaIJV1cvFCb@mini-arch>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758860459; x=1759465259; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=sXTN/i9kgbuo8arMMY6rYBFHJ+Czs9wquc3zmOOkLw8=;
 b=iRV4GR+HBEKBZtyQaXEoD0Rbn079kvXnjxjbKEy7Hd7YofEW91mEBLYF/C+q5rTAog
 dsebcDKBGSNj6SlFo2MctiznW8LZKmD/IrHQTIDraOGz1JaooXa9lDc0OlYQrV/xCx4T
 FH44OHn/KLpZqukIsKoEvgbLrP2FnWyCjqj/Ji1Fg/xWauN/6Bl4biAi5JCsE8C6GVNT
 jbwbl4Q6sMJHzRiNiTmoKwzagyWwms5ReTv/QdPFjEMxDyFKeXdTAKERSiFrnH0EJOHh
 P+Q/RkHADO4gSOBJeJOKBbgQ46oWa7K2oiTPXMh9/mwCwWpItGSRGKd6PhlKmKEOtwGn
 QjBg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=iRV4GR+H
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

On 09/25, Lorenzo Bianconi wrote:
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
>  net/core/xdp.c                          | 29 +++++++++++++++++++++++++++++
>  3 files changed, 48 insertions(+)
> 
> diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
> index e00d3fa1c152d7165e9485d6d383a2cc9cef7cfd..00699bf4a7fdb67c6b9ee3548098b0c933fd39a4 100644
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

Btw, might be worth mentioning, awhile ago we had settled on a smaller set of
exposed types:

https://lore.kernel.org/netdev/20230811161509.19722-13-larysa.zaremba@intel.com/

Maybe go through the previous postings and check if the arguments are
still relevant? (or explain why we want more checksum now)
