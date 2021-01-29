Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71810308FA5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jan 2021 22:57:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EF00586A72;
	Fri, 29 Jan 2021 21:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SSUM7Y5VfKj2; Fri, 29 Jan 2021 21:57:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C91986A88;
	Fri, 29 Jan 2021 21:57:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A6EF91BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:57:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A270E872BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WuQO6EBiSQbL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 21:57:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2CBAE87248
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:57:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 280F564E0C;
 Fri, 29 Jan 2021 21:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611957423;
 bh=JFXcp5hcRzeOdQmARynw+e5iZvxPrVy9IZ5Fz2O2o1Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UbcrEIAjID8butS8l1CXsVi68aW2+EnT/corLsU3SEhN5fYHWWB98OLBVyWkVJjIv
 sdD6D5KnoSxV1zOTx4LGfZt+6UijYId5QYHrjzVvG3nPW+xylFiYEJfXxQgqUtfxdX
 s1t1mra8GM3NVV8tCL0PlmCAoKvy6FzdhYkqtN92J8H5NoJEuSHobqUIzQc340gEBH
 CxtaXZW6ZdrW1rXfA2ZgAF/VpbHCbiJpIa+97G5AHMuFeLrkazvIgJo2vOPamUwjAM
 GOdVhH9uSKFtJfuAb/cgwkaDiINWlgrFKsv7ET467GbO2ggqmW3b9BBdIYqZzZgHvK
 Og/FsDcRQBTBw==
Date: Fri, 29 Jan 2021 13:57:02 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210129135702.0f8cf702@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <87wnvvsayz.fsf@vcostago-mobl2.amr.corp.intel.com>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-3-vinicius.gomes@intel.com>
 <20210126000924.jjkjruzmh5lgrkry@skbuf>
 <87wnvvsayz.fsf@vcostago-mobl2.amr.corp.intel.com>
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
 Vladimir Oltean <vladimir.oltean@nxp.com>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 29 Jan 2021 13:13:24 -0800 Vinicius Costa Gomes wrote:
> Vladimir Oltean <vladimir.oltean@nxp.com> writes:
> 
> > On Fri, Jan 22, 2021 at 02:44:47PM -0800, Vinicius Costa Gomes wrote:  
> >> +	/* It's valid to enable frame preemption without any kind of
> >> +	 * offloading being enabled, so keep it separated.
> >> +	 */
> >> +	if (tb[TCA_TAPRIO_ATTR_PREEMPT_TCS]) {
> >> +		u32 preempt = nla_get_u32(tb[TCA_TAPRIO_ATTR_PREEMPT_TCS]);
> >> +		struct tc_preempt_qopt_offload qopt = { };
> >> +
> >> +		if (preempt == U32_MAX) {
> >> +			NL_SET_ERR_MSG(extack, "At least one queue must be not be preemptible");
> >> +			err = -EINVAL;
> >> +			goto free_sched;
> >> +		}
> >> +
> >> +		qopt.preemptible_queues = tc_map_to_queue_mask(dev, preempt);
> >> +
> >> +		err = dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT,
> >> +						    &qopt);
> >> +		if (err)
> >> +			goto free_sched;
> >> +
> >> +		q->preemptible_tcs = preempt;
> >> +	}
> >> +  
> >
> > First I'm interested in the means: why check for preempt == U32_MAX when
> > you determine that all traffic classes are preemptible? What if less
> > than 32 traffic classes are used by the netdev? The check will be
> > bypassed, won't it?  
> 
> Good catch :-)
> 
> I wanted to have this (at least one express queue) handled in a
> centralized way, but perhaps this should be handled best per driver.

Centralized is good. Much easier than reviewing N drivers to make sure
they all behave the same, and right.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
