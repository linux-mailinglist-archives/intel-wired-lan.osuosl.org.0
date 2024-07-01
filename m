Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8449C91DF9E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 14:43:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBADE60A3A;
	Mon,  1 Jul 2024 12:43:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MVsxsrbhmwMt; Mon,  1 Jul 2024 12:43:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B72E60A48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719837827;
	bh=tQYRp/jiNUwf3+VaExLE8gWDrQg16V5VRVmjiRUFBec=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HVc4DA3wy7CvU/EQCZi5oxJBXOJN+MAX9JV8bHODFK2nIqsedQgUW9Fu/3uWHOScd
	 0ml5917So1fEti5WWSujxgVdtjSJTEWSmWVoae9R7ir4RY3GLMo46O1r7pM8GvqdnX
	 xkcVUGtWxQnDbEz8MeKOCu6KeMonGDgccoZ6cJshRUs+l5uHt9aFrzAhB0cjk+bQb1
	 75TWBNQyqWI2lFlVhvb60QOJRwAqW+0w+4Q0ACCx33yAvb1/neh1zgeVpGCfLMA5td
	 nVZnGsdyUffENUYmsHkMaQGzSTSny0y+woDibGovetMEpb6i5Ulnfr7Lj2J62bEGEl
	 Wy7ymSOtg8sTA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B72E60A48;
	Mon,  1 Jul 2024 12:43:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 746C81BF337
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 12:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 611D9607C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 12:43:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zjYzBpr_fMHv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 12:43:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B61F36069B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B61F36069B
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B61F36069B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 12:43:40 +0000 (UTC)
Received: from [141.14.13.50] (g305.RadioFreeInternet.molgen.mpg.de
 [141.14.13.50])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5375661E5FE01;
 Mon,  1 Jul 2024 14:42:43 +0200 (CEST)
Message-ID: <e981261e-77be-407b-b601-f7214a4f57dd@molgen.mpg.de>
Date: Mon, 1 Jul 2024 14:42:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
References: <20240701100058.3301229-1-faizal.abdul.rahim@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240701100058.3301229-1-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Fix packet still
 tx after gate close by reducing i226 MAC retry buffer
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Faizal,


Thank you for your patch.

Am 01.07.24 um 12:00 schrieb Faizal Rahim:
> AVNU testing uncovered that even when the taprio gate is closed,
> some packets still transmit.

What is AVNU? *some* would fit on the line above.

> A known i225/6 hardware errata states traffic might overflow the planned

Do you have an idea for that errata? Please document it. (I see you 
added it at the end. Maybe use [1] notation for referencing it.)

> QBV window. This happens because MAC maintains an internal buffer,
> primarily for supporting half duplex retries. Therefore, when
> the gate closes, residual MAC data in the buffer may still transmit.
> 
> To mitigate this for i226, reduce the MAC's internal buffer from
> 192 bytes to 88 bytes by modifying the RETX_CTL register value.

… to the recommended 88 bytes …

> This follows guidelines from:
> 
> a) Ethernet Controller I225/I22 Spec Update Rev 2.1 Errata Item 9:
>     TSN: Packet Transmission Might Cross Qbv Window
> b) I225/6 SW User Manual Rev 1.2.4: Section 8.11.5 Retry Buffer Control
> 
> Test Steps:
> 1. Send taprio cmd to board A
> tc qdisc replace dev enp1s0 parent root handle 100 taprio \
> num_tc 4 \
> map 3 2 1 0 3 3 3 3 3 3 3 3 3 3 3 3 \
> queues 1@0 1@1 1@2 1@3 \
> base-time 0 \
> sched-entry S 0x07 500000 \
> sched-entry S 0x0f 500000 \
> flags 0x2 \
> txtime-delay 0
> 
> - Note that for TC3, gate opens for 500us and close for another 500us
> 
> 3. Take tcpdump log on Board B
> 
> 4. Send udp packets via UDP tai app from Board A to Board B
> 
> 5. Analyze tcpdump log via wireshark log on Board B
> - Observed that the total time from the first to the last packet
> received during one cycle for TC3 does not exceed 500us

Indent the list item by four spaces? (Also above?)

> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

As you Cc’ed stable@vger.kernel.org, add a Fixes: tag?

> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  6 ++++
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 34 ++++++++++++++++++++
>   2 files changed, 40 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 5f92b3c7c3d4..511384f3ec5c 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -404,6 +404,12 @@
>   #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet size */
>   #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
>   
> +/* Retry Buffer Control */
> +#define IGC_RETX_CTL			0x041C
> +#define IGC_RETX_CTL_WATERMARK_MASK	0xF
> +#define IGC_RETX_CTL_QBVFULLTH_SHIFT	8 /* QBV Retry Buffer Full Threshold */
> +#define IGC_RETX_CTL_QBVFULLEN	0x1000 /* Enable QBV Retry Buffer Full Threshold */
> +
>   /* Transmit Scheduling Latency */
>   /* Latency between transmission scheduling (LaunchTime) and the time
>    * the packet is transmitted to the network in nanosecond.
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 22cefb1eeedf..c97d908cecc5 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -78,6 +78,15 @@ void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
>   	wr32(IGC_GTXOFFSET, txoffset);
>   }
>   
> +static void igc_tsn_restore_retx_default(struct igc_adapter *adapter)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 retxctl;
> +
> +	retxctl = rd32(IGC_RETX_CTL) & IGC_RETX_CTL_WATERMARK_MASK;
> +	wr32(IGC_RETX_CTL, retxctl);
> +}
> +
>   /* Returns the TSN specific registers to their default values after
>    * the adapter is reset.
>    */
> @@ -91,6 +100,9 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
>   	wr32(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);
>   	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_DEFAULT);
>   
> +	if (igc_is_device_id_i226(hw))
> +		igc_tsn_restore_retx_default(adapter);
> +
>   	tqavctrl = rd32(IGC_TQAVCTRL);
>   	tqavctrl &= ~(IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
>   		      IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_FUTSCDDIS);
> @@ -111,6 +123,25 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
>   	return 0;
>   }
>   
> +/* To partially fix i226 HW errata, reduce MAC internal buffering from 192 Bytes
> + * to 88 Bytes by setting RETX_CTL register using the recommendation from:
> + * a) Ethernet Controller I225/I22 Specification Update Rev 2.1
> + *    Item 9: TSN: Packet Transmission Might Cross the Qbv Window
> + * b) I225/6 SW User Manual Rev 1.2.4: Section 8.11.5 Retry Buffer Control
> + */
> +static void igc_tsn_set_retx_qbvfullth(struct igc_adapter *adapter)

It’d put threshold in the name.

> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 retxctl, watermark;
> +
> +	retxctl = rd32(IGC_RETX_CTL);
> +	watermark = retxctl & IGC_RETX_CTL_WATERMARK_MASK;
> +	/* Set QBVFULLTH value using watermark and set QBVFULLEN */
> +	retxctl |= (watermark << IGC_RETX_CTL_QBVFULLTH_SHIFT) |
> +		   IGC_RETX_CTL_QBVFULLEN;
> +	wr32(IGC_RETX_CTL, retxctl);
> +}
> +
>   static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>   {
>   	struct igc_hw *hw = &adapter->hw;
> @@ -123,6 +154,9 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>   	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
>   	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
>   
> +	if (igc_is_device_id_i226(hw))
> +		igc_tsn_set_retx_qbvfullth(adapter);
> +
>   	for (i = 0; i < adapter->num_tx_queues; i++) {
>   		struct igc_ring *ring = adapter->tx_ring[i];
>   		u32 txqctl = 0;


Kind regards,

Paul
