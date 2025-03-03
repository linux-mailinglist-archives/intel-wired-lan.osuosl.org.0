Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 426E0A4BAB3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 10:22:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECA8340E3D;
	Mon,  3 Mar 2025 09:22:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Ob5C-1Aub07; Mon,  3 Mar 2025 09:22:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC69340E42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740993754;
	bh=h1LYorhOSPUMOjeoum1yc4NBVQDv7XEwFLlkh4tb318=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s0dAuaUkyHIG25NJ+TIksVmRiIA9vvzQgGez5tSI2hzVNJVYLZ9MH03R7iq45p3sh
	 BLDxFLFOJwKM/n2ItsCZHNBPt0/X2eNOaq1xpdLAmoaQEsBx16YdLfex+KITfC+Tpz
	 IgBK64Ije51x4SdoBykYP7KNyISSBz5mWaru9LrLWyJGpePQrS6UumMuhxb1eEqhXy
	 QUia+tUVvuJQb2SZupQNJz9JV5Cvvjw8a3XXEIEp/swHwSkC1B1rfJaIm/pRXIDkO6
	 doQzmFcx2wSNQLovg/nC/Dcnq7IL+EA0QexWU5crsBc2bngmoiXY3iA0bRamYw27fv
	 XuBbC4wn8ciYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC69340E42;
	Mon,  3 Mar 2025 09:22:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BD94E182
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 09:22:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81CD8409BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 09:22:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c6dTxm3nWucM for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 09:22:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B51364051D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B51364051D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B51364051D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 09:22:28 +0000 (UTC)
X-CSE-ConnectionGUID: J/AcjWGeR+mZKLd62mgftw==
X-CSE-MsgGUID: OmYxvt/4Szq4e23DSzQAfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="64306900"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="64306900"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 01:22:28 -0800
X-CSE-ConnectionGUID: g5erRMBJRyaKUCgQMdR9/g==
X-CSE-MsgGUID: Yk64ODLyTRmWNllaxZhWBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="117751711"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.77.104])
 ([10.247.77.104])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 01:22:25 -0800
Message-ID: <aaf184a1-1431-4720-898e-16122d81022d@linux.intel.com>
Date: Mon, 3 Mar 2025 17:22:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250303-igc_mqprio_tx_mode-v3-1-0efce85e6ae0@linutronix.de>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250303-igc_mqprio_tx_mode-v3-1-0efce85e6ae0@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740993749; x=1772529749;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=pppXMI4hHDgpi3qDF2fKugtygurSGS2UQzTWIfgipHc=;
 b=mTV+LJ4p/H34NaF58g7yKV9ukaeRvJixZyOiRh+KrzVdtt8RSSOLzRU4
 dRmW1B1SlcNa0Ib6bcAvj+omMwjjJ1wDd7dFgHeUB8ckSzO2LUHQ/97p5
 qbnDU9fk/VHN3pW3Z559pSc2JI8UU4ZyZCVI3UTHRg7WNJFpMiZPuaohT
 hk8f4+p467vDI7JmVm1ngkplCNu+QnUjbCZELdwxbdsczAJAuVXRpJNBx
 X4VXnpKpHiRRd6B40R5Pw20HN3L49YtqjiNerXjara5L7/nhoEFLcLftT
 PTV3ISY1uRcInWwNTRHtxcGGg+uzWAnIORcf2bWGVZBBtk6kFRNf05bgI
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mTV+LJ4p
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Change Tx mode for
 MQPRIO offloading
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



On 3/3/2025 5:16 pm, Kurt Kanzenbach wrote:
> The current MQPRIO offload implementation uses the legacy TSN Tx mode. In
> this mode the hardware uses four packet buffers and considers queue
> priorities.
> 
> In order to harmonize the TAPRIO implementation with MQPRIO, switch to the
> regular TSN Tx mode. This mode also uses four packet buffers and considers
> queue priorities. In addition to the legacy mode, transmission is always
> coupled to Qbv. The driver already has mechanisms to use a dummy schedule
> of 1 second with all gates open for ETF. Simply use this for MQPRIO too.
> 
> This reduces code and makes it easier to add support for frame preemption
> later.
> 
> While at it limit the netdev_tc calls to MQPRIO only.
> 
> Tested on i225 with real time application using high priority queue, iperf3
> using low priority queue and network TAP device.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> Changes in v3:
> - Commit message (Paul)
> - Link to v2: https://lore.kernel.org/r/20250224-igc_mqprio_tx_mode-v2-1-9666da13c8d8@linutronix.de
> 
> Changes in v2:
> - Add comma to commit message (Faizal)
> - Simplify if condition (Faizal)
> - Link to v1: https://lore.kernel.org/r/20250217-igc_mqprio_tx_mode-v1-1-3a402fe1f326@linutronix.de
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  4 +---
>   drivers/net/ethernet/intel/igc/igc_main.c | 18 +++++++++++++-
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 40 ++-----------------------------
>   3 files changed, 20 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index cd1d7b6c1782352094f6867a31b6958c929bbbf4..16d85bdf55a7e9c412c47acf727bca6bc7154c61 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -388,11 +388,9 @@ extern char igc_driver_name[];
>   #define IGC_FLAG_RX_LEGACY		BIT(16)
>   #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
>   #define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
> -#define IGC_FLAG_TSN_LEGACY_ENABLED	BIT(19)
>   
>   #define IGC_FLAG_TSN_ANY_ENABLED				\
> -	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED |	\
> -	 IGC_FLAG_TSN_LEGACY_ENABLED)
> +	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED)
>   
>   #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
>   #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 472f009630c98e60c7166ceb8d05cb094f6c837b..240b6075197fb1e61077a736ddf8f9e67c1ed5cd 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6679,13 +6679,14 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
>   				 struct tc_mqprio_qopt_offload *mqprio)
>   {
>   	struct igc_hw *hw = &adapter->hw;
> -	int i;
> +	int err, i;
>   
>   	if (hw->mac.type != igc_i225)
>   		return -EOPNOTSUPP;
>   
>   	if (!mqprio->qopt.num_tc) {
>   		adapter->strict_priority_enable = false;
> +		netdev_reset_tc(adapter->netdev);
>   		goto apply;
>   	}
>   
> @@ -6716,6 +6717,21 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
>   	igc_save_mqprio_params(adapter, mqprio->qopt.num_tc,
>   			       mqprio->qopt.offset);
>   
> +	err = netdev_set_num_tc(adapter->netdev, adapter->num_tc);
> +	if (err)
> +		return err;
> +
> +	for (i = 0; i < adapter->num_tc; i++) {
> +		err = netdev_set_tc_queue(adapter->netdev, i, 1,
> +					  adapter->queue_per_tc[i]);
> +		if (err)
> +			return err;
> +	}
> +
> +	/* In case the card is configured with less than four queues. */
> +	for (; i < IGC_MAX_TX_QUEUES; i++)
> +		adapter->queue_per_tc[i] = i;
> +
>   	mqprio->qopt.hw = TC_MQPRIO_HW_OFFLOAD_TCS;
>   
>   apply:
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 1e44374ca1ffbb86e9893266c590f318984ef574..7c28f3e7bb576f0e6a21c883e934ede4d53096f4 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -37,18 +37,13 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
>   {
>   	unsigned int new_flags = adapter->flags & ~IGC_FLAG_TSN_ANY_ENABLED;
>   
> -	if (adapter->taprio_offload_enable)
> -		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
> -
> -	if (is_any_launchtime(adapter))
> +	if (adapter->taprio_offload_enable || is_any_launchtime(adapter) ||
> +	    adapter->strict_priority_enable)
>   		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
>   
>   	if (is_cbs_enabled(adapter))
>   		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;
>   
> -	if (adapter->strict_priority_enable)
> -		new_flags |= IGC_FLAG_TSN_LEGACY_ENABLED;
> -
>   	return new_flags;
>   }
>   
> @@ -157,16 +152,12 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
>   	wr32(IGC_QBVCYCLET_S, 0);
>   	wr32(IGC_QBVCYCLET, NSEC_PER_SEC);
>   
> -	/* Reset mqprio TC configuration. */
> -	netdev_reset_tc(adapter->netdev);
> -
>   	/* Restore the default Tx arbitration: Priority 0 has the highest
>   	 * priority and is assigned to queue 0 and so on and so forth.
>   	 */
>   	igc_tsn_tx_arb(adapter, queue_per_tc);
>   
>   	adapter->flags &= ~IGC_FLAG_TSN_QBV_ENABLED;
> -	adapter->flags &= ~IGC_FLAG_TSN_LEGACY_ENABLED;
>   
>   	return 0;
>   }
> @@ -206,37 +197,10 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>   		igc_tsn_set_retx_qbvfullthreshold(adapter);
>   
>   	if (adapter->strict_priority_enable) {
> -		int err;
> -
> -		err = netdev_set_num_tc(adapter->netdev, adapter->num_tc);
> -		if (err)
> -			return err;
> -
> -		for (i = 0; i < adapter->num_tc; i++) {
> -			err = netdev_set_tc_queue(adapter->netdev, i, 1,
> -						  adapter->queue_per_tc[i]);
> -			if (err)
> -				return err;
> -		}
> -
> -		/* In case the card is configured with less than four queues. */
> -		for (; i < IGC_MAX_TX_QUEUES; i++)
> -			adapter->queue_per_tc[i] = i;
> -
>   		/* Configure queue priorities according to the user provided
>   		 * mapping.
>   		 */
>   		igc_tsn_tx_arb(adapter, adapter->queue_per_tc);
> -
> -		/* Enable legacy TSN mode which will do strict priority without
> -		 * any other TSN features.
> -		 */
> -		tqavctrl = rd32(IGC_TQAVCTRL);
> -		tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN;
> -		tqavctrl &= ~IGC_TQAVCTRL_ENHANCED_QAV;
> -		wr32(IGC_TQAVCTRL, tqavctrl);
> -
> -		return 0;
>   	}
>   
>   	for (i = 0; i < adapter->num_tx_queues; i++) {
> 
> ---
> base-commit: f77f12010f67259bd0e1ad18877ed27c721b627a
> change-id: 20250214-igc_mqprio_tx_mode-22c19c564605
> 
> Best regards,

Acked-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

