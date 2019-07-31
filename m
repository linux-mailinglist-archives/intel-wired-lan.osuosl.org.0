Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 664877CB8E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 20:11:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 11EC52046A;
	Wed, 31 Jul 2019 18:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IrRcp5urxj0f; Wed, 31 Jul 2019 18:11:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D82DA203F2;
	Wed, 31 Jul 2019 18:10:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 231E11BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:10:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1CDF487079
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bzE3OSVCB3qa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 18:10:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DFAFA8700E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:10:55 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id r7so32317913pfl.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 11:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=pep2268SUKB+oWlWvHH34A9NbLrS2fXz4pQLCTwbYWI=;
 b=CqC09YWPPepmuNLh0VzhrFZ1t1Hi5zWWRBHXho8B6yypZqlBw6s9ECSPnhQKR1bcnI
 6gQgnSXBc1pGFjvXGmWCbepyZvSmzXDyROSY3QRC+fIKBJ1foIE8xjZ4vqjrQfnMUWGO
 N7tZQ+b1EGDrDhDxjrtza+vklYWSpiBO5UfhAeDDxEVDmf+MFW/AZ1rsaOz6eOUxcPpU
 8aTHDaq5rHfHwE0wA0M5cc0Iw5OFNeYdVMnhQCoaGGMNuMnXuc4PxdGmftDV4HWOZQEc
 5yI5Hg5S8SZtHmpQ4M2ju2rDhIFpQR4yODHR8iUklK4Px96YcKDyxOTH4LKVZcGE+FXT
 aaUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=pep2268SUKB+oWlWvHH34A9NbLrS2fXz4pQLCTwbYWI=;
 b=PDUVSPZi/Rqw5aONShgQVZYWEX03f57JJ7tTXmup1B6bBm5aHm9lMsVgqZxOctoQtr
 7+Ch1kTXGGJRuU7SyYkTDCPTkz1OEXy4JBt1BdLy8PA1ezRLhmrDDjnOZO8tjIyyaKeK
 kynuOaEIzMaaQ0MEAfEQffvPU9ETou2LSp3xpUlTPMI1rxPSQYXfkmAqDEscVF3Ew4wO
 wR67V1FQ/N/KR/ry6/lf+ujsjJCvgb3j5d9myg2TF3FNeOTNNVgszINvEN3QJ7yBdakH
 oBm3DwIRAWI4u05b2lfDEkwgCzb5mO5Pg8S7jxx9GmIw7uwhddmW8O4Vp8uW9AYzGMxG
 3xCg==
X-Gm-Message-State: APjAAAVGtu/BjrNR+mTGRntDD5dQBXnk5mxSkREJgKr8bALPJ4CDju6D
 cvlRMIvPJEE8sOapdUPUsic=
X-Google-Smtp-Source: APXvYqzH2NroFGz5G8oll9tbUUshmLQKnLFfUoZu2sdIPVV4Cx4Qp/Sb7+vBrNOGxHGUUggjy3ua0w==
X-Received: by 2002:a63:c118:: with SMTP id
 w24mr113486551pgf.347.1564596655215; 
 Wed, 31 Jul 2019 11:10:55 -0700 (PDT)
Received: from [172.26.116.133] ([2620:10d:c090:180::1:768c])
 by smtp.gmail.com with ESMTPSA id l124sm69027565pgl.54.2019.07.31.11.10.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:10:54 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Wed, 31 Jul 2019 11:10:52 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <7568C727-8F36-4127-9D86-A4C37494C55D@gmail.com>
In-Reply-To: <20190730085400.10376-8-kevin.laatz@intel.com>
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190730085400.10376-8-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 07/11] mlx5e: modify
 driver for handling offsets
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
Cc: maximmi@mellanox.com, jakub.kicinski@netronome.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 stephen@networkplumber.org, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 30 Jul 2019, at 1:53, Kevin Laatz wrote:

> With the addition of the unaligned chunks option, we need to make sure 
> we
> handle the offsets accordingly based on the mode we are currently 
> running
> in. This patch modifies the driver to appropriately mask the address 
> for
> each case.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
>
> ---
> v3:
>   - Use new helper function to handle offset
>
> v4:
>   - fixed headroom addition to handle. Using 
> xsk_umem_adjust_headroom()
>     now.
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c    | 8 ++++++--
>  drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c | 3 ++-
>  2 files changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c 
> b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
> index b0b982cf69bb..d5245893d2c8 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
> @@ -122,6 +122,7 @@ bool mlx5e_xdp_handle(struct mlx5e_rq *rq, struct 
> mlx5e_dma_info *di,
>  		      void *va, u16 *rx_headroom, u32 *len, bool xsk)
>  {
>  	struct bpf_prog *prog = READ_ONCE(rq->xdp_prog);
> +	struct xdp_umem *umem = rq->umem;
>  	struct xdp_buff xdp;
>  	u32 act;
>  	int err;
> @@ -138,8 +139,11 @@ bool mlx5e_xdp_handle(struct mlx5e_rq *rq, struct 
> mlx5e_dma_info *di,
>  	xdp.rxq = &rq->xdp_rxq;
>
>  	act = bpf_prog_run_xdp(prog, &xdp);
> -	if (xsk)
> -		xdp.handle += xdp.data - xdp.data_hard_start;
> +	if (xsk) {
> +		u64 off = xdp.data - xdp.data_hard_start;
> +
> +		xdp.handle = xsk_umem_handle_offset(umem, xdp.handle, off);

Shouldn't this be xdp_umem_adjust_offset()?


> +	}
>  	switch (act) {
>  	case XDP_PASS:
>  		*rx_headroom = xdp.data - xdp.data_hard_start;
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c 
> b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
> index 6a55573ec8f2..7c49a66d28c9 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
> @@ -24,7 +24,8 @@ int mlx5e_xsk_page_alloc_umem(struct mlx5e_rq *rq,
>  	if (!xsk_umem_peek_addr_rq(umem, &handle))
>  		return -ENOMEM;
>
> -	dma_info->xsk.handle = handle + rq->buff.umem_headroom;
> +	dma_info->xsk.handle = xsk_umem_adjust_offset(umem, handle,
> +						      rq->buff.umem_headroom);
>  	dma_info->xsk.data = xdp_umem_get_data(umem, dma_info->xsk.handle);
>
>  	/* No need to add headroom to the DMA address. In striding RQ case, 
> we
> -- 
> 2.17.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
