Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E142C294EB5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Oct 2020 16:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9417A86200;
	Wed, 21 Oct 2020 14:33:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 13h1jYB-jFWN; Wed, 21 Oct 2020 14:33:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1D6F86199;
	Wed, 21 Oct 2020 14:33:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B3941BF580
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 14:33:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 86C5B86199
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 14:33:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IK6Ek1c0vVwS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Oct 2020 14:33:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3751B861BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 14:33:13 +0000 (UTC)
IronPort-SDR: 74dQME1BdHoUCdYKFBbdjGPDzIZGuWyRW5mibIkhVbxyWoXhaQopFZr4jjQh3qj1Z47A0i8nZR
 nURdRExtl5zg==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="164768791"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="164768791"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 07:33:12 -0700
IronPort-SDR: pX0Dcg2Ua1meKqKmMvmMLH0K40vmVU9xG5miz5ypiTaZkLE82QfIEQzV8RP2cZG/TZtk4+8T0G
 pFcGRbcrGI4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="522765705"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga006.fm.intel.com with ESMTP; 21 Oct 2020 07:33:11 -0700
Date: Wed, 21 Oct 2020 16:23:49 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201021142349.GB58344@ranger.igk.intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
 <20201009025349.4037-7-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009025349.4037-7-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH 6/9] igc: Add Initial XDP support
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

On Thu, Oct 08, 2020 at 07:53:46PM -0700, Andre Guedes wrote:
> This patch adds the initial XDP support to the igc driver. For now,
> only XDP_PASS, XDP_DROP, XDP_ABORT actions are supported. Upcoming

s/XDP_ABORT/XDP_ABORTED

> patches will add support for the remaining XDP actions.
> 
> XDP-specific helpers are defined in a new file, igc_xdp.c. These
> helpers are utilized in igc_main.c to implement the ndo_bpf callback
> and to handle XDP programs execution in igc_clean_rx_irq(). The driver
> doesn't support XDP functionality with frames that span over multiple
> buffers so jumbo frames are not allowed for now.
> 
> The approach implemented by this patch follows the approach implemented
> in other Intel drivers as much as possible for the sake of consistency
> across the drivers.
> 
> Quick comment regarding igc_build_skb(): this patch doesn't touch it
> because the function is never called. It seems its support is
> incomplete/in progress. The function was added by commit 0507ef8a0372b
> ("igc: Add transmit and receive fastpath and interrupt handlers") but
> ring_ uses_build_skb() always return False since the IGC_RING_FLAG_RX_
> BUILD_SKB_ENABLED isn't set anywhere in the driver code.
> 
> This patch has been tested with the sample app "xdp1" located in
> samples/bpf/ dir.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/Makefile   |  2 +-
>  drivers/net/ethernet/intel/igc/igc.h      |  2 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 58 +++++++++++++++---
>  drivers/net/ethernet/intel/igc/igc_xdp.c  | 75 +++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_xdp.h  | 18 ++++++
>  5 files changed, 144 insertions(+), 11 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.c
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.h
> 
> diff --git a/drivers/net/ethernet/intel/igc/Makefile b/drivers/net/ethernet/intel/igc/Makefile
> index 1c3051db9085..95d1e8c490a4 100644
> --- a/drivers/net/ethernet/intel/igc/Makefile
> +++ b/drivers/net/ethernet/intel/igc/Makefile
> @@ -8,4 +8,4 @@
>  obj-$(CONFIG_IGC) += igc.o
>  
>  igc-objs := igc_main.o igc_mac.o igc_i225.o igc_base.o igc_nvm.o igc_phy.o \
> -igc_diag.o igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o
> +igc_diag.o igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o igc_xdp.o
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index b9d15e6f22f6..e013ac65001b 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -217,6 +217,8 @@ struct igc_adapter {
>  	struct timecounter tc;
>  	struct timespec64 prev_ptp_time; /* Pre-reset PTP clock */
>  	ktime_t ptp_reset_start; /* Reset time in clock mono */
> +
> +	struct bpf_prog *xdp_prog;
>  };
>  
>  void igc_up(struct igc_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index d026609eec4d..8cdd3a16e637 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -16,6 +16,7 @@
>  #include "igc.h"
>  #include "igc_hw.h"
>  #include "igc_tsn.h"
> +#include "igc_xdp.h"
>  
>  #define DRV_SUMMARY	"Intel(R) 2.5G Ethernet Linux Driver"
>  
> @@ -1592,11 +1593,11 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
>  
>  static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>  					 struct igc_rx_buffer *rx_buffer,
> -					 unsigned int size, int pkt_offset,
> +					 struct xdp_buff *xdp,
>  					 ktime_t timestamp)
>  {
> -	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset +
> -		   pkt_offset;
> +	void *va = xdp->data;
> +	unsigned int size = xdp->data_end - xdp->data;
>  	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
>  	unsigned int headlen;
>  	struct sk_buff *skb;

RCT

> @@ -1746,6 +1747,10 @@ static bool igc_cleanup_headers(struct igc_ring *rx_ring,
>  				union igc_adv_rx_desc *rx_desc,
>  				struct sk_buff *skb)
>  {
> +	/* XDP packets use error pointer so abort at this point */
> +	if (IS_ERR(skb))
> +		return true;
> +
>  	if (unlikely(igc_test_staterr(rx_desc, IGC_RXDEXT_STATERR_RXE))) {
>  		struct net_device *netdev = rx_ring->netdev;
>  
> @@ -1911,7 +1916,9 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		struct igc_rx_buffer *rx_buffer;
>  		ktime_t timestamp = 0;
>  		int pkt_offset = 0;
> +		struct xdp_buff xdp;
>  		unsigned int size;
> +		void *pktbuf;
>  
>  		/* return some buffers to hardware, one at a time is too slow */
>  		if (cleaned_count >= IGC_RX_BUFFER_WRITE) {
> @@ -1932,24 +1939,37 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  
>  		rx_buffer = igc_get_rx_buffer(rx_ring, size);
>  
> -		if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
> -			void *pktbuf = page_address(rx_buffer->page) +
> -				       rx_buffer->page_offset;
> +		pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
>  
> +		if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
>  			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
>  							pktbuf);
>  			pkt_offset = IGC_TS_HDR_LEN;
>  			size -= IGC_TS_HDR_LEN;
>  		}
>  
> -		/* retrieve a buffer from the ring */
> -		if (skb)
> +		if (!skb) {
> +			struct igc_adapter *adapter = q_vector->adapter;
> +
> +			xdp.data = pktbuf + pkt_offset;
> +			xdp.data_end = xdp.data + size;
> +			xdp.data_hard_start = pktbuf - igc_rx_offset(rx_ring);

This needs some fixing. You're saying that build_skb() can't be currently
used which means that the headroom given for XDP will always be zero.

You need to either teach igc_rx_offset to return XDP_PACKET_HEADROOM for
case when ring is not using build_skb() or make build_skb() usable.

> +			xdp_set_data_meta_invalid(&xdp);

What about xdp.frame_sz?

> +
> +			skb = igc_xdp_run_prog(adapter, &xdp);
> +		}
> +
> +		if (IS_ERR(skb)) {
> +			rx_buffer->pagecnt_bias++;
> +			total_packets++;
> +			total_bytes += size;
> +		} else if (skb)
>  			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
>  		else if (ring_uses_build_skb(rx_ring))
>  			skb = igc_build_skb(rx_ring, rx_buffer, rx_desc, size);
>  		else
> -			skb = igc_construct_skb(rx_ring, rx_buffer, size,
> -						pkt_offset, timestamp);
> +			skb = igc_construct_skb(rx_ring, rx_buffer, &xdp,
> +						timestamp);
>  
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb) {
> @@ -3881,6 +3901,11 @@ static int igc_change_mtu(struct net_device *netdev, int new_mtu)
>  	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;

I think I was mentioning it with igb xdp review, shouldn't we take double
vlan header into account?

>  	struct igc_adapter *adapter = netdev_priv(netdev);
>  
> +	if (igc_xdp_is_enabled(adapter) && new_mtu > ETH_DATA_LEN) {
> +		netdev_dbg(netdev, "Jumbo frames not supported with XDP");
> +		return -EINVAL;
> +	}
> +
>  	/* adjust max frame to be at least the size of a standard frame */
>  	if (max_frame < (ETH_FRAME_LEN + ETH_FCS_LEN))
>  		max_frame = ETH_FRAME_LEN + ETH_FCS_LEN;
> @@ -4867,6 +4892,18 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
>  	}
>  }
>  
> +static int igc_bpf(struct net_device *dev, struct netdev_bpf *bpf)
> +{
> +	struct igc_adapter *adapter = netdev_priv(dev);
> +
> +	switch (bpf->command) {
> +	case XDP_SETUP_PROG:
> +		return igc_xdp_set_prog(adapter, bpf->prog, bpf->extack);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>  static const struct net_device_ops igc_netdev_ops = {
>  	.ndo_open		= igc_open,
>  	.ndo_stop		= igc_close,
> @@ -4880,6 +4917,7 @@ static const struct net_device_ops igc_netdev_ops = {
>  	.ndo_features_check	= igc_features_check,
>  	.ndo_do_ioctl		= igc_ioctl,
>  	.ndo_setup_tc		= igc_setup_tc,
> +	.ndo_bpf		= igc_bpf,
>  };
>  
>  /* PCIe configuration access */
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
> new file mode 100644
> index 000000000000..0085d8b85466
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> @@ -0,0 +1,75 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2020, Intel Corporation. */
> +
> +#include <linux/bpf_trace.h>
> +
> +#include "igc.h"
> +#include "igc_xdp.h"
> +
> +int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
> +		     struct netlink_ext_ack *extack)
> +{
> +	struct net_device *dev = adapter->netdev;
> +	bool if_running = netif_running(dev);
> +	struct bpf_prog *old_prog;
> +
> +	if (dev->mtu > ETH_DATA_LEN) {
> +		/* For now, the driver doesn't support XDP functionality with
> +		 * jumbo frames so we return error.
> +		 */
> +		NL_SET_ERR_MSG_MOD(extack, "Jumbo frames not supported");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	if (if_running)
> +		igc_close(dev);
> +
> +	old_prog = xchg(&adapter->xdp_prog, prog);
> +	if (old_prog)
> +		bpf_prog_put(old_prog);
> +
> +	if (if_running)
> +		igc_open(dev);
> +
> +	netdev_dbg(dev, "XDP program set successfully");

This can be dropped

> +	return 0;
> +}
> +
> +struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
> +				 struct xdp_buff *xdp)
> +{
> +	struct bpf_prog *prog;
> +	int res;
> +	u32 act;
> +
> +	rcu_read_lock();
> +
> +	prog = READ_ONCE(adapter->xdp_prog);
> +	if (!prog)
> +		goto unlock;

res will be uninitialized if you hit this goto.

> +
> +	act = bpf_prog_run_xdp(prog, xdp);
> +	switch (act) {
> +	case XDP_PASS:
> +		res = IGC_XDP_PASS;
> +		break;
> +	default:
> +		bpf_warn_invalid_xdp_action(act);
> +		fallthrough;
> +	case XDP_ABORTED:
> +		trace_xdp_exception(adapter->netdev, prog, act);
> +		fallthrough;
> +	case XDP_DROP:
> +		res = IGC_XDP_CONSUMED;
> +		break;
> +	}
> +
> +unlock:
> +	rcu_read_unlock();
> +	return ERR_PTR(-res);
> +}
> +
> +bool igc_xdp_is_enabled(struct igc_adapter *adapter)
> +{
> +	return !!adapter->xdp_prog;
> +}
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.h b/drivers/net/ethernet/intel/igc/igc_xdp.h
> new file mode 100644
> index 000000000000..ab36ab4d48fd
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.h
> @@ -0,0 +1,18 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (c) 2020, Intel Corporation. */
> +
> +#ifndef _IGC_XDP_H_
> +#define _IGC_XDP_H_
> +
> +#define IGC_XDP_PASS		0
> +#define IGC_XDP_CONSUMED	BIT(0)
> +
> +int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
> +		     struct netlink_ext_ack *extack);
> +
> +struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
> +				 struct xdp_buff *xdp);
> +
> +bool igc_xdp_is_enabled(struct igc_adapter *adapter);
> +
> +#endif /* _IGC_XDP_H_ */
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
