Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D11DA6A6FD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Mar 2025 14:19:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8CBC83EC4;
	Thu, 20 Mar 2025 13:19:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dW-CyvTGQ2Ph; Thu, 20 Mar 2025 13:19:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 900A883EC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742476786;
	bh=6KpXSlJm9v5gKzzXKJHXh0gYtkj4fOuTaXkRZrotrkM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zq0nKz0R5Idu9dteP6YCgED5akEmkIW0vnilKXrJ3DQNTGLlHNx9V7teUlgi76xBF
	 sAMw+1hRgweUTZlIvX5OaX4pAJq7jQn7RCvaHkJkrvRfFYuc1yC5FOKetsrMfVv+VP
	 uT2CfF8YE3/EKAnYVM6r/lcjxDhlS4ZqGb91gVfn7xxaYb4LA4HH+90aH4DIBm34ro
	 wSkSdCVrwoN7wWuleokDegyxj84ONH2GrwEHNERlG7FE8LrJQvec63ZPz7w6MGj7yz
	 C4hAsn0w85BNKsYuC6R+dn1xc2xDn4B8gF30eXw8FzEUBufNFmAqSvoF8GL1SzX193
	 /RWErom33XCsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 900A883EC3;
	Thu, 20 Mar 2025 13:19:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B4BF712F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 13:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4E98606C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 13:19:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nGRtFU0Jz_K9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Mar 2025 13:19:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5F1D1605D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F1D1605D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F1D1605D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 13:19:41 +0000 (UTC)
X-CSE-ConnectionGUID: RWE+xA4QRdmy8sEUr+kNkA==
X-CSE-MsgGUID: XKK7RfRjQ8qVJ4lGO3ub1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="55083760"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="55083760"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 06:19:41 -0700
X-CSE-ConnectionGUID: 8E1byLG+SC6w82Bfso3fBg==
X-CSE-MsgGUID: 4X4tRuZ7TpKZcNN4Kwr3TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="160311402"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa001.jf.intel.com with ESMTP; 20 Mar 2025 06:19:39 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Mar 2025 14:15:38 +0100
Message-Id: <20250320131538.712326-4-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250320131538.712326-1-grzegorz.nitka@intel.com>
References: <20250320131538.712326-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742476782; x=1774012782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8ffT4wfwhjfYNOtiauuUrX5hnXGvZM/ci3OQm4Rlezo=;
 b=NyT3OP2dNvDhaCnIAqGQ81VV52kLOBVCZdlVUum5rShxyZrr0vQPq5P5
 oktV0eMEG+PYwcMU9WxVbdmHLwye2ofFwe6D2ffZUFWvN4NdvNmSUujz9
 D5r0/XGrrfR5JIeN3n31zFQP9dQ0ifQc+HS4CfR7WlFD/WdXjVONR6AdW
 eix/d5J8OV0McPZSVLlxhnm1o3X/DImSzgK3VI0OLESRDopJjh3AHE02+
 hpf8ngRF0oz5dbiO6IR31kxQVgHHMznx7Hv3bCA/O4q/gb6lg02zfUS1n
 RFTvhU9k+A2/mAtPvTWEn/2bYqtMExHuP9w/7qmkP2DDaSNWqz42zjYA2
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NyT3OP2d
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: enable timesync
 operation on 2xNAC E825 devices
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 horms@kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

According to the E825C specification, SBQ address for ports on a single
complex is device 2 for PHY 0 and device 13 for PHY1.
For accessing ports on a dual complex E825C (so called 2xNAC mode),
the driver should use destination device 2 (referred as phy_0) for
the current complex PHY and device 13 (referred as phy_0_peer) for
peer complex PHY.

Differentiate SBQ destination device by checking if current PF port
number is on the same PHY as target port number.

Adjust 'ice_get_lane_number' function to provide unique port number for
ports from PHY1 in 'dual' mode config (by adding fixed offset for PHY1
ports). Cache this value in ice_hw struct.

Introduce ice_get_primary_hw wrapper to get access to timesync register
not available from second NAC.

Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h        | 60 ++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.c |  6 ++-
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 49 ++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 39 +++++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  5 --
 drivers/net/ethernet/intel/ice/ice_type.h   |  1 +
 6 files changed, 134 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 43a34e3fa762..fc127c0f9d66 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -197,8 +197,6 @@
 
 #define ice_pf_to_dev(pf) (&((pf)->pdev->dev))
 
-#define ice_pf_src_tmr_owned(pf) ((pf)->hw.func_caps.ts_func_info.src_tmr_owned)
-
 enum ice_feature {
 	ICE_F_DSCP,
 	ICE_F_PHY_RCLK,
@@ -1053,4 +1051,62 @@ static inline void ice_clear_rdma_cap(struct ice_pf *pf)
 }
 
 extern const struct xdp_metadata_ops ice_xdp_md_ops;
+
+/**
+ * ice_is_dual - Check if given config is multi-NAC
+ * @hw: pointer to HW structure
+ *
+ * Return: true if the device is running in mutli-NAC (Network
+ * Acceleration Complex) configuration variant, false otherwise
+ * (always false for non-E825 devices).
+ */
+static inline bool ice_is_dual(struct ice_hw *hw)
+{
+	return hw->mac_type == ICE_MAC_GENERIC_3K_E825 &&
+	       (hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_DUAL_M);
+}
+
+/**
+ * ice_is_primary - Check if given device belongs to the primary complex
+ * @hw: pointer to HW structure
+ *
+ * Check if given PF/HW is running on primary complex in multi-NAC
+ * configuration.
+ *
+ * Return: true if the device is dual, false otherwise (always true
+ * for non-E825 devices).
+ */
+static inline bool ice_is_primary(struct ice_hw *hw)
+{
+	return hw->mac_type != ICE_MAC_GENERIC_3K_E825 ||
+	       !ice_is_dual(hw) ||
+	       (hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M);
+}
+
+/**
+ * ice_pf_src_tmr_owned - Check if a primary timer is owned by PF
+ * @pf: pointer to PF structure
+ *
+ * Return: true if PF owns primary timer, false otherwise.
+ */
+static inline bool ice_pf_src_tmr_owned(struct ice_pf *pf)
+{
+	return pf->hw.func_caps.ts_func_info.src_tmr_owned &&
+	       ice_is_primary(&pf->hw);
+}
+
+/**
+ * ice_get_primary_hw - Get pointer to primary ice_hw structure
+ * @pf: pointer to PF structure
+ *
+ * Return: A pointer to ice_hw structure with access to timesync
+ * register space.
+ */
+static inline struct ice_hw *ice_get_primary_hw(struct ice_pf *pf)
+{
+	if (!pf->adapter->ctrl_pf)
+		return &pf->hw;
+	else
+		return &pf->adapter->ctrl_pf->hw;
+}
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 63e4a0824548..f7fd0a2451de 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1135,6 +1135,8 @@ int ice_init_hw(struct ice_hw *hw)
 		}
 	}
 
+	hw->lane_num = ice_get_phy_lane_number(hw);
+
 	return 0;
 err_unroll_fltr_mgmt_struct:
 	ice_cleanup_fltr_mgmt_struct(hw);
@@ -4130,10 +4132,12 @@ int ice_get_phy_lane_number(struct ice_hw *hw)
 			continue;
 
 		if (hw->pf_id == lport) {
+			if (hw->mac_type == ICE_MAC_GENERIC_3K_E825 &&
+			    ice_is_dual(hw) && !ice_is_primary(hw))
+				lane += ICE_PORTS_PER_QUAD;
 			kfree(options);
 			return lane;
 		}
-
 		lport++;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index cdd76ecb2196..85b614135694 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -208,6 +208,9 @@ u64 ice_ptp_read_src_clk_reg(struct ice_pf *pf,
 	u32 hi, lo, lo2;
 	u8 tmr_idx;
 
+	if (!ice_is_primary(hw))
+		hw = ice_get_primary_hw(pf);
+
 	tmr_idx = ice_get_ptp_src_clock_index(hw);
 	guard(spinlock)(&pf->adapter->ptp_gltsyn_time_lock);
 	/* Read the system timestamp pre PHC read */
@@ -2809,6 +2812,32 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 				   msecs_to_jiffies(err ? 10 : 500));
 }
 
+/**
+ * ice_ptp_prepare_rebuild_sec - Prepare second NAC for PTP reset or rebuild
+ * @pf: Board private structure
+ * @rebuild: rebuild if true, prepare if false
+ * @reset_type: the reset type being performed
+ */
+static void ice_ptp_prepare_rebuild_sec(struct ice_pf *pf, bool rebuild,
+					enum ice_reset_req reset_type)
+{
+	struct list_head *entry;
+
+	list_for_each(entry, &pf->adapter->ports.ports) {
+		struct ice_ptp_port *port = list_entry(entry,
+						       struct ice_ptp_port,
+						       list_node);
+		struct ice_pf *peer_pf = ptp_port_to_pf(port);
+
+		if (!ice_is_primary(&peer_pf->hw)) {
+			if (rebuild)
+				ice_ptp_rebuild(peer_pf, reset_type);
+			else
+				ice_ptp_prepare_for_reset(peer_pf, reset_type);
+		}
+	}
+}
+
 /**
  * ice_ptp_prepare_for_reset - Prepare PTP for reset
  * @pf: Board private structure
@@ -2817,6 +2846,7 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 {
 	struct ice_ptp *ptp = &pf->ptp;
+	struct ice_hw *hw = &pf->hw;
 	u8 src_tmr;
 
 	if (ptp->state != ICE_PTP_READY)
@@ -2832,6 +2862,9 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (reset_type == ICE_RESET_PFR)
 		return;
 
+	if (ice_pf_src_tmr_owned(pf) && hw->mac_type == ICE_MAC_GENERIC_3K_E825)
+		ice_ptp_prepare_rebuild_sec(pf, false, reset_type);
+
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
 	/* Disable periodic outputs */
@@ -2953,13 +2986,6 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	dev_err(ice_pf_to_dev(pf), "PTP reset failed %d\n", err);
 }
 
-static bool ice_is_primary(struct ice_hw *hw)
-{
-	return hw->mac_type == ICE_MAC_GENERIC_3K_E825 && ice_is_dual(hw) ?
-		       !!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M) :
-		       true;
-}
-
 static int ice_ptp_setup_adapter(struct ice_pf *pf)
 {
 	if (!ice_pf_src_tmr_owned(pf) || !ice_is_primary(&pf->hw))
@@ -3179,17 +3205,16 @@ void ice_ptp_init(struct ice_pf *pf)
 {
 	struct ice_ptp *ptp = &pf->ptp;
 	struct ice_hw *hw = &pf->hw;
-	int lane_num, err;
+	int err;
 
 	ptp->state = ICE_PTP_INITIALIZING;
 
-	lane_num = ice_get_phy_lane_number(hw);
-	if (lane_num < 0) {
-		err = lane_num;
+	if (hw->lane_num < 0) {
+		err = hw->lane_num;
 		goto err_exit;
 	}
+	ptp->port.port_num = hw->lane_num;
 
-	ptp->port.port_num = (u8)lane_num;
 	ice_ptp_init_hw(hw);
 
 	ice_ptp_init_tx_interrupt_mode(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index eb1893dd8979..ccac84eb34c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -874,8 +874,12 @@ static u32 ice_ptp_tmr_cmd_to_port_reg(struct ice_hw *hw,
  */
 void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 {
+	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
 	u32 cmd_val = ice_ptp_tmr_cmd_to_src_reg(hw, cmd);
 
+	if (!ice_is_primary(hw))
+		hw = ice_get_primary_hw(pf);
+
 	wr32(hw, GLTSYN_CMD, cmd_val);
 }
 
@@ -891,6 +895,9 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
 {
 	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
 
+	if (!ice_is_primary(hw))
+		hw = ice_get_primary_hw(pf);
+
 	guard(spinlock)(&pf->adapter->ptp_gltsyn_time_lock);
 	wr32(hw, GLTSYN_CMD_SYNC, SYNC_EXEC_CMD);
 	ice_flush(hw);
@@ -922,10 +929,18 @@ static void ice_ptp_cfg_sync_delay(const struct ice_hw *hw, u32 delay)
 static enum ice_sbq_dev_id ice_ptp_get_dest_dev_e825(struct ice_hw *hw,
 						     u8 port)
 {
-	/* On a single complex E825, PHY 0 is always destination device phy_0
+	u8 curr_phy, tgt_phy;
+
+	tgt_phy = port >= hw->ptp.ports_per_phy;
+	curr_phy = hw->lane_num >= hw->ptp.ports_per_phy;
+	/* In the driver, lanes 4..7 are in fact 0..3 on a second PHY.
+	 * On a single complex E825C, PHY 0 is always destination device phy_0
 	 * and PHY 1 is phy_0_peer.
+	 * On dual complex E825C, device phy_0 points to PHY on a current
+	 * complex and phy_0_peer to PHY on a different complex.
 	 */
-	if (port >= hw->ptp.ports_per_phy)
+	if ((!ice_is_dual(hw) && tgt_phy == 1) ||
+	    (ice_is_dual(hw) && tgt_phy != curr_phy))
 		return ice_sbq_dev_phy_0_peer;
 	else
 		return ice_sbq_dev_phy_0;
@@ -2417,6 +2432,7 @@ int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold)
 static int ice_read_phy_and_phc_time_eth56g(struct ice_hw *hw, u8 port,
 					    u64 *phy_time, u64 *phc_time)
 {
+	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
 	u64 tx_time, rx_time;
 	u32 zo, lo;
 	u8 tmr_idx;
@@ -2436,8 +2452,13 @@ static int ice_read_phy_and_phc_time_eth56g(struct ice_hw *hw, u8 port,
 	ice_ptp_exec_tmr_cmd(hw);
 
 	/* Read the captured PHC time from the shadow time registers */
-	zo = rd32(hw, GLTSYN_SHTIME_0(tmr_idx));
-	lo = rd32(hw, GLTSYN_SHTIME_L(tmr_idx));
+	if (ice_is_primary(hw)) {
+		zo = rd32(hw, GLTSYN_SHTIME_0(tmr_idx));
+		lo = rd32(hw, GLTSYN_SHTIME_L(tmr_idx));
+	} else {
+		zo = rd32(ice_get_primary_hw(pf), GLTSYN_SHTIME_0(tmr_idx));
+		lo = rd32(ice_get_primary_hw(pf), GLTSYN_SHTIME_L(tmr_idx));
+	}
 	*phc_time = (u64)lo << 32 | zo;
 
 	/* Read the captured PHY time from the PHY shadow registers */
@@ -2574,6 +2595,7 @@ int ice_stop_phy_timer_eth56g(struct ice_hw *hw, u8 port, bool soft_reset)
  */
 int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
 {
+	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
 	u32 lo, hi;
 	u64 incval;
 	u8 tmr_idx;
@@ -2599,8 +2621,13 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
 	if (err)
 		return err;
 
-	lo = rd32(hw, GLTSYN_INCVAL_L(tmr_idx));
-	hi = rd32(hw, GLTSYN_INCVAL_H(tmr_idx));
+	if (ice_is_primary(hw)) {
+		lo = rd32(hw, GLTSYN_INCVAL_L(tmr_idx));
+		hi = rd32(hw, GLTSYN_INCVAL_H(tmr_idx));
+	} else {
+		lo = rd32(ice_get_primary_hw(pf), GLTSYN_INCVAL_L(tmr_idx));
+		hi = rd32(ice_get_primary_hw(pf), GLTSYN_INCVAL_H(tmr_idx));
+	}
 	incval = (u64)hi << 32 | lo;
 
 	err = ice_write_40b_ptp_reg_eth56g(hw, port, PHY_REG_TIMETUS_L, incval);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index e5925ccc2613..83f20fa7ace7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -444,11 +444,6 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 	}
 }
 
-static inline bool ice_is_dual(struct ice_hw *hw)
-{
-	return !!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_DUAL_M);
-}
-
 #define PFTSYN_SEM_BYTES	4
 
 #define ICE_PTP_CLOCK_INDEX_0	0x00
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 0aab21113cc4..ccf53cc6403e 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -970,6 +970,7 @@ struct ice_hw {
 	u8 intrl_gran;
 
 	struct ice_ptp_hw ptp;
+	s8 lane_num;
 
 	/* Active package version (currently active) */
 	struct ice_pkg_ver active_pkg_ver;
-- 
2.39.3

