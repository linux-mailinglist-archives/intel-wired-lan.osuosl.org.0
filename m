Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 700DAA2CEA9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:02:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A230D70538;
	Fri,  7 Feb 2025 21:01:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yMGyFiIVC8sr; Fri,  7 Feb 2025 21:01:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DDA470549
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962103;
	bh=PTuUAH3ttkbqiD7+Sha+ng7wR4TUL1BPzih1sQg12Xo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IY6TaBpCnE6oNb6pu5xuP2NxYr7ujaY/snGFlIGI4PQOtVV/TjNGhRRXiDmhFWL4Y
	 TJdox1pmzOqWpzb11rZfmN5w4N33gqJ/wwOIKP2h6x/ujjv1toK6K5bRvCRDWxrFyS
	 iJvHOhStl9cBFTp6SlXIM6Q5fbzr9rMo4KZpbutegDWHQG58lyTBcTvqq1LHRBTE8H
	 cx1pbtubDEwK0dwRkCoDA2p7SW0FTAXiqdkf81h1aguH/WnfPUhnrOOKv9Ejs4Lce0
	 ownAq7yqwvt8WrHXttMhb73UU/G9NGJSu0xsnDmAQuF2tBgX7++RV46qLfqzXal+Mm
	 jmKSAgLZh1nsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DDA470549;
	Fri,  7 Feb 2025 21:01:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 34DA91B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 227F68156F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bXAGZBdQirtl for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5CED68113B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CED68113B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CED68113B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:30 +0000 (UTC)
X-CSE-ConnectionGUID: Wv0RbdGpRGWh25mNGS1pEA==
X-CSE-MsgGUID: hGp8tUhISduZ08/CiIuXaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451817"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451817"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:30 -0800
X-CSE-ConnectionGUID: 8ugmlWHVRJG7R/+O3KCM7g==
X-CSE-MsgGUID: A0eOb9UiT9qXMBj3EjX7tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238203"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:29 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Mustafa Ismail <mustafa.ismail@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:21 -0600
Message-Id: <20250207194931.1569-15-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957830; x=1770493830;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TeMXc1b6KlktiLZYTSK7kLkcWUMla5xDq2GCQlxHusI=;
 b=YUEfuVD2jCVJaPBRGkL2yUPxXP+gB9aDZsiLVdImXfM0ssoB6zHStn6Y
 CRLUIdHZNwoAAjrg4h+DCNajeWL/E7bOe+f6V6pMOTeJlTFQtZ2s4ugY4
 vTw/AFv2W1vNhPqHv6dhUr/mHd2X4Qag7AkrVaBfXFpn3tNhuNg/JkPwd
 z/rhFLAQhXGJdR/PuJYpEqHZRxX4ly19NGyldpvGmTsgsC2MB/h2nOv+o
 uRvORf4dogHDkBWHRKf8z3RzKj4HNsywi6VPjfv84coHnuUQLB45NYbuR
 r1RFv0Jwlqt4ApxAv5dAAMJ8Gc2sKyOFZslRBvkm6V9/S8aaYuo42pxpf
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YUEfuVD2
Subject: [Intel-wired-lan] [rdma v3 14/24] RDMA/irdma: Introduce GEN3 vPort
 driver support
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

From: Mustafa Ismail <mustafa.ismail@intel.com>

In the IPU model, a function can host one or more logical network
endpoints called vPorts. Each vPort may be associated with either a
physical or an internal communication port, and can be RDMA capable. A
vPort features a netdev and, if RDMA capable, must have an associated
ib_dev.

This change introduces a GEN3 auxiliary vPort driver responsible for
registering a verbs device for every RDMA-capable vPort. Additionally,
the UAPI is updated to prevent the binding of GEN3 devices to older
user-space providers.

Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---
 drivers/infiniband/hw/irdma/ig3rdma_if.c | 108 +++++++++++++++++++++++
 drivers/infiniband/hw/irdma/main.c       |  12 +++
 drivers/infiniband/hw/irdma/main.h       |   3 +
 drivers/infiniband/hw/irdma/verbs.c      |  12 ++-
 include/uapi/rdma/irdma-abi.h            |   1 +
 5 files changed, 134 insertions(+), 2 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/ig3rdma_if.c b/drivers/infiniband/hw/irdma/ig3rdma_if.c
index 9d0623467af2..2c7dc93dc576 100644
--- a/drivers/infiniband/hw/irdma/ig3rdma_if.c
+++ b/drivers/infiniband/hw/irdma/ig3rdma_if.c
@@ -14,6 +14,23 @@ static void ig3rdma_idc_core_event_handler(struct idc_rdma_core_dev_info *cdev_i
 	}
 }
 
+static void ig3rdma_idc_vport_event_handler(struct idc_rdma_vport_dev_info *cdev_info,
+					    struct idc_rdma_event *event)
+{
+	struct irdma_device *iwdev = auxiliary_get_drvdata(cdev_info->adev);
+	struct irdma_l2params l2params = {};
+
+	if (*event->type & BIT(IDC_RDMA_EVENT_AFTER_MTU_CHANGE)) {
+		ibdev_dbg(&iwdev->ibdev, "CLNT: new MTU = %d\n", iwdev->netdev->mtu);
+		if (iwdev->vsi.mtu != iwdev->netdev->mtu) {
+			l2params.mtu = iwdev->netdev->mtu;
+			l2params.mtu_changed = true;
+			irdma_log_invalid_mtu(l2params.mtu, &iwdev->rf->sc_dev);
+			irdma_change_l2params(&iwdev->vsi, &l2params);
+		}
+	}
+}
+
 static int ig3rdma_cfg_regions(struct irdma_hw *hw,
 			       struct idc_rdma_core_dev_info *cdev_info)
 {
@@ -169,3 +186,94 @@ struct idc_rdma_core_auxiliary_drv ig3rdma_core_auxiliary_drv = {
 	},
 	.event_handler = ig3rdma_idc_core_event_handler,
 };
+
+static int ig3rdma_vport_probe(struct auxiliary_device *aux_dev,
+			       const struct auxiliary_device_id *id)
+{
+	struct idc_rdma_vport_auxiliary_dev *idc_adev =
+		container_of(aux_dev, struct idc_rdma_vport_auxiliary_dev, adev);
+	struct auxiliary_device *aux_core_dev = idc_adev->vdev_info->core_adev;
+	struct irdma_pci_f *rf = auxiliary_get_drvdata(aux_core_dev);
+	struct iidc_rdma_qos_params qos_info = {};
+	struct irdma_l2params l2params = {};
+	struct irdma_device *iwdev;
+	int err;
+
+	if (!rf) {
+		WARN_ON_ONCE(1);
+		return -ENOMEM;
+	}
+	iwdev = ib_alloc_device(irdma_device, ibdev);
+	/* Fill iwdev info */
+	iwdev->is_vport = true;
+	iwdev->rf = rf;
+	iwdev->vport_id = idc_adev->vdev_info->vport_id;
+	iwdev->netdev = idc_adev->vdev_info->netdev;
+	iwdev->init_state = INITIAL_STATE;
+	iwdev->roce_cwnd = IRDMA_ROCE_CWND_DEFAULT;
+	iwdev->roce_ackcreds = IRDMA_ROCE_ACKCREDS_DEFAULT;
+	iwdev->rcv_wnd = IRDMA_CM_DEFAULT_RCV_WND_SCALED;
+	iwdev->rcv_wscale = IRDMA_CM_DEFAULT_RCV_WND_SCALE;
+	iwdev->roce_mode = true;
+	iwdev->push_mode = true;
+
+	l2params.mtu = iwdev->netdev->mtu;
+	irdma_fill_qos_info(&l2params, &qos_info);
+
+	err = irdma_rt_init_hw(iwdev, &l2params);
+	if (err)
+		goto err_rt_init;
+
+	err = irdma_ib_register_device(iwdev);
+	if (err)
+		goto err_ibreg;
+
+	auxiliary_set_drvdata(aux_dev, iwdev);
+
+	ibdev_dbg(&iwdev->ibdev,
+		  "INIT: Gen[%d] vport[%d] probe success. dev_name = %s, core_dev_name = %s, netdev=%s\n",
+		  rf->rdma_ver, idc_adev->vdev_info->vport_id,
+		  dev_name(&aux_dev->dev),
+		  dev_name(&idc_adev->vdev_info->core_adev->dev),
+		  netdev_name(idc_adev->vdev_info->netdev));
+
+	return 0;
+err_ibreg:
+	irdma_rt_deinit_hw(iwdev);
+err_rt_init:
+	ib_dealloc_device(&iwdev->ibdev);
+
+	return err;
+}
+
+static void ig3rdma_vport_remove(struct auxiliary_device *aux_dev)
+{
+	struct idc_rdma_vport_auxiliary_dev *idc_adev =
+		container_of(aux_dev, struct idc_rdma_vport_auxiliary_dev, adev);
+	struct irdma_device *iwdev = auxiliary_get_drvdata(aux_dev);
+
+	ibdev_dbg(&iwdev->ibdev,
+		  "INIT: Gen[%d] dev_name = %s, core_dev_name = %s, netdev=%s\n",
+		  iwdev->rf->rdma_ver, dev_name(&aux_dev->dev),
+		  dev_name(&idc_adev->vdev_info->core_adev->dev),
+		  netdev_name(idc_adev->vdev_info->netdev));
+
+	irdma_ib_unregister_device(iwdev);
+}
+
+static const struct auxiliary_device_id ig3rdma_vport_auxiliary_id_table[] = {
+	{.name = "idpf.8086.rdma.vdev", },
+	{},
+};
+
+MODULE_DEVICE_TABLE(auxiliary, ig3rdma_vport_auxiliary_id_table);
+
+struct idc_rdma_vport_auxiliary_drv ig3rdma_vport_auxiliary_drv = {
+	.adrv = {
+		.name = "vdev",
+		.id_table = ig3rdma_vport_auxiliary_id_table,
+		.probe = ig3rdma_vport_probe,
+		.remove = ig3rdma_vport_remove,
+	},
+	.event_handler = ig3rdma_idc_vport_event_handler,
+};
diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
index e9524de1c10f..4b07b0719557 100644
--- a/drivers/infiniband/hw/irdma/main.c
+++ b/drivers/infiniband/hw/irdma/main.c
@@ -129,6 +129,17 @@ static int __init irdma_init_module(void)
 
 		return ret;
 	}
+
+	ret = auxiliary_driver_register(&ig3rdma_vport_auxiliary_drv.adrv);
+	if (ret) {
+		auxiliary_driver_unregister(&ig3rdma_core_auxiliary_drv.adrv);
+		auxiliary_driver_unregister(&icrdma_core_auxiliary_drv.adrv);
+		auxiliary_driver_unregister(&i40iw_auxiliary_drv);
+		pr_err("Failed ig3rdma vport auxiliary_driver_register() ret=%d\n",
+		       ret);
+
+		return ret;
+	}
 	irdma_register_notifiers();
 
 	return 0;
@@ -168,6 +179,7 @@ static void __exit irdma_exit_module(void)
 	auxiliary_driver_unregister(&icrdma_core_auxiliary_drv.adrv);
 	auxiliary_driver_unregister(&i40iw_auxiliary_drv);
 	auxiliary_driver_unregister(&ig3rdma_core_auxiliary_drv.adrv);
+	auxiliary_driver_unregister(&ig3rdma_vport_auxiliary_drv.adrv);
 }
 
 module_init(irdma_init_module);
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index 17169338045a..1dab2ffba5e5 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -56,6 +56,7 @@
 
 extern struct auxiliary_driver i40iw_auxiliary_drv;
 extern struct idc_rdma_core_auxiliary_drv ig3rdma_core_auxiliary_drv;
+extern struct idc_rdma_vport_auxiliary_drv ig3rdma_vport_auxiliary_drv;
 extern struct idc_rdma_core_auxiliary_drv icrdma_core_auxiliary_drv;
 
 #define IRDMA_FW_VER_DEFAULT	2
@@ -353,12 +354,14 @@ struct irdma_device {
 	u32 rcv_wnd;
 	u16 mac_ip_table_idx;
 	u16 vsi_num;
+	u16 vport_id;
 	u8 rcv_wscale;
 	u8 iw_status;
 	bool roce_mode:1;
 	bool roce_dcqcn_en:1;
 	bool dcb_vlan_mode:1;
 	bool iw_ooo:1;
+	bool is_vport:1;
 	enum init_completion_state init_state;
 
 	wait_queue_head_t suspend_wq;
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index a0257b87d99f..2535e0f59ceb 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -292,6 +292,10 @@ static int irdma_alloc_ucontext(struct ib_ucontext *uctx,
 	ucontext->iwdev = iwdev;
 	ucontext->abi_ver = req.userspace_ver;
 
+	if (!(req.comp_mask & IRDMA_SUPPORT_WQE_FORMAT_V2) &&
+	    uk_attrs->hw_rev >= IRDMA_GEN_3)
+		return -EOPNOTSUPP;
+
 	if (req.comp_mask & IRDMA_ALLOC_UCTX_USE_RAW_ATTR)
 		ucontext->use_raw_attrs = true;
 
@@ -4882,6 +4886,10 @@ void irdma_ib_dealloc_device(struct ib_device *ibdev)
 	struct irdma_device *iwdev = to_iwdev(ibdev);
 
 	irdma_rt_deinit_hw(iwdev);
-	irdma_ctrl_deinit_hw(iwdev->rf);
-	kfree(iwdev->rf);
+	if (!iwdev->is_vport) {
+		irdma_ctrl_deinit_hw(iwdev->rf);
+		if (iwdev->rf->vchnl_wq)
+			destroy_workqueue(iwdev->rf->vchnl_wq);
+		kfree(iwdev->rf);
+	}
 }
diff --git a/include/uapi/rdma/irdma-abi.h b/include/uapi/rdma/irdma-abi.h
index bb18f15489e3..4e42054cca33 100644
--- a/include/uapi/rdma/irdma-abi.h
+++ b/include/uapi/rdma/irdma-abi.h
@@ -25,6 +25,7 @@ enum irdma_memreg_type {
 enum {
 	IRDMA_ALLOC_UCTX_USE_RAW_ATTR = 1 << 0,
 	IRDMA_ALLOC_UCTX_MIN_HW_WQ_SIZE = 1 << 1,
+	IRDMA_SUPPORT_WQE_FORMAT_V2 = 1 << 3,
 };
 
 struct irdma_alloc_ucontext_req {
-- 
2.37.3

