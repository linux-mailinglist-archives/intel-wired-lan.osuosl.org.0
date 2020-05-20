Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B00A41DC219
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2020 00:35:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F6D585F8E;
	Wed, 20 May 2020 22:35:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id On1ycQy4rGnb; Wed, 20 May 2020 22:35:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6494A86DEC;
	Wed, 20 May 2020 22:35:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 894771BF475
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 22:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8468E88BCD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 22:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sDS4FpJhpLnl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 22:35:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8DE1C88BC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 22:35:45 +0000 (UTC)
IronPort-SDR: 0ISto4b5ANYdnXY2vRJ4DVR/2NQHoCoxOtswpqLbILM9BbDV6V7hN1pS7SrncVq6KX8zEdaiUc
 nF5lm58lvP7Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 15:35:44 -0700
IronPort-SDR: ZEJSJqmURq3x/rur5ku7fc6VeKIe7MNloL9OorldYn2IJaY6dNX5V6iSf7hr/T6eqrWC7JuSuM
 yn/Sv0mTKxBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466694791"
Received: from alopezch-mobl.amr.corp.intel.com (HELO ellie) ([10.213.162.205])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 15:35:44 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Andre Guedes <andre.guedes@intel.com>, Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <159001094525.59702.8769665430201911136@sdkini-mobl1.amr.corp.intel.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
 <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
 <20200516.151932.575795129235955389.davem@davemloft.net>
 <87wo59oyhr.fsf@intel.com>
 <20200518135613.379f6a63@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87h7wcq4nx.fsf@intel.com>
 <20200518152259.29d2e3c7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87blmkq1y3.fsf@intel.com>
 <20200518160906.40e9d8bb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <159001094525.59702.8769665430201911136@sdkini-mobl1.amr.corp.intel.com>
Date: Wed, 20 May 2020 15:35:44 -0700
Message-ID: <874ksamdz3.fsf@intel.com>
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
 m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 olteanv@gmail.com, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Andre Guedes <andre.guedes@intel.com> writes:

>> If standard defines it as per-MAC and we can reasonably expect vendors
>> won't try to "add value" and make it per queue (unlikely here AFAIU),
>> then for this part ethtool configuration seems okay to me.
>
> Before we move forward with this hybrid approach, let's recap a few points that
> we discussed in the previous thread and make sure it addresses them
> properly.

Thanks for bringing them up.

>
> 1) Frame Preemption (FP) can be enabled without EST, as described in IEEE
> 802.1Q. In this case, the user has to create a dummy EST schedule in taprio
> just to be able to enable FP, which doesn't look natural.

What I meant by "dummy" schedule, is to configure taprio without
specifying any "sched-entry". And since we have support for adding
schedules during runtime, this might be even useful in general.

>
> 2) Mpqrio already looks overloaded. Besides mapping traffic classes into
> hardware queues, it also supports different modes and traffic shaping. Do we
> want to add yet another setting to it?

I also don't see this as a problem. The parameters that mqprio has carry
a lot of information, but the number of them is not that big.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
