Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3D42E0A94
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 14:25:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 095A3860F8;
	Tue, 22 Dec 2020 13:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lof0NxWX0sEw; Tue, 22 Dec 2020 13:25:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03DEC860DE;
	Tue, 22 Dec 2020 13:25:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DE6D1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 13:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 696B3869D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 13:24:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2r9ePb1A4Hlv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 13:24:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2BD57869D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 13:24:58 +0000 (UTC)
IronPort-SDR: 7PQSd529n9l3XNr4oEnk0tflf+LpRcOM7kAE/4e9essbMV7TchZjOjAwDOPxJU9Qf0mYJIKB/w
 vI6yqFONRrrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="155656490"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="155656490"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 05:24:57 -0800
IronPort-SDR: Dc5deyyXbBbMXFI8KArOwfXu2SoLRFT7YU9nedn5WhtO/SLQjKrtM1BkwrDQ+kej9mLt2LOhBM
 9Kl0AE5HlAog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="416520050"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga001.jf.intel.com with ESMTP; 22 Dec 2020 05:24:56 -0800
Date: Tue, 22 Dec 2020 14:14:28 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201222131428.GG2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-10-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217202415.77891-10-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH 09/10] igc: Enable RX via AF_XDP
 zero-copy
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

On Thu, Dec 17, 2020 at 12:24:14PM -0800, Andre Guedes wrote:
> This patch adds support for receiving packets via AF_XDP zero-copy
> mechanism.
> 
> A new flag is added to 'enum igc_ring_flags_t' to indicate the ring has
> AF_XDP zero-copy enabled so proper ring setup is carried out during ring
> configuration in igc_configure_rx_ring().
> 
> RX buffers can now be allocated via the shared pages mechanism (default
> behavior of the driver) or via xsk pool (when AF_XDP zero-copy is
> enabled) so a union is added to the 'struct igc_rx_buffer' to cover both
> cases.
> 
> When AF_XDP zero-copy is enabled, rx buffers are allocated from the xsk
> pool using the new helper igc_alloc_rx_buffers_zc() which is the
> counterpart of igc_alloc_rx_buffers().
> 
> Likewise other Intel drivers that support AF_XDP zero-copy, in igc we
> have a dedicated path for cleaning up rx irqs when zero-copy is enabled.
> This avoids adding too many checks within igc_clean_rx_irq(), resulting
> in a more readable and efficient code since this function is called from
> the hot-path of the driver.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |  22 +-
>  drivers/net/ethernet/intel/igc/igc_base.h |   1 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 334 +++++++++++++++++++++-
>  drivers/net/ethernet/intel/igc/igc_xdp.c  |  98 +++++++
>  drivers/net/ethernet/intel/igc/igc_xdp.h  |   2 +
>  5 files changed, 438 insertions(+), 19 deletions(-)
> 

[...]

> +
> +static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
> +{
> +	struct igc_adapter *adapter = q_vector->adapter;
> +	struct igc_ring *ring = q_vector->rx.ring;
> +	u16 cleaned_count = igc_desc_unused(ring);
> +	int total_bytes = 0, total_packets = 0;
> +	struct bpf_prog *prog;
> +	bool failure = false;
> +	int xdp_status = 0;
> +
> +	rcu_read_lock();
> +
> +	prog = READ_ONCE(adapter->xdp_prog);
> +
> +	while (likely(total_packets < budget)) {
> +		union igc_adv_rx_desc *desc;
> +		struct igc_rx_buffer *bi;
> +		unsigned int size;
> +		int res;
> +
> +		desc = IGC_RX_DESC(ring, ring->next_to_clean);
> +		size = le16_to_cpu(desc->wb.upper.length);
> +		if (!size)
> +			break;
> +
> +		/* This memory barrier is needed to keep us from reading
> +		 * any other fields out of the rx_desc until we know the
> +		 * descriptor has been written back
> +		 */
> +		dma_rmb();
> +
> +		bi = &ring->rx_buffer_info[ring->next_to_clean];
> +
> +		if (igc_test_staterr(desc, IGC_RXDADV_STAT_TSIP)) {
> +			/* FIXME: For now, if packet buffer contains timestamp
> +			 * information, we discard it. Once XDP infrastructe

nit: s/infrastructe/infrastructure

> +			 * provides a way to report hardware timestamps, the
> +			 * code below should be fixed.
> +			 */
> +			bi->xdp->data += IGC_TS_HDR_LEN;
> +			size -= IGC_TS_HDR_LEN;
> +		}
> +
> +		bi->xdp->data_end = bi->xdp->data + size;
> +		xsk_buff_dma_sync_for_cpu(bi->xdp, ring->xsk_pool);
> +
> +		res = igc_xdp_do_run_prog(adapter, prog, bi->xdp);
> +		switch (res) {
> +		case IGC_XDP_PASS:
> +			igc_dispatch_skb_zc(q_vector, desc, bi->xdp);
> +			fallthrough;
> +		case IGC_XDP_CONSUMED:
> +			xsk_buff_free(bi->xdp);
> +			break;
> +		case IGC_XDP_TX:
> +		case IGC_XDP_REDIRECT:
> +			xdp_status |= res;
> +			break;
> +		}
> +
> +		bi->xdp = NULL;
> +		total_bytes += size;
> +		total_packets++;
> +		cleaned_count++;
> +		ring->next_to_clean++;
> +		if (ring->next_to_clean == ring->count)
> +			ring->next_to_clean = 0;
> +	}
> +
> +	rcu_read_unlock();
> +
> +	if (cleaned_count >= IGC_RX_BUFFER_WRITE)
> +		failure = !igc_alloc_rx_buffers_zc(ring, cleaned_count);
> +
> +	if (xdp_status)
> +		igc_finalize_xdp(adapter, xdp_status);
> +
> +	igc_update_rx_stats(q_vector, total_packets, total_bytes);
> +
> +	if (xsk_uses_need_wakeup(ring->xsk_pool)) {
> +		if (failure || ring->next_to_clean == ring->next_to_use)
> +			xsk_set_rx_need_wakeup(ring->xsk_pool);
> +		else
> +			xsk_clear_rx_need_wakeup(ring->xsk_pool);
> +		return total_packets;
> +	}
> +
> +	return failure ? budget : total_packets;
> +}
> +
>  static void igc_update_tx_stats(struct igc_q_vector *q_vector,
>  				unsigned int packets, unsigned int bytes)
>  {
> @@ -2958,7 +3188,10 @@ static void igc_configure(struct igc_adapter *adapter)
>  	for (i = 0; i < adapter->num_rx_queues; i++) {
>  		struct igc_ring *ring = adapter->rx_ring[i];
>  
> -		igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
> +		if (ring->xsk_pool)
> +			igc_alloc_rx_buffers_zc(ring, igc_desc_unused(ring));
> +		else
> +			igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
>  	}
>  }
>  
> @@ -3573,14 +3806,18 @@ static int igc_poll(struct napi_struct *napi, int budget)
>  	struct igc_q_vector *q_vector = container_of(napi,
>  						     struct igc_q_vector,
>  						     napi);
> +	struct igc_ring *rx_ring = q_vector->rx.ring;
> +
>  	bool clean_complete = true;
>  	int work_done = 0;
>  
>  	if (q_vector->tx.ring)
>  		clean_complete = igc_clean_tx_irq(q_vector, budget);
>  
> -	if (q_vector->rx.ring) {
> -		int cleaned = igc_clean_rx_irq(q_vector, budget);
> +	if (rx_ring) {
> +		int cleaned = rx_ring->xsk_pool ?
> +			      igc_clean_rx_irq_zc(q_vector, budget) :
> +			      igc_clean_rx_irq(q_vector, budget);
>  
>  		work_done += cleaned;
>  		if (cleaned >= budget)
> @@ -5161,6 +5398,9 @@ static int igc_bpf(struct net_device *dev, struct netdev_bpf *bpf)
>  	switch (bpf->command) {
>  	case XDP_SETUP_PROG:
>  		return igc_xdp_set_prog(adapter, bpf->prog, bpf->extack);
> +	case XDP_SETUP_XSK_POOL:
> +		return igc_xdp_setup_pool(adapter, bpf->xsk.pool,
> +					  bpf->xsk.queue_id);
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> @@ -5206,6 +5446,43 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
>  	return num_frames - drops;
>  }
>  
> +static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
> +					struct igc_q_vector *q_vector)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 eics = 0;
> +
> +	eics |= q_vector->eims_value;
> +	wr32(IGC_EICS, eics);
> +}
> +
> +int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
> +{
> +	struct igc_adapter *adapter = netdev_priv(dev);
> +	struct igc_q_vector *q_vector;
> +	struct igc_ring *ring;
> +
> +	if (test_bit(__IGC_DOWN, &adapter->state))
> +		return -ENETDOWN;
> +
> +	if (!igc_xdp_is_enabled(adapter))
> +		return -ENXIO;
> +
> +	if (queue_id >= adapter->num_rx_queues)
> +		return -EINVAL;
> +
> +	ring = adapter->rx_ring[queue_id];
> +
> +	if (!ring->xsk_pool)
> +		return -ENXIO;

ring local variable feels a bit unnecessary.

> +
> +	q_vector = adapter->q_vector[queue_id];
> +	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> +		igc_trigger_rxtxq_interrupt(adapter, q_vector);
> +
> +	return 0;
> +}
> +
>  static const struct net_device_ops igc_netdev_ops = {
>  	.ndo_open		= igc_open,
>  	.ndo_stop		= igc_close,
> @@ -5221,6 +5498,7 @@ static const struct net_device_ops igc_netdev_ops = {
>  	.ndo_setup_tc		= igc_setup_tc,
>  	.ndo_bpf		= igc_bpf,
>  	.ndo_xdp_xmit		= igc_xdp_xmit,
> +	.ndo_xsk_wakeup		= igc_xsk_wakeup,
>  };
>  
>  /* PCIe configuration access */
> @@ -5974,6 +6252,36 @@ struct net_device *igc_get_hw_dev(struct igc_hw *hw)
>  	return adapter->netdev;
>  }
>  
> +static void igc_disable_rx_ring_hw(struct igc_ring *ring)
> +{
> +	struct igc_hw *hw = &ring->q_vector->adapter->hw;
> +	u8 idx = ring->reg_idx;
> +	u32 rxdctl;
> +
> +	rxdctl = rd32(IGC_RXDCTL(idx));
> +	rxdctl &= ~IGC_RXDCTL_QUEUE_ENABLE;
> +	rxdctl |= IGC_RXDCTL_SWFLUSH;
> +	wr32(IGC_RXDCTL(idx), rxdctl);
> +}
> +
> +void igc_disable_rx_ring(struct igc_ring *ring)
> +{
> +	igc_disable_rx_ring_hw(ring);
> +	igc_clean_rx_ring(ring);
> +}
> +
> +void igc_enable_rx_ring(struct igc_ring *ring)
> +{
> +	struct igc_adapter *adapter = ring->q_vector->adapter;
> +
> +	igc_configure_rx_ring(adapter, ring);
> +
> +	if (ring->xsk_pool)
> +		igc_alloc_rx_buffers_zc(ring, igc_desc_unused(ring));
> +	else
> +		igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
> +}
> +
>  /**
>   * igc_init_module - Driver Registration Routine
>   *
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
> index 27c886a254f1..9515906d54e0 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> @@ -1,6 +1,8 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /* Copyright (c) 2020, Intel Corporation. */
>  
> +#include <net/xdp_sock_drv.h>
> +
>  #include "igc.h"
>  #include "igc_xdp.h"
>  
> @@ -31,3 +33,99 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
>  
>  	return 0;
>  }
> +
> +static int igc_xdp_enable_pool(struct igc_adapter *adapter,
> +			       struct xsk_buff_pool *pool, u16 queue_id)
> +{
> +	struct net_device *ndev = adapter->netdev;
> +	struct device *dev = &adapter->pdev->dev;
> +	struct igc_ring *rx_ring;
> +	struct napi_struct *napi;
> +	bool needs_reset;
> +	u32 frame_size;
> +	int err;
> +
> +	if (queue_id >= adapter->num_rx_queues)
> +		return -EINVAL;
> +
> +	frame_size = xsk_pool_get_rx_frame_size(pool);
> +	if (frame_size < ETH_FRAME_LEN + VLAN_HLEN * 2) {
> +		/* For now, when XDP is enabled, the driver doesn't support
> +		 * frames that span over multiple buffers. The max frame size
> +		 * considered here is the ethernet frame size + vlan double
> +		 * tagging.
> +		 */

I don't really follow that. You check if chunk size is less than
ETH_FRAME_LEN + VLAN_HLEN * 2. chunk size will be at least 2k if I recall
correctly. How is that related to fragmented buffers?

> +		return -EOPNOTSUPP;
> +	}
> +
> +	err = xsk_pool_dma_map(pool, dev, IGC_RX_DMA_ATTR);
> +	if (err) {
> +		netdev_err(ndev, "Failed to map xsk pool\n");
> +		return err;
> +	}
> +
> +	needs_reset = netif_running(adapter->netdev) && igc_xdp_is_enabled(adapter);
> +
> +	rx_ring = adapter->rx_ring[queue_id];
> +	napi = &rx_ring->q_vector->napi;
> +
> +	if (needs_reset) {
> +		igc_disable_rx_ring(rx_ring);
> +		napi_disable(napi);
> +	}
> +
> +	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
> +
> +	if (needs_reset) {
> +		napi_enable(napi);
> +		igc_enable_rx_ring(rx_ring);
> +
> +		err = igc_xsk_wakeup(ndev, queue_id, XDP_WAKEUP_RX);
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
