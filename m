Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B85E97170FF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 00:52:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6B71822F8;
	Tue, 30 May 2023 22:52:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6B71822F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685487147;
	bh=QScGXkJ+wstdHstK2wygjrb+8CtuYsNavElmJqh9ZCE=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WNafD75S0omkMgcrxzVSpnoFZyfBq2ceyPBZC7VOzK9aBSOYURhX+3KDi+vnH9qEl
	 bJYJOLwBNXQB60lovB8nWojZaP8kDdnwQEoWqL5iP3zPRo8lPP1SP2qjZZMNEY3hx0
	 ImE4O9q7fTmWk9a7yKbdqD4BVqUt9QmHBXReg1RJG3s7U7kdu4F5tCXwDXIdkxk/Gq
	 S3B2/m9SZpxdLssRdvDKoC05hOjTh69BYFlTlQ7n+eF66bKC96Hc1yBOOj/tLeTlhS
	 +oYcwR5R4gxSYn2yMAbp8nZVtsb2ilvCTYREdWh/PoS48YguwBOYcQ7ft/Y67bzYjd
	 ofXIsir1XuDIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HpAnx6nbhxmE; Tue, 30 May 2023 22:52:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1050C822A8;
	Tue, 30 May 2023 22:52:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1050C822A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65DE21BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:52:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C72460FB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:52:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C72460FB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gv-wTmaK4jC4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 22:52:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E42C960F97
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E42C960F97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:52:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="334687235"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="334687235"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 15:52:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="953357490"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="953357490"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 15:52:17 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
In-Reply-To: <20230530091948.1408477-4-vladimir.oltean@nxp.com>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
 <20230530091948.1408477-4-vladimir.oltean@nxp.com>
Date: Tue, 30 May 2023 15:52:17 -0700
Message-ID: <87wn0ptota.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685487139; x=1717023139;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3KqPLAaPdZRdqqIgS2W0nnEO/sGfCLdma7O0mD98SHg=;
 b=eX7AvDVwXNukFoWY1iGhLO33+d5CBd50zcIX2SOPT3XSOXVrYRVKZy+v
 JIs1IcnDOxb/7HoAole0/rLhOXJUmUlfJ8Hl+exS6hgccQ2HYkydQ+jBc
 qZTp2mAjEDJfu6NoD+uin0lHZLM0kWZVP10RPFur5NDrlHoRvfW8uanS3
 zAEncJds3jcsf3HIKyHoNhyWLNaV3JhD2HwsWa2ZLvC2HD08YcUZ9rr8A
 PMrcYhAWf4STWzcCILnXbA5kkxIsm3GINfO5vDk50t7XiAlXk/wgUTXh0
 2KP3+ubvx0Luv7c49J8Toi5OSTaoG3tCPrqv3T00RPWKvfU2aFno1hcVJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eX7AvDVw
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] net/sched: taprio: add
 netlink reporting for offload statistics counters
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ferenc Fejes <ferenc.fejes@ericsson.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>, UNGLinuxDriver@microchip.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Xiaoliang Yang <xiaoliang.yang_1@nxp.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Mohammad Athari Bin Ismail <mohammad.athari.ismail@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Pranavi Somisetty <pranavi.somisetty@amd.com>,
 Jiri Pirko <jiri@resnulli.us>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Roger Quadros <rogerq@kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Michael Sit Wei Hong <michael.wei.hong.sit@intel.com>,
 Harini Katakam <harini.katakam@amd.com>, linux-kernel@vger.kernel.org,
 Jose Abreu <joabreu@synopsys.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> Offloading drivers may report some additional statistics counters, some
> of them even suggested by 802.1Q, like TransmissionOverrun.
>
> In my opinion we don't have to limit ourselves to reporting counters
> only globally to the Qdisc/interface, especially if the device has more
> detailed reporting (per traffic class), since the more detailed info is
> valuable for debugging and can help identifying who is exceeding its
> time slot.
>
> But on the other hand, some devices may not be able to report both per
> TC and global stats.
>
> So we end up reporting both ways, and use the good old ethtool_put_stat()
> strategy to determine which statistics are supported by this NIC.
> Statistics which aren't set are simply not reported to netlink. For this
> reason, we need something dynamic (a nlattr nest) to be reported through
> TCA_STATS_APP, and not something daft like the fixed-size and
> inextensible struct tc_codel_xstats. A good model for xstats which are a
> nlattr nest rather than a fixed struct seems to be cake.
>
>  # Global stats
>  $ tc -s qdisc show dev eth0 root
>  # Per-tc stats
>  $ tc -s class show dev eth0
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  include/net/pkt_sched.h        | 47 ++++++++++++++++----
>  include/uapi/linux/pkt_sched.h | 10 +++++
>  net/sched/sch_taprio.c         | 78 +++++++++++++++++++++++++++++++++-
>  3 files changed, 126 insertions(+), 9 deletions(-)
>
> diff --git a/include/net/pkt_sched.h b/include/net/pkt_sched.h
> index f5fb11da357b..530d33adec88 100644
> --- a/include/net/pkt_sched.h
> +++ b/include/net/pkt_sched.h
> @@ -188,6 +188,27 @@ struct tc_taprio_caps {
>  enum tc_taprio_qopt_cmd {
>  	TAPRIO_CMD_REPLACE,
>  	TAPRIO_CMD_DESTROY,
> +	TAPRIO_CMD_STATS,
> +	TAPRIO_CMD_TC_STATS,
> +};
> +
> +/**
> + * struct tc_taprio_qopt_stats - IEEE 802.1Qbv statistics
> + * @window_drops: Frames that were dropped because they were too large to be
> + *	transmitted in any of the allotted time windows (open gates) for their
> + *	traffic class.
> + * @tx_overruns: Frames still being transmitted by the MAC after the
> + *	transmission gate associated with their traffic class has closed.
> + *	Equivalent to `12.29.1.1.2 TransmissionOverrun` from 802.1Q-2018.
> + */
> +struct tc_taprio_qopt_stats {
> +	u64 window_drops;
> +	u64 tx_overruns;
> +};
> +
> +struct tc_taprio_qopt_tc_stats {
> +	int tc;
> +	struct tc_taprio_qopt_stats stats;
>  };
>  
>  struct tc_taprio_sched_entry {
> @@ -199,16 +220,26 @@ struct tc_taprio_sched_entry {
>  };
>  
>  struct tc_taprio_qopt_offload {
> -	struct tc_mqprio_qopt_offload mqprio;
> -	struct netlink_ext_ack *extack;
>  	enum tc_taprio_qopt_cmd cmd;
> -	ktime_t base_time;
> -	u64 cycle_time;
> -	u64 cycle_time_extension;
> -	u32 max_sdu[TC_MAX_QUEUE];
>  
> -	size_t num_entries;
> -	struct tc_taprio_sched_entry entries[];
> +	union {
> +		/* TAPRIO_CMD_STATS */
> +		struct tc_taprio_qopt_stats stats;
> +		/* TAPRIO_CMD_TC_STATS */
> +		struct tc_taprio_qopt_tc_stats tc_stats;
> +		/* TAPRIO_CMD_REPLACE */
> +		struct {
> +			struct tc_mqprio_qopt_offload mqprio;
> +			struct netlink_ext_ack *extack;
> +			ktime_t base_time;
> +			u64 cycle_time;
> +			u64 cycle_time_extension;
> +			u32 max_sdu[TC_MAX_QUEUE];
> +
> +			size_t num_entries;
> +			struct tc_taprio_sched_entry entries[];
> +		};
> +	};
>  };
>  
>  #if IS_ENABLED(CONFIG_NET_SCH_TAPRIO)
> diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
> index 51a7addc56c6..00f6ff0aff1f 100644
> --- a/include/uapi/linux/pkt_sched.h
> +++ b/include/uapi/linux/pkt_sched.h
> @@ -1259,6 +1259,16 @@ enum {
>  	TCA_TAPRIO_TC_ENTRY_MAX = (__TCA_TAPRIO_TC_ENTRY_CNT - 1)
>  };
>  
> +enum {
> +	TCA_TAPRIO_OFFLOAD_STATS_PAD = 1,	/* u64 */
> +	TCA_TAPRIO_OFFLOAD_STATS_WINDOW_DROPS,	/* u64 */
> +	TCA_TAPRIO_OFFLOAD_STATS_TX_OVERRUNS,	/* u64 */
> +
> +	/* add new constants above here */
> +	__TCA_TAPRIO_OFFLOAD_STATS_CNT,
> +	TCA_TAPRIO_OFFLOAD_STATS_MAX = (__TCA_TAPRIO_OFFLOAD_STATS_CNT - 1)
> +};
> +
>  enum {
>  	TCA_TAPRIO_ATTR_UNSPEC,
>  	TCA_TAPRIO_ATTR_PRIOMAP, /* struct tc_mqprio_qopt */
> diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
> index 06bf4c6355a5..3c4c2c334878 100644
> --- a/net/sched/sch_taprio.c
> +++ b/net/sched/sch_taprio.c
> @@ -27,6 +27,8 @@
>  #include <net/sock.h>
>  #include <net/tcp.h>
>  
> +#define TAPRIO_STAT_NOT_SET	(~0ULL)
> +
>  #include "sch_mqprio_lib.h"
>  
>  static LIST_HEAD(taprio_list);
> @@ -2289,6 +2291,72 @@ static int taprio_dump_tc_entries(struct sk_buff *skb,
>  	return -EMSGSIZE;
>  }
>  
> +static int taprio_put_stat(struct sk_buff *skb, u64 val, u16 attrtype)
> +{
> +	if (val == TAPRIO_STAT_NOT_SET)
> +		return 0;
> +	if (nla_put_u64_64bit(skb, attrtype, val, TCA_TAPRIO_OFFLOAD_STATS_PAD))
> +		return -EMSGSIZE;
> +	return 0;
> +}
> +
> +static int taprio_dump_xstats(struct Qdisc *sch, struct gnet_dump *d,
> +			      struct tc_taprio_qopt_offload *offload,
> +			      struct tc_taprio_qopt_stats *stats)
> +{
> +	struct net_device *dev = qdisc_dev(sch);
> +	const struct net_device_ops *ops;
> +	struct sk_buff *skb = d->skb;
> +	struct nlattr *xstats;
> +	int err;
> +
> +	ops = qdisc_dev(sch)->netdev_ops;
> +
> +	/* FIXME I could use qdisc_offload_dump_helper(), but that messes
> +	 * with sch->flags depending on whether the device reports taprio
> +	 * stats, and I'm not sure whether that's a good idea, considering
> +	 * that stats are optional to the offload itself
> +	 */
> +	if (!ops->ndo_setup_tc)
> +		return 0;
> +
> +	memset(stats, 0xff, sizeof(*stats));

The only part that I didn't like, at first, was this, that the
initialization of the offload struct is divided into two parts: one to
set the command/tc, and one to set the "invalid/not set" value to all
stats fields.

I was thinking of adding a macro to do initialization of the stats
fields, but it has a problem that it won't complain when a new field is
added. Your solution should always work. I don't have better
suggestions.

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

> +
> +	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
> +	if (err == -EOPNOTSUPP)
> +		return 0;
> +	if (err)
> +		return err;
> +
> +	xstats = nla_nest_start(skb, TCA_STATS_APP);
> +	if (!xstats)
> +		goto err;
> +
> +	if (taprio_put_stat(skb, stats->window_drops,
> +			    TCA_TAPRIO_OFFLOAD_STATS_WINDOW_DROPS) ||
> +	    taprio_put_stat(skb, stats->tx_overruns,
> +			    TCA_TAPRIO_OFFLOAD_STATS_TX_OVERRUNS))
> +		goto err_cancel;
> +
> +	nla_nest_end(skb, xstats);
> +
> +	return 0;
> +
> +err_cancel:
> +	nla_nest_cancel(skb, xstats);
> +err:
> +	return -EMSGSIZE;
> +}
> +
> +static int taprio_dump_stats(struct Qdisc *sch, struct gnet_dump *d)
> +{
> +	struct tc_taprio_qopt_offload offload = {
> +		.cmd = TAPRIO_CMD_STATS,
> +	};
> +
> +	return taprio_dump_xstats(sch, d, &offload, &offload.stats);
> +}
> +
>  static int taprio_dump(struct Qdisc *sch, struct sk_buff *skb)
>  {
>  	struct taprio_sched *q = qdisc_priv(sch);
> @@ -2389,11 +2457,18 @@ static int taprio_dump_class_stats(struct Qdisc *sch, unsigned long cl,
>  {
>  	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);
>  	struct Qdisc *child = dev_queue->qdisc_sleeping;
> +	struct tc_taprio_qopt_offload offload = {
> +		.cmd = TAPRIO_CMD_TC_STATS,
> +		.tc_stats = {
> +			.tc = cl - 1,
> +		},
> +	};
>  
>  	if (gnet_stats_copy_basic(d, NULL, &child->bstats, true) < 0 ||
>  	    qdisc_qstats_copy(d, child) < 0)
>  		return -1;
> -	return 0;
> +
> +	return taprio_dump_xstats(sch, d, &offload, &offload.tc_stats.stats);
>  }
>  
>  static void taprio_walk(struct Qdisc *sch, struct qdisc_walker *arg)
> @@ -2440,6 +2515,7 @@ static struct Qdisc_ops taprio_qdisc_ops __read_mostly = {
>  	.dequeue	= taprio_dequeue,
>  	.enqueue	= taprio_enqueue,
>  	.dump		= taprio_dump,
> +	.dump_stats	= taprio_dump_stats,
>  	.owner		= THIS_MODULE,
>  };
>  
> -- 
> 2.34.1
>

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
