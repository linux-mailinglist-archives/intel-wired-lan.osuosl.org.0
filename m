Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B977CB28034
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 14:54:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7205140896;
	Fri, 15 Aug 2025 12:54:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DPtAaE8Q8bni; Fri, 15 Aug 2025 12:54:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAABF40988
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755262493;
	bh=GiiJN2sDZDXxym8KPjjHV128ZDKs/5eg3bJ0TRy8muw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S4i8937/DdmkU/yMmMDBAUhalzFbavtn6qsU4DW5ZNRwz4HGaaX63KT02kon67qmi
	 LKx+1BLneLl/aehGv5TLkUwuUCN0UZeVHrsCQMQtbPKE3TTWMVjNDr/jqXb8y8qiaq
	 AQmiQeRSpkWPqqOsUWNvRndaRXdt7/zpYSFdS47vSyumKcSpEBvBdfn7rRe4pfyvIp
	 c6gCVaY5lCDK2b4YExqEk7jrBi+lSwQi2JXe6ej275ks+DaBkYJiQr6SQgCIDMIWJz
	 c58/bKNXZS7hYuJmY+Swj6GWSOv+vNd6juc5Hhhek/t6Ixp1lyKZMWjPsiscLZ1Lwv
	 Bkntrw9axJD7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAABF40988;
	Fri, 15 Aug 2025 12:54:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9EA32196
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 12:54:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B6FD40812
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 12:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O6MbvvnszrQM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 12:54:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D2CD840846
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2CD840846
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2CD840846
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 12:54:47 +0000 (UTC)
Received: from [192.168.0.184] (ip5f5af516.dynamic.kabel-deutschland.de
 [95.90.245.22])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C7E0E61E6484C;
 Fri, 15 Aug 2025 14:54:16 +0200 (CEST)
Message-ID: <ad66d19c-be7b-4df3-8e4c-d57a08782df4@molgen.mpg.de>
Date: Fri, 15 Aug 2025 14:54:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>
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
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <87y0rlm22a.fsf@jax.kurt.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
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

Dear Kurt, dear Sebastian,


Thank you for your replies.


Am 15.08.25 um 10:17 schrieb Kurt Kanzenbach:

> On Fri Aug 15 2025, Paul Menzel wrote:

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

Should you resend, it’d be great if you mentioned that. (Sebastian 
confirmed it.)

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
> 
> As the time sync interrupt already signals that the Tx timestamp is
> available, there's no need to schedule a work item in this case. I might
> have missed something though. But my testing looked good. The warn_on
> never triggered.

Great. Maybe add that too, as, at least for me, realtime stuff is 
something I do not do, so pointers would help me.

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


Kind regards,

Paul
