Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2645075E5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Apr 2022 19:03:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FB4F41933;
	Tue, 19 Apr 2022 17:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id awlMRMM7i1N7; Tue, 19 Apr 2022 17:03:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9EC041635;
	Tue, 19 Apr 2022 17:03:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89EB71BF38B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 17:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D91660BBB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 17:03:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZRMiQWp4R1lq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Apr 2022 17:03:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8820060B9A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 17:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650387824; x=1681923824;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9qpy676qE+GQBGiNZy1vWDAhbXjYL7YBg7SD1FIiYLg=;
 b=jPJDFi10UNA5UTWPkD3v2gKiEZ3O+pYUHddOc0kAJ8V6AVOQ+HaUvFJo
 qiWr964+NT1dctnHmOCOXr139Edj9dKvsNHAudALmr7XspbRL+rQhMVCT
 gfNFUwIamXF/NqSbgWoXJmB7jFAZkp3yUJyOOxSCSc8vjuDcQrFvmP/r0
 Lixc+7vC/dKgkxZu5Sind6Td16lAahKNCd2yRjbYfScin4BFT3g8x6inE
 iA4ov5DMu7Nl01InWzPOtGCyf6nY6tx5cWCn/ovo6cCOZkcj+spU9J7/S
 G2ImdHzkORx8uYS/CLyfYRQjHptV6xxrQPzxUrSupR9fwWc3DwrQdSnsY A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263577441"
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="263577441"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 10:03:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="576190835"
Received: from magillis-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.255.229.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 10:03:43 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jeff Evanson <Jeff.Evanson@qsc.com>, Jeff Evanson
 <jeff.evanson@gmail.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
In-Reply-To: <CY4PR16MB002318405355FB6AC87CA0919BF39@CY4PR16MB0023.namprd16.prod.outlook.com>
References: <20220415210546.11294-1-jeff.evanson@qsc.com>
 <87v8v6477g.fsf@intel.com>
 <CY4PR16MB002318405355FB6AC87CA0919BF39@CY4PR16MB0023.namprd16.prod.outlook.com>
Date: Tue, 19 Apr 2022 10:03:43 -0700
Message-ID: <87v8v5t380.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 2/2] Trigger proper interrupts in
 igc_xsk_wakeup
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
Cc: "jeff.evanson@gmail.com" <jeff.evanson@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jeff,

Jeff Evanson <Jeff.Evanson@qsc.com> writes:

> Hi Vinicius. Thank you for the reply.
>
> The scenario only happens when the transmit queue interrupt is mapped
> to a different interrupt from the receive queue. In the case where
> XDP_WAKEUP_TX is set in the flags argument, the previous code would
> only trigger the interrupt for the receive queue, causing the transmit
> queue's napi_struct to never be scheduled.

This is a good explanation, adding it to the commit message for the v2
would be a good idea.

>
> In the scenario where XDP_WAKEUP_TX and XDP_WAKEUP_RX are both set in
> flags, the receive interrupt is always triggered and the transmit
> interrupt is only triggered when the transmit q_vector differs from
> the receive q_vector.

I missed that condition when I looked at the patch. Sorry about that.
Makes more sense now.

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

>
> Regards,
> Jeff Evanson
>
> -----Original Message-----
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com> 
> Sent: Monday, April 18, 2022 11:45 AM
> To: Jeff Evanson <jeff.evanson@gmail.com>; Jesse Brandeburg <jesse.brandeburg@intel.com>; Tony Nguyen <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Cc: Jeff Evanson <Jeff.Evanson@qsc.com>; jeff.evanson@gmail.com
> Subject: Re: [PATCH 2/2] Trigger proper interrupts in igc_xsk_wakeup
>
> -External-
>
> Jeff Evanson <jeff.evanson@gmail.com> writes:
>
>> in igc_xsk_wakeup, trigger the proper interrupt based on whether flags 
>> contains XDP_WAKEUP_RX and/or XDP_WAKEUP_TX
>>
>> Signed-off-by: Jeff Evanson <jeff.evanson@qsc.com>
>> ---
>>  drivers/net/ethernet/intel/igc/igc_main.c | 36 
>> +++++++++++++++++------
>>  1 file changed, 27 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c 
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index a36a18c84aeb..d706de95dc06 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -6073,7 +6073,7 @@ static void igc_trigger_rxtxq_interrupt(struct 
>> igc_adapter *adapter,  int igc_xsk_wakeup(struct net_device *dev, u32 
>> queue_id, u32 flags)  {
>>  	struct igc_adapter *adapter = netdev_priv(dev);
>> -	struct igc_q_vector *q_vector;
>> +	struct igc_q_vector *txq_vector = 0, *rxq_vector = 0;
>>  	struct igc_ring *ring;
>>  
>>  	if (test_bit(__IGC_DOWN, &adapter->state)) @@ -6082,17 +6082,35 @@ 
>> int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
>>  	if (!igc_xdp_is_enabled(adapter))
>>  		return -ENXIO;
>>  
>> -	if (queue_id >= adapter->num_rx_queues)
>> -		return -EINVAL;
>> +	if (flags & XDP_WAKEUP_RX) {
>> +		if (queue_id >= adapter->num_rx_queues)
>> +			return -EINVAL;
>>  
>> -	ring = adapter->rx_ring[queue_id];
>> +		ring = adapter->rx_ring[queue_id];
>> +		if (!ring->xsk_pool)
>> +			return -ENXIO;
>>  
>> -	if (!ring->xsk_pool)
>> -		return -ENXIO;
>> +		rxq_vector = ring->q_vector;
>> +	}
>> +
>> +	if (flags & XDP_WAKEUP_TX) {
>> +		if (queue_id >= adapter->num_tx_queues)
>> +			return -EINVAL;
>> +
>> +		ring = adapter->tx_ring[queue_id];
>> +		if (!ring->xsk_pool)
>> +			return -ENXIO;
>> +
>> +		txq_vector = ring->q_vector;
>> +	}
>> +
>> +	if (rxq_vector &&
>> +	    !napi_if_scheduled_mark_missed(&rxq_vector->napi))
>> +		igc_trigger_rxtxq_interrupt(adapter, rxq_vector);
>>  
>> -	q_vector = adapter->q_vector[queue_id];
>> -	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
>> -		igc_trigger_rxtxq_interrupt(adapter, q_vector);
>> +	if (txq_vector && txq_vector != rxq_vector &&
>> +	    !napi_if_scheduled_mark_missed(&txq_vector->napi))
>> +		igc_trigger_rxtxq_interrupt(adapter, txq_vector);
>
> Two things:
>  - My imagination was not able to produce a scenario where this commit  would solve any problems. Can you explain better the case where the  current code would cause the wrong interrupt to be generated (or miss  generating an interrupt)? (this should be in the commit message)
>  - I think that with this patch applied, there would cases (both TX and  RX flags set) that we cause two writes into the EICS register. That  could cause unnecessary wakeups.
>
>>  
>>  	return 0;
>>  }
>> --
>> 2.17.1
>>
>
> Cheers,
> -- 
> Vinicius
>

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
