Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E0B2D1F07
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 01:34:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EAEF87F4F;
	Tue,  8 Dec 2020 00:34:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aCXO+YlXIzKy; Tue,  8 Dec 2020 00:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7BD187F8B;
	Tue,  8 Dec 2020 00:34:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47F721BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 00:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C86987F51
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 00:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eRd+Fp20tBgc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 00:34:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C220887F4F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 00:34:36 +0000 (UTC)
IronPort-SDR: f209YyAM56vr7SLjQuOadypSGJOdxeIAlR/MJBG4LevVxZas8plkZBjEqiIfUIgxck/y/zUY+K
 ehB8tyNClOsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="173952821"
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="173952821"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 16:34:36 -0800
IronPort-SDR: 8dfOMyU6MT4zFO9br4ELZ2frdwyYSd5SfCP0Vffv+gMKu6hNU9/rbsGdTdsc7Rh6t5/A4isCyx
 dO97w7wHDNvA==
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="317459820"
Received: from seherahx-mobl1.amr.corp.intel.com (HELO ellie) ([10.209.17.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 16:34:33 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20201207231230.3avhe6yqklsbxsiz@skbuf>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201205095021.36e1a24d@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
 <87o8j5z0xs.fsf@intel.com> <20201207231230.3avhe6yqklsbxsiz@skbuf>
Date: Mon, 07 Dec 2020 16:34:32 -0800
Message-ID: <874kkxyw2v.fsf@intel.com>
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "m-karicheri2@ti.com" <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Mon, Dec 07, 2020 at 02:49:35PM -0800, Vinicius Costa Gomes wrote:
>> Jakub Kicinski <kuba@kernel.org> writes:
>>
>> > On Tue,  1 Dec 2020 20:53:16 -0800 Vinicius Costa Gomes wrote:
>> >> $ tc qdisc replace dev $IFACE parent root handle 100 taprio \
>> >>       num_tc 3 \
>> >>       map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
>> >>       queues 1@0 1@1 2@2 \
>> >>       base-time $BASE_TIME \
>> >>       sched-entry S 0f 10000000 \
>> >>       preempt 1110 \
>> >>       flags 0x2
>> >>
>> >> The "preempt" parameter is the only difference, it configures which
>> >> queues are marked as preemptible, in this example, queue 0 is marked
>> >> as "not preemptible", so it is express, the rest of the four queues
>> >> are preemptible.
>> >
>> > Does it make more sense for the individual queues to be preemptible
>> > or not, or is it better controlled at traffic class level?
>> > I was looking at patch 2, and 32 queues isn't that many these days..
>> > We either need a larger type there or configure this based on classes.
>>
>> I can set more future proof sizes for expressing the queues, sure, but
>> the issue, I think, is that frame preemption has dimishing returns with
>> link speed: at 2.5G the latency improvements are on the order of single
>> digit microseconds. At greater speeds the improvements are even less
>> noticeable.
>
> You could look at it another way.
> You can enable jumbo frames in your network, and your latency-sensitive
> traffic would not suffer as long as the jumbo frames are preemptible.
>

Speaking of jumbo frame, that's something that the standards are
missing, TSN features + jumbo frames will leave a lot of stuff up to the
implementation.

>> The only adapters that I see that support frame preemtion have 8 queues
>> or less.
>>
>> The idea of configuring frame preemption based on classes is
>> interesting. I will play with it, and see how it looks.
>
> I admit I never understood why you insist on configuring TSN offloads
> per hardware queue and not per traffic class.

So, I am sorry that I wasn't able to fully understand what you were
saying, then.

I always thought that you were thinking more that the driver was
responsible of making the 'traffic class to queue' translation than the
configuration interface for frame preemption to the user (taprio,
mqprio, etc) should be in terms of traffic classes, instead of queues.

My bad.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
