Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8AFB3407F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Aug 2025 15:19:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A68DB84B9E;
	Mon, 25 Aug 2025 13:19:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bRCOZXIKA9oR; Mon, 25 Aug 2025 13:19:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1766584B9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756127954;
	bh=nvJJFTv2OrJI9Hc15K9BCwIafSJ45UQvTt/UjQZBBjo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VFwt6GRL4vLc3CgiUMnu+lZeXNh8AD9pKB1/rI6IKqXkpX2AW61/wJxNuLTGtpoF4
	 9zfFjO6SWvIGTymcEt9zYvmETXpwMmF25/FoSrvY2PogetxN79p4p0kUfO9+gycH9l
	 Qh4bRVh/5wi0AlTUh9a0cQ14tUkfFxXKPjKxIO7zjMQ4ca6kDgWIStvDZU0URgot3b
	 9uH25xPx3cUWFLVhRKI6WL9ys2cx5BhITyos9uhYwZLrFdAcog8fDEcS5NXlj96p3t
	 UtpjgbIY1OZcUr5qSfyaN2rZCSDy8feqcWlx99TlRzDnd8VM6xitGGle7tGsFJVzcd
	 HvjIN1YAjtTFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1766584B9B;
	Mon, 25 Aug 2025 13:19:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C6A62CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 13:19:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A0A0984B88
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 13:19:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJpsk0DcnkcX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Aug 2025 13:19:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.180;
 helo=out-180.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A7DBB84B7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7DBB84B7C
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com
 [95.215.58.180])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A7DBB84B7C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 13:19:10 +0000 (UTC)
Message-ID: <1b3f5020-fa2e-496c-83aa-1e1606bc5ea7@linux.dev>
Date: Mon, 25 Aug 2025 14:18:50 +0100
MIME-Version: 1.0
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <27e8fb9f-0e9c-4a0b-b961-64ff9d2f5228@linux.dev>
 <87ikie7a88.fsf@jax.kurt.home>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <87ikie7a88.fsf@jax.kurt.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1756127943;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nvJJFTv2OrJI9Hc15K9BCwIafSJ45UQvTt/UjQZBBjo=;
 b=C95Blw4BW9wdfdwaSAl6pRp1IqafU2os0ksJgFT+SpQLe/Fg2hJ2jIk/J9lQD4HCXCavcF
 QD801xy+m+vShK00Qla8i9vc0jZJeldFPXtvALSg8qSaI6DHYn6MzaS/YzA3+6D4Z4I8SS
 JrPsn2KkAofyypgIa2vVMKaRP7QqJ4E=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=C95Blw4B
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 23/08/2025 08:44, Kurt Kanzenbach wrote:
> On Fri Aug 22 2025, Vadim Fedorenko wrote:
>> On 22/08/2025 08:28, Kurt Kanzenbach wrote:
>>> The current implementation uses schedule_work() which is executed by the
>>> system work queue to retrieve Tx timestamps. This increases latency and can
>>> lead to timeouts in case of heavy system load.
>>>
>>> Therefore, switch to the PTP aux worker which can be prioritized and pinned
>>> according to use case. Tested on Intel i210.
>>>
>>>     * igb_ptp_tx_work
>>> - * @work: pointer to work struct
>>> + * @ptp: pointer to ptp clock information
>>>     *
>>>     * This work function polls the TSYNCTXCTL valid bit to determine when a
>>>     * timestamp has been taken for the current stored skb.
>>>     **/
>>> -static void igb_ptp_tx_work(struct work_struct *work)
>>> +static long igb_ptp_tx_work(struct ptp_clock_info *ptp)
>>>    {
>>> -	struct igb_adapter *adapter = container_of(work, struct igb_adapter,
>>> -						   ptp_tx_work);
>>> +	struct igb_adapter *adapter = container_of(ptp, struct igb_adapter,
>>> +						   ptp_caps);
>>>    	struct e1000_hw *hw = &adapter->hw;
>>>    	u32 tsynctxctl;
>>>    
>>>    	if (!adapter->ptp_tx_skb)
>>> -		return;
>>> +		return -1;
>>>    
>>>    	if (time_is_before_jiffies(adapter->ptp_tx_start +
>>>    				   IGB_PTP_TX_TIMEOUT)) {
>>> @@ -824,15 +824,17 @@ static void igb_ptp_tx_work(struct work_struct *work)
>>>    		 */
>>>    		rd32(E1000_TXSTMPH);
>>>    		dev_warn(&adapter->pdev->dev, "clearing Tx timestamp hang\n");
>>> -		return;
>>> +		return -1;
>>>    	}
>>>    
>>>    	tsynctxctl = rd32(E1000_TSYNCTXCTL);
>>> -	if (tsynctxctl & E1000_TSYNCTXCTL_VALID)
>>> +	if (tsynctxctl & E1000_TSYNCTXCTL_VALID) {
>>>    		igb_ptp_tx_hwtstamp(adapter);
>>> -	else
>>> -		/* reschedule to check later */
>>> -		schedule_work(&adapter->ptp_tx_work);
>>> +		return -1;
>>> +	}
>>> +
>>> +	/* reschedule to check later */
>>> +	return 1;
>>
>> do_aux_work is expected to return delay in jiffies to re-schedule the
>> work. it would be cleaner to use msec_to_jiffies macros to tell how much
>> time the driver has to wait before the next try of retrieving the
>> timestamp. AFAIU, the timestamp may come ASAP in this case, so it's
>> actually reasonable to request immediate re-schedule of the worker by
>> returning 0.
> 
> I don't think so. The 'return 1' is only executed for 82576. For all
> other NICs the TS is already available. For 82576 the packet is queued
> to Tx ring and the worker is scheduled immediately. For example, in case
> of other Tx traffic there's a chance that the TS is not available
> yet. So we comeback one jiffy later, which is 10ms at worst. That looked
> reasonable to me.

Ok, LGTM
Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
