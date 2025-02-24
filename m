Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99518A41A6A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 11:12:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0486D8119C;
	Mon, 24 Feb 2025 10:12:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K7wNBG8O29Fj; Mon, 24 Feb 2025 10:12:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E5148119D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740391948;
	bh=yd8V0o3KsLLaZAsSXHEC4texoYKD3Zwy5E/oLsB3Ctg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LIJlcI1lfEPrhPyzm5DXJZg3UIdjoO0kdCbwSxt40LcJb2Vu8ctLM9SDX6e50C+GI
	 //wNPDTpOV5etU2ZOZWRX6Q/SkN9ILN/MU/A/0ZB7IfWZo56rN8k1jiKUGnGtDxFz8
	 5pcBMx8Yah+hRIZYjwj7bPsOrRzUJRASZqVvFhxm0k5kwWXwPHkNuyblyUBuPELQla
	 vNNcKZL+h5xgaVVzDclHQMqajGiDuogih7whU5NaXLuw1QbmHQbAjbZYknzfaeH2Oa
	 EfWOBvzrUT5Z3w91eHTjI1RbPeXZqysL9dSAkCC4Ddi41jG08bHUG8CtHqsA+RG0vJ
	 Y+i9hqOUSWFMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E5148119D;
	Mon, 24 Feb 2025 10:12:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CA47D920
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 10:12:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE0A88119B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 10:12:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DIs7GEjQ8f_E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 10:12:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F30A781195
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F30A781195
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F30A781195
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 10:12:24 +0000 (UTC)
X-CSE-ConnectionGUID: yiXAa8YZRJq6DekmkzXsbQ==
X-CSE-MsgGUID: FL3CJIgNRpyWVxctCihkNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="66512739"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="66512739"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:12:24 -0800
X-CSE-ConnectionGUID: HvESWMYcQbSATLt5qWr6RQ==
X-CSE-MsgGUID: yIjezuqBTzWLQSMI2cz0bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="115748157"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:12:23 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Mon, 24 Feb 2025 12:12:18 +0200
Message-Id: <20250224101218.1915949-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740391945; x=1771927945;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jl2Kb1C9MH1eZvMXQfrllevVELWZcZRip1S2XRn+FD4=;
 b=nbIAk7fNX4QpepmPSeqzIQyMlWwyKGRPMp6VeE00HUqbeODb+/ckvnm6
 D1yqfPlNi6fK69MSGKOsp2UfrLClpo2fL6STRkgDvWNFzsgP375zvfbus
 7NKaBWMy8e5dK+/+CCrSLvVaYC/+KBIoB2ANwbzn4D6jkNt071958Fc81
 ApcYmFqkQpjBBIAi1/22Fh1nhvXYgH6I+1C8kDRFXGPoUTYqAHKd1srkV
 IlytkzEJ6il1q1RE6Uc9PbAdbeW2UqDvNipeq/KOgUP8PHmqKm3IQBIUZ
 4V562NRWSKlVPMPcLIdrjm9cFAhjCqvnCk7foPgLl3+i4SdnYpXxldxzo
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nbIAk7fN
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: change k1 exit
 timeout on MTP and later platforms
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

LAN devices starting from Meteorlake the interface between the MAC and
the PHY has a different frequency.
This caused sporadic MDI errors when accessing the PHY and a rare case
of packets corruption. To overcome this introduce a PHY K1 exit timeout
reconfiguration in the init flow. The exit timeout is reverted during
the hardware reset, thus, it is required to be called in a few places.

Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 78 +++++++++++++++++++--
 drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++
 2 files changed, 78 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 2f9655cf5dd9..d3636433938e 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -285,6 +285,46 @@ static void e1000_toggle_lanphypc_pch_lpt(struct e1000_hw *hw)
 	}
 }
 
+/**
+ * e1000_reconfigure_k1_exit_timeout - reconfigure K1 exit timeout to
+ * align to MTP and later platform requirements.
+ * @hw: pointer to the HW structure
+ *
+ * Assuming that PHY semaphore is taken prior to this function call.
+ *
+ * Return: 0 on success, negative on failure
+ */
+static s32 e1000_reconfigure_k1_exit_timeout(struct e1000_hw *hw)
+{
+	u16 phy_timeout;
+	u32 fextnvm12;
+	s32 ret_val;
+
+	if (hw->mac.type < e1000_pch_mtp)
+		return 0;
+
+	/* Change Kumeran K1 power down state from P0s to P1 */
+	fextnvm12 = er32(FEXTNVM12);
+	fextnvm12 |= BIT(23);
+	fextnvm12 &= ~BIT(22);
+	ew32(FEXTNVM12, fextnvm12);
+
+	/* Wait for the interface the settle */
+	msleep(1);
+
+	/* Change K1 exit timeout */
+	ret_val = e1e_rphy_locked(hw, E1000_PHY_TIMEOUTS_REG,
+				  &phy_timeout);
+	if (ret_val)
+		return ret_val;
+
+	phy_timeout &= ~E1000_PHY_TIMEOUTS_K1_EXIT_TO_MASK;
+	phy_timeout |= 0xF00;
+
+	return e1e_wphy_locked(hw, E1000_PHY_TIMEOUTS_REG,
+				  phy_timeout);
+}
+
 /**
  *  e1000_init_phy_workarounds_pchlan - PHY initialization workarounds
  *  @hw: pointer to the HW structure
@@ -327,15 +367,23 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	 * LANPHYPC Value bit to force the interconnect to PCIe mode.
 	 */
 	switch (hw->mac.type) {
+	case e1000_pch_mtp:
+	case e1000_pch_lnp:
+	case e1000_pch_ptp:
+	case e1000_pch_nvp:
+		/* At this point the PHY might be inaccessible so don't
+		 * propagate the failure
+		 */
+		if (e1000_reconfigure_k1_exit_timeout(hw))
+			break;
+
+		fallthrough;
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
-	case e1000_pch_mtp:
-	case e1000_pch_lnp:
-	case e1000_pch_ptp:
-	case e1000_pch_nvp:
+
 		if (e1000_phy_is_accessible_pchlan(hw))
 			break;
 
@@ -421,6 +469,16 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 		ret_val = hw->phy.ops.check_reset_block(hw);
 		if (ret_val)
 			e_err("ME blocked access to PHY after reset\n");
+
+		if (hw->mac.type >= e1000_pch_mtp) {
+			ret_val = hw->phy.ops.acquire(hw);
+			if (ret_val) {
+				e_dbg("Failed to reconfigure K1 exit timeout\n");
+				goto out;
+			}
+			ret_val = e1000_reconfigure_k1_exit_timeout(hw);
+			hw->phy.ops.release(hw);
+		}
 	}
 
 out:
@@ -4888,6 +4946,18 @@ static s32 e1000_init_hw_ich8lan(struct e1000_hw *hw)
 	u16 i;
 
 	e1000_initialize_hw_bits_ich8lan(hw);
+	if (hw->mac.type >= e1000_pch_mtp) {
+		ret_val = hw->phy.ops.acquire(hw);
+		if (ret_val)
+			return ret_val;
+
+		ret_val = e1000_reconfigure_k1_exit_timeout(hw);
+		if (ret_val) {
+			e_dbg("Error failed to reconfigure K1 exit timeout\n");
+			return ret_val;
+		}
+		hw->phy.ops.release(hw);
+	}
 
 	/* Initialize identification LED */
 	ret_val = mac->ops.id_led_init(hw);
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.h b/drivers/net/ethernet/intel/e1000e/ich8lan.h
index 2504b11c3169..dffc63e89ee2 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.h
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.h
@@ -219,6 +219,10 @@
 #define I217_PLL_CLOCK_GATE_REG	PHY_REG(772, 28)
 #define I217_PLL_CLOCK_GATE_MASK	0x07FF
 
+/* PHY Timeouts */
+#define E1000_PHY_TIMEOUTS_REG                   PHY_REG(770, 21)
+#define E1000_PHY_TIMEOUTS_K1_EXIT_TO_MASK       0x0FC0
+
 #define SW_FLAG_TIMEOUT		1000	/* SW Semaphore flag timeout in ms */
 
 /* Inband Control */
-- 
2.34.1

