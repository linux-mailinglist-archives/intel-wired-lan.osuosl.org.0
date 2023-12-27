Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E3381EE3C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Dec 2023 11:33:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DF7380DD0;
	Wed, 27 Dec 2023 10:33:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DF7380DD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703673219;
	bh=3u+2udMHBFJ9a1uJBFsIan0fs3xrj0Cp3T2VdKac6qo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xPw0SI+MLX8tQHjag3u2oqxTUjOuGkixTtsX5+trviaEciRKE2m6Bcv2CYQPhgab6
	 1HOryZtIhVOseNCL38Tv0NPaxyiWaofIt7pXKMGnSAGRaTM7gwPASY3lV/YV+4PsIc
	 Z2iN5fB1HatMJ1BxPOZmh+cXw0gmZwqcpTYNkTIDW04xEWnzfuhGUwU2Le2y/rLoFY
	 m5q5u4SZn49AkoFaAXYHwXFW33x1pPLimJ15C9o+zo11LBoSOGC1Q9sQ3iLz1ajfqz
	 PBaJ3dDa/4B5fN+lxrlHHeYGAHWITxF5dF0XoP8zC8TDY4SMfrl2/83wfJSCTLFAC7
	 khVfBLpL14LyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eqi-rl_nsYpj; Wed, 27 Dec 2023 10:33:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F74780E80;
	Wed, 27 Dec 2023 10:33:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F74780E80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B58831BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 10:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C33680D20
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 10:33:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C33680D20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SLzZz3vxSarC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Dec 2023 10:33:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D86180C68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 10:33:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D86180C68
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="9827902"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; 
   d="scan'208";a="9827902"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2023 02:33:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="26541825"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.160.232])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2023 02:33:17 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Dec 2023 12:33:12 +0200
Message-Id: <20231227103312.182542-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703673210; x=1735209210;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EuOh3GzpHoIlTAOqQASMqUDpYVJD1UfVxO/y7+YGToo=;
 b=J1TkfZjWkIhr+bx6l2KRmDbeF9Emq0+q0iuv/BgpnPwD0c/BJIfkz5Db
 vpXz3w7KIh2amn4wfdTkxOKXEP280dCrb1oPpNSqPUVPog/clMIaRdr/4
 L0X2Z56p9MQKRFOwivgU3nLt74O5sCC9G5wzr9S/aTy6pj4IJ0gxmb5ci
 QFq2TtiLicBaK8Jr0wK3If11+onK/i0fB5/AAA5aBrozINwiRhYX3804N
 fowjm4tM+2kZJ2Qnpp9xqOighDZL6Ji84vxNCU1dxK6Jc1atDofbHfLZE
 byMAetaJS4JswmVe6fqhCrNogRdAkfdtQvDdAXHdpJJHzeVrff1gU4UVK
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J1TkfZjW
Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/1] e1000e: Workaround for
 sporadic MDI error on Meteor Lake systems
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
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Nikolay Mushayev <nikolay.mushayev@intel.com>,
 Nir Efrati <nir.efrati@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On some Meteor Lake systems accessing the PHY via the MDIO interface may
result in an MDI error. This issue happens sporadically and in most cases
a second access to the PHY via the MDIO interface results in success.

As a workaround, introduce a retry counter which is set to 3 on Meteor
Lake systems. The driver will only return an error if 3 consecutive PHY
access attempts fail. The retry mechanism is disabled in specific flows,
where MDI errors are expected.

Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
Suggested-by: Nikolay Mushayev <nikolay.mushayev@intel.com>
Co-developed-by: Nir Efrati <nir.efrati@intel.com>
Signed-off-by: Nir Efrati <nir.efrati@intel.com>
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v3: rebase to dev-queue branch
v2: fix checkpatch errors
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/hw.h      |   2 +
 drivers/net/ethernet/intel/e1000e/ich8lan.c |  33 ++++
 drivers/net/ethernet/intel/e1000e/phy.c     | 186 ++++++++++++--------
 drivers/net/ethernet/intel/e1000e/phy.h     |   2 +
 4 files changed, 151 insertions(+), 72 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index 1fef6bb5a5fb..4b6e7536170a 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -628,6 +628,7 @@ struct e1000_phy_info {
 	u32 id;
 	u32 reset_delay_us;	/* in usec */
 	u32 revision;
+	u32 retry_count;
 
 	enum e1000_media_type media_type;
 
@@ -644,6 +645,7 @@ struct e1000_phy_info {
 	bool polarity_correction;
 	bool speed_downgraded;
 	bool autoneg_wait_to_complete;
+	bool retry_enabled;
 };
 
 struct e1000_nvm_info {
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 39e9fc601bf5..ec607fa6c5c8 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -222,11 +222,18 @@ static bool e1000_phy_is_accessible_pchlan(struct e1000_hw *hw)
 	if (hw->mac.type >= e1000_pch_lpt) {
 		/* Only unforce SMBus if ME is not active */
 		if (!(er32(FWSM) & E1000_ICH_FWSM_FW_VALID)) {
+			/* Switching PHY interface always returns MDI error
+			 * so disable retry mechanism to avoid wasting time
+			 */
+			e1000e_disable_phy_retry(hw);
+
 			/* Unforce SMBus mode in PHY */
 			e1e_rphy_locked(hw, CV_SMB_CTRL, &phy_reg);
 			phy_reg &= ~CV_SMB_CTRL_FORCE_SMBUS;
 			e1e_wphy_locked(hw, CV_SMB_CTRL, phy_reg);
 
+			e1000e_enable_phy_retry(hw);
+
 			/* Unforce SMBus mode in MAC */
 			mac_reg = er32(CTRL_EXT);
 			mac_reg &= ~E1000_CTRL_EXT_FORCE_SMBUS;
@@ -310,6 +317,11 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 		goto out;
 	}
 
+	/* There is no guarantee that the PHY is accessible at this time
+	 * so disable retry mechanism to avoid wasting time
+	 */
+	e1000e_disable_phy_retry(hw);
+
 	/* The MAC-PHY interconnect may be in SMBus mode.  If the PHY is
 	 * inaccessible and resetting the PHY is not blocked, toggle the
 	 * LANPHYPC Value bit to force the interconnect to PCIe mode.
@@ -380,6 +392,8 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 		break;
 	}
 
+	e1000e_enable_phy_retry(hw);
+
 	hw->phy.ops.release(hw);
 	if (!ret_val) {
 
@@ -449,6 +463,11 @@ static s32 e1000_init_phy_params_pchlan(struct e1000_hw *hw)
 
 	phy->id = e1000_phy_unknown;
 
+	if (hw->mac.type == e1000_pch_mtp) {
+		phy->retry_count = 2;
+		e1000e_enable_phy_retry(hw);
+	}
+
 	ret_val = e1000_init_phy_workarounds_pchlan(hw);
 	if (ret_val)
 		return ret_val;
@@ -1148,6 +1167,11 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	if (ret_val)
 		goto out;
 
+	/* Switching PHY interface always returns MDI error
+	 * so disable retry mechanism to avoid wasting time
+	 */
+	e1000e_disable_phy_retry(hw);
+
 	/* Force SMBus mode in PHY */
 	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
 	if (ret_val)
@@ -1155,6 +1179,8 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
 	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
 
+	e1000e_enable_phy_retry(hw);
+
 	/* Force SMBus mode in MAC */
 	mac_reg = er32(CTRL_EXT);
 	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
@@ -1315,6 +1341,11 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
 		/* Toggle LANPHYPC Value bit */
 		e1000_toggle_lanphypc_pch_lpt(hw);
 
+	/* Switching PHY interface always returns MDI error
+	 * so disable retry mechanism to avoid wasting time
+	 */
+	e1000e_disable_phy_retry(hw);
+
 	/* Unforce SMBus mode in PHY */
 	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
 	if (ret_val) {
@@ -1335,6 +1366,8 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
 	phy_reg &= ~CV_SMB_CTRL_FORCE_SMBUS;
 	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
 
+	e1000e_enable_phy_retry(hw);
+
 	/* Unforce SMBus mode in MAC */
 	mac_reg = er32(CTRL_EXT);
 	mac_reg &= ~E1000_CTRL_EXT_FORCE_SMBUS;
diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index 08c3d477dd6f..0dbd18663563 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -107,6 +107,16 @@ s32 e1000e_phy_reset_dsp(struct e1000_hw *hw)
 	return e1e_wphy(hw, M88E1000_PHY_GEN_CONTROL, 0);
 }
 
+void e1000e_disable_phy_retry(struct e1000_hw *hw)
+{
+	hw->phy.retry_enabled = false;
+}
+
+void e1000e_enable_phy_retry(struct e1000_hw *hw)
+{
+	hw->phy.retry_enabled = true;
+}
+
 /**
  *  e1000e_read_phy_reg_mdic - Read MDI control register
  *  @hw: pointer to the HW structure
@@ -118,57 +128,73 @@ s32 e1000e_phy_reset_dsp(struct e1000_hw *hw)
  **/
 s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
 {
+	u32 i, mdic = 0, retry_counter, retry_max;
 	struct e1000_phy_info *phy = &hw->phy;
-	u32 i, mdic = 0;
+	bool success;
 
 	if (offset > MAX_PHY_REG_ADDRESS) {
 		e_dbg("PHY Address %d is out of range\n", offset);
 		return -E1000_ERR_PARAM;
 	}
 
+	retry_max = phy->retry_enabled ? phy->retry_count : 0;
+
 	/* Set up Op-code, Phy Address, and register offset in the MDI
 	 * Control register.  The MAC will take care of interfacing with the
 	 * PHY to retrieve the desired data.
 	 */
-	mdic = ((offset << E1000_MDIC_REG_SHIFT) |
-		(phy->addr << E1000_MDIC_PHY_SHIFT) |
-		(E1000_MDIC_OP_READ));
+	for (retry_counter = 0; retry_counter <= retry_max; retry_counter++) {
+		success = true;
 
-	ew32(MDIC, mdic);
+		mdic = ((offset << E1000_MDIC_REG_SHIFT) |
+			(phy->addr << E1000_MDIC_PHY_SHIFT) |
+			(E1000_MDIC_OP_READ));
 
-	/* Poll the ready bit to see if the MDI read completed
-	 * Increasing the time out as testing showed failures with
-	 * the lower time out
-	 */
-	for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
-		udelay(50);
-		mdic = er32(MDIC);
-		if (mdic & E1000_MDIC_READY)
-			break;
-	}
-	if (!(mdic & E1000_MDIC_READY)) {
-		e_dbg("MDI Read PHY Reg Address %d did not complete\n", offset);
-		return -E1000_ERR_PHY;
-	}
-	if (mdic & E1000_MDIC_ERROR) {
-		e_dbg("MDI Read PHY Reg Address %d Error\n", offset);
-		return -E1000_ERR_PHY;
-	}
-	if (((mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT) != offset) {
-		e_dbg("MDI Read offset error - requested %d, returned %d\n",
-		      offset,
-		      (mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT);
-		return -E1000_ERR_PHY;
-	}
-	*data = (u16)mdic;
+		ew32(MDIC, mdic);
 
-	/* Allow some time after each MDIC transaction to avoid
-	 * reading duplicate data in the next MDIC transaction.
-	 */
-	if (hw->mac.type == e1000_pch2lan)
-		udelay(100);
+		/* Poll the ready bit to see if the MDI read completed
+		 * Increasing the time out as testing showed failures with
+		 * the lower time out
+		 */
+		for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
+			usleep_range(50, 60);
+			mdic = er32(MDIC);
+			if (mdic & E1000_MDIC_READY)
+				break;
+		}
+		if (!(mdic & E1000_MDIC_READY)) {
+			e_dbg("MDI Read PHY Reg Address %d did not complete\n", offset);
+			success = false;
+		}
+		if (mdic & E1000_MDIC_ERROR) {
+			e_dbg("MDI Read PHY Reg Address %d Error\n", offset);
+			success = false;
+		}
+		if (((mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT) != offset) {
+			e_dbg("MDI Read offset error - requested %d, returned %d\n",
+			      offset,
+			      (mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT);
+			success = false;
+		}
 
-	return 0;
+		/* Allow some time after each MDIC transaction to avoid
+		 * reading duplicate data in the next MDIC transaction.
+		 */
+		if (hw->mac.type == e1000_pch2lan)
+			usleep_range(100, 150);
+
+		if (success) {
+			*data = (u16)mdic;
+			return 0;
+		}
+
+		if (retry_counter != retry_max) {
+			e_dbg("Perform retry on PHY transaction...\n");
+			mdelay(10);
+		}
+	}
+
+	return -E1000_ERR_PHY;
 }
 
 /**
@@ -181,57 +207,73 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
  **/
 s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
 {
+	u32 i, mdic = 0, retry_counter, retry_max;
 	struct e1000_phy_info *phy = &hw->phy;
-	u32 i, mdic = 0;
+	bool success;
 
 	if (offset > MAX_PHY_REG_ADDRESS) {
 		e_dbg("PHY Address %d is out of range\n", offset);
 		return -E1000_ERR_PARAM;
 	}
 
+	retry_max = phy->retry_enabled ? phy->retry_count : 0;
+
 	/* Set up Op-code, Phy Address, and register offset in the MDI
 	 * Control register.  The MAC will take care of interfacing with the
 	 * PHY to retrieve the desired data.
 	 */
-	mdic = (((u32)data) |
-		(offset << E1000_MDIC_REG_SHIFT) |
-		(phy->addr << E1000_MDIC_PHY_SHIFT) |
-		(E1000_MDIC_OP_WRITE));
+	for (retry_counter = 0; retry_counter <= retry_max; retry_counter++) {
+		success = true;
 
-	ew32(MDIC, mdic);
+		mdic = (((u32)data) |
+			(offset << E1000_MDIC_REG_SHIFT) |
+			(phy->addr << E1000_MDIC_PHY_SHIFT) |
+			(E1000_MDIC_OP_WRITE));
 
-	/* Poll the ready bit to see if the MDI read completed
-	 * Increasing the time out as testing showed failures with
-	 * the lower time out
-	 */
-	for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
-		udelay(50);
-		mdic = er32(MDIC);
-		if (mdic & E1000_MDIC_READY)
-			break;
-	}
-	if (!(mdic & E1000_MDIC_READY)) {
-		e_dbg("MDI Write PHY Reg Address %d did not complete\n", offset);
-		return -E1000_ERR_PHY;
-	}
-	if (mdic & E1000_MDIC_ERROR) {
-		e_dbg("MDI Write PHY Red Address %d Error\n", offset);
-		return -E1000_ERR_PHY;
-	}
-	if (((mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT) != offset) {
-		e_dbg("MDI Write offset error - requested %d, returned %d\n",
-		      offset,
-		      (mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT);
-		return -E1000_ERR_PHY;
-	}
 
-	/* Allow some time after each MDIC transaction to avoid
-	 * reading duplicate data in the next MDIC transaction.
-	 */
-	if (hw->mac.type == e1000_pch2lan)
-		udelay(100);
+		ew32(MDIC, mdic);
 
-	return 0;
+		/* Poll the ready bit to see if the MDI read completed
+		 * Increasing the time out as testing showed failures with
+		 * the lower time out
+		 */
+		for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
+			usleep_range(50, 60);
+			mdic = er32(MDIC);
+			if (mdic & E1000_MDIC_READY)
+				break;
+		}
+		if (!(mdic & E1000_MDIC_READY)) {
+			e_dbg("MDI Write PHY Reg Address %d did not complete\n", offset);
+			success = false;
+		}
+		if (mdic & E1000_MDIC_ERROR) {
+			e_dbg("MDI Write PHY Reg Address %d Error\n", offset);
+			success = false;
+		}
+		if (((mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT) != offset) {
+			e_dbg("MDI Write offset error - requested %d, returned %d\n",
+			      offset,
+			      (mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT);
+			success = false;
+		}
+
+		/* Allow some time after each MDIC transaction to avoid
+		 * reading duplicate data in the next MDIC transaction.
+		 */
+		if (hw->mac.type == e1000_pch2lan)
+			usleep_range(100, 150);
+
+		if (success)
+			return 0;
+
+		if (retry_counter != retry_max) {
+			e_dbg("Perform retry on PHY transaction...\n");
+			mdelay(10);
+		}
+	}
+
+	return -E1000_ERR_PHY;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/e1000e/phy.h b/drivers/net/ethernet/intel/e1000e/phy.h
index c48777d09523..049bb325b4b1 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.h
+++ b/drivers/net/ethernet/intel/e1000e/phy.h
@@ -51,6 +51,8 @@ s32 e1000e_read_phy_reg_bm2(struct e1000_hw *hw, u32 offset, u16 *data);
 s32 e1000e_write_phy_reg_bm2(struct e1000_hw *hw, u32 offset, u16 data);
 void e1000_power_up_phy_copper(struct e1000_hw *hw);
 void e1000_power_down_phy_copper(struct e1000_hw *hw);
+void e1000e_disable_phy_retry(struct e1000_hw *hw);
+void e1000e_enable_phy_retry(struct e1000_hw *hw);
 s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data);
 s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data);
 s32 e1000_read_phy_reg_hv(struct e1000_hw *hw, u32 offset, u16 *data);
-- 
2.34.1

