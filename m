Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 149D388C948
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 17:31:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B302440492;
	Tue, 26 Mar 2024 16:31:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1oyVo71B4yAU; Tue, 26 Mar 2024 16:31:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C398F4038B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711470670;
	bh=rgqRijpYKhg9CNUA6bqlKX8xF5YWOAefduf9sHqlhRA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VHYNAuN4X+uPfroqvncPOKy00y20dTqwaMurnjvYBmO0SM3cZK1XW7B32FjeaOK4U
	 tfWAv9EQLRL9zPf3uC6uchb/dN3OHV9PBQY4QgJ2G60MPTATM6Z0rfig0FsDoXc5dy
	 G16Tcdiu8AF9oJvpRDb6VDJVUDoaPhyr4/2IIcvKETYqM90XRfXw5PjG9y4DHVa570
	 mVREwZATPkxN/9Pyjg3n8EFSdlZr72xH5KzDOMeUdE5m/GjGgX8xcgHqnWbFOWt2nb
	 4jveSCgqty3noXCFKTp7G+kPq5jgjQB4a/3ScxzumGDZtxAtKDT3uhWcJoJGoGT7rh
	 vhCsHDLOc2raQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C398F4038B;
	Tue, 26 Mar 2024 16:31:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 955241BF20D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:31:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7FD7240582
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:31:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3cd3JUYV4yhQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 16:31:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A042540571
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A042540571
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A042540571
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:31:06 +0000 (UTC)
X-CSE-ConnectionGUID: ObY4nYczTWKLdEpZaxA3XA==
X-CSE-MsgGUID: +0Z0kYbVTf+UJ+8fqK9p8g==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6725006"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6725006"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 09:24:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20729261"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa005.jf.intel.com with ESMTP; 26 Mar 2024 09:23:59 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 17:22:22 +0100
Message-ID: <20240326162339.146053-15-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240326162339.146053-14-karol.kolacinski@intel.com>
References: <20240326162339.146053-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711470667; x=1743006667;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P4o6rgxJhC2txY4pJ4CTBjuIBy/Uj5Uzz6WkRPYPhqQ=;
 b=Z1sYNQ2nZx5WDeUe1cMjNNF9cjoB9zhfvxh4JLF3mnAa9ZUy2ApJwl75
 wgiCJZqaPrzw9zNyHZ3KosyUAsmAS/Bghfdc7dfgGHxOcBiPMjaOWZppp
 BlAFlXDp768stxrs0EWtC2wo4druCcgBTm+/vrhnRAMFFLfi878ixmstU
 vrG/pAk7ZFlHtm69OR5+nQGiVngRw59mdcY+NfZ2XK61xWw0IkNRMg7h8
 j+KXOmG4MDoxufm+OCTaw9hUfYAlU6dttxcpgRtScrr1TuuD5HshP1tUt
 GDw/v+VEeZ/87iovZmDfg8aq6mIeNnpHG3u2Nz2Fo9dQBtYb7aJaSo/Qi
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z1sYNQ2n
Subject: [Intel-wired-lan] [PATCH iwl-next 01/12] ice: Introduce ice_ptp_hw
 struct
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Create new ice_ptp_hw struct and use it for all HW and PTP-related
fields from struct ice_hw.
Replace definitions with struct fields, which values are set accordingly
to a specific device.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  24 ++++
 drivers/net/ethernet/intel/ice/ice_common.h |   1 +
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  22 ++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 128 +++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   4 +-
 drivers/net/ethernet/intel/ice/ice_type.h   |  17 +--
 6 files changed, 120 insertions(+), 76 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f4ac3c30b124..1cd19b0314c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -233,6 +233,30 @@ bool ice_is_e810t(struct ice_hw *hw)
 	return false;
 }
 
+/**
+ * ice_is_e822
+ * @hw: pointer to the hardware structure
+ *
+ * returns true if the device is E822 based, false if not.
+ */
+bool ice_is_e822(struct ice_hw *hw)
+{
+	switch (hw->device_id) {
+	case ICE_DEV_ID_E822C_BACKPLANE:
+	case ICE_DEV_ID_E822C_QSFP:
+	case ICE_DEV_ID_E822C_SFP:
+	case ICE_DEV_ID_E822C_10G_BASE_T:
+	case ICE_DEV_ID_E822C_SGMII:
+	case ICE_DEV_ID_E822L_BACKPLANE:
+	case ICE_DEV_ID_E822L_SFP:
+	case ICE_DEV_ID_E822L_10G_BASE_T:
+	case ICE_DEV_ID_E822L_SGMII:
+		return true;
+	default:
+		return false;
+	}
+}
+
 /**
  * ice_is_e823
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index ffb22c7ce28b..70f57340eb0d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -249,6 +249,7 @@ void
 ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 		  u64 *prev_stat, u64 *cur_stat);
 bool ice_is_e810t(struct ice_hw *hw);
+bool ice_is_e822(struct ice_hw *hw);
 bool ice_is_e823(struct ice_hw *hw);
 bool ice_is_e825c(struct ice_hw *hw);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index c11eba07283c..1df86ee899cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -812,7 +812,7 @@ static enum ice_tx_tstamp_work ice_ptp_tx_tstamp_owner(struct ice_pf *pf)
 	}
 	mutex_unlock(&pf->ptp.ports_owner.lock);
 
-	for (i = 0; i < ICE_MAX_QUAD; i++) {
+	for (i = 0; i < ICE_GET_QUAD_NUM(pf->hw.ptp.num_lports); i++) {
 		u64 tstamp_ready;
 		int err;
 
@@ -1026,7 +1026,7 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 static int
 ice_ptp_init_tx_e82x(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 {
-	tx->block = port / ICE_PORTS_PER_QUAD;
+	tx->block = ICE_GET_QUAD_NUM(port);
 	tx->offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT_E82X;
 	tx->len = INDEX_PER_PORT_E82X;
 	tx->has_ready_bitmap = 1;
@@ -1248,7 +1248,7 @@ static u64 ice_base_incval(struct ice_pf *pf)
  */
 static int ice_ptp_check_tx_fifo(struct ice_ptp_port *port)
 {
-	int quad = port->port_num / ICE_PORTS_PER_QUAD;
+	int quad = ICE_GET_QUAD_NUM(port->port_num);
 	int offs = port->port_num % ICE_PORTS_PER_QUAD;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
@@ -1448,7 +1448,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	if (pf->ptp.state != ICE_PTP_READY)
 		return;
 
-	if (WARN_ON_ONCE(port >= ICE_NUM_EXTERNAL_PORTS))
+	if (WARN_ON_ONCE(port >= hw->ptp.num_lports))
 		return;
 
 	ptp_port = &pf->ptp.port;
@@ -1458,7 +1458,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	/* Update cached link status for this port immediately */
 	ptp_port->link_up = linkup;
 
-	switch (hw->phy_model) {
+	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		/* Do not reconfigure E810 PHY */
 		return;
@@ -1487,7 +1487,7 @@ static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 
 	ice_ptp_reset_ts_memory(hw);
 
-	for (quad = 0; quad < ICE_MAX_QUAD; quad++) {
+	for (quad = 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lports); quad++) {
 		err = ice_read_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG,
 					     &val);
 		if (err)
@@ -1978,7 +1978,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	ice_ptp_enable_all_clkout(pf);
 
 	/* Recalibrate and re-enable timestamp blocks for E822/E823 */
-	if (hw->phy_model == ICE_PHY_E82X)
+	if (hw->ptp.phy_model == ICE_PHY_E82X)
 		ice_ptp_restart_all_phy(pf);
 exit:
 	if (err) {
@@ -2603,7 +2603,7 @@ static void ice_ptp_maybe_trigger_tx_interrupt(struct ice_pf *pf)
 	if (!ice_pf_src_tmr_owned(pf))
 		return;
 
-	for (i = 0; i < ICE_MAX_QUAD; i++) {
+	for (i = 0; i < ICE_GET_QUAD_NUM(hw->ptp.num_lports); i++) {
 		u64 tstamp_ready;
 		int err;
 
@@ -3101,7 +3101,7 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 
 	mutex_init(&ptp_port->ps_lock);
 
-	switch (hw->phy_model) {
+	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
 	case ICE_PHY_E82X:
@@ -3196,7 +3196,7 @@ static void ice_ptp_remove_auxbus_device(struct ice_pf *pf)
  */
 static void ice_ptp_init_tx_interrupt_mode(struct ice_pf *pf)
 {
-	switch (pf->hw.phy_model) {
+	switch (pf->hw.ptp.phy_model) {
 	case ICE_PHY_E82X:
 		/* E822 based PHY has the clock owner process the interrupt
 		 * for all ports.
@@ -3232,7 +3232,7 @@ void ice_ptp_init(struct ice_pf *pf)
 
 	ptp->state = ICE_PTP_INITIALIZING;
 
-	ice_ptp_init_phy_model(hw);
+	ice_ptp_init_hw(hw);
 
 	ice_ptp_init_tx_interrupt_mode(pf);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 187ce9b54e1a..dbf5070e1d07 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -285,18 +285,21 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
 
 /**
  * ice_fill_phy_msg_e82x - Fill message data for a PHY register access
+ * @hw: pointer to the HW struct
  * @msg: the PHY message buffer to fill in
  * @port: the port to access
  * @offset: the register offset
  */
-static void
-ice_fill_phy_msg_e82x(struct ice_sbq_msg_input *msg, u8 port, u16 offset)
+static void ice_fill_phy_msg_e82x(struct ice_hw *hw,
+				  struct ice_sbq_msg_input *msg, u8 port,
+				  u16 offset)
 {
 	int phy_port, phy, quadtype;
 
-	phy_port = port % ICE_PORTS_PER_PHY_E82X;
-	phy = port / ICE_PORTS_PER_PHY_E82X;
-	quadtype = (port / ICE_PORTS_PER_QUAD) % ICE_QUADS_PER_PHY_E82X;
+	phy_port = port % hw->ptp.ports_per_phy;
+	phy = port / hw->ptp.ports_per_phy;
+	quadtype = ICE_GET_QUAD_NUM(port) %
+		   ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy);
 
 	if (quadtype == 0) {
 		msg->msg_addr_low = P_Q0_L(P_0_BASE + offset, phy_port);
@@ -427,7 +430,7 @@ ice_read_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
 	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	ice_fill_phy_msg_e82x(&msg, port, offset);
+	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
 	msg.opcode = ice_sbq_msg_rd;
 
 	err = ice_sbq_rw_reg(hw, &msg);
@@ -504,7 +507,7 @@ ice_write_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 val)
 	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	ice_fill_phy_msg_e82x(&msg, port, offset);
+	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
 	msg.opcode = ice_sbq_msg_wr;
 	msg.data = val;
 
@@ -614,6 +617,7 @@ ice_write_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 
 /**
  * ice_fill_quad_msg_e82x - Fill message data for quad register access
+ * @hw: pointer to the HW struct
  * @msg: the PHY message buffer to fill in
  * @quad: the quad to access
  * @offset: the register offset
@@ -621,17 +625,18 @@ ice_write_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
  * Fill a message buffer for accessing a register in a quad shared between
  * multiple PHYs.
  */
-static int
-ice_fill_quad_msg_e82x(struct ice_sbq_msg_input *msg, u8 quad, u16 offset)
+static int ice_fill_quad_msg_e82x(struct ice_hw *hw,
+				  struct ice_sbq_msg_input *msg, u8 quad,
+				  u16 offset)
 {
 	u32 addr;
 
-	if (quad >= ICE_MAX_QUAD)
+	if (quad >= ICE_GET_QUAD_NUM(hw->ptp.num_lports))
 		return -EINVAL;
 
 	msg->dest_dev = rmn_0;
 
-	if ((quad % ICE_QUADS_PER_PHY_E82X) == 0)
+	if (!(quad % ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy)))
 		addr = Q_0_BASE + offset;
 	else
 		addr = Q_1_BASE + offset;
@@ -658,7 +663,7 @@ ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
 	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	err = ice_fill_quad_msg_e82x(&msg, quad, offset);
+	err = ice_fill_quad_msg_e82x(hw, &msg, quad, offset);
 	if (err)
 		return err;
 
@@ -692,7 +697,7 @@ ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
 	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	err = ice_fill_quad_msg_e82x(&msg, quad, offset);
+	err = ice_fill_quad_msg_e82x(hw, &msg, quad, offset);
 	if (err)
 		return err;
 
@@ -813,7 +818,7 @@ static void ice_ptp_reset_ts_memory_e82x(struct ice_hw *hw)
 {
 	unsigned int quad;
 
-	for (quad = 0; quad < ICE_MAX_QUAD; quad++)
+	for (quad = 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lports); quad++)
 		ice_ptp_reset_ts_memory_quad_e82x(hw, quad);
 }
 
@@ -1110,7 +1115,7 @@ static int ice_ptp_set_vernier_wl(struct ice_hw *hw)
 {
 	u8 port;
 
-	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
+	for (port = 0; port < hw->ptp.num_lports; port++) {
 		int err;
 
 		err = ice_write_phy_reg_e82x(hw, port, P_REG_WL,
@@ -1175,7 +1180,7 @@ ice_ptp_prep_phy_time_e82x(struct ice_hw *hw, u32 time)
 	 */
 	phy_time = (u64)time << 32;
 
-	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
+	for (port = 0; port < hw->ptp.num_lports; port++) {
 		/* Tx case */
 		err = ice_write_64b_phy_reg_e82x(hw, port,
 						 P_REG_TX_TIMER_INC_PRE_L,
@@ -1278,7 +1283,7 @@ ice_ptp_prep_phy_adj_e82x(struct ice_hw *hw, s32 adj)
 	else
 		cycles = -(((s64)-adj) << 32);
 
-	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
+	for (port = 0; port < hw->ptp.num_lports; port++) {
 		int err;
 
 		err = ice_ptp_prep_port_adj_e82x(hw, port, cycles);
@@ -1304,7 +1309,7 @@ ice_ptp_prep_phy_incval_e82x(struct ice_hw *hw, u64 incval)
 	int err;
 	u8 port;
 
-	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
+	for (port = 0; port < hw->ptp.num_lports; port++) {
 		err = ice_write_40b_phy_reg_e82x(hw, port, P_REG_TIMETUS_L,
 						 incval);
 		if (err)
@@ -1460,7 +1465,7 @@ ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
 {
 	u8 port;
 
-	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
+	for (port = 0; port < hw->ptp.num_lports; port++) {
 		enum ice_ptp_tmr_cmd cmd;
 		int err;
 
@@ -1490,7 +1495,7 @@ ice_ptp_port_cmd_e82x(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 {
 	u8 port;
 
-	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
+	for (port = 0; port < hw->ptp.num_lports; port++) {
 		int err;
 
 		err = ice_ptp_write_port_cmd_e82x(hw, port, cmd);
@@ -1603,7 +1608,7 @@ static void ice_phy_cfg_lane_e82x(struct ice_hw *hw, u8 port)
 		return;
 	}
 
-	quad = port / ICE_PORTS_PER_QUAD;
+	quad = ICE_GET_QUAD_NUM(port);
 
 	err = ice_read_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG, &val);
 	if (err) {
@@ -2633,6 +2638,17 @@ ice_get_phy_tx_tstamp_ready_e82x(struct ice_hw *hw, u8 quad, u64 *tstamp_ready)
 	return 0;
 }
 
+/**
+ * ice_ptp_init_phy_e82x - initialize PHY parameters
+ * @ptp: pointer to the PTP HW struct
+ */
+static void ice_ptp_init_phy_e82x(struct ice_ptp_hw *ptp)
+{
+	ptp->phy_model = ICE_PHY_E82X;
+	ptp->num_lports = 8;
+	ptp->ports_per_phy = 8;
+}
+
 /* E810 functions
  *
  * The following functions operate on the E810 series devices which use
@@ -2860,17 +2876,19 @@ static int ice_clear_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx)
 }
 
 /**
- * ice_ptp_init_phy_e810 - Enable PTP function on the external PHY
+ * ice_ptp_init_phc_e810 - Perform E810 specific PHC initialization
  * @hw: pointer to HW struct
  *
- * Enable the timesync PTP functionality for the external PHY connected to
- * this function.
+ * Perform E810-specific PTP hardware clock initialization steps.
  */
-int ice_ptp_init_phy_e810(struct ice_hw *hw)
+static int ice_ptp_init_phc_e810(struct ice_hw *hw)
 {
 	u8 tmr_idx;
 	int err;
 
+	/* Ensure synchronization delay is zero */
+	wr32(hw, GLTSYN_SYNC_DLAY, 0);
+
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_ENA(tmr_idx),
 				     GLTSYN_ENA_TSYN_ENA_M);
@@ -2881,21 +2899,6 @@ int ice_ptp_init_phy_e810(struct ice_hw *hw)
 	return err;
 }
 
-/**
- * ice_ptp_init_phc_e810 - Perform E810 specific PHC initialization
- * @hw: pointer to HW struct
- *
- * Perform E810-specific PTP hardware clock initialization steps.
- */
-static int ice_ptp_init_phc_e810(struct ice_hw *hw)
-{
-	/* Ensure synchronization delay is zero */
-	wr32(hw, GLTSYN_SYNC_DLAY, 0);
-
-	/* Initialize the PHY */
-	return ice_ptp_init_phy_e810(hw);
-}
-
 /**
  * ice_ptp_prep_phy_time_e810 - Prepare PHY port with initial time
  * @hw: Board private structure
@@ -3239,6 +3242,17 @@ int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data)
 	return ice_aq_read_i2c(hw, link_topo, 0, addr, 1, data, NULL);
 }
 
+/**
+ * ice_ptp_init_phy_e810 - initialize PHY parameters
+ * @ptp: pointer to the PTP HW struct
+ */
+static void ice_ptp_init_phy_e810(struct ice_ptp_hw *ptp)
+{
+	ptp->phy_model = ICE_PHY_E810;
+	ptp->num_lports = 8;
+	ptp->ports_per_phy = 4;
+}
+
 /* Device agnostic functions
  *
  * The following functions implement shared behavior common to both E822 and
@@ -3296,18 +3310,22 @@ void ice_ptp_unlock(struct ice_hw *hw)
 }
 
 /**
- * ice_ptp_init_phy_model - Initialize hw->phy_model based on device type
+ * ice_ptp_init_hw - Initialize hw based on device type
  * @hw: pointer to the HW structure
  *
- * Determine the PHY model for the device, and initialize hw->phy_model
+ * Determine the PHY model for the device, and initialize hw
  * for use by other functions.
  */
-void ice_ptp_init_phy_model(struct ice_hw *hw)
+void ice_ptp_init_hw(struct ice_hw *hw)
 {
-	if (ice_is_e810(hw))
-		hw->phy_model = ICE_PHY_E810;
+	struct ice_ptp_hw *ptp = &hw->ptp;
+
+	if (ice_is_e822(hw) || ice_is_e823(hw))
+		ice_ptp_init_phy_e82x(ptp);
+	else if (ice_is_e810(hw))
+		ice_ptp_init_phy_e810(ptp);
 	else
-		hw->phy_model = ICE_PHY_E82X;
+		ptp->phy_model = ICE_PHY_UNSUP;
 }
 
 /**
@@ -3328,7 +3346,7 @@ static int ice_ptp_tmr_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	ice_ptp_src_cmd(hw, cmd);
 
 	/* Next, prepare the ports */
-	switch (hw->phy_model) {
+	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		err = ice_ptp_port_cmd_e810(hw, cmd);
 		break;
@@ -3380,7 +3398,7 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 
 	/* PHY timers */
 	/* Fill Rx and Tx ports and send msg to PHY */
-	switch (hw->phy_model) {
+	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_time_e810(hw, time & 0xFFFFFFFF);
 		break;
@@ -3422,7 +3440,7 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), lower_32_bits(incval));
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), upper_32_bits(incval));
 
-	switch (hw->phy_model) {
+	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_incval_e810(hw, incval);
 		break;
@@ -3488,7 +3506,7 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), 0);
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), adj);
 
-	switch (hw->phy_model) {
+	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_adj_e810(hw, adj);
 		break;
@@ -3518,7 +3536,7 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
  */
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 {
-	switch (hw->phy_model) {
+	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		return ice_read_phy_tstamp_e810(hw, block, idx, tstamp);
 	case ICE_PHY_E82X:
@@ -3546,7 +3564,7 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
  */
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 {
-	switch (hw->phy_model) {
+	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		return ice_clear_phy_tstamp_e810(hw, block, idx);
 	case ICE_PHY_E82X:
@@ -3607,7 +3625,7 @@ static int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx)
  */
 void ice_ptp_reset_ts_memory(struct ice_hw *hw)
 {
-	switch (hw->phy_model) {
+	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E82X:
 		ice_ptp_reset_ts_memory_e82x(hw);
 		break;
@@ -3633,7 +3651,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	/* Clear event err indications for auxiliary pins */
 	(void)rd32(hw, GLTSYN_STAT(src_idx));
 
-	switch (hw->phy_model) {
+	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		return ice_ptp_init_phc_e810(hw);
 	case ICE_PHY_E82X:
@@ -3656,7 +3674,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
  */
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 {
-	switch (hw->phy_model) {
+	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
 							tstamp_ready);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 1f3e03124430..3dce09af0d78 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -212,6 +212,7 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp);
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
 void ice_ptp_reset_ts_memory(struct ice_hw *hw);
 int ice_ptp_init_phc(struct ice_hw *hw);
+void ice_ptp_init_hw(struct ice_hw *hw);
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
 
 /* E822 family functions */
@@ -266,7 +267,6 @@ int ice_phy_cfg_tx_offset_e82x(struct ice_hw *hw, u8 port);
 int ice_phy_cfg_rx_offset_e82x(struct ice_hw *hw, u8 port);
 
 /* E810 family functions */
-int ice_ptp_init_phy_e810(struct ice_hw *hw);
 int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
@@ -280,8 +280,6 @@ int ice_get_cgu_state(struct ice_hw *hw, u8 dpll_idx,
 		      u8 *ref_state, u8 *eec_mode, s64 *phase_offset,
 		      enum dpll_lock_status *dpll_state);
 int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num);
-
-void ice_ptp_init_phy_model(struct ice_hw *hw);
 int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 				      unsigned long *caps);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 08ec5efdafe6..5802009ed0c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -816,6 +816,9 @@ struct ice_mbx_data {
 	u16 async_watermark_val;
 };
 
+#define ICE_PORTS_PER_QUAD	4
+#define ICE_GET_QUAD_NUM(port) ((port) / ICE_PORTS_PER_QUAD)
+
 /* PHY model */
 enum ice_phy_model {
 	ICE_PHY_UNSUP = -1,
@@ -823,6 +826,12 @@ enum ice_phy_model {
 	ICE_PHY_E82X,
 };
 
+struct ice_ptp_hw {
+	enum ice_phy_model phy_model;
+	u8 num_lports;
+	u8 ports_per_phy;
+};
+
 /* Port hardware description */
 struct ice_hw {
 	u8 __iomem *hw_addr;
@@ -844,7 +853,6 @@ struct ice_hw {
 	u8 revision_id;
 
 	u8 pf_id;		/* device profile info */
-	enum ice_phy_model phy_model;
 
 	u16 max_burst_size;	/* driver sets this value */
 
@@ -907,12 +915,7 @@ struct ice_hw {
 	/* INTRL granularity in 1 us */
 	u8 intrl_gran;
 
-#define ICE_MAX_QUAD			2
-#define ICE_QUADS_PER_PHY_E82X		2
-#define ICE_PORTS_PER_PHY_E82X		8
-#define ICE_PORTS_PER_QUAD		4
-#define ICE_PORTS_PER_PHY_E810		4
-#define ICE_NUM_EXTERNAL_PORTS		(ICE_MAX_QUAD * ICE_PORTS_PER_QUAD)
+	struct ice_ptp_hw ptp;
 
 	/* Active package version (currently active) */
 	struct ice_pkg_ver active_pkg_ver;
-- 
2.43.0

