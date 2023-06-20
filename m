Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5867368A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:01:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 009FF418DF;
	Tue, 20 Jun 2023 10:01:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 009FF418DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255292;
	bh=MJWNj7khrCv9SOAFKB1nlnJOk9O1uj+gvP4rI6wNxYI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kP4ck/ql/qqn3whBN+bEkdEjp3bDieD289U8jtnodk1uaQ7lgLxs//G9EF/TXdDXk
	 Cvb8H9zZRIxfR24rWSik92a4kOvy5eq82fOllAEQCLBxaK/UVaISO8tk/qTsRsIeG3
	 IbCCB3AQR9BzNjWA5QHW+WKuQYpBbs1wXUJgyJ3Wfd7rX02D50TPbBOO5ssUvPRvQr
	 EEi1c4ZQwMQy0NwK1K3G8Dk1aXotX0SsJCYWCoXqmj2ynFQoFeJGlPZz0EwvbmHlML
	 QKQKw+z6n0RcM1c+rZangCWUXFMKDxuRMoWnw46Zgo3C9V9N8s0sDvDxxe2KQpqWcq
	 gGTKdtlc4hBog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 40-Jo_Z7Qdrh; Tue, 20 Jun 2023 10:01:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43D95418DB;
	Tue, 20 Jun 2023 10:01:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43D95418DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E2391BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 470B560E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 470B560E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ajBxyIv52go6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:01:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CD5D60D59
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4CD5D60D59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688441"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688441"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:01:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227344"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227344"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:00:59 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:54 +0000
Message-Id: <20230620100001.5331-9-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255262; x=1718791262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xtJLl1JLO8nCVRySo4wqOP76l1ZrveGViBjgxXgF+9I=;
 b=XUFFeS/YS27ZnKyJ+3TbEYqoEcl8n3aQZMfEM+kTOctOpi1iM4+bJrzI
 f2sKCKay2QLOM/VgJZ2XFwK6KE0595H7lg+L2qpn01VnUWKwIsoyTTT1z
 K0GVMw+2WNxK4pi6OL7x+sOwYG1NHxtbECsZIX96AIsJHrQeq7K/4HjVS
 IbqK8QvVcJQUgC5mK1lwfhdEg64cVoBiqlRib+pr2RY2oJHvAhzGuLFdY
 uVI1JzmXOaYJ0kZPXrRoPRT/XXFNV0yZrte4dFczbmAg6m5s8j2MRBoAQ
 q9CxhL23b4t0PiLS+Ge5eMs54zct8UQiObB++zT3jr7hD+cMhlKz/RyYW
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XUFFeS/Y
Subject: [Intel-wired-lan] [PATCH iwl-next V1 08/15] ice: change VSI id in
 virtual channel message after migration
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

Save the VSI num used in migration src VM in VF structure
and change VSI id in virtual channel message payload to the dst VF's
VSI id under following two conditions:
1) the VSI id in virtual channel message payload is the same with
src VF's VSI id. Or
2) it is replaying virtual channel message.

This is to prevent PF rejects to process VF messages during migration.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 108 ++++++++++++++++++
 .../intel/ice/ice_migration_private.h         |   3 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   3 +
 5 files changed, 116 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 49ad3c252f03..68f9ff843d12 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -14,6 +14,10 @@ struct ice_migration_virtchnl_msg_listnode {
 	struct ice_migration_virtchnl_msg_slot msg_slot;
 };
 
+struct ice_migration_dev_state {
+	u16 vsi_id;
+} __aligned(8);
+
 /**
  * ice_migration_get_vf - Get ice VF structure pointer by pdev
  * @vf_pdev: pointer to ice vfio pci VF pdev structure
@@ -62,6 +66,7 @@ void ice_migration_init_vf(void *opaque)
 	vf->migration_active = true;
 	INIT_LIST_HEAD(&vf->virtchnl_msg_list);
 	vf->virtchnl_msg_num = 0;
+	vf->vm_vsi_num = vf->lan_vsi_num;
 }
 EXPORT_SYMBOL(ice_migration_init_vf);
 
@@ -175,11 +180,24 @@ int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz)
 	struct ice_migration_virtchnl_msg_slot *last_op;
 	struct ice_vf *vf = (struct ice_vf *)opaque;
 	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_migration_dev_state *devstate;
 	u64 total_sz = 0;
 
 	if (vf == NULL)
 		return -EINVAL;
 
+	/* reserve space to store device state, saving VSI id in the beginning */
+	total_sz += sizeof(struct ice_migration_dev_state);
+	if (total_sz > buf_sz) {
+		dev_err(dev, "Insufficient buffer to store device state for VF %d\n",
+			vf->vf_id);
+		return -ENOBUFS;
+	}
+
+	devstate = (struct ice_migration_dev_state *)buf;
+	devstate->vsi_id = vf->vm_vsi_num;
+	buf += sizeof(*devstate);
+
 	list_for_each_entry(msg_listnode, &vf->virtchnl_msg_list, node) {
 		struct ice_migration_virtchnl_msg_slot *msg_slot;
 		u64 slot_size;
@@ -229,6 +247,7 @@ int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz)
 	struct ice_migration_virtchnl_msg_slot *msg_slot;
 	struct ice_vf *vf = (struct ice_vf *)opaque;
 	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_migration_dev_state *devstate;
 	struct ice_rq_event_info event;
 	u64 total_sz = 0;
 	u64 op_msglen_sz;
@@ -238,6 +257,16 @@ int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz)
 	if (!buf)
 		return -EINVAL;
 
+	total_sz += sizeof(struct ice_migration_dev_state);
+	if (total_sz > buf_sz) {
+		dev_err(dev, "VF %d msg size exceeds buffer size\n", vf->vf_id);
+		return -ENOBUFS;
+	}
+
+	devstate = (struct ice_migration_dev_state *)buf;
+	vf->vm_vsi_num = devstate->vsi_id;
+	dev_dbg(dev, "VF %d vm vsi num is:%d\n", vf->vf_id, vf->vm_vsi_num);
+	buf += sizeof(*devstate);
 	msg_slot = (struct ice_migration_virtchnl_msg_slot *)buf;
 	op_msglen_sz = sizeof(struct ice_migration_virtchnl_msg_slot);
 	/* check whether enough space for opcode and msg_len */
@@ -285,3 +314,82 @@ int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz)
 	return ret;
 }
 EXPORT_SYMBOL(ice_migration_restore_devstate);
+
+/**
+ * ice_migration_fix_msg_vsi - change virtual channel msg VSI id
+ *
+ * @vf: pointer to the VF structure
+ * @v_opcode: virtchnl message operation code
+ * @msg: pointer to the virtual channel message
+ *
+ * After migration, the VSI id of virtual channel message is still
+ * migration src VSI id. Some virtual channel commands will fail
+ * due to unmatch VSI id.
+ * Change virtual channel message payload VSI id to real VSI id.
+ */
+void ice_migration_fix_msg_vsi(struct ice_vf *vf, u32 v_opcode, u8 *msg)
+{
+	if (!vf->migration_active)
+		return;
+
+	switch (v_opcode) {
+	case VIRTCHNL_OP_ADD_ETH_ADDR:
+	case VIRTCHNL_OP_DEL_ETH_ADDR:
+	case VIRTCHNL_OP_ENABLE_QUEUES:
+	case VIRTCHNL_OP_DISABLE_QUEUES:
+	case VIRTCHNL_OP_CONFIG_RSS_KEY:
+	case VIRTCHNL_OP_CONFIG_RSS_LUT:
+	case VIRTCHNL_OP_GET_STATS:
+	case VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE:
+	case VIRTCHNL_OP_ADD_FDIR_FILTER:
+	case VIRTCHNL_OP_DEL_FDIR_FILTER:
+	case VIRTCHNL_OP_ADD_VLAN:
+	case VIRTCHNL_OP_DEL_VLAN: {
+		/* Read the beginning two bytes of message for VSI id */
+		u16 *vsi_id = (u16 *)msg;
+
+		if (*vsi_id == vf->vm_vsi_num ||
+		    test_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states))
+			*vsi_id = vf->lan_vsi_num;
+		break;
+	}
+	case VIRTCHNL_OP_CONFIG_IRQ_MAP: {
+		struct virtchnl_irq_map_info *irqmap_info;
+		u16 num_q_vectors_mapped;
+		int i;
+
+		irqmap_info = (struct virtchnl_irq_map_info *)msg;
+		num_q_vectors_mapped = irqmap_info->num_vectors;
+		for (i = 0; i < num_q_vectors_mapped; i++) {
+			struct virtchnl_vector_map *map;
+
+			map = &irqmap_info->vecmap[i];
+			if (map->vsi_id == vf->vm_vsi_num ||
+			    test_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states))
+				map->vsi_id = vf->lan_vsi_num;
+		}
+		break;
+	}
+	case VIRTCHNL_OP_CONFIG_VSI_QUEUES: {
+		struct virtchnl_vsi_queue_config_info *qci;
+
+		qci = (struct virtchnl_vsi_queue_config_info *)msg;
+		if (qci->vsi_id == vf->vm_vsi_num ||
+		    test_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states)) {
+			int i;
+
+			qci->vsi_id = vf->lan_vsi_num;
+			for (i = 0; i < qci->num_queue_pairs; i++) {
+				struct virtchnl_queue_pair_info *qpi;
+
+				qpi = &qci->qpair[i];
+				qpi->txq.vsi_id = vf->lan_vsi_num;
+				qpi->rxq.vsi_id = vf->lan_vsi_num;
+			}
+		}
+		break;
+	}
+	default:
+		break;
+	}
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_migration_private.h b/drivers/net/ethernet/intel/ice/ice_migration_private.h
index 4773fbc6b099..728acfaefbdf 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_migration_private.h
@@ -13,10 +13,13 @@
 #if IS_ENABLED(CONFIG_ICE_VFIO_PCI)
 void ice_migration_save_vf_msg(struct ice_vf *vf,
 			       struct ice_rq_event_info *event);
+void ice_migration_fix_msg_vsi(struct ice_vf *vf, u32 v_opcode, u8 *msg);
 #else
 static inline void
 ice_migration_save_vf_msg(struct ice_vf *vf,
 			  struct ice_rq_event_info *event) { }
+static inline void
+ice_migration_fix_msg_vsi(struct ice_vf *vf, u32 v_opcode, u8 *msg) { }
 #endif /* CONFIG_ICE_VFIO_PCI */
 
 #endif /* _ICE_MIGRATION_PRIVATE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 4b1940487b27..200c6eebd5c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1332,6 +1332,7 @@ void ice_vf_set_initialized(struct ice_vf *vf)
 	clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
 	set_bit(ICE_VF_STATE_INIT, vf->vf_states);
 	memset(&vf->vlan_v2_caps, 0, sizeof(vf->vlan_v2_caps));
+	vf->vm_vsi_num = vf->lan_vsi_num;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index b77daa7d310c..7304bb854f44 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -138,6 +138,7 @@ struct ice_vf {
 	bool migration_active;
 	struct list_head virtchnl_msg_list;
 	u64 virtchnl_msg_num;
+	u16 vm_vsi_num;
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 9c860663a012..cd19e07c93d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3973,6 +3973,9 @@ int ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 		goto finish;
 	}
 
+	if (vf->migration_active)
+		ice_migration_fix_msg_vsi(vf, v_opcode, msg);
+
 	switch (v_opcode) {
 	case VIRTCHNL_OP_VERSION:
 		err = ops->get_ver_msg(vf, msg);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
