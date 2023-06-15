Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83642730BF1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 02:06:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A55283C4B;
	Thu, 15 Jun 2023 00:06:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A55283C4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686787595;
	bh=jcEEa2hLpeyHDPzaxRdszf/5GOxB0W+6CR6Ee/iMS9I=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JpHZgeQNHSTyREsrvL4meu17yiHPY2mUBYYU+oiIJ4uAv5Hbs0zF4uafwVX0PN/s1
	 vKut642DXi8uP/i7YmHCgDkWwKAMXn7tB9/Wmc4eqCeMH+7tjPIikmhlTwQiyBqcVp
	 YqNPFYdcW/W2oWWTSgbgKvQBClKBDiW8XRg3q72qEKaqYaDxmdPWRHkOHhQ4yi8sQQ
	 u7w+wrLTPtg7iklABPRB6SC2VwTfE6pTtJ4bXdXk+x5UeBYKDIoyMC6BPqpplQCSJM
	 ERHlfCmfpOvhGaDWm5l5rxc5pbtv9/erpXRNPHd/ypLZvps/ZjUQlwecmMNQjiniN3
	 KUF39m5Yms/jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tRRDmTGrfQ6Y; Thu, 15 Jun 2023 00:06:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EFC583C48;
	Thu, 15 Jun 2023 00:06:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EFC583C48
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E87E1BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 00:06:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6413D41E7A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 00:06:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6413D41E7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IuxTNNaFJiIs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 00:06:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A22041E76
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A22041E76
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 00:06:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="424658780"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="424658780"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 17:06:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="856706141"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="856706141"
Received: from gjgambo-mobl2.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.235.28])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 17:06:24 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
In-Reply-To: <20230613215440.2465708-8-vladimir.oltean@nxp.com>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
 <20230613215440.2465708-8-vladimir.oltean@nxp.com>
Date: Wed, 14 Jun 2023 17:06:24 -0700
Message-ID: <877cs5twqn.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686787588; x=1718323588;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=djJPb93h9IgIoHTp34Q6aT2YGUU7mv3dQuXgsAsIWCM=;
 b=TqSRuzsT4GNXfH04KPx1sb7FYTjAoqt9P1lW6X32PJ03p8CjiBaxYLBa
 mLgiZSriFg+/F4O3v2U8abllNuZDq/qyza1u55n2/srQGKEvL2SkdWvXj
 wMmjdXxWFPvtqpZmUVd83zZM+WPD8DfPBS9AqXmgmqwlAgw7V2+vyLpoj
 +vToIBzGC6AWq8yUQljwCufBktQr6jG/6gJj85OmnMB4NOHp05cr+sQmE
 79gZOkNf4XE9977e2J3YszFR8GwOcgAr2e/H7FIiXmmkVd7uIL3Pzdsww
 iLXIKzB84OD3ZAg9DANms1gOZmzvc3KHzAC0y/f2tXyuhqFtTXshTgGNM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TqSRuzsT
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 7/9] net: netdevsim: mimic
 tc-taprio offload
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> To be able to use netdevsim for tc-testing with an offloaded tc-taprio
> schedule, it needs to report a PTP clock (which it now does), and to
> accept ndo_setup_tc(TC_SETUP_QDISC_TAPRIO) calls.
>
> Since netdevsim has no packet I/O, this doesn't do anything intelligent,
> it only allows taprio offload code paths to go through some level of
> automated testing.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> v1->v2: patch is new
>
>  drivers/net/netdevsim/netdev.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>
> diff --git a/drivers/net/netdevsim/netdev.c b/drivers/net/netdevsim/netdev.c
> index 58cd51de5b79..e26be4bd0d90 100644
> --- a/drivers/net/netdevsim/netdev.c
> +++ b/drivers/net/netdevsim/netdev.c
> @@ -209,6 +209,31 @@ static int nsim_set_vf_link_state(struct net_device *dev, int vf, int state)
>  	return 0;
>  }
>  
> +static void nsim_taprio_stats(struct tc_taprio_qopt_stats *stats)
> +{
> +	stats->window_drops = 0;
> +	stats->tx_overruns = 0;
> +}
> +
> +static int nsim_setup_tc_taprio(struct net_device *dev,
> +				struct tc_taprio_qopt_offload *offload)
> +{
> +	int err = 0;
> +
> +	switch (offload->cmd) {
> +	case TAPRIO_CMD_REPLACE:
> +	case TAPRIO_CMD_DESTROY:
> +		break;

I was thinking about how useful would proper validation of the
parameters be? Thinking that we could detect "driver API" breakages
earlier, and we want it documented that the drivers should check for the
things that it supports.

Makes sense?

> +	case TAPRIO_CMD_STATS:
> +		nsim_taprio_stats(&offload->stats);
> +		break;
> +	default:
> +		err = -EOPNOTSUPP;
> +	}
> +
> +	return err;
> +}
> +
>  static LIST_HEAD(nsim_block_cb_list);
>  
>  static int
> @@ -217,6 +242,8 @@ nsim_setup_tc(struct net_device *dev, enum tc_setup_type type, void *type_data)
>  	struct netdevsim *ns = netdev_priv(dev);
>  
>  	switch (type) {
> +	case TC_SETUP_QDISC_TAPRIO:
> +		return nsim_setup_tc_taprio(dev, type_data);
>  	case TC_SETUP_BLOCK:
>  		return flow_block_cb_setup_simple(type_data,
>  						  &nsim_block_cb_list,
> -- 
> 2.34.1
>

Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
