Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A8D62993E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 13:52:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 483CB81ABB;
	Tue, 15 Nov 2022 12:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 483CB81ABB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668516761;
	bh=tN4+IUdlezx9sP4od7q9bHT/whH1eBL7nNQVDy1VOPs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PX7LYELSfseSqmPdOhU1pH8f/HJmkpA5XZ6rzciDHdP3zm80kQklcds/mOBhMiA2N
	 uYUlIapYDpFuociw6cKjZf9T1k3walxN1R2RNnm0fM2RJbg3FJ0PtaHuQtKJkXSc02
	 kQFuUgyAWuOgSM1GqULYc4tRUi71W+9iVchUhM/kp1NETSGrXEnPowojtfpazVBzh2
	 o5Np0p9IqG6IPUFkbwLsT9XYAA5CagCaO1Nu6Zcv7CRtES1rzZIkRzTxUq+XLq2hK3
	 gY1isxjyDE+kqtDmDcFzByK327970sw9CRWoZJ+gva81iDdbdKPjrX72DAk0FtonlQ
	 SICYphbCp3D+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wM5i8A9b3_Jt; Tue, 15 Nov 2022 12:52:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 378F8813DF;
	Tue, 15 Nov 2022 12:52:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 378F8813DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E3FC71BF348
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 12:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE5BE813DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 12:52:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE5BE813DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZvT4GceDWkRD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 12:52:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF8A5812BB
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF8A5812BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 12:52:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="312248954"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="312248954"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 04:52:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="589778425"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="589778425"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga003.jf.intel.com with ESMTP; 15 Nov 2022 04:52:31 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 15 Nov 2022 13:38:56 +0100
Message-Id: <20221115123856.11737-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668516753; x=1700052753;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VjD2YLBa57s7dF/YnBcdNph+aP2ye8yErSmf3gL768s=;
 b=IXS28zR7BOzcao5MprtL7MRy9dhpOLfb+EPqocIwmLDGfwfwamJly5w/
 anm+VwYBqnaIz+aX/J0lNQ6I0DG/GnuFiTbSTtZkBhlF9KhKT0qjRTLoU
 Qcw2yba4+7TPpgfFeNdpvVY8ta4po+miPUVyt22/vX5lGQh2KdLB6FA8B
 AVX1uryv7F/8/q10rjz51zx+G/bTf16FUQ37JeRAxyiaEUFuFxG/ksPyL
 3OFzdpsXsbI/cRskIDj0Y0igaWFK066Z1sjuY9+9WzZ4CNCmvdJ4vpVQ1
 Z6kwfc6F+X3sYTjNvhjUg4t4BlsYbjLDmzpUZXUeXQLalT5oP+I/YwGij
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IXS28zR7
Subject: [Intel-wired-lan] [PATCH rdma v2] RDMA/irdma: change name of
 interrupts
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
Cc: mustafa.ismail@intel.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add more information in interrupt names.

Before this patch it was:
irdma
CEQ
CEQ
...

Now:
irdma-0000:18:00.0-AEQ
irdma-0000:18:00.0-CEQ-0
irdma-0000:18:00.0-CEQ-1
...

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Suggested-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/infiniband/hw/irdma/defs.h |  2 ++
 drivers/infiniband/hw/irdma/hw.c   | 14 +++++++++++---
 drivers/infiniband/hw/irdma/main.h |  1 +
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/defs.h b/drivers/infiniband/hw/irdma/defs.h
index c1906cab5c8a..2f15d510e39d 100644
--- a/drivers/infiniband/hw/irdma/defs.h
+++ b/drivers/infiniband/hw/irdma/defs.h
@@ -20,6 +20,8 @@
 #define IRDMA_IRD_HW_SIZE_128	3
 #define IRDMA_IRD_HW_SIZE_256	4
 
+#define IRDMA_IRQ_NAME_STR_LEN (64)
+
 enum irdma_protocol_used {
 	IRDMA_ANY_PROTOCOL = 0,
 	IRDMA_IWARP_PROTOCOL_ONLY = 1,
diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
index ab246447520b..d2a215ec531c 100644
--- a/drivers/infiniband/hw/irdma/hw.c
+++ b/drivers/infiniband/hw/irdma/hw.c
@@ -1087,14 +1087,20 @@ static int irdma_cfg_ceq_vector(struct irdma_pci_f *rf, struct irdma_ceq *iwceq,
 	int status;
 
 	if (rf->msix_shared && !ceq_id) {
+		snprintf(msix_vec->name, sizeof(msix_vec->name) - 1,
+			 "irdma-%s-AEQCEQ-%d",
+			 dev_name(&rf->pcidev->dev), ceq_id);
 		tasklet_setup(&rf->dpc_tasklet, irdma_dpc);
 		status = request_irq(msix_vec->irq, irdma_irq_handler, 0,
-				     "AEQCEQ", rf);
+				     msix_vec->name, rf);
 	} else {
+		snprintf(msix_vec->name, sizeof(msix_vec->name) - 1,
+			 "irdma-%s-CEQ-%d",
+			 dev_name(&rf->pcidev->dev), ceq_id);
 		tasklet_setup(&iwceq->dpc_tasklet, irdma_ceq_dpc);
 
 		status = request_irq(msix_vec->irq, irdma_ceq_handler, 0,
-				     "CEQ", iwceq);
+				     msix_vec->name, iwceq);
 	}
 	cpumask_clear(&msix_vec->mask);
 	cpumask_set_cpu(msix_vec->cpu_affinity, &msix_vec->mask);
@@ -1123,9 +1129,11 @@ static int irdma_cfg_aeq_vector(struct irdma_pci_f *rf)
 	u32 ret = 0;
 
 	if (!rf->msix_shared) {
+		snprintf(msix_vec->name, sizeof(msix_vec->name) - 1,
+			 "irdma-%s-AEQ", dev_name(&rf->pcidev->dev));
 		tasklet_setup(&rf->dpc_tasklet, irdma_dpc);
 		ret = request_irq(msix_vec->irq, irdma_irq_handler, 0,
-				  "irdma", rf);
+				  msix_vec->name, rf);
 	}
 	if (ret) {
 		ibdev_dbg(&rf->iwdev->ibdev, "ERR: aeq irq config fail\n");
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index 65e966ad3453..2872c7df6e88 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -212,6 +212,7 @@ struct irdma_msix_vector {
 	u32 cpu_affinity;
 	u32 ceq_id;
 	cpumask_t mask;
+	char name[IRDMA_IRQ_NAME_STR_LEN];
 };
 
 struct irdma_mc_table_info {
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
