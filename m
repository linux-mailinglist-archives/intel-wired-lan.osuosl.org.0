Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D322D0F9C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 12:42:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A2B186F99;
	Mon,  7 Dec 2020 11:42:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i6jMxjhS05Pf; Mon,  7 Dec 2020 11:42:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07EEB86DFD;
	Mon,  7 Dec 2020 11:42:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 57E7D1BF40D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 11:42:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 52D7A877A8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 11:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GC1u2f-rRGBy for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 11:42:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4E4F9877A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 11:42:38 +0000 (UTC)
IronPort-SDR: S7oBe2Fjs4MobXeJyQRJfVkCGRWiQG8MBcjnmqEzz3VueBYotsnawqSNzwHSPlPzvcutJKFZl7
 qCH9lGR/ob9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="153499223"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="153499223"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 03:42:37 -0800
IronPort-SDR: 9aeeZIfMK0NgnxRZsHQLC/D69W7XAJzaoFR5WMqOekZ4dxFziwb6faRtrFKA5md39vc4h4cb4M
 sVnF5sNjlt2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="332068811"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2020 03:42:36 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Dec 2020 11:42:23 +0000
Message-Id: <20201207114223.29030-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix for failed to init
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix for failed to init adminq: -53 while VF is resetting via MAC
address changing procedure.
Added sync module to avoid reading deadbeef value in reinit adminq
during software reset.
Without this patch it is possible to trigger VF reset procedure
during reinit adminq. This resulted in an incorrect reading of
value from the AQP registers and generated the -53 error.

Fixes: 9dc2e417383815"(i40e: split some code in i40e_reset_vf into helpers")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Reviewed-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
Reviewed-by: Slawomir Laba <slawomirx.laba@intel.com>
Reviewed-by: Karen Sornek <karen.sornek@intel.com>
Reviewed-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 46 ++++++++++++++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  2 +
 2 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 21ee564..afccbbc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1297,6 +1297,32 @@ static i40e_status i40e_config_vf_promiscuous_mode(struct i40e_vf *vf,
 	return aq_ret;
 }
 
+/**
+* i40e_sync_vfr_reset
+* @hw: pointer to hw struct
+* @vf_id: VF identifier
+*
+* Before trigger hardware reset, we need to know if no other process has
+* reserved the hardware for any reset operations. This check is done by
+* examining the status of the ADMINQ bit in VF interrupt register.
+**/
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
+		usleep_range(10, 200);
+	}
+
+	return -EAGAIN;
+}
+
 /**
  * i40e_trigger_vf_reset
  * @vf: pointer to the VF structure
@@ -1311,9 +1337,11 @@ static void i40e_trigger_vf_reset(struct i40e_vf *vf, bool flr)
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
@@ -1327,7 +1355,19 @@ static void i40e_trigger_vf_reset(struct i40e_vf *vf, bool flr)
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
+					 vf->vf_id);
+
+		/* Reset VF using VPGEN_VFRTRIG reg. It is also setting
+		 * in progress state in rstat1 register.
+		 */
 		reg = rd32(hw, I40E_VPGEN_VFRTRIG(vf->vf_id));
 		reg |= I40E_VPGEN_VFRTRIG_VFSWR_MASK;
 		wr32(hw, I40E_VPGEN_VFRTRIG(vf->vf_id), reg);
@@ -1457,6 +1497,7 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
 	i40e_cleanup_reset_vf(vf);
 
 	i40e_flush(hw);
+	usleep_range(20000, 40000);
 	clear_bit(__I40E_VF_DISABLE, pf->state);
 
 	return true;
@@ -1561,6 +1602,7 @@ bool i40e_reset_all_vfs(struct i40e_pf *pf, bool flr)
 		i40e_cleanup_reset_vf(&pf->vf[v]);
 
 	i40e_flush(hw);
+	usleep_range(20000, 40000);
 	clear_bit(__I40E_VF_DISABLE, pf->state);
 
 	return true;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 5491215..fb4f5db 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -18,6 +18,8 @@
 
 #define I40E_MAX_VF_PROMISC_FLAGS	3
 
+#define I40E_VFR_WAIT_COUNT		100
+
 /* Various queue ctrls */
 enum i40e_queue_ctrl {
 	I40E_QUEUE_CTRL_UNKNOWN = 0,
-- 
2.17.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
