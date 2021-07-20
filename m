Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7FC3CF876
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jul 2021 12:57:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A6576083C;
	Tue, 20 Jul 2021 10:57:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OwXrLLLZegfD; Tue, 20 Jul 2021 10:57:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 588186060B;
	Tue, 20 Jul 2021 10:57:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F077D1BF281
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 10:57:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE1B082486
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 10:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PIfE0e_3OSun for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jul 2021 10:57:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39C9F81D47
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 10:57:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B18F600D4;
 Tue, 20 Jul 2021 10:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626778648;
 bh=bdf2hozCtuEnUqdMt6xaxcdfnjHriJn7RXww2E+/On4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=baWqsIyGT5V+m7oB/FnRFSDTAAXKSNw++0r/WdXfyfYRvIFT/6dyYSNmTmjKCh36K
 /ddI3a9+S5yiNai4CFsMlrrcPLR0BVIml6H6tzPIrxDTYSiQCyX45dwrM6xGcjXWo0
 zZK4GnLqAVACej9JZ27JM0oyMJjwFOu9YwwEO4cV7Hn88/3E0IybTVfiX6leFUlZSo
 21L9a6H3CBo3JBWllXxZyLHTaaqPyTOP0OgndmFAjpmkdkamH2zmacjnAuMAsJRIgS
 hglf0VIX7+Ias8+nX1j2knvYpTHsBa96RAAcIFR0s1J0A8KIXDuoAWXyvMf7jEjEys
 6T1Gk3fetpLPA==
Date: Tue, 20 Jul 2021 12:57:02 +0200
From: Jakub Kicinski <kuba@kernel.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <20210720125702.28053dd6@cakuba>
In-Reply-To: <20210719180746.1008665-2-nitesh@redhat.com>
References: <20210719180746.1008665-1-nitesh@redhat.com>
 <20210719180746.1008665-2-nitesh@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4 01/14] genirq: Provide new
 interfaces for affinity hints
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
Cc: juri.lelli@redhat.com, ajit.khaparde@broadcom.com, jassisinghbrar@gmail.com,
 peterz@infradead.org, linux-pci@vger.kernel.org, viresh.kumar@linaro.org,
 _govind@gmx.com, james.smart@broadcom.com, mustafa.ismail@intel.com,
 govind@gmx.com, ley.foon.tan@intel.com, Tushar.Khandelwal@arm.com,
 minlei@redhat.com, ahleihel@redhat.com, mingo@kernel.org, sassmann@redhat.com,
 kabel@kernel.org, sfr@canb.auug.org.au, martin.petersen@oracle.com,
 linux-scsi@vger.kernel.org, borisp@nvidia.com, maz@kernel.org,
 sathya.prakash@broadcom.com, emilne@redhat.com, kashyap.desai@broadcom.com,
 tatyana.e.nikolova@intel.com, chandrakanth.patil@broadcom.com,
 intel-wired-lan@lists.osuosl.org, yongqiang.niu@mediatek.com,
 abelits@marvell.com, nilal@redhat.com, jejb@linux.ibm.com,
 chunkuang.hu@kernel.org, dick.kennedy@broadcom.com, faisal.latif@intel.com,
 suganath-prabu.subramani@broadcom.com, frederic@kernel.org,
 robin.murphy@arm.com, rostedt@goodmis.org, luobin9@huawei.com,
 rppt@linux.vnet.ibm.com, bhelgaas@google.com, tglx@linutronix.de,
 somnath.kotur@broadcom.com, shiraz.saleem@intel.com, ahs3@redhat.com,
 pjwaskiewicz@gmail.com, sreekanth.reddy@broadcom.com,
 sriharsha.basavapatna@broadcom.com, nhorman@tuxdriver.com,
 shivasharan.srikanteshwara@broadcom.com, netdev@vger.kernel.org,
 mtosatti@redhat.com, kheib@redhat.com, linux-kernel@vger.kernel.org,
 tariqt@nvidia.com, stephen@networkplumber.org, sumit.saxena@broadcom.com,
 poros@redhat.com, bjorn.andersson@linaro.org, thenzl@redhat.com,
 linux-api@vger.kernel.org, baolin.wang7@gmail.com, saeedm@nvidia.com,
 akpm@linux-foundation.org, jkc@redhat.com, jbrandeb@kernel.org,
 davem@davemloft.net, leonro@nvidia.com, benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 19 Jul 2021 14:07:33 -0400, Nitesh Narayan Lal wrote:
> From: Thomas Gleixner <tglx@linutronix.de>
> 
> The discussion about removing the side effect of irq_set_affinity_hint() of
> actually applying the cpumask (if not NULL) as affinity to the interrupt,
> unearthed a few unpleasantries:
> 
>   1) The modular perf drivers rely on the current behaviour for the very
>      wrong reasons.
> 
>   2) While none of the other drivers prevents user space from changing
>      the affinity, a cursorily inspection shows that there are at least
>      expectations in some drivers.
> 
> #1 needs to be cleaned up anyway, so that's not a problem
> 
> #2 might result in subtle regressions especially when irqbalanced (which
>    nowadays ignores the affinity hint) is disabled.
> 
> Provide new interfaces:
> 
>   irq_update_affinity_hint()  - Only sets the affinity hint pointer
>   irq_set_affinity_and_hint() - Set the pointer and apply the affinity to
>                                 the interrupt
> 
> Make irq_set_affinity_hint() a wrapper around irq_apply_affinity_hint() and
> document it to be phased out.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> Link: https://lore.kernel.org/r/20210501021832.743094-1-jesse.brandeburg@intel.com

include/linux/interrupt.h:343: warning: Function parameter or member 'm' not described in 'irq_update_affinity_hint'
include/linux/interrupt.h:343: warning: Excess function parameter 'cpumask' description in 'irq_update_affinity_hint'
include/linux/interrupt.h:358: warning: Function parameter or member 'm' not described in 'irq_set_affinity_and_hint'
include/linux/interrupt.h:358: warning: Excess function parameter 'cpumask' description in 'irq_set_affinity_and_hint'
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
