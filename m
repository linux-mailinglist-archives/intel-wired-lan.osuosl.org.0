Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE1F2E0BA6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 15:27:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D804486A27;
	Tue, 22 Dec 2020 14:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1JGcyzJF1uTl; Tue, 22 Dec 2020 14:27:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBF8B868E1;
	Tue, 22 Dec 2020 14:27:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0FC21BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 14:27:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92E662284F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 14:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uLNi23ZPNWdE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 14:27:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 30AB4203E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 14:27:13 +0000 (UTC)
IronPort-SDR: M5QuL6xWMpOsoHf4AqNmszsftyKUTtdaEYqdZl5DWPBcW4Zm8jQF1KMTfJkWaV42t6dxxxrBoq
 a1N6gxy8gOww==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="260604082"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="260604082"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:27:12 -0800
IronPort-SDR: GlQ+Nmh3ePjqMiiX1Ut9WpYdyGYnEjIvw38Bg12NY18PqxqCaiwRNVEO90cE+Iq2o8JyQ7vsnY
 OEp3NLhYVJ2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="392345065"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga002.fm.intel.com with ESMTP; 22 Dec 2020 06:27:11 -0800
Date: Tue, 22 Dec 2020 15:16:44 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201222141644.GH2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-11-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217202415.77891-11-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH 10/10] igc: Enable TX via AF_XDP
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

On Thu, Dec 17, 2020 at 12:24:15PM -0800, Andre Guedes wrote:
> This patch adds support for transmitting packets via AF_XDP zero-copy
> mechanism.
> 
> The packet transmission itself is implemented by igc_xdp_xmit_zc() which
> is called from igc_clean_tx_irq() when the ring has AF_XDP zero-copy
> enabled. Likewise i40e and ice drivers, the transmission budget used is
> the number of descriptors available on the ring.
> 
> A new tx buffer type is introduced to 'enum igc_tx_buffer_type' to
> indicate the tx buffer uses memory from xsk pool so it can be properly
> cleaned after transmission or when the ring is cleaned.
> 
> The I225 controller has only 4 Tx hardware queues so the main difference
> between igc and other Intel drivers that support AF_XDP zero-copy is
> that there is no tx ring dedicated exclusively to XDP. Instead, tx
> rings are shared between the network stack and XDP, and netdev queue
> lock is used to ensure mutual exclusion. This is the same approach
> implemented to support XDP_TX and XDP_REDIRECT actions.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |   3 +
>  drivers/net/ethernet/intel/igc/igc_base.h |   1 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 115 +++++++++++++++++++++-
>  drivers/net/ethernet/intel/igc/igc_xdp.c  |  20 +++-
>  4 files changed, 131 insertions(+), 8 deletions(-)
> 

[...]

>  
> +static void igc_xdp_xmit_zc(struct igc_ring *ring)
> +{
> +	struct xsk_buff_pool *pool = ring->xsk_pool;
> +	struct netdev_queue *nq = txring_txq(ring);
> +	int cpu = smp_processor_id();
> +	struct xdp_desc xdp_desc;
> +	bool work_done;
> +	u16 budget;
> +
> +	if (!netif_carrier_ok(ring->netdev))
> +		return;
> +
> +	__netif_tx_lock(nq, cpu);
> +
> +	budget = igc_desc_unused(ring);
> +	work_done = false;
> +
> +	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
> +		u32 cmd_type, olinfo_status;
> +		union igc_adv_tx_desc *desc;
> +		struct igc_tx_buffer *bi;
> +		dma_addr_t dma;
> +
> +		cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
> +			   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
> +			   xdp_desc.len;
> +		olinfo_status = xdp_desc.len << IGC_ADVTXD_PAYLEN_SHIFT;
> +
> +		dma = xsk_buff_raw_get_dma(pool, xdp_desc.addr);
> +		xsk_buff_raw_dma_sync_for_device(pool, dma, xdp_desc.len);
> +
> +		desc = IGC_TX_DESC(ring, ring->next_to_use);
> +		desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> +		desc->read.olinfo_status = cpu_to_le32(olinfo_status);
> +		desc->read.buffer_addr = cpu_to_le64(dma);
> +
> +		bi = &ring->tx_buffer_info[ring->next_to_use];
> +		bi->type = IGC_TX_BUFFER_TYPE_XSK;
> +		bi->protocol = 0;
> +		bi->bytecount = xdp_desc.len;
> +		bi->gso_segs = 1;
> +		bi->time_stamp = jiffies;
> +		bi->next_to_watch = desc;
> +
> +		netdev_tx_sent_queue(txring_txq(ring), xdp_desc.len);
> +
> +		ring->next_to_use++;
> +		if (ring->next_to_use == ring->count)
> +			ring->next_to_use = 0;
> +
> +		work_done = true;

nit: setting it on each iteration feels semi-optimal.

> +	}
> +
> +	if (work_done) {
> +		igc_flush_tx_descriptors(ring);
> +		xsk_tx_release(pool);
> +	}
> +
> +	__netif_tx_unlock(nq);
> +}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
