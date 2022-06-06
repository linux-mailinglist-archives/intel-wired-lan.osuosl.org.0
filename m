Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3847253F2D5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jun 2022 01:55:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AC25415BF;
	Mon,  6 Jun 2022 23:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LXZgFuy_3KAX; Mon,  6 Jun 2022 23:55:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9EAB415B1;
	Mon,  6 Jun 2022 23:55:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B75CD1BF363
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 23:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B1F43415A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 23:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ykO48YY82e79 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jun 2022 23:55:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 53E6C415B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 23:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654559725; x=1686095725;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oGEaRpmwAAbwcKnM8W/c07vo7oKHFWnwE4lA6ls7ItU=;
 b=mbTOATXBc6apTt2tYEL5Tl71Q0L/A2gvoWokJcMM7CIo5jeMWg8aKlgv
 opu+UR0tOCONSjkzS+4JLoUv0InIejNSdN3E6n2m9Zz2JXZi/dpa4DOHb
 iLm+Od7fm8yoUlzwHdZ7aOS/q2EvpPBWnIGnX6HyYODeeWoju4+NlLv/b
 4I32iT/r85z5JcXkeDuu008Zct34TzFg2GZ1smaj6ByKMN7LQspRt1kqN
 wXB6IPo2NhJdeTDbEYjmYyhu+BLzhvO6AVu6l7E1VgxSxX5td1lVPBD2k
 vMe2jjd2tmoV+KVzjPzfMtiCn9Sn2ObhgMdLpf9DSt63yAOD7mAH0VkXx w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="277236916"
X-IronPort-AV: E=Sophos;i="5.91,282,1647327600"; d="scan'208";a="277236916"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 16:55:22 -0700
X-IronPort-AV: E=Sophos;i="5.91,282,1647327600"; d="scan'208";a="682496664"
Received: from vcostago-mobl3.jf.intel.com (HELO vcostago-mobl3)
 ([10.24.14.83])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 16:55:21 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220606092747.16730-1-kurt@linutronix.de>
References: <20220606092747.16730-1-kurt@linutronix.de>
Date: Mon, 06 Jun 2022 16:55:21 -0700
Message-ID: <8735ghny8m.fsf@intel.com>
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Kurt,

Kurt Kanzenbach <kurt@linutronix.de> writes:

> Add support for Qbv schedules where one queue stays open
> in consecutive entries. Currently that's not supported.
>
> Example schedule:
>
> |tc qdisc replace dev ${INTERFACE} handle 100 parent root taprio num_tc 3 \
> |   map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
> |   queues 1@0 1@1 2@2 \
> |   base-time ${BASETIME} \
> |   sched-entry S 0x01 300000 \ # Stream High/Low
> |   sched-entry S 0x06 500000 \ # Management and Best Effort
> |   sched-entry S 0x04 200000 \ # Best Effort
> |   flags 0x02
>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 23 +++++++++++++++++------
>  1 file changed, 17 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index ae17af44fe02..4758bdbe5df3 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5813,9 +5813,10 @@ static bool validate_schedule(struct igc_adapter *adapter,
>  		return false;
>  
>  	for (n = 0; n < qopt->num_entries; n++) {
> -		const struct tc_taprio_sched_entry *e;
> +		const struct tc_taprio_sched_entry *e, *prev;
>  		int i;
>  
> +		prev = n ? &qopt->entries[n - 1] : NULL;
>  		e = &qopt->entries[n];
>  
>  		/* i225 only supports "global" frame preemption
> @@ -5828,7 +5829,12 @@ static bool validate_schedule(struct igc_adapter *adapter,
>  			if (e->gate_mask & BIT(i))
>  				queue_uses[i]++;
>  
> -			if (queue_uses[i] > 1)
> +			/* There are limitations: A single queue cannot be
> +			 * opened and closed multiple times per cycle unless the
> +			 * gate stays open. Check for it.
> +			 */
> +			if (queue_uses[i] > 1 &&
> +			    !(prev->gate_mask & BIT(i)))

Perhaps I am missing something, I didn't try to run, but not checking if
'prev' can be NULL, could lead to crashes for some schedules, no?

What I have in mind is a schedule that queue 0 is mentioned multiple
times, for example:

 |   sched-entry S 0x01 300000 \ # Stream High/Low
 |   sched-entry S 0x03 500000 \ # Management and Best Effort
 |   sched-entry S 0x05 200000 \ # Best Effort

Anyway, looks much cleaner than what I had in mind when I wrote that
fixme.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
