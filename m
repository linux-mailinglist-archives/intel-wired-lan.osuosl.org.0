Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCBC6B3026
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 23:01:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D737382260;
	Thu,  9 Mar 2023 22:01:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D737382260
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678399261;
	bh=n4BI+RhcjdVVVO3SK9bLdxNCFyI3fhFZwaX5Be/JcPs=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cHqD6O5Jks5nym7MRt/exN8TbvRTdhw5R7iToNGuksr6sDGcZYkpmslb+hfohTwNb
	 V7rHj5cGiC/PJbx1XX9ozPH5Vmz+41MrX+ze6Fm4SwZRIdT41zlrIjRN7wa/jCkjhk
	 Sm3p1oVGT8HYqilPyR4u55FhUat9SudTyjJ/gfmnwuBmoViNKzjsMCz0BoZY/5CahY
	 /sp/gh+ouTxvnfyj7Ko6uSckMqYn3onDZjFs+RkwN9rfvZ2PlSNydxiMNENJmO9vfp
	 Ps0qivSyyRbL1hWprRdsFdYCPOXx5gjHHnsh7uE3R2V7KguxGYb1BvmlCG40px0VSG
	 fSrDaRh16lAVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nk5d6hGCQ3BF; Thu,  9 Mar 2023 22:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B0568145C;
	Thu,  9 Mar 2023 22:01:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B0568145C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40F861BF366
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 22:00:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2690F405A8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 22:00:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2690F405A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jOORvDEsBCfJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 22:00:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EDB940278
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6EDB940278
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 22:00:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="335279221"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="335279221"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 13:58:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="627559628"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="627559628"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 13:58:49 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20230228181626.cssbsgdyhphlldbp@skbuf>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-4-vinicius.gomes@intel.com>
 <20230228054534.1093483-4-vinicius.gomes@intel.com>
 <20230228181626.cssbsgdyhphlldbp@skbuf>
Date: Thu, 09 Mar 2023 13:58:49 -0800
Message-ID: <87cz5hr3hi.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678399252; x=1709935252;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0px1OZEhsiSaCreUX5YWgbplN9JVJwnIsUVi7UlMQ04=;
 b=aREpNZs06X6e166gHwHXNsByyJ2JQzg0lU3lFVWx5diGzqpn7GRwBrNT
 2t3rnO365QrR03fOC1jCfmmCOraL0BHOmbyP0LlfxGgCnIyKi2j7PAkI9
 W0dLwpFP0+zpIHPO1+0+kRtJk3+m/vWQIzHZhpx+RGZTD2hgyv1a8tSKz
 Xqo8jd+8uCkdU2BdwjCGeteaTOzw/Qk/qOic6zQGR+zx68qvRojj8UUEm
 mgIyyVjHP3/CPg6k4vprnmc2v+uY9KsTuP5levemKC6IMG5H6/AfR+ea/
 WE0+Zbkyckq2Mn5vYLibfb4UNalIyRXhQKvseu1nGWUk4Q1V6uH9gK9vB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aREpNZs0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 3/3] igc: Use
 ptp->aux_worker to retrieve TX timestamps
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
Cc: kurt@linutronix.de, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Mon, Feb 27, 2023 at 09:45:34PM -0800, Vinicius Costa Gomes wrote:
>> ptp->aux_worker is a kthread and allows the user to set it's priority,
>> which is useful for workloads that time synchronization is required.
>> 
>> As an optimization, when the interrupt is handled try to retrieve the
>> timestamps "inline", if they are not, schedule the workload. This
>> should reduce the delay before the TX timestamp is available to
>> userspace.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> ---
>>  drivers/net/ethernet/intel/igc/igc.h      |  2 +-
>>  drivers/net/ethernet/intel/igc/igc_main.c |  7 +++++-
>>  drivers/net/ethernet/intel/igc/igc_ptp.c  | 29 ++++++++++++++++-------
>>  3 files changed, 28 insertions(+), 10 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
>> index f0617838a16a..ce7754cb7e6f 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -237,7 +237,6 @@ struct igc_adapter {
>>  
>>  	struct ptp_clock *ptp_clock;
>>  	struct ptp_clock_info ptp_caps;
>> -	struct work_struct ptp_tx_work;
>>  	/* Access to ptp_tx_skb and ptp_tx_start is protected by the
>>  	 * ptp_tx_lock.
>>  	 */
>> @@ -651,6 +650,7 @@ int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
>>  int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
>>  void igc_ptp_tx_hang(struct igc_adapter *adapter);
>>  void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts);
>> +long igc_ptp_tx_work(struct ptp_clock_info *ptp);
>>  
>>  #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
>>  
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 4861ad0689ed..a7775d618867 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -5226,8 +5226,13 @@ static void igc_tsync_interrupt(struct igc_adapter *adapter)
>>  	}
>>  
>>  	if (tsicr & IGC_TSICR_TXTS) {
>> +		long delay;
>>  		/* retrieve hardware timestamp */
>> -		schedule_work(&adapter->ptp_tx_work);
>> +		delay = igc_ptp_tx_work(&adapter->ptp_caps);
>> +		if (delay >= 0) {
>> +			/* The timestamp is not ready, schedule to check later */
>> +			ptp_schedule_worker(adapter->ptp_clock, delay);
>> +		}
>>  		ack |= IGC_TSICR_TXTS;
>>  	}
>>  
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
>> index 0cb932b52a7b..34237464f26d 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
>> @@ -713,24 +713,37 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter, u32 mask)
>>   * igc_ptp_tx_work
>>   * @work: pointer to work struct
>>   *
>> - * This work function polls the TSYNCTXCTL valid bit to determine when a
>> - * timestamp has been taken for the current stored skb.
>> + * This work function polls the TSYNCTXCTL valid bit to determine when
>> + * a timestamp has been taken for the current stored skb. Return a
>> + * delay in case there's no timestamp ready.
>>   */
>> -static void igc_ptp_tx_work(struct work_struct *work)
>> +long igc_ptp_tx_work(struct ptp_clock_info *ptp)
>>  {
>> -	struct igc_adapter *adapter = container_of(work, struct igc_adapter,
>> -						   ptp_tx_work);
>> +	struct igc_adapter *adapter = container_of(ptp, struct igc_adapter,
>> +						   ptp_caps);
>>  	struct igc_hw *hw = &adapter->hw;
>>  	unsigned long flags;
>>  	u32 tsynctxctl;
>> +	long delay = -1;
>
> idk what the coding style is in the igc driver, but this line is longer
> than the previous one, and with network drivers, one usually prefers the
> "reverse Christmas tree".
>

Ugh. My fault. Will fix.

>>  
>>  	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
>>  
>>  	tsynctxctl = rd32(IGC_TSYNCTXCTL);
>> +	tsynctxctl &= IGC_TSYNCTXCTL_TXTT_ANY;
>> +	if (!tsynctxctl) {
>> +		/* We got the interrupt but the timestamp is not ready
>> +		 * still, schedule to check later.
>> +		 */
>
> this comment raises many hairs reading it, it sure makes it sound like the
> hardware is buggy for raising an interrupt before the data is available.
>

Another good point. I will check how many times this condition happens
and see if the hardware folks have any suggestion about what could be
done. I agree that having this re-schedule indeed looks like buggy
hardware.

> I had this same question a while ago, could you borrow some of the wording
> you used back then to explain in this comment, here, how it is possible to
> get IGC_TSICR_TXTS ("Transmit Timestamp") set in the Time Sync Interrupt
> Causes register, and for there not to be any TX timestamps available?
> https://lore.kernel.org/netdev/20220815222639.346wachaaq5zjwue@skbuf/
>

Will improve the comments, if this check still needs to stay.

>> +		delay = usecs_to_jiffies(1);
>
> it will surely take more than 1 us anyway to schedule, and so, setting a
> timer for the kthread seems slightly pointless? The ptp_schedule_worker()/
> __kthread_queue_delayed_work() API accepts 0 for delay, meaning "immediately".
>

The '1' is more to mean "do something else" and then check again. From
looking at code, '0' could mean that it could run just before this
kthread returns to the scheduler. But let's see if the hardware folks
have better suggestions (and if this is indeed necessary).

>> +		goto unlock;
>> +	}
>>  
>> -	igc_ptp_tx_hwtstamp(adapter, tsynctxctl & IGC_TSYNCTXCTL_TXTT_ANY);
>> +	igc_ptp_tx_hwtstamp(adapter, tsynctxctl);
>>  
>> +unlock:
>>  	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>> +
>> +	return delay;
>
> On the same note: from the kthread you can also busy poll for a while;
> for TX timestamps (which should be delivered rather quickly) I guess
> this is more productive than rescheduling again (with such a short
> interval), since it makes the slot available quicker for TX. Though,
> I have to say, not quite clear how rescheduling ends up being needed in
> the first place....
>

Again, let's see what my experiments and the HW folks say about this.
Perhaps this is just me being paranoid.

>>  }
>>  
>>  /**
>> @@ -993,6 +1006,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
>>  		adapter->ptp_caps.n_per_out = IGC_N_PEROUT;
>>  		adapter->ptp_caps.n_pins = IGC_N_SDP;
>>  		adapter->ptp_caps.verify = igc_ptp_verify_pin;
>> +		adapter->ptp_caps.do_aux_work = igc_ptp_tx_work;
>>  
>>  		if (!igc_is_crosststamp_supported(adapter))
>>  			break;
>> @@ -1006,7 +1020,6 @@ void igc_ptp_init(struct igc_adapter *adapter)
>>  
>>  	spin_lock_init(&adapter->tmreg_lock);
>>  	spin_lock_init(&adapter->ptp_tx_lock);
>> -	INIT_WORK(&adapter->ptp_tx_work, igc_ptp_tx_work);
>>  
>>  	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
>>  	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
>> @@ -1081,7 +1094,7 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
>>  	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
>>  		return;
>>  
>> -	cancel_work_sync(&adapter->ptp_tx_work);
>> +	ptp_cancel_worker_sync(adapter->ptp_clock);
>>  
>>  	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
>>  
>> -- 
>> 2.39.2
>>


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
