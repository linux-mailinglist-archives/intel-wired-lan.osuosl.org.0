Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2B01E4FDE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2020 23:12:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C82AC86EDE;
	Wed, 27 May 2020 21:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ktGwNtV5S7s; Wed, 27 May 2020 21:12:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 740F686ED0;
	Wed, 27 May 2020 21:12:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 053A51BF40A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2020 21:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EFB5B88A41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2020 21:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1QjHsXEFj2r7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2020 21:12:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E059688A43
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2020 21:12:06 +0000 (UTC)
IronPort-SDR: M2M7KTsNcpKK3U+20V1kshYqVTEn5A4WMw3ZQ/KW2PCsEyPwAv23jLsYXL+oFoTeIXHxJj/5DJ
 PGh0KfDlQnuw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 14:12:06 -0700
IronPort-SDR: RmSDxme5mrmZzP2wIyduuYCJs+a5K8t/YthLy1j5QlInMpZBCKU+cCsYZct1+uprsXFuso+V4w
 gs+fCKAe/BcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="442678515"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by orsmga005.jf.intel.com with ESMTP; 27 May 2020 14:12:05 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 May 2020 14:12:04 -0700
Message-Id: <20200527211204.234642-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v2] i40e: detect and log info about
 pre-recovery mode
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Detect and log information about pre-recovery mode when firmware
transitions to a recovery mode.
When a firmware transitions to a recovery mode it stores a number
of unexpected EMP resets in one of its registers. The number of EMP
resets ranging from 0x21 to 0x2A indicates that FW transitions
to recovery mode. Use these values to emit log entry about transition
process. Previously the pre-recovery mode may not have been detected
and there was no log entry when NIC was in pre-recovery mode.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
v2: Fixed conflicts when trying to apply to next-queue tree

 drivers/net/ethernet/intel/i40e/i40e_main.c   | 72 +++++++++++++------
 .../net/ethernet/intel/i40e/i40e_register.h   |  2 +
 2 files changed, 52 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 5c21b7bafd8a..fe53cda1a187 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14562,28 +14562,17 @@ void i40e_set_fec_in_flags(u8 fec_cfg, u32 *flags)
  **/
 static bool i40e_check_recovery_mode(struct i40e_pf *pf)
 {
-	u32 val = rd32(&pf->hw, I40E_GL_FWSTS) & I40E_GL_FWSTS_FWS1B_MASK;
-	bool is_recovery_mode = false;
-
-	if (pf->hw.mac.type == I40E_MAC_XL710)
-		is_recovery_mode =
-		val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK ||
-		val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK ||
-		val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_TRANSITION_MASK ||
-		val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_NVM_MASK;
-	if (pf->hw.mac.type == I40E_MAC_X722)
-		is_recovery_mode =
-		val == I40E_X722_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK ||
-		val == I40E_X722_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK;
-	if (is_recovery_mode) {
-		dev_notice(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
-		dev_notice(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
+	u32 val = rd32(&pf->hw, I40E_GL_FWSTS);
+
+	if (val & I40E_GL_FWSTS_FWS1B_MASK) {
+		dev_crit(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
+		dev_crit(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
 		set_bit(__I40E_RECOVERY_MODE, pf->state);
 
 		return true;
 	}
-	if (test_and_clear_bit(__I40E_RECOVERY_MODE, pf->state))
-		dev_info(&pf->pdev->dev, "Reinitializing in normal mode with full functionality.\n");
+	if (test_bit(__I40E_RECOVERY_MODE, pf->state))
+		dev_info(&pf->pdev->dev, "Please do Power-On Reset to initialize adapter in normal mode with full functionality.\n");
 
 	return false;
 }
@@ -14631,6 +14620,47 @@ static i40e_status i40e_pf_loop_reset(struct i40e_pf *pf)
 	return ret;
 }
 
+/**
+ * i40e_check_fw_empr - check if FW issued unexpected EMP Reset
+ * @pf: board private structure
+ *
+ * Check FW registers to determine if FW issued unexpected EMP Reset.
+ * Every time when unexpected EMP Reset occurs the FW increments
+ * a counter of unexpected EMP Resets. When the counter reaches 10
+ * the FW should enter the Recovery mode
+ *
+ * Returns true if FW issued unexpected EMP Reset
+ **/
+static inline bool i40e_check_fw_empr(struct i40e_pf *pf)
+{
+	const u32 fw_sts = rd32(&pf->hw, I40E_GL_FWSTS) &
+			   I40E_GL_FWSTS_FWS1B_MASK;
+	return (fw_sts > I40E_GL_FWSTS_FWS1B_EMPR_0) &&
+	       (fw_sts <= I40E_GL_FWSTS_FWS1B_EMPR_10);
+}
+
+/**
+ * i40e_handle_resets - handle EMP resets and PF resets
+ * @pf: board private structure
+ *
+ * Handle both EMP resets and PF resets and conclude whether there are
+ * any issues regarding these resets. If there are any issues then
+ * generate log entry.
+ *
+ * Return 0 if NIC is healthy or negative value when there are issues
+ * with resets
+ **/
+static inline i40e_status i40e_handle_resets(struct i40e_pf *pf)
+{
+	const i40e_status pfr = i40e_pf_loop_reset(pf);
+	const bool is_empr = i40e_check_fw_empr(pf);
+
+	if (is_empr || pfr != I40E_SUCCESS)
+		dev_crit(&pf->pdev->dev, "Entering recovery mode due to repeated FW resets. This may take several minutes. Refer to the Intel(R) Ethernet Adapters and Devices User Guide.\n");
+
+	return is_empr ? I40E_ERR_RESET_FAILED : pfr;
+}
+
 /**
  * i40e_init_recovery_mode - initialize subsystems needed in recovery mode
  * @pf: board private structure
@@ -14867,11 +14897,9 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_pf_reset;
 	}
 
-	err = i40e_pf_loop_reset(pf);
-	if (err) {
-		dev_info(&pdev->dev, "Initial pf_reset failed: %d\n", err);
+	err = i40e_handle_resets(pf);
+	if (err)
 		goto err_pf_reset;
-	}
 
 	i40e_check_recovery_mode(pf);
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index d9c8ff6a47d3..8b9a12393a50 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -43,6 +43,8 @@
 #define I40E_GL_FWSTS 0x00083048 /* Reset: POR */
 #define I40E_GL_FWSTS_FWS1B_SHIFT 16
 #define I40E_GL_FWSTS_FWS1B_MASK I40E_MASK(0xFF, I40E_GL_FWSTS_FWS1B_SHIFT)
+#define I40E_GL_FWSTS_FWS1B_EMPR_0 I40E_MASK(0x20, I40E_GL_FWSTS_FWS1B_SHIFT)
+#define I40E_GL_FWSTS_FWS1B_EMPR_10 I40E_MASK(0x2A, I40E_GL_FWSTS_FWS1B_SHIFT)
 #define I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK I40E_MASK(0x30, I40E_GL_FWSTS_FWS1B_SHIFT)
 #define I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK I40E_MASK(0x31, I40E_GL_FWSTS_FWS1B_SHIFT)
 #define I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_TRANSITION_MASK I40E_MASK(0x32, I40E_GL_FWSTS_FWS1B_SHIFT)
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
