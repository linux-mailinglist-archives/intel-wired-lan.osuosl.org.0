Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8FC6CF199
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 20:00:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C43BC6155F;
	Wed, 29 Mar 2023 18:00:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C43BC6155F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680112813;
	bh=UAsZ+zmpxFUj12EpfDvENLlFMx54zxApN2swGWs1Z1M=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B2kfjFpdUc32Ad0Xe7ey8H3uIyt72kIGMeM+XHfoHdeoo4yp06VlSmpU4D/Ln8Qqy
	 MQMb1f7hO3E57wECdiaVnB0TCYSxP75HpNsXKTE3vbJr11atuXcEMlywG67EQCn+6b
	 L15jxy8etVUU07Cfd8P4pEoM6avT5uuSn6xUa1JKfmKMR+xE73P2x8vf9wj3F3I+06
	 jrHSW5emaWASuQHCBL6oY7IUVK/qbREKoSTybkXU5dQashh9AY6UKRmRnzVWCIHtaB
	 2AAMdtIrnEacJQAr1rt6GjXlOvKNMyGHzcBukiWPXQnO1h4Nyh885bco/S4ctpZln1
	 EmUHoLMMi/d6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5PgDFdGpf9Rp; Wed, 29 Mar 2023 18:00:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52FC660A8C;
	Wed, 29 Mar 2023 18:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52FC660A8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4FD061BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 18:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2563C41D93
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 18:00:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2563C41D93
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V7n2oB-haW0v for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 18:00:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D84FC41D86
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D84FC41D86
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 18:00:04 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-554-oE11YSncMFSvy-YhYHdhBQ-1; Wed, 29 Mar 2023 14:00:02 -0400
X-MC-Unique: oE11YSncMFSvy-YhYHdhBQ-1
Received: by mail-ed1-f69.google.com with SMTP id
 s30-20020a508d1e000000b005005cf48a93so23325777eds.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 11:00:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680112801;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2Ex4qAQI8jFlphiortwiuaSdJ0uJRftZB4Xwk8I+YtM=;
 b=AWs9JBDDFWYoiEH649z58IWrKeMCCPfjPDdQHIC6MpG70NSWOYDVQvRd4IG5KZHxvf
 mvRSYtVG+Tssu8cW0oobMDYoQkH/wDdQ3XxJHEA4cCNOCSJfCoP+S1NVCs+/vm6TByLL
 5fY/cZI+kCGscftKwQBWvFFoAATki1HCopi2GeiJSQ0Y6ec4LRroQO6emtUVFGcGYvoB
 Lk7FKBvqQtQq882AKdMs1wJKq9A9YUzIvUGFx9P39V9BUm0HVecTEdICJQoRsMWmVxKQ
 zHu5qzW3yCGQM4bhfGTqIAErlmlMjvJ3569zgemMeY03OjF8n6ZB+v8f/zArv5TozGux
 22Bw==
X-Gm-Message-State: AAQBX9edDXfPtPBr0xCrjo1Zi8AU5Vh64YEiPMGHcj5q4EsjwJTNCFjC
 Dg2VJvANlfSbdPIwLF/mTQ2++RLpTxC0lTjPcg1ZhQq5QYro3NlhbJg074R+kUsurbDCg65z84O
 WgEeL1fPLIc7zeGAEubjLw60VYJ7yCA==
X-Received: by 2002:a05:6402:1841:b0:4fc:782c:dca3 with SMTP id
 v1-20020a056402184100b004fc782cdca3mr20131452edy.28.1680112801222; 
 Wed, 29 Mar 2023 11:00:01 -0700 (PDT)
X-Google-Smtp-Source: AKy350Y43ETxBXALjoHl1MnyGSZbIV9TyYcmvZo2zPeWa/8U1bkANiEzdQlN1uO708Vi3zg4Z4PtFg==
X-Received: by 2002:a05:6402:1841:b0:4fc:782c:dca3 with SMTP id
 v1-20020a056402184100b004fc782cdca3mr20131432edy.28.1680112800940; 
 Wed, 29 Mar 2023 11:00:00 -0700 (PDT)
Received: from [192.168.42.100] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 u2-20020a50a402000000b004c4eed3fe20sm17426270edb.5.2023.03.29.10.59.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Mar 2023 11:00:00 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <e0363f67-34d9-103f-eac7-e3ab71f87c0b@redhat.com>
Date: Wed, 29 Mar 2023 19:59:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>
References: <168010726310.3039990.2753040700813178259.stgit@firesoul>
 <168010734324.3039990.16454026957159811204.stgit@firesoul>
In-Reply-To: <168010734324.3039990.16454026957159811204.stgit@firesoul>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680112803;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2Ex4qAQI8jFlphiortwiuaSdJ0uJRftZB4Xwk8I+YtM=;
 b=ZiYLq3+5yRNeM5XskRLfi31HyfqY+ah9iB+lohhNJCgM4xQgKfYCsZUeazxQ7e0nLvXyLN
 dzPNBz4La7v/QqqS41q4rNsjuXwjoiz7YrJMxmTX1v4pEWwZA2ppawYZqw0e2Ps008f8XW
 UYMaeO0i2xPk1F3lNV5ZqKGSdCJd6Zk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZiYLq3+5
Subject: Re: [Intel-wired-lan] [PATCH bpf RFC-V2 1/5] xdp: rss hash types
 representation
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, pabeni@redhat.com, yoong.siang.song@intel.com,
 brouer@redhat.com, boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, edumazet@google.com,
 hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 29/03/2023 18.29, Jesper Dangaard Brouer wrote:
> The RSS hash type specifies what portion of packet data NIC hardware used
> when calculating RSS hash value. The RSS types are focused on Internet
> traffic protocols at OSI layers L3 and L4. L2 (e.g. ARP) often get hash
> value zero and no RSS type. For L3 focused on IPv4 vs. IPv6, and L4
> primarily TCP vs UDP, but some hardware supports SCTP.
> 
> Hardware RSS types are differently encoded for each hardware NIC. Most
> hardware represent RSS hash type as a number. Determining L3 vs L4 often
> requires a mapping table as there often isn't a pattern or sorting
> according to ISO layer.
> 
> The patch introduce a XDP RSS hash type (xdp_rss_hash_type) that can both
> be seen as a number that is ordered according by ISO layer, and can be bit
> masked to separate IPv4 and IPv6 types for L4 protocols. Room is available
> for extending later while keeping these properties. This maps and unifies
> difference to hardware specific hashes.
> 
> This proposal change the kfunc API bpf_xdp_metadata_rx_hash() to return
> this RSS hash type on success.
> 
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> ---
>   include/net/xdp.h |   76 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>   net/core/xdp.c    |    4 ++-
>   2 files changed, 79 insertions(+), 1 deletion(-)
> 
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index 5393b3ebe56e..1b2b17625c26 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -8,6 +8,7 @@
>   
>   #include <linux/skbuff.h> /* skb_shared_info */
>   #include <uapi/linux/netdev.h>
> +#include <linux/bitfield.h>
>   
>   /**
>    * DOC: XDP RX-queue information
> @@ -396,6 +397,81 @@ XDP_METADATA_KFUNC_xxx
>   MAX_XDP_METADATA_KFUNC,
>   };
>   
> +/* For partitioning of xdp_rss_hash_type */
> +#define RSS_L3		GENMASK(2,0) /* 3-bits = values between 1-7 */
> +#define L4_BIT		BIT(3)       /* 1-bit - L4 indication */
> +#define RSS_L4_IPV4	GENMASK(6,4) /* 3-bits */
> +#define RSS_L4_IPV6	GENMASK(9,7) /* 3-bits */
> +#define RSS_L4		GENMASK(9,3) /* = 7-bits - covering L4 IPV4+IPV6 */
> +#define L4_IPV6_EX_BIT	BIT(9)       /* 1-bit - L4 IPv6 with Extension hdr */
> +				     /* 11-bits in total */

Please ignore above lines in review ... they should have been deleted,
the new partitioning uses the enum/defines below.

> +
> +/* Lower 4-bits value of xdp_rss_hash_type */
> +enum xdp_rss_L4 {
> +	XDP_RSS_L4_MASK		= GENMASK(3,0), /* 4-bits = values between 0-15 */
> +	XDP_RSS_L4_NONE		= 0, /* Not L4 based hash */
> +	XDP_RSS_L4_ANY		= 1, /* L4 based hash but protocol unknown */
> +	XDP_RSS_L4_TCP		= 2,
> +	XDP_RSS_L4_UDP		= 3,
> +	XDP_RSS_L4_SCTP		= 4,
> +	XDP_RSS_L4_IPSEC	= 5, /* L4 based hash include IPSEC SPI */
> +/*
> + RFC: We don't care about vasting space, then we could just store the
> + protocol number (8-bits) directly. See /etc/protocols
> +	XDP_RSS_L4_TCP		= 6,
> +	XDP_RSS_L4_UDP		= 17,
> +	XDP_RSS_L4_SCTP		= 132,
> +	XDP_RSS_L4_IPSEC_ESP	= 50, // Issue: mlx5 didn't say ESP or AH
> +	XDP_RSS_L4_IPSEC_AH	= 51, // both ESP+AH just include SPI in hash
> + */
> +};
> +
> +/* Values shifted for use in xdp_rss_hash_type */
> +enum xdp_rss_L3 {
> +	XDP_RSS_L3_MASK		= GENMASK(5,4), /* 2-bits = values between 1-3 */
> +	XDP_RSS_L3_IPV4		= FIELD_PREP_CONST(XDP_RSS_L3_MASK, 1),
> +	XDP_RSS_L3_IPV6		= FIELD_PREP_CONST(XDP_RSS_L3_MASK, 2),
> +};
> +
> +/* Bits shifted for use in xdp_rss_hash_type */
> +enum xdp_rss_bit {
> +	XDP_RSS_BIT_MASK	= GENMASK(7,6), /* 2-bits */
> +	/* IPv6 Extension Hdr */
> +	XDP_RSS_BIT_EX = FIELD_PREP_CONST(XDP_RSS_BIT_MASK, BIT(0)),
> +	/* XDP_RSS_BIT_VLAN ??? = FIELD_PREP_CONST(XDP_RSS_BIT_MASK, BIT(1)), */
> +};
> +
> +/* RSS hash type combinations used for driver HW mapping */
> +enum xdp_rss_hash_type {
> +	XDP_RSS_TYPE_NONE            = 0,
> +	XDP_RSS_TYPE_L2              = XDP_RSS_TYPE_NONE,
> +
> +	XDP_RSS_TYPE_L3_MASK         = XDP_RSS_L3_MASK,
> +	XDP_RSS_TYPE_L3_IPV4         = XDP_RSS_L3_IPV4,
> +	XDP_RSS_TYPE_L3_IPV6         = XDP_RSS_L3_IPV6,
> +	XDP_RSS_TYPE_L3_IPV6_EX      = XDP_RSS_L3_IPV6 | XDP_RSS_BIT_EX,
> +
> +	XDP_RSS_TYPE_L4_MASK         = XDP_RSS_L4_MASK,
> +	XDP_RSS_TYPE_L4_ANY          = XDP_RSS_L4_ANY,
> +	XDP_RSS_TYPE_L4_IPV4_TCP     = XDP_RSS_L3_IPV4 | XDP_RSS_L4_TCP,
> +	XDP_RSS_TYPE_L4_IPV4_UDP     = XDP_RSS_L3_IPV4 | XDP_RSS_L4_UDP,
> +	XDP_RSS_TYPE_L4_IPV4_SCTP    = XDP_RSS_L3_IPV4 | XDP_RSS_L4_SCTP,
> +
> +	XDP_RSS_TYPE_L4_IPV6_TCP     = XDP_RSS_L3_IPV6 | XDP_RSS_L4_TCP,
> +	XDP_RSS_TYPE_L4_IPV6_UDP     = XDP_RSS_L3_IPV6 | XDP_RSS_L4_UDP,
> +	XDP_RSS_TYPE_L4_IPV6_SCTP    = XDP_RSS_L3_IPV6 | XDP_RSS_L4_UDP,
> +
> +	XDP_RSS_TYPE_L4_IPV6_TCP_EX  = XDP_RSS_TYPE_L4_IPV6_TCP |XDP_RSS_BIT_EX,
> +	XDP_RSS_TYPE_L4_IPV6_UDP_EX  = XDP_RSS_TYPE_L4_IPV6_UDP |XDP_RSS_BIT_EX,
> +	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP|XDP_RSS_BIT_EX,
> +};
> +#undef RSS_L3
> +#undef L4_BIT
> +#undef RSS_L4_IPV4
> +#undef RSS_L4_IPV6
> +#undef RSS_L4
> +#undef L4_IPV6_EX_BIT

All the undef's are also unncecessary now.

> +
>   #ifdef CONFIG_NET
>   u32 bpf_xdp_metadata_kfunc_id(int id);
>   bool bpf_dev_bound_kfunc_id(u32 btf_id);
> diff --git a/net/core/xdp.c b/net/core/xdp.c
> index 7133017bcd74..81d41df30695 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -721,12 +721,14 @@ __bpf_kfunc int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx, u64 *tim
>    * @hash: Return value pointer.
>    *
>    * Return:
> - * * Returns 0 on success or ``-errno`` on error.
> + * * Returns (positive) RSS hash **type** on success or ``-errno`` on error.
> + * * ``enum xdp_rss_hash_type`` : RSS hash type
>    * * ``-EOPNOTSUPP`` : means device driver doesn't implement kfunc
>    * * ``-ENODATA``    : means no RX-hash available for this frame
>    */
>   __bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32 *hash)
>   {
> +	BTF_TYPE_EMIT(enum xdp_rss_hash_type);
>   	return -EOPNOTSUPP;
>   }
>   
> 
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
