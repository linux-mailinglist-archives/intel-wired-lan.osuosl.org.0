Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5717391817F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 14:56:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 454EC60BE4;
	Wed, 26 Jun 2024 12:56:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I8iG8eX3EGhE; Wed, 26 Jun 2024 12:56:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5574B60BE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719406585;
	bh=pSCW6+u97ZSngHzqTaebFUA2I9+1X749NecKAJzXFqE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=chbcsihAt0GbLGSQJ21HRNAngVRiVdu5qwECUCp4zSvshY0Xg9auNxdwr0T0hyyNO
	 lGQnr/Po/5hW4XEH+2wUz/B2cKyxlAqe7eYnAwpNVnKjfPVkCjv5Ys5W5m+W818rcX
	 6juvUxNOQKFECXGSEQ5yyU1c8yyMnZP9YELog4ib/Ly3FjWKRC/vLNiZlIHdTSneZ2
	 6E2uvi2L4sRxLgA/Sh8cWKEJW6+lo7wOEb7gUIEaXmKQCQW5mzmaZ5rdOHP7gB8vTl
	 w+c4A5FW/I3bZvjI9dN8MDf4tQibZYEf1Qgrib4MOBhDbOtx8re5qGi9Bh81gSoX+t
	 xFz0M/IrDm+hg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5574B60BE2;
	Wed, 26 Jun 2024 12:56:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E7FB1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0AE2B40275
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 315EIaaWei5t for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 12:56:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B6ADC4016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6ADC4016B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6ADC4016B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:21 +0000 (UTC)
X-CSE-ConnectionGUID: +E6LuFD3QtqRbJzn7MzwOQ==
X-CSE-MsgGUID: wjPyQRZNSdi4Oe6mZrA2kQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="16158103"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="16158103"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 05:56:22 -0700
X-CSE-ConnectionGUID: 3kFjHsBkTI+9ZIoDDnGHOA==
X-CSE-MsgGUID: AkLoPdDVRLOBBNLG2yUivQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="48594640"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa004.fm.intel.com with ESMTP; 26 Jun 2024 05:56:20 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2024 14:54:53 +0200
Message-ID: <20240626125456.27667-2-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240626125456.27667-1-sergey.temerkhanov@intel.com>
References: <20240626125456.27667-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719406582; x=1750942582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xbdb5qSiiPLJuzsX0bonHHAsrZ2LZJ9+J0lyxwY2SJ4=;
 b=YIix8nHbvEJTY0ukzbIgu9XbcIZhrrUac0//Hijpd9zleWgvnFOgiclV
 Edsgz2BEIh6pqCZUsTihI59URJiOEan79pK/bOKQiYFHIz/lCKLjRCkHK
 CTBs05lNiXiIAjAORZehbBsd5qXXvjceaC1WYGNCkBWG/E/ROvCJ0zaUx
 ZFd4l0NXxocK1YY1AoMA+2NCxuDiweq0d47U77Fq+47O0MM94pOHUCodx
 JL1EWJR1rn5IuV5jiOr53BTSA+IE0JgwCEpsp/4uy+F074Ri3r0SHH5zP
 QZ/ANWQ7MPmpWwfuucFnVu3inyMZOPRHYMM9qb9NDgeI19a/QftfuIOBv
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YIix8nHb
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/4] ice: Introduce
 ice_get_phy_model() wrapper
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce ice_get_phy_model() to improve code readability

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h        |  5 +++++
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 18 ++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 22 ++++++++++-----------
 3 files changed, 25 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 4c563b0d57ac..b43719ee8324 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1046,5 +1046,10 @@ static inline void ice_clear_rdma_cap(struct ice_pf *pf)
 	clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
 }
 
+static inline enum ice_phy_model ice_get_phy_model(const struct ice_hw *hw)
+{
+	return hw->ptp.phy_model;
+}
+
 extern const struct xdp_metadata_ops ice_xdp_md_ops;
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index b652a3e25619..2f32dcd42581 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1372,7 +1372,7 @@ ice_ptp_port_phy_stop(struct ice_ptp_port *ptp_port)
 
 	mutex_lock(&ptp_port->ps_lock);
 
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		err = ice_stop_phy_timer_eth56g(hw, port, true);
 		break;
@@ -1418,7 +1418,7 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 
 	mutex_lock(&ptp_port->ps_lock);
 
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		err = ice_start_phy_timer_eth56g(hw, port);
 		break;
@@ -1486,7 +1486,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	/* Update cached link status for this port immediately */
 	ptp_port->link_up = linkup;
 
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_E810:
 		/* Do not reconfigure E810 PHY */
 		return;
@@ -1519,7 +1519,7 @@ static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 
 	ice_ptp_reset_ts_memory(hw);
 
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G: {
 		int port;
 
@@ -1558,7 +1558,7 @@ static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 	case ICE_PHY_UNSUP:
 	default:
 		dev_warn(dev, "%s: Unexpected PHY model %d\n", __func__,
-			 hw->ptp.phy_model);
+			 ice_get_phy_model(hw));
 		return -EOPNOTSUPP;
 	}
 }
@@ -2065,7 +2065,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	/* For Vernier mode on E82X, we need to recalibrate after new settime.
 	 * Start with marking timestamps as invalid.
 	 */
-	if (hw->ptp.phy_model == ICE_PHY_E82X) {
+	if (ice_get_phy_model(hw) == ICE_PHY_E82X) {
 		err = ice_ptp_clear_phy_offset_ready_e82x(hw);
 		if (err)
 			dev_warn(ice_pf_to_dev(pf), "Failed to mark timestamps as invalid before settime\n");
@@ -2089,7 +2089,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	ice_ptp_enable_all_clkout(pf);
 
 	/* Recalibrate and re-enable timestamp blocks for E822/E823 */
-	if (hw->ptp.phy_model == ICE_PHY_E82X)
+	if (ice_get_phy_model(hw) == ICE_PHY_E82X)
 		ice_ptp_restart_all_phy(pf);
 exit:
 	if (err) {
@@ -3214,7 +3214,7 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 
 	mutex_init(&ptp_port->ps_lock);
 
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
 					      ptp_port->port_num);
@@ -3312,7 +3312,7 @@ static void ice_ptp_remove_auxbus_device(struct ice_pf *pf)
  */
 static void ice_ptp_init_tx_interrupt_mode(struct ice_pf *pf)
 {
-	switch (pf->hw.ptp.phy_model) {
+	switch (ice_get_phy_model(&pf->hw)) {
 	case ICE_PHY_E82X:
 		/* E822 based PHY has the clock owner process the interrupt
 		 * for all ports.
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3a33e6b9b313..4558c9bda67f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -806,7 +806,7 @@ static u32 ice_ptp_tmr_cmd_to_port_reg(struct ice_hw *hw,
 	/* Certain hardware families share the same register values for the
 	 * port register and source timer register.
 	 */
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_E810:
 		return ice_ptp_tmr_cmd_to_src_reg(hw, cmd) & TS_CMD_MASK_E810;
 	default:
@@ -5419,7 +5419,7 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 static int ice_ptp_write_port_cmd(struct ice_hw *hw, u8 port,
 				  enum ice_ptp_tmr_cmd cmd)
 {
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		return ice_ptp_write_port_cmd_eth56g(hw, port, cmd);
 	case ICE_PHY_E82X:
@@ -5484,7 +5484,7 @@ static int ice_ptp_port_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	u32 port;
 
 	/* PHY models which can program all ports simultaneously */
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_E810:
 		return ice_ptp_port_cmd_e810(hw, cmd);
 	default:
@@ -5563,7 +5563,7 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 
 	/* PHY timers */
 	/* Fill Rx and Tx ports and send msg to PHY */
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		err = ice_ptp_prep_phy_time_eth56g(hw,
 						   (u32)(time & 0xFFFFFFFF));
@@ -5609,7 +5609,7 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), lower_32_bits(incval));
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), upper_32_bits(incval));
 
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		err = ice_ptp_prep_phy_incval_eth56g(hw, incval);
 		break;
@@ -5678,7 +5678,7 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), 0);
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), adj);
 
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		err = ice_ptp_prep_phy_adj_eth56g(hw, adj);
 		break;
@@ -5711,7 +5711,7 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
  */
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 {
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		return ice_read_ptp_tstamp_eth56g(hw, block, idx, tstamp);
 	case ICE_PHY_E810:
@@ -5741,7 +5741,7 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
  */
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 {
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		return ice_clear_ptp_tstamp_eth56g(hw, block, idx);
 	case ICE_PHY_E810:
@@ -5804,7 +5804,7 @@ static int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx)
  */
 void ice_ptp_reset_ts_memory(struct ice_hw *hw)
 {
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		ice_ptp_reset_ts_memory_eth56g(hw);
 		break;
@@ -5833,7 +5833,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	/* Clear event err indications for auxiliary pins */
 	(void)rd32(hw, GLTSYN_STAT(src_idx));
 
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		return ice_ptp_init_phc_eth56g(hw);
 	case ICE_PHY_E810:
@@ -5858,7 +5858,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
  */
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 {
-	switch (hw->ptp.phy_model) {
+	switch (ice_get_phy_model(hw)) {
 	case ICE_PHY_ETH56G:
 		return ice_get_phy_tx_tstamp_ready_eth56g(hw, block,
 							  tstamp_ready);
-- 
2.43.0

