Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6353090B6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jan 2021 00:42:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 832FD874DF;
	Fri, 29 Jan 2021 23:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKj2JhWCll-6; Fri, 29 Jan 2021 23:42:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E513B874AA;
	Fri, 29 Jan 2021 23:42:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26BE41BF36B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 23:42:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0002F2E14E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 23:42:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5zo1pJ+6SVmY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 23:42:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 06CE920358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 23:42:21 +0000 (UTC)
IronPort-SDR: voOJBdULBVSZ3T33B03vVHqbH5OCjqQ6kDu5Bdb5QZfrUUqlNK+sYVzq9985ZLaF7/viSHf5sz
 n3Ta+4XW734w==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="167597133"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="167597133"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 15:42:21 -0800
IronPort-SDR: CkefGfh+LEwuiLDBgw7k8G7FURdIK3z157wbd6ILH+0p6NSygcIjcyI3cs3+y/7VzorsTksM2n
 RC639m9SUVrg==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="370581788"
Received: from ndatiri-mobl.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.145.249])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 15:42:19 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20210129232015.atl4336zqy4ev3bi@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-3-vinicius.gomes@intel.com>
 <20210126000924.jjkjruzmh5lgrkry@skbuf>
 <87wnvvsayz.fsf@vcostago-mobl2.amr.corp.intel.com>
 <20210129232015.atl4336zqy4ev3bi@skbuf>
Date: Fri, 29 Jan 2021 15:42:05 -0800
Message-ID: <87zh0rqpiq.fsf@vcostago-mobl2.amr.corp.intel.com>
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

> On Fri, Jan 29, 2021 at 01:13:24PM -0800, Vinicius Costa Gomes wrote:
>> > Secondly, why should at least one queue be preemptible? What's wrong
>> > with frame preemption being triggered by a tc-taprio window smaller than
>> > the packet size? This can happen regardless of traffic class.
>>
>> It's the opposite, at least one queue needs to be marked
>> express/non-preemptible.
>
> I meant to ask why should at least one queue be express. The second part
> of the question remains valid.
>
>> But as I said above, perhaps this should be handled in a per-driver
>> way. I will remove this from taprio.
>>
>> I think removing this check/limitation from taprio should solve the
>> second part of your question, right?
>
> Nope. Can you point me to either 802.1Q or 802.3 saying that at least
> one priority should go to the express MAC?

After re-reading Anex Q, I know it's informative, and
thinking/remembering things a bit better, it seems that the standard
only defines preemption of express queues/priorities over preemptible
traffic. The standard doesn't talk about preemptible pririoties
preempting other preemptible priorities.

So, if there's no express queue, no preemption is going to happen, so it
shouldn't be enabled, to avoid like an invalid/useless state.

So I am going to take back my previous email: this seems like it's
better to be kept in a centralized place.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
