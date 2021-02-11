Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 691293182DF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 02:05:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05EB686D08;
	Thu, 11 Feb 2021 01:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oV85WtRAvw20; Thu, 11 Feb 2021 01:05:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A42E486D15;
	Thu, 11 Feb 2021 01:05:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 59D871BF310
 for <intel-wired-lan@osuosl.org>; Thu, 11 Feb 2021 01:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 472A56F526
 for <intel-wired-lan@osuosl.org>; Thu, 11 Feb 2021 01:05:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GddbDJHJy1Ji for <intel-wired-lan@osuosl.org>;
 Thu, 11 Feb 2021 01:05:24 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 4ED0F6F5DE; Thu, 11 Feb 2021 01:05:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 58B636F501
 for <intel-wired-lan@osuosl.org>; Thu, 11 Feb 2021 01:05:22 +0000 (UTC)
IronPort-SDR: VvtVXsFUhjVkKr9uZ9CyCVlXhMqVc2eNxKgJuerCKk55LrE9mPf+KYtNuNmGsVm5SUGmeBfJlF
 1Kk8CBTS5Q5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="246243706"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="246243706"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 17:05:21 -0800
IronPort-SDR: l5sJ99nIizG6CrT1gGoK2D3t4k4kKq/VDJBDiYg5+Z5g/QCNL5QoStmJxqxOu3SWMpHsxqxY3+
 ZBgWwGF77Ckw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="414340702"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga004.fm.intel.com with ESMTP; 10 Feb 2021 17:05:20 -0800
Date: Thu, 11 Feb 2021 01:55:47 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Vedang Patel <vedang.patel@intel.com>
Message-ID: <20210211005547.GB44042@ranger.igk.intel.com>
References: <20210209024243.23406-1-vedang.patel@intel.com>
 <20210209024243.23406-9-vedang.patel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210209024243.23406-9-vedang.patel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 8/9] igc: Enable RX via
 AF_XDP zero-copy
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
Cc: intel-wired-lan@osuosl.org, Andre Guedes <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 08, 2021 at 06:42:42PM -0800, Vedang Patel wrote:
> From: Andre Guedes <andre.guedes@intel.com>
> 
> Add support for receiving packets via AF_XDP zero-copy mechanism.
> 
> A new flag is added to 'enum igc_ring_flags_t' to indicate the ring has
> AF_XDP zero-copy enabled so proper ring setup is carried out during ring
> configuration in igc_configure_rx_ring().

I'm still stubborn when it comes to imperative mood usage in commit
messages :P so a kind reminder to apply that.

'A new flag is added' -> 'Add a new flag'

Not a big deal though.

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
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |  22 +-
>  drivers/net/ethernet/intel/igc/igc_base.h |   1 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 336 +++++++++++++++++++++-
>  drivers/net/ethernet/intel/igc/igc_xdp.c  |  98 +++++++
>  drivers/net/ethernet/intel/igc/igc_xdp.h  |   2 +
>  5 files changed, 440 insertions(+), 19 deletions(-)
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
> +		ktime_t timestamp = 0;
> +		unsigned int size;
> +		int res;
> +
> +		desc = IGC_RX_DESC(ring, ring->next_to_clean);

I think we've seen some minor optimization happening from working on local
ring->next_to_clean value, IOW maybe do:

u16 ntc = ring->next_to_clean;

and store it back to ring after the main while () loop

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
> +			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
> +							bi->xdp->data);
> +
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
> +			igc_dispatch_skb_zc(q_vector, desc, bi->xdp, timestamp);
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
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
