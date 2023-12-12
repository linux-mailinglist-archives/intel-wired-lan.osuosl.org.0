Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8919980F222
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 17:14:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2038C41B58;
	Tue, 12 Dec 2023 16:14:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2038C41B58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702397695;
	bh=lSnTVG1doZgb/45rJuZr8hJUkYDbI6QAGCL1L1ds4mM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WqrkvSSsLBm/V0ntciFt2TDCvcy5zh4+1vhkDPbpoZKvE3SZsGvsbMZDBeh0rjVRF
	 vQ6yqpqeIgSxq3LECPAN3pbspqxo4SatXdKFJjoZDUgUezuhNv8cwx1HhTjgcwH7Z2
	 0L404Lo1sdalPnxeN2j5GJTWGcZ/qAErv991aMqBmBgSeHwvN0CTc6YvHTnQ+Pxdwm
	 /Wms3vhbsYxE5HE2PfTooI9M7+6EgCAfsWi1VIsJS7N+zTHCHuSefej26XyEnjH6bI
	 UQCeqNkCONX8UD8YpsNpKna9LZkLwBkho49WDdmFnDW0sWnGZxk3USPsYmhbRtISzQ
	 vpl0hxIIuxBjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yYCwPRRxykqq; Tue, 12 Dec 2023 16:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2C154053D;
	Tue, 12 Dec 2023 16:14:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2C154053D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D45CE1BF429
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 16:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B988661539
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 16:14:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B988661539
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G7FhGOwsaMUV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 16:14:48 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDEC660D76
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 16:14:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDEC660D76
Received: by mail-lf1-x12c.google.com with SMTP id
 2adb3069b0e04-50dfac6c0beso3304524e87.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 08:14:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702397685; x=1703002485;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KPkDhdP4e0RTH+GCxFA+29duj+Ltr9LIDpgourkAuzM=;
 b=XQj5ykofC3miBQjL0MNOmDVYCMcwscUrWjLm5emyxMNqBBqRKk82aaFo+QMX8bKmTA
 paXgQ/7D+RuR5vPTMEpwVmrZ1bahkL7VxvcVdZl6LLhyGZGa4+BpaxcpBIFE/sIFqO/V
 HRkkOEAi74vA72MCFRZQYQ1HIWxXaXeR2OxOr8ZoRqqiyCMIeCpGAGnZ8s+XZ0HxXotW
 UL2ND67KmXDe5ZLsEzWIdeJOZi0poIqyLC+1Aj5cJPKqehpom1qavbGN50txdG9xekqT
 CPnsWRlyGZLpy8IXI/wU4unC3REXYwljcz5Vpd+jIiGpOq1dI9FL7wJVBRRKzj/Esg/K
 wrtQ==
X-Gm-Message-State: AOJu0YyFvZX9SA/ptLQ5omsLo7se1xc1XHR5Tm/uy/qPcBSr5D9IgINd
 qTqXYx9QlbifLSQmGL/xf72QOhX3GDzUeRQfbAsWlQ==
X-Google-Smtp-Source: AGHT+IH5HuV5L/CKapxEvujfucVeUx5qR84eQQeowjHbIgMINDX4vKkt9TvKvvUqu2S16CbDPgGfkRTNABJfGkppQG0=
X-Received: by 2002:a05:6512:108c:b0:50c:fd2:df1a with SMTP id
 j12-20020a056512108c00b0050c0fd2df1amr3778283lfg.78.1702397685556; Tue, 12
 Dec 2023 08:14:45 -0800 (PST)
MIME-Version: 1.0
References: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
 <20231207172010.1441468-7-aleksander.lobakin@intel.com>
In-Reply-To: <20231207172010.1441468-7-aleksander.lobakin@intel.com>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Tue, 12 Dec 2023 18:14:09 +0200
Message-ID: <CAC_iWjKD4dq_YdhgOzSfgSX=tmu0ofD-2fCijfTinOq7heYitA@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1702397685; x=1703002485; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=KPkDhdP4e0RTH+GCxFA+29duj+Ltr9LIDpgourkAuzM=;
 b=uyqtUpDW7zS4jmSHzB7bU+WijjqFxiOSvollWYlBrldigov+wtb9/fC4ThGF9f5a40
 Kq4Y8v6LDoj4OuoCO/+R4Svam2ANSxYmgUc39kBL0aT+GBB28OpG5rGlSnFC2aMs+ZaW
 3Ls0qTfxJ4IKOoSGHJbj+S06BAqM4+CLGtzC1075Dr/gwQnkSfRis3R/pf2Bj4lLVgbG
 R0OFKES1U02IPEEPflxUZN2ggRX632a4UvTXJpGD4Q9Q6nkapuoXlqQDili+/nFunTm8
 lcvGBt0oVBRVwZ3/F/oPmAyJthQWBsQEYNetzMbLducDkj6tSEx7CTic58Jb3UJColJf
 fqPQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=uyqtUpDW
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 06/12] page_pool: constify
 some read-only function arguments
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Yunsheng Lin <linyunsheng@huawei.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 David Christensen <drc@linux.vnet.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Apologies for the noise,
Resending without HTML


On Thu, 7 Dec 2023 at 19:22, Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> There are several functions taking pointers to data they don't modify.
> This includes statistics fetching, page and page_pool parameters, etc.
> Constify the pointers, so that call sites will be able to pass const
> pointers as well.
> No functional changes, no visible changes in functions sizes.
>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  include/net/page_pool/helpers.h | 10 +++++-----
>  net/core/page_pool.c            |  8 ++++----
>  2 files changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helpers.h
> index 7dc65774cde5..c860fad50d00 100644
> --- a/include/net/page_pool/helpers.h
> +++ b/include/net/page_pool/helpers.h
> @@ -58,7 +58,7 @@
>  /* Deprecated driver-facing API, use netlink instead */
>  int page_pool_ethtool_stats_get_count(void);
>  u8 *page_pool_ethtool_stats_get_strings(u8 *data);
> -u64 *page_pool_ethtool_stats_get(u64 *data, void *stats);
> +u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats);
>
>  bool page_pool_get_stats(const struct page_pool *pool,
>                          struct page_pool_stats *stats);
> @@ -73,7 +73,7 @@ static inline u8 *page_pool_ethtool_stats_get_strings(u8 *data)
>         return data;
>  }
>
> -static inline u64 *page_pool_ethtool_stats_get(u64 *data, void *stats)
> +static inline u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats)
>  {
>         return data;
>  }
> @@ -204,8 +204,8 @@ static inline void *page_pool_dev_alloc_va(struct page_pool *pool,
>   * Get the stored dma direction. A driver might decide to store this locally
>   * and avoid the extra cache line from page_pool to determine the direction.
>   */
> -static
> -inline enum dma_data_direction page_pool_get_dma_dir(struct page_pool *pool)
> +static inline enum dma_data_direction
> +page_pool_get_dma_dir(const struct page_pool *pool)
>  {
>         return pool->p.dma_dir;
>  }
> @@ -357,7 +357,7 @@ static inline void page_pool_free_va(struct page_pool *pool, void *va,
>   * Fetch the DMA address of the page. The page pool to which the page belongs
>   * must had been created with PP_FLAG_DMA_MAP.
>   */
> -static inline dma_addr_t page_pool_get_dma_addr(struct page *page)
> +static inline dma_addr_t page_pool_get_dma_addr(const struct page *page)
>  {
>         dma_addr_t ret = page->dma_addr;
>
> diff --git a/net/core/page_pool.c b/net/core/page_pool.c
> index 59aca3339222..4295aec0be40 100644
> --- a/net/core/page_pool.c
> +++ b/net/core/page_pool.c
> @@ -121,9 +121,9 @@ int page_pool_ethtool_stats_get_count(void)
>  }
>  EXPORT_SYMBOL(page_pool_ethtool_stats_get_count);
>
> -u64 *page_pool_ethtool_stats_get(u64 *data, void *stats)
> +u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats)
>  {
> -       struct page_pool_stats *pool_stats = stats;
> +       const struct page_pool_stats *pool_stats = stats;
>
>         *data++ = pool_stats->alloc_stats.fast;
>         *data++ = pool_stats->alloc_stats.slow;
> @@ -360,8 +360,8 @@ static struct page *__page_pool_get_cached(struct page_pool *pool)
>         return page;
>  }
>
> -static void page_pool_dma_sync_for_device(struct page_pool *pool,
> -                                         struct page *page,
> +static void page_pool_dma_sync_for_device(const struct page_pool *pool,
> +                                         const struct page *page,
>                                           unsigned int dma_sync_size)
>  {
>         dma_addr_t dma_addr = page_pool_get_dma_addr(page);
> --
> 2.43.0
>

Reviewed-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
