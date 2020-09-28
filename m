Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A76C927B4CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 20:48:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52A6B85EF5;
	Mon, 28 Sep 2020 18:48:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hCAiLrVQ4MeL; Mon, 28 Sep 2020 18:48:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C7968506D;
	Mon, 28 Sep 2020 18:48:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D8D71BF362
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A0D38560C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:36:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BkH02DFG9ihQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 18:36:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 08FDB84DFD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:36:19 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601318179;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:in-reply-to:in-reply-to:references:references;
 bh=iL0bUDw4mzTbRn0mPQir1H2iMDlMMQuuu3RzcEtjrtI=;
 b=AiF/t7zbqxNLTNIciKp7cx1b6Iid6haRqX6cer7ShKQUs3KM7JgS39UoZrODxhhCJKtbQt
 sjIVY+nQLrwhhH6JW4GQzX/7mB1P7X9qdA0hH8d6u3mlZe86nEi0a5Y1BY3zzOZZm/wLHy
 Sy5pfGgOrM6SpuDTzQxkj1qEV+ilYsU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-205-QOoB4A-NNji0hBs9kJXzaw-1; Mon, 28 Sep 2020 14:36:14 -0400
X-MC-Unique: QOoB4A-NNji0hBs9kJXzaw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 28462ADC25;
 Mon, 28 Sep 2020 18:36:08 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4E07860C13;
 Mon, 28 Sep 2020 18:36:06 +0000 (UTC)
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
Date: Mon, 28 Sep 2020 14:35:26 -0400
Message-Id: <20200928183529.471328-2-nitesh@redhat.com>
In-Reply-To: <20200928183529.471328-1-nitesh@redhat.com>
References: <20200928183529.471328-1-nitesh@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mailman-Approved-At: Mon, 28 Sep 2020 18:48:47 +0000
Subject: [Intel-wired-lan] [PATCH v4 1/4] sched/isolation: API to get number
 of housekeeping CPUs
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

Introduce a new API housekeeping_num_online_cpus(), that can be used to
retrieve the number of online housekeeping CPUs based on the housekeeping
flag passed by the caller.

Some of the consumers for this API are the device drivers that were
previously relying only on num_online_cpus() to determine the number of
MSIX vectors to create. In real-time environments to minimize interruptions
to isolated CPUs, all device-specific IRQ vectors are often moved to the
housekeeping CPUs, having excess vectors could cause housekeeping CPU to
run out of IRQ vectors.

Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
---
 include/linux/sched/isolation.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/linux/sched/isolation.h b/include/linux/sched/isolation.h
index cc9f393e2a70..e021b1846c1d 100644
--- a/include/linux/sched/isolation.h
+++ b/include/linux/sched/isolation.h
@@ -57,4 +57,13 @@ static inline bool housekeeping_cpu(int cpu, enum hk_flags flags)
 	return true;
 }
 
+static inline unsigned int housekeeping_num_online_cpus(enum hk_flags flags)
+{
+#ifdef CONFIG_CPU_ISOLATION
+	if (static_branch_unlikely(&housekeeping_overridden))
+		return cpumask_weight(housekeeping_cpumask(flags));
+#endif
+	return num_online_cpus();
+}
+
 #endif /* _LINUX_SCHED_ISOLATION_H */
-- 
2.18.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
