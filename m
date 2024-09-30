Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6BD98A199
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:10:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A81B560697;
	Mon, 30 Sep 2024 12:10:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5uoNbuX0lJna; Mon, 30 Sep 2024 12:10:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A63D060681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727698241;
	bh=ixtma/DdUha3Sl7scXJo4ra25ay9681gRqsFdAr9RWk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aOi0fHrPZJstWbXBoyYUjb+mOlSuaZMLwQPvxRdxx1o7IQXHHA0wp/kwpy/Ug15IP
	 H9iL8yzguS+mt9uvT2xn5BIgHYh6Poixx74AGmMhw5/1qoGXxwWxmcg34JdqP0IQVC
	 ngJMI5TjrL6BS6Qkk4Cl/1ahHq9IUh2jiTwkvp9XU30VgqGbBe6lzRwROf2eaKCMRw
	 CrEjhB4Wm6NFvZhz++6HhjFX6dvnJaYH1uePSTrT5IfamA+g3wq+UdqzJFHZHMNUWU
	 vr0kPVP4quOrZ3eGo69qOsqEFxWYl0RODTNbYjn/8XEpHPNCfHT/zWkNA9DZ/qRld4
	 U1LNKmpiBnjyQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A63D060681;
	Mon, 30 Sep 2024 12:10:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 163C61BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0513F402E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T0ept_fNWk7m for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:10:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EFEA94028E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFEA94028E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EFEA94028E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:36 +0000 (UTC)
X-CSE-ConnectionGUID: wl3fjDuaSqOgtKjDW7v6BA==
X-CSE-MsgGUID: 2MpFsnDKQXW1ZYdilJ5T8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26736089"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26736089"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:10:37 -0700
X-CSE-ConnectionGUID: Nu9Cs7rYToiij5K6FeVaPA==
X-CSE-MsgGUID: 4GrqjotqQ/SpcTj5glIAOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="78037017"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by orviesa005.jf.intel.com with ESMTP; 30 Sep 2024 05:10:35 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Sep 2024 14:08:40 +0200
Message-ID: <20240930121022.671217-3-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240930121022.671217-1-karol.kolacinski@intel.com>
References: <20240930121022.671217-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727698237; x=1759234237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xRiam5j9mkPRi8qP5q37yRbUO4xRNJG1VTi17hkK7WA=;
 b=ARbIHV/qoRYK/5fhD48xmR4KjxQtgytolyU2A5XWsegeEv4lxXKIWKar
 j71nHR1LoVozhf7xp3F3IOuRVNuAMyp09kDofJCd5pJTlz5sVYcWPkyfz
 gZhqUJyUr7O4Mgp3byleeosbGN6kTih7PPBD0CaSh6vo//RU7Oubn4PtS
 FhssAo6mXgGL5XUXmEEYU7IbEm7HWiP6KFAP5IS86szew7HwodwVx4DPh
 PfmzOq12+LtjOtvcRk0qvgICRRQlG/CX9jSM8nPuQxtOHCmJTcOxfQy8c
 mLpiKetjvbfWxXHhfTXiaKaoLV4Xms30lfC/aQZn9xO1Oa5FNiNO2i86I
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ARbIHV/q
Subject: [Intel-wired-lan] [PATCH iwl-net 2/5] ice: Fix quad registers read
 on E825
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Quad registers are read/written incorrectly. E825 devices always use
quad 0 address and differentiate between the PHYs by changing SBQ
destination device (phy_0 or phy_0_peer).

Add helpers for reading/writing PTP registers shared per quad and use
correct quad address and SBQ destination device based on port.

Rename rmn_0 to phy_0 and remove rmn_1 and rmn_2 as E82X HW does not
support it. Rename eth56g_phy_1 to phy_0_peer.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  75 ++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 221 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  35 ++-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   7 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 -
 6 files changed, 160 insertions(+), 181 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 009716a12a26..0eb7f828ed3a 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3454,7 +3454,7 @@ int ice_aq_get_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
 	msg.msg_addr_low = lower_16_bits(reg_offset);
 	msg.msg_addr_high = receiver_id;
 	msg.opcode = ice_sbq_msg_rd;
-	msg.dest_dev = rmn_0;
+	msg.dest_dev = phy_0;
 
 	err = ice_sbq_rw_reg(hw, &msg, flag);
 	if (err)
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index e6980b94a6c1..e63f2a36eabf 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -10,70 +10,25 @@
 /* Constants defined for the PTP 1588 clock hardware. */
 
 const struct ice_phy_reg_info_eth56g eth56g_phy_res[NUM_ETH56G_PHY_RES] = {
-	/* ETH56G_PHY_REG_PTP */
-	{
-		/* base_addr */
-		{
-			0x092000,
-			0x126000,
-			0x1BA000,
-			0x24E000,
-			0x2E2000,
-		},
-		/* step */
-		0x98,
+	[ETH56G_PHY_REG_PTP] = {
+		.base_addr = 0x092000,
+		.step = 0x98,
 	},
-	/* ETH56G_PHY_MEM_PTP */
-	{
-		/* base_addr */
-		{
-			0x093000,
-			0x127000,
-			0x1BB000,
-			0x24F000,
-			0x2E3000,
-		},
-		/* step */
-		0x200,
+	[ETH56G_PHY_MEM_PTP] = {
+		.base_addr = 0x093000,
+		.step = 0x200,
 	},
-	/* ETH56G_PHY_REG_XPCS */
-	{
-		/* base_addr */
-		{
-			0x000000,
-			0x009400,
-			0x128000,
-			0x1BC000,
-			0x250000,
-		},
-		/* step */
-		0x21000,
+	[ETH56G_PHY_REG_XPCS] = {
+		.base_addr = 0x000000,
+		.step = 0x21000,
 	},
-	/* ETH56G_PHY_REG_MAC */
-	{
-		/* base_addr */
-		{
-			0x085000,
-			0x119000,
-			0x1AD000,
-			0x241000,
-			0x2D5000,
-		},
-		/* step */
-		0x1000,
+	[ETH56G_PHY_REG_MAC] = {
+		.base_addr = 0x085000,
+		.step = 0x1000,
 	},
-	/* ETH56G_PHY_REG_GPCS */
-	{
-		/* base_addr */
-		{
-			0x084000,
-			0x118000,
-			0x1AC000,
-			0x240000,
-			0x2D4000,
-		},
-		/* step */
-		0x400,
+	[ETH56G_PHY_REG_GPCS] = {
+		.base_addr = 0x084000,
+		.step = 0x400,
 	},
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 58323a7ff394..41c736868d82 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -906,31 +906,44 @@ static int ice_ptp_init_phc_e825(struct ice_hw *hw)
 	return ice_init_cgu_e82x(hw);
 }
 
+/**
+ * ice_ptp_get_dest_dev_e825 - get destination PHY for given port number
+ * @hw: pointer to the HW struct
+ * @port: destination port
+ */
+static enum ice_sbq_msg_dev ice_ptp_get_dest_dev_e825(struct ice_hw *hw,
+						      u8 port)
+{
+	/* On a single complex E825C, PHY 0 is always destination device phy_0
+	 * and PHY 1 is phy_0_peer.
+	 */
+	if (port / hw->ptp.ports_per_phy)
+		return phy_0_peer;
+	else
+		return phy_0;
+}
+
 /**
  * ice_write_phy_eth56g - Write a PHY port register
  * @hw: pointer to the HW struct
- * @phy_idx: PHY index
+ * @port: destination port
  * @addr: PHY register address
  * @val: Value to write
  *
  * Return: 0 on success, other error codes when failed to write to PHY
  */
-static int ice_write_phy_eth56g(struct ice_hw *hw, u8 phy_idx, u32 addr,
-				u32 val)
+static int ice_write_phy_eth56g(struct ice_hw *hw, u8 port, u32 addr, u32 val)
 {
-	struct ice_sbq_msg_input phy_msg;
+	struct ice_sbq_msg_input msg = {
+		.dest_dev = ice_ptp_get_dest_dev_e825(hw, port),
+		.opcode = ice_sbq_msg_wr,
+		.msg_addr_low = lower_32_bits(addr),
+		.msg_addr_high = upper_32_bits(addr),
+		.data = val
+	};
 	int err;
 
-	phy_msg.opcode = ice_sbq_msg_wr;
-
-	phy_msg.msg_addr_low = lower_16_bits(addr);
-	phy_msg.msg_addr_high = upper_16_bits(addr);
-
-	phy_msg.data = val;
-	phy_msg.dest_dev = hw->ptp.phy.eth56g.phy_addr[phy_idx];
-
-	err = ice_sbq_rw_reg(hw, &phy_msg, ICE_AQ_FLAG_RD);
-
+	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
 	if (err)
 		ice_debug(hw, ICE_DBG_PTP, "PTP failed to send msg to phy %d\n",
 			  err);
@@ -941,60 +954,52 @@ static int ice_write_phy_eth56g(struct ice_hw *hw, u8 phy_idx, u32 addr,
 /**
  * ice_read_phy_eth56g - Read a PHY port register
  * @hw: pointer to the HW struct
- * @phy_idx: PHY index
+ * @port: destination port
  * @addr: PHY register address
  * @val: Value to write
  *
  * Return: 0 on success, other error codes when failed to read from PHY
  */
-static int ice_read_phy_eth56g(struct ice_hw *hw, u8 phy_idx, u32 addr,
-			       u32 *val)
+static int ice_read_phy_eth56g(struct ice_hw *hw, u8 port, u32 addr, u32 *val)
 {
-	struct ice_sbq_msg_input phy_msg;
+	struct ice_sbq_msg_input msg = {
+		.dest_dev = ice_ptp_get_dest_dev_e825(hw, port),
+		.opcode = ice_sbq_msg_rd,
+		.msg_addr_low = lower_32_bits(addr),
+		.msg_addr_high = upper_32_bits(addr)
+	};
 	int err;
 
-	phy_msg.opcode = ice_sbq_msg_rd;
-
-	phy_msg.msg_addr_low = lower_16_bits(addr);
-	phy_msg.msg_addr_high = upper_16_bits(addr);
-
-	phy_msg.data = 0;
-	phy_msg.dest_dev = hw->ptp.phy.eth56g.phy_addr[phy_idx];
-
-	err = ice_sbq_rw_reg(hw, &phy_msg, ICE_AQ_FLAG_RD);
-	if (err) {
+	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
+	if (err)
 		ice_debug(hw, ICE_DBG_PTP, "PTP failed to send msg to phy %d\n",
 			  err);
-		return err;
-	}
-
-	*val = phy_msg.data;
+	else
+		*val = msg.data;
 
-	return 0;
+	return err;
 }
 
 /**
- * ice_phy_res_address_eth56g - Calculate a PHY port register address
- * @port: Port number to be written
+ * ice_phy_res_addr_eth56g - Calculate a PHY port register address
+ * @hw: pointer to the HW struct
+ * @lane: Lane number to be written
  * @res_type: resource type (register/memory)
  * @offset: Offset from PHY port register base
  * @addr: The result address
- *
- * Return:
- * * %0      - success
- * * %EINVAL - invalid port number or resource type
  */
-static int ice_phy_res_address_eth56g(u8 port, enum eth56g_res_type res_type,
-				      u32 offset, u32 *addr)
+static int ice_phy_res_addr_eth56g(struct ice_hw *hw, u8 lane,
+				   enum eth56g_res_type res_type, u32 offset,
+				   u32 *addr)
 {
-	u8 lane = port % ICE_PORTS_PER_QUAD;
-	u8 phy = ICE_GET_QUAD_NUM(port);
-
 	if (res_type >= NUM_ETH56G_PHY_RES)
 		return -EINVAL;
 
-	*addr = eth56g_phy_res[res_type].base[phy] +
+	/* Lanes 4..7 are in fact 0..3 on a second PHY */
+	lane %= hw->ptp.ports_per_phy;
+	*addr = eth56g_phy_res[res_type].base_addr +
 		lane * eth56g_phy_res[res_type].step + offset;
+
 	return 0;
 }
 
@@ -1014,19 +1019,17 @@ static int ice_phy_res_address_eth56g(u8 port, enum eth56g_res_type res_type,
 static int ice_write_port_eth56g(struct ice_hw *hw, u8 port, u32 offset,
 				 u32 val, enum eth56g_res_type res_type)
 {
-	u8 phy_port = port % hw->ptp.ports_per_phy;
-	u8 phy_idx = port / hw->ptp.ports_per_phy;
 	u32 addr;
 	int err;
 
 	if (port >= hw->ptp.num_lports)
 		return -EINVAL;
 
-	err = ice_phy_res_address_eth56g(phy_port, res_type, offset, &addr);
+	err = ice_phy_res_addr_eth56g(hw, port, res_type, offset, &addr);
 	if (err)
 		return err;
 
-	return ice_write_phy_eth56g(hw, phy_idx, addr, val);
+	return ice_write_phy_eth56g(hw, port, addr, val);
 }
 
 /**
@@ -1045,19 +1048,17 @@ static int ice_write_port_eth56g(struct ice_hw *hw, u8 port, u32 offset,
 static int ice_read_port_eth56g(struct ice_hw *hw, u8 port, u32 offset,
 				u32 *val, enum eth56g_res_type res_type)
 {
-	u8 phy_port = port % hw->ptp.ports_per_phy;
-	u8 phy_idx = port / hw->ptp.ports_per_phy;
 	u32 addr;
 	int err;
 
 	if (port >= hw->ptp.num_lports)
 		return -EINVAL;
 
-	err = ice_phy_res_address_eth56g(phy_port, res_type, offset, &addr);
+	err = ice_phy_res_addr_eth56g(hw, port, res_type, offset, &addr);
 	if (err)
 		return err;
 
-	return ice_read_phy_eth56g(hw, phy_idx, addr, val);
+	return ice_read_phy_eth56g(hw, port, addr, val);
 }
 
 /**
@@ -1206,6 +1207,46 @@ static int ice_write_port_mem_eth56g(struct ice_hw *hw, u8 port, u16 offset,
 	return ice_write_port_eth56g(hw, port, offset, val, ETH56G_PHY_MEM_PTP);
 }
 
+/**
+ * ice_write_quad_ptp_reg_eth56g - Write a PHY quad register
+ * @hw: pointer to the HW struct
+ * @offset: PHY register offset
+ * @port: Port number
+ * @val: Value to write
+ */
+static int ice_write_quad_ptp_reg_eth56g(struct ice_hw *hw, u8 port,
+					 u32 offset, u32 val)
+{
+	u32 addr;
+
+	if (port >= hw->ptp.num_lports)
+		return -EIO;
+
+	addr = eth56g_phy_res[ETH56G_PHY_REG_PTP].base_addr + offset;
+
+	return ice_write_phy_eth56g(hw, port, addr, val);
+}
+
+/**
+ * ice_read_quad_ptp_reg_eth56g - Read a PHY quad register
+ * @hw: pointer to the HW struct
+ * @offset: PHY register offset
+ * @port: Port number
+ * @val: Value to read
+ */
+static int ice_read_quad_ptp_reg_eth56g(struct ice_hw *hw, u8 port,
+					u32 offset, u32 *val)
+{
+	u32 addr;
+
+	if (port >= hw->ptp.num_lports)
+		return -EIO;
+
+	addr = eth56g_phy_res[ETH56G_PHY_REG_PTP].base_addr + offset;
+
+	return ice_read_phy_eth56g(hw, port, addr, val);
+}
+
 /**
  * ice_is_64b_phy_reg_eth56g - Check if this is a 64bit PHY register
  * @low_addr: the low address to check
@@ -1924,7 +1965,6 @@ ice_phy_get_speed_eth56g(struct ice_link_status *li)
  */
 static int ice_phy_cfg_parpcs_eth56g(struct ice_hw *hw, u8 port)
 {
-	u8 port_blk = port & ~(ICE_PORTS_PER_QUAD - 1);
 	u32 val;
 	int err;
 
@@ -1939,8 +1979,8 @@ static int ice_phy_cfg_parpcs_eth56g(struct ice_hw *hw, u8 port)
 	switch (ice_phy_get_speed_eth56g(&hw->port_info->phy.link_info)) {
 	case ICE_ETH56G_LNK_SPD_1G:
 	case ICE_ETH56G_LNK_SPD_2_5G:
-		err = ice_read_ptp_reg_eth56g(hw, port_blk,
-					      PHY_GPCS_CONFIG_REG0, &val);
+		err = ice_read_quad_ptp_reg_eth56g(hw, port,
+						   PHY_GPCS_CONFIG_REG0, &val);
 		if (err) {
 			ice_debug(hw, ICE_DBG_PTP, "Failed to read PHY_GPCS_CONFIG_REG0, status: %d",
 				  err);
@@ -1951,8 +1991,8 @@ static int ice_phy_cfg_parpcs_eth56g(struct ice_hw *hw, u8 port)
 		val |= FIELD_PREP(PHY_GPCS_CONFIG_REG0_TX_THR_M,
 				  ICE_ETH56G_NOMINAL_TX_THRESH);
 
-		err = ice_write_ptp_reg_eth56g(hw, port_blk,
-					       PHY_GPCS_CONFIG_REG0, val);
+		err = ice_write_quad_ptp_reg_eth56g(hw, port,
+						    PHY_GPCS_CONFIG_REG0, val);
 		if (err) {
 			ice_debug(hw, ICE_DBG_PTP, "Failed to write PHY_GPCS_CONFIG_REG0, status: %d",
 				  err);
@@ -1993,50 +2033,48 @@ static int ice_phy_cfg_parpcs_eth56g(struct ice_hw *hw, u8 port)
  */
 int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port)
 {
-	u8 port_blk = port & ~(ICE_PORTS_PER_QUAD - 1);
-	u8 blk_port = port & (ICE_PORTS_PER_QUAD - 1);
+	u8 quad_lane = port % ICE_PORTS_PER_QUAD;
+	u32 addr, val, peer_delay;
 	bool enable, sfd_ena;
-	u32 val, peer_delay;
 	int err;
 
 	enable = hw->ptp.phy.eth56g.onestep_ena;
 	peer_delay = hw->ptp.phy.eth56g.peer_delay;
 	sfd_ena = hw->ptp.phy.eth56g.sfd_ena;
 
-	/* PHY_PTP_1STEP_CONFIG */
-	err = ice_read_ptp_reg_eth56g(hw, port_blk, PHY_PTP_1STEP_CONFIG, &val);
+	addr = PHY_PTP_1STEP_CONFIG;
+	err = ice_read_quad_ptp_reg_eth56g(hw, port, addr, &val);
 	if (err)
 		return err;
 
 	if (enable)
-		val |= blk_port;
+		val |= BIT(quad_lane);
 	else
-		val &= ~blk_port;
+		val &= ~BIT(quad_lane);
 
-	val &= ~(PHY_PTP_1STEP_T1S_UP64_M | PHY_PTP_1STEP_T1S_DELTA_M);
+	val &= ~PHY_PTP_1STEP_T1S_UP64_M;
+	val &= ~PHY_PTP_1STEP_T1S_DELTA_M;
 
-	err = ice_write_ptp_reg_eth56g(hw, port_blk, PHY_PTP_1STEP_CONFIG, val);
+	err = ice_write_quad_ptp_reg_eth56g(hw, port, addr, val);
 	if (err)
 		return err;
 
-	/* PHY_PTP_1STEP_PEER_DELAY */
+	addr = PHY_PTP_1STEP_PEER_DELAY(quad_lane);
 	val = FIELD_PREP(PHY_PTP_1STEP_PD_DELAY_M, peer_delay);
 	if (peer_delay)
 		val |= PHY_PTP_1STEP_PD_ADD_PD_M;
 	val |= PHY_PTP_1STEP_PD_DLY_V_M;
-	err = ice_write_ptp_reg_eth56g(hw, port_blk,
-				       PHY_PTP_1STEP_PEER_DELAY(blk_port), val);
+	err = ice_write_quad_ptp_reg_eth56g(hw, port, addr, val);
 	if (err)
 		return err;
 
 	val &= ~PHY_PTP_1STEP_PD_DLY_V_M;
-	err = ice_write_ptp_reg_eth56g(hw, port_blk,
-				       PHY_PTP_1STEP_PEER_DELAY(blk_port), val);
+	err = ice_write_quad_ptp_reg_eth56g(hw, port, addr, val);
 	if (err)
 		return err;
 
-	/* PHY_MAC_XIF_MODE */
-	err = ice_read_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, &val);
+	addr = PHY_MAC_XIF_MODE;
+	err = ice_read_mac_reg_eth56g(hw, port, addr, &val);
 	if (err)
 		return err;
 
@@ -2056,7 +2094,7 @@ int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port)
 	       FIELD_PREP(PHY_MAC_XIF_TS_BIN_MODE_M, enable) |
 	       FIELD_PREP(PHY_MAC_XIF_TS_SFD_ENA_M, sfd_ena);
 
-	return ice_write_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, val);
+	return ice_write_mac_reg_eth56g(hw, port, addr, val);
 }
 
 /**
@@ -2098,21 +2136,22 @@ static u32 ice_ptp_calc_bitslip_eth56g(struct ice_hw *hw, u8 port, u32 bs,
 				       bool fc, bool rs,
 				       enum ice_eth56g_link_spd spd)
 {
-	u8 port_offset = port & (ICE_PORTS_PER_QUAD - 1);
-	u8 port_blk = port & ~(ICE_PORTS_PER_QUAD - 1);
 	u32 bitslip;
 	int err;
 
 	if (!bs || rs)
 		return 0;
 
-	if (spd == ICE_ETH56G_LNK_SPD_1G || spd == ICE_ETH56G_LNK_SPD_2_5G)
+	if (spd == ICE_ETH56G_LNK_SPD_1G || spd == ICE_ETH56G_LNK_SPD_2_5G) {
 		err = ice_read_gpcs_reg_eth56g(hw, port, PHY_GPCS_BITSLIP,
 					       &bitslip);
-	else
-		err = ice_read_ptp_reg_eth56g(hw, port_blk,
-					      PHY_REG_SD_BIT_SLIP(port_offset),
-					      &bitslip);
+	} else {
+		u8 quad_lane = port % ICE_PORTS_PER_QUAD;
+		u32 addr;
+
+		addr = PHY_REG_SD_BIT_SLIP(quad_lane);
+		err = ice_read_quad_ptp_reg_eth56g(hw, port, addr, &bitslip);
+	}
 	if (err)
 		return 0;
 
@@ -2671,8 +2710,6 @@ static void ice_ptp_init_phy_e825(struct ice_hw *hw)
 	params->onestep_ena = false;
 	params->peer_delay = 0;
 	params->sfd_ena = false;
-	params->phy_addr[0] = eth56g_phy_0;
-	params->phy_addr[1] = eth56g_phy_1;
 	params->num_phys = 2;
 	ptp->ports_per_phy = 4;
 	ptp->num_lports = params->num_phys * ptp->ports_per_phy;
@@ -2700,10 +2737,9 @@ static void ice_fill_phy_msg_e82x(struct ice_hw *hw,
 				  struct ice_sbq_msg_input *msg, u8 port,
 				  u16 offset)
 {
-	int phy_port, phy, quadtype;
+	int phy_port, quadtype;
 
 	phy_port = port % hw->ptp.ports_per_phy;
-	phy = port / hw->ptp.ports_per_phy;
 	quadtype = ICE_GET_QUAD_NUM(port) %
 		   ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy);
 
@@ -2715,12 +2751,7 @@ static void ice_fill_phy_msg_e82x(struct ice_hw *hw,
 		msg->msg_addr_high = P_Q1_H(P_4_BASE + offset, phy_port);
 	}
 
-	if (phy == 0)
-		msg->dest_dev = rmn_0;
-	else if (phy == 1)
-		msg->dest_dev = rmn_1;
-	else
-		msg->dest_dev = rmn_2;
+	msg->dest_dev = phy_0;
 }
 
 /**
@@ -3043,7 +3074,7 @@ static int ice_fill_quad_msg_e82x(struct ice_hw *hw,
 	if (quad >= ICE_GET_QUAD_NUM(hw->ptp.num_lports))
 		return -EINVAL;
 
-	msg->dest_dev = rmn_0;
+	msg->dest_dev = phy_0;
 
 	if (!(quad % ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy)))
 		addr = Q_0_BASE + offset;
@@ -4762,7 +4793,7 @@ static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
 	msg.msg_addr_low = lower_16_bits(addr);
 	msg.msg_addr_high = upper_16_bits(addr);
 	msg.opcode = ice_sbq_msg_rd;
-	msg.dest_dev = rmn_0;
+	msg.dest_dev = phy_0;
 
 	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
 	if (err) {
@@ -4792,7 +4823,7 @@ static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
 	msg.msg_addr_low = lower_16_bits(addr);
 	msg.msg_addr_high = upper_16_bits(addr);
 	msg.opcode = ice_sbq_msg_wr;
-	msg.dest_dev = rmn_0;
+	msg.dest_dev = phy_0;
 	msg.data = val;
 
 	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 35141198f261..c731196ace30 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -72,7 +72,7 @@ enum ice_eth56g_link_spd {
  * ETH56G devices
  */
 struct ice_phy_reg_info_eth56g {
-	u32 base[NUM_ETH56G_PHY_RES];
+	u32 base_addr;
 	u32 step;
 };
 
@@ -773,37 +773,20 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define PHY_MAC_XIF_TS_SFD_ENA_M	ICE_M(0x1, 20)
 #define PHY_MAC_XIF_GMII_TS_SEL_M	ICE_M(0x1, 21)
 
-/* GPCS config register */
-#define PHY_GPCS_CONFIG_REG0		0x268
-#define PHY_GPCS_CONFIG_REG0_TX_THR_M	ICE_M(0xF, 24)
-#define PHY_GPCS_BITSLIP		0x5C
-
 #define PHY_TS_INT_CONFIG_THRESHOLD_M	ICE_M(0x3F, 0)
 #define PHY_TS_INT_CONFIG_ENA_M		BIT(6)
 
-/* 1-step PTP config */
-#define PHY_PTP_1STEP_CONFIG		0x270
-#define PHY_PTP_1STEP_T1S_UP64_M	ICE_M(0xF, 4)
-#define PHY_PTP_1STEP_T1S_DELTA_M	ICE_M(0xF, 8)
-#define PHY_PTP_1STEP_PEER_DELAY(_port)	(0x274 + 4 * (_port))
-#define PHY_PTP_1STEP_PD_ADD_PD_M	ICE_M(0x1, 0)
-#define PHY_PTP_1STEP_PD_DELAY_M	ICE_M(0x3fffffff, 1)
-#define PHY_PTP_1STEP_PD_DLY_V_M	ICE_M(0x1, 31)
-
 /* Macros to derive offsets for TimeStampLow and TimeStampHigh */
 #define PHY_TSTAMP_L(x) (((x) * 8) + 0)
 #define PHY_TSTAMP_U(x) (((x) * 8) + 4)
 
-#define PHY_REG_REVISION		0x85000
-
 #define PHY_REG_DESKEW_0		0x94
 #define PHY_REG_DESKEW_0_RLEVEL		GENMASK(6, 0)
 #define PHY_REG_DESKEW_0_RLEVEL_FRAC	GENMASK(9, 7)
 #define PHY_REG_DESKEW_0_RLEVEL_FRAC_W	3
 #define PHY_REG_DESKEW_0_VALID		GENMASK(10, 10)
 
-#define PHY_REG_GPCS_BITSLIP		0x5C
-#define PHY_REG_SD_BIT_SLIP(_port_offset)	(0x29C + 4 * (_port_offset))
+#define PHY_REG_REVISION		0x85000
 #define PHY_REVISION_ETH56G		0x10200
 #define PHY_VENDOR_TXLANE_THRESH	0x2000C
 
@@ -822,7 +805,21 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define PHY_MAC_BLOCKTIME		0x50
 #define PHY_MAC_MARKERTIME		0x54
 #define PHY_MAC_TX_OFFSET		0x58
+#define PHY_GPCS_BITSLIP		0x5C
 
 #define PHY_PTP_INT_STATUS		0x7FD140
 
+/* ETH56G registers shared per quad */
+/* GPCS config register */
+#define PHY_GPCS_CONFIG_REG0		0x268
+#define PHY_GPCS_CONFIG_REG0_TX_THR_M	GENMASK(27, 24)
+/* 1-step PTP config */
+#define PHY_PTP_1STEP_CONFIG		0x270
+#define PHY_PTP_1STEP_T1S_UP64_M	GENMASK(7, 4)
+#define PHY_PTP_1STEP_T1S_DELTA_M	GENMASK(11, 8)
+#define PHY_PTP_1STEP_PEER_DELAY(_quad_lane)	(0x274 + 4 * (_quad_lane))
+#define PHY_PTP_1STEP_PD_ADD_PD_M	BIT(0)
+#define PHY_PTP_1STEP_PD_DELAY_M	GENMASK(30, 1)
+#define PHY_PTP_1STEP_PD_DLY_V_M	BIT(31)
+#define PHY_REG_SD_BIT_SLIP(_quad_lane)	(0x29C + 4 * (_quad_lane))
 #endif /* _ICE_PTP_HW_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
index 3b0054faf70c..f362607ece35 100644
--- a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
@@ -47,12 +47,9 @@ struct ice_sbq_evt_desc {
 };
 
 enum ice_sbq_msg_dev {
-	eth56g_phy_0	= 0x02,
-	rmn_0		= 0x02,
-	rmn_1		= 0x03,
-	rmn_2		= 0x04,
+	phy_0		= 0x02,
 	cgu		= 0x06,
-	eth56g_phy_1	= 0x0D,
+	phy_0_peer	= 0x0D,
 };
 
 enum ice_sbq_msg_opcode {
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 45768796691f..479227bdff75 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -850,7 +850,6 @@ struct ice_mbx_data {
 
 struct ice_eth56g_params {
 	u8 num_phys;
-	u8 phy_addr[2];
 	bool onestep_ena;
 	bool sfd_ena;
 	u32 peer_delay;
-- 
2.46.1

