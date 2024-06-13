Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 113ED906D89
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 14:01:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE599413F1;
	Thu, 13 Jun 2024 12:01:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 080aLZLUnGej; Thu, 13 Jun 2024 12:01:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A8A4413F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718280104;
	bh=A8kuU8K2mVJKSATb/bPZXO506eHwWgzYgC0axO5cK2w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LDX3b5AkhVadC86mqXeKcJ3/TojwhPuuqeGWByHHbdzvKy8zASfBQJ2ZdqXBmz27J
	 Bo9i9K7yDYb5jtNFiTyagey7mZlCsj9LRrQMTIV++aTuWWu3nfDKadWzlEAOLt9Nih
	 igYPXeqNS6aqSTysfpbA5Y1BEGD+GtTMiwgduuswH5weFLw2TM5tvgzkuEaU2jOIdk
	 5NSPlkbvq1tz+ij/vmJeVP/mCzgQRf0m9dodegsVyonl9VUulnQVBE1w2iPzd0Asdr
	 Rr+BrpETZCAHhvgboupuF5zv5z9MmvgVqvCJ+/cSNFbf10nV0UkUrQB3YGj38xz7f6
	 eNdNy3wfTbpoQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A8A4413F5;
	Thu, 13 Jun 2024 12:01:44 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1226C1BF359
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jun 2024 12:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F356D60B60
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jun 2024 12:01:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vzuyYvaaoWXc for <intel-wired-lan@osuosl.org>;
 Thu, 13 Jun 2024 12:01:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D2E6A6071E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2E6A6071E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D2E6A6071E
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jun 2024 12:01:40 +0000 (UTC)
X-CSE-ConnectionGUID: 9c4IhYrKSAmJIRkJC/TdDg==
X-CSE-MsgGUID: uRlgVghKRJy6LQXQWOtTUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="15221364"
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="15221364"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 05:01:40 -0700
X-CSE-ConnectionGUID: 7BkJ3rFLQdGdBRAgd9snIg==
X-CSE-MsgGUID: YWSIRo5EQ5m/qs3sk7czHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="40598400"
Received: from unknown (HELO ccdlinuxdev11.iil.intel.com) ([143.185.162.51])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 05:01:38 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 13 Jun 2024 15:01:34 +0300
Message-Id: <20240613120134.224585-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718280101; x=1749816101;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jzxt91ify5C39YkL6PBCoVITNVYS8NT+18ohcOj360w=;
 b=jThDJfJp6R+kvDlhU0X1cvgnTRDoNyBd0frMl2Mhvd+bEWl6OJj7Y+sN
 nnLlNK2eyS7QNgTBLvIq6lM0tnNDXeEOKrzsW9zI5p2AojaMMBihI/PU5
 EGpzzbrP+tgqhF6oI2o6wNOncPnu5ahqfvszHZmeeaVcEK3MvjeA9yI59
 I7QgOQJJE2YXKsoAYd40i2EKjtbJmRbT8zm6BAW5vApEBoKv9gXeudg2g
 AYIfR4cLOcRPRBu7PBnKR2E+sVKOzWVcu9gQx+auW1ZD9Cxf+XjAUZqWC
 4vQl0/QxhC4rlPshEvJvTIYyfBVJoJuPRNanCOqH33SFyIzH4G6dLoNCt
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jThDJfJp
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: fix force smbus
 during suspend flow
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
Cc: hui.wang@canonical.com, Vitaly Lifshits <vitaly.lifshits@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit bfd546a552e1 ("e1000e: move force SMBUS near the end of
enable_ulp function") fixed an issue with loss of PHY access during
suspend on Meteor Lake systems. However, it introduced a regression
on older devices, such as [8086:15B8], [8086:15F9], [8086:15BE].

This patch aims to fix the secondary regression, by limiting the scope
of the changes in that commit to Meteor Lake platforms only.

Fixes: bfd546a552e1 ("e1000e: move force SMBUS near the end of enable_ulp function")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Link: https://bugzilla.kernel.org/show_bug.cgi?id=218940
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 68 +++++++++++++++------
 1 file changed, 48 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 2e98a2a0bead..7b1da97e82bf 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -137,6 +137,7 @@ static void e1000_gate_hw_phy_config_ich8lan(struct e1000_hw *hw, bool gate);
 static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force);
 static s32 e1000_setup_copper_link_pch_lpt(struct e1000_hw *hw);
 static s32 e1000_oem_bits_config_ich8lan(struct e1000_hw *hw, bool d0_state);
+static s32 e1000e_force_smbus(struct e1000_hw *hw);
 
 static inline u16 __er16flash(struct e1000_hw *hw, unsigned long reg)
 {
@@ -1108,6 +1109,41 @@ static s32 e1000_platform_pm_pch_lpt(struct e1000_hw *hw, bool link)
 	return 0;
 }
 
+/**
+ *  e1000e_force_smbus
+ *  @hw: pointer to the HW structure
+ *
+ *  Force the MAC and the PHY to SMBUS mode.
+ **/
+static s32 e1000e_force_smbus(struct e1000_hw *hw)
+{
+	u16 smb_ctrl = 0;
+	u32 ctrl_ext = 0;
+	s32 ret_val = 0;
+
+	/* Switching PHY interface always returns MDI error
+	 * so disable retry mechanism to avoid wasting time
+	 */
+	e1000e_disable_phy_retry(hw);
+
+	/* Force SMBus mode in the PHY */
+	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &smb_ctrl);
+	if (ret_val)
+		return ret_val;
+
+	smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
+	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, smb_ctrl);
+
+	e1000e_enable_phy_retry(hw);
+
+	/* Force SMBus mode in the MAC */
+	ctrl_ext = er32(CTRL_EXT);
+	ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
+	ew32(CTRL_EXT, ctrl_ext);
+
+	return 0;
+}
+
 /**
  *  e1000_enable_ulp_lpt_lp - configure Ultra Low Power mode for LynxPoint-LP
  *  @hw: pointer to the HW structure
@@ -1165,6 +1201,14 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	if (ret_val)
 		goto out;
 
+	if (hw->mac.type != e1000_pch_mtp) {
+		ret_val = e1000e_force_smbus(hw);
+		if (ret_val) {
+			e_dbg("Failed to force SMBUS: %d\n", ret_val);
+			goto out;
+		}
+	}
+
 	/* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
 	 * LPLU and disable Gig speed when entering ULP
 	 */
@@ -1225,27 +1269,11 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	}
 
 release:
-	/* Switching PHY interface always returns MDI error
-	 * so disable retry mechanism to avoid wasting time
-	 */
-	e1000e_disable_phy_retry(hw);
-
-	/* Force SMBus mode in PHY */
-	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
-	if (ret_val) {
-		e1000e_enable_phy_retry(hw);
-		hw->phy.ops.release(hw);
-		goto out;
+	if (hw->mac.type == e1000_pch_mtp) {
+		ret_val = e1000e_force_smbus(hw);
+		if (ret_val)
+			e_dbg("Failed to force SMBUS: %d\n", ret_val);
 	}
-	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
-	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
-
-	e1000e_enable_phy_retry(hw);
-
-	/* Force SMBus mode in MAC */
-	mac_reg = er32(CTRL_EXT);
-	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
-	ew32(CTRL_EXT, mac_reg);
 
 	hw->phy.ops.release(hw);
 out:
-- 
2.34.1

