Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 543F7308FB4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jan 2021 22:59:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ACEBC2E149;
	Fri, 29 Jan 2021 21:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DK24uvmeI+dT; Fri, 29 Jan 2021 21:59:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C23402E145;
	Fri, 29 Jan 2021 21:59:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD30C1BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:59:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF76E2E135
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V16si6iPKhGm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 21:58:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id AFF822044E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:58:59 +0000 (UTC)
IronPort-SDR: WG60hJs7DsVq6gkSyP6Ie3aTcj+wPDJNlV5izEDwQYPQVsDq8ZRzQ+m5BwPtwGN/CvVxgeA+Xr
 1IwyfsViaK5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="179710023"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="179710023"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 13:58:59 -0800
IronPort-SDR: Ckfu4FG46cX4OwLlYNL+ln9IbhPSykz4hh5skl2RsSeSbDOhMxWfVT5a+YFKIhkKPLBTDPelFs
 xe80YN6mYAdg==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="411743435"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.212.193.18])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 13:58:59 -0800
Date: Fri, 29 Jan 2021 13:58:57 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Chris Friesen <chris.friesen@windriver.com>
Message-ID: <20210129135857.000037e3@intel.com>
In-Reply-To: <aa48b21f-c8da-0b9c-b7de-f100069ccba2@windriver.com>
References: <aa48b21f-c8da-0b9c-b7de-f100069ccba2@windriver.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] IRQ affinity not working properly?
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Chris Friesen wrote:

> Hi,
> 
> I have a CentOS 7 linux system with 48 logical CPUs and a number of 
> Intel NICs running the i40e driver.  It was booted with 
> irqaffinity=0-1,24-25 in the kernel boot args, resulting in 
> /proc/irq/default_smp_affinity showing "0000,03000003".   CPUs 2-11 are 
> set as "isolated" in the kernel boot args.  The irqbalance daemon is not 
> running.
> 
> The iavf driver is 3.7.61.20 and the i40e driver is 2.10.19.82
> 
> The problem I'm seeing is that /proc/interrupts shows iavf interrupts on 
> other CPUs than the expected affinity.  For example, here are some 
> interrupts on CPU 4 where I would not expect to see any interrupts given 
> that "cat /proc/irq/<NUM>/smp_affinity_list" reports "0-1,24-25" for all 
> these interrupts.  (Sorry for the line wrapping.)

Hi Chris, I think you're probably running into a long standing kernel
bug, which as far as I know hasn't been fixed. My suspicion is that us setting 
up the affinity_hint and an affinity_mask is somehow bypassing the 
command line setup.

That said, if you would try commenting out this code in the iavf_main.c?

#ifdef HAVE_IRQ_AFFINITY_NOTIFY
                /* register for affinity change notifications */
                q_vector->affinity_notify.notify = iavf_irq_affinity_notify;
                q_vector->affinity_notify.release =
                                                   iavf_irq_affinity_release;
                irq_set_affinity_notifier(irq_num, &q_vector->affinity_notify);
#endif
#ifdef HAVE_IRQ_AFFINITY_HINT
                /* Spread the IRQ affinity hints across online CPUs. Note that
                 * get_cpu_mask returns a mask with a permanent lifetime so
                 * it's safe to use as a hint for irq_set_affinity_hint.
                 */
                cpu = cpumask_local_spread(q_vector->v_idx, -1);
                irq_set_affinity_hint(irq_num, get_cpu_mask(cpu));
#endif /* HAVE_IRQ_AFFINITY_HINT */

And actually I want you to remove any code that refers to 
q_vector->affinity_mask, in all iavf files.

...

> There were IRQs coming in on the "iavf-0000:b5:02.7:mbx" interrupt at 
> roughly 1 per second without any traffic, while the interrupt rate on 
> the "iavf-net1-TxRx-<X>" seemed to be related to traffic.

The continuous IRQs 1 per second are on purpose to flush out any pending
events on the queues, but also usually serve another purpose, which
is to cause an interrupt to allow the interrupt to be moved to the new
mask.
 
> Is this expected?  It seems like the iavf and/or the i40e aren't 
> respecting the configured SMP affinity for the interrupt in question.

Both drivers have the same code as mentioned above. I suspect most of the 
Intel drivers have this problem and no one has run into it before
because the feature isn't used very much?

The other idea I have is that you're running into affinity exhaustion,
which the older kernels silently suffer from. see commit
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=743dac494d61d
It might even backport cleanly! Or you might be able to systemtap that
code to see if it hits.

Please let us know how it goes?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
