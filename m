Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB55E27603E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 20:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 659922721B;
	Wed, 23 Sep 2020 18:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UQilJWUMsXS1; Wed, 23 Sep 2020 18:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4DCBF272AB;
	Wed, 23 Sep 2020 18:44:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D91B01BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 18:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D58CD84B60
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 18:17:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p3fVsXKspLBr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 18:17:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3ACCA84B01
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 18:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600885059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:in-reply-to:in-reply-to:references:references;
 bh=0T1Uh3UwpP4BgdwzDRoRFpQxgh2o5L+P6husKrn72sA=;
 b=WjYsmKP965dsb/qe6+wBVkmBhLkxI6ZUkqk/jjVgnH7FZnulCSRce0uzVb12tecx6B3g+F
 +gwPuBVR2XlqkIdMK48xRaFy+U8heMthS2YFDW+3ReH0AXgL/a0PJGy64BusHvh8JGu9b3
 EhCndJXAITFfMS2LIGpq48G8RC/XM18=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-107-0cfgVWp3PuyEcRa8Ao44zg-1; Wed, 23 Sep 2020 14:17:37 -0400
X-MC-Unique: 0cfgVWp3PuyEcRa8Ao44zg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C5F3164094;
 Wed, 23 Sep 2020 18:17:34 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EE4DD5C1C7;
 Wed, 23 Sep 2020 18:17:32 +0000 (UTC)
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
Date: Wed, 23 Sep 2020 14:11:24 -0400
Message-Id: <20200923181126.223766-3-nitesh@redhat.com>
In-Reply-To: <20200923181126.223766-1-nitesh@redhat.com>
References: <20200923181126.223766-1-nitesh@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mailman-Approved-At: Wed, 23 Sep 2020 18:44:47 +0000
Subject: [Intel-wired-lan] [PATCH v2 2/4] sched/isolation: Extend nohz_full
 to isolate managed IRQs
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

Extend nohz_full feature set to include isolation from managed IRQS. This
is required specifically for setups that only uses nohz_full and still
requires isolation for maintaining lower latency for the listed CPUs.

Having this change will ensure that the kernel functions that were using
HK_FLAG_MANAGED_IRQ to derive cpumask for pinning various jobs/IRQs do not
enqueue anything on the CPUs listed under nohz_full.

Suggested-by: Frederic Weisbecker <frederic@kernel.org>
Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
---
 kernel/sched/isolation.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/sched/isolation.c b/kernel/sched/isolation.c
index 5a6ea03f9882..9df9598a9e39 100644
--- a/kernel/sched/isolation.c
+++ b/kernel/sched/isolation.c
@@ -141,7 +141,7 @@ static int __init housekeeping_nohz_full_setup(char *str)
 	unsigned int flags;
 
 	flags = HK_FLAG_TICK | HK_FLAG_WQ | HK_FLAG_TIMER | HK_FLAG_RCU |
-		HK_FLAG_MISC | HK_FLAG_KTHREAD;
+		HK_FLAG_MISC | HK_FLAG_KTHREAD | HK_FLAG_MANAGED_IRQ;
 
 	return housekeeping_setup(str, flags);
 }
-- 
2.18.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
