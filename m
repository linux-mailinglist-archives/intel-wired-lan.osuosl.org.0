Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C16737E12
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6BA56417FF;
	Wed, 21 Jun 2023 09:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BA56417FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338712;
	bh=RNoPtX/OWXchHsNjHaF6yR+5qe6lT4fOEtmUnn+AnyU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3QhKbkoqoXGefGBZ1OlmlxU3NywLHHFH4NSLBTAgFN9fscMg5hG2rLeMHPKBoUx70
	 xjtfgz6MLZNsXYh4vzeMD6s/ClN2SL7P5gIP2x/mFCNInhpKLuCTk+7qR0f05xm/dm
	 aA0Yn8XAT2usscfmmJeRPhA0NRPhyWDErBjCr2d3i2xBdZoI6K86WEmdlJAe7MEztL
	 eH1G6I8F59VC+mTXAuJOxzQNnt1E0Cq9WnePvYRZnbl0JDSnqDFTPgFLGgsoIVJJ/0
	 xUuT84RMqVlxUGC7g0+K2Nk+lnHVsGQgan9DQDPmkhKdz3AeCZvgry0y3ubzv/wvE/
	 /JXtem+wPqwjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RSwNMOMtMbLa; Wed, 21 Jun 2023 09:11:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E13B0417F6;
	Wed, 21 Jun 2023 09:11:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E13B0417F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3826B1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1EAF083280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EAF083280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0R_Gt5H53gnF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:11:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 534ED83276
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 534ED83276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613650"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613650"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:11:42 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570825"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570825"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:11:39 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:11:02 +0000
Message-Id: <20230621091112.44945-6-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338702; x=1718874702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/waG1ZxRhu3v0zzCDfJtfq7BciDRkIQomk/FFnTqwdQ=;
 b=glRkahlbDlmgHqjQ42I8amQfhkJxMJiI9FWWumL+41FbbIM5nFWIOgM7
 GvuRm1I3t5xL9Ar3lna5pPfPhgXiI7sD4VOlenQ6blBO+YxI22b+FjwcI
 FhtqgocXpjOqfv4qTTr/FI5WUaGJd5A647OV5xYbkC1EfELWu51VBIlbK
 tXfuqovCn2dushNbrVqeZZReRgYyHibZGslR3pxYgznT5VOER8FVh6mAV
 eXN+a6GzAfL2YZ7RmvWjlwtniBNzwiOt/9lisheZJYrk3bQiSCBQb2bud
 oHL6UHbV273cM2KKDYU+c82tnu+Fhq7DNhGrRGSXx8heaCIpKeIZ8GgFY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=glRkahlb
Subject: [Intel-wired-lan] [PATCH iwl-next V2 05/15] ice: save VF messages
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
index e14d0c1584d5..9eb2ff5c10f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -4078,6 +4078,9 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
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
