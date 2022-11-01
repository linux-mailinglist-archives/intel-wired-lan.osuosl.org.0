Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE94615556
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 23:54:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A3B740644;
	Tue,  1 Nov 2022 22:54:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A3B740644
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667343244;
	bh=7/zzCyJKdO9IIdXHlrO8E7CtrNxH05rkFFbLs8ZRM/4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pWr9687ksa5/CTyUE+TmweoZQO7aekjXzgLM9tLy65eEwiGZIMIwS1U3qA6cwTOQp
	 oTTXJgFI90pOM9GviowvoGotI2/afSAkAERmfJaoB9RsJ8oZRZabxGHf7xflc0jsEe
	 yCirY7YTXoUb9ONTqItqARJjVnEylNvudiMuokTdcxf5ISmFeADUfnwBaMoTJYA41r
	 H7cAS1AKNw/c/wBm2bkxRoWW+xYbl3UYiJu9F0ejOcyKqoCihWCcXiZmDJzUqL3M7D
	 Z1I4Z1spktelGEbDU2ITU1lsvMggOcFhIkA55a+zIsdkuTWS2P+BPXRUyv/a33JpuG
	 fSGp99zrd3Duw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H36os3iyqRug; Tue,  1 Nov 2022 22:54:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A87DD40141;
	Tue,  1 Nov 2022 22:54:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A87DD40141
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 325261BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB382408BA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB382408BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Drnt1twtI5nW for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A66E4408B7
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A66E4408B7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371348113"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371348113"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="723324035"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="723324035"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  1 Nov 2022 15:52:32 -0700
Message-Id: <20221101225240.421525-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221101225240.421525-1-jacob.e.keller@intel.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667343191; x=1698879191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3fNbhfrChoKnuiYS/8VyS+NRr45PURr0RTO8POAw7Go=;
 b=IeeU4N81JTX1P43lo3Ade/f1plt0kCFQIR6a5qA1RWVPDRQ+EuJPLdhj
 vAjT0A2y7pkigNNXvTP0QjcjSPb7ADfy2CUpRIAUtnyYEZSNmxMB/M+l/
 WmpYqHBaROUw+TC3m4rqWlQZ1+lpX171A8+ceatlSbMZVQtm0m+DidCEN
 l27gPmoYOcCj4sIDJfrBwOGqSjSbzaFZug/ETbD5gZWVXhv8rmBCfjt5m
 HojTFAuAymRzmrhqyeNHLrwWMcSOUpmUgN2FQWW98YHbhjUwBAKYAQs0l
 nL7Qz/h0qDPxxa/rSG5fFQQb5opBDy2nsf1C5M3CKjJ5hHTKgR+F7j0d4
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IeeU4N81
Subject: [Intel-wired-lan] [PATCH net-next 07/15] ice: check Tx timestamp
 memory register for ready timestamps
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

The PHY for e822 based hardware has a register which indicates which
timestamps are valid in the PHY timestamp memory block. Each bit in the
register indicates whether the associated index in the timestamp memory is
valid.

Hardware sets this bit when the timestamp is captured, and clears the bit
when the timestamp is read. Use of this register is important as reading
timestamp registers can impact the way that hardware generates timestamp
interrupts.

This occurs because the PHY has an internal value which is incremented
when hardware captures a timestamp and decremented when software reads a
timestamp. Reading timestamps which are not marked as valid still decrement
the internal value and can result in the Tx timestamp interrupt not
triggering in the future.

To prevent this, use the timestamp memory value to determine which
timestamps are ready to be read. The ice_get_phy_tx_tstamp_ready function
reads this value. For e810 devices, this just always returns with all bits
set.

Skip any timestamp which is not set in this bitmap, avoiding reading extra
timestamps on e822 devices.

Modify the stale check to apply only to e810 devices. It is not necessary
for e822 devices because the timestamp memory register will prevent us from
reading a stale timestamp.

Modify the ICE_PTP_TS_VALID check to simply drop the timestamp immediately
so that in an event of getting such an invalid timestamp the driver does
not attempt to re-read the timestamp again in a future poll of the
register.

With these changes, the driver now reads each timestamp register exactly
once, and does not attempt any re-reads. This ensures the interrupt
tracking logic in the PHY will not get stuck.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 41 ++++++++++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 72 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
 3 files changed, 108 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ebe910326963..39c68a272c6a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -655,6 +655,9 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	struct ice_ptp_port *ptp_port;
 	bool ts_handled = true;
 	struct ice_pf *pf;
+	struct ice_hw *hw;
+	u64 tstamp_ready;
+	int err;
 	u8 idx;
 
 	if (!tx->init)
@@ -662,6 +665,12 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 
 	ptp_port = container_of(tx, struct ice_ptp_port, tx);
 	pf = ptp_port_to_pf(ptp_port);
+	hw = &pf->hw;
+
+	/* Read the Tx ready status first */
+	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
+	if (err)
+		return false;
 
 	for_each_set_bit(idx, tx->in_use, tx->len) {
 		struct skb_shared_hwtstamps shhwtstamps = {};
@@ -669,7 +678,6 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 		u64 raw_tstamp, tstamp;
 		bool drop_ts = false;
 		struct sk_buff *skb;
-		int err;
 
 		/* Drop packets which have waited for more than 2 seconds */
 		if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) {
@@ -677,24 +685,45 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 
 			/* Count the number of Tx timestamps that timed out */
 			pf->ptp.tx_hwtstamp_timeouts++;
+		}
 
-			goto skip_ts_read;
+		/* Only read a timestamp from the PHY if its marked as ready
+		 * by the tstamp_ready register. This avoids unnecessary
+		 * reading of timestamps which are not yet valid. This is
+		 * important as we must read all timestamps which are valid
+		 * and only timestamps which are valid during each interrupt.
+		 * If we do not, the hardware logic for generating a new
+		 * interrupt can get stuck on some devices.
+		 */
+		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
+			if (drop_ts)
+				goto skip_ts_read;
+			else
+				continue;
 		}
 
 		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
 
-		err = ice_read_phy_tstamp(&pf->hw, tx->block, phy_idx,
-					  &raw_tstamp);
+		err = ice_read_phy_tstamp(hw, tx->block, phy_idx, &raw_tstamp);
 		if (err)
 			continue;
 
 		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
 
-		/* Check if the timestamp is invalid or stale */
-		if (!(raw_tstamp & ICE_PTP_TS_VALID) ||
+		/* For e810 hardware, the tstamp_ready bitmask does not
+		 * indicate whether a timestamp is ready. Instead, we check to
+		 * make sure the timestamp is different from the previous
+		 * cached value. If it is not, we need to re-read the
+		 * timestamp later until we get a valid value.
+		 */
+		if (!drop_ts && ice_is_e810(hw) &&
 		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
 			continue;
 
+		/* Discard any timestamp value without the valid bit set */
+		if (!(raw_tstamp & ICE_PTP_TS_VALID))
+			drop_ts = true;
+
 skip_ts_read:
 		spin_lock(&tx->lock);
 		tx->tstamps[idx].cached_tstamp = raw_tstamp;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 6c149b88c235..55bbe76ce0bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2417,6 +2417,43 @@ int ice_phy_calc_vernier_e822(struct ice_hw *hw, u8 port)
 	return 0;
 }
 
+/**
+ * ice_get_phy_tx_tstamp_ready_e822 - Read Tx memory status register
+ * @hw: pointer to the HW struct
+ * @quad: the timestamp quad to read from
+ * @tstamp_ready: contents of the Tx memory status register
+ *
+ * Read the Q_REG_TX_MEMORY_STATUS register indicating which timestamps in
+ * the PHY are ready. A set bit means the corresponding timestamp is valid and
+ * ready to be captured from the PHY timestamp block.
+ */
+static int
+ice_get_phy_tx_tstamp_ready_e822(struct ice_hw *hw, u8 quad, u64 *tstamp_ready)
+{
+	u32 hi, lo;
+	int err;
+
+	err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEMORY_STATUS_U,
+					&hi);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_MEMORY_STATUS_U for quad %u, err %d\n",
+			  quad, err);
+		return err;
+	}
+
+	err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEMORY_STATUS_L,
+					&lo);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_MEMORY_STATUS_L for quad %u, err %d\n",
+			  quad, err);
+		return err;
+	}
+
+	*tstamp_ready = (u64)hi << 32 | (u64)lo;
+
+	return 0;
+}
+
 /* E810 functions
  *
  * The following functions operate on the E810 series devices which use
@@ -3091,6 +3128,21 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 		return ice_clear_phy_tstamp_e822(hw, block, idx);
 }
 
+/* ice_get_phy_tx_tstamp_ready_e810 - Read Tx memory status register
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to read
+ * @tstamp_ready: contents of the Tx memory status register
+ *
+ * E810 devices do not use a Tx memory status register. Instead simply
+ * indicate that all timestamps are currently ready.
+ */
+static int
+ice_get_phy_tx_tstamp_ready_e810(struct ice_hw *hw, u8 port, u64 *tstamp_ready)
+{
+	*tstamp_ready = 0xFFFFFFFFFFFFFFFF;
+	return 0;
+}
+
 /* E810T SMA functions
  *
  * The following functions operate specifically on E810T hardware and are used
@@ -3306,3 +3358,23 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	else
 		return ice_ptp_init_phc_e822(hw);
 }
+
+/* ice_get_phy_tx_tstamp_ready - Read PHY Tx memory status indication
+ * @hw: pointer to the HW struct
+ * @block: the timestamp block to check
+ * @tstamp_ready: storage for the PHY Tx memory status information
+ *
+ * Check the PHY for Tx timestamp memory status. This reports a 64 bit value
+ * which indicates which timestamps in the block may be captured. A set bit
+ * means the timestamp can be read. An unset bit means the timestamp is not
+ * ready and software should avoid reading the register.
+ */
+int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
+{
+	if (ice_is_e810(hw))
+		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
+							tstamp_ready);
+	else
+		return ice_get_phy_tx_tstamp_ready_e822(hw, block,
+							tstamp_ready);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index b0cd73aaac6b..b781dadf5a39 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -135,6 +135,7 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp);
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
 void ice_ptp_reset_ts_memory(struct ice_hw *hw);
 int ice_ptp_init_phc(struct ice_hw *hw);
+int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
 
 /* E822 family functions */
 int ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val);
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
