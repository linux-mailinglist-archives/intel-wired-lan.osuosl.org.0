Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C48372DFE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 May 2021 18:24:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC0F840596;
	Tue,  4 May 2021 16:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UQdiChBvVgh2; Tue,  4 May 2021 16:24:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD8804010D;
	Tue,  4 May 2021 16:24:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 61C7E1BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 16:23:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D5CD843B9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 16:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ei1_YoXN34DF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 May 2021 16:23:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19FD182D85
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 16:23:55 +0000 (UTC)
IronPort-SDR: tg5PGuDT2tixJGS+RmN7JbIgxsJv5VpCdSZgF7ZzGEbsKVRPZA+JFf3QEMeNW9i+/2I+dVxUzQ
 MAG1J7YEJzow==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="259304420"
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; d="scan'208";a="259304420"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 09:23:43 -0700
IronPort-SDR: vLlO0j58OwQgXggWIakS23Ay15238a3Ro6s4OpOioQ5Q/+qno9o+z6NbFaXenSUN7rRTcZ6f0T
 A7wKxJPEXxVg==
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; d="scan'208";a="429121950"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.83.22])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 09:23:41 -0700
Date: Tue, 4 May 2021 09:23:40 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Robin Murphy <robin.murphy@arm.com>
Message-ID: <20210504092340.00006c61@intel.com>
In-Reply-To: <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH tip:irq/core v1] genirq: remove
 auto-set of the mask when setting the hint
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
Cc: "juri.lelli@redhat.com" <juri.lelli@redhat.com>,
 "peterz@infradead.org" <peterz@infradead.org>, abelits@marvell.com,
 Ingo Molnar <mingo@kernel.org>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 Marc Zyngier <maz@kernel.org>, "jinyuqi@huawei.com" <jinyuqi@huawei.com>,
 intel-wired-lan@lists.osuosl.org,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Nitesh Lal <nilal@redhat.com>, "frederic@kernel.org" <frederic@kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 "rppt@linux.vnet.ibm.com" <rppt@linux.vnet.ibm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, netdev@vger.kernel.org,
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, jbrandeb@kernel.org,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Robin Murphy wrote:

> On 2021-05-01 03:18, Jesse Brandeburg wrote:
> > It was pointed out by Nitesh that the original work I did in 2014
> > to automatically set the interrupt affinity when requesting a
> > mask is no longer necessary. The kernel has moved on and no
> > longer has the original problem, BUT the original patch
> > introduced a subtle bug when booting a system with reserved or
> > excluded CPUs. Drivers calling this function with a mask value
> > that included a CPU that was currently or in the future
> > unavailable would generally not update the hint.
> > 
> > I'm sure there are a million ways to solve this, but the simplest
> > one is to just remove a little code that tries to force the
> > affinity, as Nitesh has shown it fixes the bug and doesn't seem
> > to introduce immediate side effects.
> 
> Unfortunately, I think there are quite a few other drivers now relying 
> on this behaviour, since they are really using irq_set_affinity_hint() 
> as a proxy for irq_set_affinity(). Partly since the latter isn't 
> exported to modules, but also I have a vague memory of it being said 
> that it's nice to update the user-visible hint to match when the 
> affinity does have to be forced to something specific.
> 
> Robin.

Thanks for your feedback Robin, but there is definitely a bug here that
is being exposed by this code. The fact that people are using this
function means they're all exposed to this bug.

Not sure if you saw, but this analysis from Nitesh explains what
happened chronologically to the kernel w.r.t this code, it's a useful
analysis! [1]

I'd add in addition that irqbalance daemon *stopped* paying attention
to hints quite a while ago, so I'm not quite sure what purpose they
serve.

[1]
https://lore.kernel.org/lkml/CAFki+Lm0W_brLu31epqD3gAV+WNKOJfVDfX2M8ZM__aj3nv9uA@mail.gmail.com/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
