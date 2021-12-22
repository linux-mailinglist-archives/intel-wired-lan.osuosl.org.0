Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D74847CCFA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 07:25:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B9A160F8A;
	Wed, 22 Dec 2021 06:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ynRPH_HBJ6Z8; Wed, 22 Dec 2021 06:25:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61AA560AAF;
	Wed, 22 Dec 2021 06:25:07 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2F301BF5B4
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD80760AAF
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y9FryDfpXLXf for <intel-wired-lan@osuosl.org>;
 Wed, 22 Dec 2021 06:24:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED2D360F3B
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640154290; x=1671690290;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/S0l7B7OCwG3zE4OcHKzf/WAxMyHiwCsp8g4Fbj0XEY=;
 b=cEgcABVgkz4s3shTjpHvRAtb+BVqN0AYRrQ9/VpvuVskCxoUrVQ0/b+d
 NxbH+T1RQ328jNtO6hA9pK4jKPxXCSDn80t4LxDS+UNrEw7GsJ8/6fq0J
 WHsmbHvRIVuGflEsgsffyuJ8WJ2gGG8+gUYq1ipxP6P1e3f81osczNIAU
 Hg9VvwRpmMnbPrXQlaMcoclnNzfa7DzZEYG3AEfJaClWXoWLCFmgP3yCc
 CF8GjKTdeCWzL70QTjjcTibw5AepkotI4VohG2sR9qFsdQeScQVxgJ1yX
 MsGB5D7i8MTnbFFjIF+/mrsiKibEUy1qLBmAyNniwz4dbIYBxL8saCXaq w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="326857350"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="326857350"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 22:24:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="521552635"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2021 22:24:49 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 22 Dec 2021 07:22:01 +0100
Message-Id: <20211222062201.36302-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211222062201.36302-1-michal.swiatkowski@linux.intel.com>
References: <20211222062201.36302-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 3/3] ice: use new alloc irqs API
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

Move code related to allocating and managing irq to new file to separate
it from ice_main.

In new API system vectors number are tracked in kernel and driver can
get it by calling pci_irq_vector. There is no need to track these values
on driver site.

As there is no function to get exact number of irqs rewrite enabling
irqs function to adjust number of irqs based on value returned from
kernel.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile   |   3 +-
 drivers/net/ethernet/intel/ice/ice.h      |   3 +-
 drivers/net/ethernet/intel/ice/ice_arfs.c |   3 +-
 drivers/net/ethernet/intel/ice/ice_irq.c  | 213 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_irq.h  |  12 ++
 drivers/net/ethernet/intel/ice/ice_lib.c  |   5 +-
 drivers/net/ethernet/intel/ice/ice_main.c | 221 +---------------------
 drivers/net/ethernet/intel/ice/ice_xsk.c  |   3 +-
 8 files changed, 243 insertions(+), 220 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 8771ac8460a7..c69da65d6f31 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -32,7 +32,8 @@ ice-y := ice_main.o	\
 	 ice_lag.o	\
 	 ice_ethtool.o  \
 	 ice_repr.o	\
-	 ice_tc_lib.o
+	 ice_tc_lib.o	\
+	 ice_irq.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_allowlist.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o ice_virtchnl_fdir.o ice_vf_vsi_vlan_ops.o
 ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 1ca309feabbf..1c6437b4dea2 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -92,6 +92,8 @@
 #define ICE_MIN_LAN_OICR_MSIX	1
 #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
 #define ICE_FDIR_MSIX		2
+#define ICE_MIN_LAN_MSIX        1
+#define ICE_OICR_MSIX           1
 #define ICE_RDMA_NUM_AEQ_MSIX	4
 #define ICE_MIN_RDMA_MSIX	2
 #define ICE_ESWITCH_MSIX	1
@@ -517,7 +519,6 @@ struct ice_pf {
 	struct devlink_port devlink_port;
 
 	/* OS reserved IRQ details */
-	struct msix_entry *msix_entries;
 	struct ice_res_tracker *irq_tracker;
 	/* First MSIX vector used by SR-IOV VFs. Calculated by subtracting the
 	 * number of MSIX vectors needed for all SR-IOV VFs from the number of
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 5daade32ea62..5bdfabd14c83 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2018-2020, Intel Corporation. */
 
 #include "ice.h"
+#include "ice_irq.h"
 
 /**
  * ice_is_arfs_active - helper to check is aRFS is active
@@ -616,7 +617,7 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 	base_idx = vsi->base_vector;
 	ice_for_each_q_vector(vsi, i)
 		if (irq_cpu_rmap_add(netdev->rx_cpu_rmap,
-				     pf->msix_entries[base_idx + i].vector)) {
+				     ice_get_irq_num(pf, base_idx + 1))) {
 			ice_free_cpu_rx_rmap(vsi);
 			return -EINVAL;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
new file mode 100644
index 000000000000..26a894911a8d
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -0,0 +1,213 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2021, Intel Corporation. */
+
+#include "ice.h"
+#include "ice_lib.h"
+#include "ice_irq.h"
+
+static void ice_dis_msix(struct ice_pf *pf)
+{
+	pci_free_irq_vectors(pf->pdev);
+}
+
+static int ice_ena_msix(struct ice_pf *pf, int nvec)
+{
+	return pci_alloc_irq_vectors(pf->pdev, ICE_MIN_MSIX, nvec,
+				     PCI_IRQ_MSIX);
+}
+
+#define ICE_ADJ_VEC_STEPS 5
+static void ice_adj_vec_sum(int *dst, int *src)
+{
+	int i;
+
+	for (i = 0; i < ICE_ADJ_VEC_STEPS; i++)
+		dst[i] += src[i];
+}
+
+/**
+ * ice_ena_msix_range - request a range of MSI-X vectors from the OS
+ * @pf: board private structure
+ *
+ * The driver tries to enable best-case scenario MSI-X vectors. If that doesn't
+ * succeed then adjust to irqs number returned by kernel.
+ *
+ * The fall-back logic is described below with each [#] represented needed irqs
+ * number for the step. If any of the steps is lower than received number, then
+ * return the number of MSI-X. If any of the steps is greater, then check next
+ * one. If received value is lower than irqs value in last step return error.
+ *
+ * Step [4]: Enable the best-case scenario MSI-X vectors.
+ *
+ * Step [3]: Enable MSI-X vectors with eswitch support disabled
+ *
+ * Step [2]: Enable MSI-X vectors with the number of pf->num_lan_msix reduced
+ * by a factor of 2 from the previous step (i.e. num_online_cpus() / 2).
+ * Also, with the number of pf->num_rdma_msix reduced by a factor of ~2 from the
+ * previous step (i.e. num_online_cpus() / 2 + ICE_RDMA_NUM_AEQ_MSIX).
+ *
+ * Step [1]: Same as step [2], except reduce both by a factor of 4.
+ *
+ * Step [0]: Enable the bare-minimum MSI-X vectors.
+ *
+ * Each feature has separeate table with needed irqs in each step. Sum of these
+ * tables is tracked in adj_vec to show needed irqs in each step. Separate
+ * tables are later use to set correct number of irqs for each feature based on
+ * choosed step.
+ */
+static int ice_ena_msix_range(struct ice_pf *pf)
+{
+	enum {
+		ICE_ADJ_VEC_WORST_CASE	= 0,
+		ICE_ADJ_VEC_STEP_1	= 1,
+		ICE_ADJ_VEC_STEP_2	= 2,
+		ICE_ADJ_VEC_STEP_3	= 3,
+		ICE_ADJ_VEC_BEST_CASE	= ICE_ADJ_VEC_STEPS - 1,
+	};
+	int num_cpus = num_possible_cpus();
+	int rdma_adj_vec[ICE_ADJ_VEC_STEPS] = {
+		[ICE_ADJ_VEC_WORST_CASE] = ICE_MIN_RDMA_MSIX,
+		[ICE_ADJ_VEC_STEP_1] = num_cpus / 4 > ICE_MIN_RDMA_MSIX ?
+			num_cpus / 4 + ICE_RDMA_NUM_AEQ_MSIX :
+			ICE_MIN_RDMA_MSIX,
+		[ICE_ADJ_VEC_STEP_2] = num_cpus / 2 > ICE_MIN_RDMA_MSIX ?
+			num_cpus / 2 + ICE_RDMA_NUM_AEQ_MSIX :
+			ICE_MIN_RDMA_MSIX,
+		[ICE_ADJ_VEC_STEP_3] = num_cpus > ICE_MIN_RDMA_MSIX ?
+			num_cpus + ICE_RDMA_NUM_AEQ_MSIX : ICE_MIN_RDMA_MSIX,
+		[ICE_ADJ_VEC_BEST_CASE] = num_cpus > ICE_MIN_RDMA_MSIX ?
+			num_cpus + ICE_RDMA_NUM_AEQ_MSIX : ICE_MIN_RDMA_MSIX,
+	};
+	int lan_adj_vec[ICE_ADJ_VEC_STEPS] = {
+		[ICE_ADJ_VEC_WORST_CASE] = ICE_MIN_LAN_MSIX,
+		[ICE_ADJ_VEC_STEP_1] =
+			max_t(int, num_cpus / 4, ICE_MIN_LAN_MSIX),
+		[ICE_ADJ_VEC_STEP_2] =
+			max_t(int, num_cpus / 2, ICE_MIN_LAN_MSIX),
+		[ICE_ADJ_VEC_STEP_3] =
+			max_t(int, num_cpus, ICE_MIN_LAN_MSIX),
+		[ICE_ADJ_VEC_BEST_CASE] =
+			max_t(int, num_cpus, ICE_MIN_LAN_MSIX),
+	};
+	int fdir_adj_vec[ICE_ADJ_VEC_STEPS] = {
+		ICE_FDIR_MSIX, ICE_FDIR_MSIX, ICE_FDIR_MSIX,
+		ICE_FDIR_MSIX, ICE_FDIR_MSIX,
+	};
+	int adj_vec[ICE_ADJ_VEC_STEPS] = {
+		ICE_OICR_MSIX, ICE_OICR_MSIX, ICE_OICR_MSIX,
+		ICE_OICR_MSIX, ICE_OICR_MSIX,
+	};
+	int eswitch_adj_vec[ICE_ADJ_VEC_STEPS] = {
+		0, 0, 0, 0,
+		[ICE_ADJ_VEC_BEST_CASE] = ICE_ESWITCH_MSIX,
+	};
+	struct device *dev = ice_pf_to_dev(pf);
+	int adj_step = ICE_ADJ_VEC_BEST_CASE;
+	int needed = ICE_OICR_MSIX;
+	int err = -ENOSPC;
+	int v_actual, i;
+
+	needed += lan_adj_vec[ICE_ADJ_VEC_BEST_CASE];
+	ice_adj_vec_sum(adj_vec, lan_adj_vec);
+
+	if (ice_is_eswitch_supported(pf)) {
+		needed += eswitch_adj_vec[ICE_ADJ_VEC_BEST_CASE];
+		ice_adj_vec_sum(adj_vec, eswitch_adj_vec);
+	} else {
+		memset(&eswitch_adj_vec, 0, sizeof(eswitch_adj_vec));
+	}
+
+	if (ice_is_rdma_ena(pf)) {
+		needed += rdma_adj_vec[ICE_ADJ_VEC_BEST_CASE];
+		ice_adj_vec_sum(adj_vec, rdma_adj_vec);
+	} else {
+		memset(&rdma_adj_vec, 0, sizeof(rdma_adj_vec));
+	}
+
+	if (test_bit(ICE_FLAG_FD_ENA, pf->flags)) {
+		needed += fdir_adj_vec[ICE_ADJ_VEC_BEST_CASE];
+		ice_adj_vec_sum(adj_vec, fdir_adj_vec);
+	} else {
+		memset(&fdir_adj_vec, 0, sizeof(fdir_adj_vec));
+	}
+
+	v_actual = ice_ena_msix(pf, needed);
+	if (v_actual < 0) {
+		err = v_actual;
+		goto err;
+	} else if (v_actual < adj_vec[ICE_ADJ_VEC_WORST_CASE]) {
+		ice_dis_msix(pf);
+		goto err;
+	}
+
+	for (i = ICE_ADJ_VEC_WORST_CASE + 1; i < ICE_ADJ_VEC_STEPS; i++) {
+		if (v_actual < adj_vec[i]) {
+			adj_step = i - 1;
+			break;
+		}
+	}
+
+	pf->num_lan_msix = lan_adj_vec[adj_step];
+	pf->num_rdma_msix = rdma_adj_vec[adj_step];
+
+	if (ice_is_eswitch_supported(pf) &&
+	    !eswitch_adj_vec[adj_step]) {
+		dev_warn(dev, "Not enough MSI-X for eswitch support, disabling feature\n");
+	}
+
+	return v_actual;
+
+err:
+	dev_err(dev, "Failed to enable MSI-X vectors\n");
+	return  err;
+}
+
+/**
+ * ice_init_interrupt_scheme - Determine proper interrupt scheme
+ * @pf: board private structure to initialize
+ */
+int ice_init_interrupt_scheme(struct ice_pf *pf)
+{
+	int vectors = ice_ena_msix_range(pf);
+
+	if (vectors < 0)
+		return vectors;
+
+	/* set up vector assignment tracking */
+	pf->irq_tracker =
+		kzalloc(struct_size(pf->irq_tracker, list, vectors),
+			GFP_KERNEL);
+	if (!pf->irq_tracker) {
+		ice_dis_msix(pf);
+		return -ENOMEM;
+	}
+
+	/* populate SW interrupts pool with number of OS granted IRQs. */
+	pf->num_avail_sw_msix = (u16)vectors;
+	pf->irq_tracker->num_entries = (u16)vectors;
+	pf->irq_tracker->end = pf->irq_tracker->num_entries;
+
+	return 0;
+}
+
+/**
+ * ice_clear_interrupt_scheme - Undo things done by ice_init_interrupt_scheme
+ * @pf: board private structure
+ */
+void ice_clear_interrupt_scheme(struct ice_pf *pf)
+{
+	ice_dis_msix(pf);
+
+	kfree(pf->irq_tracker);
+	pf->irq_tracker = NULL;
+}
+
+/**
+ * ice_get_irq_num - get system irq number based on index from driver
+ * @pf: board private structure
+ * @idx: driver irq index
+ */
+int ice_get_irq_num(struct ice_pf *pf, int idx)
+{
+	return pci_irq_vector(pf->pdev, idx);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.h b/drivers/net/ethernet/intel/ice/ice_irq.h
new file mode 100644
index 000000000000..f4db6964f9c7
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_irq.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2021, Intel Corporation. */
+
+#ifndef _ICE_IRQ_H_
+#define _ICE_IRQ_H_
+
+int ice_init_interrupt_scheme(struct ice_pf *pf);
+void ice_clear_interrupt_scheme(struct ice_pf *pf);
+
+int ice_get_irq_num(struct ice_pf *pf, int idx);
+
+#endif
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 4e9efd49c149..6e7d121b6746 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -9,6 +9,7 @@
 #include "ice_dcb_lib.h"
 #include "ice_devlink.h"
 #include "ice_vsi_vlan_ops.h"
+#include "ice_irq.h"
 
 /**
  * ice_vsi_type_str - maps VSI type enum to string equivalents
@@ -2659,7 +2660,7 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
 		u16 vector = i + base;
 		int irq_num;
 
-		irq_num = pf->msix_entries[vector].vector;
+		irq_num = ice_get_irq_num(pf, vector);
 
 		/* free only the irqs that were actually requested */
 		if (!vsi->q_vectors[i] ||
@@ -2837,7 +2838,7 @@ void ice_vsi_dis_irq(struct ice_vsi *vsi)
 		return;
 
 	ice_for_each_q_vector(vsi, i)
-		synchronize_irq(pf->msix_entries[i + base].vector);
+		synchronize_irq(ice_get_irq_num(pf, i + base));
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e31c01673d3a..7ae5bf4f70d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -22,6 +22,7 @@
 #include "ice_eswitch.h"
 #include "ice_tc_lib.h"
 #include "ice_vsi_vlan_ops.h"
+#include "ice_irq.h"
 
 #define DRV_SUMMARY	"Intel(R) Ethernet Connection E800 Series Linux Driver"
 static const char ice_driver_string[] = DRV_SUMMARY;
@@ -2418,7 +2419,7 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 	for (vector = 0; vector < q_vectors; vector++) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[vector];
 
-		irq_num = pf->msix_entries[base + vector].vector;
+		irq_num = ice_get_irq_num(pf, base + vector);
 
 		if (q_vector->tx.tx_ring && q_vector->rx.rx_ring) {
 			snprintf(q_vector->name, sizeof(q_vector->name) - 1,
@@ -2467,7 +2468,7 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 free_q_irqs:
 	while (vector) {
 		vector--;
-		irq_num = pf->msix_entries[base + vector].vector;
+		irq_num = ice_get_irq_num(pf, base + vector);
 		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
 			irq_set_affinity_notifier(irq_num, NULL);
 		irq_set_affinity_hint(irq_num, NULL);
@@ -3085,6 +3086,7 @@ static void ice_dis_ctrlq_interrupts(struct ice_hw *hw)
  */
 static void ice_free_irq_msix_misc(struct ice_pf *pf)
 {
+	int irq_num = ice_get_irq_num(pf, pf->oicr_idx);
 	struct ice_hw *hw = &pf->hw;
 
 	ice_dis_ctrlq_interrupts(hw);
@@ -3093,11 +3095,8 @@ static void ice_free_irq_msix_misc(struct ice_pf *pf)
 	wr32(hw, PFINT_OICR_ENA, 0);
 	ice_flush(hw);
 
-	if (pf->msix_entries) {
-		synchronize_irq(pf->msix_entries[pf->oicr_idx].vector);
-		devm_free_irq(ice_pf_to_dev(pf),
-			      pf->msix_entries[pf->oicr_idx].vector, pf);
-	}
+	synchronize_irq(irq_num);
+	devm_free_irq(ice_pf_to_dev(pf), irq_num, pf);
 
 	pf->num_avail_sw_msix += 1;
 	ice_free_res(pf->irq_tracker, pf->oicr_idx, ICE_RES_MISC_VEC_ID);
@@ -3167,7 +3166,7 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 	pf->num_avail_sw_msix -= 1;
 	pf->oicr_idx = (u16)oicr_idx;
 
-	err = devm_request_irq(dev, pf->msix_entries[pf->oicr_idx].vector,
+	err = devm_request_irq(dev, ice_get_irq_num(pf, pf->oicr_idx),
 			       ice_misc_intr, 0, pf->int_name, pf);
 	if (err) {
 		dev_err(dev, "devm_request_irq for %s failed: %d\n",
@@ -3779,212 +3778,6 @@ static int ice_init_pf(struct ice_pf *pf)
 	return 0;
 }
 
-/**
- * ice_ena_msix_range - Request a range of MSIX vectors from the OS
- * @pf: board private structure
- *
- * compute the number of MSIX vectors required (v_budget) and request from
- * the OS. Return the number of vectors reserved or negative on failure
- */
-static int ice_ena_msix_range(struct ice_pf *pf)
-{
-	int num_cpus, v_left, v_actual, v_other, v_budget = 0;
-	struct device *dev = ice_pf_to_dev(pf);
-	int needed, err, i;
-
-	v_left = pf->hw.func_caps.common_cap.num_msix_vectors;
-	num_cpus = num_online_cpus();
-
-	/* reserve for LAN miscellaneous handler */
-	needed = ICE_MIN_LAN_OICR_MSIX;
-	if (v_left < needed)
-		goto no_hw_vecs_left_err;
-	v_budget += needed;
-	v_left -= needed;
-
-	/* reserve for flow director */
-	if (test_bit(ICE_FLAG_FD_ENA, pf->flags)) {
-		needed = ICE_FDIR_MSIX;
-		if (v_left < needed)
-			goto no_hw_vecs_left_err;
-		v_budget += needed;
-		v_left -= needed;
-	}
-
-	/* reserve for switchdev */
-	if (ice_is_eswitch_supported(pf)) {
-		needed = ICE_ESWITCH_MSIX;
-		if (v_left < needed)
-			goto no_hw_vecs_left_err;
-		v_budget += needed;
-		v_left -= needed;
-	}
-
-	/* total used for non-traffic vectors */
-	v_other = v_budget;
-
-	/* reserve vectors for LAN traffic */
-	needed = num_cpus;
-	if (v_left < needed)
-		goto no_hw_vecs_left_err;
-	pf->num_lan_msix = needed;
-	v_budget += needed;
-	v_left -= needed;
-
-	/* reserve vectors for RDMA auxiliary driver */
-	if (ice_is_rdma_ena(pf)) {
-		needed = num_cpus + ICE_RDMA_NUM_AEQ_MSIX;
-		if (v_left < needed)
-			goto no_hw_vecs_left_err;
-		pf->num_rdma_msix = needed;
-		v_budget += needed;
-		v_left -= needed;
-	}
-
-	pf->msix_entries = devm_kcalloc(dev, v_budget,
-					sizeof(*pf->msix_entries), GFP_KERNEL);
-	if (!pf->msix_entries) {
-		err = -ENOMEM;
-		goto exit_err;
-	}
-
-	for (i = 0; i < v_budget; i++)
-		pf->msix_entries[i].entry = i;
-
-	/* actually reserve the vectors */
-	v_actual = pci_enable_msix_range(pf->pdev, pf->msix_entries,
-					 ICE_MIN_MSIX, v_budget);
-	if (v_actual < 0) {
-		dev_err(dev, "unable to reserve MSI-X vectors\n");
-		err = v_actual;
-		goto msix_err;
-	}
-
-	if (v_actual < v_budget) {
-		dev_warn(dev, "not enough OS MSI-X vectors. requested = %d, obtained = %d\n",
-			 v_budget, v_actual);
-
-		if (v_actual < ICE_MIN_MSIX) {
-			/* error if we can't get minimum vectors */
-			pci_disable_msix(pf->pdev);
-			err = -ERANGE;
-			goto msix_err;
-		} else {
-			int v_remain = v_actual - v_other;
-			int v_rdma = 0, v_min_rdma = 0;
-
-			if (ice_is_rdma_ena(pf)) {
-				/* Need at least 1 interrupt in addition to
-				 * AEQ MSIX
-				 */
-				v_rdma = ICE_RDMA_NUM_AEQ_MSIX + 1;
-				v_min_rdma = ICE_MIN_RDMA_MSIX;
-			}
-
-			if (v_actual == ICE_MIN_MSIX ||
-			    v_remain < ICE_MIN_LAN_TXRX_MSIX + v_min_rdma) {
-				dev_warn(dev, "Not enough MSI-X vectors to support RDMA.\n");
-				clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
-
-				pf->num_rdma_msix = 0;
-				pf->num_lan_msix = ICE_MIN_LAN_TXRX_MSIX;
-			} else if ((v_remain < ICE_MIN_LAN_TXRX_MSIX + v_rdma) ||
-				   (v_remain - v_rdma < v_rdma)) {
-				/* Support minimum RDMA and give remaining
-				 * vectors to LAN MSIX
-				 */
-				pf->num_rdma_msix = v_min_rdma;
-				pf->num_lan_msix = v_remain - v_min_rdma;
-			} else {
-				/* Split remaining MSIX with RDMA after
-				 * accounting for AEQ MSIX
-				 */
-				pf->num_rdma_msix = (v_remain - ICE_RDMA_NUM_AEQ_MSIX) / 2 +
-						    ICE_RDMA_NUM_AEQ_MSIX;
-				pf->num_lan_msix = v_remain - pf->num_rdma_msix;
-			}
-
-			dev_notice(dev, "Enabled %d MSI-X vectors for LAN traffic.\n",
-				   pf->num_lan_msix);
-
-			if (ice_is_rdma_ena(pf))
-				dev_notice(dev, "Enabled %d MSI-X vectors for RDMA.\n",
-					   pf->num_rdma_msix);
-		}
-	}
-
-	return v_actual;
-
-msix_err:
-	devm_kfree(dev, pf->msix_entries);
-	goto exit_err;
-
-no_hw_vecs_left_err:
-	dev_err(dev, "not enough device MSI-X vectors. requested = %d, available = %d\n",
-		needed, v_left);
-	err = -ERANGE;
-exit_err:
-	ice_eswitch_clear_cap(pf);
-	pf->num_rdma_msix = 0;
-	pf->num_lan_msix = 0;
-	return err;
-}
-
-/**
- * ice_dis_msix - Disable MSI-X interrupt setup in OS
- * @pf: board private structure
- */
-static void ice_dis_msix(struct ice_pf *pf)
-{
-	pci_disable_msix(pf->pdev);
-	devm_kfree(ice_pf_to_dev(pf), pf->msix_entries);
-	pf->msix_entries = NULL;
-}
-
-/**
- * ice_clear_interrupt_scheme - Undo things done by ice_init_interrupt_scheme
- * @pf: board private structure
- */
-static void ice_clear_interrupt_scheme(struct ice_pf *pf)
-{
-	ice_dis_msix(pf);
-
-	if (pf->irq_tracker) {
-		devm_kfree(ice_pf_to_dev(pf), pf->irq_tracker);
-		pf->irq_tracker = NULL;
-	}
-}
-
-/**
- * ice_init_interrupt_scheme - Determine proper interrupt scheme
- * @pf: board private structure to initialize
- */
-static int ice_init_interrupt_scheme(struct ice_pf *pf)
-{
-	int vectors;
-
-	vectors = ice_ena_msix_range(pf);
-
-	if (vectors < 0)
-		return vectors;
-
-	/* set up vector assignment tracking */
-	pf->irq_tracker = devm_kzalloc(ice_pf_to_dev(pf),
-				       struct_size(pf->irq_tracker, list, vectors),
-				       GFP_KERNEL);
-	if (!pf->irq_tracker) {
-		ice_dis_msix(pf);
-		return -ENOMEM;
-	}
-
-	/* populate SW interrupts pool with number of OS granted IRQs. */
-	pf->num_avail_sw_msix = (u16)vectors;
-	pf->irq_tracker->num_entries = (u16)vectors;
-	pf->irq_tracker->end = pf->irq_tracker->num_entries;
-
-	return 0;
-}
-
 /**
  * ice_is_wol_supported - check if WoL is supported
  * @hw: pointer to hardware info
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 0749f0e7a11c..d32571e2abb4 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -11,6 +11,7 @@
 #include "ice_txrx.h"
 #include "ice_txrx_lib.h"
 #include "ice_lib.h"
+#include "ice_irq.h"
 
 static struct xdp_buff **ice_xdp_buf(struct ice_rx_ring *rx_ring, u32 idx)
 {
@@ -94,7 +95,7 @@ ice_qvec_dis_irq(struct ice_vsi *vsi, struct ice_rx_ring *rx_ring,
 
 		wr32(hw, GLINT_DYN_CTL(q_vector->reg_idx), 0);
 		ice_flush(hw);
-		synchronize_irq(pf->msix_entries[v_idx + base].vector);
+		synchronize_irq(ice_get_irq_num(pf, v_idx + base));
 	}
 }
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
