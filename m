Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A74F27B4CE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 20:48:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD21620107;
	Mon, 28 Sep 2020 18:48:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yHkW8+EXYozj; Mon, 28 Sep 2020 18:48:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A958204CE;
	Mon, 28 Sep 2020 18:48:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DD8B1BF362
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:36:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 73062204C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:36:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YI4L32DeV1Vg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 18:36:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by silver.osuosl.org (Postfix) with ESMTPS id C5622204CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:36:22 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601318181;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:in-reply-to:in-reply-to:references:references;
 bh=9oz+ynoTvhiufuVyMQ1xRlRqNWLd2L6kBLmgTWRX5ss=;
 b=Ygcw0dGRLe/e3XgOOe7GEKbOi33+SmaqafwCUcO1dA69FEVi4WDYJv6GaB8TM3UCP34hBz
 9pqAEQf4jHS35m8znmXpPvOXUEhrpWrj7L0SSeSd6impO8FlzNh69wycCKCfriBjA4vW8i
 fXy/oBzoTgmDSJqjBgXXaYDP5cCQQaA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-498-vfI2srfRPH2G4PSp-PI-ng-1; Mon, 28 Sep 2020 14:36:16 -0400
X-MC-Unique: vfI2srfRPH2G4PSp-PI-ng-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C434585C732;
 Mon, 28 Sep 2020 18:36:13 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 084E860C11;
 Mon, 28 Sep 2020 18:36:11 +0000 (UTC)
From: Nitesh Narayan Lal <nitesh@redhat.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 frederic@kernel.org, mtosatti@redhat.com, sassmann@redhat.com,
 jesse.brandeburg@intel.com, lihong.yang@intel.com, helgaas@kernel.org,
 nitesh@redhat.com, jeffrey.t.kirsher@intel.com, jacob.e.keller@intel.com,
 jlelli@redhat.com, hch@infradead.org, bhelgaas@google.com,
 mike.marciniszyn@intel.com, dennis.dalessandro@intel.com,
 thomas.lendacky@amd.com, jiri@nvidia.com, mingo@redhat.com,
 peterz@infradead.org, juri.lelli@redhat.com, vincent.guittot@linaro.org,
 lgoncalv@redhat.com
Date: Mon, 28 Sep 2020 14:35:29 -0400
Message-Id: <20200928183529.471328-5-nitesh@redhat.com>
In-Reply-To: <20200928183529.471328-1-nitesh@redhat.com>
References: <20200928183529.471328-1-nitesh@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mailman-Approved-At: Mon, 28 Sep 2020 18:48:47 +0000
Subject: [Intel-wired-lan] [PATCH v4 4/4] PCI: Limit pci_alloc_irq_vectors()
 to housekeeping CPUs
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If we have isolated CPUs dedicated for use by real-time tasks, we try to
move IRQs to housekeeping CPUs from the userspace to reduce latency
overhead on the isolated CPUs.

If we allocate too many IRQ vectors, moving them all to housekeeping CPUs
may exceed per-CPU vector limits.

When we have isolated CPUs, limit the number of vectors allocated by
pci_alloc_irq_vectors() to the minimum number required by the driver, or
to one per housekeeping CPU if that is larger.

Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
---
 drivers/pci/msi.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
index 30ae4ffda5c1..8c156867803c 100644
--- a/drivers/pci/msi.c
+++ b/drivers/pci/msi.c
@@ -23,6 +23,7 @@
 #include <linux/slab.h>
 #include <linux/irqdomain.h>
 #include <linux/of_irq.h>
+#include <linux/sched/isolation.h>
 
 #include "pci.h"
 
@@ -1191,8 +1192,25 @@ int pci_alloc_irq_vectors_affinity(struct pci_dev *dev, unsigned int min_vecs,
 				   struct irq_affinity *affd)
 {
 	struct irq_affinity msi_default_affd = {0};
+	unsigned int hk_cpus;
 	int nvecs = -ENOSPC;
 
+	hk_cpus = housekeeping_num_online_cpus(HK_FLAG_MANAGED_IRQ);
+
+	/*
+	 * If we have isolated CPUs for use by real-time tasks, to keep the
+	 * latency overhead to a minimum, device-specific IRQ vectors are moved
+	 * to the housekeeping CPUs from the userspace by changing their
+	 * affinity mask. Limit the vector usage to keep housekeeping CPUs from
+	 * running out of IRQ vectors.
+	 */
+	if (hk_cpus < num_online_cpus()) {
+		if (hk_cpus < min_vecs)
+			max_vecs = min_vecs;
+		else if (hk_cpus < max_vecs)
+			max_vecs = hk_cpus;
+	}
+
 	if (flags & PCI_IRQ_AFFINITY) {
 		if (!affd)
 			affd = &msi_default_affd;
-- 
2.18.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
