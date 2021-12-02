Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 967894662C3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Dec 2021 12:51:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 390FA8338B;
	Thu,  2 Dec 2021 11:51:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v6oUECi9YrhM; Thu,  2 Dec 2021 11:51:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C2E5833AF;
	Thu,  2 Dec 2021 11:51:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E23651BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:51:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DDD98833AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:51:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lctjfUnLjpzi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Dec 2021 11:51:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 253D78338B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:51:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236632205"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="236632205"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 03:51:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="460431638"
Received: from amlin-19-169.igk.intel.com ([10.102.19.169])
 by orsmga006.jf.intel.com with ESMTP; 02 Dec 2021 03:51:12 -0800
From: "Sornek, Karen" <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Dec 2021 12:52:01 +0100
Message-Id: <20211202115201.1304422-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix for failed to init
 adminq while VF reset
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

From: Karen Sornek <karen.sornek@intel.com>

Fix for failed to init adminq: -53 while VF is resetting via MAC
address changing procedure.
Added sync module to avoid reading deadbeef value in reinit adminq
during software reset.
Without this patch it is possible to trigger VF reset procedure
during reinit adminq. This resulted in an incorrect reading of
value from the AQP registers and generated the -53 error.

Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
v2: Added "Fixes" tag
---
 .../net/ethernet/intel/i40e/i40e_register.h   |  3 ++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 44 ++++++++++++++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
 3 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index 8d0588a27a05..1908eed4fa5e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -413,6 +413,9 @@
 #define I40E_VFINT_DYN_CTLN(_INTVF) (0x00024800 + ((_INTVF) * 4)) /* _i=0...511 */ /* Reset: VFR */
 #define I40E_VFINT_DYN_CTLN_CLEARPBA_SHIFT 1
 #define I40E_VFINT_DYN_CTLN_CLEARPBA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN_CLEARPBA_SHIFT)
+#define I40E_VFINT_ICR0_ADMINQ_SHIFT 30
+#define I40E_VFINT_ICR0_ADMINQ_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ADMINQ_SHIFT)
+#define I40E_VFINT_ICR0_ENA(_VF) (0x0002C000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
 #define I40E_VPINT_AEQCTL(_VF) (0x0002B800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
 #define I40E_VPINT_AEQCTL_MSIX_INDX_SHIFT 0
 #define I40E_VPINT_AEQCTL_ITR_INDX_SHIFT 11
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 3efc6926d308..d4c6914d2347 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1379,6 +1379,32 @@ static i40e_status i40e_config_vf_promiscuous_mode(struct i40e_vf *vf,
 	return aq_ret;
 }
 
+/**
+ * i40e_sync_vfr_reset
+ * @hw: pointer to hw struct
+ * @vf_id: VF identifier
+ *
+ * Before trigger hardware reset, we need to know if no other process has
+ * reserved the hardware for any reset operations. This check is done by
+ * examining the status of the RSTAT1 register used to signal the reset.
+ **/
+static int i40e_sync_vfr_reset(struct i40e_hw *hw, int vf_id)
+{
+	u32 reg;
+	int i;
+
+	for (i = 0; i < I40E_VFR_WAIT_COUNT; i++) {
+		reg = rd32(hw, I40E_VFINT_ICR0_ENA(vf_id)) &
+			   I40E_VFINT_ICR0_ADMINQ_MASK;
+		if (reg)
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
@@ -1393,9 +1419,11 @@ static void i40e_trigger_vf_reset(struct i40e_vf *vf, bool flr)
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
@@ -1409,7 +1437,19 @@ static void i40e_trigger_vf_reset(struct i40e_vf *vf, bool flr)
 	 * just need to clean up, so don't hit the VFRTRIG register.
 	 */
 	if (!flr) {
-		/* reset VF using VPGEN_VFRTRIG reg */
+		/* Sync VFR reset before trigger next one */
+		radq = rd32(hw, I40E_VFINT_ICR0_ENA(vf->vf_id)) &
+			    I40E_VFINT_ICR0_ADMINQ_MASK;
+		if (vf_active && !radq)
+			/* waiting for finish reset by virtual driver */
+			if (i40e_sync_vfr_reset(hw, vf->vf_id))
+				dev_info(&pf->pdev->dev,
+					 "Reset VF %d never finished\n",
+				vf->vf_id);
+
+		/* Reset VF using VPGEN_VFRTRIG reg. It is also setting
+		 * in progress state in rstat1 register.
+		 */
 		reg = rd32(hw, I40E_VPGEN_VFRTRIG(vf->vf_id));
 		reg |= I40E_VPGEN_VFRTRIG_VFSWR_MASK;
 		wr32(hw, I40E_VPGEN_VFRTRIG(vf->vf_id), reg);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 6aa35c8c9091..8135bd6a1c0a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -19,6 +19,7 @@
 #define I40E_MAX_VF_PROMISC_FLAGS	3
 
 #define I40E_VF_STATE_WAIT_COUNT	20
+#define I40E_VFR_WAIT_COUNT		100
 #define I40E_VF_RESET_TIME_MIN		30000000	/* time in nsec */
 
 /* Various queue ctrls */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
