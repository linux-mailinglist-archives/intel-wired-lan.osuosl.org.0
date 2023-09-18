Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B63A77A4116
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:28:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EB454183B;
	Mon, 18 Sep 2023 06:28:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EB454183B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695018521;
	bh=1L8b8vXa+L/+v3Orf5MIqZBgbjeW1JSJxt3UAFDmfXI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2HPgYTsmcYRcLZC7ee2zk70NfVMmiJxMsmrXs1OFUzRK/GylWyGGZZE1u3Jth9KK8
	 LrLx4fQSelyvqXHYMyAJtAR3LXlCm4jIXcXu7r6824xnNQ4E+QYHcLNOQzgwCX/S4t
	 PlbzJ3I5VfCe6+YOK8M6IMj8SuWiMQUl83MYP5SvmQyvjXw+StLpd6gb+ph33JLIps
	 Xwk61+upef6fd8l+HIgvkc5yKg2W5MsC+AK1UtIlFEAapuURGoth4wWu08bLa4i7DD
	 6gLmszFXXB2Z/rlB8LbwmJJ63bpoepLcIWp0Rxsy0C9srzgTMlBYlbaqE9JwKJJVE4
	 UXAzrq6KbYpbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e0AbUwvg0RZH; Mon, 18 Sep 2023 06:28:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B52E4417F6;
	Mon, 18 Sep 2023 06:28:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B52E4417F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 955A91BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E574611B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E574611B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a56Lgl0PVWei for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:28:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A6D3611B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A6D3611B4
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="378488603"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="378488603"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:28:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="815893566"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="815893566"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.186])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2023 23:28:26 -0700
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 06:25:41 +0000
Message-Id: <20230918062546.40419-9-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695018511; x=1726554511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T4XDQlaeGUnJmw+JumZ6xll5gqQvfIwOAAdZVBL6bhI=;
 b=CAZ1xCEV3dygdr2FYdzb3ZWXj9tE4EW8bmCEOBU0Lpw0wfwARm+hWlyU
 qCqEjUCrDQOLOX+5cbOBjrSTV1Sm1+DQM7OATBhPyIxXBIWzZHEDxctXy
 /ji/0MkDub/I1KaqoGKghwGRQMqppVwGbR+sENddyOnZP+O6nuiUOh37B
 2Z8p3V6XcrQnaYQQEkjUhntXHuQcOE8i9mBTF/XlGIK1qKV9phvLzYfrX
 KJPLxnEZsDY8e5b1Mn7D5ewRhYcj6YOWIkBh4yfsYoLDXWukH6unxO8Ih
 gWqVbdmLHwqlIwSLfeb/D6VWJ7s9d/b0dO7mlFTbih5QapLwjveukOLLT
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CAZ1xCEV
Subject: [Intel-wired-lan] [PATCH iwl-next v3 08/13] ice: Fix VSI id in
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
 kvm@vger.kernel.org, edumazet@google.com, shameerali.kolothum.thodi@huawei.com,
 jesse.brandeburg@intel.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, jgg@nvidia.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
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
 .../net/ethernet/intel/ice/ice_migration.c    | 96 +++++++++++++++++++
 .../intel/ice/ice_migration_private.h         |  4 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  1 +
 4 files changed, 102 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index edcd6df332ba..99faf9acff13 100644
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
@@ -314,6 +316,7 @@ int ice_migration_save_devstate(struct ice_pf *pf, int vf_id, u8 *buf, u64 buf_s
 	devstate->num_txq = vsi->num_txq;
 	devstate->num_rxq = vsi->num_rxq;
 	buf = devstate->virtchnl_msgs;
+	devstate->vsi_id = vf->vm_vsi_num;
 
 	list_for_each_entry(msg_listnode, &vf->virtchnl_msg_list, node) {
 		struct ice_migration_virtchnl_msg_slot *msg_slot;
@@ -439,6 +442,8 @@ int ice_migration_restore_devstate(struct ice_pf *pf, int vf_id, const u8 *buf,
 		goto out_put_vf;
 
 	devstate = (struct ice_migration_dev_state *)buf;
+	vf->vm_vsi_num = devstate->vsi_id;
+	dev_dbg(dev, "VF %d vm vsi num is:%d\n", vf->vf_id, vf->vm_vsi_num);
 	msg_slot = (struct ice_migration_virtchnl_msg_slot *)devstate->virtchnl_msgs;
 	set_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states);
 
@@ -470,3 +475,94 @@ int ice_migration_restore_devstate(struct ice_pf *pf, int vf_id, const u8 *buf,
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
index 678ae361cf0c..af70025f2f36 100644
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
@@ -28,6 +29,9 @@ ice_migration_supported_caps(void)
 {
 	return 0xFFFFFFFF;
 }
+
+static inline void
+ice_migration_fix_msg_vsi(struct ice_vf *vf, u32 v_opcode, u8 *msg) { }
 #endif /* CONFIG_ICE_VFIO_PCI */
 
 #endif /* _ICE_MIGRATION_PRIVATE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 011398655739..e37c3b0ecc06 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -143,6 +143,7 @@ struct ice_vf {
 	u64 virtchnl_msg_num;
 	u64 virtchnl_msg_size;
 	u32 virtchnl_retval;
+	u16 vm_vsi_num;
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index e34ea781a81c..7cedd0542d4b 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -4048,6 +4048,7 @@ int ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	}
 
 	if (vf->migration_enabled) {
+		ice_migration_fix_msg_vsi(vf, v_opcode, msg);
 		if (ice_migration_log_vf_msg(vf, event)) {
 			err = ice_vc_respond_to_vf(vf, v_opcode,
 						   VIRTCHNL_STATUS_ERR_NO_MEMORY,
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
