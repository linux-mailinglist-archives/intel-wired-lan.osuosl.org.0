Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 775DD98C429
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 19:05:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C03D6059E;
	Tue,  1 Oct 2024 17:05:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GoSRHth8C6ld; Tue,  1 Oct 2024 17:05:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0A68605EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727802341;
	bh=YDfUiXCuusW7PWpcNLz+fDJlWWTewPgHemec40fZ0Wo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8n+OF5qgEKtGcvl+dg7nhVDVx4zTpeWPisguoRVKBUrl+6QCQTrRGmTTBoUeqd804
	 ExIJjQCoKYgTU5CvhmY0FahhjzqKSnmwdnhxHRPz+wz3xk79qoXMoIkj7Cg+6DYHpJ
	 ee76Xzas8cHc081DnXxniFXSjlj0Giu8zU/zIzTy6da31bITeG6Tk4L0Jq0CdDNpVo
	 XZZEzrBqfSHl99kwohBioz7UUxk5tbB3X4h/Oxs+E41DkXYmADe+OxQgAFikSfpjWZ
	 AB5E3AAx8I7l/lJ2+0C4i3pE616mVZfS+ZDzJmY3CA+EXvkxydphBMjO4ECozg/WI5
	 WcyoMOu4SDeKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0A68605EF;
	Tue,  1 Oct 2024 17:05:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFD951BF232
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 17:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9AF776059D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 17:05:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zMQYSHO4muvy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 17:05:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB62960596
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB62960596
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB62960596
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 17:05:36 +0000 (UTC)
X-CSE-ConnectionGUID: YPeyqsPWR4COPoh4k38cAg==
X-CSE-MsgGUID: Ngy2Io8CSp2xLlLcM3EKYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="37508582"
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="37508582"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 10:05:36 -0700
X-CSE-ConnectionGUID: hL9PmBaVQPu1wBbCpsE3jw==
X-CSE-MsgGUID: Mai5HsxwSHOIxekLoe6syQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="78150856"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 10:05:35 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Oct 2024 20:05:31 +0300
Message-Id: <20241001170531.1164289-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727802337; x=1759338337;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GW0fTDmtAnU+SV4GT0/RXt+WfiupMyRBG84fedM3Axo=;
 b=fsp+dz+QGsjkh86iSHhGT6O8rIH5vEFOcMY+81jcJl1hRyAPxEe0I5kj
 tTaNlgyv/tSebV5V/c3yhL9P89J1kK9+ruoo6RA5uKtlQ2T0f3Rajc639
 QM6VfylqTSIseukXvqyCOLUTrDkxU7lAza076p1VszXfKOnsUKoUPV7aH
 skjq3fs1qcgxvz10m2c1/vgXoCnfnnqIsfVSpWifTxm9GZESsAaYzN+nH
 XV7R6vClxjQINHSv85qA5jFxHs+0z1G0CN4Cg0TrXdJSRxB0o6GCBnziY
 TLH8spJaTF569pI7GTQjGxJE4VQ3KWcGsYTsbcbo3jb72y7VG3paQ0yHi
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fsp+dz+Q
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/1] igc: remove autoneg
 parameter from igc_mac_info
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
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since the igc driver doesn't support forced speed configuration and
its current related hardware doesn't support it either, there is no
use of the mac.autoneg parameter. Moreover, in one case this usage
might result in a NULL pointer dereference due to an uninitialized
function pointer, phy.ops.force_speed_duplex.

Therefore, remove this parameter from the igc code.

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_diag.c    |   3 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  13 +-
 drivers/net/ethernet/intel/igc/igc_hw.h      |   1 -
 drivers/net/ethernet/intel/igc/igc_mac.c     | 316 +++++++++----------
 drivers/net/ethernet/intel/igc/igc_main.c    |   1 -
 drivers/net/ethernet/intel/igc/igc_phy.c     |  24 +-
 6 files changed, 163 insertions(+), 195 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_diag.c b/drivers/net/ethernet/intel/igc/igc_diag.c
index cc621970c0cd..a43d7244ee70 100644
--- a/drivers/net/ethernet/intel/igc/igc_diag.c
+++ b/drivers/net/ethernet/intel/igc/igc_diag.c
@@ -173,8 +173,7 @@ bool igc_link_test(struct igc_adapter *adapter, u64 *data)
 	*data = 0;
 
 	/* add delay to give enough time for autonegotioation to finish */
-	if (adapter->hw.mac.autoneg)
-		ssleep(5);
+	ssleep(5);
 
 	link_up = igc_has_link(adapter);
 	if (!link_up) {
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 5b0c6f433767..817838677817 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1821,11 +1821,8 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 		ethtool_link_ksettings_add_link_mode(cmd, advertising, 2500baseT_Full);
 
 	/* set autoneg settings */
-	if (hw->mac.autoneg == 1) {
-		ethtool_link_ksettings_add_link_mode(cmd, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(cmd, advertising,
-						     Autoneg);
-	}
+	ethtool_link_ksettings_add_link_mode(cmd, supported, Autoneg);
+	ethtool_link_ksettings_add_link_mode(cmd, advertising, Autoneg);
 
 	/* Set pause flow control settings */
 	ethtool_link_ksettings_add_link_mode(cmd, supported, Pause);
@@ -1878,10 +1875,7 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 		cmd->base.duplex = DUPLEX_UNKNOWN;
 	}
 	cmd->base.speed = speed;
-	if (hw->mac.autoneg)
-		cmd->base.autoneg = AUTONEG_ENABLE;
-	else
-		cmd->base.autoneg = AUTONEG_DISABLE;
+	cmd->base.autoneg = AUTONEG_ENABLE;
 
 	/* MDI-X => 2; MDI =>1; Invalid =>0 */
 	if (hw->phy.media_type == igc_media_type_copper)
@@ -1955,7 +1949,6 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
 		advertised |= ADVERTISE_10_HALF;
 
 	if (cmd->base.autoneg == AUTONEG_ENABLE) {
-		hw->mac.autoneg = 1;
 		hw->phy.autoneg_advertised = advertised;
 		if (adapter->fc_autoneg)
 			hw->fc.requested_mode = igc_fc_default;
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index e1c572e0d4ef..d9d1a1a11daf 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -92,7 +92,6 @@ struct igc_mac_info {
 	bool asf_firmware_present;
 	bool arc_subsystem_valid;
 
-	bool autoneg;
 	bool autoneg_failed;
 	bool get_link_status;
 };
diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index a5c4b19d71a2..d344e0a1cd5e 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -386,14 +386,6 @@ s32 igc_check_for_copper_link(struct igc_hw *hw)
 	 */
 	igc_check_downshift(hw);
 
-	/* If we are forcing speed/duplex, then we simply return since
-	 * we have already determined whether we have link or not.
-	 */
-	if (!mac->autoneg) {
-		ret_val = -IGC_ERR_CONFIG;
-		goto out;
-	}
-
 	/* Auto-Neg is enabled.  Auto Speed Detection takes care
 	 * of MAC speed/duplex configuration.  So we only need to
 	 * configure Collision Distance in the MAC.
@@ -468,173 +460,171 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
 		goto out;
 	}
 
-	/* Check for the case where we have copper media and auto-neg is
-	 * enabled.  In this case, we need to check and see if Auto-Neg
-	 * has completed, and if so, how the PHY and link partner has
-	 * flow control configured.
+	/* In auto-neg, we need to check and see if Auto-Neg has completed,
+	 * and if so, how the PHY and link partner has flow control
+	 * configured.
 	 */
-	if (mac->autoneg) {
-		/* Read the MII Status Register and check to see if AutoNeg
-		 * has completed.  We read this twice because this reg has
-		 * some "sticky" (latched) bits.
-		 */
-		ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS,
-					       &mii_status_reg);
-		if (ret_val)
-			goto out;
-		ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS,
-					       &mii_status_reg);
-		if (ret_val)
-			goto out;
 
-		if (!(mii_status_reg & MII_SR_AUTONEG_COMPLETE)) {
-			hw_dbg("Copper PHY and Auto Neg has not completed.\n");
-			goto out;
-		}
+	/* Read the MII Status Register and check to see if AutoNeg
+	 * has completed.  We read this twice because this reg has
+	 * some "sticky" (latched) bits.
+	 */
+	ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS,
+				       &mii_status_reg);
+	if (ret_val)
+		goto out;
+	ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS,
+				       &mii_status_reg);
+	if (ret_val)
+		goto out;
 
-		/* The AutoNeg process has completed, so we now need to
-		 * read both the Auto Negotiation Advertisement
-		 * Register (Address 4) and the Auto_Negotiation Base
-		 * Page Ability Register (Address 5) to determine how
-		 * flow control was negotiated.
-		 */
-		ret_val = hw->phy.ops.read_reg(hw, PHY_AUTONEG_ADV,
-					       &mii_nway_adv_reg);
-		if (ret_val)
-			goto out;
-		ret_val = hw->phy.ops.read_reg(hw, PHY_LP_ABILITY,
-					       &mii_nway_lp_ability_reg);
-		if (ret_val)
-			goto out;
-		/* Two bits in the Auto Negotiation Advertisement Register
-		 * (Address 4) and two bits in the Auto Negotiation Base
-		 * Page Ability Register (Address 5) determine flow control
-		 * for both the PHY and the link partner.  The following
-		 * table, taken out of the IEEE 802.3ab/D6.0 dated March 25,
-		 * 1999, describes these PAUSE resolution bits and how flow
-		 * control is determined based upon these settings.
-		 * NOTE:  DC = Don't Care
-		 *
-		 *   LOCAL DEVICE  |   LINK PARTNER
-		 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | NIC Resolution
-		 *-------|---------|-------|---------|--------------------
-		 *   0   |    0    |  DC   |   DC    | igc_fc_none
-		 *   0   |    1    |   0   |   DC    | igc_fc_none
-		 *   0   |    1    |   1   |    0    | igc_fc_none
-		 *   0   |    1    |   1   |    1    | igc_fc_tx_pause
-		 *   1   |    0    |   0   |   DC    | igc_fc_none
-		 *   1   |   DC    |   1   |   DC    | igc_fc_full
-		 *   1   |    1    |   0   |    0    | igc_fc_none
-		 *   1   |    1    |   0   |    1    | igc_fc_rx_pause
-		 *
-		 * Are both PAUSE bits set to 1?  If so, this implies
-		 * Symmetric Flow Control is enabled at both ends.  The
-		 * ASM_DIR bits are irrelevant per the spec.
-		 *
-		 * For Symmetric Flow Control:
-		 *
-		 *   LOCAL DEVICE  |   LINK PARTNER
-		 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
-		 *-------|---------|-------|---------|--------------------
-		 *   1   |   DC    |   1   |   DC    | IGC_fc_full
-		 *
-		 */
-		if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
-		    (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE)) {
-			/* Now we need to check if the user selected RX ONLY
-			 * of pause frames.  In this case, we had to advertise
-			 * FULL flow control because we could not advertise RX
-			 * ONLY. Hence, we must now check to see if we need to
-			 * turn OFF  the TRANSMISSION of PAUSE frames.
-			 */
-			if (hw->fc.requested_mode == igc_fc_full) {
-				hw->fc.current_mode = igc_fc_full;
-				hw_dbg("Flow Control = FULL.\n");
-			} else {
-				hw->fc.current_mode = igc_fc_rx_pause;
-				hw_dbg("Flow Control = RX PAUSE frames only.\n");
-			}
-		}
+	if (!(mii_status_reg & MII_SR_AUTONEG_COMPLETE)) {
+		hw_dbg("Copper PHY and Auto Neg has not completed.\n");
+		goto out;
+	}
 
-		/* For receiving PAUSE frames ONLY.
-		 *
-		 *   LOCAL DEVICE  |   LINK PARTNER
-		 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
-		 *-------|---------|-------|---------|--------------------
-		 *   0   |    1    |   1   |    1    | igc_fc_tx_pause
-		 */
-		else if (!(mii_nway_adv_reg & NWAY_AR_PAUSE) &&
-			 (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
-			 (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
-			 (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR)) {
-			hw->fc.current_mode = igc_fc_tx_pause;
-			hw_dbg("Flow Control = TX PAUSE frames only.\n");
-		}
-		/* For transmitting PAUSE frames ONLY.
-		 *
-		 *   LOCAL DEVICE  |   LINK PARTNER
-		 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
-		 *-------|---------|-------|---------|--------------------
-		 *   1   |    1    |   0   |    1    | igc_fc_rx_pause
-		 */
-		else if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
-			 (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
-			 !(mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
-			 (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR)) {
-			hw->fc.current_mode = igc_fc_rx_pause;
-			hw_dbg("Flow Control = RX PAUSE frames only.\n");
-		}
-		/* Per the IEEE spec, at this point flow control should be
-		 * disabled.  However, we want to consider that we could
-		 * be connected to a legacy switch that doesn't advertise
-		 * desired flow control, but can be forced on the link
-		 * partner.  So if we advertised no flow control, that is
-		 * what we will resolve to.  If we advertised some kind of
-		 * receive capability (Rx Pause Only or Full Flow Control)
-		 * and the link partner advertised none, we will configure
-		 * ourselves to enable Rx Flow Control only.  We can do
-		 * this safely for two reasons:  If the link partner really
-		 * didn't want flow control enabled, and we enable Rx, no
-		 * harm done since we won't be receiving any PAUSE frames
-		 * anyway.  If the intent on the link partner was to have
-		 * flow control enabled, then by us enabling RX only, we
-		 * can at least receive pause frames and process them.
-		 * This is a good idea because in most cases, since we are
-		 * predominantly a server NIC, more times than not we will
-		 * be asked to delay transmission of packets than asking
-		 * our link partner to pause transmission of frames.
+	/* The AutoNeg process has completed, so we now need to
+	 * read both the Auto Negotiation Advertisement
+	 * Register (Address 4) and the Auto_Negotiation Base
+	 * Page Ability Register (Address 5) to determine how
+	 * flow control was negotiated.
+	 */
+	ret_val = hw->phy.ops.read_reg(hw, PHY_AUTONEG_ADV,
+				       &mii_nway_adv_reg);
+	if (ret_val)
+		goto out;
+	ret_val = hw->phy.ops.read_reg(hw, PHY_LP_ABILITY,
+				       &mii_nway_lp_ability_reg);
+	if (ret_val)
+		goto out;
+	/* Two bits in the Auto Negotiation Advertisement Register
+	 * (Address 4) and two bits in the Auto Negotiation Base
+	 * Page Ability Register (Address 5) determine flow control
+	 * for both the PHY and the link partner.  The following
+	 * table, taken out of the IEEE 802.3ab/D6.0 dated March 25,
+	 * 1999, describes these PAUSE resolution bits and how flow
+	 * control is determined based upon these settings.
+	 * NOTE:  DC = Don't Care
+	 *
+	 *   LOCAL DEVICE  |   LINK PARTNER
+	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | NIC Resolution
+	 *-------|---------|-------|---------|--------------------
+	 *   0   |    0    |  DC   |   DC    | igc_fc_none
+	 *   0   |    1    |   0   |   DC    | igc_fc_none
+	 *   0   |    1    |   1   |    0    | igc_fc_none
+	 *   0   |    1    |   1   |    1    | igc_fc_tx_pause
+	 *   1   |    0    |   0   |   DC    | igc_fc_none
+	 *   1   |   DC    |   1   |   DC    | igc_fc_full
+	 *   1   |    1    |   0   |    0    | igc_fc_none
+	 *   1   |    1    |   0   |    1    | igc_fc_rx_pause
+	 *
+	 * Are both PAUSE bits set to 1?  If so, this implies
+	 * Symmetric Flow Control is enabled at both ends.  The
+	 * ASM_DIR bits are irrelevant per the spec.
+	 *
+	 * For Symmetric Flow Control:
+	 *
+	 *   LOCAL DEVICE  |   LINK PARTNER
+	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
+	 *-------|---------|-------|---------|--------------------
+	 *   1   |   DC    |   1   |   DC    | IGC_fc_full
+	 *
+	 */
+	if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
+	    (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE)) {
+		/* Now we need to check if the user selected RX ONLY
+		 * of pause frames.  In this case, we had to advertise
+		 * FULL flow control because we could not advertise RX
+		 * ONLY. Hence, we must now check to see if we need to
+		 * turn OFF  the TRANSMISSION of PAUSE frames.
 		 */
-		else if ((hw->fc.requested_mode == igc_fc_none) ||
-			 (hw->fc.requested_mode == igc_fc_tx_pause) ||
-			 (hw->fc.strict_ieee)) {
-			hw->fc.current_mode = igc_fc_none;
-			hw_dbg("Flow Control = NONE.\n");
+		if (hw->fc.requested_mode == igc_fc_full) {
+			hw->fc.current_mode = igc_fc_full;
+			hw_dbg("Flow Control = FULL.\n");
 		} else {
 			hw->fc.current_mode = igc_fc_rx_pause;
 			hw_dbg("Flow Control = RX PAUSE frames only.\n");
 		}
+	}
 
-		/* Now we need to do one last check...  If we auto-
-		 * negotiated to HALF DUPLEX, flow control should not be
-		 * enabled per IEEE 802.3 spec.
-		 */
-		ret_val = hw->mac.ops.get_speed_and_duplex(hw, &speed, &duplex);
-		if (ret_val) {
-			hw_dbg("Error getting link speed and duplex\n");
-			goto out;
-		}
+	/* For receiving PAUSE frames ONLY.
+	 *
+	 *   LOCAL DEVICE  |   LINK PARTNER
+	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
+	 *-------|---------|-------|---------|--------------------
+	 *   0   |    1    |   1   |    1    | igc_fc_tx_pause
+	 */
+	else if (!(mii_nway_adv_reg & NWAY_AR_PAUSE) &&
+		 (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
+		 (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
+		 (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR)) {
+		hw->fc.current_mode = igc_fc_tx_pause;
+		hw_dbg("Flow Control = TX PAUSE frames only.\n");
+	}
+	/* For transmitting PAUSE frames ONLY.
+	 *
+	 *   LOCAL DEVICE  |   LINK PARTNER
+	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
+	 *-------|---------|-------|---------|--------------------
+	 *   1   |    1    |   0   |    1    | igc_fc_rx_pause
+	 */
+	else if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
+		 (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
+		 !(mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
+		 (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR)) {
+		hw->fc.current_mode = igc_fc_rx_pause;
+		hw_dbg("Flow Control = RX PAUSE frames only.\n");
+	}
+	/* Per the IEEE spec, at this point flow control should be
+	 * disabled.  However, we want to consider that we could
+	 * be connected to a legacy switch that doesn't advertise
+	 * desired flow control, but can be forced on the link
+	 * partner.  So if we advertised no flow control, that is
+	 * what we will resolve to.  If we advertised some kind of
+	 * receive capability (Rx Pause Only or Full Flow Control)
+	 * and the link partner advertised none, we will configure
+	 * ourselves to enable Rx Flow Control only.  We can do
+	 * this safely for two reasons:  If the link partner really
+	 * didn't want flow control enabled, and we enable Rx, no
+	 * harm done since we won't be receiving any PAUSE frames
+	 * anyway.  If the intent on the link partner was to have
+	 * flow control enabled, then by us enabling RX only, we
+	 * can at least receive pause frames and process them.
+	 * This is a good idea because in most cases, since we are
+	 * predominantly a server NIC, more times than not we will
+	 * be asked to delay transmission of packets than asking
+	 * our link partner to pause transmission of frames.
+	 */
+	else if ((hw->fc.requested_mode == igc_fc_none) ||
+		 (hw->fc.requested_mode == igc_fc_tx_pause) ||
+		 (hw->fc.strict_ieee)) {
+		hw->fc.current_mode = igc_fc_none;
+		hw_dbg("Flow Control = NONE.\n");
+	} else {
+		hw->fc.current_mode = igc_fc_rx_pause;
+		hw_dbg("Flow Control = RX PAUSE frames only.\n");
+	}
 
-		if (duplex == HALF_DUPLEX)
-			hw->fc.current_mode = igc_fc_none;
+	/* Now we need to do one last check...  If we auto-
+	 * negotiated to HALF DUPLEX, flow control should not be
+	 * enabled per IEEE 802.3 spec.
+	 */
+	ret_val = hw->mac.ops.get_speed_and_duplex(hw, &speed, &duplex);
+	if (ret_val) {
+		hw_dbg("Error getting link speed and duplex\n");
+		goto out;
+	}
 
-		/* Now we call a subroutine to actually force the MAC
-		 * controller to use the correct flow control settings.
-		 */
-		ret_val = igc_force_mac_fc(hw);
-		if (ret_val) {
-			hw_dbg("Error forcing flow control settings\n");
-			goto out;
-		}
+	if (duplex == HALF_DUPLEX)
+		hw->fc.current_mode = igc_fc_none;
+
+	/* Now we call a subroutine to actually force the MAC
+	 * controller to use the correct flow control settings.
+	 */
+	ret_val = igc_force_mac_fc(hw);
+	if (ret_val) {
+		hw_dbg("Error forcing flow control settings\n");
+		goto out;
 	}
 
 out:
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 6e70bca15db1..27872bdea9bd 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7108,7 +7108,6 @@ static int igc_probe(struct pci_dev *pdev,
 
 	/* Initialize link properties that are user-changeable */
 	adapter->fc_autoneg = true;
-	hw->mac.autoneg = true;
 	hw->phy.autoneg_advertised = 0xaf;
 
 	hw->fc.requested_mode = igc_fc_default;
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 2801e5f24df9..6c4d204aecfa 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -494,24 +494,12 @@ s32 igc_setup_copper_link(struct igc_hw *hw)
 	s32 ret_val = 0;
 	bool link;
 
-	if (hw->mac.autoneg) {
-		/* Setup autoneg and flow control advertisement and perform
-		 * autonegotiation.
-		 */
-		ret_val = igc_copper_link_autoneg(hw);
-		if (ret_val)
-			goto out;
-	} else {
-		/* PHY will be set to 10H, 10F, 100H or 100F
-		 * depending on user settings.
-		 */
-		hw_dbg("Forcing Speed and Duplex\n");
-		ret_val = hw->phy.ops.force_speed_duplex(hw);
-		if (ret_val) {
-			hw_dbg("Error Forcing Speed and Duplex\n");
-			goto out;
-		}
-	}
+	/* Setup autoneg and flow control advertisement and perform
+	 * autonegotiation.
+	 */
+	ret_val = igc_copper_link_autoneg(hw);
+	if (ret_val)
+		goto out;
 
 	/* Check link status. Wait up to 100 microseconds for link to become
 	 * valid.
-- 
2.34.1

