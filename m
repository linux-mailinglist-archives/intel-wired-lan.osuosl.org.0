Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1D773689D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:01:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D16DC418E1;
	Tue, 20 Jun 2023 10:01:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D16DC418E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255277;
	bh=9ECWzWA6QZKdauEEpDWbY62gH4JCgF8KoqZ/9yPOHjE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tdyAVw5YZcrb2nm4uVp0Rqydfvks2E5cZOHg6S8qyjYKD8mRc6mgGphWydTwIKacP
	 6UMSAquhWMn3RYCuuiOK0D254SF9EHgpI+R9GlAr+hgOSP3lAYoV3LUwWF9V2HBvjT
	 Wyv1aiCzoukIr1flLV59S26ptjLXu7CyhDgJdu6MfA5BPFgmHHOL41XabbQ/nDB9F3
	 qV39fBO0HOT78VYfY/uS7J6GcFQ/k0nbMqyq5PmnQZLDdpfJf5qbvRqUHmO9DmnxeW
	 j1dbUgXNTBHeUeWYQ7AObNwTRF0lB2+Eiwn8BmhNyrhp2dLVyDd4l5Yhp55l5FMLwE
	 BxEgJXzkt7A0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3nB4UkaovZie; Tue, 20 Jun 2023 10:01:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DFC7418C2;
	Tue, 20 Jun 2023 10:01:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DFC7418C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DF591BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5AC260E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5AC260E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id twilISpFEA9L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:00:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00DA260D59
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00DA260D59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688365"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688365"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:00:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227235"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227235"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:00:48 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:51 +0000
Message-Id: <20230620100001.5331-6-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255254; x=1718791254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CD7c+u9kvuhGnXGWU0glFbV6gdH+mRYurCPgdPG2+bg=;
 b=JYweFk4gyQosnnHaCwEN1X3xNVSibH1+oT1Ya+ndS1zkDeJB62ePYTXk
 72YsDAYIeP4jV5r545pTe9eliJFTwMAVIdD8hzk2m/UzBzYPCFumEQacB
 8eD4N4lVqhJFz6pJRzcsJx25OQtQRbyV+lqltsgjm3j5EWp/3oJxoq9PG
 XGv+ZwUUYSlnPGIzrBGKfVhDNvusZlIEBzAKYxzHn9hwkxYnnZKJ3nGqK
 rVdSulfmuqoLB74EDlG7/DZeGWg+dK8aklFtX7CdUp3gAiDFT0PQN8xgG
 I/uKgII3eMqTsct+fFp4KKZgjZOyHy889yCj+tXgb6jDOhPvwP1DDbSsW
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JYweFk4g
Subject: [Intel-wired-lan] [PATCH iwl-next V1 05/15] ice: save VF messages
 as device state
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a list in VF structure to save the virtual channel
messages sent by VF.

ice_vfio_pci driver introduced in following patches from this series
needs the saved virtual channel list.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_migration.c    | 94 +++++++++++++++++++
 .../intel/ice/ice_migration_private.h         | 22 +++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  3 +
 5 files changed, 123 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_migration_private.h

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ec7f27d93924..d264a17e0d95 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -77,6 +77,7 @@
 #include "ice_vsi_vlan_ops.h"
 #include "ice_gnss.h"
 #include "ice_irq.h"
+#include "ice_migration_private.h"
 
 #define ICE_BAR0		0
 #define ICE_REQ_DESC_MULTIPLE	32
diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 1aadb8577a41..6f658daf89a5 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -3,6 +3,17 @@
 
 #include "ice.h"
 
+struct ice_migration_virtchnl_msg_slot {
+	u32 opcode;
+	u16 msg_len;
+	char msg_buffer[];
+};
+
+struct ice_migration_virtchnl_msg_listnode {
+	struct list_head node;
+	struct ice_migration_virtchnl_msg_slot msg_slot;
+};
+
 /**
  * ice_migration_get_vf - Get ice VF structure pointer by pdev
  * @vf_pdev: pointer to ice vfio pci VF pdev structure
@@ -49,6 +60,8 @@ void ice_migration_init_vf(void *opaque)
 	struct ice_vf *vf = (struct ice_vf *)opaque;
 
 	vf->migration_active = true;
+	INIT_LIST_HEAD(&vf->virtchnl_msg_list);
+	vf->virtchnl_msg_num = 0;
 }
 EXPORT_SYMBOL(ice_migration_init_vf);
 
@@ -58,11 +71,92 @@ EXPORT_SYMBOL(ice_migration_init_vf);
  */
 void ice_migration_uninit_vf(void *opaque)
 {
+	struct ice_migration_virtchnl_msg_listnode *msg_listnode;
+	struct ice_migration_virtchnl_msg_listnode *dtmp;
 	struct ice_vf *vf = (struct ice_vf *)opaque;
 
 	if (!vf->migration_active)
 		return;
 
 	vf->migration_active = false;
+
+	if (list_empty(&vf->virtchnl_msg_list))
+		return;
+	list_for_each_entry_safe(msg_listnode, dtmp,
+				 &vf->virtchnl_msg_list,
+				 node) {
+		list_del(&msg_listnode->node);
+		kfree(msg_listnode);
+	}
+	vf->virtchnl_msg_num = 0;
 }
 EXPORT_SYMBOL(ice_migration_uninit_vf);
+
+/**
+ * ice_migration_save_vf_msg - Save request message from VF
+ * @vf: pointer to the VF structure
+ * @event: pointer to the AQ event
+ *
+ * save VF message for later restore during live migration
+ */
+void ice_migration_save_vf_msg(struct ice_vf *vf,
+			       struct ice_rq_event_info *event)
+{
+	struct ice_migration_virtchnl_msg_listnode *msg_listnode;
+	u32 v_opcode = le32_to_cpu(event->desc.cookie_high);
+	u16 msglen = event->msg_len;
+	u8 *msg = event->msg_buf;
+	struct device *dev;
+	struct ice_pf *pf;
+
+	pf = vf->pf;
+	dev = ice_pf_to_dev(pf);
+
+	if (!vf->migration_active)
+		return;
+
+	switch (v_opcode) {
+	case VIRTCHNL_OP_VERSION:
+	case VIRTCHNL_OP_GET_VF_RESOURCES:
+	case VIRTCHNL_OP_CONFIG_VSI_QUEUES:
+	case VIRTCHNL_OP_CONFIG_IRQ_MAP:
+	case VIRTCHNL_OP_ADD_ETH_ADDR:
+	case VIRTCHNL_OP_DEL_ETH_ADDR:
+	case VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE:
+	case VIRTCHNL_OP_ENABLE_QUEUES:
+	case VIRTCHNL_OP_DISABLE_QUEUES:
+	case VIRTCHNL_OP_ADD_VLAN:
+	case VIRTCHNL_OP_DEL_VLAN:
+	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
+	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
+	case VIRTCHNL_OP_CONFIG_RSS_KEY:
+	case VIRTCHNL_OP_CONFIG_RSS_LUT:
+	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
+		if (vf->virtchnl_msg_num >= VIRTCHNL_MSG_MAX) {
+			dev_warn(dev, "VF %d has maximum number virtual channel commands\n",
+				 vf->vf_id);
+			return;
+		}
+
+		msg_listnode = (struct ice_migration_virtchnl_msg_listnode *)
+				kzalloc(struct_size(msg_listnode,
+						    msg_slot.msg_buffer,
+						    msglen),
+					GFP_KERNEL);
+		if (!msg_listnode) {
+			dev_err(dev, "VF %d failed to allocate memory for msg listnode\n",
+				vf->vf_id);
+			return;
+		}
+		dev_dbg(dev, "VF %d save virtual channel command, op code: %d, len: %d\n",
+			vf->vf_id, v_opcode, msglen);
+		msg_listnode->msg_slot.opcode = v_opcode;
+		msg_listnode->msg_slot.msg_len = msglen;
+		memcpy(msg_listnode->msg_slot.msg_buffer, msg, msglen);
+		list_add_tail(&msg_listnode->node, &vf->virtchnl_msg_list);
+		vf->virtchnl_msg_num++;
+		break;
+	default:
+		break;
+	}
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_migration_private.h b/drivers/net/ethernet/intel/ice/ice_migration_private.h
new file mode 100644
index 000000000000..4773fbc6b099
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_migration_private.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_MIGRATION_PRIVATE_H_
+#define _ICE_MIGRATION_PRIVATE_H_
+
+/* This header file is for exposing functions in ice_migration.c to
+ * files which will be compiled in ice.ko.
+ * Functions which may be used by other files which will be compiled
+ * in ice-vfio-pic.ko should be exposed as part of ice_migration.h.
+ */
+
+#if IS_ENABLED(CONFIG_ICE_VFIO_PCI)
+void ice_migration_save_vf_msg(struct ice_vf *vf,
+			       struct ice_rq_event_info *event);
+#else
+static inline void
+ice_migration_save_vf_msg(struct ice_vf *vf,
+			  struct ice_rq_event_info *event) { }
+#endif /* CONFIG_ICE_VFIO_PCI */
+
+#endif /* _ICE_MIGRATION_PRIVATE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index cbff9b5aacd6..b77daa7d310c 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -77,6 +77,7 @@ struct ice_vfs {
 	unsigned long last_printed_mdd_jiffies;	/* MDD message rate limit */
 };
 
+#define VIRTCHNL_MSG_MAX 1000
 /* VF information structure */
 struct ice_vf {
 	struct hlist_node entry;
@@ -135,6 +136,8 @@ struct ice_vf {
 	/* devlink port data */
 	struct devlink_port devlink_port;
 	bool migration_active;
+	struct list_head virtchnl_msg_list;
+	u64 virtchnl_msg_num;
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index aa9b7f5a6dc3..b306e0e0a395 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -4077,6 +4077,9 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 			 vf_id, v_opcode, err);
 	}
 
+	if (!err && vf->migration_active)
+		ice_migration_save_vf_msg(vf, event);
+
 finish:
 	mutex_unlock(&vf->cfg_lock);
 	ice_put_vf(vf);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
