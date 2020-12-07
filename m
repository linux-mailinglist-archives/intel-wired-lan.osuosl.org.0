Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AD42D1DB2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 23:49:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 28F5D2E2A4;
	Mon,  7 Dec 2020 22:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DUG8BhyoB4+B; Mon,  7 Dec 2020 22:49:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 19CF92E29C;
	Mon,  7 Dec 2020 22:49:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 99FBB1BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D5462E174
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Re-jLYhFCVnA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 22:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 911AB275A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:49:37 +0000 (UTC)
IronPort-SDR: +qAFKell+d/zfum006g1Muwy4ckv6gCpmWW/rLHVjqKSwJv969a30UjYWPYJazi6zRv2tIUH9V
 4fLhPVf+2rHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="171220274"
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="171220274"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 14:49:37 -0800
IronPort-SDR: ODaUQAZ3BLah67IoOPHBxkxghvSngj6ZE1icJN47RQSI6jfpBzXINHyN680/1x7+uJG0VY1Um6
 fZyEaFblKuKw==
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="370135684"
Received: from seherahx-mobl1.amr.corp.intel.com (HELO ellie) ([10.209.17.196])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 14:49:36 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20201205095021.36e1a24d@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201205095021.36e1a24d@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
Date: Mon, 07 Dec 2020 14:49:35 -0800
Message-ID: <87o8j5z0xs.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/9] ethtool: Add support
 for frame preemption
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski <kuba@kernel.org> writes:

> On Tue,  1 Dec 2020 20:53:16 -0800 Vinicius Costa Gomes wrote:
>> $ tc qdisc replace dev $IFACE parent root handle 100 taprio \
>>       num_tc 3 \
>>       map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
>>       queues 1@0 1@1 2@2 \
>>       base-time $BASE_TIME \
>>       sched-entry S 0f 10000000 \
>>       preempt 1110 \
>>       flags 0x2 
>> 
>> The "preempt" parameter is the only difference, it configures which
>> queues are marked as preemptible, in this example, queue 0 is marked
>> as "not preemptible", so it is express, the rest of the four queues
>> are preemptible.
>
> Does it make more sense for the individual queues to be preemptible 
> or not, or is it better controlled at traffic class level?
> I was looking at patch 2, and 32 queues isn't that many these days..
> We either need a larger type there or configure this based on classes.

I can set more future proof sizes for expressing the queues, sure, but
the issue, I think, is that frame preemption has dimishing returns with
link speed: at 2.5G the latency improvements are on the order of single
digit microseconds. At greater speeds the improvements are even less
noticeable.

The only adapters that I see that support frame preemtion have 8 queues
or less. 

The idea of configuring frame preemption based on classes is
interesting. I will play with it, and see how it looks.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
