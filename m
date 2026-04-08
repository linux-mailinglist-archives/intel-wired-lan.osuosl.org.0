Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0A/4Dsui1mlUGwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 20:47:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E62C3C18D7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 20:47:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06FD660FB8;
	Wed,  8 Apr 2026 18:47:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6djodoxeokvi; Wed,  8 Apr 2026 18:47:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 458C860FBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775674053;
	bh=wreccUWT3Y7amBuFWDtp289iwVXzI2jyb2wO5DEAiIg=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3mTnziZNSJNzfjaCJejGiPJ4hosgaqmEFan9E/VzhPbzg13HRHmACNiZlIEk/EWna
	 +pAFUIOhue19jvlj6+9tvaIzDDBxueO+aa8V4L8JEkl78yMYi9Adh4u3b8m7PbVMsW
	 Eq6EUBnsxlxjkhsoV1iwqrObdGsRvbIRVBt/ZVRNMDuQhF+XuGzhJPlSaqwUhmeqTh
	 x5noxAWZqS7pJAL03qjpHllbxMch3g9YFM2RuGVKzyMPqK9emwCdzBXBSN0IT4JVio
	 aNAo1tiMfZ6rLX3nQgi+ZllFLgFEXRyc04E3aBmtQbz1ASIXpha35M6dEe1/EgKR17
	 c2nzT0qcTk6LQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 458C860FBA;
	Wed,  8 Apr 2026 18:47:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 252032C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 321BA60F9D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ia1RTNmCMVBj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 18:47:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 55E4960F9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55E4960F9E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55E4960F9E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:29 +0000 (UTC)
X-CSE-ConnectionGUID: TRBBdGJ4Sr+/bbKIZB5vlQ==
X-CSE-MsgGUID: j91NgwDjT5SWU0uWoUzpqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75841388"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="75841388"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:47:28 -0700
X-CSE-ConnectionGUID: FRoW3OlKTziqQuFi5B+DPQ==
X-CSE-MsgGUID: IGPAORRwQqyMVvyFrnfV7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="230217563"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:47:27 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 08 Apr 2026 11:46:32 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260408-jk-even-more-e825c-fixes-v1-2-b959da91a81f@intel.com>
References: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
In-Reply-To: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
X-Mailer: b4 0.16-dev-306a9
X-Developer-Signature: v=1; a=openpgp-sha256; l=7639;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=tvvenahFztgo1FeA+D0zmawzjSttw0Lv5ZsSN3NC/+o=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhsxri/aEeG/kuXRq0lIeWc57atOaIx/NOmCkdIAjbvql3
 tmx32ynd5SyMIhxMciKKbIoOISsvG48IUzrjbMczBxWJpAhDFycAjCRyesY/vuvUlssafVr18Mv
 ChOXLZyjzMVe+kS9bPfK4O3Zh05f0vrG8D+1I/T224XTZ+ect/zP0WfTuvgbO4fdJmmRc/Vafee
 MEzgA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775674049; x=1807210049;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=b9RwiRxpk38kPQPs+FH1DQizAozd96iPnz/ykGFJxI8=;
 b=Kr71/8yfPmcgIJgvA/pZe+EUOofH+1/obQ28CvVeC+f/G1DSUoIICMgn
 /dDXS8l1B1db9jeE82x1mPpDZBKl/y7hBuUuq66WMI1Jy0uWaj5D1JlZa
 dHLWpUrd9SEQ0wI1wLxGG+tm3FgQma8yJL5xkx/7KuuKi5cc2rti4zVdU
 5ugY6WoG4GPVcKERMksvFlmo8y4hb9Ieu1As8WqjjNhKtdn+34cQBOtYh
 LmP9KkP1xa5VM1CF1qR2egcaruXty0b8BrBaDHsN0pr+foULmmwRkw2sc
 idZyiCV2d7GboS7zbzTG4ENMwfiNdBVxWpZVK6c29HXwg5hhnorn1z3j6
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kr71/8yf
Subject: [Intel-wired-lan] [PATCH iwl-net 2/4] ice: perform PHY soft reset
 for E825C ports at initialization
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:timothy.miskell@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7E62C3C18D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

In some cases the PHY timestamp block of the E825C can become stuck. This
is known to occur if the software writes 0 to the Tx timestamp threshold,
and with older versions of the ice driver the threshold configuration is
buggy and can race in such that hardware briefly operates with a zero
threshold enabled. There are no other known ways to trigger this behavior,
but once it occurs, the hardware is not recovered by normal reset, a driver
reload, or even a warm power cycle of the system. A cold power cycle is
sufficient to recover hardware, but this is extremely invasive and can
result in significant downtime on customer deployments.

The PHY for each port has a timestamping block which has its own reset
functionality accessible by programming the PHY_REG_GLOBAL register.
Writing to the PHY_REG_GLOBAL_SOFT_RESET_BIT triggers the hardware to
perform a complete reset of the timestamping block of the PHY. This
includes clearing the timestamp status for the port, clearing all
outstanding timestamps in the memory bank, and resetting the PHY timer.

The new ice_ptp_phy_soft_reset_eth56g() function toggles the
PHY_REG_GLOBAL soft reset bit with the required delays, ensuring the
PHY is properly reinitialized without requiring a full device reset.
The sequence clears the reset bit, asserts it, then clears it again,
with short waits between transitions to allow hardware stabilization.

Call this function in the new ice_ptp_init_phc_e825c(), implementing the
E825C device specific variant of the ice_ptp_init_phc(). Note that if
ice_ptp_init_phc() fails, PTP functionality may be disabled, but the driver
will still load to allow basic functionality to continue.

This causes the clock owning PF driver to perform a PHY soft reset for
every port during initialization. This ensures the driver begins life in a
known functional state regardless of how it was previously programmed.

This ensures that we properly reconfigure the hardware after a device reset
or when loading the driver, even if it was previously misconfigured with an
out-of-date or modified driver.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Signed-off-by: Timothy Miskell <timothy.miskell@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  4 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 90 ++++++++++++++++++++++++++++-
 2 files changed, 93 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 5896b346e579..9d7acc7eb2ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -374,6 +374,7 @@ int ice_stop_phy_timer_eth56g(struct ice_hw *hw, u8 port, bool soft_reset);
 int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port);
 int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold);
 int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
+int ice_ptp_phy_soft_reset_eth56g(struct ice_hw *hw, u8 port);
 
 #define ICE_ETH56G_NOMINAL_INCVAL	0x140000000ULL
 #define ICE_ETH56G_NOMINAL_PCS_REF_TUS	0x100000000ULL
@@ -676,6 +677,9 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define ICE_P0_GNSS_PRSNT_N	BIT(4)
 
 /* ETH56G PHY register addresses */
+#define PHY_REG_GLOBAL			0x0
+#define PHY_REG_GLOBAL_SOFT_RESET_M	BIT(11)
+
 /* Timestamp PHY incval registers */
 #define PHY_REG_TIMETUS_L		0x8
 #define PHY_REG_TIMETUS_U		0xC
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 67775beb9449..441b5f10e4bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -377,6 +377,31 @@ static void ice_ptp_cfg_sync_delay(const struct ice_hw *hw, u32 delay)
  * The following functions operate on devices with the ETH 56G PHY.
  */
 
+/**
+ * ice_ptp_init_phc_e825c - Perform E825C specific PHC initialization
+ * @hw: pointer to HW struct
+ *
+ * Perform E825C-specific PTP hardware clock initialization steps.
+ *
+ * Return: 0 on success, or a negative error value on failure.
+ */
+static int ice_ptp_init_phc_e825c(struct ice_hw *hw)
+{
+	int err;
+
+	/* Soft reset all ports, to ensure everything is at a clean state */
+	for (int port = 0; port < hw->ptp.num_lports; port++) {
+		err = ice_ptp_phy_soft_reset_eth56g(hw, port);
+		if (err) {
+			ice_debug(hw, ICE_DBG_PTP, "Failed to soft reset port %d, err %d\n",
+				  port, err);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_ptp_get_dest_dev_e825 - get destination PHY for given port number
  * @hw: pointer to the HW struct
@@ -2179,6 +2204,69 @@ int ice_ptp_read_tx_hwtstamp_status_eth56g(struct ice_hw *hw, u32 *ts_status)
 	return 0;
 }
 
+/**
+ * ice_ptp_phy_soft_reset_eth56g - Perform a PHY soft reset on ETH56G
+ * @hw: pointer to the HW structure
+ * @port: PHY port number
+ *
+ * Trigger a soft reset of the ETH56G PHY by toggling the soft reset
+ * bit in the PHY global register. The reset sequence consists of:
+ *   1. Clearing the soft reset bit
+ *   2. Asserting the soft reset bit
+ *   3. Clearing the soft reset bit again
+ *
+ * Short delays are inserted between each step to allow the hardware
+ * to settle. This provides a controlled way to reinitialize the PHY
+ * without requiring a full device reset.
+ *
+ * Return: 0 on success, or a negative error code on failure when
+ *         reading or writing the PHY register.
+ */
+int ice_ptp_phy_soft_reset_eth56g(struct ice_hw *hw, u8 port)
+{
+	u32 global_val;
+	int err;
+
+	err = ice_read_ptp_reg_eth56g(hw, port, PHY_REG_GLOBAL, &global_val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read PHY_REG_GLOBAL for port %d, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	global_val &= ~PHY_REG_GLOBAL_SOFT_RESET_M;
+	ice_debug(hw, ICE_DBG_PTP, "Clearing soft reset bit for port %d, val: 0x%x\n",
+		  port, global_val);
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_GLOBAL, global_val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write PHY_REG_GLOBAL for port %d, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	usleep_range(5000, 6000);
+
+	global_val |= PHY_REG_GLOBAL_SOFT_RESET_M;
+	ice_debug(hw, ICE_DBG_PTP, "Set soft reset bit for port %d, val: 0x%x\n",
+		  port, global_val);
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_GLOBAL, global_val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write PHY_REG_GLOBAL for port %d, err %d\n",
+			  port, err);
+		return err;
+	}
+	usleep_range(5000, 6000);
+
+	global_val &= ~PHY_REG_GLOBAL_SOFT_RESET_M;
+	ice_debug(hw, ICE_DBG_PTP, "Clear soft reset bit for port %d, val: 0x%x\n",
+		  port, global_val);
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_GLOBAL, global_val);
+	if (err)
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write PHY_REG_GLOBAL for port %d, err %d\n",
+			  port, err);
+	return err;
+}
+
 /**
  * ice_get_phy_tx_tstamp_ready_eth56g - Read the Tx memory status register
  * @hw: pointer to the HW struct
@@ -5591,7 +5679,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	case ICE_MAC_GENERIC:
 		return ice_ptp_init_phc_e82x(hw);
 	case ICE_MAC_GENERIC_3K_E825:
-		return 0;
+		return ice_ptp_init_phc_e825c(hw);
 	default:
 		return -EOPNOTSUPP;
 	}

-- 
2.53.0.1066.g1eceb487f285

