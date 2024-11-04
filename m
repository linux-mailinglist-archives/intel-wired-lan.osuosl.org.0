Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BA49BB9FF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 17:17:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD5F940218;
	Mon,  4 Nov 2024 16:17:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VYSphUmmfNNJ; Mon,  4 Nov 2024 16:16:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6595A403AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730737019;
	bh=wk8LyHWtMu8L87/2eeYa33MmxCMRwkuycxwL7Q1RHjk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jBU+si7VJz/MMemV6Ng5HTXlVjaXnksw6Dkb/3vaqe71Dt9eKRZSp+EKiCkY22J6e
	 9N+fyaMBv2VrBNadyJlGh6W8AfDZNdCbPneu9qAox0/dKCiMVpqFGXotmcwPcb3RgG
	 esW4eTZSSz0KdbeWQ6ezvQIlFSV88d0drGW9y4MgWfu3pQYQAaJlScQsGZYWcAqREz
	 ABj2/jwlrg3lLKNLSTMIfsYq0jMopwEb6CnXFLVhdkyqX0tZQMg63ZQpHgkcz/PB0u
	 lp6GIwsKY4rSxD1oCpD5ZpsJieMDEs115Ii1znuWBdiaHTmeZR+i7MIOETevMEio2c
	 hT5RDn0VQuPJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6595A403AD;
	Mon,  4 Nov 2024 16:16:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E2101962
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 02:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0B9280E0B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 02:52:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GMoa2Rgt-VZb for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 02:52:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=115.124.30.113;
 helo=out30-113.freemail.mail.aliyun.com;
 envelope-from=xuanzhuo@linux.alibaba.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AC26280E06
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC26280E06
Received: from out30-113.freemail.mail.aliyun.com
 (out30-113.freemail.mail.aliyun.com [115.124.30.113])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC26280E06
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 02:52:21 +0000 (UTC)
Received: from localhost(mailfrom:xuanzhuo@linux.alibaba.com
 fp:SMTPD_---0WIZn7Ws_1730688734 cluster:ay36) by smtp.aliyun-inc.com;
 Mon, 04 Nov 2024 10:52:15 +0800
Message-ID: <1730688721.0028145-5-xuanzhuo@linux.alibaba.com>
Date: Mon, 4 Nov 2024 10:52:01 +0800
From: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
To: Caleb Sander Mateos <csander@purestorage.com>
Cc: Caleb Sander Mateos <csander@purestorage.com>,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 oss-drivers@corigine.com, virtualization@lists.linux.dev,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Arthur Kiyanovski <akiyano@amazon.com>,
 Brett Creeley <brett.creeley@amd.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 David Arinzon <darinzon@amazon.com>,
 "David S. Miller" <davem@davemloft.net>, Doug Berger <opendmb@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 =?utf-8?q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
 Felix Fietkau <nbd@nbd.name>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jakub Kicinski <kuba@kernel.org>, Jason Wang <jasowang@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>, Leon Romanovsky <leon@kernel.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Louis Peens <louis.peens@corigine.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Noam Dagan <ndagan@amazon.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Roy Pledge <Roy.Pledge@nxp.com>, Saeed Bishara <saeedb@amazon.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Sean Wang <sean.wang@mediatek.com>,
 Shannon Nelson <shannon.nelson@amd.com>,
 Shay Agroskin <shayagr@amazon.com>, Simon Horman <horms@kernel.org>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tal Gilboa <talgi@nvidia.com>,
 Tariq Toukan <tariqt@nvidia.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>
References: <20241031002326.3426181-1-csander@purestorage.com>
 <20241031002326.3426181-2-csander@purestorage.com>
In-Reply-To: <20241031002326.3426181-2-csander@purestorage.com>
X-Mailman-Approved-At: Mon, 04 Nov 2024 16:16:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.alibaba.com; s=default;
 t=1730688738; h=Message-ID:Subject:Date:From:To;
 bh=wk8LyHWtMu8L87/2eeYa33MmxCMRwkuycxwL7Q1RHjk=;
 b=nlJji580RyeDQ0V5/Jzeu4jNpkdiT3M+JZfwMietHDPXzIXQAiv8CQXkCGktLHHJbjNXVfBdKX+fGY7a6AoWLUG5oqGXKyoEkHUJBSTyQK1ttLXMlc/PrzP0/9xNLP/vAOQPHKRDFUwxPve4flUxVEKUeF+P4gXkFdcQpqTBARg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.alibaba.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.alibaba.com header.i=@linux.alibaba.com
 header.a=rsa-sha256 header.s=default header.b=nlJji580
Subject: Re: [Intel-wired-lan] [resend PATCH 2/2] dim: pass dim_sample to
 net_dim() by reference
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

On Wed, 30 Oct 2024 18:23:26 -0600, Caleb Sander Mateos <csander@purestorage.com> wrote:
> net_dim() is currently passed a struct dim_sample argument by value.
> struct dim_sample is 24 bytes. Since this is greater 16 bytes, x86-64
> passes it on the stack. All callers have already initialized dim_sample
> on the stack, so passing it by value requires pushing a duplicated copy
> to the stack. Either witing to the stack and immediately reading it, or
> perhaps dereferencing addresses relative to the stack pointer in a chain
> of push instructions, seems to perform quite poorly.
>
> In a heavy TCP workload, mlx5e_handle_rx_dim() consumes 3% of CPU time,
> 94% of which is attributed to the first push instruction to copy
> dim_sample on the stack for the call to net_dim():
> // Call ktime_get()
>   0.26 |4ead2:   call   4ead7 <mlx5e_handle_rx_dim+0x47>
> // Pass the address of struct dim in %rdi
>        |4ead7:   lea    0x3d0(%rbx),%rdi
> // Set dim_sample.pkt_ctr
>        |4eade:   mov    %r13d,0x8(%rsp)
> // Set dim_sample.byte_ctr
>        |4eae3:   mov    %r12d,0xc(%rsp)
> // Set dim_sample.event_ctr
>   0.15 |4eae8:   mov    %bp,0x10(%rsp)
> // Duplicate dim_sample on the stack
>  94.16 |4eaed:   push   0x10(%rsp)
>   2.79 |4eaf1:   push   0x10(%rsp)
>   0.07 |4eaf5:   push   %rax
> // Call net_dim()
>   0.21 |4eaf6:   call   4eafb <mlx5e_handle_rx_dim+0x6b>
>
> To allow the caller to reuse the struct dim_sample already on the stack,
> pass the struct dim_sample by reference to net_dim().
>
> Signed-off-by: Caleb Sander Mateos <csander@purestorage.com>


For virtio-net:

Reviewed-by: Xuan Zhuo <xuanzhuo@linux.alibaba.com>


> ---
>  Documentation/networking/net_dim.rst                   |  2 +-
>  drivers/net/ethernet/amazon/ena/ena_netdev.c           |  2 +-
>  drivers/net/ethernet/broadcom/bcmsysport.c             |  2 +-
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c              |  4 ++--
>  drivers/net/ethernet/broadcom/genet/bcmgenet.c         |  2 +-
>  drivers/net/ethernet/freescale/enetc/enetc.c           |  2 +-
>  drivers/net/ethernet/hisilicon/hns3/hns3_enet.c        |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_txrx.c              |  4 ++--
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c            |  4 ++--
>  drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c |  2 +-
>  drivers/net/ethernet/mediatek/mtk_eth_soc.c            |  4 ++--
>  drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c      |  4 ++--
>  drivers/net/ethernet/netronome/nfp/nfd3/dp.c           |  4 ++--
>  drivers/net/ethernet/netronome/nfp/nfdk/dp.c           |  4 ++--
>  drivers/net/ethernet/pensando/ionic/ionic_txrx.c       |  2 +-
>  drivers/net/virtio_net.c                               |  2 +-
>  drivers/soc/fsl/dpio/dpio-service.c                    |  2 +-
>  include/linux/dim.h                                    |  2 +-
>  lib/dim/net_dim.c                                      | 10 +++++-----
>  19 files changed, 31 insertions(+), 31 deletions(-)
>
> diff --git a/Documentation/networking/net_dim.rst b/Documentation/networking/net_dim.rst
> index 8908fd7b0a8d..4377998e6826 100644
> --- a/Documentation/networking/net_dim.rst
> +++ b/Documentation/networking/net_dim.rst
> @@ -154,11 +154,11 @@ usage is not complete but it should make the outline of the usage clear.
>  	dim_update_sample(my_entity->events,
>  		          my_entity->packets,
>  		          my_entity->bytes,
>  		          &dim_sample);
>  	/* Call net DIM */
> -	net_dim(&my_entity->dim, dim_sample);
> +	net_dim(&my_entity->dim, &dim_sample);
>  	...
>    }
>
>    /* My entity's initialization function (my_entity was already allocated) */
>    int my_driver_init_my_entity(struct my_driver_entity *my_entity, ...)
> diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> index 96df20854eb9..63c8a2328142 100644
> --- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
> +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> @@ -1381,11 +1381,11 @@ static void ena_adjust_adaptive_rx_intr_moderation(struct ena_napi *ena_napi)
>  	dim_update_sample(rx_ring->non_empty_napi_events,
>  			  rx_ring->rx_stats.cnt,
>  			  rx_ring->rx_stats.bytes,
>  			  &dim_sample);
>
> -	net_dim(&ena_napi->dim, dim_sample);
> +	net_dim(&ena_napi->dim, &dim_sample);
>
>  	rx_ring->per_napi_packets = 0;
>  }
>
>  void ena_unmask_interrupt(struct ena_ring *tx_ring,
> diff --git a/drivers/net/ethernet/broadcom/bcmsysport.c b/drivers/net/ethernet/broadcom/bcmsysport.c
> index caff6e87a488..031e9e0cca53 100644
> --- a/drivers/net/ethernet/broadcom/bcmsysport.c
> +++ b/drivers/net/ethernet/broadcom/bcmsysport.c
> @@ -1027,11 +1027,11 @@ static int bcm_sysport_poll(struct napi_struct *napi, int budget)
>  	}
>
>  	if (priv->dim.use_dim) {
>  		dim_update_sample(priv->dim.event_ctr, priv->dim.packets,
>  				  priv->dim.bytes, &dim_sample);
> -		net_dim(&priv->dim.dim, dim_sample);
> +		net_dim(&priv->dim.dim, &dim_sample);
>  	}
>
>  	return work_done;
>  }
>
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> index 6dd6541d8619..ca42b81133d7 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> @@ -3100,11 +3100,11 @@ static int bnxt_poll(struct napi_struct *napi, int budget)
>
>  		dim_update_sample(cpr->event_ctr,
>  				  cpr->rx_packets,
>  				  cpr->rx_bytes,
>  				  &dim_sample);
> -		net_dim(&cpr->dim, dim_sample);
> +		net_dim(&cpr->dim, &dim_sample);
>  	}
>  	return work_done;
>  }
>
>  static int __bnxt_poll_cqs(struct bnxt *bp, struct bnxt_napi *bnapi, int budget)
> @@ -3231,11 +3231,11 @@ static int bnxt_poll_p5(struct napi_struct *napi, int budget)
>
>  		dim_update_sample(cpr->event_ctr,
>  				  cpr_rx->rx_packets,
>  				  cpr_rx->rx_bytes,
>  				  &dim_sample);
> -		net_dim(&cpr->dim, dim_sample);
> +		net_dim(&cpr->dim, &dim_sample);
>  	}
>  	return work_done;
>  }
>
>  static void bnxt_free_tx_skbs(struct bnxt *bp)
> diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
> index 10966ab15373..53a949eb9180 100644
> --- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
> +++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
> @@ -2403,11 +2403,11 @@ static int bcmgenet_rx_poll(struct napi_struct *napi, int budget)
>  	}
>
>  	if (ring->dim.use_dim) {
>  		dim_update_sample(ring->dim.event_ctr, ring->dim.packets,
>  				  ring->dim.bytes, &dim_sample);
> -		net_dim(&ring->dim.dim, dim_sample);
> +		net_dim(&ring->dim.dim, &dim_sample);
>  	}
>
>  	return work_done;
>  }
>
> diff --git a/drivers/net/ethernet/freescale/enetc/enetc.c b/drivers/net/ethernet/freescale/enetc/enetc.c
> index c09370eab319..05dedea6185a 100644
> --- a/drivers/net/ethernet/freescale/enetc/enetc.c
> +++ b/drivers/net/ethernet/freescale/enetc/enetc.c
> @@ -716,11 +716,11 @@ static void enetc_rx_net_dim(struct enetc_int_vector *v)
>
>  	dim_update_sample(v->comp_cnt,
>  			  v->rx_ring.stats.packets,
>  			  v->rx_ring.stats.bytes,
>  			  &dim_sample);
> -	net_dim(&v->rx_dim, dim_sample);
> +	net_dim(&v->rx_dim, &dim_sample);
>  }
>
>  static int enetc_bd_ready_count(struct enetc_bdr *tx_ring, int ci)
>  {
>  	int pi = enetc_rd_reg_hot(tx_ring->tcir) & ENETC_TBCIR_IDX_MASK;
> diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> index 4cbc4d069a1f..43377a7b2426 100644
> --- a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> +++ b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> @@ -4446,11 +4446,11 @@ static void hns3_update_rx_int_coalesce(struct hns3_enet_tqp_vector *tqp_vector)
>  	if (!rx_group->coal.adapt_enable)
>  		return;
>
>  	dim_update_sample(tqp_vector->event_cnt, rx_group->total_packets,
>  			  rx_group->total_bytes, &sample);
> -	net_dim(&rx_group->dim, sample);
> +	net_dim(&rx_group->dim, &sample);
>  }
>
>  static void hns3_update_tx_int_coalesce(struct hns3_enet_tqp_vector *tqp_vector)
>  {
>  	struct hns3_enet_ring_group *tx_group = &tqp_vector->tx_group;
> @@ -4459,11 +4459,11 @@ static void hns3_update_tx_int_coalesce(struct hns3_enet_tqp_vector *tqp_vector)
>  	if (!tx_group->coal.adapt_enable)
>  		return;
>
>  	dim_update_sample(tqp_vector->event_cnt, tx_group->total_packets,
>  			  tx_group->total_bytes, &sample);
> -	net_dim(&tx_group->dim, sample);
> +	net_dim(&tx_group->dim, &sample);
>  }
>
>  static int hns3_nic_common_poll(struct napi_struct *napi, int budget)
>  {
>  	struct hns3_nic_priv *priv = netdev_priv(napi->dev);
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 8208055d6e7f..5d2d7736fd5f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1350,18 +1350,18 @@ static void ice_net_dim(struct ice_q_vector *q_vector)
>
>  	if (ITR_IS_DYNAMIC(tx)) {
>  		struct dim_sample dim_sample;
>
>  		__ice_update_sample(q_vector, tx, &dim_sample, true);
> -		net_dim(&tx->dim, dim_sample);
> +		net_dim(&tx->dim, &dim_sample);
>  	}
>
>  	if (ITR_IS_DYNAMIC(rx)) {
>  		struct dim_sample dim_sample;
>
>  		__ice_update_sample(q_vector, rx, &dim_sample, false);
> -		net_dim(&rx->dim, dim_sample);
> +		net_dim(&rx->dim, &dim_sample);
>  	}
>  }
>
>  /**
>   * ice_buildreg_itr - build value for writing to the GLINT_DYN_CTL register
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index d4e6f0e10487..da2a5becf62f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -3677,11 +3677,11 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
>  		} while (u64_stats_fetch_retry(&txq->stats_sync, start));
>  	}
>
>  	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->tx_dim,
>  			       packets, bytes);
> -	net_dim(&q_vector->tx_dim, dim_sample);
> +	net_dim(&q_vector->tx_dim, &dim_sample);
>
>  check_rx_itr:
>  	if (!IDPF_ITR_IS_DYNAMIC(q_vector->rx_intr_mode))
>  		return;
>
> @@ -3696,11 +3696,11 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
>  		} while (u64_stats_fetch_retry(&rxq->stats_sync, start));
>  	}
>
>  	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->rx_dim,
>  			       packets, bytes);
> -	net_dim(&q_vector->rx_dim, dim_sample);
> +	net_dim(&q_vector->rx_dim, &dim_sample);
>  }
>
>  /**
>   * idpf_vport_intr_update_itr_ena_irq - Update itr and re-enable MSIX interrupt
>   * @q_vector: q_vector for which itr is being updated and interrupt enabled
> diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c
> index 933e18ba2fb2..7aaf32e9aa95 100644
> --- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c
> +++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c
> @@ -525,11 +525,11 @@ static void otx2_adjust_adaptive_coalese(struct otx2_nic *pfvf, struct otx2_cq_p
>
>  	dim_update_sample(pfvf->napi_events,
>  			  rx_frames + tx_frames,
>  			  rx_bytes + tx_bytes,
>  			  &dim_sample);
> -	net_dim(&cq_poll->dim, dim_sample);
> +	net_dim(&cq_poll->dim, &dim_sample);
>  }
>
>  int otx2_napi_handler(struct napi_struct *napi, int budget)
>  {
>  	struct otx2_cq_queue *rx_cq = NULL;
> diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
> index f01ceee5f02d..53485142938c 100644
> --- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
> +++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
> @@ -2225,11 +2225,11 @@ static int mtk_poll_rx(struct napi_struct *napi, int budget,
>
>  	eth->rx_packets += done;
>  	eth->rx_bytes += bytes;
>  	dim_update_sample(eth->rx_events, eth->rx_packets, eth->rx_bytes,
>  			  &dim_sample);
> -	net_dim(&eth->rx_dim, dim_sample);
> +	net_dim(&eth->rx_dim, &dim_sample);
>
>  	if (xdp_flush)
>  		xdp_do_flush();
>
>  	return done;
> @@ -2375,11 +2375,11 @@ static int mtk_poll_tx(struct mtk_eth *eth, int budget)
>  	if (state.txq)
>  		netdev_tx_completed_queue(state.txq, state.done, state.bytes);
>
>  	dim_update_sample(eth->tx_events, eth->tx_packets, eth->tx_bytes,
>  			  &dim_sample);
> -	net_dim(&eth->tx_dim, dim_sample);
> +	net_dim(&eth->tx_dim, &dim_sample);
>
>  	if (mtk_queue_stopped(eth) &&
>  	    (atomic_read(&ring->free_count) > ring->thresh))
>  		mtk_wake_queue(eth);
>
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c b/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
> index 5873fde65c2e..417098f0b2bb 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
> @@ -53,11 +53,11 @@ static void mlx5e_handle_tx_dim(struct mlx5e_txqsq *sq)
>
>  	if (unlikely(!test_bit(MLX5E_SQ_STATE_DIM, &sq->state)))
>  		return;
>
>  	dim_update_sample(sq->cq.event_ctr, stats->packets, stats->bytes, &dim_sample);
> -	net_dim(sq->dim, dim_sample);
> +	net_dim(sq->dim, &dim_sample);
>  }
>
>  static void mlx5e_handle_rx_dim(struct mlx5e_rq *rq)
>  {
>  	struct mlx5e_rq_stats *stats = rq->stats;
> @@ -65,11 +65,11 @@ static void mlx5e_handle_rx_dim(struct mlx5e_rq *rq)
>
>  	if (unlikely(!test_bit(MLX5E_RQ_STATE_DIM, &rq->state)))
>  		return;
>
>  	dim_update_sample(rq->cq.event_ctr, stats->packets, stats->bytes, &dim_sample);
> -	net_dim(rq->dim, dim_sample);
> +	net_dim(rq->dim, &dim_sample);
>  }
>
>  void mlx5e_trigger_irq(struct mlx5e_icosq *sq)
>  {
>  	struct mlx5_wq_cyc *wq = &sq->wq;
> diff --git a/drivers/net/ethernet/netronome/nfp/nfd3/dp.c b/drivers/net/ethernet/netronome/nfp/nfd3/dp.c
> index d215efc6cad0..f1c6c47564b1 100644
> --- a/drivers/net/ethernet/netronome/nfp/nfd3/dp.c
> +++ b/drivers/net/ethernet/netronome/nfp/nfd3/dp.c
> @@ -1177,11 +1177,11 @@ int nfp_nfd3_poll(struct napi_struct *napi, int budget)
>  			pkts = r_vec->rx_pkts;
>  			bytes = r_vec->rx_bytes;
>  		} while (u64_stats_fetch_retry(&r_vec->rx_sync, start));
>
>  		dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sample);
> -		net_dim(&r_vec->rx_dim, dim_sample);
> +		net_dim(&r_vec->rx_dim, &dim_sample);
>  	}
>
>  	if (r_vec->nfp_net->tx_coalesce_adapt_on && r_vec->tx_ring) {
>  		struct dim_sample dim_sample = {};
>  		unsigned int start;
> @@ -1192,11 +1192,11 @@ int nfp_nfd3_poll(struct napi_struct *napi, int budget)
>  			pkts = r_vec->tx_pkts;
>  			bytes = r_vec->tx_bytes;
>  		} while (u64_stats_fetch_retry(&r_vec->tx_sync, start));
>
>  		dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sample);
> -		net_dim(&r_vec->tx_dim, dim_sample);
> +		net_dim(&r_vec->tx_dim, &dim_sample);
>  	}
>
>  	return pkts_polled;
>  }
>
> diff --git a/drivers/net/ethernet/netronome/nfp/nfdk/dp.c b/drivers/net/ethernet/netronome/nfp/nfdk/dp.c
> index dae5af7d1845..ebeb6ab4465c 100644
> --- a/drivers/net/ethernet/netronome/nfp/nfdk/dp.c
> +++ b/drivers/net/ethernet/netronome/nfp/nfdk/dp.c
> @@ -1287,11 +1287,11 @@ int nfp_nfdk_poll(struct napi_struct *napi, int budget)
>  			pkts = r_vec->rx_pkts;
>  			bytes = r_vec->rx_bytes;
>  		} while (u64_stats_fetch_retry(&r_vec->rx_sync, start));
>
>  		dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sample);
> -		net_dim(&r_vec->rx_dim, dim_sample);
> +		net_dim(&r_vec->rx_dim, &dim_sample);
>  	}
>
>  	if (r_vec->nfp_net->tx_coalesce_adapt_on && r_vec->tx_ring) {
>  		struct dim_sample dim_sample = {};
>  		unsigned int start;
> @@ -1302,11 +1302,11 @@ int nfp_nfdk_poll(struct napi_struct *napi, int budget)
>  			pkts = r_vec->tx_pkts;
>  			bytes = r_vec->tx_bytes;
>  		} while (u64_stats_fetch_retry(&r_vec->tx_sync, start));
>
>  		dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sample);
> -		net_dim(&r_vec->tx_dim, dim_sample);
> +		net_dim(&r_vec->tx_dim, &dim_sample);
>  	}
>
>  	return pkts_polled;
>  }
>
> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_txrx.c b/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
> index 0eeda7e502db..2ac59564ded1 100644
> --- a/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
> @@ -926,11 +926,11 @@ static void ionic_dim_update(struct ionic_qcq *qcq, int napi_mode)
>  	}
>
>  	dim_update_sample(qcq->cq.bound_intr->rearm_count,
>  			  pkts, bytes, &dim_sample);
>
> -	net_dim(&qcq->dim, dim_sample);
> +	net_dim(&qcq->dim, &dim_sample);
>  }
>
>  int ionic_tx_napi(struct napi_struct *napi, int budget)
>  {
>  	struct ionic_qcq *qcq = napi_to_qcq(napi);
> diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
> index 792e9eadbfc3..869586c17ffd 100644
> --- a/drivers/net/virtio_net.c
> +++ b/drivers/net/virtio_net.c
> @@ -2802,11 +2802,11 @@ static void virtnet_rx_dim_update(struct virtnet_info *vi, struct receive_queue
>  	dim_update_sample(rq->calls,
>  			  u64_stats_read(&rq->stats.packets),
>  			  u64_stats_read(&rq->stats.bytes),
>  			  &cur_sample);
>
> -	net_dim(&rq->dim, cur_sample);
> +	net_dim(&rq->dim, &cur_sample);
>  	rq->packets_in_napi = 0;
>  }
>
>  static int virtnet_poll(struct napi_struct *napi, int budget)
>  {
> diff --git a/drivers/soc/fsl/dpio/dpio-service.c b/drivers/soc/fsl/dpio/dpio-service.c
> index b811446e0fa5..0b60ed16297c 100644
> --- a/drivers/soc/fsl/dpio/dpio-service.c
> +++ b/drivers/soc/fsl/dpio/dpio-service.c
> @@ -889,10 +889,10 @@ void dpaa2_io_update_net_dim(struct dpaa2_io *d, __u64 frames, __u64 bytes)
>
>  	d->bytes += bytes;
>  	d->frames += frames;
>
>  	dim_update_sample(d->event_ctr, d->frames, d->bytes, &dim_sample);
> -	net_dim(&d->rx_dim, dim_sample);
> +	net_dim(&d->rx_dim, &dim_sample);
>
>  	spin_unlock(&d->dim_lock);
>  }
>  EXPORT_SYMBOL(dpaa2_io_update_net_dim);
> diff --git a/include/linux/dim.h b/include/linux/dim.h
> index 84579a50ae7f..06543fd40fcc 100644
> --- a/include/linux/dim.h
> +++ b/include/linux/dim.h
> @@ -423,11 +423,11 @@ struct dim_cq_moder net_dim_get_def_tx_moderation(u8 cq_period_mode);
>   *
>   * Called by the consumer.
>   * This is the main logic of the algorithm, where data is processed in order
>   * to decide on next required action.
>   */
> -void net_dim(struct dim *dim, struct dim_sample end_sample);
> +void net_dim(struct dim *dim, const struct dim_sample *end_sample);
>
>  /* RDMA DIM */
>
>  /*
>   * RDMA DIM profile:
> diff --git a/lib/dim/net_dim.c b/lib/dim/net_dim.c
> index d7e7028e9b19..d6aa09a979b3 100644
> --- a/lib/dim/net_dim.c
> +++ b/lib/dim/net_dim.c
> @@ -345,33 +345,33 @@ static bool net_dim_decision(struct dim_stats *curr_stats, struct dim *dim)
>  		dim->prev_stats = *curr_stats;
>
>  	return dim->profile_ix != prev_ix;
>  }
>
> -void net_dim(struct dim *dim, struct dim_sample end_sample)
> +void net_dim(struct dim *dim, const struct dim_sample *end_sample)
>  {
>  	struct dim_stats curr_stats;
>  	u16 nevents;
>
>  	switch (dim->state) {
>  	case DIM_MEASURE_IN_PROGRESS:
>  		nevents = BIT_GAP(BITS_PER_TYPE(u16),
> -				  end_sample.event_ctr,
> +				  end_sample->event_ctr,
>  				  dim->start_sample.event_ctr);
>  		if (nevents < DIM_NEVENTS)
>  			break;
> -		if (!dim_calc_stats(&dim->start_sample, &end_sample, &curr_stats))
> +		if (!dim_calc_stats(&dim->start_sample, end_sample, &curr_stats))
>  			break;
>  		if (net_dim_decision(&curr_stats, dim)) {
>  			dim->state = DIM_APPLY_NEW_PROFILE;
>  			schedule_work(&dim->work);
>  			break;
>  		}
>  		fallthrough;
>  	case DIM_START_MEASURE:
> -		dim_update_sample(end_sample.event_ctr, end_sample.pkt_ctr,
> -				  end_sample.byte_ctr, &dim->start_sample);
> +		dim_update_sample(end_sample->event_ctr, end_sample->pkt_ctr,
> +				  end_sample->byte_ctr, &dim->start_sample);
>  		dim->state = DIM_MEASURE_IN_PROGRESS;
>  		break;
>  	case DIM_APPLY_NEW_PROFILE:
>  		break;
>  	}
> --
> 2.45.2
>
