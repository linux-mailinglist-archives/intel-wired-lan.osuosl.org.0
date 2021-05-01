Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 619A53704FA
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 May 2021 04:19:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDCA5403A0;
	Sat,  1 May 2021 02:18:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EzIt3C76uqKI; Sat,  1 May 2021 02:18:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D6C74040A;
	Sat,  1 May 2021 02:18:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 280C01C11CE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 May 2021 02:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23444850F8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 May 2021 02:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WXpU4YYbqH5F for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 May 2021 02:18:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 341D9850F5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 May 2021 02:18:50 +0000 (UTC)
IronPort-SDR: ARFCpOSav+DjbDTit8dVJnaYkVKXIsF6zkIb6PYtQGGZQ+8gFc77HYWH+bK+jYfm7lCCmJVezP
 HpkLLcgXwFKQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="261356858"
X-IronPort-AV: E=Sophos;i="5.82,264,1613462400"; d="scan'208";a="261356858"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 19:18:50 -0700
IronPort-SDR: JlpZ7xyrmFpR/5vTZHzOHISvtpryqsXmldHmo04zipfTYW/bB4m2M5kAjy/pZyyKFydt34Y8NK
 5ziTmsOj11yQ==
X-IronPort-AV: E=Sophos;i="5.82,264,1613462400"; d="scan'208";a="467070538"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 19:18:50 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>
Date: Fri, 30 Apr 2021 19:18:32 -0700
Message-Id: <20210501021832.743094-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH tip:irq/core v1] genirq: remove auto-set
 of the mask when setting the hint
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
 "jinyuqi@huawei.com" <jinyuqi@huawei.com>, intel-wired-lan@lists.osuosl.org,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Nitesh Lal <nilal@redhat.com>, "frederic@kernel.org" <frederic@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 "rppt@linux.vnet.ibm.com" <rppt@linux.vnet.ibm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, netdev@vger.kernel.org,
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, jbrandeb@kernel.org,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It was pointed out by Nitesh that the original work I did in 2014
to automatically set the interrupt affinity when requesting a
mask is no longer necessary. The kernel has moved on and no
longer has the original problem, BUT the original patch
introduced a subtle bug when booting a system with reserved or
excluded CPUs. Drivers calling this function with a mask value
that included a CPU that was currently or in the future
unavailable would generally not update the hint.

I'm sure there are a million ways to solve this, but the simplest
one is to just remove a little code that tries to force the
affinity, as Nitesh has shown it fixes the bug and doesn't seem
to introduce immediate side effects.

While I'm here, introduce a kernel-doc for the hint function.

Ref: https://lore.kernel.org/lkml/CAFki+L=_dd+JgAR12_eBPX0kZO2_6=1dGdgkwHE=u=K6chMeLQ@mail.gmail.com/
Cc: netdev@vger.kernel.org
Fixes: 4fe7ffb7e17c ("genirq: Fix null pointer reference in irq_set_affinity_hint()")
Fixes: e2e64a932556 ("genirq: Set initial affinity in irq_set_affinity_hint()")
Reported-by: Nitesh Lal <nilal@redhat.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---

!!! NOTE: Compile tested only, would appreciate feedback

---
 kernel/irq/manage.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
index e976c4927b25..a31df64662d5 100644
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -456,6 +456,16 @@ int __irq_set_affinity(unsigned int irq, const struct cpumask *mask, bool force)
 	return ret;
 }
 
+/**
+ * 	irq_set_affinity_hint - set the hint for an irq
+ *	@irq:	Interrupt for which to set the hint
+ *	@m:	Mask to indicate which CPUs to suggest for the interrupt, use
+ *		NULL here to indicate to clear the value.
+ *
+ *	Use this function to recommend which CPU should handle the
+ *	interrupt to any userspace that uses /proc/irq/nn/smp_affinity_hint
+ *	in order to align interrupts. Pass NULL as the mask to clear the hint.
+ */
 int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m)
 {
 	unsigned long flags;
@@ -465,9 +475,6 @@ int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m)
 		return -EINVAL;
 	desc->affinity_hint = m;
 	irq_put_desc_unlock(desc, flags);
-	/* set the initial affinity to prevent every interrupt being on CPU0 */
-	if (m)
-		__irq_set_affinity(irq, m, false);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(irq_set_affinity_hint);

base-commit: 765822e1569a37aab5e69736c52d4ad4a289eba6
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
