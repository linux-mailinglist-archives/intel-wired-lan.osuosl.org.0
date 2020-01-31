Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDE614F458
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2020 23:12:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B34A20460;
	Fri, 31 Jan 2020 22:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ezwEqf2rkekk; Fri, 31 Jan 2020 22:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4ABA7228CA;
	Fri, 31 Jan 2020 22:12:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B56F21BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B253F878DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1obMsGteOIO1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2020 22:12:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BC12E878A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 14:12:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,387,1574150400"; d="scan'208";a="310126637"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2020 14:12:02 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 31 Jan 2020 05:38:59 -0800
Message-Id: <20200131133905.42518-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200131133905.42518-1-anthony.l.nguyen@intel.com>
References: <20200131133905.42518-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S37 v2 09/15] ice: update Unit Load Status
 bitmask to check after reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bruce Allan <bruce.w.allan@intel.com>

After a reset the Unit Load Status bits in the GLNVM_ULD register to check
for completion should be 0x7FF before continuing.  Update the mask to check
(minus the three reserved bits that are always set).

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c    | 18 +++++++++++++-----
 .../net/ethernet/intel/ice/ice_hw_autogen.h    |  6 ++++++
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 151bec82bc0c..8931c6a3e3f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -818,7 +818,7 @@ void ice_deinit_hw(struct ice_hw *hw)
  */
 enum ice_status ice_check_reset(struct ice_hw *hw)
 {
-	u32 cnt, reg = 0, grst_delay;
+	u32 cnt, reg = 0, grst_delay, uld_mask;
 
 	/* Poll for Device Active state in case a recent CORER, GLOBR,
 	 * or EMPR has occurred. The grst delay value is in 100ms units.
@@ -840,13 +840,21 @@ enum ice_status ice_check_reset(struct ice_hw *hw)
 		return ICE_ERR_RESET_FAILED;
 	}
 
-#define ICE_RESET_DONE_MASK	(GLNVM_ULD_CORER_DONE_M | \
-				 GLNVM_ULD_GLOBR_DONE_M)
+#define ICE_RESET_DONE_MASK	(GLNVM_ULD_PCIER_DONE_M |\
+				 GLNVM_ULD_PCIER_DONE_1_M |\
+				 GLNVM_ULD_CORER_DONE_M |\
+				 GLNVM_ULD_GLOBR_DONE_M |\
+				 GLNVM_ULD_POR_DONE_M |\
+				 GLNVM_ULD_POR_DONE_1_M |\
+				 GLNVM_ULD_PCIER_DONE_2_M)
+
+	uld_mask = ICE_RESET_DONE_MASK | (hw->func_caps.common_cap.iwarp ?
+					  GLNVM_ULD_PE_DONE_M : 0);
 
 	/* Device is Active; check Global Reset processes are done */
 	for (cnt = 0; cnt < ICE_PF_RESET_WAIT_COUNT; cnt++) {
-		reg = rd32(hw, GLNVM_ULD) & ICE_RESET_DONE_MASK;
-		if (reg == ICE_RESET_DONE_MASK) {
+		reg = rd32(hw, GLNVM_ULD) & uld_mask;
+		if (reg == uld_mask) {
 			ice_debug(hw, ICE_DBG_INIT,
 				  "Global reset processes done. %d\n", cnt);
 			break;
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 30f50b06173e..306b8943cfc0 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -268,8 +268,14 @@
 #define GLNVM_GENS_SR_SIZE_S			5
 #define GLNVM_GENS_SR_SIZE_M			ICE_M(0x7, 5)
 #define GLNVM_ULD				0x000B6008
+#define GLNVM_ULD_PCIER_DONE_M			BIT(0)
+#define GLNVM_ULD_PCIER_DONE_1_M		BIT(1)
 #define GLNVM_ULD_CORER_DONE_M			BIT(3)
 #define GLNVM_ULD_GLOBR_DONE_M			BIT(4)
+#define GLNVM_ULD_POR_DONE_M			BIT(5)
+#define GLNVM_ULD_POR_DONE_1_M			BIT(8)
+#define GLNVM_ULD_PCIER_DONE_2_M		BIT(9)
+#define GLNVM_ULD_PE_DONE_M			BIT(10)
 #define GLPCI_CNF2				0x000BE004
 #define GLPCI_CNF2_CACHELINE_SIZE_M		BIT(1)
 #define PF_FUNC_RID				0x0009E880
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
