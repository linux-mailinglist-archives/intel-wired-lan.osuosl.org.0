Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BA480F1ED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 17:09:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3D1841953;
	Tue, 12 Dec 2023 16:09:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3D1841953
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702397370;
	bh=UFUHBypM0ltQqdbSZRO4Rfe8s8HOc1JYpmTT9PTD1Bc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wpHW2iHd1/l2chJHnjeQ72s4Lv4++ZxaIyb3aYHvFXF4nqxdyVtRDB48p6Ytsl0td
	 L7dLyF/LPhIWTZDHtYkAms/R+3jr0NncqIhj9G+qmc8GNtP3nCzEfv2Uqu6n6Z87JO
	 e03k0CU1qCQWJpiKR+CPcxMmW1jU37qnmOgo67sQHgrwNrYPO7s14PN2FTSLHUNz7F
	 f36lLKOFO64jO8E+xb4qIEYJarTj8UVj4U43TXhfgugf0vdi9fdwq+U9CzQCJGpbWY
	 XV1qJ04ffuwfGY+4L5GwaBcyxSq6eU2gjsnLsirPxUUkrRPFS41vCvPmoT86g4hhFU
	 EG/oMDluk+Jzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zutuFE9fODY1; Tue, 12 Dec 2023 16:09:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58F9441713;
	Tue, 12 Dec 2023 16:09:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58F9441713
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B7221BF429
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 16:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6192960D76
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 16:09:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6192960D76
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ei0wcRPVLsF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 16:09:23 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C0FC60B23
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 16:09:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C0FC60B23
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-50bee606265so6157965e87.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 08:09:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702397361; x=1703002161;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=C7kPejCOIQ0Z2zM992pXAoK7GYD6l/1jlpcKPxwN/1Y=;
 b=xACcXMPoOEi8Ddn0MrzbAHWM3cVW14apDJIBbHxQN0tQWgYbNVGaVHzioDF2KTcns3
 6Mr+MQ+cRySBRU4ZtATxMe6E3TTB34y/jm4sT68x20Z6vV/vYJIieQKvFh2XZb5XHQm2
 GGkRS4/bdoQPolOmnhgcig6uKST8xo3sbs5UKZNIcnHXkQrwVcqSjO2Y6k6Tjme59o0m
 cUlCgWePlSFNPlVy/h2WNrbKsjw22swu4KKLS9xmFlxFMvTNh7vLPv2s/OMSpQgnlaJI
 JKpdcla9AlA2AmhuUFp9wtOsBNSsDZq5yrK7XUHBdyP04KQMR7j8o85D8Zn8HWyMhU9d
 kd5g==
X-Gm-Message-State: AOJu0Yxfcobsl8oXLuWKjhtZp1VP3eNq7ARI6P1ZYEDtaSmutGcNHFPt
 8vv+6fZaO6RXSJmX9VwncWb1fCRq1EsdxL6+rceLFg==
X-Google-Smtp-Source: AGHT+IHHftglne1u21N5E1zeODGSFYQycb1SzJKIn0jbUjARDf6T4JHnAuXLM0WED2OXM0lIa5miP/CyCBEd1jUPI44=
X-Received: by 2002:a19:ca59:0:b0:50d:1454:8f8d with SMTP id
 h25-20020a19ca59000000b0050d14548f8dmr2801661lfj.6.1702397360870; Tue, 12 Dec
 2023 08:09:20 -0800 (PST)
MIME-Version: 1.0
References: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
 <20231207172010.1441468-7-aleksander.lobakin@intel.com>
In-Reply-To: <20231207172010.1441468-7-aleksander.lobakin@intel.com>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Tue, 12 Dec 2023 18:08:45 +0200
Message-ID: <CAC_iWjK0uqso8oX9_fCYCHYkNkySrizprqz439k3Lzdmk06yEg@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1702397361; x=1703002161; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=C7kPejCOIQ0Z2zM992pXAoK7GYD6l/1jlpcKPxwN/1Y=;
 b=vqbdPoIqmrkaG1aJK4QbkH8dRS2H2ZHxul1QBZhpiMelypRS983QQW+GT+9D+6pYlc
 K2K9lvIUL64uvwgIUavexPlz2vd6cyPhGs94+UHR01VdFPrbmsPhy73pQK2Awiv+2JI9
 hCGDhGjBG6+cUD+E5hz8/BsgC+lPn+IIGMqIgNmacFoGu7WJHskk9BpZ42kESWQS0EYb
 cU/+RXqQDpCpOtIiU6b5gaLTprXUT3U6Kd3rxbLrcMo78YSrwADb7n69lsEeieVfaE8y
 p5VCII00hr5GJD/klCoXakeWi7JAc2zbniNU06WLtpTgsfR4UOnyFQ70o+6JCN4v0aIk
 JTgQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=vqbdPoIq
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
Content-Type: multipart/mixed; boundary="===============2486539103664038421=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2486539103664038421==
Content-Type: multipart/alternative; boundary="000000000000f62efa060c524541"

--000000000000f62efa060c524541
Content-Type: text/plain; charset="UTF-8"

On Thu, 7 Dec 2023 at 19:22, Alexander Lobakin <aleksander.lobakin@intel.com>
wrote:

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
> diff --git a/include/net/page_pool/helpers.h
> b/include/net/page_pool/helpers.h
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
> @@ -73,7 +73,7 @@ static inline u8 *page_pool_ethtool_stats_get_strings(u8
> *data)
>         return data;
>  }
>
> -static inline u64 *page_pool_ethtool_stats_get(u64 *data, void *stats)
> +static inline u64 *page_pool_ethtool_stats_get(u64 *data, const void
> *stats)
>  {
>         return data;
>  }
> @@ -204,8 +204,8 @@ static inline void *page_pool_dev_alloc_va(struct
> page_pool *pool,
>   * Get the stored dma direction. A driver might decide to store this
> locally
>   * and avoid the extra cache line from page_pool to determine the
> direction.
>   */
> -static
> -inline enum dma_data_direction page_pool_get_dma_dir(struct page_pool
> *pool)
> +static inline enum dma_data_direction
> +page_pool_get_dma_dir(const struct page_pool *pool)
>  {
>         return pool->p.dma_dir;
>  }
> @@ -357,7 +357,7 @@ static inline void page_pool_free_va(struct page_pool
> *pool, void *va,
>   * Fetch the DMA address of the page. The page pool to which the page
> belongs
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
> @@ -360,8 +360,8 @@ static struct page *__page_pool_get_cached(struct
> page_pool *pool)
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

--000000000000f62efa060c524541
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:arial,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, 7 Dec 2023 at 19:22, Alexander=
 Lobakin &lt;<a href=3D"mailto:aleksander.lobakin@intel.com">aleksander.lob=
akin@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">There are several functions taking pointers to data they don&=
#39;t modify.<br>
This includes statistics fetching, page and page_pool parameters, etc.<br>
Constify the pointers, so that call sites will be able to pass const<br>
pointers as well.<br>
No functional changes, no visible changes in functions sizes.<br>
<br>
Signed-off-by: Alexander Lobakin &lt;<a href=3D"mailto:aleksander.lobakin@i=
ntel.com" target=3D"_blank">aleksander.lobakin@intel.com</a>&gt;<br>
---<br>
=C2=A0include/net/page_pool/helpers.h | 10 +++++-----<br>
=C2=A0net/core/page_pool.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0=
 8 ++++----<br>
=C2=A02 files changed, 9 insertions(+), 9 deletions(-)<br>
<br>
diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helper=
s.h<br>
index 7dc65774cde5..c860fad50d00 100644<br>
--- a/include/net/page_pool/helpers.h<br>
+++ b/include/net/page_pool/helpers.h<br>
@@ -58,7 +58,7 @@<br>
=C2=A0/* Deprecated driver-facing API, use netlink instead */<br>
=C2=A0int page_pool_ethtool_stats_get_count(void);<br>
=C2=A0u8 *page_pool_ethtool_stats_get_strings(u8 *data);<br>
-u64 *page_pool_ethtool_stats_get(u64 *data, void *stats);<br>
+u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats);<br>
<br>
=C2=A0bool page_pool_get_stats(const struct page_pool *pool,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0struct page_pool_stats *stats);<br>
@@ -73,7 +73,7 @@ static inline u8 *page_pool_ethtool_stats_get_strings(u8 =
*data)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return data;<br>
=C2=A0}<br>
<br>
-static inline u64 *page_pool_ethtool_stats_get(u64 *data, void *stats)<br>
+static inline u64 *page_pool_ethtool_stats_get(u64 *data, const void *stat=
s)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return data;<br>
=C2=A0}<br>
@@ -204,8 +204,8 @@ static inline void *page_pool_dev_alloc_va(struct page_=
pool *pool,<br>
=C2=A0 * Get the stored dma direction. A driver might decide to store this =
locally<br>
=C2=A0 * and avoid the extra cache line from page_pool to determine the dir=
ection.<br>
=C2=A0 */<br>
-static<br>
-inline enum dma_data_direction page_pool_get_dma_dir(struct page_pool *poo=
l)<br>
+static inline enum dma_data_direction<br>
+page_pool_get_dma_dir(const struct page_pool *pool)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return pool-&gt;p.dma_dir;<br>
=C2=A0}<br>
@@ -357,7 +357,7 @@ static inline void page_pool_free_va(struct page_pool *=
pool, void *va,<br>
=C2=A0 * Fetch the DMA address of the page. The page pool to which the page=
 belongs<br>
=C2=A0 * must had been created with PP_FLAG_DMA_MAP.<br>
=C2=A0 */<br>
-static inline dma_addr_t page_pool_get_dma_addr(struct page *page)<br>
+static inline dma_addr_t page_pool_get_dma_addr(const struct page *page)<b=
r>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dma_addr_t ret =3D page-&gt;dma_addr;<br>
<br>
diff --git a/net/core/page_pool.c b/net/core/page_pool.c<br>
index 59aca3339222..4295aec0be40 100644<br>
--- a/net/core/page_pool.c<br>
+++ b/net/core/page_pool.c<br>
@@ -121,9 +121,9 @@ int page_pool_ethtool_stats_get_count(void)<br>
=C2=A0}<br>
=C2=A0EXPORT_SYMBOL(page_pool_ethtool_stats_get_count);<br>
<br>
-u64 *page_pool_ethtool_stats_get(u64 *data, void *stats)<br>
+u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct page_pool_stats *pool_stats =3D stats;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0const struct page_pool_stats *pool_stats =3D st=
ats;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 *data++ =3D pool_stats-&gt;alloc_stats.fast;<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 *data++ =3D pool_stats-&gt;alloc_stats.slow;<br=
>
@@ -360,8 +360,8 @@ static struct page *__page_pool_get_cached(struct page_=
pool *pool)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return page;<br>
=C2=A0}<br>
<br>
-static void page_pool_dma_sync_for_device(struct page_pool *pool,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0st=
ruct page *page,<br>
+static void page_pool_dma_sync_for_device(const struct page_pool *pool,<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0co=
nst struct page *page,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u=
nsigned int dma_sync_size)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dma_addr_t dma_addr =3D page_pool_get_dma_addr(=
page);<br>
-- <br>
2.43.0<br></blockquote><div><br></div><div>=C2=A0Reviewed-by: Ilias Apalodi=
mas &lt;<a href=3D"mailto:ilias.apalodimas@linaro.org">ilias.apalodimas@lin=
aro.org</a>&gt;<br></div></div></div>

--000000000000f62efa060c524541--

--===============2486539103664038421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2486539103664038421==--
