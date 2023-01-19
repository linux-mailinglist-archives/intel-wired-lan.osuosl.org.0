Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD281672DFB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:18:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B95B40C14;
	Thu, 19 Jan 2023 01:18:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B95B40C14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091086;
	bh=U8+kdwT/Q950QYaAdiDP5tvilIuIr6XSDAHil8HKiGw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r1rWuIcLZhVMmFgerwtblGQfBOkt/Czg+Pyhq0AEi+gWqc4wp3IEAXga0elCVswoG
	 eY4AZwLiOwGB1Pe6YpK8F3ameH7S5hUwcG2PoEFGZdoXSCj5Hm7aPOgYXR72ZJPn3M
	 EWcOzxfsEuUZ9MUQF20SaJyZIpkNk+fPNvhdCGPmXMHvvTzgJKUtIR0ZAksaabqQKm
	 azRl8kZ7NpjqSyuSlb6grOIiQqm+Gh1MwKDqR63DC7S2mOKz8buePG388OskybHtqM
	 I/tu2ClUa7ZIKdJIUp5q2pU8SOVFy9pBoMsHHJUHRlGYEtxFI6V+O2roXDA5gN+NGs
	 zHg5FbHbdNRHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oCFpgoRoU1Tq; Thu, 19 Jan 2023 01:18:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3198F40C42;
	Thu, 19 Jan 2023 01:18:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3198F40C42
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6B2B1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F53241921
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F53241921
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 52ifRbtaNdLt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F0D04192B
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F0D04192B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840731"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840731"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881889"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881889"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:51 -0800
Message-Id: <20230119011653.311675-12-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091025; x=1705627025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q4KTo0e7pUKxywTbconhlpox5Dwj3C8+TRjFMwncTdE=;
 b=eAfjJudevSyYDv7+v9BoAAMTyFXMBxWJXr6dwNElPnVeWHKIGbPqvSL5
 yiHrg7CXLzqdP1PvrFKQq2cTj3e4lA82uI3zhZ3ywH6pQvlmx2woexAe8
 XuU0RwdrioecNPxK1bOrQpaFKjaKD0TK4PRTNkJ4HUpV4PyTkW7z4fn6x
 Fx+AiwipEt0jfPS/+1AjWKAwdPoTbEEIRXAExwTvu/GYexP+lBqBxUbzK
 6oIWHgZgl9qYR2QmeNE/Ew5OL/eQdaze5TFuu0Zv+dp+8sraZn4BZWpMZ
 2O/iCCh802B37irMnLnAF0pLNoA5MdKu7nlV1Y0sOPDgKGBjrYcSB4//l
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eAfjJude
Subject: [Intel-wired-lan] [PATCH net-next v2 11/13] ice: introduce
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
Changes since v1:
* Add no-op version of  ice_set_vf_state_dis for when CONFIG_PCI_IOV is
  disabled.
* Make ice_set_state_qs_dis static since there are no callers outsice
  ice_vf_lib.c

 drivers/net/ethernet/intel/ice/ice_main.c   |  2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 16 ++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 12 +++++++++++-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  5 +++--
 4 files changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3b98721fd9d8..5d890b6aa9d2 100644
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
index 46088c05d485..4d8930b83b35 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -654,6 +654,21 @@ static void ice_sriov_free_vf(struct ice_vf *vf)
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
@@ -787,6 +802,7 @@ static void ice_sriov_post_vsi_rebuild(struct ice_vf *vf)
 static const struct ice_vf_ops ice_sriov_vf_ops = {
 	.reset_type = ICE_VF_RESET,
 	.free = ice_sriov_free_vf,
+	.clear_reset_state = ice_sriov_clear_reset_state,
 	.clear_mbx_register = ice_sriov_clear_mbx_register,
 	.trigger_reset_register = ice_sriov_trigger_reset_register,
 	.poll_reset_status = ice_sriov_poll_reset_status,
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 1a5d64454f99..2ea801ebb2ac 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -717,7 +717,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
  * ice_set_vf_state_qs_dis - Set VF queues state to disabled
  * @vf: pointer to the VF structure
  */
-void ice_set_vf_state_qs_dis(struct ice_vf *vf)
+static void ice_set_vf_state_qs_dis(struct ice_vf *vf)
 {
 	/* Clear Rx/Tx enabled queues flag */
 	bitmap_zero(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
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
index e3d94f3ca40d..5bb75edb6cef 100644
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
@@ -213,7 +214,7 @@ u16 ice_get_num_vfs(struct ice_pf *pf);
 struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf);
 bool ice_is_vf_disabled(struct ice_vf *vf);
 int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
-void ice_set_vf_state_qs_dis(struct ice_vf *vf);
+void ice_set_vf_state_dis(struct ice_vf *vf);
 bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf);
 void
 ice_vf_get_promisc_masks(struct ice_vf *vf, struct ice_vsi *vsi,
@@ -259,7 +260,7 @@ static inline int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
 	return -EOPNOTSUPP;
 }
 
-static inline void ice_set_vf_state_qs_dis(struct ice_vf *vf)
+static inline void ice_set_vf_state_dis(struct ice_vf *vf)
 {
 }
 
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
