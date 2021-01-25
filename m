Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EF53029EA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jan 2021 19:19:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A28B885DF2;
	Mon, 25 Jan 2021 18:19:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XejWaq_cSR5S; Mon, 25 Jan 2021 18:19:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7387385DC4;
	Mon, 25 Jan 2021 18:19:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0219E1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 18:19:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ED15F87036
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 18:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0NM+Q2mIFpYD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jan 2021 18:19:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 463698701E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 18:19:51 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id u11so8145850plg.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 10:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=0c4KjDt9RqUgbcxyXAyGUkPhwWC8rpyfeee6wZQAFco=;
 b=AqNbyr+0wl4qPhxc3CH+99Y1/W6aQeouqpdR58sNIYDkGf5WmwV5MgeLJBM+IJ1Pvc
 dioGNRhcggbnIEy9SigRQFGl8trx8Oxl81+dLdOAiLTHheihfnqS0qNI5qKQ51G6PrWi
 AjxiMB4vDodzkwLRjltgGxDQrHLTXzNrsIXnVtWs2KYQTZTQ3pIGDts5Yr21ui0aaIQi
 4bSnWwkHoSrHG0JHeaBj3YOZKvkMqu3AnHvqU6KZCxOoYOENDNIxXW9TJT6Fpy/alZj4
 lOQ5W05p4mQz8efM/bPfTOaLOcBGbqYkFi5TwVKa1jIVc91DXYFZhhGlS/2/K5IOi6+O
 Zr0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=0c4KjDt9RqUgbcxyXAyGUkPhwWC8rpyfeee6wZQAFco=;
 b=s/w3FPKGsmrSuD9+dIv8ARRHdL1s0Io0wFVR/jN9A3EYqWH3BkCGsLQCy5sPZGx8Pp
 aqYVdARAStSrQNO8sHggCJGNiivvfBjQwTH7HG8t5uYi5JLfXYgPnfMW4CmAWTBtgF7P
 pzGmT0kRy4JHdlUB8B/IC1ONifHVc76077WCcKHZNnJel9FJO2+QvDQZWqJxQ2DtuCVo
 JAaKeI5oM25y8bpMR5FSqRDvyGJ1KmMvu31LSX+7wq3ApAa1/NiXbXEyp6whHwH7G/zA
 DhJsKN8kXFJegrbTZUMAzJEwJu02I60hqHcnBSImrutxlwRNM6UV1+hIiaB/eDDc3Evp
 AeNQ==
X-Gm-Message-State: AOAM53353nEUcuba+Q8Jmfb/G0TyAImx0O0ftKHkptO/FZz+FCjQ5tlI
 wXlnaeUBsviffOgzM6QpzsCApw==
X-Google-Smtp-Source: ABdhPJx4cEmVf7ft4lmXwGwBrpz2zFbNGi/QGjI/RQLigXVw/jFM6+G/RZb7dQlNfHWGfUuyCC1KTQ==
X-Received: by 2002:a17:902:f54e:b029:de:19f9:c45f with SMTP id
 h14-20020a170902f54eb02900de19f9c45fmr1958100plf.48.1611598790601; 
 Mon, 25 Jan 2021 10:19:50 -0800 (PST)
Received: from [2620:15c:17:3:4a0f:cfff:fe51:6667]
 ([2620:15c:17:3:4a0f:cfff:fe51:6667])
 by smtp.gmail.com with ESMTPSA id w21sm16351255pff.220.2021.01.25.10.19.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Jan 2021 10:19:49 -0800 (PST)
Date: Mon, 25 Jan 2021 10:19:48 -0800 (PST)
From: David Rientjes <rientjes@google.com>
To: Alexander Lobakin <alobakin@pm.me>
In-Reply-To: <20210125164612.243838-3-alobakin@pm.me>
Message-ID: <85978330-9753-f7a-f263-7a1cfd95b851@google.com>
References: <20210125164612.243838-1-alobakin@pm.me>
 <20210125164612.243838-3-alobakin@pm.me>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] net: constify
 page_is_pfmemalloc() argument at call sites
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
Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-mm@kvack.org,
 Jakub Sitnicki <jakub@cloudflare.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Aleksandr Nogikh <nogikh@google.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 25 Jan 2021, Alexander Lobakin wrote:

> Constify "page" argument for page_is_pfmemalloc() users where applicable.
> 
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> ---
>  drivers/net/ethernet/hisilicon/hns3/hns3_enet.c   | 2 +-
>  drivers/net/ethernet/intel/fm10k/fm10k_main.c     | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c       | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c       | 2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c         | 2 +-
>  drivers/net/ethernet/intel/igb/igb_main.c         | 2 +-
>  drivers/net/ethernet/intel/igc/igc_main.c         | 2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     | 2 +-
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 2 +-
>  drivers/net/ethernet/mellanox/mlx5/core/en_rx.c   | 2 +-
>  include/linux/skbuff.h                            | 4 ++--
>  11 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> index 512080640cbc..0f8e962b5010 100644
> --- a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> +++ b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> @@ -2800,7 +2800,7 @@ static void hns3_nic_alloc_rx_buffers(struct hns3_enet_ring *ring,
>  	writel(i, ring->tqp->io_base + HNS3_RING_RX_RING_HEAD_REG);
>  }
>  
> -static bool hns3_page_is_reusable(struct page *page)
> +static bool hns3_page_is_reusable(const struct page *page)
>  {
>  	return page_to_nid(page) == numa_mem_id() &&
>  		!page_is_pfmemalloc(page);

Hi Alexander,

All of these functions appear to be doing the same thing, would it make 
sense to simply add this to a header file and remove all the code 
duplication as well?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
