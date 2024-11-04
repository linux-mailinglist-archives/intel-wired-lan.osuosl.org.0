Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3574E9BB456
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 13:14:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E25C4404CB;
	Mon,  4 Nov 2024 12:14:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ApbjV2NtnO2; Mon,  4 Nov 2024 12:14:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50EAC404D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730722444;
	bh=9TcY3xVK20GgwgatAR//obZ92yTFyADI9fRnwu9XmUQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YDEkAI6IpInUfSpFzPPE63A4ikmD5VwBhHkPmYnpvHIzpSBBzbZr7hH2i8oyZIF/I
	 q63n7GaYCNHrDqsa6rFkcf11Iy6pq6WUC92XOmGrewvqH/ZFeJw0DzlFEaSfOcGh/o
	 YTd7HQnryb2yuFNY0UofJU19OpUjrAHG61QIaTRGXkZxa0hmX5sOsC3OOnmAyvM3Wc
	 zshxi4CqAIhvlCiSbJIB90MuNjSGF7JobR1UGmFBjP9BWfmO1sQGJpkZqkpyERPLzc
	 2l42LaT7bEHyosbYAtR0exRcDK+7PnrhFMDskoYbhveKMLPUaKP7dpnnTICKNnTBG2
	 kUScFgC3ynnzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50EAC404D0;
	Mon,  4 Nov 2024 12:14:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A9E52723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98479404C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Ne3klbVU8KF for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 12:14:01 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4B98F404AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B98F404AA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4B98F404AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:01 +0000 (UTC)
X-CSE-ConnectionGUID: jr7xhvRVRxKJ54ldkPR9mA==
X-CSE-MsgGUID: y8vGA9nvSZ+0b7DIWNn3cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="29843702"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="29843702"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 04:14:01 -0800
X-CSE-ConnectionGUID: hcBgOxv4Q2OoPu4fBdEUVg==
X-CSE-MsgGUID: fp4mbKZIQnKC3wHTPAdeLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83525773"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 04 Nov 2024 04:13:57 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Nov 2024 13:13:33 +0100
Message-ID: <20241104121337.129287-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730722441; x=1762258441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wzP+v0UE2G7eT7sU+n7I5LaeODLT5vGiXwgfVU9YKjI=;
 b=Lmmnnj3Ke7Y5FLZQ89ohQG4PCFFeWhwYpeWMLsGsrVExF3wWkhultIcD
 6RSMiF5kGi9vZFZqEY4c2Dwa0qkl6KPznTvgd9z6xUXAj3LqB9P5/KJZ7
 QJrfTyoT2sOIrU3NbbICzfIv46korkE72sQRNKCRUKdUafTCFs1JesBeT
 JTZjikcd65awR+qdOUFFGMnSaCY+tVLDh5mKVivVtOGku1Cy2A540Itij
 GaKnmp99WIKWJdnIy4+MNxQTGtgCa6StvXmEOJ1FccfBaG6UtJxvx2SIx
 t8IPSf98FQEBU9fZ2nWw0oN/XR1d195nMe4mwI/zVsblhWnlbPPLJ5mdm
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lmmnnj3K
Subject: [Intel-wired-lan] [iwl-next v7 5/9] ice,
 irdma: move interrupts code to irdma
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: pmenzel@molgen.mpg.de, wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 horms@kernel.org, David.Laight@ACULAB.COM, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 jiri@resnulli.us, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move responsibility of MSI-X requesting for RDMA feature from ice driver
to irdma driver. It is done to allow simple fallback when there is not
enough MSI-X available.

Change amount of MSI-X used for control from 4 to 1, as it isn't needed
to have more than one MSI-X for this purpose.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/infiniband/hw/irdma/hw.c         |  2 -
 drivers/infiniband/hw/irdma/main.c       | 46 ++++++++++++++++-
 drivers/infiniband/hw/irdma/main.h       |  3 ++
 drivers/net/ethernet/intel/ice/ice.h     |  1 -
 drivers/net/ethernet/intel/ice/ice_idc.c | 64 ++++++------------------
 drivers/net/ethernet/intel/ice/ice_irq.c |  3 +-
 include/linux/net/intel/iidc.h           |  2 +
 7 files changed, 65 insertions(+), 56 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
index ad50b77282f8..69ce1862eabe 100644
--- a/drivers/infiniband/hw/irdma/hw.c
+++ b/drivers/infiniband/hw/irdma/hw.c
@@ -498,8 +498,6 @@ static int irdma_save_msix_info(struct irdma_pci_f *rf)
 	iw_qvlist->num_vectors = rf->msix_count;
 	if (rf->msix_count <= num_online_cpus())
 		rf->msix_shared = true;
-	else if (rf->msix_count > num_online_cpus() + 1)
-		rf->msix_count = num_online_cpus() + 1;
 
 	pmsix = rf->msix_entries;
 	for (i = 0, ceq_idx = 0; i < rf->msix_count; i++, iw_qvinfo++) {
diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
index 3f13200ff71b..1ee8969595d3 100644
--- a/drivers/infiniband/hw/irdma/main.c
+++ b/drivers/infiniband/hw/irdma/main.c
@@ -206,6 +206,43 @@ static void irdma_lan_unregister_qset(struct irdma_sc_vsi *vsi,
 		ibdev_dbg(&iwdev->ibdev, "WS: LAN free_res for rdma qset failed.\n");
 }
 
+static int irdma_init_interrupts(struct irdma_pci_f *rf, struct ice_pf *pf)
+{
+	int i;
+
+	rf->msix_count = num_online_cpus() + IRDMA_NUM_AEQ_MSIX;
+	rf->msix_entries = kcalloc(rf->msix_count, sizeof(*rf->msix_entries),
+				   GFP_KERNEL);
+	if (!rf->msix_entries)
+		return -ENOMEM;
+
+	for (i = 0; i < rf->msix_count; i++)
+		if (ice_alloc_rdma_qvector(pf, &rf->msix_entries[i]))
+			break;
+
+	if (i < IRDMA_MIN_MSIX) {
+		for (; i > 0; i--)
+			ice_free_rdma_qvector(pf, &rf->msix_entries[i]);
+
+		kfree(rf->msix_entries);
+		return -ENOMEM;
+	}
+
+	rf->msix_count = i;
+
+	return 0;
+}
+
+static void irdma_deinit_interrupts(struct irdma_pci_f *rf, struct ice_pf *pf)
+{
+	int i;
+
+	for (i = 0; i < rf->msix_count; i++)
+		ice_free_rdma_qvector(pf, &rf->msix_entries[i]);
+
+	kfree(rf->msix_entries);
+}
+
 static void irdma_remove(struct auxiliary_device *aux_dev)
 {
 	struct iidc_auxiliary_dev *iidc_adev = container_of(aux_dev,
@@ -216,6 +253,7 @@ static void irdma_remove(struct auxiliary_device *aux_dev)
 
 	irdma_ib_unregister_device(iwdev);
 	ice_rdma_update_vsi_filter(pf, iwdev->vsi_num, false);
+	irdma_deinit_interrupts(iwdev->rf, pf);
 
 	pr_debug("INIT: Gen2 PF[%d] device remove success\n", PCI_FUNC(pf->pdev->devfn));
 }
@@ -230,9 +268,7 @@ static void irdma_fill_device_info(struct irdma_device *iwdev, struct ice_pf *pf
 	rf->gen_ops.unregister_qset = irdma_lan_unregister_qset;
 	rf->hw.hw_addr = pf->hw.hw_addr;
 	rf->pcidev = pf->pdev;
-	rf->msix_count =  pf->num_rdma_msix;
 	rf->pf_id = pf->hw.pf_id;
-	rf->msix_entries = &pf->msix_entries[pf->rdma_base_vector];
 	rf->default_vsi.vsi_idx = vsi->vsi_num;
 	rf->protocol_used = pf->rdma_mode & IIDC_RDMA_PROTOCOL_ROCEV2 ?
 			    IRDMA_ROCE_PROTOCOL_ONLY : IRDMA_IWARP_PROTOCOL_ONLY;
@@ -281,6 +317,10 @@ static int irdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_
 	irdma_fill_device_info(iwdev, pf, vsi);
 	rf = iwdev->rf;
 
+	err = irdma_init_interrupts(rf, pf);
+	if (err)
+		goto err_init_interrupts;
+
 	err = irdma_ctrl_init_hw(rf);
 	if (err)
 		goto err_ctrl_init;
@@ -311,6 +351,8 @@ static int irdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_
 err_rt_init:
 	irdma_ctrl_deinit_hw(rf);
 err_ctrl_init:
+	irdma_deinit_interrupts(rf, pf);
+err_init_interrupts:
 	kfree(iwdev->rf);
 	ib_dealloc_device(&iwdev->ibdev);
 
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index 9f0ed6e84471..ef9a9b79d711 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -117,6 +117,9 @@ extern struct auxiliary_driver i40iw_auxiliary_drv;
 
 #define IRDMA_IRQ_NAME_STR_LEN (64)
 
+#define IRDMA_NUM_AEQ_MSIX	1
+#define IRDMA_MIN_MSIX		2
+
 enum init_completion_state {
 	INVALID_STATE = 0,
 	INITIAL_STATE,
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f497f7d6eb71..14a90c916d43 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -97,7 +97,6 @@
 #define ICE_MIN_LAN_OICR_MSIX	1
 #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
 #define ICE_FDIR_MSIX		2
-#define ICE_RDMA_NUM_AEQ_MSIX	4
 #define ICE_NO_VSI		0xffff
 #define ICE_VSI_MAP_CONTIG	0
 #define ICE_VSI_MAP_SCATTER	1
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 145b27f2a4ce..bab3e81cad5d 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -228,61 +228,34 @@ void ice_get_qos_params(struct ice_pf *pf, struct iidc_qos_params *qos)
 }
 EXPORT_SYMBOL_GPL(ice_get_qos_params);
 
-/**
- * ice_alloc_rdma_qvectors - Allocate vector resources for RDMA driver
- * @pf: board private structure to initialize
- */
-static int ice_alloc_rdma_qvectors(struct ice_pf *pf)
+int ice_alloc_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry)
 {
-	if (ice_is_rdma_ena(pf)) {
-		int i;
-
-		pf->msix_entries = kcalloc(pf->num_rdma_msix,
-					   sizeof(*pf->msix_entries),
-						  GFP_KERNEL);
-		if (!pf->msix_entries)
-			return -ENOMEM;
+	struct msi_map map = ice_alloc_irq(pf, true);
 
-		/* RDMA is the only user of pf->msix_entries array */
-		pf->rdma_base_vector = 0;
-
-		for (i = 0; i < pf->num_rdma_msix; i++) {
-			struct msix_entry *entry = &pf->msix_entries[i];
-			struct msi_map map;
+	if (map.index < 0)
+		return -ENOMEM;
 
-			map = ice_alloc_irq(pf, false);
-			if (map.index < 0)
-				break;
+	entry->entry = map.index;
+	entry->vector = map.virq;
 
-			entry->entry = map.index;
-			entry->vector = map.virq;
-		}
-	}
 	return 0;
 }
+EXPORT_SYMBOL_GPL(ice_alloc_rdma_qvector);
 
 /**
  * ice_free_rdma_qvector - free vector resources reserved for RDMA driver
  * @pf: board private structure to initialize
+ * @entry: MSI-X entry to be removed
  */
-static void ice_free_rdma_qvector(struct ice_pf *pf)
+void ice_free_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry)
 {
-	int i;
-
-	if (!pf->msix_entries)
-		return;
-
-	for (i = 0; i < pf->num_rdma_msix; i++) {
-		struct msi_map map;
+	struct msi_map map;
 
-		map.index = pf->msix_entries[i].entry;
-		map.virq = pf->msix_entries[i].vector;
-		ice_free_irq(pf, map);
-	}
-
-	kfree(pf->msix_entries);
-	pf->msix_entries = NULL;
+	map.index = entry->entry;
+	map.virq = entry->vector;
+	ice_free_irq(pf, map);
 }
+EXPORT_SYMBOL_GPL(ice_free_rdma_qvector);
 
 /**
  * ice_adev_release - function to be mapped to AUX dev's release op
@@ -382,12 +355,6 @@ int ice_init_rdma(struct ice_pf *pf)
 		return -ENOMEM;
 	}
 
-	/* Reserve vector resources */
-	ret = ice_alloc_rdma_qvectors(pf);
-	if (ret < 0) {
-		dev_err(dev, "failed to reserve vectors for RDMA\n");
-		goto err_reserve_rdma_qvector;
-	}
 	pf->rdma_mode |= IIDC_RDMA_PROTOCOL_ROCEV2;
 	ret = ice_plug_aux_dev(pf);
 	if (ret)
@@ -395,8 +362,6 @@ int ice_init_rdma(struct ice_pf *pf)
 	return 0;
 
 err_plug_aux_dev:
-	ice_free_rdma_qvector(pf);
-err_reserve_rdma_qvector:
 	pf->adev = NULL;
 	xa_erase(&ice_aux_id, pf->aux_idx);
 	return ret;
@@ -412,6 +377,5 @@ void ice_deinit_rdma(struct ice_pf *pf)
 		return;
 
 	ice_unplug_aux_dev(pf);
-	ice_free_rdma_qvector(pf);
 	xa_erase(&ice_aux_id, pf->aux_idx);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index 1a7d446ab5f1..80c9ee2e64c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -84,11 +84,12 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf, bool dyn_only)
 	return entry;
 }
 
+#define ICE_RDMA_AEQ_MSIX 1
 static int ice_get_default_msix_amount(struct ice_pf *pf)
 {
 	return ICE_MIN_LAN_OICR_MSIX + num_online_cpus() +
 	       (test_bit(ICE_FLAG_FD_ENA, pf->flags) ? ICE_FDIR_MSIX : 0) +
-	       (ice_is_rdma_ena(pf) ? num_online_cpus() + ICE_RDMA_NUM_AEQ_MSIX : 0);
+	       (ice_is_rdma_ena(pf) ? num_online_cpus() + ICE_RDMA_AEQ_MSIX : 0);
 }
 
 /**
diff --git a/include/linux/net/intel/iidc.h b/include/linux/net/intel/iidc.h
index 1c1332e4df26..13274c3def66 100644
--- a/include/linux/net/intel/iidc.h
+++ b/include/linux/net/intel/iidc.h
@@ -78,6 +78,8 @@ int ice_del_rdma_qset(struct ice_pf *pf, struct iidc_rdma_qset_params *qset);
 int ice_rdma_request_reset(struct ice_pf *pf, enum iidc_reset_type reset_type);
 int ice_rdma_update_vsi_filter(struct ice_pf *pf, u16 vsi_id, bool enable);
 void ice_get_qos_params(struct ice_pf *pf, struct iidc_qos_params *qos);
+int ice_alloc_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry);
+void ice_free_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry);
 
 /* Structure representing auxiliary driver tailored information about the core
  * PCI dev, each auxiliary driver using the IIDC interface will have an
-- 
2.42.0

