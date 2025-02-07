Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF46A2CE9C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:01:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBA0270503;
	Fri,  7 Feb 2025 21:01:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v_i2rhu2Xz82; Fri,  7 Feb 2025 21:01:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F05770522
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962088;
	bh=syFmLD9or4TY/S/HbI0A9g1yDEUYJZ9AL2WxxwqoXWk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZKsO+Y2ZahexwkO6Nv2B7aA/fh6PXx0MLkx66Ak3JWKdqQ97zIoVtKT5FuYqql9wz
	 6INBb9LdjoME2WFsSo5HcyAAOFzeCCMoDMO9by816m6rkFdQNNJZy3MvTrAq2es+fR
	 AzDlDIrKG45lohV5Ze8ZZ40Tv7DbM6364Aje8ABpehGF217tlQASO6R3GQLyCanCYQ
	 nwuZOqP1iv+5WSic/b+9xzDa2V+6CfSIsvgHhr0LJvwWfiUbso+R4471WoWbXoOISO
	 SaIaCqMN9J/WQKEouPtSuBVy/xbFXuHFMkYFq7F+oN4SJlMb0H9waxE7h7AFhl6oLm
	 n/hGs4ISddeiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F05770522;
	Fri,  7 Feb 2025 21:01:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 26CE5E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04EAC70519
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h5lnkaVt5EJr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4076860AAE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4076860AAE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4076860AAE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:26 +0000 (UTC)
X-CSE-ConnectionGUID: 1H/uIxrkRieM37HpRDSMSA==
X-CSE-MsgGUID: HSJvTYwxS+6aHf9b0ryXHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451782"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451782"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:26 -0800
X-CSE-ConnectionGUID: PL4EjNv9QX6vKwRZUUIteQ==
X-CSE-MsgGUID: 1Gx+YCN8TfKvNKgBpQQt0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238155"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:25 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Mustafa Ismail <mustafa.ismail@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:15 -0600
Message-Id: <20250207194931.1569-9-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957826; x=1770493826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YJjmDBIbG/GjXtTqOFquhDFmWtG3CZ814+dbP8oPTFA=;
 b=cR5AbF8US5YsbGkq5goalYjJKclLKoQAZOk+LQihDY5iU6bNLQtojQnu
 6OlI5omsONJ53pS93R2E7LWVpNu8GMeACHceJtt59zR+guZ7HF/TnpIai
 KKqtnYA9rY+yN34fsSQHfRhNvV/UE4BzAfezBtpbobSn1FNwWUqgGNh+6
 KZr/1WYp1XOyiOxwqfCAmi1sP2zPkntFgA6AJczzLvZEPV55BvGAXCw8k
 Aas99RrxbGQ3/V5L5GNCxr06+2AQTejH5JZR68DSY2GnYBzQDeLx5ilNY
 Bdm5cgC7iVrT31CTzjRA/SHIrQkpfMtEddHIMKy0QUmuYoIiaWaoRvx9Q
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cR5AbF8U
Subject: [Intel-wired-lan] [rdma v3 08/24] RDMA/irdma: Refactor GEN2
 auxiliary driver
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

Refactor the irdma auxiliary driver and associated interfaces out of main.c
and into a standalone GEN2-specific source file and rename as gen_2 driver.

This is in preparation for adding GEN3 auxiliary drivers. Each HW
generation will have its own gen-specific interface file.

Additionally, move the Address Handle hash table and associated locks
under rf struct. This will allow GEN3 code to migrate to use it easily.

Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---
 drivers/infiniband/hw/irdma/Makefile    |   1 +
 drivers/infiniband/hw/irdma/i40iw_if.c  |   2 +
 drivers/infiniband/hw/irdma/icrdma_if.c | 265 +++++++++++++++++++++++
 drivers/infiniband/hw/irdma/main.c      | 272 +-----------------------
 drivers/infiniband/hw/irdma/main.h      |   9 +-
 drivers/infiniband/hw/irdma/verbs.c     |  16 +-
 6 files changed, 290 insertions(+), 275 deletions(-)
 create mode 100644 drivers/infiniband/hw/irdma/icrdma_if.c

diff --git a/drivers/infiniband/hw/irdma/Makefile b/drivers/infiniband/hw/irdma/Makefile
index 48c3854235a0..2522e4ca650b 100644
--- a/drivers/infiniband/hw/irdma/Makefile
+++ b/drivers/infiniband/hw/irdma/Makefile
@@ -13,6 +13,7 @@ irdma-objs := cm.o        \
               hw.o        \
               i40iw_hw.o  \
               i40iw_if.o  \
+	      icrdma_if.o \
               icrdma_hw.o \
               main.o      \
               pble.o      \
diff --git a/drivers/infiniband/hw/irdma/i40iw_if.c b/drivers/infiniband/hw/irdma/i40iw_if.c
index cc50a7070371..6fa807ef4545 100644
--- a/drivers/infiniband/hw/irdma/i40iw_if.c
+++ b/drivers/infiniband/hw/irdma/i40iw_if.c
@@ -75,6 +75,8 @@ static void i40iw_fill_device_info(struct irdma_device *iwdev, struct i40e_info
 	struct irdma_pci_f *rf = iwdev->rf;
 
 	rf->rdma_ver = IRDMA_GEN_1;
+	rf->sc_dev.hw = &rf->hw;
+	rf->sc_dev.hw_attrs.uk_attrs.hw_rev = IRDMA_GEN_1;
 	rf->gen_ops.request_reset = i40iw_request_reset;
 	rf->pcidev = cdev_info->pcidev;
 	rf->pf_id = cdev_info->fid;
diff --git a/drivers/infiniband/hw/irdma/icrdma_if.c b/drivers/infiniband/hw/irdma/icrdma_if.c
new file mode 100644
index 000000000000..5fcbf695a1d3
--- /dev/null
+++ b/drivers/infiniband/hw/irdma/icrdma_if.c
@@ -0,0 +1,265 @@
+// SPDX-License-Identifier: GPL-2.0 or Linux-OpenIB
+// /* Copyright (c) 2015 - 2024 Intel Corporation */
+#include "main.h"
+
+static void icrdma_prep_tc_change(struct irdma_device *iwdev)
+{
+	iwdev->vsi.tc_change_pending = true;
+	irdma_sc_suspend_resume_qps(&iwdev->vsi, IRDMA_OP_SUSPEND);
+
+	/* Wait for all qp's to suspend */
+	wait_event_timeout(iwdev->suspend_wq,
+			   !atomic_read(&iwdev->vsi.qp_suspend_reqs),
+			   msecs_to_jiffies(IRDMA_EVENT_TIMEOUT_MS));
+	irdma_ws_reset(&iwdev->vsi);
+}
+
+static void icrdma_idc_event_handler(struct idc_rdma_core_dev_info *cdev_info,
+				     struct idc_rdma_event *event)
+{
+	struct irdma_device *iwdev = dev_get_drvdata(&cdev_info->adev->dev);
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
+	} else if (*event->type & BIT(IDC_RDMA_EVENT_BEFORE_TC_CHANGE)) {
+		if (iwdev->vsi.tc_change_pending)
+			return;
+
+		icrdma_prep_tc_change(iwdev);
+	} else if (*event->type & BIT(IDC_RDMA_EVENT_AFTER_TC_CHANGE)) {
+		struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
+
+		if (!iwdev->vsi.tc_change_pending)
+			return;
+
+		l2params.tc_changed = true;
+		ibdev_dbg(&iwdev->ibdev, "CLNT: TC Change\n");
+
+		irdma_fill_qos_info(&l2params, &idc_priv->qos_info);
+		if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
+			iwdev->dcb_vlan_mode =
+				l2params.num_tc > 1 && !l2params.dscp_mode;
+		irdma_change_l2params(&iwdev->vsi, &l2params);
+	} else if (*event->type & BIT(IDC_RDMA_EVENT_CRIT_ERR)) {
+		ibdev_warn(&iwdev->ibdev, "ICE OICR event notification: oicr = 0x%08x\n",
+			   event->reg);
+		if (event->reg & IRDMAPFINT_OICR_PE_CRITERR_M) {
+			u32 pe_criterr;
+
+			pe_criterr = readl(iwdev->rf->sc_dev.hw_regs[IRDMA_GLPE_CRITERR]);
+#define IRDMA_Q1_RESOURCE_ERR 0x0001024d
+			if (pe_criterr != IRDMA_Q1_RESOURCE_ERR) {
+				ibdev_err(&iwdev->ibdev, "critical PE Error, GLPE_CRITERR=0x%08x\n",
+					  pe_criterr);
+				iwdev->rf->reset = true;
+			} else {
+				ibdev_warn(&iwdev->ibdev, "Q1 Resource Check\n");
+			}
+		}
+		if (event->reg & IRDMAPFINT_OICR_HMC_ERR_M) {
+			ibdev_err(&iwdev->ibdev, "HMC Error\n");
+			iwdev->rf->reset = true;
+		}
+		if (event->reg & IRDMAPFINT_OICR_PE_PUSH_M) {
+			ibdev_err(&iwdev->ibdev, "PE Push Error\n");
+			iwdev->rf->reset = true;
+		}
+		if (iwdev->rf->reset)
+			iwdev->rf->gen_ops.request_reset(iwdev->rf);
+	}
+}
+
+/**
+ * icrdma_lan_register_qset - Register qset with LAN driver
+ * @vsi: vsi structure
+ * @tc_node: Traffic class node
+ */
+static int icrdma_lan_register_qset(struct irdma_sc_vsi *vsi,
+				    struct irdma_ws_node *tc_node)
+{
+	struct irdma_device *iwdev = vsi->back_vsi;
+	struct idc_rdma_core_dev_info *cdev_info = iwdev->rf->cdev;
+	struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
+	struct iidc_rdma_qset_params qset = {};
+	int ret;
+
+	qset.qs_handle = tc_node->qs_handle;
+	qset.tc = tc_node->traffic_class;
+	qset.vport_id = vsi->vsi_idx;
+	ret = idc_priv->priv_ops->alloc_res(cdev_info, &qset);
+	if (ret) {
+		ibdev_dbg(&iwdev->ibdev, "WS: LAN alloc_res for rdma qset failed.\n");
+		return ret;
+	}
+
+	tc_node->l2_sched_node_id = qset.teid;
+	vsi->qos[tc_node->user_pri].l2_sched_node_id = qset.teid;
+
+	return 0;
+}
+
+/**
+ * icrdma_lan_unregister_qset - Unregister qset with LAN driver
+ * @vsi: vsi structure
+ * @tc_node: Traffic class node
+ */
+static void icrdma_lan_unregister_qset(struct irdma_sc_vsi *vsi,
+				       struct irdma_ws_node *tc_node)
+{
+	struct irdma_device *iwdev = vsi->back_vsi;
+	struct idc_rdma_core_dev_info *cdev_info = iwdev->rf->cdev;
+	struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
+	struct iidc_rdma_qset_params qset = {};
+
+	qset.qs_handle = tc_node->qs_handle;
+	qset.tc = tc_node->traffic_class;
+	qset.vport_id = vsi->vsi_idx;
+	qset.teid = tc_node->l2_sched_node_id;
+
+	if (idc_priv->priv_ops->free_res(cdev_info, &qset))
+		ibdev_dbg(&iwdev->ibdev, "WS: LAN free_res for rdma qset failed.\n");
+}
+
+static void icrdma_fill_device_info(struct irdma_device *iwdev,
+				    struct idc_rdma_core_dev_info *cdev_info)
+{
+	struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
+	struct irdma_pci_f *rf = iwdev->rf;
+
+	rf->sc_dev.hw = &rf->hw;
+	rf->iwdev = iwdev;
+	rf->cdev = cdev_info;
+	rf->hw.hw_addr = idc_priv->hw_addr;
+	rf->pcidev = cdev_info->pdev;
+	rf->hw.device = &rf->pcidev->dev;
+	rf->msix_count = cdev_info->msix_count;
+	rf->pf_id = idc_priv->pf_id;
+	rf->msix_entries = cdev_info->msix_entries;
+	rf->rdma_ver = IRDMA_GEN_2;
+	rf->sc_dev.hw_attrs.uk_attrs.hw_rev = IRDMA_GEN_2;
+
+	rf->gen_ops.register_qset = icrdma_lan_register_qset;
+	rf->gen_ops.unregister_qset = icrdma_lan_unregister_qset;
+
+	rf->default_vsi.vsi_idx = idc_priv->vport_id;
+	rf->protocol_used =
+		cdev_info->rdma_protocol == IDC_RDMA_PROTOCOL_ROCEV2 ?
+			IRDMA_ROCE_PROTOCOL_ONLY : IRDMA_IWARP_PROTOCOL_ONLY;
+	rf->rsrc_profile = IRDMA_HMC_PROFILE_DEFAULT;
+	rf->rst_to = IRDMA_RST_TIMEOUT_HZ;
+	rf->gen_ops.request_reset = irdma_request_reset;
+	rf->limits_sel = 7;
+	mutex_init(&rf->ah_tbl_lock);
+
+	iwdev->netdev = idc_priv->netdev;
+	iwdev->vsi_num = idc_priv->vport_id;
+	iwdev->init_state = INITIAL_STATE;
+	iwdev->roce_cwnd = IRDMA_ROCE_CWND_DEFAULT;
+	iwdev->roce_ackcreds = IRDMA_ROCE_ACKCREDS_DEFAULT;
+	iwdev->rcv_wnd = IRDMA_CM_DEFAULT_RCV_WND_SCALED;
+	iwdev->rcv_wscale = IRDMA_CM_DEFAULT_RCV_WND_SCALE;
+	if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
+		iwdev->roce_mode = true;
+}
+
+static int icrdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_device_id *id)
+{
+	struct idc_rdma_core_auxiliary_dev *idc_adev =
+		container_of(aux_dev, struct idc_rdma_core_auxiliary_dev, adev);
+	struct idc_rdma_core_dev_info *cdev_info = idc_adev->cdev_info;
+	struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
+	struct irdma_device *iwdev;
+	struct irdma_pci_f *rf;
+	struct irdma_l2params l2params = {};
+	int err;
+
+	iwdev = ib_alloc_device(irdma_device, ibdev);
+	if (!iwdev)
+		return -ENOMEM;
+	iwdev->rf = kzalloc(sizeof(*rf), GFP_KERNEL);
+	if (!iwdev->rf) {
+		ib_dealloc_device(&iwdev->ibdev);
+		return -ENOMEM;
+	}
+
+	icrdma_fill_device_info(iwdev, cdev_info);
+	rf = iwdev->rf;
+
+	err = irdma_ctrl_init_hw(rf);
+	if (err)
+		goto err_ctrl_init;
+
+	l2params.mtu = iwdev->netdev->mtu;
+	irdma_fill_qos_info(&l2params, &idc_priv->qos_info);
+	if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
+		iwdev->dcb_vlan_mode = l2params.num_tc > 1 && !l2params.dscp_mode;
+
+	err = irdma_rt_init_hw(iwdev, &l2params);
+	if (err)
+		goto err_rt_init;
+
+	err = irdma_ib_register_device(iwdev);
+	if (err)
+		goto err_ibreg;
+
+	idc_priv->priv_ops->update_vport_filter(cdev_info, iwdev->vsi_num,
+						true);
+
+	ibdev_dbg(&iwdev->ibdev, "INIT: Gen[%d] PF[%d] device probe success\n",
+		  rf->rdma_ver, PCI_FUNC(rf->pcidev->devfn));
+
+	auxiliary_set_drvdata(aux_dev, iwdev);
+
+	return 0;
+
+err_ibreg:
+	irdma_rt_deinit_hw(iwdev);
+err_rt_init:
+	irdma_ctrl_deinit_hw(rf);
+err_ctrl_init:
+	kfree(iwdev->rf);
+	ib_dealloc_device(&iwdev->ibdev);
+
+	return err;
+}
+
+static void icrdma_remove(struct auxiliary_device *aux_dev)
+{
+	struct idc_rdma_core_auxiliary_dev *idc_adev =
+		container_of(aux_dev, struct idc_rdma_core_auxiliary_dev, adev);
+	struct idc_rdma_core_dev_info *cdev_info = idc_adev->cdev_info;
+	struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
+	struct irdma_device *iwdev = auxiliary_get_drvdata(aux_dev);
+	u8 rdma_ver = iwdev->rf->rdma_ver;
+
+	idc_priv->priv_ops->update_vport_filter(cdev_info,
+						iwdev->vsi_num, false);
+	irdma_ib_unregister_device(iwdev);
+	pr_debug("INIT: Gen[%d] func[%d] device remove success\n",
+		 rdma_ver, PCI_FUNC(cdev_info->pdev->devfn));
+}
+
+static const struct auxiliary_device_id icrdma_auxiliary_id_table[] = {
+	{.name = "ice.iwarp", },
+	{.name = "ice.roce", },
+	{},
+};
+
+MODULE_DEVICE_TABLE(auxiliary, icrdma_auxiliary_id_table);
+
+struct idc_rdma_core_auxiliary_drv icrdma_core_auxiliary_drv = {
+	.adrv = {
+	    .name = "gen_2",
+	    .id_table = icrdma_auxiliary_id_table,
+	    .probe = icrdma_probe,
+	    .remove = icrdma_remove,
+	},
+	.event_handler = icrdma_idc_event_handler,
+};
diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
index 9b6f1d8bf06a..ee59ca10451c 100644
--- a/drivers/infiniband/hw/irdma/main.c
+++ b/drivers/infiniband/hw/irdma/main.c
@@ -39,19 +39,7 @@ static void irdma_unregister_notifiers(void)
 	unregister_netdevice_notifier(&irdma_netdevice_notifier);
 }
 
-static void irdma_prep_tc_change(struct irdma_device *iwdev)
-{
-	iwdev->vsi.tc_change_pending = true;
-	irdma_sc_suspend_resume_qps(&iwdev->vsi, IRDMA_OP_SUSPEND);
-
-	/* Wait for all qp's to suspend */
-	wait_event_timeout(iwdev->suspend_wq,
-			   !atomic_read(&iwdev->vsi.qp_suspend_reqs),
-			   msecs_to_jiffies(IRDMA_EVENT_TIMEOUT_MS));
-	irdma_ws_reset(&iwdev->vsi);
-}
-
-static void irdma_log_invalid_mtu(u16 mtu, struct irdma_sc_dev *dev)
+void irdma_log_invalid_mtu(u16 mtu, struct irdma_sc_dev *dev)
 {
 	if (mtu < IRDMA_MIN_MTU_IPV4)
 		ibdev_warn(to_ibdev(dev), "MTU setting [%d] too low for RDMA traffic. Minimum MTU is 576 for IPv4\n", mtu);
@@ -59,8 +47,8 @@ static void irdma_log_invalid_mtu(u16 mtu, struct irdma_sc_dev *dev)
 		ibdev_warn(to_ibdev(dev), "MTU setting [%d] too low for RDMA traffic. Minimum MTU is 1280 for IPv6\\n", mtu);
 }
 
-static void irdma_fill_qos_info(struct irdma_l2params *l2params,
-				struct iidc_rdma_qos_params *qos_info)
+void irdma_fill_qos_info(struct irdma_l2params *l2params,
+			 struct iidc_rdma_qos_params *qos_info)
 {
 	int i;
 
@@ -84,73 +72,11 @@ static void irdma_fill_qos_info(struct irdma_l2params *l2params,
 	}
 }
 
-static void irdma_idc_event_handler(struct idc_rdma_core_dev_info *cdev_info,
-				    struct idc_rdma_event *event)
-{
-	struct irdma_device *iwdev = dev_get_drvdata(&cdev_info->adev->dev);
-	struct irdma_l2params l2params = {};
-
-	if (*event->type & BIT(IDC_RDMA_EVENT_AFTER_MTU_CHANGE)) {
-		ibdev_dbg(&iwdev->ibdev, "CLNT: new MTU = %d\n", iwdev->netdev->mtu);
-		if (iwdev->vsi.mtu != iwdev->netdev->mtu) {
-			l2params.mtu = iwdev->netdev->mtu;
-			l2params.mtu_changed = true;
-			irdma_log_invalid_mtu(l2params.mtu, &iwdev->rf->sc_dev);
-			irdma_change_l2params(&iwdev->vsi, &l2params);
-		}
-	} else if (*event->type & BIT(IDC_RDMA_EVENT_BEFORE_TC_CHANGE)) {
-		if (iwdev->vsi.tc_change_pending)
-			return;
-
-		irdma_prep_tc_change(iwdev);
-	} else if (*event->type & BIT(IDC_RDMA_EVENT_AFTER_TC_CHANGE)) {
-		struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
-
-		if (!iwdev->vsi.tc_change_pending)
-			return;
-
-		l2params.tc_changed = true;
-		ibdev_dbg(&iwdev->ibdev, "CLNT: TC Change\n");
-
-		irdma_fill_qos_info(&l2params, &idc_priv->qos_info);
-		if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
-			iwdev->dcb_vlan_mode =
-				l2params.num_tc > 1 && !l2params.dscp_mode;
-		irdma_change_l2params(&iwdev->vsi, &l2params);
-	} else if (*event->type & BIT(IDC_RDMA_EVENT_CRIT_ERR)) {
-		ibdev_warn(&iwdev->ibdev, "ICE OICR event notification: oicr = 0x%08x\n",
-			   event->reg);
-		if (event->reg & IRDMAPFINT_OICR_PE_CRITERR_M) {
-			u32 pe_criterr;
-
-			pe_criterr = readl(iwdev->rf->sc_dev.hw_regs[IRDMA_GLPE_CRITERR]);
-#define IRDMA_Q1_RESOURCE_ERR 0x0001024d
-			if (pe_criterr != IRDMA_Q1_RESOURCE_ERR) {
-				ibdev_err(&iwdev->ibdev, "critical PE Error, GLPE_CRITERR=0x%08x\n",
-					  pe_criterr);
-				iwdev->rf->reset = true;
-			} else {
-				ibdev_warn(&iwdev->ibdev, "Q1 Resource Check\n");
-			}
-		}
-		if (event->reg & IRDMAPFINT_OICR_HMC_ERR_M) {
-			ibdev_err(&iwdev->ibdev, "HMC Error\n");
-			iwdev->rf->reset = true;
-		}
-		if (event->reg & IRDMAPFINT_OICR_PE_PUSH_M) {
-			ibdev_err(&iwdev->ibdev, "PE Push Error\n");
-			iwdev->rf->reset = true;
-		}
-		if (iwdev->rf->reset)
-			iwdev->rf->gen_ops.request_reset(iwdev->rf);
-	}
-}
-
 /**
  * irdma_request_reset - Request a reset
  * @rf: RDMA PCI function
  */
-static void irdma_request_reset(struct irdma_pci_f *rf)
+void irdma_request_reset(struct irdma_pci_f *rf)
 {
 	struct idc_rdma_core_dev_info *cdev_info = rf->cdev;
 
@@ -158,190 +84,6 @@ static void irdma_request_reset(struct irdma_pci_f *rf)
 	cdev_info->ops->request_reset(rf->cdev, IDC_FUNC_RESET);
 }
 
-/**
- * irdma_lan_register_qset - Register qset with LAN driver
- * @vsi: vsi structure
- * @tc_node: Traffic class node
- */
-static int irdma_lan_register_qset(struct irdma_sc_vsi *vsi,
-				   struct irdma_ws_node *tc_node)
-{
-	struct irdma_device *iwdev = vsi->back_vsi;
-	struct idc_rdma_core_dev_info *cdev_info = iwdev->rf->cdev;
-	struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
-	struct iidc_rdma_qset_params qset = {};
-	int ret;
-
-	qset.qs_handle = tc_node->qs_handle;
-	qset.tc = tc_node->traffic_class;
-	qset.vport_id = vsi->vsi_idx;
-	ret = idc_priv->priv_ops->alloc_res(cdev_info, &qset);
-	if (ret) {
-		ibdev_dbg(&iwdev->ibdev, "WS: LAN alloc_res for rdma qset failed.\n");
-		return ret;
-	}
-
-	tc_node->l2_sched_node_id = qset.teid;
-	vsi->qos[tc_node->user_pri].l2_sched_node_id = qset.teid;
-
-	return 0;
-}
-
-/**
- * irdma_lan_unregister_qset - Unregister qset with LAN driver
- * @vsi: vsi structure
- * @tc_node: Traffic class node
- */
-static void irdma_lan_unregister_qset(struct irdma_sc_vsi *vsi,
-				      struct irdma_ws_node *tc_node)
-{
-	struct irdma_device *iwdev = vsi->back_vsi;
-	struct idc_rdma_core_dev_info *cdev_info = iwdev->rf->cdev;
-	struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
-	struct iidc_rdma_qset_params qset = {};
-
-	qset.qs_handle = tc_node->qs_handle;
-	qset.tc = tc_node->traffic_class;
-	qset.vport_id = vsi->vsi_idx;
-	qset.teid = tc_node->l2_sched_node_id;
-
-	if (idc_priv->priv_ops->free_res(cdev_info, &qset))
-		ibdev_dbg(&iwdev->ibdev, "WS: LAN free_res for rdma qset failed.\n");
-}
-
-static void irdma_remove(struct auxiliary_device *aux_dev)
-{
-	struct idc_rdma_core_auxiliary_dev *idc_adev =
-		container_of(aux_dev, struct idc_rdma_core_auxiliary_dev, adev);
-	struct idc_rdma_core_dev_info *cdev_info = idc_adev->cdev_info;
-	struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
-	struct irdma_device *iwdev = auxiliary_get_drvdata(aux_dev);
-
-	idc_priv->priv_ops->update_vport_filter(cdev_info,
-						iwdev->vsi_num, false);
-	irdma_ib_unregister_device(iwdev);
-
-	pr_debug("INIT: Gen2 PF[%d] device remove success\n", PCI_FUNC(cdev_info->pdev->devfn));
-}
-
-static void irdma_fill_device_info(struct irdma_device *iwdev,
-				   struct idc_rdma_core_dev_info *cdev_info)
-{
-	struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
-	struct irdma_pci_f *rf = iwdev->rf;
-
-	rf->sc_dev.hw = &rf->hw;
-	rf->iwdev = iwdev;
-	rf->cdev = cdev_info;
-	rf->hw.hw_addr = idc_priv->hw_addr;
-	rf->pcidev = cdev_info->pdev;
-	rf->hw.device = &rf->pcidev->dev;
-	rf->msix_count = cdev_info->msix_count;
-	rf->pf_id = idc_priv->pf_id;
-	rf->msix_entries = cdev_info->msix_entries;
-
-	rf->gen_ops.register_qset = irdma_lan_register_qset;
-	rf->gen_ops.unregister_qset = irdma_lan_unregister_qset;
-
-	rf->default_vsi.vsi_idx = idc_priv->vport_id;
-	rf->protocol_used =
-		cdev_info->rdma_protocol == IDC_RDMA_PROTOCOL_ROCEV2 ?
-			IRDMA_ROCE_PROTOCOL_ONLY : IRDMA_IWARP_PROTOCOL_ONLY;
-	rf->rdma_ver = IRDMA_GEN_2;
-	rf->rsrc_profile = IRDMA_HMC_PROFILE_DEFAULT;
-	rf->rst_to = IRDMA_RST_TIMEOUT_HZ;
-	rf->gen_ops.request_reset = irdma_request_reset;
-	rf->limits_sel = 7;
-	rf->iwdev = iwdev;
-	mutex_init(&iwdev->ah_tbl_lock);
-
-	iwdev->netdev = idc_priv->netdev;
-	iwdev->vsi_num = idc_priv->vport_id;
-	iwdev->init_state = INITIAL_STATE;
-	iwdev->roce_cwnd = IRDMA_ROCE_CWND_DEFAULT;
-	iwdev->roce_ackcreds = IRDMA_ROCE_ACKCREDS_DEFAULT;
-	iwdev->rcv_wnd = IRDMA_CM_DEFAULT_RCV_WND_SCALED;
-	iwdev->rcv_wscale = IRDMA_CM_DEFAULT_RCV_WND_SCALE;
-	if (rf->protocol_used == IRDMA_ROCE_PROTOCOL_ONLY)
-		iwdev->roce_mode = true;
-}
-
-static int irdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_device_id *id)
-{
-	struct idc_rdma_core_auxiliary_dev *idc_adev =
-		container_of(aux_dev, struct idc_rdma_core_auxiliary_dev, adev);
-	struct idc_rdma_core_dev_info *cdev_info = idc_adev->cdev_info;
-	struct iidc_rdma_priv_dev_info *idc_priv = cdev_info->idc_priv;
-	struct irdma_device *iwdev;
-	struct irdma_pci_f *rf;
-	struct irdma_l2params l2params = {};
-	int err;
-
-	iwdev = ib_alloc_device(irdma_device, ibdev);
-	if (!iwdev)
-		return -ENOMEM;
-	iwdev->rf = kzalloc(sizeof(*rf), GFP_KERNEL);
-	if (!iwdev->rf) {
-		ib_dealloc_device(&iwdev->ibdev);
-		return -ENOMEM;
-	}
-
-	irdma_fill_device_info(iwdev, cdev_info);
-	rf = iwdev->rf;
-
-	err = irdma_ctrl_init_hw(rf);
-	if (err)
-		goto err_ctrl_init;
-
-	l2params.mtu = iwdev->netdev->mtu;
-	irdma_fill_qos_info(&l2params, &idc_priv->qos_info);
-	if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
-		iwdev->dcb_vlan_mode = l2params.num_tc > 1 && !l2params.dscp_mode;
-
-	err = irdma_rt_init_hw(iwdev, &l2params);
-	if (err)
-		goto err_rt_init;
-
-	err = irdma_ib_register_device(iwdev);
-	if (err)
-		goto err_ibreg;
-
-	idc_priv->priv_ops->update_vport_filter(cdev_info, iwdev->vsi_num,
-						true);
-
-	ibdev_dbg(&iwdev->ibdev, "INIT: Gen2 PF[%d] device probe success\n", PCI_FUNC(rf->pcidev->devfn));
-	auxiliary_set_drvdata(aux_dev, iwdev);
-
-	return 0;
-
-err_ibreg:
-	irdma_rt_deinit_hw(iwdev);
-err_rt_init:
-	irdma_ctrl_deinit_hw(rf);
-err_ctrl_init:
-	kfree(iwdev->rf);
-	ib_dealloc_device(&iwdev->ibdev);
-
-	return err;
-}
-
-static const struct auxiliary_device_id irdma_auxiliary_id_table[] = {
-	{.name = "ice.iwarp", },
-	{.name = "ice.roce", },
-	{},
-};
-
-MODULE_DEVICE_TABLE(auxiliary, irdma_auxiliary_id_table);
-
-static struct idc_rdma_core_auxiliary_drv irdma_auxiliary_drv = {
-	.adrv = {
-	    .id_table = irdma_auxiliary_id_table,
-	    .probe = irdma_probe,
-	    .remove = irdma_remove,
-	},
-	.event_handler = irdma_idc_event_handler,
-};
-
 static int __init irdma_init_module(void)
 {
 	int ret;
@@ -353,10 +95,10 @@ static int __init irdma_init_module(void)
 		return ret;
 	}
 
-	ret = auxiliary_driver_register(&irdma_auxiliary_drv.adrv);
+	ret = auxiliary_driver_register(&icrdma_core_auxiliary_drv.adrv);
 	if (ret) {
 		auxiliary_driver_unregister(&i40iw_auxiliary_drv);
-		pr_err("Failed irdma auxiliary_driver_register() ret=%d\n",
+		pr_err("Failed icrdma(gen_2) auxiliary_driver_register() ret=%d\n",
 		       ret);
 		return ret;
 	}
@@ -369,7 +111,7 @@ static int __init irdma_init_module(void)
 static void __exit irdma_exit_module(void)
 {
 	irdma_unregister_notifiers();
-	auxiliary_driver_unregister(&irdma_auxiliary_drv.adrv);
+	auxiliary_driver_unregister(&icrdma_core_auxiliary_drv.adrv);
 	auxiliary_driver_unregister(&i40iw_auxiliary_drv);
 }
 
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index e81f37583138..7360e171f4c2 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -55,6 +55,7 @@
 #include "puda.h"
 
 extern struct auxiliary_driver i40iw_auxiliary_drv;
+extern struct idc_rdma_core_auxiliary_drv icrdma_core_auxiliary_drv;
 
 #define IRDMA_FW_VER_DEFAULT	2
 #define IRDMA_HW_VER	        2
@@ -329,6 +330,8 @@ struct irdma_pci_f {
 	void *back_fcn;
 	struct irdma_gen_ops gen_ops;
 	struct irdma_device *iwdev;
+	DECLARE_HASHTABLE(ah_hash_tbl, 8);
+	struct mutex ah_tbl_lock; /* protect AH hash table access */
 };
 
 struct irdma_device {
@@ -338,8 +341,6 @@ struct irdma_device {
 	struct workqueue_struct *cleanup_wq;
 	struct irdma_sc_vsi vsi;
 	struct irdma_cm_core cm_core;
-	DECLARE_HASHTABLE(ah_hash_tbl, 8);
-	struct mutex ah_tbl_lock; /* protect AH hash table access */
 	u32 roce_cwnd;
 	u32 roce_ackcreds;
 	u32 vendor_id;
@@ -555,4 +556,8 @@ int irdma_netdevice_event(struct notifier_block *notifier, unsigned long event,
 			  void *ptr);
 void irdma_add_ip(struct irdma_device *iwdev);
 void cqp_compl_worker(struct work_struct *work);
+void irdma_fill_qos_info(struct irdma_l2params *l2params,
+			 struct iidc_rdma_qos_params *qos_info);
+void irdma_request_reset(struct irdma_pci_f *rf);
+void irdma_log_invalid_mtu(u16 mtu, struct irdma_sc_dev *dev);
 #endif /* IRDMA_MAIN_H */
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index eeb932e58730..c7df33a6c3df 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -4530,7 +4530,7 @@ static bool irdma_ah_exists(struct irdma_device *iwdev,
 		  new_ah->sc_ah.ah_info.dest_ip_addr[2] ^
 		  new_ah->sc_ah.ah_info.dest_ip_addr[3];
 
-	hash_for_each_possible(iwdev->ah_hash_tbl, ah, list, key) {
+	hash_for_each_possible(iwdev->rf->ah_hash_tbl, ah, list, key) {
 		/* Set ah_valid and ah_id the same so memcmp can work */
 		new_ah->sc_ah.ah_info.ah_idx = ah->sc_ah.ah_info.ah_idx;
 		new_ah->sc_ah.ah_info.ah_valid = ah->sc_ah.ah_info.ah_valid;
@@ -4556,14 +4556,14 @@ static int irdma_destroy_ah(struct ib_ah *ibah, u32 ah_flags)
 	struct irdma_ah *ah = to_iwah(ibah);
 
 	if ((ah_flags & RDMA_DESTROY_AH_SLEEPABLE) && ah->parent_ah) {
-		mutex_lock(&iwdev->ah_tbl_lock);
+		mutex_lock(&iwdev->rf->ah_tbl_lock);
 		if (!refcount_dec_and_test(&ah->parent_ah->refcnt)) {
-			mutex_unlock(&iwdev->ah_tbl_lock);
+			mutex_unlock(&iwdev->rf->ah_tbl_lock);
 			return 0;
 		}
 		hash_del(&ah->parent_ah->list);
 		kfree(ah->parent_ah);
-		mutex_unlock(&iwdev->ah_tbl_lock);
+		mutex_unlock(&iwdev->rf->ah_tbl_lock);
 	}
 
 	irdma_ah_cqp_op(iwdev->rf, &ah->sc_ah, IRDMA_OP_AH_DESTROY,
@@ -4600,11 +4600,11 @@ static int irdma_create_user_ah(struct ib_ah *ibah,
 	err = irdma_setup_ah(ibah, attr);
 	if (err)
 		return err;
-	mutex_lock(&iwdev->ah_tbl_lock);
+	mutex_lock(&iwdev->rf->ah_tbl_lock);
 	if (!irdma_ah_exists(iwdev, ah)) {
 		err = irdma_create_hw_ah(iwdev, ah, true);
 		if (err) {
-			mutex_unlock(&iwdev->ah_tbl_lock);
+			mutex_unlock(&iwdev->rf->ah_tbl_lock);
 			return err;
 		}
 		/* Add new AH to list */
@@ -4616,11 +4616,11 @@ static int irdma_create_user_ah(struct ib_ah *ibah,
 				  parent_ah->sc_ah.ah_info.dest_ip_addr[3];
 
 			ah->parent_ah = parent_ah;
-			hash_add(iwdev->ah_hash_tbl, &parent_ah->list, key);
+			hash_add(iwdev->rf->ah_hash_tbl, &parent_ah->list, key);
 			refcount_set(&parent_ah->refcnt, 1);
 		}
 	}
-	mutex_unlock(&iwdev->ah_tbl_lock);
+	mutex_unlock(&iwdev->rf->ah_tbl_lock);
 
 	uresp.ah_id = ah->sc_ah.ah_info.ah_idx;
 	err = ib_copy_to_udata(udata, &uresp, min(sizeof(uresp), udata->outlen));
-- 
2.37.3

