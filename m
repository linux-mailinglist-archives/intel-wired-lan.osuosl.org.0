Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C482076BBEE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 20:07:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BB97605AF;
	Tue,  1 Aug 2023 18:07:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BB97605AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690913220;
	bh=TgFgFM/tGzOO6UzA710wDQuKIjKz6J5ISQhF3UKP16o=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wpKM/P7Ut66mjrk+REgpnPQgYZU8jvW6xkDkf7tDchfX3EdY10A5b3PUy1zx/EIaH
	 05eAB6WjsCLPqTFIs52FPb8iEBPN1YOGhEcwMI6MmdoCokn+UwzUizmyC7UjsBoebF
	 ew2AoVpRlh+0ZCqlmOHJKUCqiAyrjxZjVabSvE5BMuqULGBEN55wxnOzKlhhzLdTIY
	 qBhHUKOym5AM/UUrMQkC3JJqMlVOg5KqVrlvjlTFNWtP1SmgXcYT/FH3jUh5UeagKy
	 ch+JDXEmWSFMjSLfa172WqPSR7Xr93tgNjS6ckX7O+AllGMGnyHg6k+9k+sCmsLJ1M
	 Cqz2w2YnSj3qA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sGpV4wi9eOZ7; Tue,  1 Aug 2023 18:06:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A55F60E0D;
	Tue,  1 Aug 2023 18:06:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A55F60E0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 80DE71BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:06:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 080564024D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:06:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 080564024D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CoFIOR89Hld2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 18:06:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1566740940
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:06:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1566740940
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="348979339"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="348979339"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 11:06:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="722564294"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="722564294"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 11:06:46 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20230801174347.gtmxoqybhvbbl2rg@skbuf>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
 <20230613215440.2465708-8-vladimir.oltean@nxp.com>
 <877cs5twqn.fsf@intel.com> <20230801164534.2nklcql2nh6x6p7y@skbuf>
 <87o7jq64s4.fsf@intel.com> <20230801174347.gtmxoqybhvbbl2rg@skbuf>
Date: Tue, 01 Aug 2023 11:06:46 -0700
Message-ID: <87il9y63ih.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690913209; x=1722449209;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ve0GLrNyb6qus8tJyRujyYE4bCPvWKsCpTU0sMope34=;
 b=PGv25Z7YJoUXRJ4+zvjdC9AXCxnObLB972WlTDpqA9u6vVTRL7sjIN40
 sCG9DsJrDUVWAIm2IUeqKeKqyhoWpdx3xeY3WuETLVM0HeIQLjJ3fDBhJ
 xjnqD/Lo/VqvM7cP/Xo293nxc+eXNX8yzOgd9o5irlv51oPk3WVPWbDDA
 GYOpydZxmI4cRCAZ2Wc7lBk5vbcQzONsfiBlQKBEd/yrOiOIhXdKApD5Z
 0Y7IbQ4a6MDJi7n2v7+bpNEUt7jHTD7D1y/nH5n3nqf0jaK9MJr6055Sr
 VgeZsi7+k6NPOSwXY9bsUiC9BJvkMQRQqH5+W58X5v0gXHtTfvL1adFfU
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PGv25Z7Y
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
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
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

> On Tue, Aug 01, 2023 at 10:39:23AM -0700, Vinicius Costa Gomes wrote:
>> Hi Vladimir,
>> 
>> Vladimir Oltean <vladimir.oltean@nxp.com> writes:
>> 
>> > On Wed, Jun 14, 2023 at 05:06:24PM -0700, Vinicius Costa Gomes wrote:
>> >> > +static int nsim_setup_tc_taprio(struct net_device *dev,
>> >> > +				struct tc_taprio_qopt_offload *offload)
>> >> > +{
>> >> > +	int err = 0;
>> >> > +
>> >> > +	switch (offload->cmd) {
>> >> > +	case TAPRIO_CMD_REPLACE:
>> >> > +	case TAPRIO_CMD_DESTROY:
>> >> > +		break;
>> >> 
>> >> I was thinking about how useful would proper validation of the
>> >> parameters be? Thinking that we could detect "driver API" breakages
>> >> earlier, and we want it documented that the drivers should check for the
>> >> things that it supports.
>> >> 
>> >> Makes sense?
>> >
>> > Sorry, I lack imagination as to what the netdevsim driver may check for.
>> > The taprio offload parameters should always be valid, properly speaking,
>> > otherwise the Qdisc wouldn't be passing them on to the driver. At least
>> > that would be the intention. The rest are hardware specific checks for
>> > hardware specific limitations. Here there is no hardware.
>> >
>> 
>> Trying to remember what was going through my mind when I said that.
>> 
>> What I seem to recall is something that would help us "keep honest":
>> I was worrying about someone (perhaps myself ;-) sneaking a new feature
>> in taprio and forgetting to update other drivers.
>> 
>> I thought that adding a check for the existing parameters would help
>> detect those kind of things. If anything unknown was there in the
>> offload struct, netdevsim would complain loudly.
>> 
>> Perhaps I was worrying too much. And the way to solve that is to keep
>> active attention against that during review.
>
> Ok, so I'm not making any change to the patch set as a result of this
> comment, would you agree?

Agreed.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
