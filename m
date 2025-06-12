Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A47AD7E03
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 00:00:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1C948217D;
	Thu, 12 Jun 2025 22:00:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GdF7YVHVvRkC; Thu, 12 Jun 2025 22:00:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45127820D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749765624;
	bh=TNbThxzKqqWiO8BEw+VX/h+63HH3rJ4BIJwFvpRPdXY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a/foO6vNjDgxgP95x+4Gu3podLA3X7tg1e9AA4u5oBkG6S9afp77l/7V0sPsrjFZG
	 eMQLZoLWzk6fJmybyANtwOeUvYqt2k8GBvYuIrLZzU50pHMsgSgbJWtCnCrU9imCa/
	 e55mzblXBvNnR/RS5bLw7+YvVdTh98NgiYj11bZKNU96/LO3pCm0ojBvABZzbJQYPW
	 4WZJrvhV0EAk7gpM+Tar64uxaB51Hqk7NCFz3K5Hr5gspOlwA/hooEtfKsa1+S+oMc
	 x/uk6+BmbqHePOG1YJ/A2/oyiZ0nsO3PXMeTt4TyNTxLmivBXQt7/c+ps+kKOBTtVy
	 iRsRBGa77uOog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45127820D7;
	Thu, 12 Jun 2025 22:00:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 54CCF1BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 22:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7BBF81F6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 22:00:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZlE4ggAy1xUw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 22:00:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A772281F33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A772281F33
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A772281F33
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 22:00:19 +0000 (UTC)
X-CSE-ConnectionGUID: DtUcckQVRfKu7MD6WzBGmw==
X-CSE-MsgGUID: bckpEu/KREKRMLwDhmylGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51078261"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="51078261"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 15:00:19 -0700
X-CSE-ConnectionGUID: 0jwVULveRviCgQhli1iFIw==
X-CSE-MsgGUID: gS3pRr9ySb2C/vC8z088qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148004206"
Received: from pthorat-mobl.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.116.180])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 15:00:18 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jgg@nvidia.com, leon@kernel.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Thu, 12 Jun 2025 16:59:58 -0500
Message-ID: <20250612220002.1120-3-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250612220002.1120-1-tatyana.e.nikolova@intel.com>
References: <20250612220002.1120-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749765619; x=1781301619;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IwSntRbNryz4S95cnMnsz8rMCR9aG3ztXQdrUZRmu+E=;
 b=HJ0+E+yosaFDR6chcQQX7LZTjxLk8NOLJF9anyDVyTXNNEzcCRti5PK3
 axV3JrJBQUMw/JlhNl9lqtCRUOyAd0b+n0nSCBxFyGm7dzchIUlviFgeW
 QbsnRM+5NTo3r2O/ZVsJH8LDgM5755joAmGZCzeAUEdQCKWY6kvjaL/CQ
 UjzsqWJN9aBUgUF57KT9tKWxesZjSdjBSpzYE/0xoqm+U1nvhmGCVHYrO
 WtcME9V+bf27QNzRnAYI1vubEj1gAoZzsfK3AFQPa9LdOtSz1hbh7oRhe
 jpnSsY8pn/W7l+tcVDFymC/2RpEG5NLyvlQZcBTZiJUBeaFsD2c93eVpc
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HJ0+E+yo
Subject: [Intel-wired-lan] [iwl-next v2 2/6] idpf: implement core RDMA
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

Add the initial idpf_idc.c file with the functions to kick off the IDC
initialization, create and initialize a core RDMA auxiliary device, and
destroy said device.

The RDMA core has a dependency on the vports being created by the
control plane before it can be initialized. Therefore, once all the
vports are up after a hard reset (either during driver load a function
level reset), the core RDMA device info will be created. It is populated
with the function type (as distinguished by the IDC initialization
function pointer), the core idc_ops function points (just stubs for
now), the reserved RDMA MSIX table, and various other info the core RDMA
auxiliary driver will need. It is then plugged on to the bus.

During a function level reset or driver unload, the device will be
unplugged from the bus and destroyed.

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---

v2:
- initialize cdev_info earlier to properly free it in error path

Changes since split (v1):
- replace core dev_ops with exported symbols
- align with new header split scheme (idc_rdma->iidc_rdma and
  iidc_rdma_idpf specific header)

[3]:
- use signed ret value from ida_alloc and only assign
  unsigned id if no err
- capitalize some abbreviations
- add missing field descriptions

 drivers/net/ethernet/intel/idpf/Makefile      |   1 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  11 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  13 +
 drivers/net/ethernet/intel/idpf/idpf_idc.c    | 223 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   4 +
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  13 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  20 ++
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   3 +
 include/linux/net/intel/iidc_rdma_idpf.h      |  28 +++
 9 files changed, 316 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_idc.c
 create mode 100644 include/linux/net/intel/iidc_rdma_idpf.h

diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
index 83ac5e296382..4ef4b2b5e37a 100644
--- a/drivers/net/ethernet/intel/idpf/Makefile
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -10,6 +10,7 @@ idpf-y := \
 	idpf_controlq_setup.o	\
 	idpf_dev.o		\
 	idpf_ethtool.o		\
+	idpf_idc.o		\
 	idpf_lib.o		\
 	idpf_main.o		\
 	idpf_txrx.o		\
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index d9f06764aba0..6b1cc55e34a3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -17,6 +17,8 @@ struct idpf_vport_max_q;
 #include <linux/sctp.h>
 #include <linux/ethtool_netlink.h>
 #include <net/gro.h>
+#include <linux/net/intel/iidc_rdma.h>
+#include <linux/net/intel/iidc_rdma_idpf.h>
 
 #include "virtchnl2.h"
 #include "idpf_txrx.h"
@@ -206,9 +208,12 @@ struct idpf_reg_ops {
 /**
  * struct idpf_dev_ops - Device specific operations
  * @reg_ops: Register operations
+ * @idc_init: IDC initialization
  */
 struct idpf_dev_ops {
 	struct idpf_reg_ops reg_ops;
+
+	int (*idc_init)(struct idpf_adapter *adapter);
 };
 
 /**
@@ -540,6 +545,7 @@ struct idpf_vc_xn_manager;
  * @caps: Negotiated capabilities with device
  * @vcxn_mngr: Virtchnl transaction manager
  * @dev_ops: See idpf_dev_ops
+ * @cdev_info: IDC core device info pointer
  * @num_vfs: Number of allocated VFs through sysfs. PF does not directly talk
  *	     to VFs but is used to initialize them
  * @crc_enable: Enable CRC insertion offload
@@ -599,6 +605,7 @@ struct idpf_adapter {
 	struct idpf_vc_xn_manager *vcxn_mngr;
 
 	struct idpf_dev_ops dev_ops;
+	struct iidc_rdma_core_dev_info *cdev_info;
 	int num_vfs;
 	bool crc_enable;
 	bool req_tx_splitq;
@@ -877,5 +884,9 @@ int idpf_sriov_configure(struct pci_dev *pdev, int num_vfs);
 
 u8 idpf_vport_get_hsplit(const struct idpf_vport *vport);
 bool idpf_vport_set_hsplit(const struct idpf_vport *vport, u8 val);
+int idpf_idc_init(struct idpf_adapter *adapter);
+int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
+			       enum iidc_function_type ftype);
+void idpf_idc_deinit_core_aux_device(struct iidc_rdma_core_dev_info *cdev_info);
 
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 3fae81f1f988..dd227a4368fb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -161,6 +161,17 @@ static void idpf_ptp_reg_init(const struct idpf_adapter *adapter)
 	adapter->ptp->cmd.exec_cmd_mask = PF_GLTSYN_CMD_SYNC_EXEC_CMD_M;
 }
 
+/**
+ * idpf_idc_register - register for IDC callbacks
+ * @adapter: Driver specific private structure
+ *
+ * Return: 0 on success or error code on failure.
+ */
+static int idpf_idc_register(struct idpf_adapter *adapter)
+{
+	return idpf_idc_init_aux_core_dev(adapter, IIDC_FUNCTION_TYPE_PF);
+}
+
 /**
  * idpf_reg_ops_init - Initialize register API function pointers
  * @adapter: Driver specific private structure
@@ -182,4 +193,6 @@ static void idpf_reg_ops_init(struct idpf_adapter *adapter)
 void idpf_dev_ops_init(struct idpf_adapter *adapter)
 {
 	idpf_reg_ops_init(adapter);
+
+	adapter->dev_ops.idc_init = idpf_idc_register;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
new file mode 100644
index 000000000000..5550802a3a7d
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -0,0 +1,223 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2025 Intel Corporation */
+
+#include "idpf.h"
+#include "idpf_virtchnl.h"
+
+static DEFINE_IDA(idpf_idc_ida);
+
+#define IDPF_IDC_MAX_ADEV_NAME_LEN	15
+
+/**
+ * idpf_idc_init - Called to initialize IDC
+ * @adapter: driver private data structure
+ *
+ * Return: 0 on success or cap not enabled, error code on failure.
+ */
+int idpf_idc_init(struct idpf_adapter *adapter)
+{
+	int err;
+
+	if (!idpf_is_rdma_cap_ena(adapter) ||
+	    !adapter->dev_ops.idc_init)
+		return 0;
+
+	err = adapter->dev_ops.idc_init(adapter);
+	if (err)
+		dev_err(&adapter->pdev->dev, "failed to initialize idc: %d\n",
+			err);
+
+	return err;
+}
+
+/**
+ * idpf_core_adev_release - function to be mapped to aux dev's release op
+ * @dev: pointer to device to free
+ */
+static void idpf_core_adev_release(struct device *dev)
+{
+	struct iidc_rdma_core_auxiliary_dev *iadev;
+
+	iadev = container_of(dev, struct iidc_rdma_core_auxiliary_dev, adev.dev);
+	kfree(iadev);
+	iadev = NULL;
+}
+
+/* idpf_plug_core_aux_dev - allocate and register an Auxiliary device
+ * @cdev_info: IDC core device info pointer
+ *
+ * Return: 0 on success or error code on failure.
+ */
+static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
+{
+	struct iidc_rdma_core_auxiliary_dev *iadev;
+	char name[IDPF_IDC_MAX_ADEV_NAME_LEN];
+	struct auxiliary_device *adev;
+	int ret;
+
+	iadev = kzalloc(sizeof(*iadev), GFP_KERNEL);
+	if (!iadev)
+		return -ENOMEM;
+
+	adev = &iadev->adev;
+	cdev_info->adev = adev;
+	iadev->cdev_info = cdev_info;
+
+	ret = ida_alloc(&idpf_idc_ida, GFP_KERNEL);
+	if (ret < 0) {
+		pr_err("failed to allocate unique device ID for Auxiliary driver\n");
+		goto err_ida_alloc;
+	}
+	adev->id = ret;
+	adev->dev.release = idpf_core_adev_release;
+	adev->dev.parent = &cdev_info->pdev->dev;
+	sprintf(name, "%04x.rdma.core", cdev_info->pdev->vendor);
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
+	cdev_info->adev = NULL;
+	auxiliary_device_uninit(adev);
+err_aux_dev_init:
+	ida_free(&idpf_idc_ida, adev->id);
+err_ida_alloc:
+	kfree(iadev);
+
+	return ret;
+}
+
+/* idpf_unplug_aux_dev - unregister and free an Auxiliary device
+ * @adev: auxiliary device struct
+ */
+static void idpf_unplug_aux_dev(struct auxiliary_device *adev)
+{
+	auxiliary_device_delete(adev);
+	auxiliary_device_uninit(adev);
+
+	ida_free(&idpf_idc_ida, adev->id);
+}
+
+/**
+ * idpf_idc_vport_dev_ctrl - Called by an Auxiliary Driver
+ * @cdev_info: IDC core device info pointer
+ * @up: RDMA core driver status
+ *
+ * This callback function is accessed by an Auxiliary Driver to indicate
+ * whether core driver is ready to support vport driver load or if vport
+ * drivers need to be taken down.
+ *
+ * Return: 0 on success or error code on failure.
+ */
+int idpf_idc_vport_dev_ctrl(struct iidc_rdma_core_dev_info *cdev_info, bool up)
+{
+	return -EOPNOTSUPP;
+}
+EXPORT_SYMBOL_GPL(idpf_idc_vport_dev_ctrl);
+
+/**
+ * idpf_idc_request_reset - Called by an Auxiliary Driver
+ * @cdev_info: IDC core device info pointer
+ * @reset_type: function, core or other
+ *
+ * This callback function is accessed by an Auxiliary Driver to request a reset
+ * on the Auxiliary Device.
+ *
+ * Return: 0 on success or error code on failure.
+ */
+int idpf_idc_request_reset(struct iidc_rdma_core_dev_info *cdev_info,
+			   enum iidc_rdma_reset_type __always_unused reset_type)
+{
+	return -EOPNOTSUPP;
+}
+EXPORT_SYMBOL_GPL(idpf_idc_request_reset);
+
+/**
+ * idpf_idc_init_msix_data - initialize MSIX data for the cdev_info structure
+ * @adapter: driver private data structure
+ */
+static void
+idpf_idc_init_msix_data(struct idpf_adapter *adapter)
+{
+	struct iidc_rdma_core_dev_info *cdev_info;
+	struct iidc_rdma_priv_dev_info *privd;
+
+	if (!adapter->rdma_msix_entries)
+		return;
+
+	cdev_info = adapter->cdev_info;
+	privd = cdev_info->iidc_priv;
+
+	privd->msix_entries = adapter->rdma_msix_entries;
+	privd->msix_count = adapter->num_rdma_msix_entries;
+}
+
+/**
+ * idpf_idc_init_aux_core_dev - initialize Auxiliary Device(s)
+ * @adapter: driver private data structure
+ * @ftype: PF or VF
+ *
+ * Return: 0 on success or error code on failure.
+ */
+int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
+			       enum iidc_function_type ftype)
+{
+	struct iidc_rdma_core_dev_info *cdev_info;
+	struct iidc_rdma_priv_dev_info *privd;
+	int err;
+
+	adapter->cdev_info = kzalloc(sizeof(*cdev_info), GFP_KERNEL);
+	if (!adapter->cdev_info)
+		return -ENOMEM;
+	cdev_info = adapter->cdev_info;
+
+	privd = kzalloc(sizeof(*privd), GFP_KERNEL);
+	if (!privd) {
+		err = -ENOMEM;
+		goto err_privd_alloc;
+	}
+
+	cdev_info->iidc_priv = privd;
+	cdev_info->pdev = adapter->pdev;
+	cdev_info->rdma_protocol = IIDC_RDMA_PROTOCOL_ROCEV2;
+	privd->ftype = ftype;
+
+	idpf_idc_init_msix_data(adapter);
+
+	err = idpf_plug_core_aux_dev(cdev_info);
+	if (err)
+		goto err_plug_aux_dev;
+
+	return 0;
+
+err_plug_aux_dev:
+	kfree(privd);
+err_privd_alloc:
+	kfree(cdev_info);
+	adapter->cdev_info = NULL;
+
+	return err;
+}
+
+/**
+ * idpf_idc_deinit_core_aux_device - de-initialize Auxiliary Device(s)
+ * @cdev_info: IDC core device info pointer
+ */
+void idpf_idc_deinit_core_aux_device(struct iidc_rdma_core_dev_info *cdev_info)
+{
+	if (!cdev_info)
+		return;
+
+	idpf_unplug_aux_dev(cdev_info->adev);
+
+	kfree(cdev_info->iidc_priv);
+	kfree(cdev_info);
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 71d1577ca9e4..2c9fda5783f8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1834,6 +1834,10 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 unlock_mutex:
 	mutex_unlock(&adapter->vport_ctrl_lock);
 
+	/* Wait until all vports are created to init RDMA CORE AUX */
+	if (!err)
+		err = idpf_idc_init(adapter);
+
 	return err;
 }
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index aba828abcb17..2f84bd596ae4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -147,6 +147,17 @@ static void idpf_vf_trigger_reset(struct idpf_adapter *adapter,
 		idpf_send_mb_msg(adapter, VIRTCHNL2_OP_RESET_VF, 0, NULL, 0);
 }
 
+/**
+ * idpf_idc_vf_register - register for IDC callbacks
+ * @adapter: Driver specific private structure
+ *
+ * Return: 0 on success or error code on failure.
+ */
+static int idpf_idc_vf_register(struct idpf_adapter *adapter)
+{
+	return idpf_idc_init_aux_core_dev(adapter, IIDC_FUNCTION_TYPE_VF);
+}
+
 /**
  * idpf_vf_reg_ops_init - Initialize register API function pointers
  * @adapter: Driver specific private structure
@@ -167,4 +178,6 @@ static void idpf_vf_reg_ops_init(struct idpf_adapter *adapter)
 void idpf_vf_dev_ops_init(struct idpf_adapter *adapter)
 {
 	idpf_vf_reg_ops_init(adapter);
+
+	adapter->dev_ops.idc_init = idpf_idc_vf_register;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 24febaaa8fbb..c6fa4644fd3c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -868,6 +868,7 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
 
 	caps.other_caps =
 		cpu_to_le64(VIRTCHNL2_CAP_SRIOV			|
+			    VIRTCHNL2_CAP_RDMA                  |
 			    VIRTCHNL2_CAP_MACFILTER		|
 			    VIRTCHNL2_CAP_SPLITQ_QSCHED		|
 			    VIRTCHNL2_CAP_PROMISC		|
@@ -3070,6 +3071,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 
 	idpf_ptp_release(adapter);
 	idpf_deinit_task(adapter);
+	idpf_idc_deinit_core_aux_device(adapter->cdev_info);
 	idpf_intr_rel(adapter);
 
 	if (remove_in_prog)
@@ -3728,3 +3730,21 @@ int idpf_set_promiscuous(struct idpf_adapter *adapter,
 
 	return reply_sz < 0 ? reply_sz : 0;
 }
+
+/**
+ * idpf_idc_rdma_vc_send_sync - virtchnl send callback for IDC registered drivers
+ * @cdev_info: IDC core device info pointer
+ * @send_msg: message to send
+ * @msg_size: size of message to send
+ * @recv_msg: message to populate on reception of response
+ * @recv_len: length of message copied into recv_msg or 0 on error
+ *
+ * Return: 0 on success or error code on failure.
+ */
+int idpf_idc_rdma_vc_send_sync(struct iidc_rdma_core_dev_info *cdev_info,
+			       u8 *send_msg, u16 msg_size,
+			       u8 *recv_msg, u16 *recv_len)
+{
+	return -EOPNOTSUPP;
+}
+EXPORT_SYMBOL_GPL(idpf_idc_rdma_vc_send_sync);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 77578206bada..7bae09483aed 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -151,5 +151,8 @@ int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs);
 int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get);
 int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get);
 void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr);
+int idpf_idc_rdma_vc_send_sync(struct iidc_rdma_core_dev_info *cdev_info,
+			       u8 *send_msg, u16 msg_size,
+			       u8 *recv_msg, u16 *recv_len);
 
 #endif /* _IDPF_VIRTCHNL_H_ */
diff --git a/include/linux/net/intel/iidc_rdma_idpf.h b/include/linux/net/intel/iidc_rdma_idpf.h
new file mode 100644
index 000000000000..f2fe1844f660
--- /dev/null
+++ b/include/linux/net/intel/iidc_rdma_idpf.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2025 Intel Corporation. */
+
+#ifndef _IIDC_RDMA_IDPF_H_
+#define _IIDC_RDMA_IDPF_H_
+
+#include <linux/auxiliary_bus.h>
+
+/* struct to be populated by core LAN PCI driver */
+enum iidc_function_type {
+	IIDC_FUNCTION_TYPE_PF,
+	IIDC_FUNCTION_TYPE_VF,
+};
+
+struct iidc_rdma_priv_dev_info {
+	struct msix_entry *msix_entries;
+	u16 msix_count; /* How many vectors are reserved for this device */
+	enum iidc_function_type ftype;
+};
+
+int idpf_idc_vport_dev_ctrl(struct iidc_rdma_core_dev_info *cdev_info, bool up);
+int idpf_idc_request_reset(struct iidc_rdma_core_dev_info *cdev_info,
+			   enum iidc_rdma_reset_type __always_unused reset_type);
+int idpf_idc_rdma_vc_send_sync(struct iidc_rdma_core_dev_info *cdev_info,
+			       u8 *send_msg, u16 msg_size,
+			       u8 *recv_msg, u16 *recv_len);
+
+#endif /* _IIDC_RDMA_IDPF_H_ */
-- 
2.31.1

