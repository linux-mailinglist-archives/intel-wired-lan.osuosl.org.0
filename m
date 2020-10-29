Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B27C29EE84
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Oct 2020 15:40:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BE6E86A46;
	Thu, 29 Oct 2020 14:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fuyIFEPQvDbp; Thu, 29 Oct 2020 14:40:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 88B14865D6;
	Thu, 29 Oct 2020 14:40:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7182C1BF308
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 14:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 64A0520485
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 14:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aqXSH1GVV4tj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Oct 2020 14:40:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id B60FC2045D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 14:40:36 +0000 (UTC)
IronPort-SDR: n+0Msq0hOjRe84QSxsqUBKXTCEAtopfseZ95kvDch2lBl9KK8CuITtSAFF7WfmQalT930mDrmF
 CbxDvU40kKwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="232621875"
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="232621875"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 07:40:36 -0700
IronPort-SDR: elH6cNFNoCykwtQehrk9hCgFr8H0hK0nLtXQQeexIMjo08YdjeJQ+J564vdiCGfm0KCZRPsEfG
 JFC11voLYAKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="469158507"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 29 Oct 2020 07:40:34 -0700
Date: Thu, 29 Oct 2020 15:30:09 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201029143009.GD890@ranger.igk.intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
 <20201028201943.93147-9-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028201943.93147-9-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v2 08/10] igc: Add support for XDP_TX
 action
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

On Wed, Oct 28, 2020 at 01:19:41PM -0700, Andre Guedes wrote:
> This patch adds support for XDP_TX action which enables XDP programs to
> transmit back receiving frames.
> 
> The main changes in igc_xdp.c are related to the transmission of the
> packet (e.g. select the transmission queue, prepare buffer, prepare
> descriptor) while the changes in igc_main.c are related to tx_buffer
> management and XDP resources setup required to perform the XDP_TX
> action.
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
>  drivers/net/ethernet/intel/igc/igc.h      |   9 +-
>  drivers/net/ethernet/intel/igc/igc_main.c |  74 +++++++++++--
>  drivers/net/ethernet/intel/igc/igc_xdp.c  | 124 ++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_xdp.h  |   6 ++
>  4 files changed, 202 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 5c2f363106ae..9c566d930ab0 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -112,6 +112,8 @@ struct igc_ring {
>  			struct sk_buff *skb;
>  		};
>  	};
> +
> +	struct xdp_rxq_info xdp_rxq;
>  } ____cacheline_internodealigned_in_smp;
>  
>  /* Board specific private data structure */
> @@ -380,6 +382,8 @@ enum igc_tx_flags {
>  	/* olinfo flags */
>  	IGC_TX_FLAGS_IPV4	= 0x10,
>  	IGC_TX_FLAGS_CSUM	= 0x20,
> +
> +	IGC_TX_FLAGS_XDP	= 0x100,
>  };
>  
>  enum igc_boards {
> @@ -402,7 +406,10 @@ enum igc_boards {
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
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 585ad575d9fd..7bcfc72b00fc 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -178,8 +178,10 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
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
> @@ -407,6 +409,8 @@ void igc_free_rx_resources(struct igc_ring *rx_ring)
>  {
>  	igc_clean_rx_ring(rx_ring);
>  
> +	igc_xdp_unregister_rxq_info(rx_ring);
> +
>  	vfree(rx_ring->rx_buffer_info);
>  	rx_ring->rx_buffer_info = NULL;
>  
> @@ -444,7 +448,11 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
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
> @@ -470,6 +478,7 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
>  	return 0;
>  
>  err:
> +	igc_xdp_unregister_rxq_info(rx_ring);
>  	vfree(rx_ring->rx_buffer_info);
>  	rx_ring->rx_buffer_info = NULL;
>  	netdev_err(ndev, "Unable to allocate memory for Rx descriptor ring\n");
> @@ -1918,20 +1927,49 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
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
> +	int cpu = smp_processor_id();
> +	struct netdev_queue *nq;
> +	struct igc_ring *ring;
> +
> +	if (status & IGC_XDP_TX) {
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
>  		struct igc_rx_buffer *rx_buffer;
> +		unsigned int size, truesize;
>  		ktime_t timestamp = 0;
>  		struct xdp_buff xdp;
>  		int pkt_offset = 0;
> -		unsigned int size;
>  		void *pktbuf;
>  
>  		/* return some buffers to hardware, one at a time is too slow */
> @@ -1952,6 +1990,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		dma_rmb();
>  
>  		rx_buffer = igc_get_rx_buffer(rx_ring, size);
> +		truesize = igc_get_rx_frame_truesize(rx_ring, size);
>  
>  		pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
>  
> @@ -1963,19 +2002,29 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		}
>  
>  		if (!skb) {
> -			struct igc_adapter *adapter = q_vector->adapter;
> -
>  			xdp.data = pktbuf + pkt_offset;
>  			xdp.data_end = xdp.data + size;
>  			xdp.data_hard_start = pktbuf - igc_rx_offset(rx_ring);
>  			xdp_set_data_meta_invalid(&xdp);
> -			xdp.frame_sz = igc_get_rx_frame_truesize(rx_ring, size);
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
> @@ -2021,6 +2070,9 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		total_packets++;
>  	}
>  
> +	if (xdp_status)
> +		igc_finalize_xdp(adapter, xdp_status);
> +
>  	/* place incomplete frames back on ring for completion */
>  	rx_ring->skb = skb;
>  
> @@ -2082,8 +2134,10 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
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
> index faec0bedc550..17852cc3a438 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> @@ -34,6 +34,97 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
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
> +
> +	buffer->next_to_watch = desc;
> +
> +	ring->next_to_use++;
> +	if (ring->next_to_use == ring->count)
> +		ring->next_to_use = 0;
> +
> +	return 0;
> +}
> +
> +struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter, int cpu)
> +{
> +	int index = cpu;
> +
> +	if (index >= adapter->num_tx_queues)
> +		index = index % adapter->num_tx_queues;

So you kept modulos? :) I think you can simply substitute it with
subtraction.

> +
> +	return adapter->tx_ring[index];
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
> @@ -54,6 +145,12 @@ struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
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
> @@ -74,3 +171,30 @@ bool igc_xdp_is_enabled(struct igc_adapter *adapter)
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
> 2.28.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
