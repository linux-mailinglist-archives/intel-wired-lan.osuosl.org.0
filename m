Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD3F69F9C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1950641731;
	Wed, 22 Feb 2023 17:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1950641731
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086189;
	bh=4BFjCY9Z9PfacjtFPQ2b/Vv+ofEP/IpGmWq3BalTeDo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l58jPeIZdz7JzN2GaKBierLRJY5NnkYJ8sZnw+vWMedfN0yzusVvPmR03TwK7IiYO
	 xo7utA4ryRiMy0u8mNuf4YliWn79IopdP1MkDqw20CAlnOFjVZ7dSeTpFdvYY6YU/p
	 uMRzMGJRubjl1twuL1CQ8TXf0ayfylDx+YrIdiyUTtVoZCRgS809LBPaVD9A7ir+Gl
	 0LQCuSMbhlUV9QTrsQo86CMAIOH44OU3pPUlQvlVlrv7eVtRw0y1zjGjSWykITJ79q
	 bUc39kQF4wLm/xURIfesXZISxNUpusGIq7zWoMYMZ+sQrCJhqIucZRRSBmSd6eAA3J
	 PD9IMgSHvxkyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fODOa8unV0By; Wed, 22 Feb 2023 17:16:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B04041717;
	Wed, 22 Feb 2023 17:16:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B04041717
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 448431BF97A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C82E041736
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C82E041736
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jL8IuJxaWegV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B92841739
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B92841739
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466650"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466650"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980046"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980046"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:10 -0800
Message-Id: <20230222170920.1629293-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085788; x=1708621788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IMCnE9CtljAYJKJVp3x4dEFMWCnSfqhI0uu7Ad6+a1k=;
 b=UBVrDGjghaiDo8UEiT4AseT64HvcqLGelVc9O5ggamK4yZFJPdgKvYfj
 engTNNk7KO3ezVusaOCabkqISPihU98/a1f9H720D5NYYHGQzXD6ABTNC
 rVHXgKsZOyyytVdlqEsjMKRs7YuA+Jb7m59NcUPkug4oOEC8qPFClkpRS
 K88GnL/5bhs2Uoa/anHoRljf+9SPaZDHXkL0WrcRQvROqHcLgZRwiGhaF
 z4qfWDrsq8ZC3PI/fY9KxTzU6afR9Syjo9oaoNAH5BG+7qUxCj+JE1yXv
 aqF68Kwp77YcWEmakUCGxWu/28mlvITGF0+bScJXFgl3FYodWmmpowulk
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UBVrDGjg
Subject: [Intel-wired-lan] [intel-next PATCH 04/14] ice: move VF overflow
 message count into struct ice_mbx_vf_info
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

The ice driver has some logic in ice_vf_mbx.c used to detect potentially
malicious VF behavior with regards to overflowing the PF mailbox. This
logic currently stores message counts in struct ice_mbx_vf_counter.vf_cntr
as an array. This array is allocated during initialization with
ice_mbx_init_snapshot.

This logic makes sense for SR-IOV where all VFs are allocated at once up
front. However, in the future with Scalable IOV this logic will not work.
VFs can be added and removed dynamically. We could try to keep the vf_cntr
array for the maximum possible number of VFs, but this is a waste of
memory.

Use the recently introduced struct ice_mbx_vf_info structure to store the
message count. Pass a pointer to the mbx_info for a VF instead of using its
VF ID. Replace the array of VF message counts with a linked list that
tracks all currently active mailbox tracking info structures.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  |   9 +-
 drivers/net/ethernet/intel/ice/ice_type.h   |  18 +--
 drivers/net/ethernet/intel/ice/ice_vf_lib.c |   7 +-
 drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 167 +++++++-------------
 drivers/net/ethernet/intel/ice/ice_vf_mbx.h |   8 +-
 5 files changed, 69 insertions(+), 140 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 44b94276df91..8820f269bfdf 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -204,8 +204,7 @@ void ice_free_vfs(struct ice_pf *pf)
 		}
 
 		/* clear malicious info since the VF is getting released */
-		ice_mbx_clear_malvf(&hw->mbx_snapshot, vf->vf_id,
-				    &vf->mbx_info);
+		list_del(&vf->mbx_info.list_entry);
 
 		mutex_unlock(&vf->cfg_lock);
 	}
@@ -1025,9 +1024,7 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 		return -EBUSY;
 	}
 
-	err = ice_mbx_init_snapshot(&pf->hw, num_vfs);
-	if (err)
-		return err;
+	ice_mbx_init_snapshot(&pf->hw);
 
 	err = ice_pci_sriov_ena(pf, num_vfs);
 	if (err) {
@@ -1818,7 +1815,7 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 	mbxdata.async_watermark_val = ICE_MBX_OVERFLOW_WATERMARK;
 
 	/* check to see if we have a malicious VF */
-	status = ice_mbx_vf_state_handler(&pf->hw, &mbxdata, vf_id, &malvf);
+	status = ice_mbx_vf_state_handler(&pf->hw, &mbxdata, &vf->mbx_info, &malvf);
 	if (status)
 		goto out_put_vf;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index d243a0c59ea4..a09556e57803 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -784,20 +784,14 @@ struct ice_mbx_snap_buffer_data {
 	u16 max_num_msgs_mbx;
 };
 
-/* Structure to track messages sent by VFs on mailbox:
- * 1. vf_cntr: a counter array of VFs to track the number of
- * asynchronous messages sent by each VF
- * 2. vfcntr_len: number of entries in VF counter array
- */
-struct ice_mbx_vf_counter {
-	u32 *vf_cntr;
-	u32 vfcntr_len;
-};
-
 /* Structure used to track a single VF's messages on the mailbox:
- * 1. malicious: whether this VF has been detected as malicious before
+ * 1. list_entry: linked list entry node
+ * 2. msg_count: the number of asynchronous messages sent by this VF
+ * 3. malicious: whether this VF has been detected as malicious before
  */
 struct ice_mbx_vf_info {
+	struct list_head list_entry;
+	u32 msg_count;
 	u8 malicious : 1;
 };
 
@@ -806,7 +800,7 @@ struct ice_mbx_vf_info {
  */
 struct ice_mbx_snapshot {
 	struct ice_mbx_snap_buffer_data mbx_buf;
-	struct ice_mbx_vf_counter mbx_vf;
+	struct list_head mbx_vf;
 };
 
 /* Structure to hold data to be used for capturing or updating a
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 69e89e960950..89fd6982df09 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -496,8 +496,7 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 
 	/* clear all malicious info if the VFs are getting reset */
 	ice_for_each_vf(pf, bkt, vf)
-		ice_mbx_clear_malvf(&hw->mbx_snapshot, vf->vf_id,
-				    &vf->mbx_info);
+		ice_mbx_clear_malvf(&vf->mbx_info);
 
 	/* If VFs have been disabled, there is no need to reset */
 	if (test_and_set_bit(ICE_VF_DIS, pf->state)) {
@@ -599,12 +598,10 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 	struct device *dev;
-	struct ice_hw *hw;
 	int err = 0;
 	bool rsd;
 
 	dev = ice_pf_to_dev(pf);
-	hw = &pf->hw;
 
 	if (flags & ICE_VF_RESET_NOTIFY)
 		ice_notify_vf_reset(vf);
@@ -703,7 +700,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	ice_eswitch_replay_vf_mac_rule(vf);
 
 	/* if the VF has been reset allow it to come up again */
-	ice_mbx_clear_malvf(&hw->mbx_snapshot, vf->vf_id, &vf->mbx_info);
+	ice_mbx_clear_malvf(&vf->mbx_info);
 
 out_unlock:
 	if (flags & ICE_VF_RESET_LOCK)
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
index 2e769bd0bf7e..4bfed5fb3a88 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
@@ -93,36 +93,31 @@ u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed)
  *
  * 2. When the caller starts processing its mailbox queue in response to an
  * interrupt, the structure ice_mbx_snapshot is expected to be cleared before
- * the algorithm can be run for the first time for that interrupt. This can be
- * done via ice_mbx_reset_snapshot().
+ * the algorithm can be run for the first time for that interrupt. This
+ * requires calling ice_mbx_reset_snapshot() as well as calling
+ * ice_mbx_reset_vf_info() for each VF tracking structure.
  *
  * 3. For every message read by the caller from the MBX Queue, the caller must
  * call the detection algorithm's entry function ice_mbx_vf_state_handler().
  * Before every call to ice_mbx_vf_state_handler() the struct ice_mbx_data is
  * filled as it is required to be passed to the algorithm.
  *
- * 4. Every time a message is read from the MBX queue, a VFId is received which
- * is passed to the state handler. The boolean output is_malvf of the state
- * handler ice_mbx_vf_state_handler() serves as an indicator to the caller
- * whether this VF is malicious or not.
+ * 4. Every time a message is read from the MBX queue, a tracking structure
+ * for the VF must be passed to the state handler. The boolean output
+ * report_malvf from ice_mbx_vf_state_handler() serves as an indicator to the
+ * caller whether it must report this VF as malicious or not.
  *
  * 5. When a VF is identified to be malicious, the caller can send a message
- * to the system administrator. The caller can invoke ice_mbx_report_malvf()
- * to help determine if a malicious VF is to be reported or not. This function
- * requires the caller to maintain a global bitmap to track all malicious VFs
- * and pass that to ice_mbx_report_malvf() along with the VFID which was identified
- * to be malicious by ice_mbx_vf_state_handler().
+ * to the system administrator.
  *
- * 6. The global bitmap maintained by PF can be cleared completely if PF is in
- * reset or the bit corresponding to a VF can be cleared if that VF is in reset.
- * When a VF is shut down and brought back up, we assume that the new VF
- * brought up is not malicious and hence report it if found malicious.
+ * 6. The PF is responsible for maintaining the struct ice_mbx_vf_info
+ * structure for each VF. The PF should clear the VF tracking structure if the
+ * VF is reset. When a VF is shut down and brought back up, we will then
+ * assume that the new VF is not malicious and may report it again if we
+ * detect it again.
  *
  * 7. The function ice_mbx_reset_snapshot() is called to reset the information
  * in ice_mbx_snapshot for every new mailbox interrupt handled.
- *
- * 8. The memory allocated for variables in ice_mbx_snapshot is de-allocated
- * when driver is unloaded.
  */
 #define ICE_RQ_DATA_MASK(rq_data) ((rq_data) & PF_MBX_ARQH_ARQH_M)
 /* Using the highest value for an unsigned 16-bit value 0xFFFF to indicate that
@@ -132,26 +127,21 @@ u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed)
 
 /**
  * ice_mbx_reset_snapshot - Reset mailbox snapshot structure
- * @snap: pointer to mailbox snapshot structure in the ice_hw struct
- *
- * Reset the mailbox snapshot structure and clear VF counter array.
+ * @snap: pointer to the mailbox snapshot
  */
 static void ice_mbx_reset_snapshot(struct ice_mbx_snapshot *snap)
 {
-	u32 vfcntr_len;
+	struct ice_mbx_vf_info *vf_info;
 
-	if (!snap || !snap->mbx_vf.vf_cntr)
-		return;
-
-	/* Clear VF counters. */
-	vfcntr_len = snap->mbx_vf.vfcntr_len;
-	if (vfcntr_len)
-		memset(snap->mbx_vf.vf_cntr, 0,
-		       (vfcntr_len * sizeof(*snap->mbx_vf.vf_cntr)));
-
-	/* Reset mailbox snapshot for a new capture. */
+	/* Clear mbx_buf in the mailbox snaphot structure and setting the
+	 * mailbox snapshot state to a new capture.
+	 */
 	memset(&snap->mbx_buf, 0, sizeof(snap->mbx_buf));
 	snap->mbx_buf.state = ICE_MAL_VF_DETECT_STATE_NEW_SNAPSHOT;
+
+	/* Reset message counts for all VFs to zero */
+	list_for_each_entry(vf_info, &snap->mbx_vf, list_entry)
+		vf_info->msg_count = 0;
 }
 
 /**
@@ -195,7 +185,7 @@ ice_mbx_traverse(struct ice_hw *hw,
 /**
  * ice_mbx_detect_malvf - Detect malicious VF in snapshot
  * @hw: pointer to the HW struct
- * @vf_id: relative virtual function ID
+ * @vf_info: mailbox tracking structure for a VF
  * @new_state: new algorithm state
  * @is_malvf: boolean output to indicate if VF is malicious
  *
@@ -204,19 +194,14 @@ ice_mbx_traverse(struct ice_hw *hw,
  * the permissible number of messages to send.
  */
 static int
-ice_mbx_detect_malvf(struct ice_hw *hw, u16 vf_id,
+ice_mbx_detect_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
 		     enum ice_mbx_snapshot_state *new_state,
 		     bool *is_malvf)
 {
-	struct ice_mbx_snapshot *snap = &hw->mbx_snapshot;
+	/* increment the message count for this VF */
+	vf_info->msg_count++;
 
-	if (vf_id >= snap->mbx_vf.vfcntr_len)
-		return -EIO;
-
-	/* increment the message count in the VF array */
-	snap->mbx_vf.vf_cntr[vf_id]++;
-
-	if (snap->mbx_vf.vf_cntr[vf_id] >= ICE_ASYNC_VF_MSG_THRESHOLD)
+	if (vf_info->msg_count >= ICE_ASYNC_VF_MSG_THRESHOLD)
 		*is_malvf = true;
 
 	/* continue to iterate through the mailbox snapshot */
@@ -229,7 +214,7 @@ ice_mbx_detect_malvf(struct ice_hw *hw, u16 vf_id,
  * ice_mbx_vf_state_handler - Handle states of the overflow algorithm
  * @hw: pointer to the HW struct
  * @mbx_data: pointer to structure containing mailbox data
- * @vf_id: relative virtual function (VF) ID
+ * @vf_info: mailbox tracking structure for the VF in question
  * @is_malvf: boolean output to indicate if VF is malicious
  *
  * The function serves as an entry point for the malicious VF
@@ -250,7 +235,8 @@ ice_mbx_detect_malvf(struct ice_hw *hw, u16 vf_id,
  */
 int
 ice_mbx_vf_state_handler(struct ice_hw *hw,
-			 struct ice_mbx_data *mbx_data, u16 vf_id,
+			 struct ice_mbx_data *mbx_data,
+			 struct ice_mbx_vf_info *vf_info,
 			 bool *is_malvf)
 {
 	struct ice_mbx_snapshot *snap = &hw->mbx_snapshot;
@@ -315,7 +301,8 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
 		if (snap_buf->num_pending_arq >=
 		    mbx_data->async_watermark_val) {
 			new_state = ICE_MAL_VF_DETECT_STATE_DETECT;
-			status = ice_mbx_detect_malvf(hw, vf_id, &new_state, is_malvf);
+			status = ice_mbx_detect_malvf(hw, vf_info, &new_state,
+						      is_malvf);
 		} else {
 			new_state = ICE_MAL_VF_DETECT_STATE_TRAVERSE;
 			ice_mbx_traverse(hw, &new_state);
@@ -329,7 +316,8 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
 
 	case ICE_MAL_VF_DETECT_STATE_DETECT:
 		new_state = ICE_MAL_VF_DETECT_STATE_DETECT;
-		status = ice_mbx_detect_malvf(hw, vf_id, &new_state, is_malvf);
+		status = ice_mbx_detect_malvf(hw, vf_info, &new_state,
+					      is_malvf);
 		break;
 
 	default:
@@ -367,34 +355,16 @@ ice_mbx_report_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
 }
 
 /**
- * ice_mbx_clear_malvf - Clear VF bitmap and counter for VF ID
- * @snap: pointer to the mailbox snapshot structure
- * @vf_id: relative virtual function ID of the malicious VF
- * @vf_info: mailbox tracking structure for this VF
+ * ice_mbx_clear_malvf - Clear VF mailbox info
+ * @vf_info: the mailbox tracking structure for a VF
  *
-* In case of a VF reset, this function shall be called to clear the VF's
-* current mailbox tracking state.
-*/
-void
-ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, u16 vf_id,
-		    struct ice_mbx_vf_info *vf_info)
+ * In case of a VF reset, this function shall be called to clear the VF's
+ * current mailbox tracking state.
+ */
+void ice_mbx_clear_malvf(struct ice_mbx_vf_info *vf_info)
 {
-	if (WARN_ON(!snap))
-		return;
-
-	/* Ensure VF ID value is not larger than bitmap or VF counter length */
-	if (WARN_ON(vf_id >= snap->mbx_vf.vfcntr_len))
-		return;
-
 	vf_info->malicious = 0;
-
-	/* Clear the VF counter in the mailbox snapshot structure for that VF ID.
-	 * This is to ensure that if a VF is unloaded and a new one brought back
-	 * up with the same VF ID for a snapshot currently in traversal or detect
-	 * state the counter for that VF ID does not increment on top of existing
-	 * values in the mailbox overflow detection algorithm.
-	 */
-	snap->mbx_vf.vf_cntr[vf_id] = 0;
+	vf_info->msg_count = 0;
 }
 
 /**
@@ -402,55 +372,32 @@ ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, u16 vf_id,
  * @hw: pointer to the hardware structure
  * @vf_info: the mailbox tracking info structure for a VF
  *
- * Initialize a VF mailbox tracking info structure.
+ * Initialize a VF mailbox tracking info structure and insert it into the
+ * snapshot list.
+ *
+ * If you remove the VF, you must also delete the associated VF info structure
+ * from the linked list.
  */
 void ice_mbx_init_vf_info(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info)
 {
-	vf_info->malicious = 0;
+	struct ice_mbx_snapshot *snap = &hw->mbx_snapshot;
+
+	ice_mbx_clear_malvf(vf_info);
+	list_add(&vf_info->list_entry, &snap->mbx_vf);
 }
 
 /**
- * ice_mbx_init_snapshot - Initialize mailbox snapshot structure
+ * ice_mbx_init_snapshot - Initialize mailbox snapshot data
  * @hw: pointer to the hardware structure
- * @vf_count: number of VFs allocated on a PF
  *
- * Clear the mailbox snapshot structure and allocate memory
- * for the VF counter array based on the number of VFs allocated
- * on that PF.
- *
- * Assumption: This function will assume ice_get_caps() has already been
- * called to ensure that the vf_count can be compared against the number
- * of VFs supported as defined in the functional capabilities of the device.
+ * Clear the mailbox snapshot structure and initialize the VF mailbox list.
  */
-int ice_mbx_init_snapshot(struct ice_hw *hw, u16 vf_count)
+void ice_mbx_init_snapshot(struct ice_hw *hw)
 {
 	struct ice_mbx_snapshot *snap = &hw->mbx_snapshot;
 
-	/* Ensure that the number of VFs allocated is non-zero and
-	 * is not greater than the number of supported VFs defined in
-	 * the functional capabilities of the PF.
-	 */
-	if (!vf_count || vf_count > hw->func_caps.num_allocd_vfs)
-		return -EINVAL;
-
-	snap->mbx_vf.vf_cntr = devm_kcalloc(ice_hw_to_dev(hw), vf_count,
-					    sizeof(*snap->mbx_vf.vf_cntr),
-					    GFP_KERNEL);
-	if (!snap->mbx_vf.vf_cntr)
-		return -ENOMEM;
-
-	/* Setting the VF counter length to the number of allocated
-	 * VFs for given PF's functional capabilities.
-	 */
-	snap->mbx_vf.vfcntr_len = vf_count;
-
-	/* Clear mbx_buf in the mailbox snaphot structure and setting the
-	 * mailbox snapshot state to a new capture.
-	 */
-	memset(&snap->mbx_buf, 0, sizeof(snap->mbx_buf));
-	snap->mbx_buf.state = ICE_MAL_VF_DETECT_STATE_NEW_SNAPSHOT;
-
-	return 0;
+	INIT_LIST_HEAD(&snap->mbx_vf);
+	ice_mbx_reset_snapshot(snap);
 }
 
 /**
@@ -463,10 +410,6 @@ void ice_mbx_deinit_snapshot(struct ice_hw *hw)
 {
 	struct ice_mbx_snapshot *snap = &hw->mbx_snapshot;
 
-	/* Free VF counter array and reset VF counter length */
-	devm_kfree(ice_hw_to_dev(hw), snap->mbx_vf.vf_cntr);
-	snap->mbx_vf.vfcntr_len = 0;
-
 	/* Clear mbx_buf in the mailbox snaphot structure */
 	memset(&snap->mbx_buf, 0, sizeof(snap->mbx_buf));
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
index 2613cba61ac7..a6d42f467dc5 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
@@ -21,12 +21,10 @@ ice_aq_send_msg_to_vf(struct ice_hw *hw, u16 vfid, u32 v_opcode, u32 v_retval,
 u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed);
 int
 ice_mbx_vf_state_handler(struct ice_hw *hw, struct ice_mbx_data *mbx_data,
-			 u16 vf_id, bool *is_mal_vf);
-void
-ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, u16 vf_id,
-		    struct ice_mbx_vf_info *vf_info);
+			 struct ice_mbx_vf_info *vf_info, bool *is_mal_vf);
+void ice_mbx_clear_malvf(struct ice_mbx_vf_info *vf_info);
 void ice_mbx_init_vf_info(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info);
-int ice_mbx_init_snapshot(struct ice_hw *hw, u16 vf_count);
+void ice_mbx_init_snapshot(struct ice_hw *hw);
 void ice_mbx_deinit_snapshot(struct ice_hw *hw);
 int
 ice_mbx_report_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
