Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AA2AC2816
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 19:06:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2411D40323;
	Fri, 23 May 2025 17:06:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jihZP_PAAfpl; Fri, 23 May 2025 17:06:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC07F40798
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748019969;
	bh=SK6eWJ5ZJ6BZuwIVt1hrQW9YRuODBogj8KohqIJ1S8c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kQ3bbp7n9VwgWSfixqxy3zfi8v/wgH2yAFlcGs/Lo2AK4sNeNWKOOFcVtFGa2Rmg9
	 nHesshLsmksxpbS7mPjbQ4tYAkLn96nTG0x0qONijJVdcM4oTwKjflx9MO6ZqhUwub
	 CyPPBoTQ4N/3Le2UAs6cWNTnJNnA9a8Kpc/uzcQ9LHd+BX6351qw4Vga8hXLyNvvM6
	 0tsGF9m5s+vMsVTMhonkTgGogzInUiXuYJHmtTFaszU1qQiXBm7BVsaiiWqR4MhSyM
	 JyTnWOHgJca6I5YR6qbUiyWjSKNx5n6e8lq7RpWsEzFWaJHDAGXkYvDSNnfxsFuFg8
	 IPlXVpy+y1DhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC07F40798;
	Fri, 23 May 2025 17:06:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 43B3868
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF75540BB0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Izz-Ewjap5LF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 17:06:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C6DB5400F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6DB5400F6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6DB5400F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:02 +0000 (UTC)
X-CSE-ConnectionGUID: WxYENWLNTdSgfYbs1knE6Q==
X-CSE-MsgGUID: THPziP9qQ3eNtn5yp94how==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="60738391"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="60738391"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 10:06:03 -0700
X-CSE-ConnectionGUID: 8GsDr4RyRpWiegh3ACWl1w==
X-CSE-MsgGUID: 5t7NukksRcOy+Jla8vPVmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="164457434"
Received: from pthorat-mobl.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.116.180])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 10:06:02 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jgg@nvidia.com, leon@kernel.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri, 23 May 2025 12:04:32 -0500
Message-ID: <20250523170435.668-4-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250523170435.668-1-tatyana.e.nikolova@intel.com>
References: <20250523170435.668-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748019963; x=1779555963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TnmSqhQhawQvRGu6gGwxDvyaWAyf3L72ODeAu5743fk=;
 b=K3mTNEN03I1rTZCc8pWTYNjFYSisqlxgplgFXXbhC7gvqTlKo+XGY6FD
 ZSx5k55Vw4ErpbL3J+3GS0syrQAv1dQBMDDekN+ivuePPYnEfBrFqSZgu
 BErEQEDc+q6E4YhENHuZh3dlfW1i0hIMAtL0aHl5q0+PIS4TJU2ICr2aU
 EJuSMlJxX7a01HnP3Q9kzLrcgu5apw8Y+S5P/ocCHm5+8zQ12NcZ7Kyua
 FHWK5cNYjmgaGNXRc7IY+qtsYY7FuMBnXmmrz7hx0+AgM+gEq0eidzt6D
 wa28iBOySUuqWGTsmsgChoivYCzxjVWZJjZyJhgwNz8kqxjSJSFGUXqXE
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K3mTNEN0
Subject: [Intel-wired-lan] [iwl-next 3/6] idpf: implement RDMA vport
 auxiliary dev create, init, and destroy
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joshua Hay <joshua.a.hay@intel.com>

Implement the functions to create, initialize, and destroy an RDMA vport
auxiliary device. The vport aux dev creation is dependent on the
core aux device to call idpf_idc_vport_dev_ctrl to signal that it is
ready for vport aux devices. Implement that core callback to either
create and initialize the vport aux dev or deinitialize.

Rdma vport aux dev creation is also dependent on the control plane to
tell us the vport is RDMA enabled. Add a flag in the create vport
message to signal individual vport RDMA capabilities.

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---

Changes since split:
- align with new header naming and split
- use signed ret value from ida_alloc and only assign
  unsigned id if no err
- capitalize some abbreviations
- add missing field descriptions
- remove unnecessary casts

[2]:
- Guard against unplugging vport aux dev twice. This is possible if
irdma is unloaded and then idpf is unloaded. irdma calls
idpf_idc_vport_dev_down during its unload which calls unplug. Set the
adev to NULL in dev_down, so that the following call to
deinit_vport_aux_device during idpf unload will return early from
unplug.

 drivers/net/ethernet/intel/idpf/idpf.h      |   4 +
 drivers/net/ethernet/intel/idpf/idpf_idc.c  | 178 +++++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_lib.c  |   2 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h |  13 +-
 include/linux/net/intel/iidc_rdma_idpf.h    |  19 +++
 5 files changed, 213 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index d72e523067dc..54aaef4da059 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -276,6 +276,7 @@ struct idpf_port_stats {
  *	      group will yield total number of RX queues.
  * @rxq_model: Splitq queue or single queue queuing model
  * @rx_ptype_lkup: Lookup table for ptypes on RX
+ * @vdev_info: IDC vport device info pointer
  * @adapter: back pointer to associated adapter
  * @netdev: Associated net_device. Each vport should have one and only one
  *	    associated netdev.
@@ -318,6 +319,8 @@ struct idpf_vport {
 	u32 rxq_model;
 	struct libeth_rx_pt *rx_ptype_lkup;
 
+	struct iidc_rdma_vport_dev_info *vdev_info;
+
 	struct idpf_adapter *adapter;
 	struct net_device *netdev;
 	DECLARE_BITMAP(flags, IDPF_VPORT_FLAGS_NBITS);
@@ -869,5 +872,6 @@ int idpf_idc_init(struct idpf_adapter *adapter);
 int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
 			       enum iidc_function_type ftype);
 void idpf_idc_deinit_core_aux_device(struct iidc_rdma_core_dev_info *cdev_info);
+void idpf_idc_deinit_vport_aux_device(struct iidc_rdma_vport_dev_info *vdev_info);
 
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index 56c02bad466c..a869966b5941 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -30,6 +30,113 @@ int idpf_idc_init(struct idpf_adapter *adapter)
 	return err;
 }
 
+/**
+ * idpf_vport_adev_release - function to be mapped to aux dev's release op
+ * @dev: pointer to device to free
+ */
+static void idpf_vport_adev_release(struct device *dev)
+{
+	struct iidc_rdma_vport_auxiliary_dev *iadev;
+
+	iadev = container_of(dev, struct iidc_rdma_vport_auxiliary_dev, adev.dev);
+	kfree(iadev);
+	iadev = NULL;
+}
+
+/* idpf_plug_vport_aux_dev - allocate and register a vport Auxiliary device
+ * @cdev_info: IDC core device info pointer
+ * @vdev_info: IDC vport device info pointer
+ *
+ * Return: 0 on success or error code on failure.
+ */
+static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
+				   struct iidc_rdma_vport_dev_info *vdev_info)
+{
+	struct iidc_rdma_vport_auxiliary_dev *iadev;
+	char name[IDPF_IDC_MAX_ADEV_NAME_LEN];
+	struct auxiliary_device *adev;
+	int ret;
+
+	iadev = kzalloc(sizeof(*iadev), GFP_KERNEL);
+	if (!iadev)
+		return -ENOMEM;
+
+	adev = &iadev->adev;
+	vdev_info->adev = &iadev->adev;
+	iadev->vdev_info = vdev_info;
+
+	ret = ida_alloc(&idpf_idc_ida, GFP_KERNEL);
+	if (ret < 0) {
+		pr_err("failed to allocate unique device ID for Auxiliary driver\n");
+		goto err_ida_alloc;
+	}
+	adev->id = ret;
+	adev->dev.release = idpf_vport_adev_release;
+	adev->dev.parent = &cdev_info->pdev->dev;
+	sprintf(name, "%04x.rdma.vdev", cdev_info->pdev->vendor);
+	adev->name = name;
+
+	ret = auxiliary_device_init(adev);
+	if (ret)
+		goto err_aux_dev_init;
+
+	ret = auxiliary_device_add(adev);
+	if (ret)
+		goto err_aux_dev_add;
+
+	return 0;
+
+err_aux_dev_add:
+	vdev_info->adev = NULL;
+	auxiliary_device_uninit(adev);
+err_aux_dev_init:
+	ida_free(&idpf_idc_ida, adev->id);
+err_ida_alloc:
+	kfree(iadev);
+
+	return ret;
+}
+
+/**
+ * idpf_idc_init_aux_vport_dev - initialize vport Auxiliary Device(s)
+ * @vport: virtual port data struct
+ *
+ * Return: 0 on success or error code on failure.
+ */
+static int idpf_idc_init_aux_vport_dev(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct iidc_rdma_vport_dev_info *vdev_info;
+	struct iidc_rdma_core_dev_info *cdev_info;
+	struct virtchnl2_create_vport *vport_msg;
+	int err;
+
+	vport_msg = (struct virtchnl2_create_vport *)
+				adapter->vport_params_recvd[vport->idx];
+
+	if (!(le16_to_cpu(vport_msg->vport_flags) & VIRTCHNL2_VPORT_ENABLE_RDMA))
+		return 0;
+
+	vport->vdev_info = kzalloc(sizeof(*vdev_info), GFP_KERNEL);
+	if (!vport->vdev_info)
+		return -ENOMEM;
+
+	cdev_info = vport->adapter->cdev_info;
+
+	vdev_info = vport->vdev_info;
+	vdev_info->vport_id = vport->vport_id;
+	vdev_info->netdev = vport->netdev;
+	vdev_info->core_adev = cdev_info->adev;
+
+	err = idpf_plug_vport_aux_dev(cdev_info, vdev_info);
+	if (err) {
+		kfree(vdev_info);
+		return err;
+	}
+
+	return 0;
+}
+
 /**
  * idpf_core_adev_release - function to be mapped to aux dev's release op
  * @dev: pointer to device to free
@@ -100,12 +207,60 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
  */
 static void idpf_unplug_aux_dev(struct auxiliary_device *adev)
 {
+	if (!adev)
+		return;
+
 	auxiliary_device_delete(adev);
 	auxiliary_device_uninit(adev);
 
 	ida_free(&idpf_idc_ida, adev->id);
 }
 
+/**
+ * idpf_idc_vport_dev_up - called when CORE is ready for vport aux devs
+ * @adapter: private data struct
+ *
+ * Return: 0 on success or error code on failure.
+ */
+static int idpf_idc_vport_dev_up(struct idpf_adapter *adapter)
+{
+	int i, err = 0;
+
+	for (i = 0; i < adapter->num_alloc_vports; i++) {
+		struct idpf_vport *vport = adapter->vports[i];
+
+		if (!vport)
+			continue;
+
+		if (!vport->vdev_info)
+			err = idpf_idc_init_aux_vport_dev(vport);
+		else
+			err = idpf_plug_vport_aux_dev(vport->adapter->cdev_info,
+						      vport->vdev_info);
+	}
+
+	return err;
+}
+
+/**
+ * idpf_idc_vport_dev_down - called CORE is leaving vport aux dev support state
+ * @adapter: private data struct
+ */
+static void idpf_idc_vport_dev_down(struct idpf_adapter *adapter)
+{
+	int i;
+
+	for (i = 0; i < adapter->num_alloc_vports; i++) {
+		struct idpf_vport *vport = adapter->vports[i];
+
+		if (!vport)
+			continue;
+
+		idpf_unplug_aux_dev(vport->vdev_info->adev);
+		vport->vdev_info->adev = NULL;
+	}
+}
+
 /**
  * idpf_idc_vport_dev_ctrl - Called by an Auxiliary Driver
  * @cdev_info: IDC core device info pointer
@@ -119,7 +274,14 @@ static void idpf_unplug_aux_dev(struct auxiliary_device *adev)
  */
 int idpf_idc_vport_dev_ctrl(struct iidc_rdma_core_dev_info *cdev_info, bool up)
 {
-	return -EOPNOTSUPP;
+	struct idpf_adapter *adapter = pci_get_drvdata(cdev_info->pdev);
+
+	if (up)
+		return idpf_idc_vport_dev_up(adapter);
+
+	idpf_idc_vport_dev_down(adapter);
+
+	return 0;
 }
 EXPORT_SYMBOL_GPL(idpf_idc_vport_dev_ctrl);
 
@@ -221,3 +383,17 @@ void idpf_idc_deinit_core_aux_device(struct iidc_rdma_core_dev_info *cdev_info)
 	kfree(cdev_info->iidc_priv);
 	kfree(cdev_info);
 }
+
+/**
+ * idpf_idc_deinit_vport_aux_device - de-initialize Auxiliary Device(s)
+ * @vdev_info: IDC vport device info pointer
+ */
+void idpf_idc_deinit_vport_aux_device(struct iidc_rdma_vport_dev_info *vdev_info)
+{
+	if (!vdev_info)
+		return;
+
+	idpf_unplug_aux_dev(vdev_info->adev);
+
+	kfree(vdev_info);
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index e1546ae13c88..5c2b7a76db33 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1052,6 +1052,8 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 	struct idpf_adapter *adapter = vport->adapter;
 	unsigned int i = vport->idx;
 
+	idpf_idc_deinit_vport_aux_device(vport->vdev_info);
+
 	idpf_deinit_mac_addr(vport);
 	idpf_vport_stop(vport);
 
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 80c17e4a394e..673a39e6698d 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -562,6 +562,15 @@ struct virtchnl2_queue_reg_chunks {
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_reg_chunks);
 
+/**
+ * enum virtchnl2_vport_flags - Vport flags
+ * @VIRTCHNL2_VPORT_ENABLE_RDMA: RDMA is enabled for this vport
+ */
+enum virtchnl2_vport_flags {
+	/* VIRTCHNL2_VPORT_* bits [0:3] rsvd */
+	VIRTCHNL2_VPORT_ENABLE_RDMA             = BIT(4),
+};
+
 /**
  * struct virtchnl2_create_vport - Create vport config info.
  * @vport_type: See enum virtchnl2_vport_type.
@@ -580,7 +589,7 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_reg_chunks);
  * @max_mtu: Max MTU. CP populates this field on response.
  * @vport_id: Vport id. CP populates this field on response.
  * @default_mac_addr: Default MAC address.
- * @pad: Padding.
+ * @vport_flags: See enum virtchnl2_vport_flags
  * @rx_desc_ids: See VIRTCHNL2_RX_DESC_IDS definitions.
  * @tx_desc_ids: See VIRTCHNL2_TX_DESC_IDS definitions.
  * @pad1: Padding.
@@ -613,7 +622,7 @@ struct virtchnl2_create_vport {
 	__le16 max_mtu;
 	__le32 vport_id;
 	u8 default_mac_addr[ETH_ALEN];
-	__le16 pad;
+	__le16 vport_flags;
 	__le64 rx_desc_ids;
 	__le64 tx_desc_ids;
 	u8 pad1[72];
diff --git a/include/linux/net/intel/iidc_rdma_idpf.h b/include/linux/net/intel/iidc_rdma_idpf.h
index f2fe1844f660..16c970dd4c6e 100644
--- a/include/linux/net/intel/iidc_rdma_idpf.h
+++ b/include/linux/net/intel/iidc_rdma_idpf.h
@@ -6,6 +6,25 @@
 
 #include <linux/auxiliary_bus.h>
 
+/* struct to be populated by core LAN PCI driver */
+struct iidc_rdma_vport_dev_info {
+	struct auxiliary_device *adev;
+	struct auxiliary_device *core_adev;
+	struct net_device *netdev;
+	u16 vport_id;
+};
+
+struct iidc_rdma_vport_auxiliary_dev {
+	struct auxiliary_device adev;
+	struct iidc_rdma_vport_dev_info *vdev_info;
+};
+
+struct iidc_rdma_vport_auxiliary_drv {
+	struct auxiliary_driver adrv;
+	void (*event_handler)(struct iidc_rdma_vport_dev_info *vdev,
+			      struct iidc_rdma_event *event);
+};
+
 /* struct to be populated by core LAN PCI driver */
 enum iidc_function_type {
 	IIDC_FUNCTION_TYPE_PF,
-- 
2.37.3

