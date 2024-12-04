Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A29F9E3F3C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 17:08:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C44CD60E58;
	Wed,  4 Dec 2024 16:08:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PmnPMf2mcR5z; Wed,  4 Dec 2024 16:08:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A25CE6074A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733328516;
	bh=ln0uztFpoynIX/xiiqdNdHM79cEzInAJlikfAYLVQvA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hDxivMx3mgk54p+LMLBlqh10OkgiX04sihe100XHlbcg9twhrYXLkD+aVSgtK+vAA
	 kx2QOyFSwFjypLoLO8Vl5FTC3S6hVm5h779oCLI3hHDGhgoJLOw7Nps5yCHq9yHhj9
	 hMhhkDjIVd8ZowVxyxrFPDzFc6WTs351oDqgdBhwajyCV6xjSBIrot+XMFiQyctg7w
	 MZhizdujCZB0W0eZUcBrj2+23ttvj7QzTAup6aYO6vgJMh/INV47kmNQ3tIRyWSU1d
	 ZpsQG8AkyV6hVeQDd1xM6UG5eJJXkhxgQbXoLXV05AP6U39dQV2fmsWlkb+LuEst+p
	 o5boc0fKbmhnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A25CE6074A;
	Wed,  4 Dec 2024 16:08:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 55BB61DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 421FB4004A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2qTmX-8AOAlh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 12:09:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D9026400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9026400D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D9026400D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:21 +0000 (UTC)
X-CSE-ConnectionGUID: wyvyBjPVQ12Xdq5a3f5srQ==
X-CSE-MsgGUID: 8DHZWc6uR+CvO5+BBZy42g==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="32918459"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="32918459"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 04:09:21 -0800
X-CSE-ConnectionGUID: 3h5GCUVRTCaVZXIgrIVYEQ==
X-CSE-MsgGUID: /W+EP+6AR7yZzQOEgTjBwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="116994615"
Received: from host61.igk.intel.com ([10.123.220.61])
 by fmviesa002.fm.intel.com with ESMTP; 04 Dec 2024 04:09:19 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Wed,  4 Dec 2024 13:03:48 -0500
Message-ID: <20241204180709.307607-6-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241204180709.307607-1-anton.nadezhdin@intel.com>
References: <20241204180709.307607-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 04 Dec 2024 16:08:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733314162; x=1764850162;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5234EUEDHwu1OLqx0wWYyHaKv+1kk8kMxX02Io9S3tI=;
 b=lJn9CKJLzZE+DZe3iRW+ntuVKsQAG0eg8tzrxoUvgFwlD6WRjuXwIAtL
 XiwPad6hN9XRx3016NVazukoM1TPZDVLKOhbnPRzKP7Dp//2aZP/YaQq1
 gwf1nl0KalKAUnNDuch/X9f2bYvzjHuBZBU6wL+DRoNTpDk5BTNr+T09u
 QGyAi31j8P2Xg+b8hsVPd9ZjYTeEoogovLTbzG/HydQlQGDrOjti39yKF
 hpLeJlf3F3J+dwAFvMaiLAIfdrFSfWjwNLT22fb1NOlMwImoWP8Yg+ig8
 H9fGhfV7mIQOe9E4D96edLN6Pv8h09WR8KyEky9uMpl3358KyqfA4UcTT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lJn9CKJL
Subject: [Intel-wired-lan] [PATCH iwl-next 5/5] ice: implement low latency
 PHY timer updates
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
index d4c831b6eb6d..d1d7b96ee39a 100644
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

