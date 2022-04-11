Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C814FC81B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 01:31:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 104E840192;
	Mon, 11 Apr 2022 23:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1GgUTOMxBxWX; Mon, 11 Apr 2022 23:31:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C61B640017;
	Mon, 11 Apr 2022 23:31:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B91D1BF399
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:31:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7841D410B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:31:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m-5PVXJ60qvF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Apr 2022 23:31:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C098410B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649719864; x=1681255864;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=I2hHSGjL5JPe2QvCCifaeCB+3R+ek7wCqVeYv6Fujf0=;
 b=XLHL9wX4V+eIiUXokbr7ft0J9vsfrsMsmt/On8/HMuOgtFpwPX/BANxz
 Co0OMmNElOt/+b/QZi9AqVbPcCf+FKgdAQ1YFgsbp7wXluTcBTQkn87Rl
 3QoDURuk9L1MqEi2d4XxqdOL7Le62f00/X1x1jzY7t9cNi4puLhjqEDLt
 nWi69uwS8MHf7exFDZRzekOFfim+zJUM1aY/dTS1dCnxYKEHjYrwMQ85+
 Fg/JxvZ/KAzg9tQpHnMaz+sJ/mD60SxzkBuCzQMknbhtPg0ur1tvcvLKC
 Ach439wbwEI80s64Fp6psyfHvC/8IOmfA7Rt8eNuJomA4uGaBdr1C25Pm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="259833467"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="259833467"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:31:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="590091399"
Received: from vcostago-mobl3.jf.intel.com (HELO vcostago-mobl3)
 ([10.24.14.61])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:31:03 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20210627195826.fax7l4hd2itze4pi@skbuf>
References: <20210626003314.3159402-1-vinicius.gomes@intel.com>
 <20210626003314.3159402-3-vinicius.gomes@intel.com>
 <20210627195826.fax7l4hd2itze4pi@skbuf>
Date: Mon, 11 Apr 2022 16:31:03 -0700
Message-ID: <874k2zdwp4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 02/12] taprio: Add support
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
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

> On Fri, Jun 25, 2021 at 05:33:04PM -0700, Vinicius Costa Gomes wrote:
>> Adds a way to configure which traffic classes are marked as
>> preemptible and which are marked as express.
>> 
>> Even if frame preemption is not a "real" offload, because it can't be
>> executed purely in software, having this information near where the
>> mapping of traffic classes to queues is specified, makes it,
>> hopefully, easier to use.
>> 
>> taprio will receive the information of which traffic classes are
>> marked as express/preemptible, and when offloading frame preemption to
>> the driver will convert the information, so the driver receives which
>> queues are marked as express/preemptible.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> ---
>>  include/linux/netdevice.h      |  1 +
>>  include/net/pkt_sched.h        |  4 ++++
>>  include/uapi/linux/pkt_sched.h |  1 +
>>  net/sched/sch_taprio.c         | 43 ++++++++++++++++++++++++++++++----
>>  4 files changed, 44 insertions(+), 5 deletions(-)
>> 
>> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
>> index be1dcceda5e4..af5d4c5b0ad5 100644
>> --- a/include/linux/netdevice.h
>> +++ b/include/linux/netdevice.h
>> @@ -923,6 +923,7 @@ enum tc_setup_type {
>>  	TC_SETUP_QDISC_TBF,
>>  	TC_SETUP_QDISC_FIFO,
>>  	TC_SETUP_QDISC_HTB,
>> +	TC_SETUP_PREEMPT,
>>  };
>>  
>>  /* These structures hold the attributes of bpf state that are being passed
>> diff --git a/include/net/pkt_sched.h b/include/net/pkt_sched.h
>> index 6d7b12cba015..b4cb479d1cf5 100644
>> --- a/include/net/pkt_sched.h
>> +++ b/include/net/pkt_sched.h
>> @@ -178,6 +178,10 @@ struct tc_taprio_qopt_offload {
>>  	struct tc_taprio_sched_entry entries[];
>>  };
>>  
>> +struct tc_preempt_qopt_offload {
>> +	u32 preemptible_queues;
>> +};
>> +
>>  /* Reference counting */
>>  struct tc_taprio_qopt_offload *taprio_offload_get(struct tc_taprio_qopt_offload
>>  						  *offload);
>> diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
>> index 79a699f106b1..830ce9c9ec6f 100644
>> --- a/include/uapi/linux/pkt_sched.h
>> +++ b/include/uapi/linux/pkt_sched.h
>> @@ -1241,6 +1241,7 @@ enum {
>>  	TCA_TAPRIO_ATTR_SCHED_CYCLE_TIME_EXTENSION, /* s64 */
>>  	TCA_TAPRIO_ATTR_FLAGS, /* u32 */
>>  	TCA_TAPRIO_ATTR_TXTIME_DELAY, /* u32 */
>> +	TCA_TAPRIO_ATTR_PREEMPT_TCS, /* u32 */
>>  	__TCA_TAPRIO_ATTR_MAX,
>>  };
>>  
>> diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
>> index 66fe2b82af9a..58586f98c648 100644
>> --- a/net/sched/sch_taprio.c
>> +++ b/net/sched/sch_taprio.c
>> @@ -64,6 +64,7 @@ struct taprio_sched {
>>  	struct Qdisc **qdiscs;
>>  	struct Qdisc *root;
>>  	u32 flags;
>> +	u32 preemptible_tcs;
>>  	enum tk_offsets tk_offset;
>>  	int clockid;
>>  	atomic64_t picos_per_byte; /* Using picoseconds because for 10Gbps+
>> @@ -786,6 +787,7 @@ static const struct nla_policy taprio_policy[TCA_TAPRIO_ATTR_MAX + 1] = {
>>  	[TCA_TAPRIO_ATTR_SCHED_CYCLE_TIME_EXTENSION] = { .type = NLA_S64 },
>>  	[TCA_TAPRIO_ATTR_FLAGS]                      = { .type = NLA_U32 },
>>  	[TCA_TAPRIO_ATTR_TXTIME_DELAY]		     = { .type = NLA_U32 },
>> +	[TCA_TAPRIO_ATTR_PREEMPT_TCS]                = { .type = NLA_U32 },
>>  };
>>  
>>  static int fill_sched_entry(struct taprio_sched *q, struct nlattr **tb,
>> @@ -1284,6 +1286,7 @@ static int taprio_disable_offload(struct net_device *dev,
>>  				  struct netlink_ext_ack *extack)
>>  {
>>  	const struct net_device_ops *ops = dev->netdev_ops;
>> +	struct tc_preempt_qopt_offload preempt = { };
>>  	struct tc_taprio_qopt_offload *offload;
>>  	int err;
>>  
>> @@ -1302,13 +1305,15 @@ static int taprio_disable_offload(struct net_device *dev,
>>  	offload->enable = 0;
>>  
>>  	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
>> -	if (err < 0) {
>> +	if (err < 0)
>>  		NL_SET_ERR_MSG(extack,
>> -			       "Device failed to disable offload");
>> -		goto out;
>> -	}
>> +			       "Device failed to disable taprio offload");
>> +
>> +	err = ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT, &preempt);
>> +	if (err < 0)
>> +		NL_SET_ERR_MSG(extack,
>> +			       "Device failed to disable frame preemption offload");
>
> First line in taprio_disable_offload() is:
>
> 	if (!FULL_OFFLOAD_IS_ENABLED(q->flags))
> 		return 0;
>
> but you said it yourself below that the preemptible queues thing is
> independent of whether you have taprio offload or not (or taprio at
> all). So the queues will never be reset back to the eMAC if you don't
> use full offload (yes, this includes txtime offload too). In fact, it's
> so independent, that I don't even know why we add them to taprio in the
> first place :)

That I didn't change taprio_disable_offload() was a mistake caused in
part by the limitations of the hardware I have (I cannot have txtime
offload and frame preemption enabled at the same time), so I didn't
catch that.

> I think the argument had to do with the hold/advance commands (other
> frame preemption stuff that's already in taprio), but those are really
> special and only to be used in the Qbv+Qbu combination, but the pMAC
> traffic classes? I don't know... Honestly I thought that me asking to
> see preemptible queues implemented for mqprio as well was going to
> discourage you, but oh well...
>

Now, the real important part, if this should be communicated to the
driver via taprio or via ethtool/netlink.   

I don't really have strong opinions on this anymore, the two options are
viable/possible.

This is going to be a niche feature, agreed, so thinking that going with
the one that gives the user more flexibility perhaps is best, i.e. using
ethtool/netlink to communicate which queues should be marked as
preemptible or express.

>>  
>> -out:
>>  	taprio_offload_free(offload);
>>  
>>  	return err;
>> @@ -1525,6 +1530,29 @@ static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
>>  					       mqprio->prio_tc_map[i]);
>>  	}
>>  
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
>
> Hmmm, did we somehow agree that at least one traffic class must not be
> preemptible? Citation needed.
>
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
>>  	if (FULL_OFFLOAD_IS_ENABLED(q->flags))
>>  		err = taprio_enable_offload(dev, q, new_admin, extack);
>>  	else
>> @@ -1681,6 +1709,7 @@ static int taprio_init(struct Qdisc *sch, struct nlattr *opt,
>>  	 */
>>  	q->clockid = -1;
>>  	q->flags = TAPRIO_FLAGS_INVALID;
>> +	q->preemptible_tcs = U32_MAX;
>>  
>>  	spin_lock(&taprio_list_lock);
>>  	list_add(&q->taprio_list, &taprio_list);
>> @@ -1899,6 +1928,10 @@ static int taprio_dump(struct Qdisc *sch, struct sk_buff *skb)
>>  	if (q->flags && nla_put_u32(skb, TCA_TAPRIO_ATTR_FLAGS, q->flags))
>>  		goto options_error;
>>  
>> +	if (q->preemptible_tcs != U32_MAX &&
>> +	    nla_put_u32(skb, TCA_TAPRIO_ATTR_PREEMPT_TCS, q->preemptible_tcs))
>> +		goto options_error;
>> +
>>  	if (q->txtime_delay &&
>>  	    nla_put_u32(skb, TCA_TAPRIO_ATTR_TXTIME_DELAY, q->txtime_delay))
>>  		goto options_error;
>> -- 
>> 2.32.0
>> 



-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
