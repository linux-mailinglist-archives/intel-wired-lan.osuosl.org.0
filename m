Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6296277CE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 09:34:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCD2181699;
	Mon, 14 Nov 2022 08:34:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCD2181699
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668414871;
	bh=HENVUqw8D4yaMvs1QqCZL/QDCXg7M1R5v5crWBZQrbo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WLdQLGgAhfFxZPS8yQ2kuwzYGed3bc1mo7Zjp538gC7rkgeurhTNctue6z3rr/uA1
	 XmFuX6Cjgc3v6A/OcJydQUwH9yfipmYd3qQGulRsP2Z9HnTFBGUGmr8qBZBXQklTs2
	 1kxWPTWM7OB9gLbvDgH8cGdq+dhCsNGUWvW+cgqFS6Svz7B9qGKlsO13+3kFixIB7U
	 WnycdHLgzpoEHsXF2pti1UX3+2btU3zy7Mr84aJ+ybD/DPVeIYj5xxMCjYJ0Q8cHyL
	 Vn5Zx+2h5NRLR0I1zgHw2rZd6JiqK1BZhNPQNlVpMKeuwRkAGxMHsVihlBWtQJWY0U
	 R5GlhmyM5HqAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JZxxsmVmga3X; Mon, 14 Nov 2022 08:34:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C391981766;
	Mon, 14 Nov 2022 08:34:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C391981766
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB1A01BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 08:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C24F781570
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 08:34:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C24F781570
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sPaETpyEEStk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 08:34:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA5AB8148F
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA5AB8148F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 08:34:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="376180583"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="376180583"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 00:34:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="780836843"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="780836843"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga001.fm.intel.com with ESMTP; 14 Nov 2022 00:34:20 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 14 Nov 2022 09:20:48 +0100
Message-Id: <20221114082048.9704-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668414863; x=1699950863;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kA1R1PCpP4C2QW/zFx5hYCENn0MNJnPTkpgHhMrkx1c=;
 b=NrCjg6rm70ia+SjeQDY3qgQ3sapwS+VNUz7ZXAbKSRrTLOHeeBuBKLt1
 13Ny5KuvIbtTFFTplaTFgy8rfDXJCeVlOEKjPvNpsmIOzbvjRKw1FtMZQ
 7nQVOe2IG3cGct5Ev7ONGZq+O7PxbamUDX7rsyYFFlNNNKZvylz3fbd4y
 HQYAhOYJjxMcBp8lkG8hOO/fpoS5qhWXqS4+tX2VneApi0wy+S5p2oLL4
 vLcOAhfXy0weLtbaGnRjqGgELfJVQllAYSloTmLrmpPhXmAZjS4Swf0s0
 eL6VPlnGOpfQXDj8LVXJ2IJ1pNif8bq9CHOboWzkO7j9xDfE6mokqGd2y
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NrCjg6rm
Subject: [Intel-wired-lan] [net-next] irdma: change name of interrupts
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
irdma-ice-AEQ
irdma-ice-CEQ-0
irdma-ice-CEQ-1
...

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Suggested-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/infiniband/hw/irdma/defs.h |  2 ++
 drivers/infiniband/hw/irdma/hw.c   | 14 +++++++++++---
 drivers/infiniband/hw/irdma/main.h |  1 +
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/defs.h b/drivers/infiniband/hw/irdma/defs.h
index c1906cab5c8a..09e4aba31b64 100644
--- a/drivers/infiniband/hw/irdma/defs.h
+++ b/drivers/infiniband/hw/irdma/defs.h
@@ -20,6 +20,8 @@
 #define IRDMA_IRD_HW_SIZE_128	3
 #define IRDMA_IRD_HW_SIZE_256	4
 
+#define IRDMA_INT_NAME_STR_LEN (32)
+
 enum irdma_protocol_used {
 	IRDMA_ANY_PROTOCOL = 0,
 	IRDMA_IWARP_PROTOCOL_ONLY = 1,
diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
index ab246447520b..46665624e515 100644
--- a/drivers/infiniband/hw/irdma/hw.c
+++ b/drivers/infiniband/hw/irdma/hw.c
@@ -1087,14 +1087,20 @@ static int irdma_cfg_ceq_vector(struct irdma_pci_f *rf, struct irdma_ceq *iwceq,
 	int status;
 
 	if (rf->msix_shared && !ceq_id) {
+		snprintf(msix_vec->name, sizeof(msix_vec->name) - 1,
+			 "irdma-%s-AEQCEQ-%d",
+			 dev_driver_string(&rf->pcidev->dev), ceq_id);
 		tasklet_setup(&rf->dpc_tasklet, irdma_dpc);
 		status = request_irq(msix_vec->irq, irdma_irq_handler, 0,
-				     "AEQCEQ", rf);
+				     msix_vec->name, rf);
 	} else {
+		snprintf(msix_vec->name, sizeof(msix_vec->name) - 1,
+			 "irdma-%s-CEQ-%d",
+			 dev_driver_string(&rf->pcidev->dev), ceq_id);
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
+			 "irdma-%s-AEQ", dev_driver_string(&rf->pcidev->dev));
 		tasklet_setup(&rf->dpc_tasklet, irdma_dpc);
 		ret = request_irq(msix_vec->irq, irdma_irq_handler, 0,
-				  "irdma", rf);
+				  msix_vec->name, rf);
 	}
 	if (ret) {
 		ibdev_dbg(&rf->iwdev->ibdev, "ERR: aeq irq config fail\n");
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index 65e966ad3453..2d88b0bf18b6 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -212,6 +212,7 @@ struct irdma_msix_vector {
 	u32 cpu_affinity;
 	u32 ceq_id;
 	cpumask_t mask;
+	char name[IRDMA_INT_NAME_STR_LEN];
 };
 
 struct irdma_mc_table_info {
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
