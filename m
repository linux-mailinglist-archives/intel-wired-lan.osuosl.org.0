Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FA56B2FA4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 22:33:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4F6E81A50;
	Thu,  9 Mar 2023 21:33:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4F6E81A50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678397595;
	bh=6aqWAqbq7xW8+o1lCijvGSxilpljrxc8i4YJ0Yoi6MU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gwvwW3KHpBE9wHp4bZKG+V8DUIPXP3250q0aXmJUGVBWE/drIoth069T6lM1SpaTK
	 8ZeuGsFgLQqKLBb8KBsT+NIVlbLngkS7PRnChIyQcOdadlXksQTEG92+8EYotcRv/0
	 wYnMw0y4XYOEQm9SKro7CUOybTdm9Bx15CLqGS285jttz96qHP+Yk2RDk5uy0hOORB
	 MdZe+wL39wHr3Lfx/DLG3OubI60Fd1+8VKnEqov8bUx4RXJH2RX43PmFd9s4LD3jCM
	 Z9sGcHNlLRp+Q2xl8nEFrraQ9NxPeFcWGBhulqhZkyegBIMkUMRL0+d0SzsFjziVJU
	 o2cBcIc9AnRdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mM8pPUclOog2; Thu,  9 Mar 2023 21:33:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E7CF81359;
	Thu,  9 Mar 2023 21:33:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E7CF81359
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C4E081BF366
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 21:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA9F4416DB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 21:33:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA9F4416DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id swqLye_fkeGz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 21:33:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1429141A34
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1429141A34
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 21:33:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="324924607"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="324924607"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 13:33:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="1006887077"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="1006887077"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 13:33:06 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20230228173357.ey5ztux2w5syvzrx@skbuf>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-2-vinicius.gomes@intel.com>
 <20230228054534.1093483-2-vinicius.gomes@intel.com>
 <20230228173357.ey5ztux2w5syvzrx@skbuf>
Date: Thu, 09 Mar 2023 13:33:06 -0800
Message-ID: <87o7p1r4od.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678397588; x=1709933588;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vqOo3lk5TZY72ozS9AZdvkSrVO2qCJ4NFvgDIXOo+jM=;
 b=SjuvNn26KDjC0JEHg90m9ikcPV6lmpjiaeuyymfa8yWO1TgWjT65DE80
 7XTpc+yfXkPrjlmdx27wX3/idWyCS0R6Mj3+4ixpowRN6wmzKPMQdj2Lg
 OQjb2AI3N08lvUWRW4XN2NKMSA0Zx134Evs8NIHehQ9XxhT5K4RQu6JQG
 RFahctslOM4g+M4bo2BNl6Dru/EqNOyhvlytKL4QrpHAZrUbTf8LJl8Kz
 G+rMcsYBYSMUm/nwh1OSCkkG+EgbQzQMphdUsHEkjl+f8vpNipPU5uUH9
 QlLeY64Qj1QhSttWKy0272a6jjcxYjJy21n8CgpeUNGYirqlxrLvV5Z3j
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SjuvNn26
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 1/3] igc: Fix race
 condition in PTP tx code
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
 Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vladimir,

Sorry for the delay, crazy times around here.

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> Hi Vinicius,
>
> Some small comments, feel free to ignore them.
>
> On Mon, Feb 27, 2023 at 09:45:32PM -0800, Vinicius Costa Gomes wrote:
>> From: Andre Guedes <andre.guedes@intel.com>
>> 
>> Currently, the igc driver supports timestamping only one tx packet at a
>> time. During the transmission flow, the skb that requires hardware
>> timestamping is saved in adapter->ptp_tx_skb. Once hardware has the
>> timestamp, an interrupt is delivered, and adapter->ptp_tx_work is
>> scheduled. In igc_ptp_tx_work(), we read the timestamp register, update
>> adapter->ptp_tx_skb, and notify the network stack.
>> 
>> While the thread executing the transmission flow (the user process
>> running in kernel mode) and the thread executing ptp_tx_work don't
>> access adapter->ptp_tx_skb concurrently, there are two other places
>> where adapter->ptp_tx_skb is accessed: igc_ptp_tx_hang() and
>> igc_ptp_suspend().
>> 
>> igc_ptp_tx_hang() is executed by the adapter->watchdog_task worker
>> thread which runs periodically so it is possible we have two threads
>> accessing ptp_tx_skb at the same time. Consider the following scenario:
>> right after __IGC_PTP_TX_IN_PROGRESS is set in igc_xmit_frame_ring(),
>> igc_ptp_tx_hang() is executed. Since adapter->ptp_tx_start hasn't been
>> written yet, this is considered a timeout and adapter->ptp_tx_skb is
>> cleaned up.
>> 
>> This patch fixes the issue described above by adding the ptp_tx_lock to
>> protect access to ptp_tx_skb and ptp_tx_start fields from igc_adapter.
>> Since igc_xmit_frame_ring() called in atomic context by the networking
>> stack, ptp_tx_lock is defined as a spinlock.
>> 
>> With the introduction of the ptp_tx_lock, the __IGC_PTP_TX_IN_PROGRESS
>> flag doesn't provide much of a use anymore so this patch gets rid of it.
>> 
>> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> ---
>
> Shouldn't this have a Fixes: tag and be sent to the 'net' queue, since
> it fixes a bug which can be seen in the real world?
>

As I couldn't reproduce the race condition (the "false" timeout) at all
on my systems, at first I chose not to propose this for 'net'.

But on the other hand, yeah, I don't think this patch will have any side
effects and will only protect against this (possible) issue. So yeah,
will add a 'Fixes:' tag and propose it there.

>>  drivers/net/ethernet/intel/igc/igc.h      |  5 +-
>>  drivers/net/ethernet/intel/igc/igc_main.c |  8 +++-
>>  drivers/net/ethernet/intel/igc/igc_ptp.c  | 57 +++++++++++++++--------
>>  3 files changed, 47 insertions(+), 23 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
>> index df3e26c0cf01..e804a566bdd3 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -227,6 +227,10 @@ struct igc_adapter {
>>  	struct ptp_clock *ptp_clock;
>>  	struct ptp_clock_info ptp_caps;
>>  	struct work_struct ptp_tx_work;
>> +	/* Access to ptp_tx_skb and ptp_tx_start is protected by the
>> +	 * ptp_tx_lock.
>> +	 */
>> +	spinlock_t ptp_tx_lock;
>>  	struct sk_buff *ptp_tx_skb;
>>  	struct hwtstamp_config tstamp_config;
>>  	unsigned long ptp_tx_start;
>> @@ -401,7 +405,6 @@ enum igc_state_t {
>>  	__IGC_TESTING,
>>  	__IGC_RESETTING,
>>  	__IGC_DOWN,
>> -	__IGC_PTP_TX_IN_PROGRESS,
>>  };
>>  
>>  enum igc_tx_flags {
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 2928a6c73692..84c9c6e09054 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -1565,14 +1565,16 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>>  
>>  	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
>>  		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
>> +		unsigned long flags;
>> +
>> +		spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
>>  
>>  		/* FIXME: add support for retrieving timestamps from
>>  		 * the other timer registers before skipping the
>>  		 * timestamping request.
>>  		 */
>>  		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
>> -		    !test_and_set_bit_lock(__IGC_PTP_TX_IN_PROGRESS,
>> -					   &adapter->state)) {
>> +		    !adapter->ptp_tx_skb) {
>>  			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
>>  			tx_flags |= IGC_TX_FLAGS_TSTAMP;
>>  
>> @@ -1581,6 +1583,8 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>>  		} else {
>>  			adapter->tx_hwtstamp_skipped++;
>
> unrelated: when adapter->tstamp_config.tx_type != HWTSTAMP_TX_ON but
> skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP was set, it simply means
> that the timestamp is "not for you". For example igc is a DSA master for
> a PTP-capable switch. Should adapter->tx_hwtstamp_skipped increment in
> that case? I mean, timestamps are skipped, but is it worth bumping a
> user-visible counter for what is essentially the normal thing to do?
>

Good point, I never considered this case.

Incrementing the counter seems wrong, will separate the conditions for
the "not for me" and for the "this is for me and I am busy" cases. 

>>  		}
>> +
>> +		spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>>  	}
>>  
>>  	if (skb_vlan_tag_present(skb)) {
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
>> index 4e10ced736db..9247395911c9 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
>> @@ -603,14 +603,15 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
>>  	return 0;
>>  }
>>  
>> +/* Requires adapter->ptp_tx_lock held by caller. */
>>  static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
>>  {
>>  	struct igc_hw *hw = &adapter->hw;
>>  
>>  	dev_kfree_skb_any(adapter->ptp_tx_skb);
>>  	adapter->ptp_tx_skb = NULL;
>> +	adapter->ptp_tx_start = 0;
>
> what's the reason for setting this to 0? (here, there and everywhere)
>

Not really needed, something I missed from the early version of the
patch. Will fix.

>>  	adapter->tx_hwtstamp_timeouts++;
>> -	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
>>  	/* Clear the tx valid bit in TSYNCTXCTL register to enable interrupt. */
>>  	rd32(IGC_TXSTMPH);
>>  	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");
>> @@ -618,20 +619,20 @@ static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
>>  
>>  void igc_ptp_tx_hang(struct igc_adapter *adapter)
>>  {
>> -	bool timeout = time_is_before_jiffies(adapter->ptp_tx_start +
>> -					      IGC_PTP_TX_TIMEOUT);
>> -
>> -	if (!test_bit(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))
>> -		return;
>> -
>> -	/* If we haven't received a timestamp within the timeout, it is
>> -	 * reasonable to assume that it will never occur, so we can unlock the
>> -	 * timestamp bit when this occurs.
>> -	 */
>> -	if (timeout) {
>> -		cancel_work_sync(&adapter->ptp_tx_work);
>> -		igc_ptp_tx_timeout(adapter);
>> -	}
>> +	unsigned long flags;
>> +
>> +	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
>> +
>> +	if (!adapter->ptp_tx_skb)
>> +		goto unlock;
>> +
>> +	if (time_is_after_jiffies(adapter->ptp_tx_start + IGC_PTP_TX_TIMEOUT))
>> +		goto unlock;
>> +
>> +	igc_ptp_tx_timeout(adapter);
>> +
>> +unlock:
>> +	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>>  }
>>  
>>  /**
>> @@ -641,6 +642,8 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
>>   * If we were asked to do hardware stamping and such a time stamp is
>>   * available, then it must have been for this skb here because we only
>>   * allow only one such packet into the queue.
>> + *
>> + * Context: Expects adapter->ptp_tx_lock to be held by caller.
>>   */
>>  static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
>>  {
>> @@ -682,7 +685,7 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
>>  	 * while we're notifying the stack.
>>  	 */
>
> This comment just became obsolete:
>
> 	/* Clear the lock early before calling skb_tstamp_tx so that
> 	 * applications are not woken up before the lock bit is clear. We use
> 	 * a copy of the skb pointer to ensure other threads can't change it
> 	 * while we're notifying the stack.
> 	 */
>
> it gets removed in one of the later patches.
>
> I suppose this doesn't make a real difference unless this change gets
> backported as a fix to stable kernels and the others don't.
>

Will remove the comment in this patch. Good catch.

>>  	adapter->ptp_tx_skb = NULL;
>> -	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
>> +	adapter->ptp_tx_start = 0;
>>  
>>  	/* Notify the stack and free the skb after we've unlocked */
>>  	skb_tstamp_tx(skb, &shhwtstamps);
>> @@ -701,16 +704,22 @@ static void igc_ptp_tx_work(struct work_struct *work)
>>  	struct igc_adapter *adapter = container_of(work, struct igc_adapter,
>>  						   ptp_tx_work);
>>  	struct igc_hw *hw = &adapter->hw;
>> +	unsigned long flags;
>>  	u32 tsynctxctl;
>>  
>> -	if (!test_bit(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))
>> -		return;
>> +	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
>> +
>> +	if (!adapter->ptp_tx_skb)
>> +		goto unlock;
>>  
>>  	tsynctxctl = rd32(IGC_TSYNCTXCTL);
>>  	if (WARN_ON_ONCE(!(tsynctxctl & IGC_TSYNCTXCTL_TXTT_0)))
>> -		return;
>> +		goto unlock;
>>  
>>  	igc_ptp_tx_hwtstamp(adapter);
>> +
>> +unlock:
>> +	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>>  }
>>  
>>  /**
>> @@ -960,6 +969,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
>>  	}
>>  
>>  	spin_lock_init(&adapter->tmreg_lock);
>> +	spin_lock_init(&adapter->ptp_tx_lock);
>>  	INIT_WORK(&adapter->ptp_tx_work, igc_ptp_tx_work);
>>  
>>  	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
>> @@ -1017,13 +1027,20 @@ static void igc_ptm_stop(struct igc_adapter *adapter)
>>   */
>>  void igc_ptp_suspend(struct igc_adapter *adapter)
>>  {
>> +	unsigned long flags;
>> +
>>  	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
>>  		return;
>>  
>>  	cancel_work_sync(&adapter->ptp_tx_work);
>> +
>> +	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
>> +
>>  	dev_kfree_skb_any(adapter->ptp_tx_skb);
>>  	adapter->ptp_tx_skb = NULL;
>> -	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
>> +	adapter->ptp_tx_start = 0;
>> +
>> +	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>>  
>>  	if (pci_device_is_present(adapter->pdev)) {
>>  		igc_ptp_time_save(adapter);
>> -- 
>> 2.39.2
>>

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
