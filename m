Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D831D9E2C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 19:49:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2B2588851;
	Tue, 19 May 2020 17:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nd6yhlg8g-H1; Tue, 19 May 2020 17:49:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 412DD88874;
	Tue, 19 May 2020 17:49:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AF661BF57F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 17:49:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0353E86CF5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 17:49:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 23HEq1e-tqWn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 17:49:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AFCB786C7C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 17:49:07 +0000 (UTC)
IronPort-SDR: OH/690SY+8YDj25tmhP8dI/roKFxzYP2rySV/G8gIlCW1ClcXWMiAzPkLLMGmHhpwTO9Z9kY3p
 Y+qAUOQVIzCA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 10:49:05 -0700
IronPort-SDR: MYW1UuulTzlhBMvTgl1szX1qyh5J9CHwu/jTPJeIQLCFA3iFS92wri7b23GBe48OFv0XFwY6xG
 nUT8iY49OnXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="466218150"
Received: from stputhen-mobl1.amr.corp.intel.com (HELO ellie) ([10.209.5.127])
 by fmsmga006.fm.intel.com with ESMTP; 19 May 2020 10:49:05 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Murali Karicheri <m-karicheri2@ti.com>, Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <29959a1a-fc45-6870-fa11-311866b51aa0@ti.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
 <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
 <20200516.151932.575795129235955389.davem@davemloft.net>
 <87wo59oyhr.fsf@intel.com>
 <20200518135613.379f6a63@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87h7wcq4nx.fsf@intel.com> <29959a1a-fc45-6870-fa11-311866b51aa0@ti.com>
Date: Tue, 19 May 2020 10:49:04 -0700
Message-ID: <87ftbvolwv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose.Abreu@synopsys.com, vladimir.oltean@nxp.com, po.liu@nxp.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, olteanv@gmail.com,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Murali Karicheri <m-karicheri2@ti.com> writes:

>> That was the (only?) strong argument in favor of having frame preemption
>> in the TC side when this was last discussed.
>> 
>> We can have a hybrid solution, we can move the express/preemptible per
>> queue map to mqprio/taprio/whatever. And have the more specific
>> configuration knobs, minimum fragment size, etc, in ethtool.
>
> Isn't this a pure h/w feature? FPE is implemented at L2 and involves
> fragments that are only seen by h/w and never at Linux network core
> unlike IP fragments and is transparent to network stack. However it
> enhances priority handling at h/w to the next level by pre-empting 
> existing lower priority traffic to give way to express queue traffic
> and improve latency. So everything happens in h/w. So ethtool makes
> perfect sense here as it is a queue configuration. I agree with Vinicius
> and Vladmir to support this in ethtool instead of TC.

The way I see, the issue that Jakub is pointing here is more of
usability/understandability.

By having the express/preemptible queue mapping in TC, we have the
configuration near where the "priority to queue" mapping happens. That
improves the ease of configuration, makes it easier to spot mistakes,
that kind of thing, all of which are a big plus.

Right now, I am seeing this hybrid approach as a good compromise, we
have the queue settings near to where the kinds of traffic are mapped to
queues, and we have the rest of the hardware configuration in ethtool.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
