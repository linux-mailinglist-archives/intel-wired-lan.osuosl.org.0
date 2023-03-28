Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 236816CCC78
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 23:59:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6F2B61438;
	Tue, 28 Mar 2023 21:59:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6F2B61438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680040741;
	bh=xQdbZZbeRKAbWFDYx9lEEBtgznyq5zKDjADC/S0e0Ko=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c4vt6il8pYhAKrbIEA7QbJc6pObDFHqIk1o9BWiOtf+TzX5dmgZNL/TqWZHxXN+hg
	 1kBaStRlscPqN4Sbcv6ne4zQtecd/Uph6AnV4bKfjEeCLfUN9nN4ZHjJaEWHYQK28R
	 Clwe30R/Ahoa4fwGxLf0YZhEAtBWkFpEpvkntq1Z3JBnTvesLtS7mqGqwt77GKkYKt
	 EeCoIlUBJJC+zyjwnheRkmFY3LX8+8w3Sj8X98p6IMDPo59uaDg6Ccqm5LpL0d1X2A
	 bEQiXnvZQj8Ue+z9cn6blBYPvhcWIXzfDgxMuq+Va2b9f4YDBq6y3VjeLwJ7t0ThQX
	 lIHg+bMB5/iqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E6vj6TPvsAal; Tue, 28 Mar 2023 21:59:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DC7060E33;
	Tue, 28 Mar 2023 21:59:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DC7060E33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A04A1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 21:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62F6A60E33
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 21:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62F6A60E33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qCxQ2HwZmGNh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 21:58:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E27360BF4
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E27360BF4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 21:58:54 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 d12-20020a056a0024cc00b006256990dddeso6326964pfv.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 14:58:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680040734;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8yYfTRlVy8+a3jmgxVqWb3McvAzlOI0eWzfqMDXbjb8=;
 b=cemEhn/ycAKWk3yEXcB8tFYzPhJTgkXd/ssBjq86DIcMAvHdY/VGTP2JiRFS+ZZaaG
 6/mOK+eojkMpGypy9BwhLpg7lurV32KDWgOd5OiO96U627gWAS0egIgvpaD5h1xMCN74
 ZpXcJbXi733GDHMU/EEpFvuGx37/xxC03+lnCQ8knGUh+Rn5d7wK4DN5R7T89M+yKfEE
 pNL7/Fkf9hByFUvRIDOClCqfQMQhvWEwCdycJ3s4LLge6Rbi0Woep8hjR1MxBxzZ4HE+
 ZKQ1G+Csl7eQF2SIzfoetMsMu6/a+bduh/uHAyYHOZ84OyLo0/8k0V4+RJf4Vb9YXb5s
 EYAg==
X-Gm-Message-State: AAQBX9e3vVcvG4MbsZZzNXXYNYpNDxvIxLbw4Y7H2wSpSeUg3TV1ey3U
 IfW9NDdJUr7dDl9/oTHxCQ2EQyo=
X-Google-Smtp-Source: AKy350aeM1DJXTixgfwMy9Tmk+d6l64HsTntHsGf93MuO5cskm0HFqWDJcVdNNqftsvPIS5nvLMBCfg=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a05:6a00:1414:b0:625:96ce:f774 with SMTP id
 l20-20020a056a00141400b0062596cef774mr9000445pfu.0.1680040733979; Tue, 28 Mar
 2023 14:58:53 -0700 (PDT)
Date: Tue, 28 Mar 2023 14:58:52 -0700
In-Reply-To: <168003455815.3027256.7575362149566382055.stgit@firesoul>
Mime-Version: 1.0
References: <168003451121.3027256.13000250073816770554.stgit@firesoul>
 <168003455815.3027256.7575362149566382055.stgit@firesoul>
Message-ID: <ZCNjHAY81gS02FVW@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1680040734;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=8yYfTRlVy8+a3jmgxVqWb3McvAzlOI0eWzfqMDXbjb8=;
 b=lQWr9ruWMNQzFwN+NqZhX+ZsQWL/uLkGdtGW//t2mxE5ASz7x0PvQ2GqN8PtUnIYTi
 LisiskLnzotzHe2F6xJD5Rr2Tl1ymDuahcNDHi33lsFk1p+7Rf8iRzRM20VEreK5MVhO
 lOkTGxRbesKwLf1dV1fwYPNJp00cmV10bDcZQncPTL7hyy7th2Ukcvbks8ju/7eHY0XV
 joBA0mxBfn7WhixeqYWCwXMons8geOV7uCMeYFI9bwv8GxIUUGi7ltjPouJiyyks/fZB
 2OeVe0TN0eMB9dj2Ty6mrYZFIHX4udnYHVvpWFEaaNcVOMB2A+p/MNIf5xA6MnfRsMaQ
 v3WQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=lQWr9ruW
Subject: Re: [Intel-wired-lan] [PATCH bpf RFC 1/4] xdp: rss hash types
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
 ast@kernel.org, jesse.brandeburg@intel.com, edumazet@google.com,
 pabeni@redhat.com, yoong.siang.song@intel.com, kuba@kernel.org,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 03/28, Jesper Dangaard Brouer wrote:
> The RSS hash type specifies what portion of packet data NIC hardware used
> when calculating RSS hash value. The RSS types are focused on Internet
> traffic protocols at OSI layers L3 and L4. L2 (e.g. ARP) often get hash
> value zero and no RSS type. For L3 focused on IPv4 vs. IPv6, and L4
> primarily TCP vs UDP, but some hardware supports SCTP.

> Hardware RSS types are differently encoded for each hardware NIC. Most
> hardware represent RSS hash type as a number. Determining L3 vs L4 often
> requires a mapping table as there often isn't a pattern or sorting
> according to ISO layer.

> The patch introduce a XDP RSS hash type (xdp_rss_hash_type) that can both
> be seen as a number that is ordered according by ISO layer, and can be bit
> masked to separate IPv4 and IPv6 types for L4 protocols. Room is available
> for extending later while keeping these properties. This maps and unifies
> difference to hardware specific hashes.

Looks good overall. Any reason we're making this specific layout?
Why not simply the following?

enum {
	XDP_RSS_TYPE_NONE = 0,
	XDP_RSS_TYPE_IPV4 = BIT(0),
	XDP_RSS_TYPE_IPV6 = BIT(1),
	/* IPv6 with extension header. */
	/* let's note ^^^ it in the UAPI? */
	XDP_RSS_TYPE_IPV6_EX = BIT(2),
	XDP_RSS_TYPE_UDP = BIT(3),
	XDP_RSS_TYPE_TCP = BIT(4),
	XDP_RSS_TYPE_SCTP = BIT(5),
}

And then using XDP_RSS_TYPE_IPV4|XDP_RSS_TYPE_UDP vs XDP_RSS_TYPE_IPV6|XXX ?

> This proposal change the kfunc API bpf_xdp_metadata_rx_hash() to return
> this RSS hash type on success.

> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> ---
>   include/net/xdp.h |   51  
> +++++++++++++++++++++++++++++++++++++++++++++++++++
>   net/core/xdp.c    |    4 +++-
>   2 files changed, 54 insertions(+), 1 deletion(-)

> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index 5393b3ebe56e..63f462f5ea7f 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -8,6 +8,7 @@

>   #include <linux/skbuff.h> /* skb_shared_info */
>   #include <uapi/linux/netdev.h>
> +#include <linux/bitfield.h>

>   /**
>    * DOC: XDP RX-queue information
> @@ -396,6 +397,56 @@ XDP_METADATA_KFUNC_xxx
>   MAX_XDP_METADATA_KFUNC,
>   };

> +/* For partitioning of xdp_rss_hash_type */
> +#define RSS_L3		GENMASK(2,0) /* 3-bits = values between 1-7 */
> +#define L4_BIT		BIT(3)       /* 1-bit - L4 indication */
> +#define RSS_L4_IPV4	GENMASK(6,4) /* 3-bits */
> +#define RSS_L4_IPV6	GENMASK(9,7) /* 3-bits */
> +#define RSS_L4		GENMASK(9,3) /* = 7-bits - covering L4 IPV4+IPV6 */
> +#define L4_IPV6_EX_BIT	BIT(9)       /* 1-bit - L4 IPv6 with Extension  
> hdr */
> +				     /* 11-bits in total */
> +
> +/* The XDP RSS hash type (xdp_rss_hash_type) can both be seen as a  
> number that
> + * is ordered according by ISO layer, and can be bit masked to separate  
> IPv4 and
> + * IPv6 types for L4 protocols. Room is available for extending later  
> while
> + * keeping above properties, as this need to cover NIC hardware RSS  
> types.
> + */
> +enum xdp_rss_hash_type {
> +	XDP_RSS_TYPE_NONE            = 0,
> +	XDP_RSS_TYPE_L2              = XDP_RSS_TYPE_NONE,
> +
> +	XDP_RSS_TYPE_L3_MASK         = RSS_L3,
> +	XDP_RSS_TYPE_L3_IPV4         = FIELD_PREP_CONST(RSS_L3, 1),
> +	XDP_RSS_TYPE_L3_IPV6         = FIELD_PREP_CONST(RSS_L3, 2),
> +	XDP_RSS_TYPE_L3_IPV6_EX      = FIELD_PREP_CONST(RSS_L3, 4),
> +
> +	XDP_RSS_TYPE_L4_MASK         = RSS_L4,
> +	XDP_RSS_TYPE_L4_SHIFT        = __bf_shf(RSS_L4),
> +	XDP_RSS_TYPE_L4_MASK_EX      = RSS_L4 | L4_IPV6_EX_BIT,
> +
> +	XDP_RSS_TYPE_L4_IPV4_MASK    = RSS_L4_IPV4,
> +	XDP_RSS_TYPE_L4_BIT          = L4_BIT,
> +	XDP_RSS_TYPE_L4_IPV4_TCP     = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV4, 1),
> +	XDP_RSS_TYPE_L4_IPV4_UDP     = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV4, 2),
> +	XDP_RSS_TYPE_L4_IPV4_SCTP    = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV4, 3),
> +
> +	XDP_RSS_TYPE_L4_IPV6_MASK    = RSS_L4_IPV6,
> +	XDP_RSS_TYPE_L4_IPV6_TCP     = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV6, 1),
> +	XDP_RSS_TYPE_L4_IPV6_UDP     = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV6, 2),
> +	XDP_RSS_TYPE_L4_IPV6_SCTP    = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV6, 3),
> +
> +	XDP_RSS_TYPE_L4_IPV6_EX_MASK = L4_IPV6_EX_BIT,
> +	XDP_RSS_TYPE_L4_IPV6_TCP_EX  = XDP_RSS_TYPE_L4_IPV6_TCP |L4_IPV6_EX_BIT,
> +	XDP_RSS_TYPE_L4_IPV6_UDP_EX  = XDP_RSS_TYPE_L4_IPV6_UDP |L4_IPV6_EX_BIT,
> +	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP|L4_IPV6_EX_BIT,
> +};
> +#undef RSS_L3
> +#undef L4_BIT
> +#undef RSS_L4_IPV4
> +#undef RSS_L4_IPV6
> +#undef RSS_L4
> +#undef L4_IPV6_EX_BIT
> +
>   #ifdef CONFIG_NET
>   u32 bpf_xdp_metadata_kfunc_id(int id);
>   bool bpf_dev_bound_kfunc_id(u32 btf_id);
> diff --git a/net/core/xdp.c b/net/core/xdp.c
> index 7133017bcd74..81d41df30695 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -721,12 +721,14 @@ __bpf_kfunc int bpf_xdp_metadata_rx_timestamp(const  
> struct xdp_md *ctx, u64 *tim
>    * @hash: Return value pointer.
>    *
>    * Return:
> - * * Returns 0 on success or ``-errno`` on error.
> + * * Returns (positive) RSS hash **type** on success or ``-errno`` on  
> error.
> + * * ``enum xdp_rss_hash_type`` : RSS hash type
>    * * ``-EOPNOTSUPP`` : means device driver doesn't implement kfunc
>    * * ``-ENODATA``    : means no RX-hash available for this frame
>    */
>   __bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32  
> *hash)
>   {
> +	BTF_TYPE_EMIT(enum xdp_rss_hash_type);
>   	return -EOPNOTSUPP;
>   }



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
