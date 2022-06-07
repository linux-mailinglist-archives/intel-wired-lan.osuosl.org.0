Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E84540725
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jun 2022 19:43:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7872583F1B;
	Tue,  7 Jun 2022 17:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0R2T9hnYdEtv; Tue,  7 Jun 2022 17:43:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E9BF83EDE;
	Tue,  7 Jun 2022 17:43:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CDB201BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 17:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7C4583EDE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 17:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1-S_9D-KQwC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jun 2022 17:43:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12FAF83ED4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 17:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654623787; x=1686159787;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LiSe1LDqlMypTndNF75ktuzk1D7Qf2I7Oy09Hpeq6p0=;
 b=oI+Qem+miQnHQAmkrn0LVHOJDS0gbTVJjJQ4+b5JadtuQkDOr9BVHGhj
 qns50Wi5tfehSBzjDSJeq64wHQPKdJ76rWTptEowhu92SAk1aPsWbcCJk
 zzXwPPHTutgdG/2IgfN5TkMzxypO4HkgDcvUhm0vlTw6Ag5R5pk2lk85z
 dlRRXT3c0LFTbe2SznCoM4jrHCGZ9kTtkWtEPQVRvL9OhjdqXpf+ljbrl
 5jxRAEV7aWeF4NZ0AQMuIGwWCeRMYNNr1nqM4PD92Mq9x2veSZ9OFecFW
 nZINav+JqdcpyY7D/PD0oBwRfiBklAtrGJ0wRoWDPLeIiHAu+noHjmqL7 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="338246844"
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="338246844"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 10:14:53 -0700
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="826449311"
Received: from jurbank-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.41.17])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 10:14:52 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <87k09tar5e.fsf@kurt>
References: <20220606092747.16730-1-kurt@linutronix.de>
 <8735ghny8m.fsf@intel.com> <87k09tar5e.fsf@kurt>
Date: Tue, 07 Jun 2022 10:14:52 -0700
Message-ID: <87wndsmm43.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Lift TAPRIO schedule
 restriction
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Kurt,

Kurt Kanzenbach <kurt@linutronix.de> writes:

> Hi Vinicius,
>
> On Mon Jun 06 2022, Vinicius Costa Gomes wrote:
>> Hi Kurt,
>>
>> Kurt Kanzenbach <kurt@linutronix.de> writes:
>>
>>> Add support for Qbv schedules where one queue stays open
>>> in consecutive entries. Currently that's not supported.
>>>
>>> Example schedule:
>>>
>>> |tc qdisc replace dev ${INTERFACE} handle 100 parent root taprio num_tc 3 \
>>> |   map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
>>> |   queues 1@0 1@1 2@2 \
>>> |   base-time ${BASETIME} \
>>> |   sched-entry S 0x01 300000 \ # Stream High/Low
>>> |   sched-entry S 0x06 500000 \ # Management and Best Effort
>>> |   sched-entry S 0x04 200000 \ # Best Effort
>>> |   flags 0x02
>>>
>>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>>> ---
>>>  drivers/net/ethernet/intel/igc/igc_main.c | 23 +++++++++++++++++------
>>>  1 file changed, 17 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>>> index ae17af44fe02..4758bdbe5df3 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>> @@ -5813,9 +5813,10 @@ static bool validate_schedule(struct igc_adapter *adapter,
>>>  		return false;
>>>  
>>>  	for (n = 0; n < qopt->num_entries; n++) {
>>> -		const struct tc_taprio_sched_entry *e;
>>> +		const struct tc_taprio_sched_entry *e, *prev;
>>>  		int i;
>>>  
>>> +		prev = n ? &qopt->entries[n - 1] : NULL;
>>>  		e = &qopt->entries[n];
>>>  
>>>  		/* i225 only supports "global" frame preemption
>>> @@ -5828,7 +5829,12 @@ static bool validate_schedule(struct igc_adapter *adapter,
>>>  			if (e->gate_mask & BIT(i))
>>>  				queue_uses[i]++;
>>>  
>>> -			if (queue_uses[i] > 1)
>>> +			/* There are limitations: A single queue cannot be
>>> +			 * opened and closed multiple times per cycle unless the
>>> +			 * gate stays open. Check for it.
>>> +			 */
>>> +			if (queue_uses[i] > 1 &&
>>> +			    !(prev->gate_mask & BIT(i)))
>>
>> Perhaps I am missing something, I didn't try to run, but not checking if
>> 'prev' can be NULL, could lead to crashes for some schedules, no?
>
> My thinking was that `prev` can never be NULL, as `queue_uses[i] > 1` is
> checked first. This condition can only be true if there are at least two
> entries.
>

Oh, yeah! That's true. I have missed that.

>>
>> What I have in mind is a schedule that queue 0 is mentioned multiple
>> times, for example:
>>
>>  |   sched-entry S 0x01 300000 \ # Stream High/Low
>>  |   sched-entry S 0x03 500000 \ # Management and Best Effort
>>  |   sched-entry S 0x05 200000 \ # Best Effort
>>
>
> So, this schedule works with the proposed patch. Queue 0 is opened in
> all three entries. My debug code shows:
>
> |tc-6145    [010] .......   616.190589: igc_setup_tc: Qbv configuration:
> |tc-6145    [010] .......   616.190592: igc_setup_tc: Queue 0 -- start_time=0 [ns]
> |tc-6145    [010] .......   616.190592: igc_setup_tc: Queue 0 -- end_time=1000000 [ns]
> |tc-6145    [010] .......   616.190593: igc_setup_tc: Queue 1 -- start_time=300000 [ns]
> |tc-6145    [010] .......   616.190593: igc_setup_tc: Queue 1 -- end_time=800000 [ns]
> |tc-6145    [010] .......   616.190593: igc_setup_tc: Queue 2 -- start_time=800000 [ns]
> |tc-6145    [010] .......   616.190594: igc_setup_tc: Queue 2 -- end_time=1000000 [ns]
> |tc-6145    [010] .......   616.190594: igc_setup_tc: Queue 3 -- start_time=800000 [ns]
> |tc-6145    [010] .......   616.190594: igc_setup_tc: Queue 3 -- end_time=1000000 [ns]
>
> Anyway, I'd appreciate some testing on your side too :).

Sure, I can give it a spin, but it'll have to be later in the week, kind
of swamped right now.

>
> Thanks,
> Kurt

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
