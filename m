Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29913A599B1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 16:19:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C75DB40D47;
	Mon, 10 Mar 2025 15:19:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wd1nxPpp4eLT; Mon, 10 Mar 2025 15:19:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3594340D3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741619966;
	bh=Grn43O6oJjF7hPjCwOp8JmDQSkpvyUtT5/1W3lDUlec=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DKQhylHXsXAH6iAdUkkmB7FdYgyKW/UAp/f5nV/oKt/8fs0Njuyg2ymhRriU2cQyD
	 hMhK+bzv4OsYy5W9jGsbiAO/9qsQAavIS94tkZtgrC3RCiPuR3IpLUG9NVLnk2xhN+
	 kuBTwh6H60UKx10iIAzD0/p6YWxGZylDtvKUxWXuDPgnMhHDU1BfzAewvaCBvUHbqd
	 evU5DMpTTr4X8aUJIDqlmG3LdZwGSNd1lFLOFN3lF8/2+6gWf0KoefabIxAAlA7Wof
	 51tNYNO0PBjBvgF671TvtUwzyovZfEuUAB4EjFshhvWxguwplTFf51Tkm64zjvPrYE
	 YhwG0L2Jzp+nA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3594340D3D;
	Mon, 10 Mar 2025 15:19:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 18F3D1C9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 00:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E9EE740646
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 00:20:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mldNdDb7m30n for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Mar 2025 00:20:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62c; helo=mail-pl1-x62c.google.com;
 envelope-from=hramamurthy@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 75E314022B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75E314022B
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 75E314022B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 00:20:44 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-2242aca53efso25465ad.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Mar 2025 16:20:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741393244; x=1741998044;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Grn43O6oJjF7hPjCwOp8JmDQSkpvyUtT5/1W3lDUlec=;
 b=iXnXo2JAWt5ktH0bpCfM3utj5MTkzA+FMOXWUmNF0Im9gTM5VTalm3TBd1ISMn8kZ/
 19SFg6pRfe1ENoe9YNteYJdDdmwuTxQPt3QzLviPk8VymOlOzo6pM+oxbfRRRZYFFgKt
 Q9PHdolrvlwGB9iHtwxj26AWQZ/2yNtMD0pyGST80CoVOt9Lmb2cVLzzWZft/6V2Td4d
 Ql1po9uLxBTXdNO3yk0R4+I9XGQa24sqBpcGFDZqAuVrsVjdt6ekQKkVIKUYl0COGAio
 ui37muCFHqnzmr8NClaNipuKRgR3bUiQRZR0hZLfSL5oqv2It9PgiE2dTMYZolxqC+9X
 RSWA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXdp3n0OvnGG5XJUUtSPfDoYcjjkAYELxPA9i7TPVtpd29PXrkmfLsffTutOTuMouA0LOydPIbr7KPXnGzKzqY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyzgAJvxdOD9UzAEBj5Olh1oZfhCd7ZjkAj9zKF5D6+e5TmoEiz
 3GCRIGJRN182JxLeEGlFSpXtZbzdvh5GucmE++juh/HUhONUaXD6DpRlc2Ab4lJJmEGPmCvn+rw
 bDadQsn5o+gfDUSR6bP1xr8iK/kQADhh//huH
X-Gm-Gg: ASbGnctJasAsedkxi50+gCLoQpE6lsGp/KBJSFVuTjWNMoBOIHNS3moeJKjX9Wobw85
 Ya2rpOpSAOFw+QkuPatqRWp06OImuhW/grskQNl4Nh6Cj4Dt+SoyLRt93tL8xhH3jCYmWCp4gKF
 S6MlDOg1CI10ejKfasJOAzFAqzwzfZJJ2g4EHh0HxQ59gaqy9fQTAVOK7eu2w=
X-Google-Smtp-Source: AGHT+IG4qF2VNRRdR961Hruzmu2P9zMOnxA6vMmxm3lWxNJUgEvm2qu8VMRpWVn9YncMk6lHfXrExhkBJLGsQobQNM8=
X-Received: by 2002:a17:902:d490:b0:223:5696:44f5 with SMTP id
 d9443c01a7336-22540e5c2a6mr1069305ad.12.1741393242390; Fri, 07 Mar 2025
 16:20:42 -0800 (PST)
MIME-Version: 1.0
References: <20250307092356.638242-1-linyunsheng@huawei.com>
 <20250307092356.638242-2-linyunsheng@huawei.com>
In-Reply-To: <20250307092356.638242-2-linyunsheng@huawei.com>
From: Harshitha Ramamurthy <hramamurthy@google.com>
Date: Fri, 7 Mar 2025 16:20:31 -0800
X-Gm-Features: AQ5f1JoPSKmOA0t4rmqBDzuqaAlgywVLDx_uPMCsgrgFeDpD0DEqQB4K1UT_IIo
Message-ID: <CAEAWyHd8UJLHyeSBFTbKB7MR5cc1aF2pVyro1Qr6HkKaxAyofw@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Cc: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, 
 zhangkun09@huawei.com, liuyonglong@huawei.com, fanghaiqing@huawei.com, 
 Wei Fang <wei.fang@nxp.com>, Shenwei Wang <shenwei.wang@nxp.com>, 
 Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Eric Dumazet <edumazet@google.com>, Jeroen de Borst <jeroendb@google.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>, 
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Felix Fietkau <nbd@nbd.name>, 
 Lorenzo Bianconi <lorenzo@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>, 
 Shayne Chen <shayne.chen@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
 Johannes Berg <johannes@sipsolutions.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Simon Horman <horms@kernel.org>, 
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, imx@lists.linux.dev,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 bpf@vger.kernel.org, linux-rdma@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org
Content-Type: multipart/alternative; boundary="000000000000a131c1062fc9b506"
X-Mailman-Approved-At: Mon, 10 Mar 2025 15:19:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1741393244; x=1741998044; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Grn43O6oJjF7hPjCwOp8JmDQSkpvyUtT5/1W3lDUlec=;
 b=z8RAUZXUv/ZeZIVxsiFLb2igS43adXGwxkK4hyJjkMzCLdXin/+W6csgqFM4+t3qGs
 NeoDPLflTxzz7IicAKA9aLPyxB2Ae2CQN27AQp/dq7Aoc4I7tCH7+A5OSbf44wJhF9hy
 spoR0Eet/DWKHKeI6+kh3SbZoWUZV3/JX9XpNMZ6sD4vW6FQ7qA3pB7vmhHBeTiQqdEk
 f9tyNkZEpGUlQmq1mN6cMRx7AQhKzNMX02To/8YG1MCQVQRzVfsNGPaFHtqjXFjYRcMT
 RZHVMJwzqIBstR0fH64rjRxtAa/D1tCRzhphXmtJndET4mOkW+3oCEa5yYvU4UBOI7vp
 MhYw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=z8RAUZXU
Subject: Re: [Intel-wired-lan] [PATCH net-next v11 1/4] page_pool: introduce
 page_pool_get_pp() API
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

--000000000000a131c1062fc9b506
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 7, 2025 at 1:31=E2=80=AFAM Yunsheng Lin <linyunsheng@huawei.com=
> wrote:

> Introduce page_pool_get_pp() API to avoid caller accessing
> page->pp directly, in order to make the following patch more
> reviewable as the following patch will change page->pp to
> page->pp_item to fix the DMA API misuse problem.
>
> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
> ---
>  drivers/net/ethernet/freescale/fec_main.c          |  8 +++++---
>  .../net/ethernet/google/gve/gve_buffer_mgmt_dqo.c  |  2 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c        |  6 ++++--
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c        | 14 +++++++++-----
>  drivers/net/ethernet/intel/libeth/rx.c             |  2 +-
>  drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c   |  3 ++-
>  drivers/net/netdevsim/netdev.c                     |  6 ++++--
>  drivers/net/wireless/mediatek/mt76/mt76.h          |  2 +-
>  include/net/libeth/rx.h                            |  3 ++-
>  include/net/page_pool/helpers.h                    |  5 +++++
>  10 files changed, 34 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/net/ethernet/freescale/fec_main.c
> b/drivers/net/ethernet/freescale/fec_main.c
> index a86cfebedaa8..4ade1553557a 100644
> --- a/drivers/net/ethernet/freescale/fec_main.c
> +++ b/drivers/net/ethernet/freescale/fec_main.c
> @@ -1038,7 +1038,8 @@ static void fec_enet_bd_init(struct net_device *dev=
)
>                                 struct page *page =3D txq->tx_buf[i].buf_=
p;
>
>                                 if (page)
> -                                       page_pool_put_page(page->pp, page=
,
> 0, false);
> +
>  page_pool_put_page(page_pool_get_pp(page),
> +                                                          page, 0, false=
);
>                         }
>
>                         txq->tx_buf[i].buf_p =3D NULL;
> @@ -1576,7 +1577,7 @@ fec_enet_tx_queue(struct net_device *ndev, u16
> queue_id, int budget)
>                         xdp_return_frame_rx_napi(xdpf);
>                 } else { /* recycle pages of XDP_TX frames */
>                         /* The dma_sync_size =3D 0 as XDP_TX has already
> synced DMA for_device */
> -                       page_pool_put_page(page->pp, page, 0, true);
> +                       page_pool_put_page(page_pool_get_pp(page), page,
> 0, true);
>                 }
>
>                 txq->tx_buf[index].buf_p =3D NULL;
> @@ -3343,7 +3344,8 @@ static void fec_enet_free_buffers(struct net_device
> *ndev)
>                         } else {
>                                 struct page *page =3D txq->tx_buf[i].buf_=
p;
>
> -                               page_pool_put_page(page->pp, page, 0,
> false);
> +                               page_pool_put_page(page_pool_get_pp(page)=
,
> +                                                  page, 0, false);
>                         }
>
>                         txq->tx_buf[i].buf_p =3D NULL;
> diff --git a/drivers/net/ethernet/google/gve/gve_buffer_mgmt_dqo.c
> b/drivers/net/ethernet/google/gve/gve_buffer_mgmt_dqo.c
> index 403f0f335ba6..87422b8828ff 100644
> --- a/drivers/net/ethernet/google/gve/gve_buffer_mgmt_dqo.c
> +++ b/drivers/net/ethernet/google/gve/gve_buffer_mgmt_dqo.c
> @@ -210,7 +210,7 @@ void gve_free_to_page_pool(struct gve_rx_ring *rx,
>         if (!page)
>                 return;
>
> -       page_pool_put_full_page(page->pp, page, allow_direct);
> +       page_pool_put_full_page(page_pool_get_pp(page), page,
> allow_direct);
>         buf_state->page_info.page =3D NULL;
>  }
>

Hi Yunsheng,

FYI, I just submitted a patch that switches the gve driver to using
netmem page_pool API and made the corresponding change to netmem_get_pp API
for the code above.

https://lore.kernel.org/netdev/20250307003905.601175-1-hramamurthy@google.c=
om/

FWIW, the spirit of the API change LGTM.


>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 422312b8b54a..72f17eaac277 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -1197,7 +1197,8 @@ static void iavf_add_rx_frag(struct sk_buff *skb,
>                              const struct libeth_fqe *rx_buffer,
>                              unsigned int size)
>  {
> -       u32 hr =3D rx_buffer->page->pp->p.offset;
> +       struct page_pool *pool =3D page_pool_get_pp(rx_buffer->page);
> +       u32 hr =3D pool->p.offset;
>
>         skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
>                         rx_buffer->offset + hr, size, rx_buffer->truesize=
);
> @@ -1214,7 +1215,8 @@ static void iavf_add_rx_frag(struct sk_buff *skb,
>  static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer=
,
>                                       unsigned int size)
>  {
> -       u32 hr =3D rx_buffer->page->pp->p.offset;
> +       struct page_pool *pool =3D page_pool_get_pp(rx_buffer->page);
> +       u32 hr =3D pool->p.offset;
>         struct sk_buff *skb;
>         void *va;
>
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index bdf52cef3891..0ce77a5559aa 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -385,7 +385,8 @@ static void idpf_rx_page_rel(struct libeth_fqe *rx_bu=
f)
>         if (unlikely(!rx_buf->page))
>                 return;
>
> -       page_pool_put_full_page(rx_buf->page->pp, rx_buf->page, false);
> +       page_pool_put_full_page(page_pool_get_pp(rx_buf->page),
> rx_buf->page,
> +                               false);
>
>         rx_buf->page =3D NULL;
>         rx_buf->offset =3D 0;
> @@ -3096,7 +3097,8 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue
> *rxq, struct sk_buff *skb,
>  void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
>                       unsigned int size)
>  {
> -       u32 hr =3D rx_buf->page->pp->p.offset;
> +       struct page_pool *pool =3D page_pool_get_pp(rx_buf->page);
> +       u32 hr =3D pool->p.offset;
>
>         skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
>                         rx_buf->offset + hr, size, rx_buf->truesize);
> @@ -3128,8 +3130,10 @@ static u32 idpf_rx_hsplit_wa(const struct
> libeth_fqe *hdr,
>         if (!libeth_rx_sync_for_cpu(buf, copy))
>                 return 0;
>
> -       dst =3D page_address(hdr->page) + hdr->offset +
> hdr->page->pp->p.offset;
> -       src =3D page_address(buf->page) + buf->offset +
> buf->page->pp->p.offset;
> +       dst =3D page_address(hdr->page) + hdr->offset +
> +               page_pool_get_pp(hdr->page)->p.offset;
> +       src =3D page_address(buf->page) + buf->offset +
> +               page_pool_get_pp(buf->page)->p.offset;
>         memcpy(dst, src, LARGEST_ALIGN(copy));
>
>         buf->offset +=3D copy;
> @@ -3147,7 +3151,7 @@ static u32 idpf_rx_hsplit_wa(const struct libeth_fq=
e
> *hdr,
>   */
>  struct sk_buff *idpf_rx_build_skb(const struct libeth_fqe *buf, u32 size=
)
>  {
> -       u32 hr =3D buf->page->pp->p.offset;
> +       u32 hr =3D page_pool_get_pp(buf->page)->p.offset;
>         struct sk_buff *skb;
>         void *va;
>
> diff --git a/drivers/net/ethernet/intel/libeth/rx.c
> b/drivers/net/ethernet/intel/libeth/rx.c
> index 66d1d23b8ad2..8de0c3a3b146 100644
> --- a/drivers/net/ethernet/intel/libeth/rx.c
> +++ b/drivers/net/ethernet/intel/libeth/rx.c
> @@ -207,7 +207,7 @@ EXPORT_SYMBOL_NS_GPL(libeth_rx_fq_destroy, "LIBETH");
>   */
>  void libeth_rx_recycle_slow(struct page *page)
>  {
> -       page_pool_recycle_direct(page->pp, page);
> +       page_pool_recycle_direct(page_pool_get_pp(page), page);
>  }
>  EXPORT_SYMBOL_NS_GPL(libeth_rx_recycle_slow, "LIBETH");
>
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
> b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
> index 6f3094a479e1..b6bee95db994 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
> @@ -709,7 +709,8 @@ static void mlx5e_free_xdpsq_desc(struct mlx5e_xdpsq
> *sq,
>                                 /* No need to check ((page->pp_magic &
> ~0x3UL) =3D=3D PP_SIGNATURE)
>                                  * as we know this is a page_pool page.
>                                  */
> -                               page_pool_recycle_direct(page->pp, page);
> +
>  page_pool_recycle_direct(page_pool_get_pp(page),
> +                                                        page);
>                         } while (++n < num);
>
>                         break;
> diff --git a/drivers/net/netdevsim/netdev.c
> b/drivers/net/netdevsim/netdev.c
> index 54d03b0628d2..769fbea8ccf0 100644
> --- a/drivers/net/netdevsim/netdev.c
> +++ b/drivers/net/netdevsim/netdev.c
> @@ -847,7 +847,8 @@ nsim_pp_hold_write(struct file *file, const char
> __user *data,
>                 if (!ns->page)
>                         ret =3D -ENOMEM;
>         } else {
> -               page_pool_put_full_page(ns->page->pp, ns->page, false);
> +               page_pool_put_full_page(page_pool_get_pp(ns->page),
> ns->page,
> +                                       false);
>                 ns->page =3D NULL;
>         }
>
> @@ -1059,7 +1060,8 @@ void nsim_destroy(struct netdevsim *ns)
>
>         /* Put this intentionally late to exercise the orphaning path */
>         if (ns->page) {
> -               page_pool_put_full_page(ns->page->pp, ns->page, false);
> +               page_pool_put_full_page(page_pool_get_pp(ns->page),
> ns->page,
> +                                       false);
>                 ns->page =3D NULL;
>         }
>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt76.h
> b/drivers/net/wireless/mediatek/mt76/mt76.h
> index 132148f7b107..11a88ecf8533 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt76.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76.h
> @@ -1777,7 +1777,7 @@ static inline void mt76_put_page_pool_buf(void *buf=
,
> bool allow_direct)
>  {
>         struct page *page =3D virt_to_head_page(buf);
>
> -       page_pool_put_full_page(page->pp, page, allow_direct);
> +       page_pool_put_full_page(page_pool_get_pp(page), page,
> allow_direct);
>  }
>
>  static inline void *
> diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h
> index ab05024be518..2a3991d5b7c0 100644
> --- a/include/net/libeth/rx.h
> +++ b/include/net/libeth/rx.h
> @@ -137,7 +137,8 @@ static inline bool libeth_rx_sync_for_cpu(const struc=
t
> libeth_fqe *fqe,
>                 return false;
>         }
>
> -       page_pool_dma_sync_for_cpu(page->pp, page, fqe->offset, len);
> +       page_pool_dma_sync_for_cpu(page_pool_get_pp(page), page,
> fqe->offset,
> +                                  len);
>
>         return true;
>  }
> diff --git a/include/net/page_pool/helpers.h
> b/include/net/page_pool/helpers.h
> index 582a3d00cbe2..ab91911af215 100644
> --- a/include/net/page_pool/helpers.h
> +++ b/include/net/page_pool/helpers.h
> @@ -83,6 +83,11 @@ static inline u64 *page_pool_ethtool_stats_get(u64
> *data, const void *stats)
>  }
>  #endif
>
> +static inline struct page_pool *page_pool_get_pp(struct page *page)
> +{
> +       return page->pp;
> +}
> +
>  /**
>   * page_pool_dev_alloc_pages() - allocate a page.
>   * @pool:      pool from which to allocate
> --
> 2.33.0
>
>

--000000000000a131c1062fc9b506
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 7, =
2025 at 1:31=E2=80=AFAM Yunsheng Lin &lt;<a href=3D"mailto:linyunsheng@huaw=
ei.com">linyunsheng@huawei.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Introduce page_pool_get_pp() API to avoid cal=
ler accessing<br>
page-&gt;pp directly, in order to make the following patch more<br>
reviewable as the following patch will change page-&gt;pp to<br>
page-&gt;pp_item to fix the DMA API misuse problem.<br>
<br>
Signed-off-by: Yunsheng Lin &lt;<a href=3D"mailto:linyunsheng@huawei.com" t=
arget=3D"_blank">linyunsheng@huawei.com</a>&gt;<br>
---<br>
=C2=A0drivers/net/ethernet/freescale/fec_main.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 8 +++++---<br>
=C2=A0.../net/ethernet/google/gve/gve_buffer_mgmt_dqo.c=C2=A0 |=C2=A0 2 +-<=
br>
=C2=A0drivers/net/ethernet/intel/iavf/iavf_txrx.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 6 ++++--<br>
=C2=A0drivers/net/ethernet/intel/idpf/idpf_txrx.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 14 +++++++++-----<br>
=C2=A0drivers/net/ethernet/intel/libeth/rx.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 2 +-<br>
=C2=A0drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c=C2=A0 =C2=A0|=C2=A0 =
3 ++-<br>
=C2=A0drivers/net/netdevsim/netdev.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 6 ++++--<br>
=C2=A0drivers/net/wireless/mediatek/mt76/mt76.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 2 +-<br>
=C2=A0include/net/libeth/rx.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 3 ++-<br>
=C2=A0include/net/page_pool/helpers.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 5 +++++<br>
=C2=A010 files changed, 34 insertions(+), 17 deletions(-)<br>
<br>
diff --git a/drivers/net/ethernet/freescale/fec_main.c b/drivers/net/ethern=
et/freescale/fec_main.c<br>
index a86cfebedaa8..4ade1553557a 100644<br>
--- a/drivers/net/ethernet/freescale/fec_main.c<br>
+++ b/drivers/net/ethernet/freescale/fec_main.c<br>
@@ -1038,7 +1038,8 @@ static void fec_enet_bd_init(struct net_device *dev)<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct page *page =3D txq-&gt;tx_buf=
[i].buf_p;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (page)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool=
_put_page(page-&gt;pp, page, 0, false);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool=
_put_page(page_pool_get_pp(page),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 page, 0, false);<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 txq-&gt;tx_buf[i].buf_p =3D NULL;<br>
@@ -1576,7 +1577,7 @@ fec_enet_tx_queue(struct net_device *ndev, u16 queue_=
id, int budget)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 xdp_return_frame_rx_napi(xdpf);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else { /* recycle=
 pages of XDP_TX frames */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /* The dma_sync_size =3D 0 as XDP_TX has already synced DMA for_=
device */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0page_pool_put_page(page-&gt;pp, page, 0, true);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0page_pool_put_page(page_pool_get_pp(page), page, 0, true);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 txq-&gt;tx_buf[inde=
x].buf_p =3D NULL;<br>
@@ -3343,7 +3344,8 @@ static void fec_enet_free_buffers(struct net_device *=
ndev)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 } else {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct page *page =3D txq-&gt;tx_buf=
[i].buf_p;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_page(page-&gt;pp, page,=
 0, false);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_page(page_pool_get_pp(p=
age),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 page, 0, false);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 txq-&gt;tx_buf[i].buf_p =3D NULL;<br>
diff --git a/drivers/net/ethernet/google/gve/gve_buffer_mgmt_dqo.c b/driver=
s/net/ethernet/google/gve/gve_buffer_mgmt_dqo.c<br>
index 403f0f335ba6..87422b8828ff 100644<br>
--- a/drivers/net/ethernet/google/gve/gve_buffer_mgmt_dqo.c<br>
+++ b/drivers/net/ethernet/google/gve/gve_buffer_mgmt_dqo.c<br>
@@ -210,7 +210,7 @@ void gve_free_to_page_pool(struct gve_rx_ring *rx,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!page)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_full_page(page-&gt;pp, page, allo=
w_direct);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_full_page(page_pool_get_pp(page),=
 page, allow_direct);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 buf_state-&gt;<a href=3D"http://page_info.page"=
 rel=3D"noreferrer" target=3D"_blank">page_info.page</a> =3D NULL;<br>
=C2=A0}<br></blockquote><div><br></div><div>Hi Yunsheng,</div><div><br></di=
v><div>FYI, I just submitted a patch that switches the gve driver to using =
netmem=C2=A0page_pool API and made the corresponding change to netmem_get_p=
p API for the code above.</div><div><br></div><div><a href=3D"https://lore.=
kernel.org/netdev/20250307003905.601175-1-hramamurthy@google.com/">https://=
lore.kernel.org/netdev/20250307003905.601175-1-hramamurthy@google.com/</a><=
/div><div><br></div><div>FWIW, the spirit of the API change LGTM.</div><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethe=
rnet/intel/iavf/iavf_txrx.c<br>
index 422312b8b54a..72f17eaac277 100644<br>
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c<br>
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c<br>
@@ -1197,7 +1197,8 @@ static void iavf_add_rx_frag(struct sk_buff *skb,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const struct libeth_fqe *rx_buffer,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int size)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 hr =3D rx_buffer-&gt;page-&gt;pp-&gt;p.offs=
et;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct page_pool *pool =3D page_pool_get_pp(rx_=
buffer-&gt;page);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 hr =3D pool-&gt;p.offset;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 skb_add_rx_frag(skb, skb_shinfo(skb)-&gt;nr_fra=
gs, rx_buffer-&gt;page,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rx_buffer-&gt;offset + hr, size, rx_buffer-&gt;truesize);<br>
@@ -1214,7 +1215,8 @@ static void iavf_add_rx_frag(struct sk_buff *skb,<br>
=C2=A0static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buf=
fer,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int si=
ze)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 hr =3D rx_buffer-&gt;page-&gt;pp-&gt;p.offs=
et;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct page_pool *pool =3D page_pool_get_pp(rx_=
buffer-&gt;page);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 hr =3D pool-&gt;p.offset;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct sk_buff *skb;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 void *va;<br>
<br>
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethe=
rnet/intel/idpf/idpf_txrx.c<br>
index bdf52cef3891..0ce77a5559aa 100644<br>
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
@@ -385,7 +385,8 @@ static void idpf_rx_page_rel(struct libeth_fqe *rx_buf)=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (unlikely(!rx_buf-&gt;page))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_full_page(rx_buf-&gt;page-&gt;pp,=
 rx_buf-&gt;page, false);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_full_page(page_pool_get_pp(rx_buf=
-&gt;page), rx_buf-&gt;page,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0false);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_buf-&gt;page =3D NULL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_buf-&gt;offset =3D 0;<br>
@@ -3096,7 +3097,8 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq,=
 struct sk_buff *skb,<br>
=C2=A0void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb=
,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 unsigned int size)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 hr =3D rx_buf-&gt;page-&gt;pp-&gt;p.offset;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct page_pool *pool =3D page_pool_get_pp(rx_=
buf-&gt;page);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 hr =3D pool-&gt;p.offset;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 skb_add_rx_frag(skb, skb_shinfo(skb)-&gt;nr_fra=
gs, rx_buf-&gt;page,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rx_buf-&gt;offset + hr, size, rx_buf-&gt;truesize);<br>
@@ -3128,8 +3130,10 @@ static u32 idpf_rx_hsplit_wa(const struct libeth_fqe=
 *hdr,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!libeth_rx_sync_for_cpu(buf, copy))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0dst =3D page_address(hdr-&gt;page) + hdr-&gt;of=
fset + hdr-&gt;page-&gt;pp-&gt;p.offset;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0src =3D page_address(buf-&gt;page) + buf-&gt;of=
fset + buf-&gt;page-&gt;pp-&gt;p.offset;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dst =3D page_address(hdr-&gt;page) + hdr-&gt;of=
fset +<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_get_pp(hd=
r-&gt;page)-&gt;p.offset;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0src =3D page_address(buf-&gt;page) + buf-&gt;of=
fset +<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_get_pp(bu=
f-&gt;page)-&gt;p.offset;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 memcpy(dst, src, LARGEST_ALIGN(copy));<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 buf-&gt;offset +=3D copy;<br>
@@ -3147,7 +3151,7 @@ static u32 idpf_rx_hsplit_wa(const struct libeth_fqe =
*hdr,<br>
=C2=A0 */<br>
=C2=A0struct sk_buff *idpf_rx_build_skb(const struct libeth_fqe *buf, u32 s=
ize)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 hr =3D buf-&gt;page-&gt;pp-&gt;p.offset;<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 hr =3D page_pool_get_pp(buf-&gt;page)-&gt;p=
.offset;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct sk_buff *skb;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 void *va;<br>
<br>
diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/=
intel/libeth/rx.c<br>
index 66d1d23b8ad2..8de0c3a3b146 100644<br>
--- a/drivers/net/ethernet/intel/libeth/rx.c<br>
+++ b/drivers/net/ethernet/intel/libeth/rx.c<br>
@@ -207,7 +207,7 @@ EXPORT_SYMBOL_NS_GPL(libeth_rx_fq_destroy, &quot;LIBETH=
&quot;);<br>
=C2=A0 */<br>
=C2=A0void libeth_rx_recycle_slow(struct page *page)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_recycle_direct(page-&gt;pp, page);<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_recycle_direct(page_pool_get_pp(page)=
, page);<br>
=C2=A0}<br>
=C2=A0EXPORT_SYMBOL_NS_GPL(libeth_rx_recycle_slow, &quot;LIBETH&quot;);<br>
<br>
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net=
/ethernet/mellanox/mlx5/core/en/xdp.c<br>
index 6f3094a479e1..b6bee95db994 100644<br>
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c<br>
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c<br>
@@ -709,7 +709,8 @@ static void mlx5e_free_xdpsq_desc(struct mlx5e_xdpsq *s=
q,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* No need to check ((page-&gt;pp_ma=
gic &amp; ~0x3UL) =3D=3D PP_SIGNATURE)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* as we know this is a page_po=
ol page.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_recycle_direct(page-&gt;pp,=
 page);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_recycle_direct(page_pool_ge=
t_pp(page),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 page);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 } while (++n &lt; num);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
diff --git a/drivers/net/netdevsim/netdev.c b/drivers/net/netdevsim/netdev.=
c<br>
index 54d03b0628d2..769fbea8ccf0 100644<br>
--- a/drivers/net/netdevsim/netdev.c<br>
+++ b/drivers/net/netdevsim/netdev.c<br>
@@ -847,7 +847,8 @@ nsim_pp_hold_write(struct file *file, const char __user=
 *data,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!ns-&gt;page)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ret =3D -ENOMEM;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_full_=
page(ns-&gt;page-&gt;pp, ns-&gt;page, false);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_full_=
page(page_pool_get_pp(ns-&gt;page), ns-&gt;page,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0false);<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ns-&gt;page =3D NUL=
L;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
@@ -1059,7 +1060,8 @@ void nsim_destroy(struct netdevsim *ns)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Put this intentionally late to exercise the =
orphaning path */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ns-&gt;page) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_full_=
page(ns-&gt;page-&gt;pp, ns-&gt;page, false);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_full_=
page(page_pool_get_pp(ns-&gt;page), ns-&gt;page,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0false);<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ns-&gt;page =3D NUL=
L;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
diff --git a/drivers/net/wireless/mediatek/mt76/mt76.h b/drivers/net/wirele=
ss/mediatek/mt76/mt76.h<br>
index 132148f7b107..11a88ecf8533 100644<br>
--- a/drivers/net/wireless/mediatek/mt76/mt76.h<br>
+++ b/drivers/net/wireless/mediatek/mt76/mt76.h<br>
@@ -1777,7 +1777,7 @@ static inline void mt76_put_page_pool_buf(void *buf, =
bool allow_direct)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct page *page =3D virt_to_head_page(buf);<b=
r>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_full_page(page-&gt;pp, page, allo=
w_direct);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_put_full_page(page_pool_get_pp(page),=
 page, allow_direct);<br>
=C2=A0}<br>
<br>
=C2=A0static inline void *<br>
diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h<br>
index ab05024be518..2a3991d5b7c0 100644<br>
--- a/include/net/libeth/rx.h<br>
+++ b/include/net/libeth/rx.h<br>
@@ -137,7 +137,8 @@ static inline bool libeth_rx_sync_for_cpu(const struct =
libeth_fqe *fqe,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return false;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_dma_sync_for_cpu(page-&gt;pp, page, f=
qe-&gt;offset, len);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0page_pool_dma_sync_for_cpu(page_pool_get_pp(pag=
e), page, fqe-&gt;offset,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 len);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return true;<br>
=C2=A0}<br>
diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helper=
s.h<br>
index 582a3d00cbe2..ab91911af215 100644<br>
--- a/include/net/page_pool/helpers.h<br>
+++ b/include/net/page_pool/helpers.h<br>
@@ -83,6 +83,11 @@ static inline u64 *page_pool_ethtool_stats_get(u64 *data=
, const void *stats)<br>
=C2=A0}<br>
=C2=A0#endif<br>
<br>
+static inline struct page_pool *page_pool_get_pp(struct page *page)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return page-&gt;pp;<br>
+}<br>
+<br>
=C2=A0/**<br>
=C2=A0 * page_pool_dev_alloc_pages() - allocate a page.<br>
=C2=A0 * @pool:=C2=A0 =C2=A0 =C2=A0 pool from which to allocate<br>
-- <br>
2.33.0<br>
<br>
</blockquote></div></div>

--000000000000a131c1062fc9b506--
