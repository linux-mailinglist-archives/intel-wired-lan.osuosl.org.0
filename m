Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A4E69F9CC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3B15417CD;
	Wed, 22 Feb 2023 17:16:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3B15417CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086209;
	bh=mQuG6V8JOt2moOfJOdjjif+qlYa61hVKkhIBVYGem3Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ckV5vICx9q2O5BnpJ9y8KVLElVZywVXjT6IlkrTn4VwwHU81nDsPc7Mauo18HMoyV
	 woBQoDACRJqx2qhMI2YZpqCJTWLZN/uhEJQ8/0+D2H0Qh1hEyzhxnRg+ETK5LIaNef
	 KPaFI7yIFvxmNr5gPlnJxubcgYi0zC7cHIPJVNjN9dclR3cnnpYXlMT23X/tI0fjfr
	 4ZNZ9/0McpHfnHjLxjb7IAKfrvAJLXvZ1J8gWZkrDSgjN2xNqgllYEF6SCrDdFX3p8
	 RN/jxxkM+LnShEELTsyliVWYZNccA+qNLzLmG7dIkE4H9WPa89f35Wse2U8vZ3Izdq
	 nhfBwx06Jx28A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8WqbrJwRDeCJ; Wed, 22 Feb 2023 17:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6005E417C6;
	Wed, 22 Feb 2023 17:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6005E417C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 163BC1BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7616141733
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7616141733
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d9kkUr8MnWht for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EA5341731
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8EA5341731
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466648"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466648"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980043"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980043"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:09 -0800
Message-Id: <20230222170920.1629293-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085788; x=1708621788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pfDdJUtIVORwAHdBICKwUpU3blgg674F3O3Y5HInsh8=;
 b=etFzl/PSuTRyplRRDHwKA/Hoxbf02sjbvDpEBpjwcMNXdrpTcsOqj2Bs
 6qLG8GK6VSyx4fy12eFuHBFDkJbYfdrmOmGuKiEcR4yoU1ewXpEo9Y9l9
 Moz+kuCXrj3bmDY1e8Vx5W4zW7L8NJkJE3cBH99LM/SDYdoCTyBSvAfVn
 NkbyP7nFM5+yNzIDccXw7gbm3t91flxP1Iz1KjOFnWF50EebrMlO01alr
 PcheZsC6cRU7KKaTI9WsZfUG+33Ybsa8/Ubg6qhlLKcZTkRhZpa7QlCK6
 wKMPSNaqyhEjY5IRkLStQOrUWzg4zPbPoqg26LTgiF61cvZz2fLwnARrD
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=etFzl/PS
Subject: [Intel-wired-lan] [intel-next PATCH 03/14] ice: track malicious VFs
 in new ice_mbx_vf_info structure
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently the PF tracks malicious VFs in a malvfs bitmap which is used by
the ice_mbx_clear_malvf and ice_mbx_report_malvf functions. This bitmap is
used to ensure that we only report a VF as malicious once rather than
continuously spamming the event log.

This mechanism of storage for the malicious indication works well enough
for SR-IOV. However, it will not work with Scalable IOV. This is because
Scalable IOV VFs can be allocated dynamically and might change VF ID when
their underlying VSI changes.

To support this, the mailbox overflow logic will need to be refactored.
First, introduce a new ice_mbx_vf_info structure which will be used to
store data about a VF. Embed this structure in the struct ice_vf, and
ensure it gets initialized when a new VF is created.

For now this only stores the malicious indicator bit. Pass a pointer to the
VF's mbx_info structure instead of using a bitmap to keep track of these
bits.

A future change will extend this structure and the rest of the logic
associated with the overflow detection.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  |  7 +-
 drivers/net/ethernet/intel/ice/ice_type.h   |  7 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 10 +--
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 71 +++++++++------------
 drivers/net/ethernet/intel/ice/ice_vf_mbx.h |  9 +--
 6 files changed, 53 insertions(+), 53 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 7107c279752a..44b94276df91 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -204,8 +204,8 @@ void ice_free_vfs(struct ice_pf *pf)
 		}
 
 		/* clear malicious info since the VF is getting released */
-		ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
-				    ICE_MAX_SRIOV_VFS, vf->vf_id);
+		ice_mbx_clear_malvf(&hw->mbx_snapshot, vf->vf_id,
+				    &vf->mbx_info);
 
 		mutex_unlock(&vf->cfg_lock);
 	}
@@ -1828,8 +1828,7 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 		/* if the VF is malicious and we haven't let the user
 		 * know about it, then let them know now
 		 */
-		status = ice_mbx_report_malvf(&pf->hw, pf->vfs.malvfs,
-					      ICE_MAX_SRIOV_VFS, vf_id,
+		status = ice_mbx_report_malvf(&pf->hw, &vf->mbx_info,
 					      &report_vf);
 		if (status)
 			dev_dbg(dev, "Error reporting malicious VF\n");
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index e3f622cad425..d243a0c59ea4 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -794,6 +794,13 @@ struct ice_mbx_vf_counter {
 	u32 vfcntr_len;
 };
 
+/* Structure used to track a single VF's messages on the mailbox:
+ * 1. malicious: whether this VF has been detected as malicious before
+ */
+struct ice_mbx_vf_info {
+	u8 malicious : 1;
+};
+
 /* Structure to hold data relevant to the captured static snapshot
  * of the PF-VF mailbox.
  */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 116b43588389..69e89e960950 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -496,8 +496,8 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 
 	/* clear all malicious info if the VFs are getting reset */
 	ice_for_each_vf(pf, bkt, vf)
-		ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
-				    ICE_MAX_SRIOV_VFS, vf->vf_id);
+		ice_mbx_clear_malvf(&hw->mbx_snapshot, vf->vf_id,
+				    &vf->mbx_info);
 
 	/* If VFs have been disabled, there is no need to reset */
 	if (test_and_set_bit(ICE_VF_DIS, pf->state)) {
@@ -703,8 +703,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	ice_eswitch_replay_vf_mac_rule(vf);
 
 	/* if the VF has been reset allow it to come up again */
-	ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
-			    ICE_MAX_SRIOV_VFS, vf->vf_id);
+	ice_mbx_clear_malvf(&hw->mbx_snapshot, vf->vf_id, &vf->mbx_info);
 
 out_unlock:
 	if (flags & ICE_VF_RESET_LOCK)
@@ -760,6 +759,9 @@ void ice_initialize_vf_entry(struct ice_vf *vf)
 	ice_vf_ctrl_invalidate_vsi(vf);
 	ice_vf_fdir_init(vf);
 
+	/* Initialize mailbox info for this VF */
+	ice_mbx_init_vf_info(&pf->hw, &vf->mbx_info);
+
 	mutex_init(&vf->cfg_lock);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index ef30f05b5d02..e3cda6fb71ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -74,7 +74,6 @@ struct ice_vfs {
 	u16 num_qps_per;		/* number of queue pairs per VF */
 	u16 num_msix_per;		/* number of MSI-X vectors per VF */
 	unsigned long last_printed_mdd_jiffies;	/* MDD message rate limit */
-	DECLARE_BITMAP(malvfs, ICE_MAX_SRIOV_VFS); /* malicious VF indicator */
 };
 
 /* VF information structure */
@@ -105,6 +104,7 @@ struct ice_vf {
 	DECLARE_BITMAP(rxq_ena, ICE_MAX_RSS_QS_PER_VF);
 	struct ice_vlan port_vlan_info;	/* Port VLAN ID, QoS, and TPID */
 	struct virtchnl_vlan_caps vlan_v2_caps;
+	struct ice_mbx_vf_info mbx_info;
 	u8 pf_set_mac:1;		/* VF MAC address set by VMM admin */
 	u8 trusted:1;
 	u8 spoofchk:1;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
index 9f6acfeb0fc6..2e769bd0bf7e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
@@ -345,35 +345,23 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
 /**
  * ice_mbx_report_malvf - Track and note malicious VF
  * @hw: pointer to the HW struct
- * @all_malvfs: all malicious VFs tracked by PF
- * @bitmap_len: length of bitmap in bits
- * @vf_id: relative virtual function ID of the malicious VF
+ * @vf_info: the mailbox tracking info structure for a VF
  * @report_malvf: boolean to indicate if malicious VF must be reported
  *
- * This function will update a bitmap that keeps track of the malicious
- * VFs attached to the PF. A malicious VF must be reported only once if
- * discovered between VF resets or loading so the function checks
- * the input vf_id against the bitmap to verify if the VF has been
- * detected in any previous mailbox iterations.
+ * This function updates the malicious indicator bit in the VF mailbox
+ * tracking structure. A malicious VF must be reported only once if discovered
+ * between VF resets or loading so the function first checks if the VF has
+ * already been detected in any previous mailbox iterations.
  */
 int
-ice_mbx_report_malvf(struct ice_hw *hw, unsigned long *all_malvfs,
-		     u16 bitmap_len, u16 vf_id, bool *report_malvf)
+ice_mbx_report_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
+		     bool *report_malvf)
 {
-	if (!all_malvfs || !report_malvf)
+	if (!report_malvf)
 		return -EINVAL;
 
-	*report_malvf = false;
-
-	if (bitmap_len < hw->mbx_snapshot.mbx_vf.vfcntr_len)
-		return -EINVAL;
-
-	if (vf_id >= bitmap_len)
-		return -EIO;
-
-	/* If the vf_id is found in the bitmap set bit and boolean to true */
-	if (!test_and_set_bit(vf_id, all_malvfs))
-		*report_malvf = true;
+	*report_malvf = !vf_info->malicious;
+	vf_info->malicious = 1;
 
 	return 0;
 }
@@ -381,33 +369,24 @@ ice_mbx_report_malvf(struct ice_hw *hw, unsigned long *all_malvfs,
 /**
  * ice_mbx_clear_malvf - Clear VF bitmap and counter for VF ID
  * @snap: pointer to the mailbox snapshot structure
- * @all_malvfs: all malicious VFs tracked by PF
- * @bitmap_len: length of bitmap in bits
  * @vf_id: relative virtual function ID of the malicious VF
+ * @vf_info: mailbox tracking structure for this VF
  *
- * In case of a VF reset, this function can be called to clear
- * the bit corresponding to the VF ID in the bitmap tracking all
- * malicious VFs attached to the PF. The function also clears the
- * VF counter array at the index of the VF ID. This is to ensure
- * that the new VF loaded is not considered malicious before going
- * through the overflow detection algorithm.
- */
+* In case of a VF reset, this function shall be called to clear the VF's
+* current mailbox tracking state.
+*/
 void
-ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, unsigned long *all_malvfs,
-		    u16 bitmap_len, u16 vf_id)
+ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, u16 vf_id,
+		    struct ice_mbx_vf_info *vf_info)
 {
-	if (WARN_ON(!snap || !all_malvfs))
-		return;
-
-	if (WARN_ON(bitmap_len < snap->mbx_vf.vfcntr_len))
+	if (WARN_ON(!snap))
 		return;
 
 	/* Ensure VF ID value is not larger than bitmap or VF counter length */
-	if (WARN_ON(vf_id >= bitmap_len || vf_id >= snap->mbx_vf.vfcntr_len))
+	if (WARN_ON(vf_id >= snap->mbx_vf.vfcntr_len))
 		return;
 
-	/* Clear VF ID bit in the bitmap tracking malicious VFs attached to PF */
-	clear_bit(vf_id, all_malvfs);
+	vf_info->malicious = 0;
 
 	/* Clear the VF counter in the mailbox snapshot structure for that VF ID.
 	 * This is to ensure that if a VF is unloaded and a new one brought back
@@ -418,6 +397,18 @@ ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, unsigned long *all_malvfs,
 	snap->mbx_vf.vf_cntr[vf_id] = 0;
 }
 
+/**
+ * ice_mbx_init_vf_info - Initialize a new VF mailbox tracking info
+ * @hw: pointer to the hardware structure
+ * @vf_info: the mailbox tracking info structure for a VF
+ *
+ * Initialize a VF mailbox tracking info structure.
+ */
+void ice_mbx_init_vf_info(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info)
+{
+	vf_info->malicious = 0;
+}
+
 /**
  * ice_mbx_init_snapshot - Initialize mailbox snapshot structure
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
index be593b951642..2613cba61ac7 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
@@ -23,13 +23,14 @@ int
 ice_mbx_vf_state_handler(struct ice_hw *hw, struct ice_mbx_data *mbx_data,
 			 u16 vf_id, bool *is_mal_vf);
 void
-ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, unsigned long *all_malvfs,
-		    u16 bitmap_len, u16 vf_id);
+ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, u16 vf_id,
+		    struct ice_mbx_vf_info *vf_info);
+void ice_mbx_init_vf_info(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info);
 int ice_mbx_init_snapshot(struct ice_hw *hw, u16 vf_count);
 void ice_mbx_deinit_snapshot(struct ice_hw *hw);
 int
-ice_mbx_report_malvf(struct ice_hw *hw, unsigned long *all_malvfs,
-		     u16 bitmap_len, u16 vf_id, bool *report_malvf);
+ice_mbx_report_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
+		     bool *report_malvf);
 #else /* CONFIG_PCI_IOV */
 static inline int
 ice_aq_send_msg_to_vf(struct ice_hw __always_unused *hw,
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
