Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDED94B79A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 09:20:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1603081839;
	Thu,  8 Aug 2024 07:20:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t5MwHAzGdpSL; Thu,  8 Aug 2024 07:20:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E996815AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723101635;
	bh=8yrPzc+5xQugS8oueX1Cxu64XkUERctkvzq0+oYmUxY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hm6d68sS6wQ88XcV6phZwZQa14EDhbSfslyAxo+xzWgFjST2osdsQUaO8YVNw6wO1
	 phgECupz6WLhK4smyyqVwuIAJEsBUcWj3LQzhB0NC+GJbol3qXLTh2BY4eQosfCyTt
	 0ukb5W7G8b7KyHNm/elTU/LKb7Fol/X3j4tcqA3uj6gTuAZrdHKRtY45II3PhZH1wr
	 8VWRELBK6mFRVeFQynIa4vlXrQnBaXXuJoG0Zav0wdyf5SWobBOXn8fj5/wHavlHlN
	 0U8QTQA+N5WZLhdKDqU3wL66dB0/YtP5fdY60ca8eWcWm7fK3+mjhTwJ/2WYzO8U1r
	 HiAEm+sQKpUTw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E996815AD;
	Thu,  8 Aug 2024 07:20:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3541C1BF369
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 234CB607F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RJkzkBMLH4fS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 07:20:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 174E160772
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 174E160772
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 174E160772
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:32 +0000 (UTC)
X-CSE-ConnectionGUID: /6DpuE4AReqMQHe+vlyuvg==
X-CSE-MsgGUID: s8Sc1I63RPSN8egfhcikHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21361361"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="21361361"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 00:20:32 -0700
X-CSE-ConnectionGUID: RSvGtUeOSeaC72+vAY9kqw==
X-CSE-MsgGUID: NvXsgF4fQp2tT0zO0eEtqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="57073488"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa008.fm.intel.com with ESMTP; 08 Aug 2024 00:20:28 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2024 09:20:12 +0200
Message-ID: <20240808072016.10321-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723101632; x=1754637632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y2mAZun2kjCClkZTVShWLtw9ohP/asJRYt0zl7PSfJk=;
 b=I9h/4wYplNVy07E9Dre+9nCcr1Q5wd5w0GbIO7ltXIC20nA0xuDCgIcF
 MgEgRO9UTaXlwydmjqaR0ziBmRpGExPe345BbvaFUTddwqDlH7zF6+bkB
 JZTJ+RUUJa5fhnpk9Q7lWJiuEV2FE3uFPEkyYiK/tWF6lOkH2Crzwzrap
 uJr1a9IMBRXNLwn+fi0bX5kPb394Q/kLnssetg6hrn1+OFUxXjCNOIPPi
 te4yzQYQLFDS2dZ5NeE3r9jlpp8H1+JHtRv23YYnpK9Bf/fZR5zlf+kun
 D5iDMi9djiRwDdq806ti2mURmfFycCLDmGsWbqWWhrzid+zDOSBMTqQ/E
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I9h/4wYp
Subject: [Intel-wired-lan] [iwl-next v3 4/8] ice,
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

Change amount of MSI-X used for control from 4 to 1, as it isn't needed
to have more than one MSI-X for this purpose.

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
index eecf171bd0b6..b4ecf71d702b 100644
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

