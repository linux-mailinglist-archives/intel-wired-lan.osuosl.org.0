Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C534F7A4114
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:28:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 525D641846;
	Mon, 18 Sep 2023 06:28:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 525D641846
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695018516;
	bh=TqXQ4C7PAz64CzXcImW6fVinFnbmBQD3VV1Uy0FTve4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J1lpaDJvDm5mj65waJX6OrDkcUkluYaPXJBlhpJhTRofdq87IaaOil7O/4/Fys/0v
	 LTmW6ywQKx9WyZCX70KBIp+KxYRVQUwnCBoMCjAh+JtS2/ELW0ReuqI9X4TAdm846P
	 Xg8VF6ohcZVS56L1PQXEeHFJyW3NBXWTEYs4d6Rrehyken4+EMWgZ8KsQOVZHfC12B
	 QGgeUKqtamuqUWCFihZHt4CCvFLoIuzRhTiYNWgMqBNWQZMSXY+yhC5ZN0yZAUbbQU
	 HnyiIH6gx8oaNuJvzhrQMd3znQwjUZPnMl17Q5GBm04YnTsmisbv1TlLz3O9GWjrmW
	 b/ZsrwHcCw99Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IVby4tcss7rZ; Mon, 18 Sep 2023 06:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C4D740022;
	Mon, 18 Sep 2023 06:28:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C4D740022
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFFB31BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4DCD611BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4DCD611BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kqW_HcHfurVt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:28:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9754D611B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9754D611B4
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="378488589"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="378488589"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:28:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="815893552"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="815893552"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.186])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2023 23:28:20 -0700
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 06:25:40 +0000
Message-Id: <20230918062546.40419-8-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695018506; x=1726554506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ukpgyWlNedcPkap/JHFovqgSzBYn/7rGzzGPUHICzUM=;
 b=DH9FR4EmuzXYmP5gpetRAspuzij2YHdDDGxR7LLK2OQJHwvPDZXi0bev
 vW9/uLZr7xnx+T26lRgqL7diX0fJGXBEkPkwR61hz/bQV/PvSW6JRHy+U
 4c3V/Kl3BPqnT4wXK763Bt7LlJZyGIl69VknAXeCbROZqHPcTlmYvrpIV
 sAL69IRRIDL4ogDZN9qvuGHWf+KiY+bATcPcVyU0lgkOH/B+Fa+X4Oda1
 CsLHIYOLMF1KC74Wyznz/rV5Sbux4LXgvzvUsJ4gKioInlx6jIlM2CHp+
 RyvvxEzVh0zl8j9hQ3I6qjN8+Sw/CqvE68xYwJ3DNpgwKX1obir6fM4RT
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DH9FR4Em
Subject: [Intel-wired-lan] [PATCH iwl-next v3 07/13] ice: Add device state
 save/restore function for migration
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

Add device state save/restore function to adapter vfio migration stack
when device is in stop-copy/resume stage.

Device state saving handler is called by vfio driver in device stop copy
stage. It snapshots the device state, translates device state into device
specific data and fills the data into migration buffer.

Device state restoring handler is called by vfio driver in device resume
stage. It gets device specific data from the migration buffer, translates
the data into the device state and recover the device with the state.

Currently only the virtual channel messages are handled.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 222 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  26 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   7 +-
 include/linux/net/intel/ice_migration.h       |  12 +
 4 files changed, 258 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 88ec0653a1ce..edcd6df332ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -3,6 +3,9 @@
 
 #include "ice.h"
 
+#define ICE_MIG_DEVSTAT_MAGIC			0xE8000001
+#define ICE_MIG_DEVSTAT_VERSION			0x1
+
 struct ice_migration_virtchnl_msg_slot {
 	u32 opcode;
 	u16 msg_len;
@@ -14,6 +17,17 @@ struct ice_migration_virtchnl_msg_listnode {
 	struct ice_migration_virtchnl_msg_slot msg_slot;
 };
 
+struct ice_migration_dev_state {
+	u32 magic;
+	u32 version;
+	u64 total_size;
+	u32 vf_caps;
+	u16 num_txq;
+	u16 num_rxq;
+
+	u8 virtchnl_msgs[];
+} __aligned(8);
+
 /**
  * ice_migration_get_pf - Get ice PF structure pointer by pdev
  * @pdev: pointer to ice vfio pci VF pdev structure
@@ -248,3 +262,211 @@ u32 ice_migration_supported_caps(void)
 {
 	return VIRTCHNL_VF_MIGRATION_SUPPORT_FEATURE;
 }
+
+/**
+ * ice_migration_save_devstate - save device state to migration buffer
+ * @pf: pointer to PF of migration device
+ * @vf_id: VF index of migration device
+ * @buf: pointer to VF msg in migration buffer
+ * @buf_sz: size of migration buffer
+ *
+ * Return 0 for success, negative for error
+ */
+int ice_migration_save_devstate(struct ice_pf *pf, int vf_id, u8 *buf, u64 buf_sz)
+{
+	struct ice_migration_virtchnl_msg_listnode *msg_listnode;
+	struct ice_migration_virtchnl_msg_slot *dummy_op;
+	struct ice_migration_dev_state *devstate;
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_vsi *vsi;
+	struct ice_vf *vf;
+	u64 total_sz;
+	int ret = 0;
+
+	vf = ice_get_vf_by_id(pf, vf_id);
+	if (!vf) {
+		dev_err(dev, "Unable to locate VF from VF ID%d\n", vf_id);
+		return -EINVAL;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		ret = -EINVAL;
+		goto out_put_vf;
+	}
+
+	/* Reserve space to store device state */
+	total_sz = sizeof(struct ice_migration_dev_state) +
+			vf->virtchnl_msg_size + sizeof(*dummy_op);
+	if (total_sz > buf_sz) {
+		dev_err(dev, "Insufficient buffer to store device state for VF %d\n",
+			vf->vf_id);
+		ret = -ENOBUFS;
+		goto out_put_vf;
+	}
+
+	devstate = (struct ice_migration_dev_state *)buf;
+	devstate->magic = ICE_MIG_DEVSTAT_MAGIC;
+	devstate->version = ICE_MIG_DEVSTAT_VERSION;
+	devstate->total_size = total_sz;
+	devstate->vf_caps = ice_migration_supported_caps();
+	devstate->num_txq = vsi->num_txq;
+	devstate->num_rxq = vsi->num_rxq;
+	buf = devstate->virtchnl_msgs;
+
+	list_for_each_entry(msg_listnode, &vf->virtchnl_msg_list, node) {
+		struct ice_migration_virtchnl_msg_slot *msg_slot;
+		u64 slot_size;
+
+		msg_slot = &msg_listnode->msg_slot;
+		slot_size = struct_size(msg_slot, msg_buffer,
+					msg_slot->msg_len);
+		dev_dbg(dev, "VF %d copy virtchnl message to migration buffer op: %d, len: %d\n",
+			vf->vf_id, msg_slot->opcode, msg_slot->msg_len);
+		memcpy(buf, msg_slot, slot_size);
+		buf += slot_size;
+	}
+
+	/* Use op code unknown to mark end of vc messages */
+	dummy_op = (struct ice_migration_virtchnl_msg_slot *)buf;
+	dummy_op->opcode = VIRTCHNL_OP_UNKNOWN;
+
+out_put_vf:
+	ice_put_vf(vf);
+	return ret;
+}
+EXPORT_SYMBOL(ice_migration_save_devstate);
+
+/**
+ * ice_migration_check_match - check if configuration is matched or not
+ * @pf: pointer to VF
+ * @buf: pointer to device state buffer
+ * @buf_sz: size of buffer
+ *
+ * Return 0 for success, negative for error
+ */
+static int ice_migration_check_match(struct ice_vf *vf, const u8 *buf, u64 buf_sz)
+{
+	u32 supported_caps = ice_migration_supported_caps();
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_migration_dev_state *devstate;
+	struct ice_vsi *vsi;
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	if (sizeof(struct ice_migration_dev_state) > buf_sz) {
+		dev_err(dev, "VF %d devstate header exceeds buffer size\n",
+			vf->vf_id);
+		return -EINVAL;
+	}
+
+	devstate = (struct ice_migration_dev_state *)buf;
+	if (devstate->magic != ICE_MIG_DEVSTAT_MAGIC) {
+		dev_err(dev, "VF %d devstate has invalid magic 0x%x\n",
+			vf->vf_id, devstate->magic);
+		return -EINVAL;
+	}
+
+	if (devstate->version != ICE_MIG_DEVSTAT_VERSION) {
+		dev_err(dev, "VF %d devstate has invalid version 0x%x\n",
+			vf->vf_id, devstate->version);
+		return -EINVAL;
+	}
+
+	if (devstate->num_txq != vsi->num_txq) {
+		dev_err(dev, "Failed to match VF %d tx queue number, request %d, support %d\n",
+			vf->vf_id, devstate->num_txq, vsi->num_txq);
+		return -EINVAL;
+	}
+
+	if (devstate->num_rxq != vsi->num_rxq) {
+		dev_err(dev, "Failed to match VF %d rx queue number, request %d, support %d\n",
+			vf->vf_id, devstate->num_rxq, vsi->num_rxq);
+		return -EINVAL;
+	}
+
+	if ((devstate->vf_caps & supported_caps) != devstate->vf_caps) {
+		dev_err(dev, "Failed to match VF %d caps, request 0x%x, support 0x%x\n",
+			vf->vf_id, devstate->vf_caps, supported_caps);
+		return -EINVAL;
+	}
+
+	if (devstate->total_size > buf_sz) {
+		dev_err(dev, "VF %d devstate exceeds buffer size\n",
+			vf->vf_id);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_migration_restore_devstate - restore device state at dst
+ * @pf: pointer to PF of migration device
+ * @vf_id: VF index of migration device
+ * @buf: pointer to device state buf in migration buffer
+ * @buf_sz: size of migration buffer
+ *
+ * This function uses the device state saved in migration buffer
+ * to restore device state at dst VM
+ *
+ * Return 0 for success, negative for error
+ */
+int ice_migration_restore_devstate(struct ice_pf *pf, int vf_id, const u8 *buf, u64 buf_sz)
+{
+	struct ice_migration_virtchnl_msg_slot *msg_slot;
+	struct ice_migration_dev_state *devstate;
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_vf *vf;
+	int ret = 0;
+
+	if (!buf)
+		return -EINVAL;
+
+	vf = ice_get_vf_by_id(pf, vf_id);
+	if (!vf) {
+		dev_err(dev, "Unable to locate VF from VF ID%d\n", vf_id);
+		return -EINVAL;
+	}
+
+	ret = ice_migration_check_match(vf, buf, buf_sz);
+	if (ret)
+		goto out_put_vf;
+
+	devstate = (struct ice_migration_dev_state *)buf;
+	msg_slot = (struct ice_migration_virtchnl_msg_slot *)devstate->virtchnl_msgs;
+	set_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states);
+
+	while (msg_slot->opcode != VIRTCHNL_OP_UNKNOWN) {
+		struct ice_rq_event_info event;
+		u64 slot_sz;
+
+		slot_sz = struct_size(msg_slot, msg_buffer, msg_slot->msg_len);
+		dev_dbg(dev, "VF %d replay virtchnl message op code: %d, msg len: %d\n",
+			vf->vf_id, msg_slot->opcode, msg_slot->msg_len);
+		event.desc.cookie_high = msg_slot->opcode;
+		event.msg_len = msg_slot->msg_len;
+		event.desc.retval = vf->vf_id;
+		event.msg_buf = (unsigned char *)msg_slot->msg_buffer;
+		ret = ice_vc_process_vf_msg(vf->pf, &event, NULL);
+		if (ret) {
+			dev_err(dev, "VF %d failed to replay virtchnl message op code: %d\n",
+				vf->vf_id, msg_slot->opcode);
+			goto out_clear_replay;
+		}
+		event.msg_buf = NULL;
+		msg_slot = (struct ice_migration_virtchnl_msg_slot *)
+					((char *)msg_slot + slot_sz);
+	}
+out_clear_replay:
+	clear_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states);
+out_put_vf:
+	ice_put_vf(vf);
+	return ret;
+}
+EXPORT_SYMBOL(ice_migration_restore_devstate);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index b40e91958f0d..e34ea781a81c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3971,11 +3971,24 @@ ice_is_malicious_vf(struct ice_vf *vf, struct ice_mbx_data *mbxdata)
  * @event: pointer to the AQ event
  * @mbxdata: information used to detect VF attempting mailbox overflow
  *
- * called from the common asq/arq handler to
- * process request from VF
+ * This function will be called from:
+ * 1. the common asq/arq handler to process request from VF
+ *
+ *    The return value is ignored, as the command handler will send the status
+ *    of the request as a response to the VF. This flow sets the mbxdata to
+ *    a non-NULL value and must call ice_is_malicious_vf to determine if this
+ *    VF might be attempting to overflow the PF message queue.
+ *
+ * 2. replay virtual channel commamds during live migration
+ *
+ *    The return value is used to indicate failure to replay vc commands and
+ *    that the migration failed. This flow sets mbxdata to NULL and skips the
+ *    ice_is_malicious_vf checks which are unnecessary during replay.
+ *
+ * Return 0 if success, negative for failure.
  */
-void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
-			   struct ice_mbx_data *mbxdata)
+int ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
+			  struct ice_mbx_data *mbxdata)
 {
 	u32 v_opcode = le32_to_cpu(event->desc.cookie_high);
 	s16 vf_id = le16_to_cpu(event->desc.retval);
@@ -3992,13 +4005,13 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	if (!vf) {
 		dev_err(dev, "Unable to locate VF for message from VF ID %d, opcode %d, len %d\n",
 			vf_id, v_opcode, msglen);
-		return;
+		return -EINVAL;
 	}
 
 	mutex_lock(&vf->cfg_lock);
 
 	/* Check if the VF is trying to overflow the mailbox */
-	if (ice_is_malicious_vf(vf, mbxdata))
+	if (!test_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states) && ice_is_malicious_vf(vf, mbxdata))
 		goto finish;
 
 	/* Check if VF is disabled. */
@@ -4177,4 +4190,5 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 finish:
 	mutex_unlock(&vf->cfg_lock);
 	ice_put_vf(vf);
+	return err;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index a2b6094e2f2f..4b151a228c52 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -63,8 +63,8 @@ int
 ice_vc_respond_to_vf(struct ice_vf *vf, u32 v_opcode,
 		     enum virtchnl_status_code v_retval, u8 *msg, u16 msglen);
 bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id);
-void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
-			   struct ice_mbx_data *mbxdata);
+int ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
+			  struct ice_mbx_data *mbxdata);
 #else /* CONFIG_PCI_IOV */
 static inline void ice_virtchnl_set_dflt_ops(struct ice_vf *vf) { }
 static inline void ice_virtchnl_set_repr_ops(struct ice_vf *vf) { }
@@ -84,10 +84,11 @@ static inline bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
 	return false;
 }
 
-static inline void
+static inline int
 ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 		      struct ice_mbx_data *mbxdata)
 {
+	return -EOPNOTSUPP;
 }
 #endif /* !CONFIG_PCI_IOV */
 
diff --git a/include/linux/net/intel/ice_migration.h b/include/linux/net/intel/ice_migration.h
index d7228de7b02d..57c0e60e21d4 100644
--- a/include/linux/net/intel/ice_migration.h
+++ b/include/linux/net/intel/ice_migration.h
@@ -11,6 +11,8 @@ struct ice_pf;
 struct ice_pf *ice_migration_get_pf(struct pci_dev *pdev);
 int ice_migration_init_dev(struct ice_pf *pf, int vf_id);
 void ice_migration_uninit_dev(struct ice_pf *pf, int vf_id);
+int ice_migration_save_devstate(struct ice_pf *pf, int vf_id, u8 *buf, u64 buf_sz);
+int ice_migration_restore_devstate(struct ice_pf *pf, int vf_id, const u8 *buf, u64 buf_sz);
 
 #else
 static inline struct ice_pf *ice_migration_get_pf(struct pci_dev *pdev)
@@ -20,6 +22,16 @@ static inline struct ice_pf *ice_migration_get_pf(struct pci_dev *pdev)
 
 static inline int ice_migration_init_dev(struct ice_pf *pf, int vf_id) { }
 static inline void ice_migration_uninit_dev(struct ice_pf *pf, int vf_id) { }
+static inline int ice_migration_save_devstate(struct ice_pf *pf, int vf_id, u8 *buf, u64 buf_sz)
+{
+	return 0;
+}
+
+static inline int ice_migration_restore_devstate(struct ice_pf *pf, int vf_id,
+						 const u8 *buf, u64 buf_sz)
+{
+	return 0;
+}
 #endif /* CONFIG_ICE_VFIO_PCI */
 
 #endif /* _ICE_MIGRATION_H_ */
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
