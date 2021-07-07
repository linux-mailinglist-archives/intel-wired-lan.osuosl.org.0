Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD373BE26D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jul 2021 07:14:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 729EA8350A;
	Wed,  7 Jul 2021 05:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tY4IAKLc7NeR; Wed,  7 Jul 2021 05:14:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AD9083252;
	Wed,  7 Jul 2021 05:14:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B59FB1BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 05:14:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ABF6E401D3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 05:14:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RbsmjyF7xliB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jul 2021 05:14:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 424C240121
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 05:14:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="294881563"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="294881563"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 22:14:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="423196305"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jul 2021 22:14:43 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	michael.edri@intel.com
Date: Wed,  7 Jul 2021 08:14:40 +0300
Message-Id: <20210707051440.1795979-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove _I_PHY_ID checking
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

i225 devices have only one PHY vendor. There is no point checking
_I_PHY_ID during the link establishment and auto-negotiation process.
This patch comes to clean up these pointless checkings.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c | 10 +---------
 drivers/net/ethernet/intel/igc/igc_main.c |  3 +--
 drivers/net/ethernet/intel/igc/igc_phy.c  |  6 ++----
 3 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index d0700d48ecf9..93feed4f7f1c 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -187,15 +187,7 @@ static s32 igc_init_phy_params_base(struct igc_hw *hw)
 
 	igc_check_for_copper_link(hw);
 
-	/* Verify phy id and set remaining function pointers */
-	switch (phy->id) {
-	case I225_I_PHY_ID:
-		phy->type	= igc_phy_i225;
-		break;
-	default:
-		ret_val = -IGC_ERR_PHY;
-		goto out;
-	}
+	phy->type	= igc_phy_i225;
 
 out:
 	return ret_val;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 04493885e861..c8abd7fb70e5 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5234,8 +5234,7 @@ bool igc_has_link(struct igc_adapter *adapter)
 		break;
 	}
 
-	if (hw->mac.type == igc_i225 &&
-	    hw->phy.id == I225_I_PHY_ID) {
+	if (hw->mac.type == igc_i225) {
 		if (!netif_carrier_ok(adapter->netdev)) {
 			adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;
 		} else if (!(adapter->flags & IGC_FLAG_NEED_LINK_UPDATE)) {
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 83aeb5e7076f..5cad31c3c7b0 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -249,8 +249,7 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
 			return ret_val;
 	}
 
-	if ((phy->autoneg_mask & ADVERTISE_2500_FULL) &&
-	    hw->phy.id == I225_I_PHY_ID) {
+	if (phy->autoneg_mask & ADVERTISE_2500_FULL) {
 		/* Read the MULTI GBT AN Control Register - reg 7.32 */
 		ret_val = phy->ops.read_reg(hw, (STANDARD_AN_REG_MASK <<
 					    MMD_DEVADDR_SHIFT) |
@@ -390,8 +389,7 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
 		ret_val = phy->ops.write_reg(hw, PHY_1000T_CTRL,
 					     mii_1000t_ctrl_reg);
 
-	if ((phy->autoneg_mask & ADVERTISE_2500_FULL) &&
-	    hw->phy.id == I225_I_PHY_ID)
+	if (phy->autoneg_mask & ADVERTISE_2500_FULL)
 		ret_val = phy->ops.write_reg(hw,
 					     (STANDARD_AN_REG_MASK <<
 					     MMD_DEVADDR_SHIFT) |
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
