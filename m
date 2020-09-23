Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2207827603C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 20:44:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C517784E9A;
	Wed, 23 Sep 2020 18:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3XEedINs3Z57; Wed, 23 Sep 2020 18:44:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A148E8506E;
	Wed, 23 Sep 2020 18:44:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 211521BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 18:17:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 14EBD228E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 18:17:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w7CynWPmvSJJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 18:17:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by silver.osuosl.org (Postfix) with ESMTPS id E2E132721B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 18:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600885059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:in-reply-to:in-reply-to:references:references;
 bh=7UUuowF4weSLiWMwKfPo+YyNGAQzoPK/8GZlRbYkNkk=;
 b=I8QYLP66k8iaRsXuhrPg/C1NqcWhF4LUcp2rmdEDrgzT87ObeVzpQgDozx3wNF534pL5N/
 gDvs11ADuZiqAAwS2aWjcg9eYf0TovVjM9pgFv20JztwE1tY2sjWwMYkfTXT7jMh4K4cJC
 4nWSkqmqWSGP+EHx/C91RtgHviQw6CI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-265-MU8ey5c0MkewCvWXYfJEOw-1; Wed, 23 Sep 2020 14:17:35 -0400
X-MC-Unique: MU8ey5c0MkewCvWXYfJEOw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D3350802B70;
 Wed, 23 Sep 2020 18:17:32 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EDE755C1C7;
 Wed, 23 Sep 2020 18:17:30 +0000 (UTC)
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
Date: Wed, 23 Sep 2020 14:11:23 -0400
Message-Id: <20200923181126.223766-2-nitesh@redhat.com>
In-Reply-To: <20200923181126.223766-1-nitesh@redhat.com>
References: <20200923181126.223766-1-nitesh@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mailman-Approved-At: Wed, 23 Sep 2020 18:44:47 +0000
Subject: [Intel-wired-lan] [PATCH v2 1/4] sched/isolation: API to get
 housekeeping online CPUs
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

Introduce a new API hk_num_online_cpus(), that can be used to
retrieve the number of online housekeeping CPUs that are meant to handle
managed IRQ jobs.

This API is introduced for the drivers that were previously relying only
on num_online_cpus() to determine the number of MSIX vectors to create.
In an RT environment with large isolated but fewer housekeeping CPUs this
was leading to a situation where an attempt to move all of the vectors
corresponding to isolated CPUs to housekeeping CPUs were failing due to
per CPU vector limit.

Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
---
 include/linux/sched/isolation.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/sched/isolation.h b/include/linux/sched/isolation.h
index cc9f393e2a70..2e96b626e02e 100644
--- a/include/linux/sched/isolation.h
+++ b/include/linux/sched/isolation.h
@@ -57,4 +57,17 @@ static inline bool housekeeping_cpu(int cpu, enum hk_flags flags)
 	return true;
 }
 
+static inline unsigned int hk_num_online_cpus(void)
+{
+#ifdef CONFIG_CPU_ISOLATION
+	const struct cpumask *hk_mask;
+
+	if (static_branch_unlikely(&housekeeping_overridden)) {
+		hk_mask = housekeeping_cpumask(HK_FLAG_MANAGED_IRQ);
+		return cpumask_weight(hk_mask);
+	}
+#endif
+	return cpumask_weight(cpu_online_mask);
+}
+
 #endif /* _LINUX_SCHED_ISOLATION_H */
-- 
2.18.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
