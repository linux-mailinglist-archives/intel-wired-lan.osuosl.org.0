Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE59A29EEA8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Oct 2020 15:45:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91B988681D;
	Thu, 29 Oct 2020 14:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l29U3gUHzd6q; Thu, 29 Oct 2020 14:45:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7BC75868F0;
	Thu, 29 Oct 2020 14:45:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 62C561BF308
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 14:45:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D2EC8681D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 14:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qXv+BviUfWn5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Oct 2020 14:45:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9142E867E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 14:45:06 +0000 (UTC)
IronPort-SDR: BNlO5E4lD4up2KC8W6IFvgJjXntaiCgz0IZaLg0/J/a2+BOlfexag6OFnKJi5ijibhEjL/Kn1l
 WSL9qGZtjG4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="164943351"
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="164943351"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 07:45:06 -0700
IronPort-SDR: aj1oZS5xvJhHVEyaYxPhT9TiE48EruInckA1FiLUBHpJXfqHMdHFmFyGsYIpPxXn7uEja5Znhp
 cNfuTXM7lcfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="361514309"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Oct 2020 07:45:05 -0700
Date: Thu, 29 Oct 2020 15:34:39 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201029143439.GE890@ranger.igk.intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
 <20201028201943.93147-11-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028201943.93147-11-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v2 10/10] igc: Implement ndo_xdp_xmit
 callback
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

On Wed, Oct 28, 2020 at 01:19:43PM -0700, Andre Guedes wrote:
> This patch introduces the helper igc_xdp_xmit() which implements the
> ndo_xdp_xmit ops, enabling the igc driver to transmit packets forwarded
> to it by xdp programs running on other interfaces.
> 
> This patch has been tested with the sample app "xdp_redirect_map"
> located in samples/bpf/.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 41 +++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_xdp.c  |  3 +-
>  drivers/net/ethernet/intel/igc/igc_xdp.h  |  2 ++
>  3 files changed, 44 insertions(+), 2 deletions(-)

I think that it should be squashed with previous patch? So you have
XDP_REDIRECT support in a single patch.

> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index f9c7bbc1347e..4d821f04e3de 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -4990,6 +4990,46 @@ static int igc_bpf(struct net_device *dev, struct netdev_bpf *bpf)
>  	}
>  }
>  
> +static int igc_xdp_xmit(struct net_device *dev, int num_frames,
> +			struct xdp_frame **frames, u32 flags)
> +{
> +	struct igc_adapter *adapter = netdev_priv(dev);
> +	int cpu = smp_processor_id();
> +	struct netdev_queue *nq;
> +	struct igc_ring *ring;
> +	int i, drops;
> +
> +	if (unlikely(test_bit(__IGC_DOWN, &adapter->state)))
> +		return -ENETDOWN;
> +
> +	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
> +		return -EINVAL;
> +
> +	ring = igc_xdp_get_tx_ring(adapter, cpu);
> +	nq = txring_txq(ring);
> +
> +	__netif_tx_lock(nq, cpu);
> +
> +	drops = 0;
> +	for (i = 0; i < num_frames; i++) {
> +		int err;
> +		struct xdp_frame *xdpf = frames[i];
> +
> +		err = igc_xdp_init_tx_descriptor(ring, xdpf);
> +		if (err) {
> +			xdp_return_frame_rx_napi(xdpf);
> +			drops++;
> +		}
> +	}
> +
> +	if (flags & XDP_XMIT_FLUSH)
> +		igc_flush_tx_descriptors(ring);
> +
> +	__netif_tx_unlock(nq);
> +
> +	return num_frames - drops;
> +}
> +
>  static const struct net_device_ops igc_netdev_ops = {
>  	.ndo_open		= igc_open,
>  	.ndo_stop		= igc_close,
> @@ -5004,6 +5044,7 @@ static const struct net_device_ops igc_netdev_ops = {
>  	.ndo_do_ioctl		= igc_ioctl,
>  	.ndo_setup_tc		= igc_setup_tc,
>  	.ndo_bpf		= igc_bpf,
> +	.ndo_xdp_xmit		= igc_xdp_xmit,
>  };
>  
>  /* PCIe configuration access */
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
> index 39b8310dfba1..2fe6fac38d0b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> @@ -58,8 +58,7 @@ static int igc_xdp_init_tx_buffer(struct igc_tx_buffer *buffer,
>  }
>  
>  /* This function requires __netif_tx_lock is held by the caller. */
> -static int igc_xdp_init_tx_descriptor(struct igc_ring *ring,
> -				      struct xdp_frame *xdpf)
> +int igc_xdp_init_tx_descriptor(struct igc_ring *ring, struct xdp_frame *xdpf)
>  {
>  	struct igc_tx_buffer *buffer;
>  	union igc_adv_tx_desc *desc;
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.h b/drivers/net/ethernet/intel/igc/igc_xdp.h
> index 1c38a80c3aa0..801fb27fbb85 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.h
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.h
> @@ -22,4 +22,6 @@ void igc_xdp_unregister_rxq_info(struct igc_ring *ring);
>  
>  struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter, int cpu);
>  
> +int igc_xdp_init_tx_descriptor(struct igc_ring *ring, struct xdp_frame *xdpf);
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
