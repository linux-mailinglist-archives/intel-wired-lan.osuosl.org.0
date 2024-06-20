Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E2890FCCD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 08:37:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 909FB615A3;
	Thu, 20 Jun 2024 06:36:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cb2gSIO1Hu3X; Thu, 20 Jun 2024 06:36:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A6E5615A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718865416;
	bh=QmurkzFMUw66JOn66GSUGf0NaY3ZF8K/VKKPf3UGoks=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3kgvLb4R4xCIX22gekofnqNlwMWdP57BOFwnRYTYFExYBVlebuza1Ipj6/+flR4lj
	 mr2jY/yZfhiGKWBJkoGDhVHHNRF/mMrh+q8F+KOhQiaWuPiFtXP8SqwU46Xoie+bcL
	 fV9yfHedmL4z9uDXXTBKMI3rfAh2+DYLm5AY14PGqkit9jK/D9mrchDHR666iABewu
	 jqfqJNNE1DomknCNb8m+elAhxrPDIRMtk/3K7R0MCojGYYcij7k4sO98vDKqMtHern
	 NDEKIBhVF2/Gh+GDzrKZvrM1ouPcOOsJ/L2b182Oh6K9h4pR8m1zaLkNa5OPsQowTp
	 o1VDisIcxwj8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A6E5615A4;
	Thu, 20 Jun 2024 06:36:56 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD0DC1BF29C
 for <intel-wired-lan@osuosl.org>; Thu, 20 Jun 2024 06:36:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B3E4742E56
 for <intel-wired-lan@osuosl.org>; Thu, 20 Jun 2024 06:36:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cyu-UDmmr-Uc for <intel-wired-lan@osuosl.org>;
 Thu, 20 Jun 2024 06:36:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C221742E54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C221742E54
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C221742E54
 for <intel-wired-lan@osuosl.org>; Thu, 20 Jun 2024 06:36:52 +0000 (UTC)
X-CSE-ConnectionGUID: 4v4F8leoQi6JgspLUBwDkw==
X-CSE-MsgGUID: EIS8GkC7QEKDEHlPS8RZ6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="27244601"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="27244601"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 23:36:52 -0700
X-CSE-ConnectionGUID: yud3qa4tQCmw2vjokqR9wQ==
X-CSE-MsgGUID: HSY7CgafQtCDEba52LH5TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="41960808"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 23:36:49 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 20 Jun 2024 09:36:45 +0300
Message-Id: <20240620063645.4151337-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718865413; x=1750401413;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Sc/4JsM9EbG0yvjqKflg7whe2R13zg9TO/lC9hPvzPY=;
 b=W7B3j6cQHvgH9p2tzcN0LHa204OPTnp0qALQ2EdcaWrHJnL7EDHD2Kof
 VFeb7hwcTropwHKeHI3mnpz96O6pGu9XHhdag/M5eMu7KbhbnbyyR7uRw
 oLpRNus+16MLkg1IJJuDExoT3qjUIji0iL/gVWEc39ZfQB06XvNDpgBAw
 fQX0QQRuKeVs5+jL6oNSlTeqt1GscVWF1GhYk7QW/a6yjomDcWySn5D/Q
 V4zaR71EYfwoTIYiDZgwtE4nKJlWTuduEbDwVl0VV+XTprmSaL7Qe2lPH
 ar3HkMt47oh7xKLLV+xALTGM5c+fwcfRsNtR65zauoPasHvXH+aNE9Qoc
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W7B3j6cQ
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix force smbus
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
Cc: hui.wang@canonical.com, Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Dieter Mummenschanz <dmummenschanz@web.de>,
 Todd Brandt <todd.e.brandt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 861e8086029e ("e1000e: move force SMBUS from enable ulp function
to avoid PHY loss issue") resolved a PHY access loss during suspend on
Meteor Lake consumer platforms, but it affected corporate systems
incorrectly.

A better fix, working for both consumer and corporate systems, was
proposed in commit bfd546a552e1 ("e1000e: move force SMBUS near the end
of enable_ulp function"). However, it introduced a regression on older
devices, such as [8086:15B8], [8086:15F9], [8086:15BE].

This patch aims to fix the secondary regression, by limiting the scope of
the changes to Meteor Lake platforms only.

Fixes: bfd546a552e1 ("e1000e: move force SMBUS near the end of enable_ulp function")
Reported-by: Todd Brandt <todd.e.brandt@intel.com>
Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218940
Reported-by: Dieter Mummenschanz <dmummenschanz@web.de>
Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218936
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
--
v2: enhance the function description and address community comments
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 73 +++++++++++++++------
 1 file changed, 53 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 2e98a2a0bead..86d4ae95b45a 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -137,6 +137,7 @@ static void e1000_gate_hw_phy_config_ich8lan(struct e1000_hw *hw, bool gate);
 static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force);
 static s32 e1000_setup_copper_link_pch_lpt(struct e1000_hw *hw);
 static s32 e1000_oem_bits_config_ich8lan(struct e1000_hw *hw, bool d0_state);
+static s32 e1000e_force_smbus(struct e1000_hw *hw);
 
 static inline u16 __er16flash(struct e1000_hw *hw, unsigned long reg)
 {
@@ -1108,6 +1109,46 @@ static s32 e1000_platform_pm_pch_lpt(struct e1000_hw *hw, bool link)
 	return 0;
 }
 
+/**
+ *  e1000e_force_smbus - Force interfaces to transition to SMBUS mode.
+ *  @hw: pointer to the HW structure
+ *
+ *  Force the MAC and the PHY to SMBUS mode. Assumes semaphore already
+ *  acquired.
+ *
+ * Return: 0 on success, negative errno on failure.
+ **/
+static s32 e1000e_force_smbus(struct e1000_hw *hw)
+{
+	u16 smb_ctrl = 0;
+	u32 ctrl_ext;
+	s32 ret_val;
+
+	/* Switching PHY interface always returns MDI error
+	 * so disable retry mechanism to avoid wasting time
+	 */
+	e1000e_disable_phy_retry(hw);
+
+	/* Force SMBus mode in the PHY */
+	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &smb_ctrl);
+	if (ret_val) {
+		e1000e_enable_phy_retry(hw);
+		return ret_val;
+	}
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
@@ -1165,6 +1206,14 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	if (ret_val)
 		goto out;
 
+	if (hw->mac.type != e1000_pch_mtp) {
+		ret_val = e1000e_force_smbus(hw);
+		if (ret_val) {
+			e_dbg("Failed to force SMBUS: %d\n", ret_val);
+			goto release;
+		}
+	}
+
 	/* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
 	 * LPLU and disable Gig speed when entering ULP
 	 */
@@ -1225,27 +1274,11 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
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
+			e_dbg("Failed to force SMBUS over MTL system: %d\n", ret_val);
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

