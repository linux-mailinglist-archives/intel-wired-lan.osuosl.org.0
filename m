Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE73308F0E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jan 2021 22:13:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A17FD8679C;
	Fri, 29 Jan 2021 21:13:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ua0EBZbnNf36; Fri, 29 Jan 2021 21:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A215486B5C;
	Fri, 29 Jan 2021 21:13:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 78E8C1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C25E4810BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wiFmvmFHp0V6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 21:13:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD4FB8673C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:13:38 +0000 (UTC)
IronPort-SDR: CocAkURdszuEJZG315GXRT8piuUB3rL/VnNEitcSBvh+dDJBdyqjazff3CdAxKcD1X3sscC7pz
 rwPUXdLkcUKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="265315946"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="265315946"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 13:13:38 -0800
IronPort-SDR: JaNwW4v4QH7/0Ro7wE3yxhf4sMkPEtmhv2deC0cRtP8dE2isQzmu4Kz1N3KmsaHucbiWMes/5c
 tqBLwFsAkVxg==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="389464788"
Received: from ndatiri-mobl.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.145.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 13:13:37 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20210126000924.jjkjruzmh5lgrkry@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-3-vinicius.gomes@intel.com>
 <20210126000924.jjkjruzmh5lgrkry@skbuf>
Date: Fri, 29 Jan 2021 13:13:24 -0800
Message-ID: <87wnvvsayz.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/8] taprio: Add support
 for frame preemption offload
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "mkubecek@suse.cz" <mkubecek@suse.cz>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Fri, Jan 22, 2021 at 02:44:47PM -0800, Vinicius Costa Gomes wrote:
>> +	/* It's valid to enable frame preemption without any kind of
>> +	 * offloading being enabled, so keep it separated.
>> +	 */
>> +	if (tb[TCA_TAPRIO_ATTR_PREEMPT_TCS]) {
>> +		u32 preempt = nla_get_u32(tb[TCA_TAPRIO_ATTR_PREEMPT_TCS]);
>> +		struct tc_preempt_qopt_offload qopt = { };
>> +
>> +		if (preempt == U32_MAX) {
>> +			NL_SET_ERR_MSG(extack, "At least one queue must be not be preemptible");
>> +			err = -EINVAL;
>> +			goto free_sched;
>> +		}
>> +
>> +		qopt.preemptible_queues = tc_map_to_queue_mask(dev, preempt);
>> +
>> +		err = dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT,
>> +						    &qopt);
>> +		if (err)
>> +			goto free_sched;
>> +
>> +		q->preemptible_tcs = preempt;
>> +	}
>> +
>
> First I'm interested in the means: why check for preempt == U32_MAX when
> you determine that all traffic classes are preemptible? What if less
> than 32 traffic classes are used by the netdev? The check will be
> bypassed, won't it?

Good catch :-)

I wanted to have this (at least one express queue) handled in a
centralized way, but perhaps this should be handled best per driver.

>
> Secondly, why should at least one queue be preemptible? What's wrong
> with frame preemption being triggered by a tc-taprio window smaller than
> the packet size? This can happen regardless of traffic class.

It's the opposite, at least one queue needs to be marked
express/non-preemptible. But as I said above, perhaps this should be
handled in a per-driver way. I will remove this from taprio.

I think removing this check/limitation from taprio should solve the
second part of your question, right?


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
