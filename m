Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D78B9EAA8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 09:25:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAB8180E58;
	Tue, 10 Dec 2024 08:25:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qti0I5uKIgB1; Tue, 10 Dec 2024 08:25:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F05880E52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733819117;
	bh=3KzpaaFGZb45UzF9c+1vLVQegALTfEFjiTjNKetrkFg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZOeQc2Xu1rhTaqb5gmsjcmaUA6HHM7vYcC0WTYbeYX0S2OcvbaEysUYnIJBGZKYI1
	 W2F61EHpp5E86SxA80n0Kh6wOl30BnRXrP7/bhORjV5Oh2LfmY+O8JwJYipYv/K36u
	 GBw7uuuNYZYpI5PLhYrBFmYcq3a3GMARaAxkXAJ0FhZx3Bab5XTGdprC8p8DiTKRNO
	 L8uxav5ci9KSJTtZIZqcRFGq/jq35S8VQUq7/GKKlML1SHOssGfS2gqsdig3+yu1I6
	 rPspyfJyBHWG3Hls7SiHDQbEURmyzJ+0UPMn9ksmkmry4+e21yLQOpz4bym7buSiVq
	 dOZ6sPoRP4cmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F05880E52;
	Tue, 10 Dec 2024 08:25:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DF4CEE11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE3EF40003
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m07TySjJj7Ro for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 08:25:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6C82140132
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C82140132
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C82140132
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:14 +0000 (UTC)
X-CSE-ConnectionGUID: l5rpUBxyQ2SKHgYyYA747g==
X-CSE-MsgGUID: VcZIsg7qQieRpxAUckbzOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34398268"
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="34398268"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 00:25:14 -0800
X-CSE-ConnectionGUID: /MKxZtWqQU2FulXHBluw3g==
X-CSE-MsgGUID: PmCEjWdfQE6VKWRY5Eu+Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="99398156"
Received: from host61.igk.intel.com ([10.123.220.61])
 by fmviesa003.fm.intel.com with ESMTP; 10 Dec 2024 00:25:12 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Tue, 10 Dec 2024 09:22:09 -0500
Message-ID: <20241210142333.320515-6-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241210142333.320515-1-anton.nadezhdin@intel.com>
References: <20241210142333.320515-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733819114; x=1765355114;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lLCurn+9VPbUyg8NhLSE6E/x1f4Ma6NA6uL5oiVMSds=;
 b=GpWk/zqkG+S7Ob2j6iiOF0y6dgXovHYu+Ne+e/skbZ8cmy7OeDROQxsB
 q39fYl26pYf2f5l5I2x33iYvf7YjS8u+Yb0fplITOwVnhG7NClN2pYU0G
 XodLDF8dX7g8M7sxKrBc69YjeD5PqJ5XglUNyhBLS2sNMg+8T+JR13/mm
 gfLeJkpJ9QUTArbdS0dvvp3+La+8n6CVYUeV+cAj3a9Cs5GTJz1m3c7Rl
 manAcrv6WndgtUmLXt97pGHjNZsu6pWAmxfO7K/CuYvnyxgRSEBsOPtyZ
 udeg4wI6IHwJDRPlrLGl8umWhhtof+C+bmjoT8hl18Qt2mqWmOzkkVAUF
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GpWk/zqk
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: implement low
 latency PHY timer updates
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

From: Jacob Keller <jacob.e.keller@intel.com>

Programming the PHY registers in preparation for an increment value change
or a timer adjustment on E810 requires issuing Admin Queue commands for
each PHY register. It has been found that the firmware Admin Queue
processing occasionally has delays of tens or rarely up to hundreds of
milliseconds. This delay cascades to failures in the PTP applications which
depend on these updates being low latency.

Consider a standard PTP profile with a sync rate of 16 times per second.
This means there is ~62 milliseconds between sync messages. A complete
cycle of the PTP algorithm

1) Sync message (with Tx timestamp) from source
2) Follow-up message from source
3) Delay request (with Tx timestamp) from sink
4) Delay response (with Rx timestamp of request) from source
5) measure instantaneous clock offset
6) request time adjustment via CLOCK_ADJTIME systemcall

The Tx timestamps have a default maximum timeout of 10 milliseconds. If we
assume that the maximum possible time is used, this leaves us with ~42
milliseconds of processing time for a complete cycle.

The CLOCK_ADJTIME system call is synchronous and will block until the
driver completes its timer adjustment or frequency change.

If the writes to prepare the PHY timers get hit by a latency spike of 50
milliseconds, then the PTP application will be delayed past the point where
the next cycle should start. Packets from the next cycle may have already
arrived and are waiting on the socket.

In particular, LinuxPTP ptp4l may start complaining about missing an
announce message from the source, triggering a fault. In addition, the
clockcheck logic it uses may trigger. This clockcheck failure occurs
because the timestamp captured by hardware is compared against a reading of
CLOCK_MONOTONIC. It is assumed that the time when the Rx timestamp is
captured and the read from CLOCK_MONOTONIC are relatively close together.
This is not the case if there is a significant delay to processing the Rx
packet.

Newer firmware supports programming the PHY registers over a low latency
interface which bypasses the Admin Queue. Instead, software writes to the
REG_LL_PROXY_L and REG_LL_PROXY_H registers. Firmware reads these registers
and then programs the PHY timers.

Implement functions to use this interface when available to program the PHY
timers instead of using the Admin Queue. This avoids the Admin Queue
latency and ensures that adjustments happen within acceptable latency
bounds.

Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 105 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   4 +
 2 files changed, 109 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index b068a2409b82..85395866b74e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -5087,6 +5087,55 @@ static int ice_ptp_prep_phy_time_e810(struct ice_hw *hw, u32 time)
 	return 0;
 }
 
+/**
+ * ice_ptp_prep_phy_adj_ll_e810 - Prep PHY ports for a time adjustment
+ * @hw: pointer to HW struct
+ * @adj: adjustment value to program
+ *
+ * Use the low latency firmware interface to program PHY time adjustment to
+ * all PHY ports.
+ *
+ * Return: 0 on success, -EBUSY on timeout
+ */
+static int ice_ptp_prep_phy_adj_ll_e810(struct ice_hw *hw, s32 adj)
+{
+	const u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+	struct ice_e810_params *params = &hw->ptp.phy.e810;
+	unsigned long flags;
+	u32 val;
+	int err;
+
+	spin_lock_irqsave(&params->atqbal_wq.lock, flags);
+
+	/* Wait for any pending in-progress low latency interrupt */
+	err = wait_event_interruptible_locked_irq(params->atqbal_wq,
+						  !(params->atqbal_flags &
+						    ATQBAL_FLAGS_INTR_IN_PROGRESS));
+	if (err) {
+		spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
+		return err;
+	}
+
+	wr32(hw, PF_SB_ATQBAH, adj);
+	val = FIELD_PREP(REG_LL_PROXY_H_PHY_TMR_CMD_M, REG_LL_PROXY_H_PHY_TMR_CMD_ADJ) |
+	      FIELD_PREP(REG_LL_PROXY_H_PHY_TMR_IDX_M, tmr_idx) | REG_LL_PROXY_H_EXEC;
+	wr32(hw, PF_SB_ATQBAL, val);
+
+	/* Read the register repeatedly until the FW indicates completion */
+	err = rd32_poll_timeout_atomic(hw, PF_SB_ATQBAL, val,
+				       !FIELD_GET(REG_LL_PROXY_H_EXEC, val),
+				       10, REG_LL_PROXY_H_TIMEOUT_US);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY timer adjustment using low latency interface\n");
+		spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
+		return err;
+	}
+
+	spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
+
+	return 0;
+}
+
 /**
  * ice_ptp_prep_phy_adj_e810 - Prep PHY port for a time adjustment
  * @hw: pointer to HW struct
@@ -5105,6 +5154,9 @@ static int ice_ptp_prep_phy_adj_e810(struct ice_hw *hw, s32 adj)
 	u8 tmr_idx;
 	int err;
 
+	if (hw->dev_caps.ts_dev_info.ll_phy_tmr_update)
+		return ice_ptp_prep_phy_adj_ll_e810(hw, adj);
+
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
 	/* Adjustments are represented as signed 2's complement values in
@@ -5127,6 +5179,56 @@ static int ice_ptp_prep_phy_adj_e810(struct ice_hw *hw, s32 adj)
 	return 0;
 }
 
+/**
+ * ice_ptp_prep_phy_incval_ll_e810 - Prep PHY ports increment value change
+ * @hw: pointer to HW struct
+ * @incval: The new 40bit increment value to prepare
+ *
+ * Use the low latency firmware interface to program PHY time increment value
+ * for all PHY ports.
+ *
+ * Return: 0 on success, -EBUSY on timeout
+ */
+static int ice_ptp_prep_phy_incval_ll_e810(struct ice_hw *hw, u64 incval)
+{
+	const u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+	struct ice_e810_params *params = &hw->ptp.phy.e810;
+	unsigned long flags;
+	u32 val;
+	int err;
+
+	spin_lock_irqsave(&params->atqbal_wq.lock, flags);
+
+	/* Wait for any pending in-progress low latency interrupt */
+	err = wait_event_interruptible_locked_irq(params->atqbal_wq,
+						  !(params->atqbal_flags &
+						    ATQBAL_FLAGS_INTR_IN_PROGRESS));
+	if (err) {
+		spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
+		return err;
+	}
+
+	wr32(hw, PF_SB_ATQBAH, lower_32_bits(incval));
+	val = FIELD_PREP(REG_LL_PROXY_H_PHY_TMR_CMD_M, REG_LL_PROXY_H_PHY_TMR_CMD_FREQ) |
+	      FIELD_PREP(REG_LL_PROXY_H_TS_HIGH, (u8)upper_32_bits(incval)) |
+	      FIELD_PREP(REG_LL_PROXY_H_PHY_TMR_IDX_M, tmr_idx) | REG_LL_PROXY_H_EXEC;
+	wr32(hw, PF_SB_ATQBAL, val);
+
+	/* Read the register repeatedly until the FW indicates completion */
+	err = rd32_poll_timeout_atomic(hw, PF_SB_ATQBAL, val,
+				       !FIELD_GET(REG_LL_PROXY_H_EXEC, val),
+				       10, REG_LL_PROXY_H_TIMEOUT_US);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY timer increment using low latency interface\n");
+		spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
+		return err;
+	}
+
+	spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
+
+	return 0;
+}
+
 /**
  * ice_ptp_prep_phy_incval_e810 - Prep PHY port increment value change
  * @hw: pointer to HW struct
@@ -5142,6 +5244,9 @@ static int ice_ptp_prep_phy_incval_e810(struct ice_hw *hw, u64 incval)
 	u8 tmr_idx;
 	int err;
 
+	if (hw->dev_caps.ts_dev_info.ll_phy_tmr_update)
+		return ice_ptp_prep_phy_incval_ll_e810(hw, incval);
+
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 	low = lower_32_bits(incval);
 	high = upper_32_bits(incval);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 71097eb67d54..ba722cbcf694 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -695,7 +695,11 @@ static inline bool ice_is_dual(struct ice_hw *hw)
 
 /* Tx timestamp low latency read definitions */
 #define REG_LL_PROXY_H_TIMEOUT_US	2000
+#define REG_LL_PROXY_H_PHY_TMR_CMD_M	GENMASK(7, 6)
+#define REG_LL_PROXY_H_PHY_TMR_CMD_ADJ	0x1
+#define REG_LL_PROXY_H_PHY_TMR_CMD_FREQ	0x2
 #define REG_LL_PROXY_H_TS_HIGH		GENMASK(23, 16)
+#define REG_LL_PROXY_H_PHY_TMR_IDX_M	BIT(24)
 #define REG_LL_PROXY_H_TS_IDX		GENMASK(29, 24)
 #define REG_LL_PROXY_H_TS_INTR_ENA	BIT(30)
 #define REG_LL_PROXY_H_EXEC		BIT(31)
-- 
2.42.0

