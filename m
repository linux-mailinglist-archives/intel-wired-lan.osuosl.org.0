Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 052B12B017C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 10:03:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1C4686E04;
	Thu, 12 Nov 2020 09:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QU3lAtoWrM-0; Thu, 12 Nov 2020 09:03:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 491AB86DF6;
	Thu, 12 Nov 2020 09:03:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 974801BF295
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 09:03:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8937286DA9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 09:03:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lBMZTcKTmFWd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 09:03:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C8B686D9A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 09:03:29 +0000 (UTC)
IronPort-SDR: jSZCRzlKPyN2a1Tjl9H6R5ambX2N3UWJDNHTogPwTUxhySa9A1jnzv11o7Tgqy8KHFiTuYQPWP
 nGFxc0qzI+Jg==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="149553198"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="149553198"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 01:03:28 -0800
IronPort-SDR: pBDmlQt9mfk1nsC+afFJ0/mbd5Fl604fJnaCcje9jVvyVqoc3uvUsyD23Z/g9fV8u4BmxERPDb
 3gRjBxAbYyXg==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="542185003"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.251.161.207])
 ([10.251.161.207])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 01:03:27 -0800
To: Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <20201104031210.27772-1-andre.guedes@intel.com>
 <20201104031210.27772-10-andre.guedes@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <df3339ba-f2d1-6e85-044d-9db96807fd97@intel.com>
Date: Thu, 12 Nov 2020 11:03:24 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20201104031210.27772-10-andre.guedes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v4 9/9] igc: Add support for
 XDP_REDIRECT action
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/4/2020 05:12, Andre Guedes wrote:
> This patch adds support for the XDP_REDIRECT action which enables XDP
> programs to redirect packets arriving at I225 NIC. It also implements
> the ndo_xdp_xmit ops, enabling the igc driver to transmit packets
> forwarded to it by xdp programs running on other interfaces.
> 
> The patch tweaks the driver's page counting scheme (as described in
> '8ce29c679a6e i40e: tweak page counting for XDP_REDIRECT' and
> implemented by other Intel drivers) in order to properly support
> XDP_REDIRECT action.
> 
> This patch has been tested with the sample apps "xdp_redirect_cpu" and
> "xdp_redirect_map" located in samples/bpf/.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 59 +++++++++++++++++++++--
>   1 file changed, 56 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index ee8e4615aba5..f406364e8797 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -27,6 +27,7 @@
>   #define IGC_XDP_PASS		0
>   #define IGC_XDP_CONSUMED	BIT(0)
>   #define IGC_XDP_TX		BIT(1)
> +#define IGC_XDP_REDIRECT	BIT(2)
Hello Andre, I would suggest move the _XDP_REDIRECT mask to the 
igc_defines.h file.
Same suggestion for mask above (in previous patches)
>   
>   static int debug = -1;
>   
> @@ -1720,8 +1721,8 @@ static bool igc_can_reuse_rx_page(struct igc_rx_buffer *rx_buffer)
>   	 * the pagecnt_bias and page count so that we fully restock the
>   	 * number of references the driver holds.
>   	 */
> -	if (unlikely(!pagecnt_bias)) {
> -		page_ref_add(page, USHRT_MAX);
> +	if (unlikely(pagecnt_bias == 1)) {
> +		page_ref_add(page, USHRT_MAX - 1);
>   		rx_buffer->pagecnt_bias = USHRT_MAX;
>   	}
>   
> @@ -1862,7 +1863,8 @@ static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
>   	bi->dma = dma;
>   	bi->page = page;
>   	bi->page_offset = igc_rx_offset(rx_ring);
> -	bi->pagecnt_bias = 1;
> +	page_ref_add(page, USHRT_MAX - 1);
> +	bi->pagecnt_bias = USHRT_MAX;
>   
>   	return true;
>   }
> @@ -2058,6 +2060,12 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
>   		else
>   			res = IGC_XDP_TX;
>   		break;
> +	case XDP_REDIRECT:
> +		if (xdp_do_redirect(adapter->netdev, xdp, prog) < 0)
> +			res = IGC_XDP_CONSUMED;
> +		else
> +			res = IGC_XDP_REDIRECT;
> +		break;
>   	default:
>   		bpf_warn_invalid_xdp_action(act);
>   		fallthrough;
> @@ -2099,6 +2107,9 @@ static void igc_finalize_xdp(struct igc_adapter *adapter, int status)
>   		igc_flush_tx_descriptors(ring);
>   		__netif_tx_unlock(nq);
>   	}
> +
> +	if (status & IGC_XDP_REDIRECT)
> +		xdp_do_flush();
>   }
>   
>   static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> @@ -2167,6 +2178,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>   				rx_buffer->pagecnt_bias++;
>   				break;
>   			case IGC_XDP_TX:
> +			case IGC_XDP_REDIRECT:
>   				igc_rx_buffer_flip(rx_buffer, truesize);
>   				xdp_status |= xdp_res;
>   				break;
> @@ -5132,6 +5144,46 @@ static int igc_bpf(struct net_device *dev, struct netdev_bpf *bpf)
>   	}
>   }
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
>   static const struct net_device_ops igc_netdev_ops = {
>   	.ndo_open		= igc_open,
>   	.ndo_stop		= igc_close,
> @@ -5146,6 +5198,7 @@ static const struct net_device_ops igc_netdev_ops = {
>   	.ndo_do_ioctl		= igc_ioctl,
>   	.ndo_setup_tc		= igc_setup_tc,
>   	.ndo_bpf		= igc_bpf,
> +	.ndo_xdp_xmit		= igc_xdp_xmit,
>   };
>   
>   /* PCIe configuration access */
> 
Thanks,
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
