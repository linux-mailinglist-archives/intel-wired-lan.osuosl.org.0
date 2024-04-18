Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9668A9DB7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 16:57:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD9BF41549;
	Thu, 18 Apr 2024 14:57:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DtJiCNGmVH90; Thu, 18 Apr 2024 14:57:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B64DC41498
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713452243;
	bh=4170ZhgzJpAXwr6ljG/YSDARpsJn4+o6qTKEWZM1ZqQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i5n27IjfeEHToJd3iXqzOCIXZmMZ/2zQz14MP7tugU8Awrlz/stjgdx8/IYt77qQB
	 Mq9Q0vu+yahQqiXWgS8eu5+CNLKqoAPDlrX5Cmr0WqxmF29BF6XWcSh+EQtQ2TbpE9
	 D2B0hMJdwBiWxyf8OuiF6yw8mox/A8uh1k93Udpck6zaVG2RrBcbvPlxPxs4164EZY
	 of9h4voef7hSPTbMO4tneFebVZHSXaLL5OFiVBX+0Kmj1j7ny2TuFVf7eWHwidFa2C
	 cmN1Jl80Ho0mxDyvrjene+6mtFfnZIByRCOg1Bu3ZzEn1zSZzYCjvktndU+oyUfZnL
	 749R9VzWfsqVA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B64DC41498;
	Thu, 18 Apr 2024 14:57:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D44AE1BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFB06416C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:57:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ul5AlDboBdn4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 14:57:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::134; helo=mail-lf1-x134.google.com;
 envelope-from=ilias.apalodimas@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AAAB2401D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAAB2401D8
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AAAB2401D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:57:20 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-51967f75729so1106559e87.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713452238; x=1714057038;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4170ZhgzJpAXwr6ljG/YSDARpsJn4+o6qTKEWZM1ZqQ=;
 b=UHDXBqlgW58ara7CoN4b4b3YmJyoXvzzUoWjfwRcdayxp02UFkt147gyeJMNrS6AGK
 rx9TeGdtBNvcobaQwxeKrBs1OZ2cB7rpZJEPF72lybpa5LVqYH1i3ybU277khsDhLIHN
 3et2SoadYPsQRWfxSpA66EGylcCpASS8hp+oqXhmbqocFHJmLYEfOga6hNjtBr304CVM
 1Sj0bOecwzvmMe10Eflx0HF7zmZC2dczEIiQfXu2Bc+eETgZ+2vN7cS7/PMrwEuWFq+F
 nnETX6iwdNZlgAJNXxeFIdUTYEIBMTZTSfkKsX7B9Yc00BirBSTKYv9z7kqEmAIhkTVt
 nXdA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX0jX+njyOjVDXU0iUPyw3ccFacvJ1+DELAJVxf12njkh2zYfDj5oY8VAdNT2GbOzaOhOfNtFzJYMnRrBeLtNand/whGF9izGwwwafUav2+TA==
X-Gm-Message-State: AOJu0Yy7chG2KoskhjWv00oX4ihBLTqzgMB/J7jG95qcCG10M40m7wzx
 zxpfShF0lSS5tANidw4/mfojV3fDXgDfml6E/AHq08DivIfXQ1C5hpBI3Qx7UX179bgSWHBftYp
 s6Rk9EJ/So4oGHd21aMiYtGZCVkg2GE+pEPqlFQ==
X-Google-Smtp-Source: AGHT+IGgo5ZpK7ScQ3STj7jd+rPX7sm4nXqGrRIqUtUQ4a24HhXvoJYmRFhhYV7WswO4nrk1SpVmPZ75uDv3YLj6r+o=
X-Received: by 2002:a05:6512:3f0d:b0:519:7738:a5cf with SMTP id
 y13-20020a0565123f0d00b005197738a5cfmr1605328lfa.25.1713452238069; Thu, 18
 Apr 2024 07:57:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
 <20240418113616.1108566-7-aleksander.lobakin@intel.com>
In-Reply-To: <20240418113616.1108566-7-aleksander.lobakin@intel.com>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Thu, 18 Apr 2024 17:56:41 +0300
Message-ID: <CAC_iWjL6j5xS9GsLiZdLPJgJgfGNMbjKZPTMqnvX9U_9Dgq=ZQ@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1713452238; x=1714057038; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=4170ZhgzJpAXwr6ljG/YSDARpsJn4+o6qTKEWZM1ZqQ=;
 b=p5kQj7MmLEvAxLvRzZbks15euLzxyi/stVAv4PGFcpDXIeME/anYHs5R+SmSCkBWtO
 iFekIN7b+WNU2T0i7WbQgjiO7tJuHV1o9mknJqR6z5bZ6QfMgWMfN6D1otz+4rQfaGKA
 7vUSXJzzMZ9Ms/Zx1NSPRxj8MK9Lo5NJCWgNvrFz3Bf3nURFvuLdCFp8oKw1i6szOzAJ
 1b5QlY2WOXshmqJ1APK1pPttBdHwCT1+LM4Qy2WCNW/V8jJ6kNJu3v6jKOgPpsIzDVI9
 ek5NcI07ZPZnQ/nCxbXHsR6pBWk/FMLC9mMjlGbRMdfaiA6/dapTzX9ojokUqMGnCdx2
 qE4A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=p5kQj7Mm
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 06/10] page_pool: add
 DMA-sync-for-CPU inline helper
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Duyck <alexanderduyck@fb.com>, Yunsheng Lin <linyunsheng@huawei.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Christoph Lameter <cl@linux.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 18 Apr 2024 at 14:37, Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> Each driver is responsible for syncing buffers written by HW for CPU
> before accessing them. Almost each PP-enabled driver uses the same
> pattern, which could be shorthanded into a static inline to make driver
> code a little bit more compact.
> Introduce a simple helper which performs DMA synchronization for the
> size passed from the driver. It can be used even when the pool doesn't
> manage DMA-syncs-for-device, just make sure the page has a correct DMA
> address set via page_pool_set_dma_addr().
>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  include/net/page_pool/helpers.h | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helpers.h
> index c7bb06750e85..873631c79ab1 100644
> --- a/include/net/page_pool/helpers.h
> +++ b/include/net/page_pool/helpers.h
> @@ -52,6 +52,8 @@
>  #ifndef _NET_PAGE_POOL_HELPERS_H
>  #define _NET_PAGE_POOL_HELPERS_H
>
> +#include <linux/dma-mapping.h>
> +
>  #include <net/page_pool/types.h>
>
>  #ifdef CONFIG_PAGE_POOL_STATS
> @@ -395,6 +397,28 @@ static inline bool page_pool_set_dma_addr(struct page *page, dma_addr_t addr)
>         return false;
>  }
>
> +/**
> + * page_pool_dma_sync_for_cpu - sync Rx page for CPU after it's written by HW
> + * @pool: &page_pool the @page belongs to
> + * @page: page to sync
> + * @offset: offset from page start to "hard" start if using PP frags
> + * @dma_sync_size: size of the data written to the page
> + *
> + * Can be used as a shorthand to sync Rx pages before accessing them in the
> + * driver. Caller must ensure the pool was created with ``PP_FLAG_DMA_MAP``.
> + * Note that this version performs DMA sync unconditionally, even if the
> + * associated PP doesn't perform sync-for-device.
> + */
> +static inline void page_pool_dma_sync_for_cpu(const struct page_pool *pool,
> +                                             const struct page *page,
> +                                             u32 offset, u32 dma_sync_size)
> +{
> +       dma_sync_single_range_for_cpu(pool->p.dev,
> +                                     page_pool_get_dma_addr(page),
> +                                     offset + pool->p.offset, dma_sync_size,
> +                                     page_pool_get_dma_dir(pool));
> +}
> +
>  static inline bool page_pool_put(struct page_pool *pool)
>  {
>         return refcount_dec_and_test(&pool->user_cnt);
> --
> 2.44.0
>

Reviewed-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>
