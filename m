Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B33276041
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 20:45:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DFF46272AB;
	Wed, 23 Sep 2020 18:44:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gbs706X4XD8l; Wed, 23 Sep 2020 18:44:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6D36627366;
	Wed, 23 Sep 2020 18:44:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71B801BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 18:17:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6D7AC87392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 18:17:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tOx8lC+N7WtL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 18:17:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 15CDA87026
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 18:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600885064;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:in-reply-to:in-reply-to:references:references;
 bh=xjpjpRpbrSKVLsfonq//6ufQkFBP9fDdk1nbF16APfU=;
 b=ZqtAo6eSCpIasiqVWRCWwgZvASiQWAdXEI1c9DhjQ6ciiCQblUcYMQM91G2CpIwosZi7V5
 /FrSs8dv0N8KAwngGp4WpG8qpSmIL4pVmr0bUMOnI+ijJTMrtl23YO79Wy5ROWhZLqYnhS
 OV6JBKY3RBdx+Kbmfi6Ntdy3TeKqLBA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-l18lSME8ME6Mv-dEVZsF6Q-1; Wed, 23 Sep 2020 14:17:41 -0400
X-MC-Unique: l18lSME8ME6Mv-dEVZsF6Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A528B64095;
 Wed, 23 Sep 2020 18:17:38 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D079F5C1C7;
 Wed, 23 Sep 2020 18:17:36 +0000 (UTC)
From: Nitesh Narayan Lal <nitesh@redhat.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 frederic@kernel.org, mtosatti@redhat.com, sassmann@redhat.com,
 jesse.brandeburg@intel.com, lihong.yang@intel.com, helgaas@kernel.org,
 nitesh@redhat.com, jeffrey.t.kirsher@intel.com, jacob.e.keller@intel.com,
 jlelli@redhat.com, hch@infradead.org, bhelgaas@google.com,
 mike.marciniszyn@intel.com, dennis.dalessandro@intel.com,
 thomas.lendacky@amd.com, jerinj@marvell.com, mathias.nyman@intel.com,
 jiri@nvidia.com, mingo@redhat.com, peterz@infradead.org,
 juri.lelli@redhat.com, vincent.guittot@linaro.org
Date: Wed, 23 Sep 2020 14:11:26 -0400
Message-Id: <20200923181126.223766-5-nitesh@redhat.com>
In-Reply-To: <20200923181126.223766-1-nitesh@redhat.com>
References: <20200923181126.223766-1-nitesh@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mailman-Approved-At: Wed, 23 Sep 2020 18:44:47 +0000
Subject: [Intel-wired-lan] [PATCH v2 4/4] PCI: Limit pci_alloc_irq_vectors
 as per housekeeping CPUs
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

This patch limits the pci_alloc_irq_vectors, max_vecs argument that is
passed on by the caller based on the housekeeping online CPUs (that are
meant to perform managed IRQ jobs).

A minimum of the max_vecs passed and housekeeping online CPUs is derived
to ensure that we don't create excess vectors as that can be problematic
specifically in an RT environment. In cases where the min_vecs exceeds the
housekeeping online CPUs, max vecs is restricted based on the min_vecs
instead. The proposed change is required because for an RT environment
unwanted IRQs are moved to the housekeeping CPUs from isolated CPUs to
keep the latency overhead to a minimum. If the number of housekeeping CPUs
is significantly lower than that of the isolated CPUs we can run into
failures while moving these IRQs to housekeeping CPUs due to per CPU
vector limit.

Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
---
 include/linux/pci.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 835530605c0d..cf9ca9410213 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -38,6 +38,7 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/resource_ext.h>
+#include <linux/sched/isolation.h>
 #include <uapi/linux/pci.h>
 
 #include <linux/pci_ids.h>
@@ -1797,6 +1798,20 @@ static inline int
 pci_alloc_irq_vectors(struct pci_dev *dev, unsigned int min_vecs,
 		      unsigned int max_vecs, unsigned int flags)
 {
+	unsigned int hk_cpus = hk_num_online_cpus();
+
+	/*
+	 * For a real-time environment, try to be conservative and at max only
+	 * ask for the same number of vectors as there are housekeeping online
+	 * CPUs. In case, the min_vecs requested exceeds the housekeeping
+	 * online CPUs, restrict the max_vecs based on the min_vecs instead.
+	 */
+	if (hk_cpus != num_online_cpus()) {
+		if (min_vecs > hk_cpus)
+			max_vecs = min_vecs;
+		else
+			max_vecs = min_t(int, max_vecs, hk_cpus);
+	}
 	return pci_alloc_irq_vectors_affinity(dev, min_vecs, max_vecs, flags,
 					      NULL);
 }
-- 
2.18.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
