Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 067883A117D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 12:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 199CE404D0;
	Wed,  9 Jun 2021 10:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bzv-pNpZuC1G; Wed,  9 Jun 2021 10:51:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC252404AC;
	Wed,  9 Jun 2021 10:51:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E80C31BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 10:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E316B834D3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 10:51:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wROwBXnI6qNQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 10:51:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9932C834CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 10:51:06 +0000 (UTC)
IronPort-SDR: CGhzYySe85EfFohN8FBq69UJEjK89k049mlsCEOf6SPfg5RlDE/2DZDwxYyJrYbBb0BS8k8ocy
 UcA39nmWUuMQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="226416509"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="226416509"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 03:51:03 -0700
IronPort-SDR: Mcx6xwiSJcYc9Debfr49pWUfEN2PVdtg1Ws6ygAqN4aWM8rzKItKGApBxVqxK7ZitUZqOs9erH
 e+q3txFzwFzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="402405150"
Received: from amlin-019-051.igk.intel.com ([10.102.19.51])
 by orsmga003.jf.intel.com with ESMTP; 09 Jun 2021 03:51:02 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Jun 2021 12:51:01 +0200
Message-Id: <20210609105101.88005-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix for failed to init
 adminq while VF reset and for sync VF driver reset
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
Cc: Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix for failed to init adminq: -53 while VF is resetting via MAC
address changing procedure.
Added sync module to avoid reading deadbeef value in reinit adminq
during software reset.
Fix for sync VF driver reset before trigger next one by PF.
Change VF in reset state detection from check VFR state
register to examination of enable admin queue interrupt.
ADMINQ is enabled by VF after completely reinit admin queue.

Fixes: b40c82e6ae85 ("i40e: Fix inconsistent use of PF/VF vs pf/vf")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_register.h   | 10 +++++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 45 ++++++++++++++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
 3 files changed, 54 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index 8d0588a27..b5c741e76 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -371,6 +371,16 @@
 #define I40E_PFINT_ICR0_ENA_VFLR_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_ENA_VFLR_SHIFT)
 #define I40E_PFINT_ICR0_ENA_ADMINQ_SHIFT 30
 #define I40E_PFINT_ICR0_ENA_ADMINQ_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_ENA_ADMINQ_SHIFT)
+#define I40E_VFINT_ICR0_ADMINQ_SHIFT 30
+#define I40E_VFINT_ICR0_ADMINQ_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ADMINQ_SHIFT)
+#define I40E_VFINT_ICR0_ENA(_VF) (0x0002C000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
+#define I40E_VFINT_ICR0_ENA_MAX_INDEX 127
+#define I40E_VFINT_ICR0_ENA_LINK_STAT_CHANGE_SHIFT 25
+#define I40E_VFINT_ICR0_ENA_LINK_STAT_CHANGE_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ENA_LINK_STAT_CHANGE_SHIFT)
+#define I40E_VFINT_ICR0_ENA_ADMINQ_SHIFT 30
+#define I40E_VFINT_ICR0_ENA_ADMINQ_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ENA_ADMINQ_SHIFT)
+#define I40E_VFINT_ICR0_ENA_RSVD_SHIFT 31
+#define I40E_VFINT_ICR0_ENA_RSVD_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ENA_RSVD_SHIFT)
 #define I40E_PFINT_ITR0(_i) (0x00038000 + ((_i) * 128)) /* _i=0...2 */ /* Reset: PFR */
 #define I40E_PFINT_ITRN(_i, _INTPF) (0x00030000 + ((_i) * 2048 + (_INTPF) * 4)) /* _i=0...2, _INTPF=0...511 */ /* Reset: PFR */
 #define I40E_PFINT_LNKLST0 0x00038500 /* Reset: PFR */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index edfdce5f6..e6d6ebd82 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1376,6 +1376,32 @@ static i40e_status i40e_config_vf_promiscuous_mode(struct i40e_vf *vf,
 	return aq_ret;
 }
 
+/**
+ * i40e_sync_vfr_reset
+ * @hw: pointer to hw struct
+ * @vf_id: VF identifier
+ *
+ * Before trigger hardware reset, we need to know if no other process has
+ * reserved the hardware for any reset operations. This check is done by
+ * examining the status of the ADMINQ bit in VF interrupt register.
+ **/
+static int i40e_sync_vfr_reset(struct i40e_hw *hw, int vf_id)
+{
+	u32 reg;
+	int i;
+
+	for (i = 0; i < I40E_VFR_WAIT_COUNT; i++) {
+		reg = rd32(hw, I40E_VFINT_ICR0_ENA(vf_id)) &
+			   I40E_VFINT_ICR0_ADMINQ_MASK;
+		if (reg != VIRTCHNL_VFR_INPROGRESS)
+			return 0;
+
+		usleep_range(100, 200);
+	}
+
+	return -EAGAIN;
+}
+
 /**
  * i40e_trigger_vf_reset
  * @vf: pointer to the VF structure
@@ -1390,9 +1416,11 @@ static void i40e_trigger_vf_reset(struct i40e_vf *vf, bool flr)
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_hw *hw = &pf->hw;
 	u32 reg, reg_idx, bit_idx;
+	bool vf_active;
+	u32 radq;
 
 	/* warn the VF */
-	clear_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states);
+	vf_active = test_and_clear_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states);
 
 	/* Disable VF's configuration API during reset. The flag is re-enabled
 	 * in i40e_alloc_vf_res(), when it's safe again to access VF's VSI.
@@ -1406,7 +1434,18 @@ static void i40e_trigger_vf_reset(struct i40e_vf *vf, bool flr)
 	 * just need to clean up, so don't hit the VFRTRIG register.
 	 */
 	if (!flr) {
-		/* reset VF using VPGEN_VFRTRIG reg */
+		/* Sync VFR reset before trigger next one */
+		radq = rd32(hw, I40E_VFINT_ICR0_ENA(vf->vf_id)) &
+			     I40E_VFINT_ICR0_ADMINQ_MASK;
+		if (vf_active && !radq)
+			/* waiting for finish reset by virtual driver */
+			if (i40e_sync_vfr_reset(hw, vf->vf_id))
+				dev_info(&pf->pdev->dev,
+					 "Reset VF %d never finished\n",
+					 vf->vf_id);
+
+		/* Reset VF using VPGEN_VFRTRIG reg. It is also setting
+		 * in progress state in rstat1 register */
 		reg = rd32(hw, I40E_VPGEN_VFRTRIG(vf->vf_id));
 		reg |= I40E_VPGEN_VFRTRIG_VFSWR_MASK;
 		wr32(hw, I40E_VPGEN_VFRTRIG(vf->vf_id), reg);
@@ -1473,8 +1512,10 @@ static void i40e_cleanup_reset_vf(struct i40e_vf *vf)
 	/* Tell the VF driver the reset is done. This needs to be done only
 	 * after VF has been fully initialized, because the VF driver may
 	 * request resources immediately after setting this flag.
+	 * Let's give it some time to finish it.
 	 */
 	wr32(hw, I40E_VFGEN_RSTAT1(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
+	usleep_range(20000, 40000);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 49575a640..03c42fd0f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -19,6 +19,7 @@
 #define I40E_MAX_VF_PROMISC_FLAGS	3
 
 #define I40E_VF_STATE_WAIT_COUNT	20
+#define I40E_VFR_WAIT_COUNT		100
 
 /* Various queue ctrls */
 enum i40e_queue_ctrl {
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
