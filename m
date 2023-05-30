Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC6E716F79
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 23:14:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B623441C0B;
	Tue, 30 May 2023 21:14:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B623441C0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685481270;
	bh=Wugr73/IPjn/rTdT77tW0QP/fe1mdK3v/eCXGUXYV5k=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dVb7y1+H5bO0X+BlL8v1n/4pQNiL9eMoeBGvb9yhaKaG0frYzScG3AKL79aRylU8o
	 YnYnobKdYmRtQlG7+OovnZhxCVe1YkE6eO+SRIWj1cd25tDp2QwkAFaRKJUvLQfgvF
	 9MbL9YORfQ1Z6vOQxXCbxjTbGGyzxjeW74C5WT9esoblNnL4euat38f275hEwBuLvC
	 cF3gGg0aDvq+z9jQQxgP0HgwOO9WYaGycB6/yWBDyd8xFOW2r+S/Wutc2e53Zu9DmZ
	 Wsecrhs/0sYHbT73236gXfHJ6a/Av6TM5LTtLt2Pp9GjBR9NgGQ4ZlAU69vEBLTNBt
	 RnWMoS6uhOQ1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kw7GrJ1t0s4w; Tue, 30 May 2023 21:14:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57B6441828;
	Tue, 30 May 2023 21:14:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57B6441828
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4371B1BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:14:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11E1C60F17
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:14:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11E1C60F17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uoATiSIckvgm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 21:14:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16C6C60DE5
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 16C6C60DE5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:14:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="335399007"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="335399007"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 14:14:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="850946373"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="850946373"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 14:14:17 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
In-Reply-To: <20230530091948.1408477-2-vladimir.oltean@nxp.com>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
 <20230530091948.1408477-2-vladimir.oltean@nxp.com>
Date: Tue, 30 May 2023 14:14:17 -0700
Message-ID: <87edmxv7x2.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685481263; x=1717017263;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kP3IzRcNnl5fizRI+YuizgSNvrAVapWMHLTUNUcbfpE=;
 b=G/vzxvHQaloucz/Msk0d1oCUPrRTxx+FBuXCJBYEpZnOklNRmiNGcFl7
 jzWa5zfch4wHilwB51i2BtvxBLw9lWkExWsYz4HMqTl2zDqOft76ePewn
 C3So1w2DDPg4+IlUq8t0OGC5a9b4N7bWxEqAs2TVdIuCAimKJ9Kbfnq8a
 EvjqbG6WOYENOEFAzj3bhWTIX4pPmrS1nbP7amQStJ1Uj20k5gDJLZPYz
 F0A75KocyGkG/IbcatQ2OgojAWqej+Q8aF36YfkFZKU1vke6lF+TOQTAZ
 Yxk8wcVSXtR20Om03GLQ1UGOe+PDPNWVPCknS7zIhxqKSOSUdfR2z+jXT
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G/vzxvHQ
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/5] net/sched: taprio: don't
 overwrite "sch" variable in taprio_dump_class_stats()
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

Hi,

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> In taprio_dump_class_stats() we don't need a reference to the root Qdisc
> once we get the reference to the child corresponding to this traffic
> class, so it's okay to overwrite "sch". But in a future patch we will
> need the root Qdisc too, so create a dedicated "child" pointer variable
> to hold the child reference. This also makes the code adhere to a more
> conventional coding style.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---

The patch looks good:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

But I have a suggestion, this "taprio_queue_get() ->
dev_queue->qdisc_sleeping()" dance should have the same result as
calling 'taprio_leaf()'.

I am thinking of using taprio_leaf() here and in taprio_dump_class().
Could be a separate commit.


>  net/sched/sch_taprio.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
> index 76db9a10ef50..d29e6785854d 100644
> --- a/net/sched/sch_taprio.c
> +++ b/net/sched/sch_taprio.c
> @@ -2388,10 +2388,10 @@ static int taprio_dump_class_stats(struct Qdisc *sch, unsigned long cl,
>  	__acquires(d->lock)
>  {
>  	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);
> +	struct Qdisc *child = dev_queue->qdisc_sleeping;
>  
> -	sch = dev_queue->qdisc_sleeping;
> -	if (gnet_stats_copy_basic(d, NULL, &sch->bstats, true) < 0 ||
> -	    qdisc_qstats_copy(d, sch) < 0)
> +	if (gnet_stats_copy_basic(d, NULL, &child->bstats, true) < 0 ||
> +	    qdisc_qstats_copy(d, child) < 0)
>  		return -1;
>  	return 0;
>  }
> -- 
> 2.34.1
>

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
