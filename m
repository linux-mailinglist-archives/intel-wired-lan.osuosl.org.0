Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466B4737E13
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:11:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7E0E41813;
	Wed, 21 Jun 2023 09:11:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7E0E41813
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338716;
	bh=uIT4q5WMlmtFnIk4cMpA2kN7Uf9tAZrhifwYhXLBo80=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Pkn1JcioOsFpJZtEitnOC5tKg52ir7kDGy/SnbjChXkudJvH3P+4bSKBmo3lpZtb7
	 oz/R2LpKEtRxufiRc+8l4Q1twkIpza8PrJMB3yAFnm99GJIh6o5LCZq96emYYu+N+h
	 BIYwaDSkYc6NG3WqM15f32IoqbqUNZg/cIlCr9v5fJ/n3eyw3mlvbxDkd71BPTgkOz
	 5NuAjJ14A/P2BCDEz49jpk59GDnxsXBjjmfZIfECVnC1cuUEY2ZY/qBiEgbZ+6i5g0
	 wFCS4lvQKPDBDHCVkVqyEJMXWQyPMZgI215zGTdIoiiQEYKtXYFXLSldeINWZ7a8OX
	 ioXGKd+yfpF9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bTE6NJWZsLBg; Wed, 21 Jun 2023 09:11:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1292B417FE;
	Wed, 21 Jun 2023 09:11:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1292B417FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7636D1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4FB6983280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FB6983280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gkVNDwuK0C_x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:11:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D4A183276
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D4A183276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613659"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613659"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:11:46 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570836"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570836"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:11:42 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:11:03 +0000
Message-Id: <20230621091112.44945-7-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338706; x=1718874706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=36J+eOSdnivaGVeZKEHMSjNbmroDUY/peZKjyhmno80=;
 b=GZMqGkG3ldNjBSFCBrwEefhhTPHPHI4iuE1XiEWLTNZ7xTc2hvgrAq9C
 ddEQSbos5lzHL9Wd71q81XCDhXOSOzMU3bZFL31J18b/nlewHBz87JV3D
 xGA9uSKcrGaxHLqyCXtX7wYnjUB/KT/I0wsOA+s2larBL+k2DLJZdOHSF
 9LOVXPb0pSW01jhUMPS1rP0TU1ANQs19Sd2CWxMYrEuKBJK+vMN4CbzGq
 LITxb5gz4n864FF9RNk+V8pwAr2cxTNOvFZ2bYI7VIFOk4tTYmwXGhXNQ
 XgNN/4y30UWLbIpXK7vSZJhMs7k0Saw4tGd2EXjIUiUb3iFXi1tDXwcIi
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GZMqGkG3
Subject: [Intel-wired-lan] [PATCH iwl-next V2 06/15] ice: save and restore
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
index 9eb2ff5c10f1..6c99ad7ac2e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3895,11 +3895,24 @@ ice_is_malicious_vf(struct ice_vf *vf, struct ice_mbx_data *mbxdata)
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
@@ -3916,13 +3929,13 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
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
@@ -4084,4 +4097,5 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
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
