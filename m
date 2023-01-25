Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 335E567AFC7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 11:36:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7A3582241;
	Wed, 25 Jan 2023 10:36:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7A3582241
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674642975;
	bh=ff9HmHLz+/8nyqXB5FJFmF382ZrD8qADfxR3mF2075A=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=USx1Eie7mcGzgGm97hQzCVb6r7wxV8cPXBqiFkLKJr5LQH4fRsXxEKGoK1VL4NxHd
	 5asCafiOXtOtBv4dTptksv8+neEFuDmt4BjToK/X0uIGnfHz67GI7c0ghbf1if5m4h
	 OzAZk0aBkbmj3JOsf4CoBnjTOmTZAuM2E5nIoDZYDB1ciGbJSeL6eBvcw9vQarQqL9
	 hYVwhxmhsDw5PHHDidGIcTj9nVXPcveGxrvPNNtY0/nA6iYPqFNriw7IMQ+uRgswHO
	 +IO5yYHc53PusxZbpQ3yJyIv5qON1VgcnC55+Mblo8akqp4vShKeMTh5m7FrZI0yQH
	 rKKs4vtgF9n8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eNwzE3h1nErG; Wed, 25 Jan 2023 10:36:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A642E82145;
	Wed, 25 Jan 2023 10:36:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A642E82145
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5FE81BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE74841833
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:36:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE74841833
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8_xRRbMlk2uo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 10:36:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE21541860
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE21541860
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:36:04 +0000 (UTC)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-196-4HePvaMuPwWslOy45GCbgA-1; Wed, 25 Jan 2023 05:36:02 -0500
X-MC-Unique: 4HePvaMuPwWslOy45GCbgA-1
Received: by mail-ed1-f71.google.com with SMTP id
 s14-20020a056402520e00b0049e0bea1c3fso12586283edd.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 02:36:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=q11Y6sRP5eB+2E1lyhg8TSSmTlKL355gp5xgzQC5zjU=;
 b=2y3uXZFE2oj/BTJ5BvcvcJJ9e35XK/2qKi94JdYAU8taq3sImXcCUCuvNXnJxNnQDN
 agYWTZGEYt4tjyhuASxVL5pe6oSr2qEpTAAaEDpAoa+y+Z5/qq2slSH7knSHFF8qQJ78
 qRcEE0m/dE1fYz75e0p3aUeyOFMUjxq++Cr2FNc7JDM+MpxLw/LjUOzAJA8vPt6Oipgg
 OteW+qQY6l4t3gHZwcozJftyCKh3zty6c5f3cqcOxX90TLxtTWmrY2w6/HI95IWhYqwr
 LCSo7u+kfgZR0fhOrSAu5k4KZL27xM6m+ULWxPN5RwE2U/zWApoB6bJpJrBVyIYMNGfC
 2yRQ==
X-Gm-Message-State: AFqh2kqBL1hsZCeZyy1/k8acdEI3tr67ersF2cRwzTz0hBYRduugpY3a
 tVxUltb+uhujHEStnilRyiSXKKzUb6ZKR3p4cCzPIcFYLIu3hywIUpTjzDS0J5sFQQPYfaMh+Pq
 D6VojRJoD+fXvrWbFpDX2Hj4lTM3vgw==
X-Received: by 2002:a50:ff17:0:b0:499:d208:e8f4 with SMTP id
 a23-20020a50ff17000000b00499d208e8f4mr32863554edu.19.1674642960970; 
 Wed, 25 Jan 2023 02:36:00 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsDrWe+0gNE++0AFOt7XfTm42J1viN/NP1zx2tX/yL5luN1ZDInl8rOSE8HEiSjpLfJOIWeTw==
X-Received: by 2002:a50:ff17:0:b0:499:d208:e8f4 with SMTP id
 a23-20020a50ff17000000b00499d208e8f4mr32863520edu.19.1674642960737; 
 Wed, 25 Jan 2023 02:36:00 -0800 (PST)
Received: from [192.168.41.200] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 j21-20020a17090686d500b007c1675d2626sm2168222ejy.96.2023.01.25.02.35.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Jan 2023 02:36:00 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <d3a041f3-5fba-a114-1796-492b68a8c011@redhat.com>
Date: Wed, 25 Jan 2023 11:35:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Lorenzo Bianconi <lorenzo@kernel.org>, bpf@vger.kernel.org
References: <cover.1674606193.git.lorenzo@kernel.org>
 <46f49d11939557aee7315bc23589cf261c19b494.1674606198.git.lorenzo@kernel.org>
In-Reply-To: <46f49d11939557aee7315bc23589cf261c19b494.1674606198.git.lorenzo@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1674642963;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=q11Y6sRP5eB+2E1lyhg8TSSmTlKL355gp5xgzQC5zjU=;
 b=EcY754DihpdpviHwT1PKxdAaNe6ppj1Lqcj7QY/p3O8slW3pOEgj6zEdwdIiVqWSJb/R5Z
 o33zBHnlAmSp0wAuJz8RDlXJnMLK6lCtucOxtOY2B/G+J2DRrIkfPK6P9MGmU9uRIWhy14
 e03bR3TeeNOCzNQ0tqw1xYxxADfqssA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EcY754Di
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf-next 6/8] bpf: devmap: check
 XDP features in __xdp_enqueue routine
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, simon.horman@corigine.com,
 gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 25/01/2023 01.33, Lorenzo Bianconi wrote:
> Check if the destination device implements ndo_xdp_xmit callback relying
> on NETDEV_XDP_ACT_NDO_XMIT flags. Moreover, check if the destination device
> supports XDP non-linear frame in __xdp_enqueue and is_valid_dst routines.
> This patch allows to perform XDP_REDIRECT on non-linear XDP buffers.
> 
> Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   kernel/bpf/devmap.c | 16 +++++++++++++---
>   net/core/filter.c   | 13 +++++--------
>   2 files changed, 18 insertions(+), 11 deletions(-)
> 

LGTM
Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>

> diff --git a/kernel/bpf/devmap.c b/kernel/bpf/devmap.c
> index d01e4c55b376..2675fefc6cb6 100644
> --- a/kernel/bpf/devmap.c
> +++ b/kernel/bpf/devmap.c
> @@ -474,7 +474,11 @@ static inline int __xdp_enqueue(struct net_device *dev, struct xdp_frame *xdpf,
>   {
>   	int err;
>   
> -	if (!dev->netdev_ops->ndo_xdp_xmit)
> +	if (!(dev->xdp_features & NETDEV_XDP_ACT_NDO_XMIT))
> +		return -EOPNOTSUPP;

Good: dev->netdev_ops and dev->xdp_features are on same cacheline.

This means dev->netdev_ops will be hot, once we need to deref 
netdev_ops->ndo_xdp_xmit, which only happens as part of bulking towards 
driver.

> +
> +	if (unlikely(!(dev->xdp_features & NETDEV_XDP_ACT_NDO_XMIT_SG) &&
> +		     xdp_frame_has_frags(xdpf)))

Good: xdp_frame_has_frags() look at xdpf->flags and avoids deref of 
shared_info area.

>   		return -EOPNOTSUPP;
>   
>   	err = xdp_ok_fwd_dev(dev, xdp_get_frame_len(xdpf));
> @@ -532,8 +536,14 @@ int dev_map_enqueue(struct bpf_dtab_netdev *dst, struct xdp_frame *xdpf,
>   
>   static bool is_valid_dst(struct bpf_dtab_netdev *obj, struct xdp_frame *xdpf)
>   {
> -	if (!obj ||
> -	    !obj->dev->netdev_ops->ndo_xdp_xmit)
> +	if (!obj)
> +		return false;
> +
> +	if (!(obj->dev->xdp_features & NETDEV_XDP_ACT_NDO_XMIT))
> +		return false;
> +
> +	if (unlikely(!(obj->dev->xdp_features & NETDEV_XDP_ACT_NDO_XMIT_SG) &&
> +		     xdp_frame_has_frags(xdpf)))
>   		return false;
>   
>   	if (xdp_ok_fwd_dev(obj->dev, xdp_get_frame_len(xdpf)))
> diff --git a/net/core/filter.c b/net/core/filter.c
> index ed08dbf10338..aeebe21a7eff 100644
> --- a/net/core/filter.c
> +++ b/net/core/filter.c
> @@ -4314,16 +4314,13 @@ int xdp_do_redirect(struct net_device *dev, struct xdp_buff *xdp,
>   	struct bpf_redirect_info *ri = this_cpu_ptr(&bpf_redirect_info);
>   	enum bpf_map_type map_type = ri->map_type;
>   
> -	/* XDP_REDIRECT is not fully supported yet for xdp frags since
> -	 * not all XDP capable drivers can map non-linear xdp_frame in
> -	 * ndo_xdp_xmit.
> -	 */
> -	if (unlikely(xdp_buff_has_frags(xdp) &&
> -		     map_type != BPF_MAP_TYPE_CPUMAP))
> -		return -EOPNOTSUPP;

Nice to see this limitation being lifted :-)

> +	if (map_type == BPF_MAP_TYPE_XSKMAP) {
> +		/* XDP_REDIRECT is not supported AF_XDP yet. */
> +		if (unlikely(xdp_buff_has_frags(xdp)))
> +			return -EOPNOTSUPP;
>   
> -	if (map_type == BPF_MAP_TYPE_XSKMAP)
>   		return __xdp_do_redirect_xsk(ri, dev, xdp, xdp_prog);
> +	}
>   
>   	return __xdp_do_redirect_frame(ri, dev, xdp_convert_buff_to_frame(xdp),
>   				       xdp_prog);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
