Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE2773689E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:01:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C4C5418E4;
	Tue, 20 Jun 2023 10:01:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C4C5418E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255282;
	bh=HPrQmTub73P4CHfBFZLWnR6GDLOaPUoQGY4/VIfEZ2U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5sPc8vk3vD/wJqS0Zr0n5X3dEWvwM84LN/MTixUJ8EXJCQ5G8QYr/G2MIGDasN7OF
	 riSpF4Cnu339opeG9eRjYu7r5J/Hmvs2ME2/8G3NIvpFhysdoZFdOsteI4DmJhm43Z
	 gwLJuw7FL5HOxwr/S1RXSm/8TLSDtPzo8G6hTMsfHAJOx2TsqJWFSXJxVVKFu8E9oO
	 bJTsg3CKJyjuZSzzKSJUONMUUB75980r93r/Ncqq/jCRoP7dikwy1QwBVFVo11LYPl
	 +z4L3L+ltjFFzNCEmCmywcN13Dhh5QKq4s8s1o9DEc+qhky/pIdQ/KjCPAUpSN2wQq
	 LEFW+cYdmTvsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IJwSpMBG99SQ; Tue, 20 Jun 2023 10:01:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D05154099D;
	Tue, 20 Jun 2023 10:01:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D05154099D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 123441BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DDADC60E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDADC60E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eFyC9DWhqCmh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:00:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF66960D59
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF66960D59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688372"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688372"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:00:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227265"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227265"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:00:51 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:52 +0000
Message-Id: <20230620100001.5331-7-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255254; x=1718791254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HIvJCz03cI7AwBUM/MSVRccvzB9TLkPwWp7+N4n+oQg=;
 b=KqOhM277I/AgpJwUeFzstdX5Hnwc6e0s/gxldQAid852BXX4qIvvCMWV
 4vGaaSXS7B2lmNuwEkq+hucSWMy/+pCnhVZxbKYMXdqwyYoXa1ikjU/E9
 u7OlqvNyo4QUVJ9+ZFpCj+07lBSNtjZAXd/HSCgd7S/u/Z8wUALRvJF/6
 NtZnJwb1jJLAkriVzLkRx1ErPT/VTiSlklJ+8qoojZRGGhh2UeZINdaHI
 RA5dHTwSK/47qosl6Xr4J2f456mKSyryT1+GOkHcZHu0KzsDrdsqRHuxA
 h7pnViiofBKMngxMUMS4Eay+aoNVCSpyPbAFe9V9Wn4kZpMXcKkBjbBTW
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KqOhM277
Subject: [Intel-wired-lan] [PATCH iwl-next V1 06/15] ice: save and restore
 device state
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

Add function to migrate device state.

ice_vfio_pci driver introduced in following patches from this series
needs the exported function to save and restore device state.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 125 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  26 +++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   7 +-
 include/linux/net/intel/ice_migration.h       |  12 ++
 4 files changed, 161 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 6f658daf89a5..49ad3c252f03 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -160,3 +160,128 @@ void ice_migration_save_vf_msg(struct ice_vf *vf,
 		break;
 	}
 }
+
+/**
+ * ice_migration_save_devstate - save VF msg to migration buffer
+ * @opaque: pointer to VF handler in ice vdev
+ * @buf: pointer to VF msg in migration buffer
+ * @buf_sz: size of migration buffer
+ *
+ * Return 0 for success, negative for error
+ */
+int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz)
+{
+	struct ice_migration_virtchnl_msg_listnode *msg_listnode;
+	struct ice_migration_virtchnl_msg_slot *last_op;
+	struct ice_vf *vf = (struct ice_vf *)opaque;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	u64 total_sz = 0;
+
+	if (vf == NULL)
+		return -EINVAL;
+
+	list_for_each_entry(msg_listnode, &vf->virtchnl_msg_list, node) {
+		struct ice_migration_virtchnl_msg_slot *msg_slot;
+		u64 slot_size;
+
+		msg_slot = &msg_listnode->msg_slot;
+		slot_size = struct_size(msg_slot, msg_buffer,
+					msg_slot->msg_len);
+		total_sz += slot_size;
+		if (total_sz > buf_sz) {
+			dev_err(dev, "Insufficient buffer to store virtchnl message for VF %d op: %d, len: %d\n",
+				vf->vf_id, msg_slot->opcode, msg_slot->msg_len);
+			return -ENOBUFS;
+		}
+		dev_dbg(dev, "VF %d copy virtchnl message to migration buffer op: %d, len: %d\n",
+			vf->vf_id, msg_slot->opcode, msg_slot->msg_len);
+		memcpy(buf, msg_slot, slot_size);
+		buf += slot_size;
+	}
+	/* reserve space to mark end of vf messages */
+	total_sz += sizeof(struct ice_migration_virtchnl_msg_slot);
+	if (total_sz > buf_sz) {
+		dev_err(dev, "Insufficient buffer to store virtchnl message for VF %d\n",
+			vf->vf_id);
+		return -ENOBUFS;
+	}
+
+	/* use op code unknown to mark end of vc messages */
+	last_op = (struct ice_migration_virtchnl_msg_slot *)buf;
+	last_op->opcode = VIRTCHNL_OP_UNKNOWN;
+	return 0;
+}
+EXPORT_SYMBOL(ice_migration_save_devstate);
+
+/**
+ * ice_migration_restore_devstate - restore device state at dst
+ * @opaque: pointer to VF handler in ice vdev
+ * @buf: pointer to device state buf in migration buffer
+ * @buf_sz: size of migration buffer
+ *
+ * This function uses the device state saved in migration buffer
+ * to restore device state at dst VM
+ *
+ * Return 0 for success, negative for error
+ */
+int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz)
+{
+	struct ice_migration_virtchnl_msg_slot *msg_slot;
+	struct ice_vf *vf = (struct ice_vf *)opaque;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_rq_event_info event;
+	u64 total_sz = 0;
+	u64 op_msglen_sz;
+	u64 slot_sz;
+	int ret = 0;
+
+	if (!buf)
+		return -EINVAL;
+
+	msg_slot = (struct ice_migration_virtchnl_msg_slot *)buf;
+	op_msglen_sz = sizeof(struct ice_migration_virtchnl_msg_slot);
+	/* check whether enough space for opcode and msg_len */
+	if (total_sz + op_msglen_sz > buf_sz) {
+		dev_err(dev, "VF %d msg size exceeds buffer size\n", vf->vf_id);
+		return -ENOBUFS;
+	}
+
+	set_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states);
+
+	while (msg_slot->opcode != VIRTCHNL_OP_UNKNOWN) {
+		slot_sz = struct_size(msg_slot, msg_buffer, msg_slot->msg_len);
+		total_sz += slot_sz;
+		/* check whether enough space for whole message */
+		if (total_sz > buf_sz) {
+			dev_err(dev, "VF %d msg size exceeds buffer size\n",
+				vf->vf_id);
+			ret = -ENOBUFS;
+			break;
+		}
+		dev_dbg(dev, "VF %d replay virtchnl message op code: %d, msg len: %d\n",
+			vf->vf_id, msg_slot->opcode, msg_slot->msg_len);
+		event.desc.cookie_high = msg_slot->opcode;
+		event.msg_len = msg_slot->msg_len;
+		event.desc.retval = vf->vf_id;
+		event.msg_buf = (unsigned char *)msg_slot->msg_buffer;
+		ret = ice_vc_process_vf_msg(vf->pf, &event, NULL);
+		if (ret) {
+			dev_err(dev, "failed to replay virtchnl message op code: %d\n",
+				msg_slot->opcode);
+			break;
+		}
+		event.msg_buf = NULL;
+		msg_slot = (struct ice_migration_virtchnl_msg_slot *)
+					((char *)msg_slot + slot_sz);
+		/* check whether enough space for opcode and msg_len */
+		if (total_sz + op_msglen_sz > buf_sz) {
+			dev_err(dev, "VF %d msg size exceeds buffer size\n",
+				vf->vf_id);
+			ret = -ENOBUFS;
+			break;
+		}
+	}
+	clear_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states);
+	return ret;
+}
+EXPORT_SYMBOL(ice_migration_restore_devstate);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index b306e0e0a395..ce8afceb5a8e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3894,11 +3894,24 @@ ice_is_malicious_vf(struct ice_vf *vf, struct ice_mbx_data *mbxdata)
  * @event: pointer to the AQ event
  * @mbxdata: information used to detect VF attempting mailbox overflow
  *
- * called from the common asq/arq handler to
- * process request from VF
+ * This function will be called from:
+ * 1. the common asq/arq handler to process request from VF
+ *
+ *    The return value is ignored, as the command will send the status of the
+ *    request as a response to the VF. This flow sets the mbxdata to
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
@@ -3915,13 +3928,13 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
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
@@ -4083,4 +4096,5 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
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
index 5f1c765ed582..741a242558a1 100644
--- a/include/linux/net/intel/ice_migration.h
+++ b/include/linux/net/intel/ice_migration.h
@@ -9,6 +9,8 @@ void *ice_migration_get_vf(struct pci_dev *vf_pdev);
 void ice_migration_put_vf(void *opaque);
 void ice_migration_init_vf(void *opaque);
 void ice_migration_uninit_vf(void *opaque);
+int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz);
+int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz);
 
 #else
 static inline void *ice_migration_get_vf(struct pci_dev *vf_pdev)
@@ -21,6 +23,16 @@ static inline void ice_migration_put_vf(void *opaque)
 }
 static inline void ice_migration_init_vf(void *opaque) { }
 static inline void ice_migration_uninit_vf(void *opaque) { }
+static inline int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz)
+{
+	return 0;
+}
+
+static inline int ice_migration_restore_devstate(void *opaque, const u8 *buf,
+						 u64 buf_sz)
+{
+	return 0;
+}
 #endif /* CONFIG_ICE_VFIO_PCI */
 
 #endif /* _ICE_MIGRATION_H_ */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
