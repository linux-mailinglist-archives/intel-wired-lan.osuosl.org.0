Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 620403E0381
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 16:40:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 68372403A0;
	Wed,  4 Aug 2021 14:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b6tzg9tvWnMb; Wed,  4 Aug 2021 14:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC3B640231;
	Wed,  4 Aug 2021 14:40:48 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 092AB1BF9C1
 for <intel-wired-lan@osuosl.org>; Wed,  4 Aug 2021 14:40:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EAC7D40646
 for <intel-wired-lan@osuosl.org>; Wed,  4 Aug 2021 14:40:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7E477x-7gnKs for <intel-wired-lan@osuosl.org>;
 Wed,  4 Aug 2021 14:40:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB4A04050F
 for <intel-wired-lan@osuosl.org>; Wed,  4 Aug 2021 14:40:41 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BEB3261E64760;
 Wed,  4 Aug 2021 16:40:38 +0200 (CEST)
To: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
References: <1628086752-20213-1-git-send-email-aravindhan.gunasekaran@intel.com>
 <1628086752-20213-4-git-send-email-aravindhan.gunasekaran@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <64f7fe7b-feca-dae2-adc3-96b8ac1fbc70@molgen.mpg.de>
Date: Wed, 4 Aug 2021 16:40:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <1628086752-20213-4-git-send-email-aravindhan.gunasekaran@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for CBS offloading
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
Cc: intel-wired-lan@osuosl.org, velmurugan.chenniyappan@intel.com,
 mallikarjuna.chilakala@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aravindhan,


Am 04.08.21 um 16:19 schrieb aravindhan.gunasekaran@intel.com:
> From: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> 
> Implemented support for CBS Qdisc hardware offload mode in the
> driver. There are two sets of CBS HW logic in i225 controller
> and this patch supports enabling them in the top two priority
> TX queues.
> 
> In-order for CBS algorithm to work as intended and provide BW
> reservation CBS should be enabled in highest priority queue first.
> If we enable CBS on any of low priority queues, the traffic
> in high priority queue does not allow low priority queue
> to be selected for transmission and bandwidth reservation
> is not guaranteed.

Nit: Please re-flow for 75 characters per line.

Please mention IEEE802.1Qav (CBS) in the commit message, the datasheet 
name and revision you used for the implementation (I see it in one of 
the comments), and maybe how to configure it.

Should Linux log a message, if support is detected and used?


Kind regards,

Paul


> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  11 ++-
>   drivers/net/ethernet/intel/igc/igc_defines.h |   8 +++
>   drivers/net/ethernet/intel/igc/igc_main.c    |  71 ++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_regs.h    |   3 +
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 103 +++++++++++++++++++++++++++
>   5 files changed, 195 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 58488ba..a125aaf 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -98,6 +98,13 @@ struct igc_ring {
>   	u32 start_time;
>   	u32 end_time;
>   
> +	/* CBS parameters */
> +	bool cbs_enable;                /* indicates if CBS is enabled */
> +	s32 idleslope;                  /* idleSlope in kbps */
> +	s32 sendslope;                  /* sendSlope in kbps */
> +	s32 hicredit;                   /* hiCredit in bytes */
> +	s32 locredit;                   /* loCredit in bytes */
> +
>   	/* everything past this point are written often */
>   	u16 next_to_clean;
>   	u16 next_to_use;
> @@ -289,8 +296,10 @@ extern char igc_driver_name[];
>   #define IGC_FLAG_VLAN_PROMISC		BIT(15)
>   #define IGC_FLAG_RX_LEGACY		BIT(16)
>   #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
> +#define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
>   
> -#define IGC_FLAG_TSN_ANY_ENABLED	IGC_FLAG_TSN_QBV_ENABLED
> +#define IGC_FLAG_TSN_ANY_ENABLED \
> +	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED)
>   
>   #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
>   #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 1361086..244edbc 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -518,6 +518,14 @@
>   #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
>   #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
>   #define IGC_TXQCTL_STRICT_END		0x00000004
> +#define IGC_TXQCTL_QAV_SEL_MASK		0x000000C0
> +#define IGC_TXQCTL_QAV_SEL_CBS0		0x00000080
> +#define IGC_TXQCTL_QAV_SEL_CBS1		0x000000C0
> +
> +#define IGC_TQAVCC_IDLESLOPE_MASK	0xFFFF
> +#define IGC_TQAVCC_KEEP_CREDITS		BIT(30)
> +
> +#define IGC_MAX_SR_QUEUES		2
>   
>   /* Receive Checksum Control */
>   #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 3eb4f9e..ea12633 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5905,6 +5905,74 @@ static int igc_tsn_enable_qbv_scheduling(struct igc_adapter *adapter,
>   	return igc_tsn_offload_apply(adapter);
>   }
>   
> +static int igc_save_cbs_params(struct igc_adapter *adapter, int queue,
> +			       bool enable, int idleslope, int sendslope,
> +			       int hicredit, int locredit)
> +{
> +	bool cbs_status[IGC_MAX_SR_QUEUES] = { false };
> +	struct net_device *netdev = adapter->netdev;
> +	struct igc_ring *ring;
> +	int i;
> +
> +	/* i225 has two sets of credit-based shaper logic.
> +	 * Supporting it only on the top two priority queues
> +	 */
> +	if (queue < 0 || queue > 1)
> +		return -EINVAL;
> +
> +	ring = adapter->tx_ring[queue];
> +
> +	for (i = 0; i < IGC_MAX_SR_QUEUES; i++)
> +		if (adapter->tx_ring[i])
> +			cbs_status[i] = adapter->tx_ring[i]->cbs_enable;
> +
> +	/* CBS should be enabled on the highest priority queue first inorder
> +	 * for the CBS algorithm to operate as intended.
> +	 */
> +	if (enable) {
> +		if (queue == 1 && !cbs_status[0]) {
> +			netdev_err(netdev,
> +				   "Enabling CBS on queue1 before queue0\n");
> +			return -EINVAL;
> +		}
> +	} else {
> +		if (queue == 0 && cbs_status[1]) {
> +			netdev_err(netdev,
> +				   "Disabling CBS on queue0 before queue1\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	ring->cbs_enable = enable;
> +	ring->idleslope = idleslope;
> +	ring->sendslope = sendslope;
> +	ring->hicredit = hicredit;
> +	ring->locredit = locredit;
> +
> +	return 0;
> +}
> +
> +static int igc_tsn_enable_cbs(struct igc_adapter *adapter,
> +			      struct tc_cbs_qopt_offload *qopt)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	int err;
> +
> +	if (hw->mac.type != igc_i225)
> +		return -EOPNOTSUPP;
> +
> +	if (qopt->queue < 0 || qopt->queue > 1)
> +		return -EINVAL;
> +
> +	err = igc_save_cbs_params(adapter, qopt->queue, qopt->enable,
> +				  qopt->idleslope, qopt->sendslope,
> +				  qopt->hicredit, qopt->locredit);
> +	if (err)
> +		return err;
> +
> +	return igc_tsn_offload_apply(adapter);
> +}
> +
>   static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
>   			void *type_data)
>   {
> @@ -5917,6 +5985,9 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
>   	case TC_SETUP_QDISC_ETF:
>   		return igc_tsn_enable_launchtime(adapter, type_data);
>   
> +	case TC_SETUP_QDISC_CBS:
> +		return igc_tsn_enable_cbs(adapter, type_data);
> +
>   	default:
>   		return -EOPNOTSUPP;
>   	}
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
> index 828c350..f90a644 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -236,6 +236,9 @@
>   #define IGC_ENDQT(_n)		(0x3334 + 0x4 * (_n))
>   #define IGC_DTXMXPKTSZ		0x355C
>   
> +#define IGC_TQAVCC(_n)		(0x3004 + ((_n) * 0x40))
> +#define IGC_TQAVHC(_n)		(0x300C + ((_n) * 0x40))
> +
>   /* System Time Registers */
>   #define IGC_SYSTIML	0x0B600  /* System time register Low - RO */
>   #define IGC_SYSTIMH	0x0B604  /* System time register High - RO */
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 2935d57..0fce22d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -18,6 +18,20 @@ static bool is_any_launchtime(struct igc_adapter *adapter)
>   	return false;
>   }
>   
> +static bool is_cbs_enabled(struct igc_adapter *adapter)
> +{
> +	int i;
> +
> +	for (i = 0; i < adapter->num_tx_queues; i++) {
> +		struct igc_ring *ring = adapter->tx_ring[i];
> +
> +		if (ring->cbs_enable)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>   static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
>   {
>   	unsigned int new_flags = adapter->flags & ~IGC_FLAG_TSN_ANY_ENABLED;
> @@ -28,6 +42,9 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
>   	if (is_any_launchtime(adapter))
>   		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
>   
> +	if (is_cbs_enabled(adapter))
> +		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;
> +
>   	return new_flags;
>   }
>   
> @@ -87,6 +104,8 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>   	for (i = 0; i < adapter->num_tx_queues; i++) {
>   		struct igc_ring *ring = adapter->tx_ring[i];
>   		u32 txqctl = 0;
> +		u16 cbs_value;
> +		u32 tqavcc;
>   
>   		wr32(IGC_STQT(i), ring->start_time);
>   		wr32(IGC_ENDQT(i), ring->end_time);
> @@ -104,6 +123,90 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>   		if (ring->launchtime_enable)
>   			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
>   
> +		/* Skip configuring CBS for Q2 and Q3 */
> +		if (i > 1)
> +			goto skip_cbs;
> +
> +		if (ring->cbs_enable) {
> +			if (i == 0)
> +				txqctl |= IGC_TXQCTL_QAV_SEL_CBS0;
> +			else
> +				txqctl |= IGC_TXQCTL_QAV_SEL_CBS1;
> +
> +			/* According to i225 datasheet section 7.5.2.7, we
> +			 * should set the 'idleSlope' field from TQAVCC
> +			 * register following the equation:
> +			 *
> +			 * value = link-speed   0x7736 * BW * 0.2
> +			 *         ---------- *  -----------------         (E1)
> +			 *          100Mbps            2.5
> +			 *
> +			 * Note that 'link-speed' is in Mbps.
> +			 *
> +			 * 'BW' is the percentage bandwidth out of full
> +			 * link speed which can be found with the
> +			 * following equation. Note that idleSlope here
> +			 * is the parameter from this function
> +			 * which is in kbps.
> +			 *
> +			 *     BW =     idleSlope
> +			 *          -----------------                      (E2)
> +			 *          link-speed * 1000
> +			 *
> +			 * That said, we can come up with a generic
> +			 * equation to calculate the value we should set
> +			 * it TQAVCC register by replacing 'BW' in E1 by E2.
> +			 * The resulting equation is:
> +			 *
> +			 * value = link-speed * 0x7736 * idleSlope * 0.2
> +			 *         -------------------------------------   (E3)
> +			 *             100 * 2.5 * link-speed * 1000
> +			 *
> +			 * 'link-speed' is present in both sides of the
> +			 * fraction so it is canceled out. The final
> +			 * equation is the following:
> +			 *
> +			 *     value = idleSlope * 61036
> +			 *             -----------------                   (E4)
> +			 *                  2500000
> +			 *
> +			 * NOTE: For i225, given the above, we can see
> +			 *       that idleslope is represented in
> +			 *       40.959433 kbps units by the value at
> +			 *       the TQAVCC register (2.5Gbps / 61036),
> +			 *       which reduces the granularity for
> +			 *       idleslope increments.
> +			 *
> +			 * In i225 controller, the sendSlope and loCredit
> +			 * parameters from CBS are not configurable
> +			 * by software so we don't do any
> +			 * 'controller configuration' in respect to
> +			 * these parameters.
> +			 */
> +			cbs_value = DIV_ROUND_UP_ULL(ring->idleslope
> +						     * 61036ULL, 2500000);
> +
> +			tqavcc = rd32(IGC_TQAVCC(i));
> +			tqavcc &= ~IGC_TQAVCC_IDLESLOPE_MASK;
> +			tqavcc |= cbs_value | IGC_TQAVCC_KEEP_CREDITS;
> +			wr32(IGC_TQAVCC(i), tqavcc);
> +
> +			wr32(IGC_TQAVHC(i),
> +			     0x80000000 + ring->hicredit * 0x7735);
> +		} else {
> +			/* Disable any CBS for the queue */
> +			txqctl &= ~(IGC_TXQCTL_QAV_SEL_MASK);
> +
> +			/* Set idleSlope to zero. */
> +			tqavcc = rd32(IGC_TQAVCC(i));
> +			tqavcc &= ~(IGC_TQAVCC_IDLESLOPE_MASK |
> +				    IGC_TQAVCC_KEEP_CREDITS);
> +			wr32(IGC_TQAVCC(i), tqavcc);
> +
> +			/* Set hiCredit to zero. */
> +			wr32(IGC_TQAVHC(i), 0);
> +		}
> +skip_cbs:
>   		wr32(IGC_TXQCTL(i), txqctl);
>   	}
>   
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
