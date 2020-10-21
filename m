Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E47295301
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Oct 2020 21:34:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31E108610E;
	Wed, 21 Oct 2020 19:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IbRo07Rfta0L; Wed, 21 Oct 2020 19:34:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92EE9869B7;
	Wed, 21 Oct 2020 19:34:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C4E11BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 19:34:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4CC9E20489
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 19:34:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tFaxnGwzATnC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Oct 2020 19:34:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 3514D2E401
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 15:07:09 +0000 (UTC)
IronPort-SDR: 8P/AowlC/a8nUasbVf20xuX1fvCyCipZ+wod7wISxuiAIZWtufR/PQcn4C40d7LJhoS2srlAeq
 iFp2ZgzGT5fg==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="154333433"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="154333433"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 08:07:07 -0700
IronPort-SDR: J/QRW0h1NlFVVbrYgWdB3rVGXD13BHOuDUuFqf+1W1KWSGoBFj1/eiCbDOycCSMx3d+ZBpQ5MU
 4JCiHzYtzEZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="466326356"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2020 08:07:06 -0700
Date: Wed, 21 Oct 2020 16:57:42 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201021145742.GC58344@ranger.igk.intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
 <20201009025349.4037-8-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009025349.4037-8-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH 7/9] igc: Add support for XDP_TX action
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 08, 2020 at 07:53:47PM -0700, Andre Guedes wrote:
> This patch adds support for XDP_TX action which enables XDP programs to
> transmit back receiving frames.
> 
> The main changes in igc_xdp.c are related to the transmission of the
> packet (e.g. select the transmission queue, prepare buffer, prepare
> descriptor) while the changes in igc_main.c are related to tx_buffer
> management and XDP resources setup required to perform the XDP_TX
> action.
> 
> By default, the driver uses rx buffers with 2 KB size. When XDP is
> enabled, it uses larger buffers so we have enough space to accommodate
> the headroom and tailroom required by XDP infrastructure. While the
> driver had already code to handle larger buffers (IGC_RING_FLAG_RX_3K_
> BUFFER flag), it was missing the set/clear helpers that enable/disable
> that feature so this patch also introduces these missing helpers.

Ugh. This belongs to the previous patch.

> 
> I225 controller has only 4 tx hardware queues. Since XDP programs may
> not even issue an XDP_TX action, this patch doesn't reserve dedicated
> queues just for XDP like other Intel drivers do. Instead, the queues
> are shared between the network stack and XDP. The netdev queue lock is
> used to ensure mutual exclusion.
> 
> Since frames can now be transmitted via XDP_TX, the igc_tx_buffer
> structure is modified so we are able to save a reference to the xdp
> frame for later clean up once the packet is transmitted. The tx_buffer
> is mapped to either a skb or a xdpf so we use a union to save the skb
> or xdpf pointer and have a bit in tx_flags to indicate which field to
> use.
> 
> This patch has been tested with the sample app "xdp2" located in
> samples/bpf/ dir.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |  13 ++-
>  drivers/net/ethernet/intel/igc/igc_main.c |  87 +++++++++++++--
>  drivers/net/ethernet/intel/igc/igc_xdp.c  | 122 ++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_xdp.h  |   6 ++
>  4 files changed, 217 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index e013ac65001b..cbf85dea8b2e 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -111,6 +111,8 @@ struct igc_ring {
>  			struct sk_buff *skb;
>  		};
>  	};
> +
> +	struct xdp_rxq_info xdp_rxq;
>  } ____cacheline_internodealigned_in_smp;
>  
>  /* Board specific private data structure */
> @@ -373,6 +375,8 @@ enum igc_tx_flags {
>  	/* olinfo flags */
>  	IGC_TX_FLAGS_IPV4	= 0x10,
>  	IGC_TX_FLAGS_CSUM	= 0x20,
> +
> +	IGC_TX_FLAGS_XDP	= 0x100,
>  };
>  
>  enum igc_boards {
> @@ -395,7 +399,10 @@ enum igc_boards {
>  struct igc_tx_buffer {
>  	union igc_adv_tx_desc *next_to_watch;
>  	unsigned long time_stamp;
> -	struct sk_buff *skb;
> +	union {
> +		struct sk_buff *skb;
> +		struct xdp_frame *xdpf;
> +	};
>  	unsigned int bytecount;
>  	u16 gso_segs;
>  	__be16 protocol;
> @@ -504,6 +511,10 @@ enum igc_ring_flags_t {
>  
>  #define ring_uses_large_buffer(ring) \
>  	test_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
> +#define set_ring_uses_large_buffer(ring) \
> +	set_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
> +#define clear_ring_uses_large_buffer(ring) \
> +	clear_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
>  
>  #define ring_uses_build_skb(ring) \
>  	test_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 8cdd3a16e637..7005e6720261 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -176,8 +176,10 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
>  	while (i != tx_ring->next_to_use) {
>  		union igc_adv_tx_desc *eop_desc, *tx_desc;
>  
> -		/* Free all the Tx ring sk_buffs */
> -		dev_kfree_skb_any(tx_buffer->skb);
> +		if (tx_buffer->tx_flags & IGC_TX_FLAGS_XDP)
> +			xdp_return_frame(tx_buffer->xdpf);
> +		else
> +			dev_kfree_skb_any(tx_buffer->skb);
>  
>  		/* unmap skb header data */
>  		dma_unmap_single(tx_ring->dev,
> @@ -345,6 +347,8 @@ static void igc_clean_rx_ring(struct igc_ring *rx_ring)
>  {
>  	u16 i = rx_ring->next_to_clean;
>  
> +	clear_ring_uses_large_buffer(rx_ring);
> +
>  	dev_kfree_skb(rx_ring->skb);
>  	rx_ring->skb = NULL;
>  
> @@ -403,6 +407,8 @@ void igc_free_rx_resources(struct igc_ring *rx_ring)
>  {
>  	igc_clean_rx_ring(rx_ring);
>  
> +	igc_xdp_unregister_rxq_info(rx_ring);
> +
>  	vfree(rx_ring->rx_buffer_info);
>  	rx_ring->rx_buffer_info = NULL;
>  
> @@ -440,7 +446,11 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
>  {
>  	struct net_device *ndev = rx_ring->netdev;
>  	struct device *dev = rx_ring->dev;
> -	int size, desc_len;
> +	int size, desc_len, res;
> +
> +	res = igc_xdp_register_rxq_info(rx_ring);
> +	if (res < 0)
> +		return res;
>  
>  	size = sizeof(struct igc_rx_buffer) * rx_ring->count;
>  	rx_ring->rx_buffer_info = vzalloc(size);
> @@ -466,6 +476,7 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
>  	return 0;
>  
>  err:
> +	igc_xdp_unregister_rxq_info(rx_ring);
>  	vfree(rx_ring->rx_buffer_info);
>  	rx_ring->rx_buffer_info = NULL;
>  	netdev_err(ndev, "Unable to allocate memory for Rx descriptor ring\n");
> @@ -513,6 +524,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
>  	u32 srrctl = 0, rxdctl = 0;
>  	u64 rdba = ring->dma;
>  
> +	if (igc_xdp_is_enabled(adapter))
> +		set_ring_uses_large_buffer(ring);
> +
>  	/* disable the queue */
>  	wr32(IGC_RXDCTL(reg_idx), 0);
>  
> @@ -1790,7 +1804,14 @@ static void igc_put_rx_buffer(struct igc_ring *rx_ring,
>  
>  static inline unsigned int igc_rx_offset(struct igc_ring *rx_ring)
>  {
> -	return ring_uses_build_skb(rx_ring) ? IGC_SKB_PAD : 0;
> +	struct igc_adapter *adapter = rx_ring->q_vector->adapter;
> +
> +	if (ring_uses_build_skb(rx_ring))
> +		return IGC_SKB_PAD;
> +	if (igc_xdp_is_enabled(adapter))
> +		return XDP_PACKET_HEADROOM;

This looks correct. We normally propagate the bpf_prog pointer down to
ring structure so if you would do this as well you wouldn't need to
retrieve the adapter.

> +
> +	return 0;
>  }
>  
>  static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
> @@ -1904,12 +1925,41 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
>  	}
>  }
>  
> +/* This function assumes __netif_tx_lock is held by the caller. */
> +static void igc_flush_tx_descriptors(struct igc_ring *ring)
> +{
> +	/* Once tail pointer is updated, hardware can fetch the descriptors
> +	 * any time so we issue a write membar here to ensure all memory
> +	 * writes are complete before the tail pointer is updated.
> +	 */
> +	wmb();
> +	writel(ring->next_to_use, ring->tail);
> +}
> +
> +static void igc_finalize_xdp(struct igc_adapter *adapter, int status)
> +{
> +	if (status & IGC_XDP_TX) {
> +		int cpu = smp_processor_id();
> +		struct netdev_queue *nq;
> +		struct igc_ring *ring;

move the variable declarations to the beginning of the functions.

> +
> +		ring = igc_xdp_get_tx_ring(adapter, cpu);
> +		nq = txring_txq(ring);
> +
> +		__netif_tx_lock(nq, cpu);
> +		igc_flush_tx_descriptors(ring);
> +		__netif_tx_unlock(nq);
> +	}
> +}
> +
>  static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  {
>  	unsigned int total_bytes = 0, total_packets = 0;
> +	struct igc_adapter *adapter = q_vector->adapter;
>  	struct igc_ring *rx_ring = q_vector->rx.ring;
>  	struct sk_buff *skb = rx_ring->skb;
>  	u16 cleaned_count = igc_desc_unused(rx_ring);
> +	int xdp_status = 0;
>  
>  	while (likely(total_packets < budget)) {
>  		union igc_adv_rx_desc *rx_desc;
> @@ -1917,7 +1967,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		ktime_t timestamp = 0;
>  		int pkt_offset = 0;
>  		struct xdp_buff xdp;
> -		unsigned int size;
> +		unsigned int size, truesize;
>  		void *pktbuf;
>  
>  		/* return some buffers to hardware, one at a time is too slow */
> @@ -1938,6 +1988,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		dma_rmb();
>  
>  		rx_buffer = igc_get_rx_buffer(rx_ring, size);
> +		truesize = igc_get_rx_frame_truesize(rx_ring, size);
>  
>  		pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
>  
> @@ -1949,18 +2000,29 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		}
>  
>  		if (!skb) {
> -			struct igc_adapter *adapter = q_vector->adapter;
> -
>  			xdp.data = pktbuf + pkt_offset;
>  			xdp.data_end = xdp.data + size;
>  			xdp.data_hard_start = pktbuf - igc_rx_offset(rx_ring);
>  			xdp_set_data_meta_invalid(&xdp);
> +			xdp.frame_sz = truesize;
> +			xdp.rxq = &rx_ring->xdp_rxq;
>  
>  			skb = igc_xdp_run_prog(adapter, &xdp);
>  		}
>  
>  		if (IS_ERR(skb)) {
> -			rx_buffer->pagecnt_bias++;
> +			unsigned int xdp_res = -PTR_ERR(skb);
> +
> +			switch (xdp_res) {
> +			case IGC_XDP_CONSUMED:
> +				rx_buffer->pagecnt_bias++;
> +				break;
> +			case IGC_XDP_TX:
> +				igc_rx_buffer_flip(rx_buffer, truesize);
> +				xdp_status |= xdp_res;
> +				break;
> +			}
> +
>  			total_packets++;
>  			total_bytes += size;
>  		} else if (skb)
> @@ -2006,6 +2068,9 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		total_packets++;
>  	}
>  
> +	if (xdp_status)
> +		igc_finalize_xdp(adapter, xdp_status);
> +
>  	/* place incomplete frames back on ring for completion */
>  	rx_ring->skb = skb;
>  
> @@ -2067,8 +2132,10 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
>  		total_bytes += tx_buffer->bytecount;
>  		total_packets += tx_buffer->gso_segs;
>  
> -		/* free the skb */
> -		napi_consume_skb(tx_buffer->skb, napi_budget);
> +		if (tx_buffer->tx_flags & IGC_TX_FLAGS_XDP)
> +			xdp_return_frame(tx_buffer->xdpf);
> +		else
> +			napi_consume_skb(tx_buffer->skb, napi_budget);
>  
>  		/* unmap skb header data */
>  		dma_unmap_single(tx_ring->dev,
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
> index 0085d8b85466..9f4c58436170 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> @@ -35,6 +35,94 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
>  	return 0;
>  }
>  
> +static int igc_xdp_init_tx_buffer(struct igc_tx_buffer *buffer,
> +				  struct xdp_frame *xdpf,
> +				  struct igc_ring *ring)
> +{
> +	dma_addr_t dma;
> +
> +	dma = dma_map_single(ring->dev, xdpf->data, xdpf->len, DMA_TO_DEVICE);
> +	if (dma_mapping_error(ring->dev, dma)) {
> +		netdev_err_once(ring->netdev, "Failed to map DMA for TX\n");
> +		return -ENOMEM;
> +	}
> +
> +	buffer->xdpf = xdpf;
> +	buffer->tx_flags = IGC_TX_FLAGS_XDP;
> +	buffer->protocol = 0;
> +	buffer->bytecount = xdpf->len;
> +	buffer->gso_segs = 1;
> +	buffer->time_stamp = jiffies;
> +	dma_unmap_len_set(buffer, len, xdpf->len);
> +	dma_unmap_addr_set(buffer, dma, dma);
> +	return 0;
> +}
> +
> +/* This function requires __netif_tx_lock is held by the caller. */
> +static int igc_xdp_init_tx_descriptor(struct igc_ring *ring,
> +				      struct xdp_frame *xdpf)
> +{
> +	struct igc_tx_buffer *buffer;
> +	union igc_adv_tx_desc *desc;
> +	u32 cmd_type, olinfo_status;
> +	int err;
> +
> +	if (!igc_desc_unused(ring))
> +		return -EBUSY;
> +
> +	buffer = &ring->tx_buffer_info[ring->next_to_use];
> +	err = igc_xdp_init_tx_buffer(buffer, xdpf, ring);
> +	if (err)
> +		return err;
> +
> +	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
> +		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
> +		   buffer->bytecount;
> +	olinfo_status = buffer->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
> +
> +	desc = IGC_TX_DESC(ring, ring->next_to_use);
> +	desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> +	desc->read.olinfo_status = cpu_to_le32(olinfo_status);
> +	desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(buffer, dma));
> +
> +	netdev_tx_sent_queue(txring_txq(ring), buffer->bytecount);

So you're letting stack know that you sent a frame but that's not what is
happening because you wait with bumping the tail until you are done with
napi rx loop.

this probably should be called during the tx irq cleanup.

> +
> +	buffer->next_to_watch = desc;
> +
> +	ring->next_to_use = (ring->next_to_use + 1) % ring->count;

Please avoid modulos.

> +	return 0;
> +}
> +
> +struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter, int cpu)
> +{
> +	struct igc_ring *ring;
> +	int index;
> +
> +	index = cpu % adapter->num_tx_queues;

ditto

> +	ring = adapter->tx_ring[index];
> +	return ring;
> +}
> +
> +static int igc_xdp_xmit_back(struct igc_adapter *adapter, struct xdp_buff *xdp)
> +{
> +	struct xdp_frame *xdpf = xdp_convert_buff_to_frame(xdp);
> +	int cpu = smp_processor_id();
> +	struct netdev_queue *nq;
> +	struct igc_ring *ring;
> +	int res;
> +
> +	if (unlikely(!xdpf))
> +		return -EFAULT;
> +
> +	ring = igc_xdp_get_tx_ring(adapter, cpu);
> +	nq = txring_txq(ring);
> +
> +	__netif_tx_lock(nq, cpu);
> +	res = igc_xdp_init_tx_descriptor(ring, xdpf);
> +	__netif_tx_unlock(nq);
> +	return res;
> +}
> +
>  struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
>  				 struct xdp_buff *xdp)
>  {
> @@ -53,6 +141,12 @@ struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
>  	case XDP_PASS:
>  		res = IGC_XDP_PASS;
>  		break;
> +	case XDP_TX:
> +		if (igc_xdp_xmit_back(adapter, xdp) < 0)
> +			res = IGC_XDP_CONSUMED;
> +		else
> +			res = IGC_XDP_TX;
> +		break;
>  	default:
>  		bpf_warn_invalid_xdp_action(act);
>  		fallthrough;
> @@ -73,3 +167,31 @@ bool igc_xdp_is_enabled(struct igc_adapter *adapter)
>  {
>  	return !!adapter->xdp_prog;
>  }
> +
> +int igc_xdp_register_rxq_info(struct igc_ring *ring)
> +{
> +	struct net_device *dev = ring->netdev;
> +	int err;
> +
> +	err = xdp_rxq_info_reg(&ring->xdp_rxq, dev, ring->queue_index);
> +	if (err) {
> +		netdev_err(dev, "Failed to register xdp rxq info\n");
> +		return err;
> +	}
> +
> +	err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq, MEM_TYPE_PAGE_SHARED,
> +					 NULL);
> +	if (err) {
> +		netdev_err(dev, "Failed to register xdp rxq mem model\n");
> +		xdp_rxq_info_unreg(&ring->xdp_rxq);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +void igc_xdp_unregister_rxq_info(struct igc_ring *ring)
> +{
> +	xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);

xdp_rxq_info_unreg will call internally the xdp_rxq_info_unreg_mem_model
so I think the call above is redundant.

> +	xdp_rxq_info_unreg(&ring->xdp_rxq);
> +}
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.h b/drivers/net/ethernet/intel/igc/igc_xdp.h
> index ab36ab4d48fd..fdb31f40dbe5 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.h
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.h
> @@ -6,6 +6,7 @@
>  
>  #define IGC_XDP_PASS		0
>  #define IGC_XDP_CONSUMED	BIT(0)
> +#define IGC_XDP_TX		BIT(1)
>  
>  int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
>  		     struct netlink_ext_ack *extack);
> @@ -15,4 +16,9 @@ struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
>  
>  bool igc_xdp_is_enabled(struct igc_adapter *adapter);
>  
> +int igc_xdp_register_rxq_info(struct igc_ring *ring);
> +void igc_xdp_unregister_rxq_info(struct igc_ring *ring);
> +
> +struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter, int cpu);
> +
>  #endif /* _IGC_XDP_H_ */
> -- 
> 2.26.2
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
