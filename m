Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D5C69F9BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 529D8417C0;
	Wed, 22 Feb 2023 17:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 529D8417C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086164;
	bh=OcLF7ysse/yRbjkHOpAjX9X62wdvVUeFTb0QeAlMtmY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q6QgU5vwY1MGCpS9LPp2h/Sl5s2ve8O/P/cmDHJU8KG2RxAg/SSmFuUoUORVfPL7q
	 5jF/xtfwRLoO0awlytJQ0IMEo8Cu4aiCOCVboXodzZYZT8IRIbhcnt/bzc3OePcMHt
	 2v7SvHJJbNC9uNNcE2SC2Vd9mRHEq2bBJmSqBRB1tW9K1b5NjPn/nlUstlGYjBPW8G
	 pDJIP8fjs5nKAKcAclgV3T6CloK8jKkfU7Zl9VJ651pOOGk0MWhaNRSmuFGBYO8M5C
	 p5JgQq0xpYQd6EWZrnF4ZFNo2mC1Cp82WTd9CQctneL+gX06b0xt98VxzBE+NI/jHB
	 bN+koVatb2AQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xjG9zuzYVFk7; Wed, 22 Feb 2023 17:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03B9841743;
	Wed, 22 Feb 2023 17:16:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03B9841743
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 840901BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C9946115A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C9946115A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ze4ySKco6-UZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61A9961159
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61A9961159
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466653"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466653"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980053"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980053"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:12 -0800
Message-Id: <20230222170920.1629293-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085788; x=1708621788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HvMypNPZ0l30fAjQ6vJtJPbPnQlXN11dYdNXkT3kSgA=;
 b=GJXJUOnhkZwuMgyTVgS6BYL+ZdOtVcesPkPWggXLfV2s43itzpIEbefg
 X82vgblI99Q8Y8qNw1qdaxVp2t4uGYw413cR2eR5vdex7/52BrkahNfEg
 luWRdUobMy2e9Ud+GYD9HosBgGZJL9v7xAPAmNMTZFeP5si1JaI/GEUVc
 dg2Sh0CNZ+BySQTgU1R1seS52W/lHDwomg4hGexwGE1QpPazfSdb2UvOM
 FYz2Aj7TuEgyRqNbDNDWreVcPHlPJeGRhrdBhOpq+ONIJ8B7rnY0gcDFx
 zZ4prt6km5tF1WHA4wZOCNwiw0VIe8Z+jFt3z0D2DLoDweqZoTX4XHbsE
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GJXJUOnh
Subject: [Intel-wired-lan] [intel-next PATCH 06/14] ice: merge
 ice_mbx_report_malvf with ice_mbx_vf_state_handler
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

The ice_mbx_report_malvf function is used to update the
ice_mbx_vf_info.malicious member after we detect a malicious VF. This is
done by calling ice_mbx_report_malvf after ice_mbx_vf_state_handler sets
its "is_malvf" return parameter true.

Instead of requiring two steps, directly update the malicious bit in the
state handler, and remove the need for separately calling
ice_mbx_report_malvf.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 34 +++++---------
 drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 51 ++++++---------------
 drivers/net/ethernet/intel/ice/ice_vf_mbx.h |  5 +-
 3 files changed, 28 insertions(+), 62 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index b65025b51526..71ce3998dd75 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1794,7 +1794,7 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 	s16 vf_id = le16_to_cpu(event->desc.retval);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_mbx_data mbxdata;
-	bool malvf = false;
+	bool report_malvf = false;
 	struct ice_vf *vf;
 	int status;
 
@@ -1811,33 +1811,23 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 #define ICE_MBX_OVERFLOW_WATERMARK 64
 	mbxdata.async_watermark_val = ICE_MBX_OVERFLOW_WATERMARK;
 
-	/* check to see if we have a malicious VF */
-	status = ice_mbx_vf_state_handler(&pf->hw, &mbxdata, &vf->mbx_info, &malvf);
+	/* check to see if we have a newly malicious VF */
+	status = ice_mbx_vf_state_handler(&pf->hw, &mbxdata, &vf->mbx_info,
+					  &report_malvf);
 	if (status)
 		goto out_put_vf;
 
-	if (malvf) {
-		bool report_vf = false;
+	if (report_malvf) {
+		struct ice_vsi *pf_vsi = ice_get_main_vsi(pf);
 
-		/* if the VF is malicious and we haven't let the user
-		 * know about it, then let them know now
-		 */
-		status = ice_mbx_report_malvf(&pf->hw, &vf->mbx_info,
-					      &report_vf);
-		if (status)
-			dev_dbg(dev, "Error reporting malicious VF\n");
-
-		if (report_vf) {
-			struct ice_vsi *pf_vsi = ice_get_main_vsi(pf);
-
-			if (pf_vsi)
-				dev_warn(dev, "VF MAC %pM on PF MAC %pM is generating asynchronous messages and may be overflowing the PF message queue. Please see the Adapter User Guide for more information\n",
-					 &vf->dev_lan_addr[0],
-					 pf_vsi->netdev->dev_addr);
-		}
+		if (pf_vsi)
+			dev_warn(dev, "VF MAC %pM on PF MAC %pM is generating asynchronous messages and may be overflowing the PF message queue. Please see the Adapter User Guide for more information\n",
+					&vf->dev_lan_addr[0],
+					pf_vsi->netdev->dev_addr);
 	}
 
 out_put_vf:
 	ice_put_vf(vf);
-	return malvf;
+
+	return vf->mbx_info.malicious;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
index 1f332ab43b00..15667555589f 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
@@ -215,7 +215,7 @@ ice_mbx_detect_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
  * @hw: pointer to the HW struct
  * @mbx_data: pointer to structure containing mailbox data
  * @vf_info: mailbox tracking structure for the VF in question
- * @is_malvf: boolean output to indicate if VF is malicious
+ * @report_malvf: boolean output to indicate whether VF should be reported
  *
  * The function serves as an entry point for the malicious VF
  * detection algorithm by handling the different states and state
@@ -234,25 +234,24 @@ ice_mbx_detect_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
  * the static snapshot and look for a malicious VF.
  */
 int
-ice_mbx_vf_state_handler(struct ice_hw *hw,
-			 struct ice_mbx_data *mbx_data,
-			 struct ice_mbx_vf_info *vf_info,
-			 bool *is_malvf)
+ice_mbx_vf_state_handler(struct ice_hw *hw, struct ice_mbx_data *mbx_data,
+			 struct ice_mbx_vf_info *vf_info, bool *report_malvf)
 {
 	struct ice_mbx_snapshot *snap = &hw->mbx_snapshot;
 	struct ice_mbx_snap_buffer_data *snap_buf;
 	struct ice_ctl_q_info *cq = &hw->mailboxq;
 	enum ice_mbx_snapshot_state new_state;
 	int status = 0;
+	bool is_malvf = false;
 
-	if (!is_malvf || !mbx_data)
+	if (!report_malvf || !mbx_data || !vf_info)
 		return -EINVAL;
 
+	*report_malvf = false;
+
 	/* When entering the mailbox state machine assume that the VF
 	 * is not malicious until detected.
 	 */
-	*is_malvf = false;
-
 	 /* Checking if max messages allowed to be processed while servicing current
 	  * interrupt is not less than the defined AVF message threshold.
 	  */
@@ -301,8 +300,7 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
 		if (snap_buf->num_pending_arq >=
 		    mbx_data->async_watermark_val) {
 			new_state = ICE_MAL_VF_DETECT_STATE_DETECT;
-			status = ice_mbx_detect_malvf(hw, vf_info, &new_state,
-						      is_malvf);
+			status = ice_mbx_detect_malvf(hw, vf_info, &new_state, &is_malvf);
 		} else {
 			new_state = ICE_MAL_VF_DETECT_STATE_TRAVERSE;
 			ice_mbx_traverse(hw, &new_state);
@@ -316,8 +314,7 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
 
 	case ICE_MAL_VF_DETECT_STATE_DETECT:
 		new_state = ICE_MAL_VF_DETECT_STATE_DETECT;
-		status = ice_mbx_detect_malvf(hw, vf_info, &new_state,
-					      is_malvf);
+		status = ice_mbx_detect_malvf(hw, vf_info, &new_state, &is_malvf);
 		break;
 
 	default:
@@ -327,33 +324,15 @@ ice_mbx_vf_state_handler(struct ice_hw *hw,
 
 	snap_buf->state = new_state;
 
+	/* Only report VFs as malicious the first time we detect it */
+	if (is_malvf && !vf_info->malicious) {
+		vf_info->malicious = 1;
+		*report_malvf = true;
+	}
+
 	return status;
 }
 
-/**
- * ice_mbx_report_malvf - Track and note malicious VF
- * @hw: pointer to the HW struct
- * @vf_info: the mailbox tracking info structure for a VF
- * @report_malvf: boolean to indicate if malicious VF must be reported
- *
- * This function updates the malicious indicator bit in the VF mailbox
- * tracking structure. A malicious VF must be reported only once if discovered
- * between VF resets or loading so the function first checks if the VF has
- * already been detected in any previous mailbox iterations.
- */
-int
-ice_mbx_report_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
-		     bool *report_malvf)
-{
-	if (!report_malvf)
-		return -EINVAL;
-
-	*report_malvf = !vf_info->malicious;
-	vf_info->malicious = 1;
-
-	return 0;
-}
-
 /**
  * ice_mbx_clear_malvf - Clear VF mailbox info
  * @vf_info: the mailbox tracking structure for a VF
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
index e4bdd93ccef1..41250519bc56 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
@@ -21,13 +21,10 @@ ice_aq_send_msg_to_vf(struct ice_hw *hw, u16 vfid, u32 v_opcode, u32 v_retval,
 u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed);
 int
 ice_mbx_vf_state_handler(struct ice_hw *hw, struct ice_mbx_data *mbx_data,
-			 struct ice_mbx_vf_info *vf_info, bool *is_mal_vf);
+			 struct ice_mbx_vf_info *vf_info, bool *report_malvf);
 void ice_mbx_clear_malvf(struct ice_mbx_vf_info *vf_info);
 void ice_mbx_init_vf_info(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info);
 void ice_mbx_init_snapshot(struct ice_hw *hw);
-int
-ice_mbx_report_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
-		     bool *report_malvf);
 #else /* CONFIG_PCI_IOV */
 static inline int
 ice_aq_send_msg_to_vf(struct ice_hw __always_unused *hw,
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
