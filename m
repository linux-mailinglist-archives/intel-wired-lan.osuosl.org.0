Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D025E6BE0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 21:40:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98FF6415EC;
	Thu, 22 Sep 2022 19:40:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98FF6415EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663875651;
	bh=FAn400tM7S/sEMz1LpiAv5LYkQo+HpFPUJYTPPo/k8g=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bv0ys7Kl/0KGglm6YCIGlzvsrw4O36kyngJOM/aSueG/c+N7Ss6OL07v0zKcfPg9J
	 gnqOx/qmjt7MPLWpugAXIPQ0fOrMJos+oMEQQQYO1k1+sUXz55dNWx6PANNjfQW5NQ
	 9FrtK7zn90n23NbZKArQkyG+moeFBwrCWfMUXoRC4vjAsYf6Exfb9KHK0m5flKpG/U
	 FfnIVTtu5G5WnRTLngm+V8L5TNSNEqQKhrec8O34KSFOV74cw+2Y0jqZTjIy6hb0T1
	 nGFILOCHxbf/RENTM6+Vyec4jYFLbz1C0mVu2Z7BRCfpeXqAhyKHa1P7YCcFqQXsyo
	 kYtsix8BMxNlw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rRt4V4kufhEn; Thu, 22 Sep 2022 19:40:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0335A4156E;
	Thu, 22 Sep 2022 19:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0335A4156E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3120D1BF319
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 19:40:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B77560AAE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 19:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B77560AAE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H0Xwdxoq5gc3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 19:40:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5246C60888
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5246C60888
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 19:40:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 585666115C;
 Thu, 22 Sep 2022 19:40:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45829C433C1;
 Thu, 22 Sep 2022 19:40:40 +0000 (UTC)
Date: Thu, 22 Sep 2022 12:40:39 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20220922124039.688be0b8@kernel.org>
In-Reply-To: <20220922031013.2150682-3-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-3-keescook@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1663875641;
 bh=Iu+ioVZAl++oTxE1oI47t/6oQuwifWn8lmpY1yCr8J4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YC8ixN8EP0aZI0e+nDZs91siEij37VrKEmFWG3Ty2t8usgwjVxksauo5Og7qifkq5
 ESf2BqmXtU9USNgh+H2YKJEXRWpyu7EDcgicu3AJOn2B/4WayyL94dp8xbokjZvmw2
 M56qmrIx+uvo2sUUrQmzfQ5/ucT/pOiWMPHGNcLJ6IIzRCYzVRcutddcWgSvzdbhZM
 fcZkJSFboZpZl7fu6RLNBgaLlv3gbFkR4ETLqK750bOZ4J5pst6/eAIZH31PhhVZLn
 QMHkEcQOXS8pXwYt/LtILex4KMGS/VXDhD7XC9erQbOO/ciNySxRd4PP7XyTR4i5Zs
 1sdrT7lGqR5Mw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YC8ixN8E
Subject: Re: [Intel-wired-lan] [PATCH 02/12] skbuff: Proactively round up to
 kmalloc bucket size
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
Cc: linux-wireless@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Vlastimil Babka <vbabka@suse.cz>,
 Alex Elder <elder@kernel.org>, netdev@vger.kernel.org,
 Jacob Shin <jacob.shin@amd.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 21 Sep 2022 20:10:03 -0700 Kees Cook wrote:
> diff --git a/net/core/skbuff.c b/net/core/skbuff.c
> index 974bbbbe7138..4fe4c7544c1d 100644
> --- a/net/core/skbuff.c
> +++ b/net/core/skbuff.c
> @@ -427,14 +427,15 @@ struct sk_buff *__alloc_skb(unsigned int size, gfp_t gfp_mask,
>  	 */
>  	size = SKB_DATA_ALIGN(size);
>  	size += SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
> -	data = kmalloc_reserve(size, gfp_mask, node, &pfmemalloc);
> -	if (unlikely(!data))
> -		goto nodata;
> -	/* kmalloc(size) might give us more room than requested.
> +	/* kmalloc(size) might give us more room than requested, so
> +	 * allocate the true bucket size up front.
>  	 * Put skb_shared_info exactly at the end of allocated zone,
>  	 * to allow max possible filling before reallocation.
>  	 */
> -	osize = ksize(data);
> +	osize = kmalloc_size_roundup(size);
> +	data = kmalloc_reserve(osize, gfp_mask, node, &pfmemalloc);
> +	if (unlikely(!data))
> +		goto nodata;
>  	size = SKB_WITH_OVERHEAD(osize);
>  	prefetchw(data + size);

I'd rename osize here to alloc_size for consistency but one could 
argue either way :)

Acked-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
