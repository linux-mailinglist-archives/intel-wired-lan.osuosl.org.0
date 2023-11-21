Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 234237F244B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 03:50:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9C6D81D0C;
	Tue, 21 Nov 2023 02:50:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9C6D81D0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700535047;
	bh=AOAp1H3pDLriN+1g55S0MRNAaFS9gHeIjGpUMiGS11g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xWD4nMl9BsJbOjfXjV2g/lG80TgJEV2VwKqaY157kPTs4lOQYqKbnxwvYH9qcTJ0L
	 Tq3UGRu/xHjn6uz2qs5ndFD5g9JN36AuJris18/XOycL8Y305lLxEHdtXdg4JgH+fI
	 XPG5bTMcyKFQs9BOFzcpJH/JpiXMeUJ7jd5lqPoACbeq/n3iPs46tP0STl4ewtkb9B
	 76n3tfgkv2xleou9uEcYobu9VnNwUIudtA9b0nYpNn/UC4TNYqMlrSuZbobASHgZCc
	 82RhW/sdlEiJIRqwiNXsVno9xEi2z3QcnzD8/ogKXf0/6Bo9jTw4Ab6XoP1K93yP/x
	 GFT2pJ7AHwe8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JBIB79cr_Lrz; Tue, 21 Nov 2023 02:50:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22B2380D50;
	Tue, 21 Nov 2023 02:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22B2380D50
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 35BD21BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C1D280DB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C1D280DB2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eco9MhgBKDl7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 02:50:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1ECB08174A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1ECB08174A
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="458246060"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="458246060"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 18:50:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="832488451"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="832488451"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.85])
 by fmsmga008.fm.intel.com with ESMTP; 20 Nov 2023 18:50:12 -0800
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 02:51:06 +0000
Message-Id: <20231121025111.257597-8-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231121025111.257597-1-yahui.cao@intel.com>
References: <20231121025111.257597-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700535030; x=1732071030;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5FesQkUHYNJNnWuZOuOfrR5+GtijYybwUR/0BVOAmsQ=;
 b=MGdB1+BTiDRUXBy45GRecq5NWmqMqVHNqBGRXNlxo6N9vxGUPpxH8ZhX
 UjPf0QKfPpv8wo2LNbevtjZasrX72/Tc3zca7G+kNx5M65HqQPBFxnbki
 e/2dvZLE6KW/4Y3uBswz2zC1SA1n2yOtfy3JoYB6ICIJaB2mF4+lRzbyZ
 3qiSU0PyLL88+6/su54rw56kNMj+gM0YdH9PN82LhKknZpbXnHH4cH0Ay
 MMEr/3jJ/fwEOxXumrwbCUDDPhSDhsGsnN9IYLf0tMvxjEkH8mBsEkIxI
 FKOGSINd7+uT65RQYPmsOlW1EB44sjRXp7D8n/jodsObyXZgg5qldOghN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MGdB1+BT
Subject: [Intel-wired-lan] [PATCH iwl-next v4 07/12] ice: Fix VSI id in
 virtual channel message for migration
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, sridhar.samudrala@intel.com, edumazet@google.com,
 shameerali.kolothum.thodi@huawei.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, jgg@nvidia.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lingyu Liu <lingyu.liu@intel.com>

VSI id is a resource id for each VF and it is an absolute hardware id
per PCI card. It is exposed to VF driver through virtual channel
messages at the VF-PF negotiation stage. It is constant during the whole
device lifecycle unless driver re-init.

Almost all of the virtual channel messages will contain the VSI id. Once
PF receives message, it will check if VSI id in the message is equal to
the VF's VSI id for security and other reason.  If a VM backed by VF VSI
A is migrated to a VM backed by VF with VSI B, while in messages
replaying stage, all the messages will be rejected by PF due to the
invalid VSI id. Even after migration, VM runtime will get failure as
well.

Fix this gap by modifying the VSI id in the virtual channel message at
migration device resuming stage and VM runtime stage. In most cases the
VSI id will vary between migration source and destination side. And this
is a slow path anyway.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 95 +++++++++++++++++++
 .../intel/ice/ice_migration_private.h         |  4 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  1 +
 4 files changed, 101 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 981aa92bbe86..780d2183011a 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -25,6 +25,7 @@ struct ice_migration_dev_state {
 	u16 num_txq;
 	u16 num_rxq;
 
+	u16 vsi_id;
 	u8 virtchnl_msgs[];
 } __aligned(8);
 
@@ -50,6 +51,7 @@ void ice_migration_init_vf(struct ice_vf *vf)
 	INIT_LIST_HEAD(&vf->virtchnl_msg_list);
 	vf->virtchnl_msg_num = 0;
 	vf->virtchnl_msg_size = 0;
+	vf->vm_vsi_num = vf->lan_vsi_num;
 }
 
 /**
@@ -314,6 +316,7 @@ ice_migration_save_devstate(struct ice_pf *pf, int vf_id, u8 *buf, u64 buf_sz)
 	devstate->num_txq = vsi->num_txq;
 	devstate->num_rxq = vsi->num_rxq;
 	buf = devstate->virtchnl_msgs;
+	devstate->vsi_id = vf->vm_vsi_num;
 
 	list_for_each_entry(msg_listnode, &vf->virtchnl_msg_list, node) {
 		struct ice_migration_virtchnl_msg_slot *msg_slot;
@@ -441,6 +444,8 @@ int ice_migration_load_devstate(struct ice_pf *pf, int vf_id,
 		goto out_put_vf;
 
 	devstate = (struct ice_migration_dev_state *)buf;
+	vf->vm_vsi_num = devstate->vsi_id;
+	dev_dbg(dev, "VF %d vm vsi num is:%d\n", vf->vf_id, vf->vm_vsi_num);
 	msg_slot = (struct ice_migration_virtchnl_msg_slot *)
 			devstate->virtchnl_msgs;
 	set_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states);
@@ -473,3 +478,93 @@ int ice_migration_load_devstate(struct ice_pf *pf, int vf_id,
 	return ret;
 }
 EXPORT_SYMBOL(ice_migration_load_devstate);
+
+/**
+ * ice_migration_fix_msg_vsi - change virtual channel msg VSI id
+ *
+ * @vf: pointer to the VF structure
+ * @v_opcode: virtchnl message operation code
+ * @msg: pointer to the virtual channel message
+ *
+ * After migration, the VSI id saved by VF driver may be different from VF
+ * VSI id. Some virtual channel commands will fail due to unmatch VSI id.
+ * Change virtual channel message payload VSI id to real VSI id.
+ */
+void ice_migration_fix_msg_vsi(struct ice_vf *vf, u32 v_opcode, u8 *msg)
+{
+	if (!vf->migration_enabled)
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
+		/* For VM runtime stage, vsi_id in the virtual channel message
+		 * should be equal to the PF logged vsi_id and vsi_id is
+		 * replaced by VF's VSI id to guarantee that messages are
+		 * processed successfully. If vsi_id is not equal to the PF
+		 * logged vsi_id, then this message must be sent by malicious
+		 * VF and no replacement is needed. Just let virtual channel
+		 * handler to fail this message.
+		 *
+		 * For virtual channel replaying stage, all of the PF logged
+		 * virtual channel messages are trusted and vsi_id is replaced
+		 * anyway to guarantee the messages are processed successfully.
+		 */
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
index 676eb2d6c12e..f72a488d9002 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_migration_private.h
@@ -17,6 +17,7 @@ int ice_migration_log_vf_msg(struct ice_vf *vf,
 			     struct ice_rq_event_info *event);
 void ice_migration_unlog_vf_msg(struct ice_vf *vf, u32 v_opcode);
 u32 ice_migration_supported_caps(void);
+void ice_migration_fix_msg_vsi(struct ice_vf *vf, u32 v_opcode, u8 *msg);
 #else
 static inline void ice_migration_init_vf(struct ice_vf *vf) { }
 static inline void ice_migration_uninit_vf(struct ice_vf *vf) { }
@@ -33,6 +34,9 @@ ice_migration_supported_caps(void)
 {
 	return 0xFFFFFFFF;
 }
+
+static inline void
+ice_migration_fix_msg_vsi(struct ice_vf *vf, u32 v_opcode, u8 *msg) { }
 #endif /* CONFIG_ICE_VFIO_PCI */
 
 #endif /* _ICE_MIGRATION_PRIVATE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 318b6dfc016d..49d99694e91f 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -146,6 +146,7 @@ struct ice_vf {
 	u64 virtchnl_msg_num;
 	u64 virtchnl_msg_size;
 	u32 virtchnl_retval;
+	u16 vm_vsi_num;
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 54f441daa87e..8dbe558790af 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -4060,6 +4060,7 @@ int ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	}
 
 	if (vf->migration_enabled) {
+		ice_migration_fix_msg_vsi(vf, v_opcode, msg);
 		if (ice_migration_log_vf_msg(vf, event)) {
 			u32 status_code = VIRTCHNL_STATUS_ERR_NO_MEMORY;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
