Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 503DB944863
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 11:31:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4446540EAB;
	Thu,  1 Aug 2024 09:31:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8WyEE0XuYdKg; Thu,  1 Aug 2024 09:31:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35AFF40EA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722504697;
	bh=Dxy7nILRN+ChhhRD7iLf4Kh2uFtxQ/IkUQP6xqYIrHQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qi8xgKgRCYHuY5jwbGzuYq/NqYgoqaZ6+d9/DGnLsWrvc3QhY5XzfLU+jt4NIH7/l
	 NWjCv+gF/T5YUKjRh0vjfkCO+iu4jWFxl6ywtfsVUG/L+geuDh7cZ0KQQnSpgNSuZK
	 LqleOmXbr+u854wHV2El3ic7RZ6dvjank3hxZJLplpgnoAEr+PNlvAI6EDMq/n0SNv
	 F5BBPUrxYBt0V6u+aj3o4xhXHL04Gmgah+TVB4BgGd21x0ibnqGqkzYUhp7QEEdcmo
	 t8VV7oVKKwf0GP22mSQNWDCFAvD70XwVeieN70QAfD+rSexubIHbP4rKAhjl9IPOdy
	 3PIBh8NAcV74w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35AFF40EA6;
	Thu,  1 Aug 2024 09:31:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1A721BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 09:31:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CCC214018E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 09:31:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wuf11_clVxHR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 09:31:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 55D6040151
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55D6040151
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55D6040151
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 09:31:32 +0000 (UTC)
X-CSE-ConnectionGUID: KZHDQJTHRGCKv2rcFqwc8A==
X-CSE-MsgGUID: FuG9utTNRd+pjNVN+CAjrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="23363443"
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="23363443"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 02:31:31 -0700
X-CSE-ConnectionGUID: u/f5UDTgQcClCV78wPiHlQ==
X-CSE-MsgGUID: yTFK2kg6Q1CKaR+6AZ2nLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="59628216"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa004.fm.intel.com with ESMTP; 01 Aug 2024 02:31:28 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Aug 2024 11:31:12 +0200
Message-ID: <20240801093115.8553-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240801093115.8553-1-michal.swiatkowski@linux.intel.com>
References: <20240801093115.8553-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722504692; x=1754040692;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eudhOWwPZmk+w2nveQYmw3T2C2F1SqHX1hjeBCrxA3U=;
 b=lBIKvd5vQ5Z5iYUMZzLdtZuytfCxq4iIcmEGKXOoxfcp4sI6A34xYIym
 /M1LVlzqWnTJHRhilftmTRUEbFtIVLBckOa4bZBTC1mpKdWZYZ5wf00nj
 fBJFukatZMLtuSMn45YXhwqHWIKPmQhkhgSc39l7pSvqbDCN/x1sWYpEV
 tGNw6S7v2fOhKlTKz0l3H0+Tvp+cFutUYjEgHmYwF9hCWQUDaWx9Lxvf7
 RSppzlIEY1XfTMC2CpHaYGviKWQwaSgC2TXkL80sug5RGSC7fx3aUMywd
 6oOvro+/Tbdvtw5PpLgF2OCLmsBEerZczqj05VWQwG4A0ZHQK23df+zUj
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lBIKvd5v
Subject: [Intel-wired-lan] [iwl-next v2 4/7] ice,
 irdma: move interrupts code to irdma
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move responsibility of MSI-X requesting for RDMA feature from ice driver
to irdma driver. It is done to allow simple fallback when there is not
enough MSI-X available.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/infiniband/hw/irdma/hw.c         |  2 -
 drivers/infiniband/hw/irdma/main.c       | 46 ++++++++++++++++-
 drivers/infiniband/hw/irdma/main.h       |  3 ++
 drivers/net/ethernet/intel/ice/ice.h     |  2 -
 drivers/net/ethernet/intel/ice/ice_idc.c | 64 ++++++------------------
 include/linux/net/intel/iidc.h           |  2 +
 6 files changed, 63 insertions(+), 56 deletions(-)

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
index 3f13200ff71b..69ad137be7aa 100644
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
+		for (; i >= 0; i--)
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
index 8247d27541b0..1311be1d2c30 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -97,8 +97,6 @@
 #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
 #define ICE_MAX_MSIX		256
 #define ICE_FDIR_MSIX		2
-#define ICE_RDMA_NUM_AEQ_MSIX	4
-#define ICE_MIN_RDMA_MSIX	2
 #define ICE_ESWITCH_MSIX	1
 #define ICE_NO_VSI		0xffff
 #define ICE_VSI_MAP_CONTIG	0
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

