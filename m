Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6FF69F9CD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36F0041758;
	Wed, 22 Feb 2023 17:16:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36F0041758
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086214;
	bh=Rs1YR2RSwz9P07Vdnx0m09Opk8JeIWKTYiRi+QdfXmo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Y+XrYv6TcPLxMOqCLcbXRb9WB5hOLZd3KSGCaWBk99dWb70UX+zDLEdW9cup6z6v
	 SP3C8pwYjAFWWHnJp3CoXKv2pIKrd44ZX69A1kTbuZDFAf2e8TrKt74LP2H8faTUDY
	 9lGtxxOJJy6Z/pldxLJ22EZKyrYcEZNgEna6qgE2kOcoOe1JtjbVXu4xwTvMvEvF0Q
	 MPSrGFshnCwyGQN/MdeFBtdwxbyRxM66AtwM8HQyvnKGSyeJMPjaIiscEiBUyOjSG4
	 qIr9x7sq6Hz6WXgRzDwY8nRrJeEWbNz2i67wDUsM1Lj8msLlCFLA4kxWALEgvBjG6V
	 nO+RiJSaSftdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ZkakSKQE_Jx; Wed, 22 Feb 2023 17:16:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D65F3417C1;
	Wed, 22 Feb 2023 17:16:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D65F3417C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10E5B1BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9104F41731
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9104F41731
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FxEr4McWpQbG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACE134172E
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ACE134172E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466664"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466664"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980079"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980079"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:20 -0800
Message-Id: <20230222170920.1629293-15-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085789; x=1708621789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=24NjmYV99Ep6dB4a+CfKynynbD1Q69NhMkneHF9RUhs=;
 b=AL4BBXv+l49wZGdPs9IrEbX6p78LOK6537+R5fxAGg7pfrngkJ3CB3uw
 BmYiBxmVPsaaR0WC/ap3FfgDfPG89Pu37ROqGGfsyq18DSr0rDifBrg4a
 j8GidWq/WZEzYjGcXQHrVs5YboWj6YtDqq2Rp8ADgm9/zCc5gl27JSUag
 h+EY7FwPTpI8Rv8SdgIaKKVGpxCrH2cx9ggwIIkKI8cYueKDf4lpu+noP
 G0KS+ls5wBb1du6J3G3nIreJbxtZYk0xV2IkuosrGAYVxcbiqNyKuLAwG
 LxFqlR0hbt9TYUJNhb+nOsY1i154AcDiD5n0d6AKuxJ2y2dNvPWxz1WsN
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AL4BBXv+
Subject: [Intel-wired-lan] [intel-next PATCH 14/14] ice: call
 ice_is_malicious_vf() from ice_vc_process_vf_msg()
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

The main loop in __ice_clean_ctrlq first checks if a VF might be malicious
before calling ice_vc_process_vf_msg(). This results in duplicate code in
both functions to obtain a reference to the VF, and exports the
ice_is_malicious_vf() from ice_virtchnl.c unnecessarily.

Refactor ice_is_malicious_vf() to be a static function that takes a pointer
to the VF. Call this in ice_vc_process_vf_msg() just after we obtain a
reference to the VF by calling ice_get_vf_by_id.

Pass the mailbox data from the __ice_clean_ctrlq function into
ice_vc_process_vf_msg() instead of calling ice_is_malicious_vf().

This reduces the number of exported functions and avoids the need to obtain
the VF reference twice for every mailbox message.

Note that the state check for ICE_VF_STATE_DIS is kept in
ice_is_malicious_vf() and we call this before checking that state in
ice_vc_process_vf_msg. This is intentional, as we stop responding to VF
messages from a VF once we detect that it may be overflowing the mailbox.
This ensures that we continue to silently ignore the message as before
without responding via ice_vc_send_msg_to_vf().

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c     |  3 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 36 ++++++++++---------
 drivers/net/ethernet/intel/ice/ice_virtchnl.h | 17 +++------
 3 files changed, 24 insertions(+), 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a7e7a186009e..20b3f3e6eda1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1517,8 +1517,7 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 			data.max_num_msgs_mbx = hw->mailboxq.num_rq_entries;
 			data.async_watermark_val = ICE_MBX_OVERFLOW_WATERMARK;
 
-			if (!ice_is_malicious_vf(pf, &event, &data))
-				ice_vc_process_vf_msg(pf, &event);
+			ice_vc_process_vf_msg(pf, &event, &data);
 			break;
 		case ice_aqc_opc_fw_logging:
 			ice_output_fw_log(hw, &event.desc, event.msg_buf);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index e0c573d9d1b9..97243c616d5d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3834,27 +3834,26 @@ void ice_virtchnl_set_repr_ops(struct ice_vf *vf)
 }
 
 /**
- * ice_is_malicious_vf - helper function to detect a malicious VF
- * @pf: ptr to struct ice_pf
- * @event: pointer to the AQ event
+ * ice_is_malicious_vf - check if this vf might be overflowing mailbox
+ * @vf: the VF to check
  * @mbxdata: data about the state of the mailbox
+ *
+ * Detect if a given VF might be malicious and attempting to overflow the PF
+ * mailbox. If so, log a warning message and ignore this event.
  */
-bool
-ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
-		    struct ice_mbx_data *mbxdata)
+static bool
+ice_is_malicious_vf(struct ice_vf *vf, struct ice_mbx_data *mbxdata)
 {
-	s16 vf_id = le16_to_cpu(event->desc.retval);
-	struct device *dev = ice_pf_to_dev(pf);
 	bool report_malvf = false;
-	struct ice_vf *vf;
+	struct device *dev;
+	struct ice_pf *pf;
 	int status;
 
-	vf = ice_get_vf_by_id(pf, vf_id);
-	if (!vf)
-		return false;
+	pf = vf->pf;
+	dev = ice_pf_to_dev(pf);
 
 	if (test_bit(ICE_VF_STATE_DIS, vf->vf_states))
-		goto out_put_vf;
+		return vf->mbx_info.malicious;
 
 	/* check to see if we have a newly malicious VF */
 	status = ice_mbx_vf_state_handler(&pf->hw, mbxdata, &vf->mbx_info,
@@ -3872,9 +3871,6 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 			 pf_vsi ? pf_vsi->netdev->dev_addr : zero_addr);
 	}
 
-out_put_vf:
-	ice_put_vf(vf);
-
 	return vf->mbx_info.malicious;
 }
 
@@ -3882,11 +3878,13 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
  * ice_vc_process_vf_msg - Process request from VF
  * @pf: pointer to the PF structure
  * @event: pointer to the AQ event
+ * @mbxdata: information used to detect VF attempting mailbox overflow
  *
  * called from the common asq/arq handler to
  * process request from VF
  */
-void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
+void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
+			   struct ice_mbx_data *mbxdata)
 {
 	u32 v_opcode = le32_to_cpu(event->desc.cookie_high);
 	s16 vf_id = le16_to_cpu(event->desc.retval);
@@ -3908,6 +3906,10 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 
 	mutex_lock(&vf->cfg_lock);
 
+	/* Check if the VF is trying to overflow the mailbox */
+	if (ice_is_malicious_vf(vf, mbxdata))
+		goto finish;
+
 	/* Check if VF is disabled. */
 	if (test_bit(ICE_VF_STATE_DIS, vf->vf_states)) {
 		err = -EPERM;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index 648a383fad85..cd747718de73 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -63,10 +63,8 @@ int
 ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen);
 bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id);
-bool
-ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
-		    struct ice_mbx_data *mbxdata);
-void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event);
+void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
+			   struct ice_mbx_data *mbxdata);
 #else /* CONFIG_PCI_IOV */
 static inline void ice_virtchnl_set_dflt_ops(struct ice_vf *vf) { }
 static inline void ice_virtchnl_set_repr_ops(struct ice_vf *vf) { }
@@ -86,16 +84,9 @@ static inline bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
 	return false;
 }
 
-static inline bool
-ice_is_malicious_vf(struct ice_pf __always_unused *pf,
-		    struct ice_rq_event_info __always_unused *event,
-		    struct ice_mbx_data *mbxdata)
-{
-	return false;
-}
-
 static inline void
-ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
+ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
+		      struct ice_mbx_data *mbxdata)
 {
 }
 #endif /* !CONFIG_PCI_IOV */
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
