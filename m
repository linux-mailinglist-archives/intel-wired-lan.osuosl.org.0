Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB9B88FE4F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 12:46:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6581F60D7F;
	Thu, 28 Mar 2024 11:46:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gj9O2iIQTklf; Thu, 28 Mar 2024 11:46:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BDF560D80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711626402;
	bh=H7r8/BULfz3Gs7h6GI9dFtApUz/CYrXFU6oIIZqsEx4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YBneZp/E4V0EC6bvr5aM3526RhRMHCp4qzD20FAtwNPNFq8X/+H8d1KY1++I98Q1w
	 ocf8p2PgnKnL5CPplZEaGn9YSUKZY1AW2wRlBXIXoKZY0UVzm7L5vNqRJvnH94s6MS
	 Q8RsTzCEGX/9w3dIVPdCc5AVDDj3/JQYiSwQ548zIVoUDQPAuSyftR6lsMoEYqHKe6
	 mZsKsBMLpLya1mewDSoaqbswIbvJWCMrbPi678h8U9wJX++YSsQWJF5anPGz538JWQ
	 2qRpQI6JmaSm54IOzgc4M4Q9QAy1ho5Do18XrKbHSPivZvto8qRmQMhybOLwbliout
	 +if7NWFRO+t1A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BDF560D80;
	Thu, 28 Mar 2024 11:46:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E7F2D1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DD89F82272
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:46:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j-mFW4bCc1AB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 11:46:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EEF1D8226C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEF1D8226C
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EEF1D8226C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:46:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E301561477;
 Thu, 28 Mar 2024 11:46:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65381C433C7;
 Thu, 28 Mar 2024 11:46:35 +0000 (UTC)
Date: Thu, 28 Mar 2024 11:46:33 +0000
From: Simon Horman <horms@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20240328114633.GI403975@kernel.org>
References: <20240212-igc_mqprio-v2-1-587924e6b18c@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240212-igc_mqprio-v2-1-587924e6b18c@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711626397;
 bh=jd50ccBDmt6hfv7/MdhphQmNaMN9Yc1zWRCQCEWQGJs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eKDotHXu+veeELVCiF/IpiHPTI5PlSRQeftHjWipIhucI2ennUtM1GnHG0SQtt0ra
 1yGJ7aKCno5sRi6bl97djZmNTRLbLinniGPCHccPSlflyH+jCECO0C9XtPWlNSjVDT
 y922mr6oxOzySDoUCeICJMJoMt3NG6DN5psR1g37N9glgvdFc2KQiMgrQhqMsMTyNS
 ODc7QFvvJqIKo+cgEA1AA49okRvSNIelw4BSMsACF2e/iwQXyjr2IdD1FtuPmFW+cJ
 36pEwnND5LKiQKFxkrfoUSDhrZbBqXJ23tPcLoHp1r4+Sc4Uun1Ix4SMtSN203f5g0
 2lM8pnIKqmYjw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=eKDotHXu
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Add MQPRIO offload
 support
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 26, 2024 at 02:34:54PM +0100, Kurt Kanzenbach wrote:
> Add support for offloading MQPRIO. The hardware has four priorities as well
> as four queues. Each queue must be a assigned with a unique priority.
> 
> However, the priorities are only considered in TSN Tx mode. There are two
> TSN Tx modes. In case of MQPRIO the Qbv capability is not required.
> Therefore, use the legacy TSN Tx mode, which performs strict priority
> arbitration.
> 
> Example for mqprio with hardware offload:
> 
> |tc qdisc replace dev ${INTERFACE} handle 100 parent root mqprio num_tc 4 \
> |   map 0 0 0 0 0 1 2 3 0 0 0 0 0 0 0 0 \
> |   queues 1@0 1@1 1@2 1@3 \
> |   hw 1
> 
> The mqprio Qdisc also allows to configure the `preemptible_tcs'. However,
> frame preemption is not supported yet.
> 
> Tested on Intel i225 and implemented by following data sheet section 7.5.2,
> Transmit Scheduling.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

...

> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 5f92b3c7c3d4..73502a0b4df7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -547,6 +547,15 @@
>  
>  #define IGC_MAX_SR_QUEUES		2
>  
> +#define IGC_TXARB_TXQ_PRIO_0_SHIFT	0
> +#define IGC_TXARB_TXQ_PRIO_1_SHIFT	2
> +#define IGC_TXARB_TXQ_PRIO_2_SHIFT	4
> +#define IGC_TXARB_TXQ_PRIO_3_SHIFT	6
> +#define IGC_TXARB_TXQ_PRIO_0_MASK	GENMASK(1, 0)
> +#define IGC_TXARB_TXQ_PRIO_1_MASK	GENMASK(3, 2)
> +#define IGC_TXARB_TXQ_PRIO_2_MASK	GENMASK(5, 4)
> +#define IGC_TXARB_TXQ_PRIO_3_MASK	GENMASK(7, 6)
> +
>  /* Receive Checksum Control */
>  #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable */
>  #define IGC_RXCSUM_PCSD		0x00002000   /* packet checksum disabled */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c

...

> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c

...

> @@ -106,7 +109,26 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
>  	wr32(IGC_QBVCYCLET_S, 0);
>  	wr32(IGC_QBVCYCLET, NSEC_PER_SEC);
>  
> +	/* Reset mqprio TC configuration. */
> +	netdev_reset_tc(adapter->netdev);
> +
> +	/* Restore the default Tx arbitration: Priority 0 has the highest
> +	 * priority and is assigned to queue 0 and so on and so forth.
> +	 */
> +	txarb = rd32(IGC_TXARB);
> +	txarb &= ~(IGC_TXARB_TXQ_PRIO_0_MASK |
> +		   IGC_TXARB_TXQ_PRIO_1_MASK |
> +		   IGC_TXARB_TXQ_PRIO_2_MASK |
> +		   IGC_TXARB_TXQ_PRIO_3_MASK);
> +
> +	txarb |= 0x00 << IGC_TXARB_TXQ_PRIO_0_SHIFT;
> +	txarb |= 0x01 << IGC_TXARB_TXQ_PRIO_1_SHIFT;
> +	txarb |= 0x02 << IGC_TXARB_TXQ_PRIO_2_SHIFT;
> +	txarb |= 0x03 << IGC_TXARB_TXQ_PRIO_3_SHIFT;
> +	wr32(IGC_TXARB, txarb);

Hi Kurt,

It looks like the above would be a good candidate for using FIELD_PREP,
in which case the _SHIFT #defines can likely be removed.

Also, the logic above seems to be replicated in igc_tsn_enable_offload.
Perhaps a helper is appropriate.

> +
>  	adapter->flags &= ~IGC_FLAG_TSN_QBV_ENABLED;
> +	adapter->flags &= ~IGC_FLAG_TSN_LEGACY_ENABLED;
>  
>  	return 0;
>  }
> @@ -123,6 +145,50 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>  	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
>  	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
>  
> +	if (adapter->strict_priority_enable) {
> +		u32 txarb;
> +		int err;
> +
> +		err = netdev_set_num_tc(adapter->netdev, adapter->num_tc);
> +		if (err)
> +			return err;
> +
> +		for (i = 0; i < adapter->num_tc; i++) {
> +			err = netdev_set_tc_queue(adapter->netdev, i, 1,
> +						  adapter->queue_per_tc[i]);
> +			if (err)
> +				return err;
> +		}
> +
> +		/* In case the card is configured with less than four queues. */
> +		for (; i < IGC_MAX_TX_QUEUES; i++)
> +			adapter->queue_per_tc[i] = i;
> +
> +		/* Configure queue priorities according to the user provided
> +		 * mapping.
> +		 */
> +		txarb = rd32(IGC_TXARB);
> +		txarb &= ~(IGC_TXARB_TXQ_PRIO_0_MASK |
> +			   IGC_TXARB_TXQ_PRIO_1_MASK |
> +			   IGC_TXARB_TXQ_PRIO_2_MASK |
> +			   IGC_TXARB_TXQ_PRIO_3_MASK);
> +		txarb |= adapter->queue_per_tc[3] << IGC_TXARB_TXQ_PRIO_0_SHIFT;
> +		txarb |= adapter->queue_per_tc[2] << IGC_TXARB_TXQ_PRIO_1_SHIFT;
> +		txarb |= adapter->queue_per_tc[1] << IGC_TXARB_TXQ_PRIO_2_SHIFT;
> +		txarb |= adapter->queue_per_tc[0] << IGC_TXARB_TXQ_PRIO_3_SHIFT;
> +		wr32(IGC_TXARB, txarb);
> +
> +		/* Enable legacy TSN mode which will do strict priority without
> +		 * any other TSN features.
> +		 */
> +		tqavctrl = rd32(IGC_TQAVCTRL);
> +		tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN;
> +		tqavctrl &= ~IGC_TQAVCTRL_ENHANCED_QAV;
> +		wr32(IGC_TQAVCTRL, tqavctrl);
> +
> +		return 0;
> +	}
> +
>  	for (i = 0; i < adapter->num_tx_queues; i++) {
>  		struct igc_ring *ring = adapter->tx_ring[i];
>  		u32 txqctl = 0;

...
