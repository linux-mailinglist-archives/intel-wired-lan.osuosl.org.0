Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB8F169378
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Feb 2020 03:23:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E25D185FA5;
	Sun, 23 Feb 2020 02:23:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CwuMVkUZIxhY; Sun, 23 Feb 2020 02:23:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C9B1860E6;
	Sun, 23 Feb 2020 02:23:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A27531BF28B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2020 02:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D4A422773
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2020 02:23:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z70m7JJzEqZE for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Feb 2020 02:23:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D6EE72276C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2020 02:23:25 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C99072071E;
 Sun, 23 Feb 2020 02:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582424605;
 bh=eXXEwCxnzdfxbjn5nkEQ8AGAGP1DgqEPMJ10TE5Ql3M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sLB72CR1KmgULm9w1HXhwVnyO952DTXsrH4Z+L59lKRGqZevqScq/493fEjwsVghE
 bV34dPQ1i7/quDgoHQEIuH8xfiL040TrfvJJih/SFLA34g6rDxNuqV2qWDbTG9cNno
 YbIrkN6Lu/K7zkerEP35bvPF2nR0PDlYq6cSBXI4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sat, 22 Feb 2020 21:22:26 -0500
Message-Id: <20200223022235.1404-41-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200223022235.1404-1-sashal@kernel.org>
References: <20200223022235.1404-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 41/50] ice: update Unit Load
 Status bitmask to check after reset
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bruce Allan <bruce.w.allan@intel.com>

[ Upstream commit cf8fc2a0863f9ff27ebd2efcdb1f7d378b9fb8a6 ]

After a reset the Unit Load Status bits in the GLNVM_ULD register to check
for completion should be 0x7FF before continuing.  Update the mask to check
(minus the three reserved bits that are always set).

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_common.c     | 17 ++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h |  6 ++++++
 2 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 3a6b3950eb0e2..171f0b6254073 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -934,7 +934,7 @@ void ice_deinit_hw(struct ice_hw *hw)
  */
 enum ice_status ice_check_reset(struct ice_hw *hw)
 {
-	u32 cnt, reg = 0, grst_delay;
+	u32 cnt, reg = 0, grst_delay, uld_mask;
 
 	/* Poll for Device Active state in case a recent CORER, GLOBR,
 	 * or EMPR has occurred. The grst delay value is in 100ms units.
@@ -956,13 +956,20 @@ enum ice_status ice_check_reset(struct ice_hw *hw)
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
+	uld_mask = ICE_RESET_DONE_MASK;
 
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
index 152fbd556e9b4..9138b19de87e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -273,8 +273,14 @@
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
