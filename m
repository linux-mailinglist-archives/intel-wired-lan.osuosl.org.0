Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FEB9F2C6B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 09:56:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B198960A70;
	Mon, 16 Dec 2024 08:56:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xgWJQFqrvOhs; Mon, 16 Dec 2024 08:56:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C85A60A8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734339397;
	bh=7XBhFjuiKa9d871HsjW+163EVRt+ySeND0phpvIDeoQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NVbwvNUIz4mHpS1I8JNtmKsT8YdaTEVtuElmoi3Lsd5WvuKtDb3DeHP+7MRSmaruk
	 sIv9QBB53WfRvRw6UIl+LFLvkDaAJHuBw8heGUDSjMN9gnwLDtpGcJz+jVzAejWjx5
	 gOQk5qqSekt3jictnXL9BLwBTYoNsCWB2C6Gq0UX4ewOu4vRZGXZqUvmv7JQBcBOCD
	 8/T3Bla+ZKO/D0EoZY93vMJj6BjyZwMQiSm03LvML6b0GAyQieNihu9umht5wcneC7
	 maKHLEGlyENQtE4E0bCZB9Ry/ofaGZXYTYddV+VK1+tHjtaQciYyfh30LLzl+alX3R
	 nhOgtjvvikR8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C85A60A8E;
	Mon, 16 Dec 2024 08:56:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 97743C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79B04814B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ff50UxRo5oRg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 08:56:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 87A668149B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87A668149B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 87A668149B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:34 +0000 (UTC)
X-CSE-ConnectionGUID: iz0a0VFTRpKt44JaDd8UqQ==
X-CSE-MsgGUID: g+Mc3KvzSKiQKz+/NfoHxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="34942405"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="34942405"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 00:56:34 -0800
X-CSE-ConnectionGUID: oZPnF/YQRcGeGmSriE8Gsg==
X-CSE-MsgGUID: 7pinSU8bTGSsgy+76NDc4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102117180"
Received: from host61.igk.intel.com ([10.123.220.61])
 by orviesa005.jf.intel.com with ESMTP; 16 Dec 2024 00:56:31 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Jacob Keller <jacob.e.keller@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Mon, 16 Dec 2024 09:53:30 -0500
Message-ID: <20241216145453.333745-4-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241216145453.333745-1-anton.nadezhdin@intel.com>
References: <20241216145453.333745-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734339395; x=1765875395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fuVZHtOl+7c5aI98YGEXenAHh+bJq65G+beDHxgrokA=;
 b=MbQs9VMce98OWVN1SoqOPmPl3zg/DK/RTWBE6Ks/DeAg/BB831JLWmR+
 PThg1E9yXv50kFG6zfsmR/+elge8Dv7lLfsIKR+zIVMPEIANi58HEMoyB
 L05fM6DCMVnQaxBfWGAsdRPgokpccf+jkCMIsYjccUTAoKIPrQOPqVmv4
 3Q5p0VMsG1RhDZcSU+HHnisuh/QgMdyYLyLP8M0qqem3tthyBAPb+TxGi
 Vp7qZn93yZxmglb2Gk+MoKlWjTyklzcqdSvKFidVQ7CIFjjNjNkU3y+kL
 JJ/waPCfAzSnFL88VsAqrzT0eoiAfanPJ3OD4t144+JLjheUajH04G2/3
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MbQs9VMc
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/5] ice: add lock to protect
 low latency interface
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

Newer firmware for the E810 devices support a 'low latency' interface to
interact with the PHY without using the Admin Queue. This is interacted
with via the REG_LL_PROXY_L and REG_LL_PROXY_H registers.

Currently, this interface is only used for Tx timestamps. There are two
different mechanisms, including one which uses an interrupt for firmware to
signal completion. However, these two methods are mutually exclusive, so no
synchronization between them was necessary.

This low latency interface is being extended in future firmware to support
also programming the PHY timers. Use of the interface for PHY timers will
need synchronization to ensure there is no overlap with a Tx timestamp.

The interrupt-based response complicates the locking somewhat. We can't use
a simple spinlock. This would require being acquired in
ice_ptp_req_tx_single_tstamp, and released in
ice_ptp_complete_tx_single_tstamp. The ice_ptp_req_tx_single_tstamp
function is called from the threaded IRQ, and the
ice_ptp_complete_tx_single_stamp is called from the low latency IRQ, so we
would need to acquire the lock with IRQs disabled.

To handle this, we'll use a wait queue along with
wait_event_interruptible_locked_irq in the update flows which don't use the
interrupt.

The interrupt flow will acquire the wait queue lock, set the
ATQBAL_FLAGS_INTR_IN_PROGRESS, and then initiate the firmware low latency
request, and unlock the wait queue lock.

Upon receipt of the low latency interrupt, the lock will be acquired, the
ATQBAL_FLAGS_INTR_IN_PROGRESS bit will be cleared, and the firmware
response will be captured, and wake_up_locked() will be called on the wait
queue.

The other flows will use wait_event_interruptible_locked_irq() to wait
until the ATQBAL_FLAGS_INTR_IN_PROGRESS is clear. This function checks the
condition under lock, but does not hold the lock while waiting. On return,
the lock is held, and a return of zero indicates we hold the lock and the
in-progress flag is not set.

This will ensure that threads which need to use the low latency interface
will sleep until they can acquire the lock without any pending low latency
interrupt flow interfering.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 42 +++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 18 +++++++++
 drivers/net/ethernet/intel/ice/ice_type.h   | 10 +++++
 3 files changed, 62 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0b3f6162068d..948c8b574c8e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -473,7 +473,9 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
  */
 void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
 {
+	struct ice_e810_params *params;
 	struct ice_ptp_port *ptp_port;
+	unsigned long flags;
 	struct sk_buff *skb;
 	struct ice_pf *pf;
 
@@ -482,6 +484,7 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
 
 	ptp_port = container_of(tx, struct ice_ptp_port, tx);
 	pf = ptp_port_to_pf(ptp_port);
+	params = &pf->hw.ptp.phy.e810;
 
 	/* Drop packets which have waited for more than 2 seconds */
 	if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) {
@@ -498,11 +501,17 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
 
 	ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
 
+	spin_lock_irqsave(&params->atqbal_wq.lock, flags);
+
+	params->atqbal_flags |= ATQBAL_FLAGS_INTR_IN_PROGRESS;
+
 	/* Write TS index to read to the PF register so the FW can read it */
 	wr32(&pf->hw, REG_LL_PROXY_H,
 	     REG_LL_PROXY_H_TS_INTR_ENA | FIELD_PREP(REG_LL_PROXY_H_TS_IDX, idx) |
 	     REG_LL_PROXY_H_EXEC);
 	tx->last_ll_ts_idx_read = idx;
+
+	spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
 }
 
 /**
@@ -513,35 +522,52 @@ void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx)
 {
 	struct skb_shared_hwtstamps shhwtstamps = {};
 	u8 idx = tx->last_ll_ts_idx_read;
+	struct ice_e810_params *params;
 	struct ice_ptp_port *ptp_port;
 	u64 raw_tstamp, tstamp;
 	bool drop_ts = false;
 	struct sk_buff *skb;
+	unsigned long flags;
+	struct device *dev;
 	struct ice_pf *pf;
-	u32 val;
+	u32 reg_ll_high;
 
 	if (!tx->init || tx->last_ll_ts_idx_read < 0)
 		return;
 
 	ptp_port = container_of(tx, struct ice_ptp_port, tx);
 	pf = ptp_port_to_pf(ptp_port);
+	dev = ice_pf_to_dev(pf);
+	params = &pf->hw.ptp.phy.e810;
 
 	ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
 
-	val = rd32(&pf->hw, REG_LL_PROXY_H);
+	spin_lock_irqsave(&params->atqbal_wq.lock, flags);
+
+	if (!(params->atqbal_flags & ATQBAL_FLAGS_INTR_IN_PROGRESS))
+		dev_dbg(dev, "%s: low latency interrupt request not in progress?\n",
+			__func__);
+
+	/* Read the low 32 bit value */
+	raw_tstamp = rd32(&pf->hw, REG_LL_PROXY_L);
+	/* Read the status together with high TS part */
+	reg_ll_high = rd32(&pf->hw, REG_LL_PROXY_H);
+
+	/* Wake up threads waiting on low latency interface */
+	params->atqbal_flags &= ~ATQBAL_FLAGS_INTR_IN_PROGRESS;
+
+	wake_up_locked(&params->atqbal_wq);
+
+	spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
 
 	/* When the bit is cleared, the TS is ready in the register */
-	if (val & REG_LL_PROXY_H_EXEC) {
+	if (reg_ll_high & REG_LL_PROXY_H_EXEC) {
 		dev_err(ice_pf_to_dev(pf), "Failed to get the Tx tstamp - FW not ready");
 		return;
 	}
 
 	/* High 8 bit value of the TS is on the bits 16:23 */
-	raw_tstamp = FIELD_GET(REG_LL_PROXY_H_TS_HIGH, val);
-	raw_tstamp <<= 32;
-
-	/* Read the low 32 bit value */
-	raw_tstamp |= (u64)rd32(&pf->hw, REG_LL_PROXY_L);
+	raw_tstamp |= ((u64)FIELD_GET(REG_LL_PROXY_H_TS_HIGH, reg_ll_high)) << 32;
 
 	/* Devices using this interface always verify the timestamp differs
 	 * relative to the last cached timestamp value.
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 2b0aba146750..7f646636adc2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -4882,9 +4882,22 @@ static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
 static int
 ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
 {
+	struct ice_e810_params *params = &hw->ptp.phy.e810;
+	unsigned long flags;
 	u32 val;
 	int err;
 
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
 	/* Write TS index to read to the PF register so the FW can read it */
 	val = FIELD_PREP(REG_LL_PROXY_H_TS_IDX, idx) | REG_LL_PROXY_H_EXEC;
 	wr32(hw, REG_LL_PROXY_H, val);
@@ -4895,6 +4908,7 @@ ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
 				       10, REG_LL_PROXY_H_TIMEOUT_US);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read PTP timestamp using low latency read\n");
+		spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
 		return err;
 	}
 
@@ -4904,6 +4918,8 @@ ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
 	/* Read the low 32 bit value and set the TS valid bit */
 	*lo = rd32(hw, REG_LL_PROXY_L) | TS_VALID;
 
+	spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
+
 	return 0;
 }
 
@@ -5331,6 +5347,8 @@ static void ice_ptp_init_phy_e810(struct ice_ptp_hw *ptp)
 {
 	ptp->num_lports = 8;
 	ptp->ports_per_phy = 4;
+
+	init_waitqueue_head(&ptp->phy.e810.atqbal_wq);
 }
 
 /* E830 functions
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index c7428339da2b..819dfff8370d 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -18,6 +18,7 @@
 #include "ice_sbq_cmd.h"
 #include "ice_vlan_mode.h"
 #include "ice_fwlog.h"
+#include <linux/wait.h>
 
 static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
 {
@@ -848,6 +849,14 @@ struct ice_mbx_data {
 #define ICE_PORTS_PER_QUAD	4
 #define ICE_GET_QUAD_NUM(port) ((port) / ICE_PORTS_PER_QUAD)
 
+#define ATQBAL_FLAGS_INTR_IN_PROGRESS	BIT(0)
+
+struct ice_e810_params {
+	/* The wait queue lock also protects the low latency interface */
+	wait_queue_head_t atqbal_wq;
+	unsigned int atqbal_flags;
+};
+
 struct ice_eth56g_params {
 	u8 num_phys;
 	bool onestep_ena;
@@ -856,6 +865,7 @@ struct ice_eth56g_params {
 };
 
 union ice_phy_params {
+	struct ice_e810_params e810;
 	struct ice_eth56g_params eth56g;
 };
 
-- 
2.42.0

