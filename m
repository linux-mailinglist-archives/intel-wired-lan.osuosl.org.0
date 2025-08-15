Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0654BB28113
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 15:59:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADBEB80E3F;
	Fri, 15 Aug 2025 13:59:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rdF0gX3nfsdM; Fri, 15 Aug 2025 13:59:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A954280EBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755266384;
	bh=owh7uROtBqekotid6ZUgQbtfPgrnFxu2U41jXlRbzu8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L6SwcjpkdySErZb60uwByP/LEuX9b+gRfmWgcFeRDUMtXMVslKTo/sUAvOlQizzzF
	 7B6fvapyMpDjDAuDSieC0bFUyZxe7LL3QPRnbV2qfszTZWg1giEsu83oPOzDTkEFcu
	 T+LUEOjOauP+NtMYcIxmJV/G/vPH7acK2YNf/nJl/lk9R6ijuVIa584h4tiaHIFFDE
	 FyYimgsxi3CyxSx7qXUwCmsZ0WeWPYaHaho7b12TjumZpig5a3fpdOLYc2QIC3fnA7
	 McmceIj7pvhDLFl+WL++C6f7xRggm778MGQDsljtAA2ODyq1IdQ3VBgy+03mDEpnNt
	 YrRYL8qf4bVhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A954280EBF;
	Fri, 15 Aug 2025 13:59:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C938228
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 13:59:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22C64608C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 13:59:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zvOwiPABJElx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 13:59:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.182;
 helo=out-182.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D005A60E51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D005A60E51
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com
 [95.215.58.182])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D005A60E51
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 13:59:41 +0000 (UTC)
Message-ID: <1f42eff0-b6a5-44cb-996e-655c325591be@linux.dev>
Date: Fri, 15 Aug 2025 14:58:52 +0100
MIME-Version: 1.0
To: Kurt Kanzenbach <kurt@linutronix.de>, Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <a1e9e37e-63da-4f1c-8ac3-36e1fde2ec0a@molgen.mpg.de>
 <87y0rlm22a.fsf@jax.kurt.home>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <87y0rlm22a.fsf@jax.kurt.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1755266378;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=owh7uROtBqekotid6ZUgQbtfPgrnFxu2U41jXlRbzu8=;
 b=hfPi/nBDLh9vngYCGgcaxDVMq5jnF2q/689J94opN9seY/ibtL+b3G7VBzhp7f2iZCTbZG
 dyecbfPjUIlbO9BownA/r0Cplk+Y7xsG6/W76kiPpvfRSuuoE8a2S9/iuh8jbUuod6rx6h
 4XMEOr1I02/wuKKYSaxL1E7OMWI1u3M=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=hfPi/nBD
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: Retrieve Tx timestamp
 directly from interrupt
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

On 15/08/2025 09:17, Kurt Kanzenbach wrote:
> Hi Paul,
> 
> On Fri Aug 15 2025, Paul Menzel wrote:
>> Dear Kurt,
>>
>>
>> Thank you for your patch.
>>
>> Am 15.08.25 um 08:50 schrieb Kurt Kanzenbach:
>>> Retrieve Tx timestamp directly from interrupt handler.
>>>
>>> The current implementation uses schedule_work() which is executed by the
>>> system work queue to retrieve Tx timestamps. This increases latency and can
>>> lead to timeouts in case of heavy system load.
>>>
>>> Therefore, fetch the timestamp directly from the interrupt handler.
>>>
>>> The work queue code stays for the Intel 82576. Tested on Intel i210.
>>
>> Excuse my ignorance, I do not understand the first sentence in the last
>> line. Is it because the driver support different models? Why not change
>> it for Intel 82576 too?
> 
> Yes, the driver supports lots of different NIC(s). AFAICS Intel 82576 is
> the only one which does not use time sync interrupts. Probably it does
> not have this feature. Therefore, the 82576 needs to schedule a work
> queue item.
> 
>>
>> Do you have a reproducer for the issue, so others can test.
> 
> Yeah, I do have a reproducer:
> 
>   - Run ptp4l with 40ms tx timeout (--tx_timestamp_timeout)
>   - Run periodic RT tasks (e.g. with SCHED_FIFO 1) with run time of
>     50-100ms per CPU core
> 
> This leads to sporadic error messages from ptp4l such as "increasing
> tx_timestamp_timeout or increasing kworker priority may correct this
> issue, but a driver bug likely causes it"
> 
> However, increasing the kworker priority is not an option, simply
> because this kworker is doing non-related PTP work items as well.

Well, in this case, as it pointed out for other drivers, the best
practice would be to use a dedicated PTP worker which does only PTP
related tasks and can have higher priority.

The inline retrieving of timestamp, of course, the best option, but for
82576 could you please consider using @do_aux_work in ptp_caps and do
proper ptp_schedule_worker()?

> 
> As the time sync interrupt already signals that the Tx timestamp is
> available, there's no need to schedule a work item in this case. I might
> have missed something though. But my testing looked good. The warn_on
> never triggered.
> 
>>
>>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>>> ---
>>>    drivers/net/ethernet/intel/igb/igb.h      |  1 +
>>>    drivers/net/ethernet/intel/igb/igb_main.c |  2 +-
>>>    drivers/net/ethernet/intel/igb/igb_ptp.c  | 22 ++++++++++++++++++++++
>>>    3 files changed, 24 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
>>> index c3f4f7cd264e9b2ff70f03b580f95b15b528028c..102ca32e8979fa3203fc2ea36eac456f1943cfca 100644
>>> --- a/drivers/net/ethernet/intel/igb/igb.h
>>> +++ b/drivers/net/ethernet/intel/igb/igb.h
>>> @@ -776,6 +776,7 @@ int igb_ptp_hwtstamp_get(struct net_device *netdev,
>>>    int igb_ptp_hwtstamp_set(struct net_device *netdev,
>>>    			 struct kernel_hwtstamp_config *config,
>>>    			 struct netlink_ext_ack *extack);
>>> +void igb_ptp_tx_tstamp_event(struct igb_adapter *adapter);
>>>    void igb_set_flag_queue_pairs(struct igb_adapter *, const u32);
>>>    unsigned int igb_get_max_rss_queues(struct igb_adapter *);
>>>    #ifdef CONFIG_IGB_HWMON
>>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>>> index a9a7a94ae61e93aa737b0103e00580e73601d62b..8ab6e52cb839bbb698007a74462798faaaab0071 100644
>>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>>> @@ -7080,7 +7080,7 @@ static void igb_tsync_interrupt(struct igb_adapter *adapter)
>>>    
>>>    	if (tsicr & E1000_TSICR_TXTS) {
>>>    		/* retrieve hardware timestamp */
>>> -		schedule_work(&adapter->ptp_tx_work);
>>> +		igb_ptp_tx_tstamp_event(adapter);
>>>    	}
>>>    
>>>    	if (tsicr & TSINTR_TT0)
>>> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
>>> index a7876882aeaf2b2a7fb9ec6ff5c83d8a1b06008a..20ecafecc60557353f8cc5ab505030246687c8e4 100644
>>> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
>>> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
>>> @@ -796,6 +796,28 @@ static int igb_ptp_verify_pin(struct ptp_clock_info *ptp, unsigned int pin,
>>>    	return 0;
>>>    }
>>>    
>>> +/**
>>> + * igb_ptp_tx_tstamp_event
>>> + * @adapter: pointer to igb adapter
>>> + *
>>> + * This function checks the TSYNCTXCTL valid bit and stores the Tx hardware
>>> + * timestamp at the current skb.
>>> + **/
>>> +void igb_ptp_tx_tstamp_event(struct igb_adapter *adapter)
>>> +{
>>> +	struct e1000_hw *hw = &adapter->hw;
>>> +	u32 tsynctxctl;
>>> +
>>> +	if (!adapter->ptp_tx_skb)
>>> +		return;
>>> +
>>> +	tsynctxctl = rd32(E1000_TSYNCTXCTL);
>>> +	if (WARN_ON_ONCE(!(tsynctxctl & E1000_TSYNCTXCTL_VALID)))
>>> +		return;
>>> +
>>> +	igb_ptp_tx_hwtstamp(adapter);
>>> +}
>>> +
>>>    /**
>>>     * igb_ptp_tx_work
>>>     * @work: pointer to work struct
>>
>> The diff looks fine.
>>
>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
