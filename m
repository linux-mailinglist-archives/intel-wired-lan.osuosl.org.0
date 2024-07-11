Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F6292DD7A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 02:48:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EC33802D5;
	Thu, 11 Jul 2024 00:48:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Say_COhOsWYO; Thu, 11 Jul 2024 00:48:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A632380A99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720658932;
	bh=WjKPzEYgF3Gm56F+nhrsfWuzqcPkeXTn1NHOmptwRhA=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oTYnslcgexk7BjssEH6VqZJuxBsJOFgUK8VmDfV/+72O8/uaCIrp/Qy6yzDSRLHlU
	 ///VfmI/C2pU+C1aHv28EaBz8YharPRxbIInb7XttEkm23xHC2U+IRk/w/1lRoqYh2
	 /41spCepUulDYjQslqvENaI/UPx9A6HSjUZu5shXlvuzbvn35CRvk5RomNpiwvObkI
	 Kvn2GCb0hWhaT7x29goLJAsxp14ENh7DCAr/ovzkzcqYa8QkdntdzCjm+6aWfAUM93
	 HVQb54U1XJ0hGAqSVKsd7aoswhaGt1WIp88trzRPraupMxJWZUsadB5c75JNitmK7P
	 /M5RjxKnFUxkg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A632380A99;
	Thu, 11 Jul 2024 00:48:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E4961BF36F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 00:48:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 743DE404A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 00:48:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WYw_-DymYfmZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2024 00:48:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9E51A403A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E51A403A6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E51A403A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 00:48:47 +0000 (UTC)
X-CSE-ConnectionGUID: zgJG6gluRbOFV/GkFPDdeg==
X-CSE-MsgGUID: jrIDeWGLQnqKEvRYoao0SQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="29172738"
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="29172738"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 17:48:47 -0700
X-CSE-ConnectionGUID: xYsy0nIxQsWSpu8gqq6RQw==
X-CSE-MsgGUID: TKxZRBbsQM6REW2gGUJQ0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="48274689"
Received: from bmurrell-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.221.70])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 17:48:46 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Rodrigo Cataldo via B4 Relay
 <devnull+rodrigo.cadore.l-acoustics.com@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Kurt
 Kanzenbach <kurt.kanzenbach@linutronix.de>, "Christopher S. Hall"
 <christopher.s.hall@intel.com>
In-Reply-To: <20240708-igc-flush-ptm-request-before-timeout-6-10-v1-1-70e5ebec9efe@l-acoustics.com>
References: <20240708-igc-flush-ptm-request-before-timeout-6-10-v1-1-70e5ebec9efe@l-acoustics.com>
Date: Wed, 10 Jul 2024 17:48:45 -0700
Message-ID: <87r0c0sqhe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720658928; x=1752194928;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1QWRTj0NgxJken/pxHFzYtCWzNKZqdt99bnCGV7dvX0=;
 b=YvDuaMuq8a3SkPoOsr/5PIk816oGQpsayje7jvq6pKmJuHa2X4b+GlEv
 uPkg7iQc6mp0ZUm1I8wh5gsODhVMA7yt5VpZdlWHJRjfuAS/ciHvT8c9K
 LND0lcHy/Jkb87uhyV5pI8Mm32C7XlixQyRk1njW9fn33BPJJEeDRe0GV
 vFZ2E80llkFHL3puJSo16l5gB4TObn7xlesdS4NUjkDQqWLwh94HuclJq
 kuyfnzPSQTjHDT6TKiiEYCIyfBQfN9OyKnjukwKQK/fci9e0+LyEe2CLH
 jwpxq+QZOstRMnvZ4pgegZV9sGn2+aN+b3k/P+mh1t5tbeAhUnaUCwFOp
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YvDuaMuq
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Ensure PTM request is
 completed before timeout has started
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
Cc: netdev@vger.kernel.org, Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Rodrigo Cataldo via B4 Relay
<devnull+rodrigo.cadore.l-acoustics.com@kernel.org> writes:

> From: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
>
> When a PTM is requested via wr32(IGC_PTM_STAT), the operation may only
> be completed by the next read operation (flush). Unfortunately, the next
> read operation in the PTM request loop happens after we have already
> started evaluating the response timeout.
>
> Thus, the following behavior has been observed::
>
>   phc2sys-1655  [010]   103.233752: funcgraph_entry:                    |  igc_ptp_getcrosststamp() {
>   phc2sys-1655  [010]   103.233754: funcgraph_entry:                    |    igc_phc_get_syncdevice_time() {
>   phc2sys-1655  [010]   103.233755: funcgraph_entry:                    |      igc_rd32() {
>   phc2sys-1655  [010]   103.233931: preempt_disable: caller=irq_enter_rcu+0x14 parent=irq_enter_rcu+0x14
>   phc2sys-1655  [010]   103.233932: local_timer_entry: vector=236
>   phc2sys-1655  [010]   103.233932: hrtimer_cancel: hrtimer=0xffff8edeef526118
>   phc2sys-1655  [010]   103.233933: hrtimer_expire_entry: hrtimer=0xffff8edeef526118 now=103200127876 function=tick_nohz_handler/0x0
>
>   ... tick handler ...
>
>   phc2sys-1655  [010]   103.233971: funcgraph_exit:       !  215.559 us |      }
>   phc2sys-1655  [010]   103.233972: funcgraph_entry:                    |      igc_rd32() {
>   phc2sys-1655  [010]   103.234135: funcgraph_exit:       !  164.370 us |      }
>   phc2sys-1655  [010]   103.234136: funcgraph_entry:         1.942 us   |      igc_rd32();
>   phc2sys-1655  [010]   103.234147: console:              igc 0000:03:00.0 enp3s0: Timeout reading IGC_PTM_STAT register
>
> Based on the (simplified) code::
>
> 	ctrl = rd32(IGC_PTM_CTRL);
>         /* simplified: multiple writes here */
> 	wr32(IGC_PTM_STAT, IGC_PTM_STAT_VALID);
>
> 	err = readx_poll_timeout(rd32, IGC_PTM_STAT, stat,
> 				 stat, IGC_PTM_STAT_SLEEP,
> 				 IGC_PTM_STAT_TIMEOUT);
> 	if (err < 0) {
> 		netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT register\n");
> 		return err;
> 	}
>
> Where readx_poll_timeout() starts the timeout evaluation before calling
> the rd32() parameter (rd32() is a macro for igc_rd32()).
>
> In the trace shown, the read operation of readx_poll_timeout() (second
> igc_rd32()) took so long that the timeout (IGC_PTM_STAT_VALID) has expired
> and no sleep has been performed.
>
> With this patch, a write flush is added (which is an additional
> igc_rd32() in practice) that can wait for the write before the timeout
> is evaluated::
>
>   phc2sys-1615  [010]    74.517954: funcgraph_entry:                    |  igc_ptp_getcrosststamp() {
>   phc2sys-1615  [010]    74.517956: funcgraph_entry:                    |    igc_phc_get_syncdevicetime() {
>   phc2sys-1615  [010]    74.517957: funcgraph_entry:                    |      igc_rd32() {
>   phc2sys-1615  [010]    74.518127: preempt_disable: caller=irq_enter_rcu+0x14 parent=irq_enter_rcu+0x14
>   phc2sys-1615  [010]    74.518128: local_timer_entry: vector=236
>   phc2sys-1615  [010]    74.518128: hrtimer_cancel: hrtimer=0xffff96466f526118
>   phc2sys-1615  [010]    74.518128: hrtimer_expire_entry: hrtimer=0xffff96466f526118 now=74484007229 function=tick_nohz_handler/0x0
>
>   ... tick handler ...
>
>   phc2sys-1615  [010]    74.518180: funcgraph_exit:       !  222.282 us |      }
>   phc2sys-1615  [010]    74.518181: funcgraph_entry:                    |      igc_rd32() {
>   phc2sys-1615  [010]    74.518349: funcgraph_exit:       !  168.160 us |      }
>   phc2sys-1615  [010]    74.518349: funcgraph_entry:         1.970 us   |      igc_rd32();
>   phc2sys-1615  [010]    74.518352: hrtimer_init: hrtimer=0xffffa6f9413a3940 clockid=CLOCK_MONOTONIC mode=0x0
>   phc2sys-1615  [010]    74.518352: preempt_disable: caller=_raw_spin_lock_irqsave+0x28 parent=hrtimer_start_range_ns+0x56
>   phc2sys-1615  [010]    74.518353: hrtimer_start: hrtimer=0xffffa6f9413a3940 function=hrtimer_wakeup/0x0 expires=74484232878 softexpires=74484231878
>
>   .. hrtimer setup and return ...
>
>   kworker/10:1-242   [010]    74.518382: sched_switch: kworker/10:1:242 [120] W ==> phc2sys:1615 [120]
>   phc2sys-1615  [010]    74.518383: preempt_enable: caller=schedule+0x36 parent=schedule+0x36
>   phc2sys-1615  [010]    74.518384: funcgraph_entry:      !  100.088 us |      igc_rd32();
>   phc2sys-1615  [010]    74.518484: funcgraph_entry:         1.958 us   |      igc_rd32();
>   phc2sys-1615  [010]    74.518488: funcgraph_entry:         2.019 us   |      igc_rd32();
>   phc2sys-1615  [010]    74.518490: funcgraph_entry:         1.956 us   |      igc_rd32();
>   phc2sys-1615  [010]    74.518492: funcgraph_entry:         1.980 us   |      igc_rd32();
>   phc2sys-1615  [010]    74.518494: funcgraph_exit:       !  539.386 us |    }
>
> Now the sleep is called as expected, and the operation succeeds.
> Therefore, regardless of how long it will take for the write to be
> completed, we will poll+sleep at least for the time specified in
> IGC_PTM_STAT_TIMEOUT.
>
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
> ---
> I have been searching for the proper solution for this PTM issue for a long
> time. The issue was observed on a 13700 (Raptor Lake). We also use a 8500
> (Coffee Lake) that is much less susceptible for this issue, but still
> happens. Both are using I225-LM cards.
>
> For a 24 hours test, idle system, I have observed with 13700::
>
> 	number of timeouts in 86400 seconds: 2509
>
> The same test on a 8500::
>
>         number of timeouts in 86400 seconds: 9
>
> Where one PTM request is sent per second. Test was done this script::
>
>   record_multiple_timeout_param()
>   {
>   	local taskset_cpu=$1
>   	local cur_limit=$((SECONDS + LIMIT_SECONDS ))
>   	local timeouts=0
>   
>   	while [ $SECONDS -lt $cur_limit ]
>   	do
>   		REL_TO=$((cur_limit - SECONDS))
>   
>   		timeout $REL_TO taskset $taskset_cpu \
>   			phc2sys -c $ITF_NAME -s CLOCK_REALTIME -O 37 -m 1>/dev/null
>   		if [ $? -eq 255 ]; then
>   			timeouts=$((timeouts + 1))
>   		fi
>   	done
>   	printf "\tnumber of timeouts in %s seconds: %d\n" $LIMIT_SECONDS $timeouts
>   }
>
>   record_multiple_timeout_param $NON_ISOLCPU_MASK
>
> Firmware version for the cards::
>
>   # lshw -class network -json | jq '.[0].product,.[0].configuration.firmware'
>   "Ethernet Controller I225-LM"
>   "1057:8754"
>
>   # lshw -class network -json | jq '.[2].product,.[2].configuration.firmware'
>   "Ethernet Controller I225-LM"
>   "1057:8754
>
> A couple of attempts were made that did not lead to solving the
> issue (disabling ASPM in kernel and boot, using periodic tick), and a couple
> of solutions that worked but that were subpar:
>
> 1. The issue was not observed for a phc2sys(8) running on a fully
>    isolated nohz_full core. We do not have the luxury of dedicating a a
>    core for it.

This one is interesting. Was it because the isolated CPU never got to
sleep and readx_poll_timeout() became a busy loop? I am trying to fit
this one on my mental model.

> 2. Bumping the IGC_PTM_STAT_TIMEOUT value. Other machines may need
>    another value though.

This one is not horrible as well. Some value like 400us comes to mind.

Your proposed fix looks fine as well, I was thinking a bit about it, and
even if it's more a like a timing issue than "the absolutely correct
fix", there are little chances for bad side effects.

If there aren't any other ideas, I am fine with this:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

> 3. Retry (multiple times) readx_poll_timeout() in case of failure. This may
>    significantly increase the function latency, because each
>    readx_poll_timeout() can take more than 100 us.
> 4. Disabling preemption during the PTM request. Horrible.
>

I wonder if you tried moving the I225 to the graphics card PCIe slot, or
is it an onboard card? IIRC there are different PCIe controllers for the
graphics slot vs. the other ones, at least on Coffee Lake.

> For the Coffee Lake machine, the issue tends to be avoided because the
> read does not take so long. Here is basically the same trace using the
> Cofee Lake machine::
>
>   phc2sys-1204  [002]  1778.220288: funcgraph_entry:                    |  igc_ptp_getcrosststamp() {
>   phc2sys-1204  [002]  1778.220290: funcgraph_entry:                    |    igc_phc_get_syncdevicetime() {
>   phc2sys-1204  [002]  1778.220291: funcgraph_entry:                    |      igc_rd32() {
>   phc2sys-1204  [002]  1778.220373: preempt_disable: caller=irq_enter_rcu+0x14 parent=irq_enter_rcu+0x14
>   phc2sys-1204  [002]  1778.220374: local_timer_entry: vector=236
>   phc2sys-1204  [002]  1778.220375: hrtimer_cancel: hrtimer=0xffff894027326118
>   phc2sys-1204  [002]  1778.220376: hrtimer_expire_entry: hrtimer=0xffff894027326118 now=1778228034802 function=tick_nohz_handler/0x0
>
>   ... tick handler ...
>
>   phc2sys-1204  [002]  1778.220411: funcgraph_exit:       !  119.843 us |      }
>   phc2sys-1204  [002]  1778.220412: funcgraph_entry:                    |      igc_rd32() {
>   phc2sys-1204  [002]  1778.220492: funcgraph_exit:       + 80.094 us   |      }
>   phc2sys-1204  [002]  1778.220493: funcgraph_entry:        2.951 us    |      igc_rd32();
>   phc2sys-1204  [002]  1778.220497: hrtimer_init: hrtimer=0xffffa504c0d83aa0 clockid=CLOCK_MONOTONIC mode=0x0
>   phc2sys-1204  [002]  1778.220498: preempt_disable: caller=_raw_spin_lock_irqsave+0x28 parent=hrtimer_start_range_ns+0x56
>   phc2sys-1204  [002]  1778.220499: hrtimer_start: hrtimer=0xffffa504c0d83aa0 function=hrtimer_wakeup/0x0 expires=1778228158866 softexpires=1778228157866
>
>   ... timer setup ....
>
>   phc2sys-1204  [002]  1778.220509: preempt_enable: caller=_raw_spin_unlock_irqrestore+0x2b parent=hrtimer_start_range_ns+0x12d
>   phc2sys-1204  [002]  1778.220511: funcgraph_entry:        7.338 us   |      igc_rd32();
>   phc2sys-1204  [002]  1778.220519: funcgraph_entry:        2.769 us   |      igc_rd32();
>   phc2sys-1204  [002]  1778.220522: funcgraph_entry:        2.798 us   |      igc_rd32();
>   phc2sys-1204  [002]  1778.220525: funcgraph_entry:        2.736 us   |      igc_rd32();
>   phc2sys-1204  [002]  1778.220529: funcgraph_entry:        2.750 us   |      igc_rd32();
>   phc2sys-1204  [002]  1778.220532: funcgraph_exit:       !  242.656 us |    }
>
> For both machines, I observed that the first igc_rd32() after an idle
> period (more than 10us) tends to take significantly more time. I assume
> this is a hardware power-saving technique, but I could not find any
> mention in the manuals. This is very easily observable with an idle
> system running phc2sys, since it will request only once every second.
>
> This is the typical trace of the operation::
>
>   phc2sys-1204  [002]  1749.209397: funcgraph_entry:                   |  igc_ptp_getcrosststamp() {
>   phc2sys-1204  [002]  1749.209398: funcgraph_entry:                   |    igc_phc_get_syncdevicetime() {
>   phc2sys-1204  [002]  1749.209400: funcgraph_entry:      + 81.491 us  |      igc_rd32();
>   phc2sys-1204  [002]  1749.209482: funcgraph_entry:        3.691 us   |      igc_rd32();
>   phc2sys-1204  [002]  1749.209487: funcgraph_entry:        2.942 us   |      igc_rd32();
>   phc2sys-1204  [002]  1749.209490: hrtimer_init: hrtimer=0xffffa504c0d83a00 clockid=CLOCK_MONOTONIC mode=0x0
>   phc2sys-1204  [002]  1749.209491: preempt_disable: caller=_raw_spin_lock_irqsave+0x28 parent=hrtimer_start_range_ns+0x56
>   ... timer setup and it goes on like before ...
>
> The preemption needs to happen for this issue, so that this power-saving
> mode is triggered, making the igc_rd32 'slow enough' so that all of the
> timeout is consumed before the card has time to answer.
>
> I believe flushing the write solves the issue definitely, since the
> write should be completed before the timeout has started. So that, even
> if the timeout is consumed by a slow read operation, the write has been
> received before and the card had time to process the request.
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 1bb026232efc..d7269e4f1a21 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -1005,6 +1005,10 @@ static int igc_phc_get_syncdevicetime(ktime_t *device,
>  		 * VALID bit.
>  		 */
>  		wr32(IGC_PTM_STAT, IGC_PTM_STAT_VALID);
> +		/* Ensure the hardware receives the ptm request before the
> +		 * response timeout starts.
> +		 */
> +		wrfl();
>  
>  		err = readx_poll_timeout(rd32, IGC_PTM_STAT, stat,
>  					 stat, IGC_PTM_STAT_SLEEP,
>
> ---
> base-commit: 0005b2dc43f96b93fc5b0850d7ca3f7aeac9129c
> change-id: 20240705-igc-flush-ptm-request-before-timeout-6-10-f6e02c96f6d4
>
> Best regards,
> -- 
> Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
>
>


Cheers,
-- 
Vinicius
