Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C69E05E6468
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 15:57:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41BB541A69;
	Thu, 22 Sep 2022 13:57:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41BB541A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663855026;
	bh=mx6kWnhDd86+7xaUR3BDRSuDK9smujuu5o4L0dPmkho=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pRhkw0cdRPGHfUihDEW0LQfhbGs9OwhqvkX6KeXuU5gKIxLUtHuwPTd9NOvtMo13l
	 C5lNPxxxOlpHrBW2o5lV92iafmRoX/6wZaIDMgpvTbeJHwMEjijHAP0FnJQPk9+OGf
	 yZ585PaJryzRcG9wz/bLjsnCHh3uYOO88W5jltn4po/d16gFUPaj3+fcUM1e/Z5AdT
	 wdAslb93yjvtzYlPpT6xJrC5hmVmPwETO9GTszq6jUgAsRp6AMJ34duo0v/4nrrIEx
	 pwhwrBPh/X4HZcOUpA6qUe5dIjvfDFjUNpMlqQUD5HpvtrpGJHD2eI9fLrrCAHVp03
	 Bh+YpBRy85VyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BxQg7MVy3wSg; Thu, 22 Sep 2022 13:57:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43C1141A53;
	Thu, 22 Sep 2022 13:57:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43C1141A53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A40FC1BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 13:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8AE9883380
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 13:45:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AE9883380
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G8YekOdrscsf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 13:45:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C22E83323
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C22E83323
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 13:45:23 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id d15so6148028qka.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 06:45:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date;
 bh=lTLxj593wgb0rSkyx/kVpkcZN0XitEmW0vMjErWHotA=;
 b=stxhgSoLTx4iuumzyyVpt1eYaHcodCZUjPjwCzW4jrpkLMZBWsA7P0l5eBbYHKXrtX
 R9dqub0envpKGs06zw2zXbBRXWtBZz3dhuNHQU3XqNl5wW/ghSLFhmvoGGLGbwRolqWC
 qk85RVh/7JnIDMo00fFEgqbrl19dsrEmxGeXYtPnAjHHUT6p1a6zRTkygYWBm4MaWm6r
 ZSNDpVPz+2JI6WFsCD/YYSKE9gGe+HQuktJfFHFAn0M1uUXCFPnxeKTfOI5l8ryXnVuN
 ZrCajAY9xjhH+xBhD+j5CGMu5zrnl8gOGazkDq7Qe7gqt9ahaDQkqs5HiVcRkx+5MvkR
 RKuQ==
X-Gm-Message-State: ACrzQf3PZiO7ujqOUnfoOSiI0OQQv/4ZiA4vp0KdeR9zjZK4+MLoQKdF
 qof62StfRvTXh7jt8OSQd79YWw==
X-Google-Smtp-Source: AMsMyM6DBqbYqDsHBnddfGDZuwycGpoIY7LinhBIG4+l+K0bdEu/uf1UKptO3KnL1trAn9LU6bZY/Q==
X-Received: by 2002:a05:620a:f15:b0:6cf:2130:88e3 with SMTP id
 v21-20020a05620a0f1500b006cf213088e3mr2093263qkl.519.1663854322211; 
 Thu, 22 Sep 2022 06:45:22 -0700 (PDT)
Received: from [172.22.22.4] ([98.61.227.136])
 by smtp.googlemail.com with ESMTPSA id
 w7-20020ac857c7000000b0035bbb6268e2sm3902332qta.67.2022.09.22.06.45.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Sep 2022 06:45:21 -0700 (PDT)
Message-ID: <4d75a9fd-1b94-7208-9de8-5a0102223e68@ieee.org>
Date: Thu, 22 Sep 2022 08:45:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>, Vlastimil Babka <vbabka@suse.cz>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-4-keescook@chromium.org>
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20220922031013.2150682-4-keescook@chromium.org>
X-Mailman-Approved-At: Thu, 22 Sep 2022 13:56:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ieee.org; s=google;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date;
 bh=lTLxj593wgb0rSkyx/kVpkcZN0XitEmW0vMjErWHotA=;
 b=FyJaKv2cOaRg6P7yvu8zs1jVRm/8RMTbc6dfECJ+ZO5o/HmyZWXx30/9G58nVbrc5b
 uilHyUda0dD/kYG1qtguthEwDaL9y8JeP+HPCBHfMWclRlKZoOK/NXZxzGUfoaxervvy
 D0TcePhLr6rEHe3E5Hlf5A5QN/T9th71F+ymU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org
 header.a=rsa-sha256 header.s=google header.b=FyJaKv2c
Subject: Re: [Intel-wired-lan] [PATCH 03/12] net: ipa: Proactively round up
 to kmalloc bucket size
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
 linaro-mm-sig@lists.linaro.org, Jakub Kicinski <kuba@kernel.org>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jacob Shin <jacob.shin@amd.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/21/22 10:10 PM, Kees Cook wrote:
> Instead of discovering the kmalloc bucket size _after_ allocation, round
> up proactively so the allocation is explicitly made for the full size,
> allowing the compiler to correctly reason about the resulting size of
> the buffer through the existing __alloc_size() hint.
> 
> Cc: Alex Elder <elder@kernel.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: netdev@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>   drivers/net/ipa/gsi_trans.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ipa/gsi_trans.c b/drivers/net/ipa/gsi_trans.c
> index 18e7e8c405be..cec968854dcf 100644
> --- a/drivers/net/ipa/gsi_trans.c
> +++ b/drivers/net/ipa/gsi_trans.c
> @@ -89,6 +89,7 @@ int gsi_trans_pool_init(struct gsi_trans_pool *pool, size_t size, u32 count,
>   			u32 max_alloc)
>   {
>   	void *virt;
> +	size_t allocate;

I don't care about this but the reverse Christmas tree
convention would put the "allocate" variable definition
above "virt".

Whether you fix that or not, this patch looks good to me.

Reviewed-by: Alex Elder <elder@linaro.org>

>   	if (!size)
>   		return -EINVAL;
> @@ -104,13 +105,15 @@ int gsi_trans_pool_init(struct gsi_trans_pool *pool, size_t size, u32 count,
>   	 * If there aren't enough entries starting at the free index,
>   	 * we just allocate free entries from the beginning of the pool.
>   	 */
> -	virt = kcalloc(count + max_alloc - 1, size, GFP_KERNEL);
> +	allocate = size_mul(count + max_alloc - 1, size);
> +	allocate = kmalloc_size_roundup(allocate);
> +	virt = kzalloc(allocate, GFP_KERNEL);
>   	if (!virt)
>   		return -ENOMEM;
>   
>   	pool->base = virt;
>   	/* If the allocator gave us any extra memory, use it */
> -	pool->count = ksize(pool->base) / size;
> +	pool->count = allocate / size;
>   	pool->free = 0;
>   	pool->max_alloc = max_alloc;
>   	pool->size = size;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
