Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6011BD3B045
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 17:18:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C257461043;
	Mon, 19 Jan 2026 16:18:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3VHdsJeDpIZD; Mon, 19 Jan 2026 16:18:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 016FF6110C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768839499;
	bh=nwONoJ5c6vZXVyRP5YVq7VE7KGgC83vGyiRoJX6r6KQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aukgCvki2tkEBSLA0W6P6WKc4OGYLrG5HOGk8OPJ5Fk9XHqUZ5wuawwOGpn7DLhjM
	 qp9y+8v9NqvB60ThAoUImraWfTJ++lSz6AzQ9cZs7TfO3R4Gj1y70jYy06BQdmonZp
	 N02yoqAlKYsKaG+auP98kUHpiPPWLnHrkKnF6Lbzg8+aIcKUGLrV0zJiUExZ2WV6ts
	 qvSvXxcqmrjvDzWT3/N8vRnza1BkThyMpvuAV9C0Zjmr/Oome7QplWH2gz5wZpfbNR
	 xYScwBiTe251I+k1x7752nAYm+6ZbGS4oE8lJ6Su9aMCix54n/rrAl+bHzOISw9vca
	 S9KbM31Su03BQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 016FF6110C;
	Mon, 19 Jan 2026 16:18:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0CAD12CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F2887415C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:18:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RgRh5EJ7v-dX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 16:18:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F07C6415C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F07C6415C8
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F07C6415C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:18:14 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E586A4C442F9C9;
 Mon, 19 Jan 2026 17:17:36 +0100 (CET)
Message-ID: <cadf7215-34d2-4514-abc8-ddc72a85d6f7@molgen.mpg.de>
Date: Mon, 19 Jan 2026 17:17:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260119160843.3854173-1-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260119160843.3854173-1-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: reshuffle and group Rx
 and Tx queue fields by cachelines
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

Dear Alexander,


Thank you for your patch.

Am 19.01.26 um 17:08 schrieb Alexander Lobakin:
> Place the fields in ice_{rx,tx}_ring used in the same pieces of
> hotpath code closer to each other and use
> __cacheline_group_{begin,end}_aligned() to isolate the read mostly,
> read-write, and cold groups into separate cachelines similarly
> to idpf.
> 
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
> Applies cleanly to today's next-queue.
> 
> Testing hints:
> 
> No functional changes in this patch, there's no way it could break
> anything. If you want, you can test basic XDP actions (PASS, DROP)
> and compare the performance before and after the patch.

It’d be great if the numbers could be added to the commit message.

> ---
>   drivers/net/ethernet/intel/ice/ice_txrx.h     | 122 ++++++++++--------
>   drivers/net/ethernet/intel/ice/ice_ethtool.c  |   1 -
>   drivers/net/ethernet/intel/ice/ice_txrx.c     |   1 -
>   drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   3 -
>   4 files changed, 70 insertions(+), 57 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index e3c682723107..557b5e656bb0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -267,34 +267,49 @@ struct ice_tstamp_ring {
>   } ____cacheline_internodealigned_in_smp;
>   
>   struct ice_rx_ring {
> -	/* CL1 - 1st cacheline starts here */
> +	__cacheline_group_begin_aligned(read_mostly);
>   	void *desc;			/* Descriptor ring memory */
>   	struct page_pool *pp;
>   	struct net_device *netdev;	/* netdev ring maps to */
> -	struct ice_vsi *vsi;		/* Backreference to associated VSI */
>   	struct ice_q_vector *q_vector;	/* Backreference to associated vector */
>   	u8 __iomem *tail;
> -	u16 q_index;			/* Queue number of ring */
> -
> -	u16 count;			/* Number of descriptors */
> -	u16 reg_idx;			/* HW register index of the ring */
> -	u16 next_to_alloc;
>   
>   	union {
>   		struct libeth_fqe *rx_fqes;
>   		struct xdp_buff **xdp_buf;
>   	};
>   
> -	/* CL2 - 2nd cacheline starts here */
> -	struct libeth_fqe *hdr_fqes;
> +	u16 count;			/* Number of descriptors */
> +	u8 ptp_rx;
> +
> +	u8 flags;
> +#define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
> +#define ICE_RX_FLAGS_MULTIDEV		BIT(3)
> +#define ICE_RX_FLAGS_RING_GCS		BIT(4)
> +
> +	u32 truesize;
> +
>   	struct page_pool *hdr_pp;
> +	struct libeth_fqe *hdr_fqes;
> +
> +	struct bpf_prog *xdp_prog;
> +	struct ice_tx_ring *xdp_ring;
> +	struct xsk_buff_pool *xsk_pool;
> +
> +	/* stats structs */
> +	struct ice_ring_stats *ring_stats;
> +	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
>   
> +	u32 hdr_truesize;
> +
> +	struct xdp_rxq_info xdp_rxq;
> +	__cacheline_group_end_aligned(read_mostly);
> +
> +	__cacheline_group_begin_aligned(read_write);
>   	union {
>   		struct libeth_xdp_buff_stash xdp;
>   		struct libeth_xdp_buff *xsk;
>   	};
> -
> -	/* CL3 - 3rd cacheline starts here */
>   	union {
>   		struct ice_pkt_ctx pkt_ctx;
>   		struct {
> @@ -302,75 +317,78 @@ struct ice_rx_ring {
>   			__be16 vlan_proto;
>   		};
>   	};
> -	struct bpf_prog *xdp_prog;
>   
>   	/* used in interrupt processing */
>   	u16 next_to_use;
>   	u16 next_to_clean;
> +	__cacheline_group_end_aligned(read_write);
>   
> -	u32 hdr_truesize;
> -	u32 truesize;
> -
> -	/* stats structs */
> -	struct ice_ring_stats *ring_stats;
> -
> +	__cacheline_group_begin_aligned(cold);
>   	struct rcu_head rcu;		/* to avoid race on free */
> -	/* CL4 - 4th cacheline starts here */
> +	struct ice_vsi *vsi;		/* Backreference to associated VSI */
>   	struct ice_channel *ch;
> -	struct ice_tx_ring *xdp_ring;
> -	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
> -	struct xsk_buff_pool *xsk_pool;
> -	u16 rx_hdr_len;
> -	u16 rx_buf_len;
> +
>   	dma_addr_t dma;			/* physical address of ring */
> +	u16 q_index;			/* Queue number of ring */
> +	u16 reg_idx;			/* HW register index of the ring */
>   	u8 dcb_tc;			/* Traffic class of ring */
> -	u8 ptp_rx;
> -#define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
> -#define ICE_RX_FLAGS_MULTIDEV		BIT(3)
> -#define ICE_RX_FLAGS_RING_GCS		BIT(4)
> -	u8 flags;
> -	/* CL5 - 5th cacheline starts here */
> -	struct xdp_rxq_info xdp_rxq;
> +
> +	u16 rx_hdr_len;
> +	u16 rx_buf_len;
> +	__cacheline_group_end_aligned(cold);
>   } ____cacheline_internodealigned_in_smp;
>   
>   struct ice_tx_ring {
> -	/* CL1 - 1st cacheline starts here */
> -	struct ice_tx_ring *next;	/* pointer to next ring in q_vector */
> +	__cacheline_group_begin_aligned(read_mostly);
>   	void *desc;			/* Descriptor ring memory */
>   	struct device *dev;		/* Used for DMA mapping */
>   	u8 __iomem *tail;
>   	struct ice_tx_buf *tx_buf;
> +
>   	struct ice_q_vector *q_vector;	/* Backreference to associated vector */
>   	struct net_device *netdev;	/* netdev ring maps to */
>   	struct ice_vsi *vsi;		/* Backreference to associated VSI */
> -	/* CL2 - 2nd cacheline starts here */
> -	dma_addr_t dma;			/* physical address of ring */
> -	struct xsk_buff_pool *xsk_pool;
> -	u16 next_to_use;
> -	u16 next_to_clean;
> -	u16 q_handle;			/* Queue handle per TC */
> -	u16 reg_idx;			/* HW register index of the ring */
> +
>   	u16 count;			/* Number of descriptors */
>   	u16 q_index;			/* Queue number of ring */
> -	u16 xdp_tx_active;
> +
> +	u8 flags;
> +#define ICE_TX_FLAGS_RING_XDP		BIT(0)
> +#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
> +#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
> +#define ICE_TX_FLAGS_TXTIME		BIT(3)
> +
> +	struct xsk_buff_pool *xsk_pool;
> +
>   	/* stats structs */
>   	struct ice_ring_stats *ring_stats;
> -	/* CL3 - 3rd cacheline starts here */
> +	struct ice_tx_ring *next;	/* pointer to next ring in q_vector */
> +
> +	struct ice_tstamp_ring *tstamp_ring;
> +	struct ice_ptp_tx *tx_tstamps;
> +	__cacheline_group_end_aligned(read_mostly);
> +
> +	__cacheline_group_begin_aligned(read_write);
> +	u16 next_to_use;
> +	u16 next_to_clean;
> +
> +	u16 xdp_tx_active;
> +	spinlock_t tx_lock;
> +	__cacheline_group_end_aligned(read_write);
> +
> +	__cacheline_group_begin_aligned(cold);
>   	struct rcu_head rcu;		/* to avoid race on free */
>   	DECLARE_BITMAP(xps_state, ICE_TX_NBITS);	/* XPS Config State */
>   	struct ice_channel *ch;
> -	struct ice_ptp_tx *tx_tstamps;
> -	spinlock_t tx_lock;
> -	u32 txq_teid;			/* Added Tx queue TEID */
> -	/* CL4 - 4th cacheline starts here */
> -	struct ice_tstamp_ring *tstamp_ring;
> -#define ICE_TX_FLAGS_RING_XDP		BIT(0)
> -#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
> -#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
> -#define ICE_TX_FLAGS_TXTIME		BIT(3)
> -	u8 flags;
> +
> +	dma_addr_t dma;			/* physical address of ring */
> +	u16 q_handle;			/* Queue handle per TC */
> +	u16 reg_idx;			/* HW register index of the ring */
>   	u8 dcb_tc;			/* Traffic class of ring */
> +
>   	u16 quanta_prof_id;
> +	u32 txq_teid;			/* Added Tx queue TEID */
> +	__cacheline_group_end_aligned(cold);
>   } ____cacheline_internodealigned_in_smp;
>   
>   static inline bool ice_ring_ch_enabled(struct ice_tx_ring *ring)
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 8d8569d06119..4f79dc73a8ad 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3388,7 +3388,6 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
>   				 */
>   				rx_rings[i].next_to_use = 0;
>   				rx_rings[i].next_to_clean = 0;
> -				rx_rings[i].next_to_alloc = 0;
>   				*vsi->rx_rings[i] = rx_rings[i];
>   			}
>   			kfree(rx_rings);
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index e8e1acbd5a7d..40d7252caee0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -582,7 +582,6 @@ void ice_zero_rx_ring(struct ice_rx_ring *rx_ring)
>   		     PAGE_SIZE);
>   	memset(rx_ring->desc, 0, size);
>   
> -	rx_ring->next_to_alloc = 0;
>   	rx_ring->next_to_clean = 0;
>   	rx_ring->next_to_use = 0;
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> index f7006ce5104a..66d211aa0833 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> @@ -20,9 +20,6 @@ void ice_release_rx_desc(struct ice_rx_ring *rx_ring, u16 val)
>   
>   	rx_ring->next_to_use = val;
>   
> -	/* update next to alloc since we have filled the ring */
> -	rx_ring->next_to_alloc = val;
> -
>   	/* QRX_TAIL will be updated with any tail value, but hardware ignores
>   	 * the lower 3 bits. This makes it so we only bump tail on meaningful
>   	 * boundaries. Also, this allows us to bump tail on intervals of 8 up to

The diff looks good.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
