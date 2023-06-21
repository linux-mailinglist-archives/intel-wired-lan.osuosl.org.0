Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C53737E15
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:12:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD6EB417F2;
	Wed, 21 Jun 2023 09:12:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD6EB417F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338725;
	bh=IOA/EZeuGT0iyMRFAEOm+oc9oK3WVa09TZLYO/To3ek=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zW7sepNhstlj0lg5p9AGss0fM708LBej5jl/nbTq5FAwdcLv3rbCHxnNQ6UA9chou
	 q4/9R7cgA7T23kttzK6t2tcd6ElDCn9Z3hxaqJRSt2K0p2L0HeU5BknYxiaR2jvQA1
	 fXoMKwbZZvYJ1GQgh5ajTvJxqO+762ApuEdT96cupRFWj7EWgKHRtw5/JFWTvWQuvV
	 QPku0sDM97fvwOLcLD5apZnzl/cbX6q2Nmig8M3w7fD/iyGPuSjju0BXRgIqg/tRhC
	 LPMq4XEPiYa0Qupv4kYGpyNFHbqejxntwTh+/YasKh1SmgiGHU3bBQq8b/RE29A6FK
	 +ctWNAVnd7IPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a18--Ntq26gs; Wed, 21 Jun 2023 09:12:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 29A07417F0;
	Wed, 21 Jun 2023 09:12:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29A07417F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D2F401BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB69A83280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB69A83280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9anDd6BwrzwC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C84E283276
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C84E283276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613705"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613705"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:11:53 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570881"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570881"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:11:50 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:11:05 +0000
Message-Id: <20230621091112.44945-9-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338713; x=1718874713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K4uWtdKwFMUnoRAGjznCADKV6q5MRvfUhsxDhQWqqRg=;
 b=jgZr7Ndsmmd3e2l8C5FqVm6aqiJFU9GBeh6vUYiAH1vzcmQ9nCjtJgic
 aGz6sljU/0Us0Eu7efTGijB9azfDPYOWons3yG7lEZ4Nw9VlKxHyfYUDZ
 izVqZct6M7XQquXFkGzm7qh6eywf7PMVYQLv+PQB4Z4ucPCcbNN+PCM5z
 Ds7dTCgKq2doajnDxk7V7eQtGczE0fB+3MfToEUcbpbz8LnNb0p8ahPCs
 WspABfkvah8b7BNNpR83yJpxAWvWZ8Cb+Y55qPNtxHivJr8Lf+KByLa5e
 /eZlYlyMVYsrkmPuc6ZZvcIDmSEC7KyOid0qImcG7eI4j/c8bMoSsU8Yz
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jgZr7Nds
Subject: [Intel-wired-lan] [PATCH iwl-next V2 08/15] ice: change VSI id in
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
index 0a10ea0b3b6d..7f5868c975d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3974,6 +3974,9 @@ int ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
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
