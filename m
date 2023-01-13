Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E383466A614
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:38:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7462D415B7;
	Fri, 13 Jan 2023 22:38:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7462D415B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649518;
	bh=KdGlcY0aYp6PNmoj6t3QpDrMTu87iHt9ho0I9EJTY+A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kg5kdBhBhpQnbUHWzgmN3Czvt2jLp0a8m3Sj4ZECHvXqjEZTRbx/Vx6tGZzRknrY9
	 D6mzgXSrFH3Uyrgr6oOxNmmg7J5sT/HooXMxm8Z8igEa4GDmJqj4ELN9MwK2Dl7FDb
	 2T0rDMTJ8mDGAQrZd1C5fYA56fGTabmfpIGjrK+E705/T3KdZnQVfVpmMkFR9I2fb+
	 6WLOZv9vxVPf+0htt12AGmhmj3Tq4ojmiuu09YTeaey8eKPImqQt44usmU7l5Fg1ke
	 tLGm/8aTdDLRI9bCtnXaHgc2IkYSOHFPeFN5aWYHf+NE3kfzSAVxLFwlh6TCSKvWuo
	 AxmUCuiw9+oCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wNvHvbBeim-M; Fri, 13 Jan 2023 22:38:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65C01400C8;
	Fri, 13 Jan 2023 22:38:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65C01400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CFD21BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE18D41B61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE18D41B61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hYMpAJj0f8vP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D26CF41B51
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D26CF41B51
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354072"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354072"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859791"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859791"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:46 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:33 -0800
Message-Id: <20230113223735.2514364-12-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649466; x=1705185466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YRqekB2YjvrGSnwD93/59EQuyfFpxA4QXKEYGKcwKUk=;
 b=EnSX+abyoTEG335xuXo1/zoP7Skjfa0hz0g8ukdqnfWasfEXqwt/CclM
 jBNpwP9g9jXwD+1W2ckgcZHocSCgJodiPX/jYp4ZPwCMWeqqtgt1rT3xi
 eD4DcffOgUIxordc5JE41gAGUzdVn290jpzyvtsgLM7Arz9fke6KyLzS5
 3mmt4AL5emCnVSNDWhnwsqizT9BXDeeGtQOdtYuy6ix6u3DkI3A7wIeYC
 Q3gX0ZamXmyIwftQTu/XzO1L9LDSWo0x1Di5HOhBpv8Dz26NbfMtF9PQf
 T+vdzpBaJTvm8pxVqV6T5bdKtj2nAJSyCRMcDU+AuI5LbTAdjxillCD4O
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EnSX+aby
Subject: [Intel-wired-lan] [PATCH net-next 11/13] ice: introduce
 clear_reset_state operation
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When hardware is reset, the VF relies on the VFGEN_RSTAT register to detect
when the VF is finished resetting. This is a tri-state register where 0
indicates a reset is in progress, 1 indicates the hardware is done
resetting, and 2 indicates that the software is done resetting.

Currently the PF driver relies on the device hardware resetting VFGEN_RSTAT
when a global reset occurs. This works ok, but it does mean that the VF
might not immediately notice a reset when the driver first detects that the
global reset is occurring.

This is also problematic for Scalable IOV, because there is no read/write
equivalent VFGEN_RSTAT register for the Scalable VSI type. Instead, the
Scalable IOV VFs will need to emulate this register.

To support this, introduce a new VF operation, clear_reset_state, which is
called when the PF driver first detects a global reset. The Single Root IOV
implementation can just write to VFGEN_RSTAT to ensure its cleared
immediately, without waiting for the actual hardware reset to begin. The
Scalable IOV implementation will use this as part of its tracking of the
reset status to allow properly reporting the emulated VFGEN_RSTAT to the VF
driver.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c   |  2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 16 ++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 10 ++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 ++
 4 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5ddd9fe7514f..2865f8983b6c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -537,7 +537,7 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	/* Disable VFs until reset is completed */
 	mutex_lock(&pf->vfs.table_lock);
 	ice_for_each_vf(pf, bkt, vf)
-		ice_set_vf_state_qs_dis(vf);
+		ice_set_vf_state_dis(vf);
 	mutex_unlock(&pf->vfs.table_lock);
 
 	if (ice_is_eswitch_mode_switchdev(pf)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index fb9fbff56332..58eb35504c27 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -649,6 +649,21 @@ static void ice_sriov_free_vf(struct ice_vf *vf)
 	kfree_rcu(vf, rcu);
 }
 
+/**
+ * ice_sriov_clear_reset_state - clears VF Reset status register
+ * @vf: the vf to configure
+ */
+static void ice_sriov_clear_reset_state(struct ice_vf *vf)
+{
+	struct ice_hw *hw = &vf->pf->hw;
+
+	/* Clear the reset status register so that VF immediately sees that
+	 * the device is resetting, even if hardware hasn't yet gotten around
+	 * to clearing VFGEN_RSTAT for us.
+	 */
+	wr32(hw, VFGEN_RSTAT(vf->vf_id), VIRTCHNL_VFR_INPROGRESS);
+}
+
 /**
  * ice_sriov_clear_mbx_register - clears SRIOV VF's mailbox registers
  * @vf: the vf to configure
@@ -782,6 +797,7 @@ static void ice_sriov_post_vsi_rebuild(struct ice_vf *vf)
 static const struct ice_vf_ops ice_sriov_vf_ops = {
 	.reset_type = ICE_VF_RESET,
 	.free = ice_sriov_free_vf,
+	.clear_reset_state = ice_sriov_clear_reset_state,
 	.clear_mbx_register = ice_sriov_clear_mbx_register,
 	.trigger_reset_register = ice_sriov_trigger_reset_register,
 	.poll_reset_status = ice_sriov_poll_reset_status,
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 7b48a116cd34..f9ac76d4826a 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -725,6 +725,16 @@ void ice_set_vf_state_qs_dis(struct ice_vf *vf)
 	clear_bit(ICE_VF_STATE_QS_ENA, vf->vf_states);
 }
 
+/**
+ * ice_set_vf_state_dis - Set VF state to disabled
+ * @vf: pointer to the VF structure
+ */
+void ice_set_vf_state_dis(struct ice_vf *vf)
+{
+	ice_set_vf_state_qs_dis(vf);
+	vf->vf_ops->clear_reset_state(vf);
+}
+
 /* Private functions only accessed from other virtualization files */
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index e3d94f3ca40d..2085d1a6cd7c 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -56,6 +56,7 @@ struct ice_mdd_vf_events {
 struct ice_vf_ops {
 	enum ice_disq_rst_src reset_type;
 	void (*free)(struct ice_vf *vf);
+	void (*clear_reset_state)(struct ice_vf *vf);
 	void (*clear_mbx_register)(struct ice_vf *vf);
 	void (*trigger_reset_register)(struct ice_vf *vf, bool is_vflr);
 	bool (*poll_reset_status)(struct ice_vf *vf);
@@ -214,6 +215,7 @@ struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf);
 bool ice_is_vf_disabled(struct ice_vf *vf);
 int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
 void ice_set_vf_state_qs_dis(struct ice_vf *vf);
+void ice_set_vf_state_dis(struct ice_vf *vf);
 bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf);
 void
 ice_vf_get_promisc_masks(struct ice_vf *vf, struct ice_vsi *vsi,
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
