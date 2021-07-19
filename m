Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 802523CEAD7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jul 2021 20:10:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD508607BC;
	Mon, 19 Jul 2021 18:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WFu_7p9k4IzZ; Mon, 19 Jul 2021 18:10:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A268A605E9;
	Mon, 19 Jul 2021 18:10:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB22D1BF33A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 18:08:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3F76605C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 18:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jmtg5kG26hVz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jul 2021 18:08:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8571C60593
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 18:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626718099;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=v4yUPdtpOJEcweWgkTfPnmAZIWcrOmFAWUYkxKtZ/fo=;
 b=ZoD7mC58Q04TVSAa6m/1jyIEOAPg6XEcuL9QsxPXK+mIMSNRcHLDJ9xZ/cOF3BMCfEIDBB
 wwEgrWZsabxQ5uQw764Dhgz8ob/npXbUE6bvJ0omkQaanh2Z/aGsbeyBXbAiumYqtciajq
 cymd/pnC7seRNqlAjKMPM9YA4fid1K4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-8B29cIVyNfyHOQwPmQ-lZA-1; Mon, 19 Jul 2021 14:08:16 -0400
X-MC-Unique: 8B29cIVyNfyHOQwPmQ-lZA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 209C5192D785;
 Mon, 19 Jul 2021 18:08:10 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3D40E610A8;
 Mon, 19 Jul 2021 18:08:05 +0000 (UTC)
From: Nitesh Narayan Lal <nitesh@redhat.com>
To: linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-api@vger.kernel.org, linux-pci@vger.kernel.org, tglx@linutronix.de,
 jesse.brandeburg@intel.com, robin.murphy@arm.com, mtosatti@redhat.com,
 mingo@kernel.org, jbrandeb@kernel.org, frederic@kernel.org,
 juri.lelli@redhat.com, abelits@marvell.com, bhelgaas@google.com,
 rostedt@goodmis.org, peterz@infradead.org, davem@davemloft.net,
 akpm@linux-foundation.org, sfr@canb.auug.org.au,
 stephen@networkplumber.org, rppt@linux.vnet.ibm.com,
 chris.friesen@windriver.com, maz@kernel.org, nhorman@tuxdriver.com,
 pjwaskiewicz@gmail.com, sassmann@redhat.com, thenzl@redhat.com,
 kashyap.desai@broadcom.com, sumit.saxena@broadcom.com,
 shivasharan.srikanteshwara@broadcom.com, sathya.prakash@broadcom.com,
 sreekanth.reddy@broadcom.com, suganath-prabu.subramani@broadcom.com,
 james.smart@broadcom.com, dick.kennedy@broadcom.com, jkc@redhat.com,
 faisal.latif@intel.com, shiraz.saleem@intel.com, tariqt@nvidia.com,
 ahleihel@redhat.com, kheib@redhat.com, borisp@nvidia.com,
 saeedm@nvidia.com, benve@cisco.com, govind@gmx.com,
 jassisinghbrar@gmail.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 nilal@redhat.com, tatyana.e.nikolova@intel.com, mustafa.ismail@intel.com,
 ahs3@redhat.com, leonro@nvidia.com, chandrakanth.patil@broadcom.com,
 bjorn.andersson@linaro.org, chunkuang.hu@kernel.org,
 yongqiang.niu@mediatek.com, baolin.wang7@gmail.com, poros@redhat.com,
 minlei@redhat.com, emilne@redhat.com, jejb@linux.ibm.com,
 martin.petersen@oracle.com, _govind@gmx.com, ley.foon.tan@intel.com,
 kabel@kernel.org, viresh.kumar@linaro.org, Tushar.Khandelwal@arm.com,
 luobin9@huawei.com
Date: Mon, 19 Jul 2021 14:07:33 -0400
Message-Id: <20210719180746.1008665-2-nitesh@redhat.com>
In-Reply-To: <20210719180746.1008665-1-nitesh@redhat.com>
References: <20210719180746.1008665-1-nitesh@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nitesh@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Mon, 19 Jul 2021 18:10:27 +0000
Subject: [Intel-wired-lan] [PATCH v4 01/14] genirq: Provide new interfaces
 for affinity hints
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Thomas Gleixner <tglx@linutronix.de>

The discussion about removing the side effect of irq_set_affinity_hint() of
actually applying the cpumask (if not NULL) as affinity to the interrupt,
unearthed a few unpleasantries:

  1) The modular perf drivers rely on the current behaviour for the very
     wrong reasons.

  2) While none of the other drivers prevents user space from changing
     the affinity, a cursorily inspection shows that there are at least
     expectations in some drivers.

#1 needs to be cleaned up anyway, so that's not a problem

#2 might result in subtle regressions especially when irqbalanced (which
   nowadays ignores the affinity hint) is disabled.

Provide new interfaces:

  irq_update_affinity_hint()  - Only sets the affinity hint pointer
  irq_set_affinity_and_hint() - Set the pointer and apply the affinity to
                                the interrupt

Make irq_set_affinity_hint() a wrapper around irq_apply_affinity_hint() and
document it to be phased out.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
Link: https://lore.kernel.org/r/20210501021832.743094-1-jesse.brandeburg@intel.com
---
 include/linux/interrupt.h | 53 ++++++++++++++++++++++++++++++++++++++-
 kernel/irq/manage.c       |  8 +++---
 2 files changed, 56 insertions(+), 5 deletions(-)

diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
index 2ed65b01c961..bd25ba029c68 100644
--- a/include/linux/interrupt.h
+++ b/include/linux/interrupt.h
@@ -328,7 +328,46 @@ extern int irq_force_affinity(unsigned int irq, const struct cpumask *cpumask);
 extern int irq_can_set_affinity(unsigned int irq);
 extern int irq_select_affinity(unsigned int irq);
 
-extern int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m);
+extern int __irq_apply_affinity_hint(unsigned int irq, const struct cpumask *m,
+				     bool setaffinity);
+
+/**
+ * irq_update_affinity_hint - Update the affinity hint
+ * @irq:	Interrupt to update
+ * @cpumask:	cpumask pointer (NULL to clear the hint)
+ *
+ * Updates the affinity hint, but does not change the affinity of the interrupt.
+ */
+static inline int
+irq_update_affinity_hint(unsigned int irq, const struct cpumask *m)
+{
+	return __irq_apply_affinity_hint(irq, m, false);
+}
+
+/**
+ * irq_set_affinity_and_hint - Update the affinity hint and apply the provided
+ *			     cpumask to the interrupt
+ * @irq:	Interrupt to update
+ * @cpumask:	cpumask pointer (NULL to clear the hint)
+ *
+ * Updates the affinity hint and if @cpumask is not NULL it applies it as
+ * the affinity of that interrupt.
+ */
+static inline int
+irq_set_affinity_and_hint(unsigned int irq, const struct cpumask *m)
+{
+	return __irq_apply_affinity_hint(irq, m, true);
+}
+
+/*
+ * Deprecated. Use irq_update_affinity_hint() or irq_set_affinity_and_hint()
+ * instead.
+ */
+static inline int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m)
+{
+	return irq_set_affinity_and_hint(irq, m);
+}
+
 extern int irq_update_affinity_desc(unsigned int irq,
 				    struct irq_affinity_desc *affinity);
 
@@ -360,6 +399,18 @@ static inline int irq_can_set_affinity(unsigned int irq)
 
 static inline int irq_select_affinity(unsigned int irq)  { return 0; }
 
+static inline int irq_update_affinity_hint(unsigned int irq,
+					   const struct cpumask *m)
+{
+	return -EINVAL;
+}
+
+static inline int irq_set_affinity_and_hint(unsigned int irq,
+					    const struct cpumask *m)
+{
+	return -EINVAL;
+}
+
 static inline int irq_set_affinity_hint(unsigned int irq,
 					const struct cpumask *m)
 {
diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
index ef30b4762947..837b63e63111 100644
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -487,7 +487,8 @@ int irq_force_affinity(unsigned int irq, const struct cpumask *cpumask)
 }
 EXPORT_SYMBOL_GPL(irq_force_affinity);
 
-int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m)
+int __irq_apply_affinity_hint(unsigned int irq, const struct cpumask *m,
+			      bool setaffinity)
 {
 	unsigned long flags;
 	struct irq_desc *desc = irq_get_desc_lock(irq, &flags, IRQ_GET_DESC_CHECK_GLOBAL);
@@ -496,12 +497,11 @@ int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m)
 		return -EINVAL;
 	desc->affinity_hint = m;
 	irq_put_desc_unlock(desc, flags);
-	/* set the initial affinity to prevent every interrupt being on CPU0 */
-	if (m)
+	if (m && setaffinity)
 		__irq_set_affinity(irq, m, false);
 	return 0;
 }
-EXPORT_SYMBOL_GPL(irq_set_affinity_hint);
+EXPORT_SYMBOL_GPL(__irq_apply_affinity_hint);
 
 static void irq_affinity_notify(struct work_struct *work)
 {
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
