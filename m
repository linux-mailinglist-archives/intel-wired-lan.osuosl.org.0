Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 524E88A2F03
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 15:11:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88AB4606C2;
	Fri, 12 Apr 2024 13:11:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y81pp56o_D_2; Fri, 12 Apr 2024 13:11:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CECEB606F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712927497;
	bh=/pInUYKJmxEUqAms2fQNwu+z3CUF4h4xKWcI0NL8MEE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FhvfhthNZbHuTNjlFSKyLqCdd66mTBYQIAPPKWIXcyHS8hXGdbTkeV+Fiq64dUM8T
	 emWyvjiPpb28kYUd4eBzp+LxcFnd3BG57X2aZpbT5khnVx/zgKLPc5wAh6jyOkc0gS
	 +7oKQpZ727d4xaaS6KJN07tYLXtUWKk+HuUYrkEVNr2XeFEHKlR2M/1h3zxhUaBMGf
	 1JI2XvUKBagpwqf0khllnLlM6UFWhv/gwis4D+7MVyraMkHrGTAsGPP7izUUDhSuVV
	 /T1Ykl0PvJwdFgSVfZcY6nYq1TtMRyB4IyfpuiBvvN/X9Dqqlu63uwOitN36gu68fr
	 erz6UY928M+1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CECEB606F5;
	Fri, 12 Apr 2024 13:11:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A9D61BF997
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D830605B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WJfO84eRXtfY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 13:11:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 432C960774
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 432C960774
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 432C960774
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:26 +0000 (UTC)
X-CSE-ConnectionGUID: K7cSaCBvQTaYG04QSDfyZQ==
X-CSE-MsgGUID: +QtD4W0vRVqTCmOA9zSlYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12230981"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="12230981"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 06:11:25 -0700
X-CSE-ConnectionGUID: PVdGdM7RQ9SC9+sQSCJJZQ==
X-CSE-MsgGUID: 8HjC3aXQShmKgYozVzib+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="52384904"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa001.fm.intel.com with ESMTP; 12 Apr 2024 06:11:22 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Apr 2024 15:06:50 +0200
Message-ID: <20240412131104.322851-21-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240412131104.322851-14-karol.kolacinski@intel.com>
References: <20240412131104.322851-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712927486; x=1744463486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jMYdHY2lkHjJyJ7Q6+NU4a0OJiiJExEwFMbdaBXfx4o=;
 b=I1DorxDSaEntpSyVHgZGE5BcqdvLLssDjNVTFDxuvvgduzFHV6NVX2M0
 RRVWkV/Lj1maY9M2/NRInWoqlW5iOa3KkT10LJn1NXW4+csIE0NHxuM6L
 kzVdWrqaU3kltK/NWCgmlbN53hLc8ZgyXv9rifhfXcfBBP8DSt9MUYGuh
 Qm6reMx0a/Os7LSuzKEDGLrEqRBWT/ttetVI7v2wcHggUUA2JlGqCR1um
 gthpgCR40ET0Hxw+3z/SWGJ9CNzh5k1duQ9+DAkQzyog2xGCZNTbxqu4J
 ZikBQzLx5LDMn/1zOEnARyuCfNxN+eT+TSfhgkBr+WMPhdPawW+hqvn7R
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I1DorxDS
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 07/12] ice: Introduce ETH56G
 PHY model for E825C products
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
Cc: Michal Michalik <michal.michalik@intel.com>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

E825C products feature a new PHY model - ETH56G.

Introduces all necessary PHY definitions, functions etc. for ETH56G PHY,
analogous to E82X and E810 ones with addition of a few HW-specific
functionalities for ETH56G like one-step timestamping.

It ensures correct PTP initialization and operation for E825C products.

Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Co-developed-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V7 -> V8: brought back P_REG_40B_HIGH_S due to 32 bit compatibility issue
V4 -> V5: - removed inline in function types
          - removed unnecessary ifdefs
          - adjusted multiple returns of local vars at the end of function
V1 -> V4: Adjusted bitslip calculations

 drivers/net/ethernet/intel/ice/ice_common.c   |    3 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |    1 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |   99 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |    1 +
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  315 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 1873 +++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  241 ++-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   20 +-
 9 files changed, 2409 insertions(+), 154 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index ee973aa577df..c41eed5643d6 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3070,8 +3070,7 @@ bool ice_is_100m_speed_supported(struct ice_hw *hw)
  * If no bit gets set, ICE_AQ_LINK_SPEED_UNKNOWN will be returned
  * If more than one bit gets set, ICE_AQ_LINK_SPEED_UNKNOWN will be returned
  */
-static u16
-ice_get_link_speed_based_on_phy_type(u64 phy_type_low, u64 phy_type_high)
+u16 ice_get_link_speed_based_on_phy_type(u64 phy_type_low, u64 phy_type_high)
 {
 	u16 speed_phy_type_high = ICE_AQ_LINK_SPEED_UNKNOWN;
 	u16 speed_phy_type_low = ICE_AQ_LINK_SPEED_UNKNOWN;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 70f57340eb0d..86cc1df469dd 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -262,6 +262,7 @@ int
 ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
 		bool *value, struct ice_sq_cd *cd);
 bool ice_is_100m_speed_supported(struct ice_hw *hw);
+u16 ice_get_link_speed_based_on_phy_type(u64 phy_type_low, u64 phy_type_high);
 int
 ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 		    struct ice_sq_cd *cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 824d3f17587c..105caf51261a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1011,6 +1011,26 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	tx->len = 0;
 }
 
+/**
+ * ice_ptp_init_tx_eth56g - Initialize tracking for Tx timestamps
+ * @pf: Board private structure
+ * @tx: the Tx tracking structure to initialize
+ * @port: the port this structure tracks
+ *
+ * Initialize the Tx timestamp tracker for this port. ETH56G PHYs
+ * have independent memory blocks for all ports.
+ */
+static int
+ice_ptp_init_tx_eth56g(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
+{
+	tx->block = port;
+	tx->offset = 0;
+	tx->len = INDEX_PER_PORT_ETH56G;
+	tx->has_ready_bitmap = 1;
+
+	return ice_ptp_alloc_tx_tracker(tx);
+}
+
 /**
  * ice_ptp_init_tx_e82x - Initialize tracking for Tx timestamps
  * @pf: Board private structure
@@ -1341,10 +1361,19 @@ ice_ptp_port_phy_stop(struct ice_ptp_port *ptp_port)
 
 	mutex_lock(&ptp_port->ps_lock);
 
-	kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
+	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		err = ice_stop_phy_timer_eth56g(hw, port, true);
+		break;
+	case ICE_PHY_E82X:
+		kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
 
-	err = ice_stop_phy_timer_e82x(hw, port, true);
-	if (err)
+		err = ice_stop_phy_timer_e82x(hw, port, true);
+		break;
+	default:
+		err = -ENODEV;
+	}
+	if (err && err != -EBUSY)
 		dev_err(ice_pf_to_dev(pf), "PTP failed to set PHY port %d down, err %d\n",
 			port, err);
 
@@ -1378,27 +1407,39 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 
 	mutex_lock(&ptp_port->ps_lock);
 
-	kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
+	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		err = ice_start_phy_timer_eth56g(hw, port);
+		break;
+	case ICE_PHY_E82X:
+		/* Start the PHY timer in Vernier mode */
+		kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
 
-	/* temporarily disable Tx timestamps while calibrating PHY offset */
-	spin_lock_irqsave(&ptp_port->tx.lock, flags);
-	ptp_port->tx.calibrating = true;
-	spin_unlock_irqrestore(&ptp_port->tx.lock, flags);
-	ptp_port->tx_fifo_busy_cnt = 0;
+		/* temporarily disable Tx timestamps while calibrating
+		 * PHY offset
+		 */
+		spin_lock_irqsave(&ptp_port->tx.lock, flags);
+		ptp_port->tx.calibrating = true;
+		spin_unlock_irqrestore(&ptp_port->tx.lock, flags);
+		ptp_port->tx_fifo_busy_cnt = 0;
 
-	/* Start the PHY timer in Vernier mode */
-	err = ice_start_phy_timer_e82x(hw, port);
-	if (err)
-		goto out_unlock;
+		/* Start the PHY timer in Vernier mode */
+		err = ice_start_phy_timer_e82x(hw, port);
+		if (err)
+			break;
 
-	/* Enable Tx timestamps right away */
-	spin_lock_irqsave(&ptp_port->tx.lock, flags);
-	ptp_port->tx.calibrating = false;
-	spin_unlock_irqrestore(&ptp_port->tx.lock, flags);
+		/* Enable Tx timestamps right away */
+		spin_lock_irqsave(&ptp_port->tx.lock, flags);
+		ptp_port->tx.calibrating = false;
+		spin_unlock_irqrestore(&ptp_port->tx.lock, flags);
 
-	kthread_queue_delayed_work(pf->ptp.kworker, &ptp_port->ov_work, 0);
+		kthread_queue_delayed_work(pf->ptp.kworker, &ptp_port->ov_work,
+					   0);
+		break;
+	default:
+		err = -ENODEV;
+	}
 
-out_unlock:
 	if (err)
 		dev_err(ice_pf_to_dev(pf), "PTP failed to set PHY port %d up, err %d\n",
 			port, err);
@@ -1436,6 +1477,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	case ICE_PHY_E810:
 		/* Do not reconfigure E810 PHY */
 		return;
+	case ICE_PHY_ETH56G:
 	case ICE_PHY_E82X:
 		ice_ptp_port_phy_restart(ptp_port);
 		return;
@@ -1462,6 +1504,22 @@ static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 	ice_ptp_reset_ts_memory(hw);
 
 	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G: {
+		int port;
+
+		for (port = 0; port < hw->ptp.num_lports; port++) {
+			int err;
+
+			err = ice_phy_cfg_intr_eth56g(hw, port, ena, threshold);
+			if (err) {
+				dev_err(dev, "Failed to configure PHY interrupt for port %d, err %d\n",
+					port, err);
+				return err;
+			}
+		}
+
+		return 0;
+	}
 	case ICE_PHY_E82X: {
 		int quad;
 
@@ -3072,6 +3130,9 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 	mutex_init(&ptp_port->ps_lock);
 
 	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
+					      ptp_port->port_num);
 	case ICE_PHY_E810:
 		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
 	case ICE_PHY_E82X:
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 3af20025043a..e0c23aaedc12 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -153,6 +153,7 @@ struct ice_ptp_tx {
 #define INDEX_PER_QUAD			64
 #define INDEX_PER_PORT_E82X		16
 #define INDEX_PER_PORT_E810		64
+#define INDEX_PER_PORT_ETH56G		64
 
 /**
  * struct ice_ptp_port - data used to initialize an external port for PTP
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index 2c4dab0c48ab..ef180936f60c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -9,6 +9,321 @@
  */
 /* Constants defined for the PTP 1588 clock hardware. */
 
+const struct ice_phy_reg_info_eth56g eth56g_phy_res[NUM_ETH56G_PHY_RES] = {
+	/* ETH56G_PHY_REG_PTP */
+	{
+		/* base_addr */
+		{
+			0x092000,
+			0x126000,
+			0x1BA000,
+			0x24E000,
+			0x2E2000,
+		},
+		/* step */
+		0x98,
+	},
+	/* ETH56G_PHY_MEM_PTP */
+	{
+		/* base_addr */
+		{
+			0x093000,
+			0x127000,
+			0x1BB000,
+			0x24F000,
+			0x2E3000,
+		},
+		/* step */
+		0x200,
+	},
+	/* ETH56G_PHY_REG_XPCS */
+	{
+		/* base_addr */
+		{
+			0x000000,
+			0x009400,
+			0x128000,
+			0x1BC000,
+			0x250000,
+		},
+		/* step */
+		0x21000,
+	},
+	/* ETH56G_PHY_REG_MAC */
+	{
+		/* base_addr */
+		{
+			0x085000,
+			0x119000,
+			0x1AD000,
+			0x241000,
+			0x2D5000,
+		},
+		/* step */
+		0x1000,
+	},
+	/* ETH56G_PHY_REG_GPCS */
+	{
+		/* base_addr */
+		{
+			0x084000,
+			0x118000,
+			0x1AC000,
+			0x240000,
+			0x2D4000,
+		},
+		/* step */
+		0x400,
+	},
+};
+
+const
+struct ice_eth56g_mac_reg_cfg eth56g_mac_cfg[NUM_ICE_ETH56G_LNK_SPD] = {
+	[ICE_ETH56G_LNK_SPD_1G] = {
+		.tx_mode = { .def = 6, },
+		.rx_mode = { .def = 6, },
+		.blks_per_clk = 1,
+		.blktime = 0x4000, /* 32 */
+		.tx_offset = {
+			.serdes = 0x6666, /* 51.2 */
+			.no_fec = 0xd066, /* 104.2 */
+			.sfd = 0x3000, /* 24 */
+			.onestep = 0x30000 /* 384 */
+		},
+		.rx_offset = {
+			.serdes = 0xffffc59a, /* -29.2 */
+			.no_fec = 0xffff0a80, /* -122.75 */
+			.sfd = 0x2c00, /* 22 */
+			.bs_ds = 0x19a /* 0.8 */
+			/* Dynamic bitslip 0 equals to 10 */
+		}
+	},
+	[ICE_ETH56G_LNK_SPD_2_5G] = {
+		.tx_mode = { .def = 6, },
+		.rx_mode = { .def = 6, },
+		.blks_per_clk = 1,
+		.blktime = 0x199a, /* 12.8 */
+		.tx_offset = {
+			.serdes = 0x28f6, /* 20.48 */
+			.no_fec = 0x53b8, /* 41.86 */
+			.sfd = 0x1333, /* 9.6 */
+			.onestep = 0x13333 /* 153.6 */
+		},
+		.rx_offset = {
+			.serdes = 0xffffe8a4, /* -11.68 */
+			.no_fec = 0xffff9a76, /* -50.77 */
+			.sfd = 0xf33, /* 7.6 */
+			.bs_ds = 0xa4 /* 0.32 */
+		}
+	},
+	[ICE_ETH56G_LNK_SPD_10G] = {
+		.tx_mode = { .def = 1, },
+		.rx_mode = { .def = 1, },
+		.blks_per_clk = 1,
+		.blktime = 0x666, /* 3.2 */
+		.tx_offset = {
+			.serdes = 0x234c, /* 17.6484848 */
+			.no_fec = 0x8e80, /* 71.25 */
+			.fc = 0xb4a4, /* 90.32 */
+			.sfd = 0x4a4, /* 2.32 */
+			.onestep = 0x4ccd /* 38.4 */
+		},
+		.rx_offset = {
+			.serdes = 0xffffeb27, /* -10.42424 */
+			.no_fec = 0xffffcccd, /* -25.6 */
+			.fc = 0xfffe0014, /* -255.96 */
+			.sfd = 0x4a4, /* 2.32 */
+			.bs_ds = 0x32 /* 0.0969697 */
+		}
+	},
+	[ICE_ETH56G_LNK_SPD_25G] = {
+		.tx_mode = {
+			.def = 1,
+			.rs = 4
+		},
+		.tx_mk_dly = 4,
+		.tx_cw_dly = {
+			.def = 1,
+			.onestep = 6
+		},
+		.rx_mode = {
+			.def = 1,
+			.rs = 4
+		},
+		.rx_mk_dly = {
+			.def = 1,
+			.rs = 1
+		},
+		.rx_cw_dly = {
+			.def = 1,
+			.rs = 1
+		},
+		.blks_per_clk = 1,
+		.blktime = 0x28f, /* 1.28 */
+		.mktime = 0x147b, /* 10.24, only if RS-FEC enabled */
+		.tx_offset = {
+			.serdes = 0xe1e, /* 7.0593939 */
+			.no_fec = 0x3857, /* 28.17 */
+			.fc = 0x48c3, /* 36.38 */
+			.rs = 0x8100, /* 64.5 */
+			.sfd = 0x1dc, /* 0.93 */
+			.onestep = 0x1eb8 /* 15.36 */
+		},
+		.rx_offset = {
+			.serdes = 0xfffff7a9, /* -4.1697 */
+			.no_fec = 0xffffe71a, /* -12.45 */
+			.fc = 0xfffe894d, /* -187.35 */
+			.rs = 0xfffff8cd, /* -3.6 */
+			.sfd = 0x1dc, /* 0.93 */
+			.bs_ds = 0x14 /* 0.0387879, RS-FEC 0 */
+		}
+	},
+	[ICE_ETH56G_LNK_SPD_40G] = {
+		.tx_mode = { .def = 3 },
+		.tx_mk_dly = 4,
+		.tx_cw_dly = {
+			.def = 1,
+			.onestep = 6
+		},
+		.rx_mode = { .def = 4 },
+		.rx_mk_dly = { .def = 1 },
+		.rx_cw_dly = { .def = 1 },
+		.blktime = 0x333, /* 1.6 */
+		.mktime = 0xccd, /* 6.4 */
+		.tx_offset = {
+			.serdes = 0x234c, /* 17.6484848 */
+			.no_fec = 0x5a8a, /* 45.27 */
+			.fc = 0x81b8, /* 64.86 */
+			.sfd = 0x4a4, /* 2.32 */
+			.onestep = 0x1333 /* 9.6 */
+		},
+		.rx_offset = {
+			.serdes = 0xffffeb27, /* -10.42424 */
+			.no_fec = 0xfffff594, /* -5.21 */
+			.fc = 0xfffe3080, /* -231.75 */
+			.sfd = 0x4a4, /* 2.32 */
+			.bs_ds = 0xccd /* 6.4 */
+		}
+	},
+	[ICE_ETH56G_LNK_SPD_50G] = {
+		.tx_mode = { .def = 5 },
+		.tx_mk_dly = 4,
+		.tx_cw_dly = {
+			.def = 1,
+			.onestep = 6
+		},
+		.rx_mode = { .def = 5 },
+		.rx_mk_dly = { .def = 1 },
+		.rx_cw_dly = { .def = 1 },
+		.blktime = 0x28f, /* 1.28 */
+		.mktime = 0xa3d, /* 5.12 */
+		.tx_offset = {
+			.serdes = 0x13ba, /* 9.86353 */
+			.rs = 0x5400, /* 42 */
+			.sfd = 0xe6, /* 0.45 */
+			.onestep = 0xf5c /* 7.68 */
+		},
+		.rx_offset = {
+			.serdes = 0xfffff7e8, /* -4.04706 */
+			.rs = 0xfffff994, /* -3.21 */
+			.sfd = 0xe6 /* 0.45 */
+		}
+	},
+	[ICE_ETH56G_LNK_SPD_50G2] = {
+		.tx_mode = {
+			.def = 3,
+			.rs = 2
+		},
+		.tx_mk_dly = 4,
+		.tx_cw_dly = {
+			.def = 1,
+			.onestep = 6
+		},
+		.rx_mode = {
+			.def = 4,
+			.rs = 1
+		},
+		.rx_mk_dly = { .def = 1 },
+		.rx_cw_dly = { .def = 1 },
+		.blktime = 0x28f, /* 1.28 */
+		.mktime = 0xa3d, /* 5.12 */
+		.tx_offset = {
+			.serdes = 0xe1e, /* 7.0593939 */
+			.no_fec = 0x3d33, /* 30.6 */
+			.rs = 0x5057, /* 40.17 */
+			.sfd = 0x1dc, /* 0.93 */
+			.onestep = 0xf5c /* 7.68 */
+		},
+		.rx_offset = {
+			.serdes = 0xfffff7a9, /* -4.1697 */
+			.no_fec = 0xfffff8cd, /* -3.6 */
+			.rs = 0xfffff21a, /* -6.95 */
+			.sfd = 0x1dc, /* 0.93 */
+			.bs_ds = 0xa3d /* 5.12, RS-FEC 0x633 (3.1) */
+		}
+	},
+	[ICE_ETH56G_LNK_SPD_100G] = {
+		.tx_mode = {
+			.def = 3,
+			.rs = 2
+		},
+		.tx_mk_dly = 10,
+		.tx_cw_dly = {
+			.def = 3,
+			.onestep = 6
+		},
+		.rx_mode = {
+			.def = 4,
+			.rs = 1
+		},
+		.rx_mk_dly = { .def = 5 },
+		.rx_cw_dly = { .def = 5 },
+		.blks_per_clk = 1,
+		.blktime = 0x148, /* 0.64 */
+		.mktime = 0x199a, /* 12.8 */
+		.tx_offset = {
+			.serdes = 0xe1e, /* 7.0593939 */
+			.no_fec = 0x67ec, /* 51.96 */
+			.rs = 0x44fb, /* 34.49 */
+			.sfd = 0x1dc, /* 0.93 */
+			.onestep = 0xf5c /* 7.68 */
+		},
+		.rx_offset = {
+			.serdes = 0xfffff7a9, /* -4.1697 */
+			.no_fec = 0xfffff5a9, /* -5.17 */
+			.rs = 0xfffff6e6, /* -4.55 */
+			.sfd = 0x1dc, /* 0.93 */
+			.bs_ds = 0x199a /* 12.8, RS-FEC 0x31b (1.552) */
+		}
+	},
+	[ICE_ETH56G_LNK_SPD_100G2] = {
+		.tx_mode = { .def = 5 },
+		.tx_mk_dly = 10,
+		.tx_cw_dly = {
+			.def = 3,
+			.onestep = 6
+		},
+		.rx_mode = { .def = 5 },
+		.rx_mk_dly = { .def = 5 },
+		.rx_cw_dly = { .def = 5 },
+		.blks_per_clk = 1,
+		.blktime = 0x148, /* 0.64 */
+		.mktime = 0x199a, /* 12.8 */
+		.tx_offset = {
+			.serdes = 0x13ba, /* 9.86353 */
+			.rs = 0x460a, /* 35.02 */
+			.sfd = 0xe6, /* 0.45 */
+			.onestep = 0xf5c /* 7.68 */
+		},
+		.rx_offset = {
+			.serdes = 0xfffff7e8, /* -4.04706 */
+			.rs = 0xfffff548, /* -5.36 */
+			.sfd = 0xe6, /* 0.45 */
+			.bs_ds = 0x303 /* 1.506 */
+		}
+	}
+};
+
 /* struct ice_time_ref_info_e82x
  *
  * E822 hardware can use different sources as the reference for the PTP
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 4d5063e5a200..c04678536eab 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2021, Intel Corporation. */
 
 #include <linux/delay.h>
+#include <linux/iopoll.h>
 #include "ice_common.h"
 #include "ice_ptp_hw.h"
 #include "ice_ptp_consts.h"
@@ -630,6 +631,1626 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
 	ice_flush(hw);
 }
 
+/* 56G PHY device functions
+ *
+ * The following functions operate on devices with the ETH 56G PHY.
+ */
+
+/**
+ * ice_write_phy_eth56g - Write a PHY port register
+ * @hw: pointer to the HW struct
+ * @phy_idx: PHY index
+ * @addr: PHY register address
+ * @val: Value to write
+ */
+static int ice_write_phy_eth56g(struct ice_hw *hw, u8 phy_idx, u32 addr,
+				u32 val)
+{
+	struct ice_sbq_msg_input phy_msg;
+	int err;
+
+	phy_msg.opcode = ice_sbq_msg_wr;
+
+	phy_msg.msg_addr_low = lower_16_bits(addr);
+	phy_msg.msg_addr_high = upper_16_bits(addr);
+
+	phy_msg.data = val;
+	phy_msg.dest_dev = hw->ptp.phy.eth56g.phy_addr[phy_idx];
+
+	err = ice_sbq_rw_reg(hw, &phy_msg);
+
+	if (err)
+		ice_debug(hw, ICE_DBG_PTP, "PTP failed to send msg to phy %d\n",
+			  err);
+
+	return err;
+}
+
+/**
+ * ice_read_phy_eth56g - Read a PHY port register
+ * @hw: pointer to the HW struct
+ * @phy_idx: PHY index
+ * @addr: PHY register address
+ * @val: Value to write
+ */
+static int ice_read_phy_eth56g(struct ice_hw *hw, u8 phy_idx, u32 addr,
+			       u32 *val)
+{
+	struct ice_sbq_msg_input phy_msg;
+	int err;
+
+	phy_msg.opcode = ice_sbq_msg_rd;
+
+	phy_msg.msg_addr_low = lower_16_bits(addr);
+	phy_msg.msg_addr_high = upper_16_bits(addr);
+
+	phy_msg.data = 0;
+	phy_msg.dest_dev = hw->ptp.phy.eth56g.phy_addr[phy_idx];
+
+	err = ice_sbq_rw_reg(hw, &phy_msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "PTP failed to send msg to phy %d\n",
+			  err);
+		return err;
+	}
+
+	*val = phy_msg.data;
+
+	return 0;
+}
+
+/**
+ * ice_phy_res_address_eth56g - Calculate a PHY port register address
+ * @port: Port number to be written
+ * @res_type: resource type (register/memory)
+ * @offset: Offset from PHY port register base
+ * @addr: The result address
+ */
+static int ice_phy_res_address_eth56g(u8 port, enum eth56g_res_type res_type,
+				      u32 offset, u32 *addr)
+{
+	u8 lane = port % ICE_PORTS_PER_QUAD;
+	u8 phy = ICE_GET_QUAD_NUM(port);
+
+	if (res_type >= NUM_ETH56G_PHY_RES)
+		return -EINVAL;
+
+	*addr = eth56g_phy_res[res_type].base[phy] +
+		lane * eth56g_phy_res[res_type].step + offset;
+	return 0;
+}
+
+/**
+ * ice_write_port_eth56g - Write a PHY port register
+ * @hw: pointer to the HW struct
+ * @offset: PHY register offset
+ * @port: Port number
+ * @val: Value to write
+ * @res_type: resource type (register/memory)
+ */
+static int ice_write_port_eth56g(struct ice_hw *hw, u8 port, u32 offset,
+				 u32 val, enum eth56g_res_type res_type)
+{
+	u8 phy_port = port % hw->ptp.ports_per_phy;
+	u8 phy_idx = port / hw->ptp.ports_per_phy;
+	u32 addr;
+	int err;
+
+	if (port >= hw->ptp.num_lports)
+		return -EIO;
+
+	err = ice_phy_res_address_eth56g(phy_port, res_type, offset, &addr);
+	if (err)
+		return err;
+
+	return ice_write_phy_eth56g(hw, phy_idx, addr, val);
+}
+
+/**
+ * ice_read_port_eth56g - Read a PHY port register
+ * @hw: pointer to the HW struct
+ * @offset: PHY register offset
+ * @port: Port number
+ * @val: Value to write
+ * @res_type: resource type (register/memory)
+ */
+static int ice_read_port_eth56g(struct ice_hw *hw, u8 port, u32 offset,
+				u32 *val, enum eth56g_res_type res_type)
+{
+	u8 phy_port = port % hw->ptp.ports_per_phy;
+	u8 phy_idx = port / hw->ptp.ports_per_phy;
+	u32 addr;
+	int err;
+
+	if (port >= hw->ptp.num_lports)
+		return -EINVAL;
+
+	err = ice_phy_res_address_eth56g(phy_port, res_type, offset, &addr);
+	if (err)
+		return err;
+
+	return ice_read_phy_eth56g(hw, phy_idx, addr, val);
+}
+
+/**
+ * ice_write_ptp_reg_eth56g - Write a PHY port register
+ * @hw: pointer to the HW struct
+ * @port: Port number to be written
+ * @offset: Offset from PHY port register base
+ * @val: Value to write
+ */
+static int ice_write_ptp_reg_eth56g(struct ice_hw *hw, u8 port, u16 offset,
+				    u32 val)
+{
+	return ice_write_port_eth56g(hw, port, offset, val, ETH56G_PHY_REG_PTP);
+}
+
+/**
+ * ice_write_mac_reg_eth56g - Write a MAC PHY port register
+ * parameter
+ * @hw: pointer to the HW struct
+ * @port: Port number to be written
+ * @offset: Offset from PHY port register base
+ * @val: Value to write
+ */
+static int ice_write_mac_reg_eth56g(struct ice_hw *hw, u8 port, u32 offset,
+				    u32 val)
+{
+	return ice_write_port_eth56g(hw, port, offset, val, ETH56G_PHY_REG_MAC);
+}
+
+/**
+ * ice_write_xpcs_reg_eth56g - Write a PHY port register
+ * @hw: pointer to the HW struct
+ * @port: Port number to be written
+ * @offset: Offset from PHY port register base
+ * @val: Value to write
+ */
+static int ice_write_xpcs_reg_eth56g(struct ice_hw *hw, u8 port, u32 offset,
+				     u32 val)
+{
+	return ice_write_port_eth56g(hw, port, offset, val,
+				     ETH56G_PHY_REG_XPCS);
+}
+
+/**
+ * ice_read_ptp_reg_eth56g - Read a PHY port register
+ * @hw: pointer to the HW struct
+ * @port: Port number to be read
+ * @offset: Offset from PHY port register base
+ * @val: Pointer to the value to read (out param)
+ */
+static int ice_read_ptp_reg_eth56g(struct ice_hw *hw, u8 port, u16 offset,
+				   u32 *val)
+{
+	return ice_read_port_eth56g(hw, port, offset, val, ETH56G_PHY_REG_PTP);
+}
+
+/**
+ * ice_read_mac_reg_eth56g - Read a PHY port register
+ * @hw: pointer to the HW struct
+ * @port: Port number to be read
+ * @offset: Offset from PHY port register base
+ * @val: Pointer to the value to read (out param)
+ */
+static int ice_read_mac_reg_eth56g(struct ice_hw *hw, u8 port, u16 offset,
+				   u32 *val)
+{
+	return ice_read_port_eth56g(hw, port, offset, val, ETH56G_PHY_REG_MAC);
+}
+
+/**
+ * ice_read_gpcs_reg_eth56g - Read a PHY port register
+ * @hw: pointer to the HW struct
+ * @port: Port number to be read
+ * @offset: Offset from PHY port register base
+ * @val: Pointer to the value to read (out param)
+ */
+static int ice_read_gpcs_reg_eth56g(struct ice_hw *hw, u8 port, u16 offset,
+				    u32 *val)
+{
+	return ice_read_port_eth56g(hw, port, offset, val, ETH56G_PHY_REG_GPCS);
+}
+
+/**
+ * ice_ptp_read_port_mem_eth56g - Read a PHY port memory location
+ * @hw: pointer to the HW struct
+ * @port: Port number to be read
+ * @offset: Offset from PHY port register base
+ * @val: Pointer to the value to read (out param)
+ */
+static int ice_ptp_read_port_mem_eth56g(struct ice_hw *hw, u8 port, u16 offset,
+					u32 *val)
+{
+	return ice_read_port_eth56g(hw, port, offset, val, ETH56G_PHY_MEM_PTP);
+}
+
+/**
+ * ice_ptp_write_port_mem_eth56g - Write a PHY port memory location
+ * @hw: pointer to the HW struct
+ * @port: Port number to be read
+ * @offset: Offset from PHY port register base
+ * @val: Pointer to the value to read (out param)
+ */
+static int ice_ptp_write_port_mem_eth56g(struct ice_hw *hw, u8 port, u16 offset,
+					 u32 val)
+{
+	return ice_write_port_eth56g(hw, port, offset, val, ETH56G_PHY_MEM_PTP);
+}
+
+/**
+ * ice_is_64b_phy_reg_eth56g - Check if this is a 64bit PHY register
+ * @low_addr: the low address to check
+ * @high_addr: on return, contains the high address of the 64bit register
+ *
+ * Check if the provided low address is one of the known 64bit PHY values
+ * represented as two 32bit registers. If it is, return the appropriate high
+ * register offset to use.
+ */
+static bool ice_is_64b_phy_reg_eth56g(u16 low_addr, u16 *high_addr)
+{
+	switch (low_addr) {
+	case PHY_REG_TX_TIMER_INC_PRE_L:
+		*high_addr = PHY_REG_TX_TIMER_INC_PRE_U;
+		return true;
+	case PHY_REG_RX_TIMER_INC_PRE_L:
+		*high_addr = PHY_REG_RX_TIMER_INC_PRE_U;
+		return true;
+	case PHY_REG_TX_CAPTURE_L:
+		*high_addr = PHY_REG_TX_CAPTURE_U;
+		return true;
+	case PHY_REG_RX_CAPTURE_L:
+		*high_addr = PHY_REG_RX_CAPTURE_U;
+		return true;
+	case PHY_REG_TOTAL_TX_OFFSET_L:
+		*high_addr = PHY_REG_TOTAL_TX_OFFSET_U;
+		return true;
+	case PHY_REG_TOTAL_RX_OFFSET_L:
+		*high_addr = PHY_REG_TOTAL_RX_OFFSET_U;
+		return true;
+	case PHY_REG_TX_MEMORY_STATUS_L:
+		*high_addr = PHY_REG_TX_MEMORY_STATUS_U;
+		return true;
+	default:
+		return false;
+	}
+}
+
+/**
+ * ice_is_40b_phy_reg_eth56g - Check if this is a 40bit PHY register
+ * @low_addr: the low address to check
+ * @high_addr: on return, contains the high address of the 40bit value
+ *
+ * Check if the provided low address is one of the known 40bit PHY values
+ * split into two registers with the lower 8 bits in the low register and the
+ * upper 32 bits in the high register. If it is, return the high register
+ * offset to use.
+ */
+static bool ice_is_40b_phy_reg_eth56g(u16 low_addr, u16 *high_addr)
+{
+	switch (low_addr) {
+	case PHY_REG_TIMETUS_L:
+		*high_addr = PHY_REG_TIMETUS_U;
+		return true;
+	case PHY_PCS_REF_TUS_L:
+		*high_addr = PHY_PCS_REF_TUS_U;
+		return true;
+	case PHY_PCS_REF_INC_L:
+		*high_addr = PHY_PCS_REF_INC_U;
+		return true;
+	default:
+		return false;
+	}
+}
+
+/**
+ * ice_read_64b_phy_reg_eth56g - Read a 64bit value from PHY registers
+ * @hw: pointer to the HW struct
+ * @port: PHY port to read from
+ * @low_addr: offset of the lower register to read from
+ * @val: on return, the contents of the 64bit value from the PHY registers
+ * @res_type: resource type
+ *
+ * Check if the caller has specified a known 40 bit register offset and read
+ * the two registers associated with a 40bit value and return it in the val
+ * pointer.
+ */
+static int ice_read_64b_phy_reg_eth56g(struct ice_hw *hw, u8 port, u16 low_addr,
+				       u64 *val, enum eth56g_res_type res_type)
+{
+	u16 high_addr;
+	u32 lo, hi;
+	int err;
+
+	if (!ice_is_64b_phy_reg_eth56g(low_addr, &high_addr))
+		return -EINVAL;
+
+	err = ice_read_port_eth56g(hw, port, low_addr, &lo, res_type);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read from low register %#08x\n, err %d",
+			  low_addr, err);
+		return err;
+	}
+
+	err = ice_read_port_eth56g(hw, port, high_addr, &hi, res_type);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read from high register %#08x\n, err %d",
+			  high_addr, err);
+		return err;
+	}
+
+	*val = ((u64)hi << 32) | lo;
+
+	return 0;
+}
+
+/**
+ * ice_read_64b_ptp_reg_eth56g - Read a 64bit value from PHY registers
+ * @hw: pointer to the HW struct
+ * @port: PHY port to read from
+ * @low_addr: offset of the lower register to read from
+ * @val: on return, the contents of the 64bit value from the PHY registers
+ *
+ * Check if the caller has specified a known 40 bit register offset and read
+ * the two registers associated with a 40bit value and return it in the val
+ * pointer.
+ */
+static int ice_read_64b_ptp_reg_eth56g(struct ice_hw *hw, u8 port, u16 low_addr,
+				       u64 *val)
+{
+	return ice_read_64b_phy_reg_eth56g(hw, port, low_addr, val,
+					   ETH56G_PHY_REG_PTP);
+}
+
+/**
+ * ice_write_40b_phy_reg_eth56g - Write a 40b value to the PHY
+ * @hw: pointer to the HW struct
+ * @port: port to write to
+ * @low_addr: offset of the low register
+ * @val: 40b value to write
+ * @res_type: resource type
+ *
+ * Check if the caller has specified a known 40 bit register offset and write
+ * provided 40b value to the two associated registers by splitting it up into
+ * two chunks, the lower 8 bits and the upper 32 bits.
+ */
+static int ice_write_40b_phy_reg_eth56g(struct ice_hw *hw, u8 port,
+					u16 low_addr, u64 val,
+					enum eth56g_res_type res_type)
+{
+	u16 high_addr;
+	u32 lo, hi;
+	int err;
+
+	if (!ice_is_40b_phy_reg_eth56g(low_addr, &high_addr))
+		return -EINVAL;
+
+	lo = FIELD_GET(P_REG_40B_LOW_M, val);
+	hi = (u32)(val >> P_REG_40B_HIGH_S);
+
+	err = ice_write_port_eth56g(hw, port, low_addr, lo, res_type);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
+			  low_addr, err);
+		return err;
+	}
+
+	err = ice_write_port_eth56g(hw, port, high_addr, hi, res_type);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
+			  high_addr, err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_write_40b_ptp_reg_eth56g - Write a 40b value to the PHY
+ * @hw: pointer to the HW struct
+ * @port: port to write to
+ * @low_addr: offset of the low register
+ * @val: 40b value to write
+ *
+ * Check if the caller has specified a known 40 bit register offset and write
+ * provided 40b value to the two associated registers by splitting it up into
+ * two chunks, the lower 8 bits and the upper 32 bits.
+ */
+static int ice_write_40b_ptp_reg_eth56g(struct ice_hw *hw, u8 port,
+					u16 low_addr, u64 val)
+{
+	return ice_write_40b_phy_reg_eth56g(hw, port, low_addr, val,
+					    ETH56G_PHY_REG_PTP);
+}
+
+/**
+ * ice_write_64b_phy_reg_eth56g - Write a 64bit value to PHY registers
+ * @hw: pointer to the HW struct
+ * @port: PHY port to read from
+ * @low_addr: offset of the lower register to read from
+ * @val: the contents of the 64bit value to write to PHY
+ * @res_type: resource type
+ *
+ * Check if the caller has specified a known 64 bit register offset and write
+ * the 64bit value to the two associated 32bit PHY registers.
+ */
+static int ice_write_64b_phy_reg_eth56g(struct ice_hw *hw, u8 port,
+					u16 low_addr, u64 val,
+					enum eth56g_res_type res_type)
+{
+	u16 high_addr;
+	u32 lo, hi;
+	int err;
+
+	if (!ice_is_64b_phy_reg_eth56g(low_addr, &high_addr))
+		return -EINVAL;
+
+	lo = lower_32_bits(val);
+	hi = upper_32_bits(val);
+
+	err = ice_write_port_eth56g(hw, port, low_addr, lo, res_type);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
+			  low_addr, err);
+		return err;
+	}
+
+	err = ice_write_port_eth56g(hw, port, high_addr, hi, res_type);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
+			  high_addr, err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_write_64b_ptp_reg_eth56g - Write a 64bit value to PHY registers
+ * @hw: pointer to the HW struct
+ * @port: PHY port to read from
+ * @low_addr: offset of the lower register to read from
+ * @val: the contents of the 64bit value to write to PHY
+ *
+ * Check if the caller has specified a known 64 bit register offset and write
+ * the 64bit value to the two associated 32bit PHY registers.
+ */
+static int ice_write_64b_ptp_reg_eth56g(struct ice_hw *hw, u8 port,
+					u16 low_addr, u64 val)
+{
+	return ice_write_64b_phy_reg_eth56g(hw, port, low_addr, val,
+					    ETH56G_PHY_REG_PTP);
+}
+
+/**
+ * ice_read_ptp_tstamp_eth56g - Read a PHY timestamp out of the port memory
+ * @hw: pointer to the HW struct
+ * @port: the port to read from
+ * @idx: the timestamp index to read
+ * @tstamp: on return, the 40bit timestamp value
+ *
+ * Read a 40bit timestamp value out of the two associated entries in the
+ * port memory block of the internal PHYs of the 56G devices.
+ */
+static int ice_read_ptp_tstamp_eth56g(struct ice_hw *hw, u8 port, u8 idx,
+				      u64 *tstamp)
+{
+	u16 lo_addr, hi_addr;
+	u32 lo, hi;
+	int err;
+
+	lo_addr = (u16)PHY_TSTAMP_L(idx);
+	hi_addr = (u16)PHY_TSTAMP_U(idx);
+
+	err = ice_ptp_read_port_mem_eth56g(hw, port, lo_addr, &lo);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read low PTP timestamp register, err %d\n",
+			  err);
+		return err;
+	}
+
+	err = ice_ptp_read_port_mem_eth56g(hw, port, hi_addr, &hi);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read high PTP timestamp register, err %d\n",
+			  err);
+		return err;
+	}
+
+	/* For 56G based internal PHYs, the timestamp is reported with the
+	 * lower 8 bits in the low register, and the upper 32 bits in the high
+	 * register.
+	 */
+	*tstamp = ((u64)hi) << TS_PHY_HIGH_S | ((u64)lo & TS_PHY_LOW_M);
+
+	return 0;
+}
+
+/**
+ * ice_clear_ptp_tstamp_eth56g - Clear a timestamp from the quad block
+ * @hw: pointer to the HW struct
+ * @port: the quad to read from
+ * @idx: the timestamp index to reset
+ *
+ * Read and then forcibly clear the timestamp index to ensure the valid bit is
+ * cleared and the timestamp status bit is reset in the PHY port memory of
+ * internal PHYs of the 56G devices.
+ *
+ * To directly clear the contents of the timestamp block entirely, discarding
+ * all timestamp data at once, software should instead use
+ * ice_ptp_reset_ts_memory_quad_eth56g().
+ *
+ * This function should only be called on an idx whose bit is set according to
+ * ice_get_phy_tx_tstamp_ready().
+ */
+static int ice_clear_ptp_tstamp_eth56g(struct ice_hw *hw, u8 port, u8 idx)
+{
+	u64 unused_tstamp;
+	u16 lo_addr;
+	int err;
+
+	/* Read the timestamp register to ensure the timestamp status bit is
+	 * cleared.
+	 */
+	err = ice_read_ptp_tstamp_eth56g(hw, port, idx, &unused_tstamp);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read the PHY timestamp register for port %u, idx %u, err %d\n",
+			  port, idx, err);
+	}
+
+	lo_addr = (u16)PHY_TSTAMP_L(idx);
+
+	err = ice_ptp_write_port_mem_eth56g(hw, port, lo_addr, 0);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to clear low PTP timestamp register for port %u, idx %u, err %d\n",
+			  port, idx, err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_reset_ts_memory_eth56g - Clear all timestamps from the port block
+ * @hw: pointer to the HW struct
+ */
+static void ice_ptp_reset_ts_memory_eth56g(struct ice_hw *hw)
+{
+	unsigned int port;
+
+	for (port = 0; port < hw->ptp.num_lports; port++) {
+		ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TX_MEMORY_STATUS_L,
+					 0);
+		ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TX_MEMORY_STATUS_U,
+					 0);
+	}
+}
+
+/**
+ * ice_ptp_prep_port_time_eth56g - Prepare one PHY port with initial time
+ * @hw: pointer to the HW struct
+ * @port: port number
+ * @time: time to initialize the PHY port clocks to
+ *
+ * Write a new initial time value into registers of a specific PHY port.
+ */
+static int ice_ptp_prep_port_time_eth56g(struct ice_hw *hw, u8 port,
+					 u64 time)
+{
+	int err;
+
+	/* Tx case */
+	err = ice_write_64b_ptp_reg_eth56g(hw, port, PHY_REG_TX_TIMER_INC_PRE_L,
+					   time);
+	if (err)
+		return err;
+
+	/* Rx case */
+	return ice_write_64b_ptp_reg_eth56g(hw, port,
+					    PHY_REG_RX_TIMER_INC_PRE_L, time);
+}
+
+/**
+ * ice_ptp_prep_phy_time_eth56g - Prepare PHY port with initial time
+ * @hw: pointer to the HW struct
+ * @time: Time to initialize the PHY port clocks to
+ *
+ * Program the PHY port registers with a new initial time value. The port
+ * clock will be initialized once the driver issues an ICE_PTP_INIT_TIME sync
+ * command. The time value is the upper 32 bits of the PHY timer, usually in
+ * units of nominal nanoseconds.
+ */
+static int ice_ptp_prep_phy_time_eth56g(struct ice_hw *hw, u32 time)
+{
+	u64 phy_time;
+	u8 port;
+
+	/* The time represents the upper 32 bits of the PHY timer, so we need
+	 * to shift to account for this when programming.
+	 */
+	phy_time = (u64)time << 32;
+
+	for (port = 0; port < hw->ptp.num_lports; port++) {
+		int err;
+
+		err = ice_ptp_prep_port_time_eth56g(hw, port, phy_time);
+		if (err) {
+			ice_debug(hw, ICE_DBG_PTP, "Failed to write init time for port %u, err %d\n",
+				  port, err);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_prep_port_adj_eth56g - Prepare a single port for time adjust
+ * @hw: pointer to HW struct
+ * @port: Port number to be programmed
+ * @time: time in cycles to adjust the port clocks
+ *
+ * Program the port for an atomic adjustment by writing the Tx and Rx timer
+ * registers. The atomic adjustment won't be completed until the driver issues
+ * an ICE_PTP_ADJ_TIME command.
+ *
+ * Note that time is not in units of nanoseconds. It is in clock time
+ * including the lower sub-nanosecond portion of the port timer.
+ *
+ * Negative adjustments are supported using 2s complement arithmetic.
+ */
+static int ice_ptp_prep_port_adj_eth56g(struct ice_hw *hw, u8 port, s64 time)
+{
+	u32 l_time, u_time;
+	int err;
+
+	l_time = lower_32_bits(time);
+	u_time = upper_32_bits(time);
+
+	/* Tx case */
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TX_TIMER_INC_PRE_L,
+				       l_time);
+	if (err)
+		goto exit_err;
+
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TX_TIMER_INC_PRE_U,
+				       u_time);
+	if (err)
+		goto exit_err;
+
+	/* Rx case */
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_RX_TIMER_INC_PRE_L,
+				       l_time);
+	if (err)
+		goto exit_err;
+
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_RX_TIMER_INC_PRE_U,
+				       u_time);
+	if (err)
+		goto exit_err;
+
+	return 0;
+
+exit_err:
+	ice_debug(hw, ICE_DBG_PTP, "Failed to write time adjust for port %u, err %d\n",
+		  port, err);
+	return err;
+}
+
+/**
+ * ice_ptp_prep_phy_adj_eth56g - Prep PHY ports for a time adjustment
+ * @hw: pointer to HW struct
+ * @adj: adjustment in nanoseconds
+ *
+ * Prepare the PHY ports for an atomic time adjustment by programming the PHY
+ * Tx and Rx port registers. The actual adjustment is completed by issuing an
+ * ICE_PTP_ADJ_TIME or ICE_PTP_ADJ_TIME_AT_TIME sync command.
+ */
+static int ice_ptp_prep_phy_adj_eth56g(struct ice_hw *hw, s32 adj)
+{
+	s64 cycles;
+	u8 port;
+
+	/* The port clock supports adjustment of the sub-nanosecond portion of
+	 * the clock (lowest 32 bits). We shift the provided adjustment in
+	 * nanoseconds by 32 to calculate the appropriate adjustment to program
+	 * into the PHY ports.
+	 */
+	cycles = (s64)adj << 32;
+
+	for (port = 0; port < hw->ptp.num_lports; port++) {
+		int err;
+
+		err = ice_ptp_prep_port_adj_eth56g(hw, port, cycles);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_prep_phy_incval_eth56g - Prepare PHY ports for time adjustment
+ * @hw: pointer to HW struct
+ * @incval: new increment value to prepare
+ *
+ * Prepare each of the PHY ports for a new increment value by programming the
+ * port's TIMETUS registers. The new increment value will be updated after
+ * issuing an ICE_PTP_INIT_INCVAL command.
+ */
+static int ice_ptp_prep_phy_incval_eth56g(struct ice_hw *hw, u64 incval)
+{
+	u8 port;
+
+	for (port = 0; port < hw->ptp.num_lports; port++) {
+		int err;
+
+		err = ice_write_40b_ptp_reg_eth56g(hw, port, PHY_REG_TIMETUS_L,
+						   incval);
+		if (err) {
+			ice_debug(hw, ICE_DBG_PTP, "Failed to write incval for port %u, err %d\n",
+				  port, err);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_read_port_capture_eth56g - Read a port's local time capture
+ * @hw: pointer to HW struct
+ * @port: Port number to read
+ * @tx_ts: on return, the Tx port time capture
+ * @rx_ts: on return, the Rx port time capture
+ *
+ * Read the port's Tx and Rx local time capture values.
+ */
+static int ice_ptp_read_port_capture_eth56g(struct ice_hw *hw, u8 port,
+					    u64 *tx_ts, u64 *rx_ts)
+{
+	int err;
+
+	/* Tx case */
+	err = ice_read_64b_ptp_reg_eth56g(hw, port, PHY_REG_TX_CAPTURE_L,
+					  tx_ts);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read REG_TX_CAPTURE, err %d\n",
+			  err);
+		return err;
+	}
+
+	ice_debug(hw, ICE_DBG_PTP, "tx_init = %#016llx\n", *tx_ts);
+
+	/* Rx case */
+	err = ice_read_64b_ptp_reg_eth56g(hw, port, PHY_REG_RX_CAPTURE_L,
+					  rx_ts);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_CAPTURE, err %d\n",
+			  err);
+		return err;
+	}
+
+	ice_debug(hw, ICE_DBG_PTP, "rx_init = %#016llx\n", *rx_ts);
+
+	return 0;
+}
+
+/**
+ * ice_ptp_write_port_cmd_eth56g - Prepare a single PHY port for a timer command
+ * @hw: pointer to HW struct
+ * @port: Port to which cmd has to be sent
+ * @cmd: Command to be sent to the port
+ *
+ * Prepare the requested port for an upcoming timer sync command.
+ */
+static int ice_ptp_write_port_cmd_eth56g(struct ice_hw *hw, u8 port,
+					 enum ice_ptp_tmr_cmd cmd)
+{
+	u32 val = ice_ptp_tmr_cmd_to_port_reg(hw, cmd);
+	int err;
+
+	/* Tx case */
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TX_TMR_CMD, val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write back TX_TMR_CMD, err %d\n",
+			  err);
+		return err;
+	}
+
+	/* Rx case */
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_RX_TMR_CMD, val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write back RX_TMR_CMD, err %d\n",
+			  err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_phy_get_speed_eth56g - Get link speed based on PHY link type
+ * @li: pointer to link information struct
+ */
+static enum ice_eth56g_link_spd
+ice_phy_get_speed_eth56g(struct ice_link_status *li)
+{
+	u16 speed = ice_get_link_speed_based_on_phy_type(li->phy_type_low,
+							 li->phy_type_high);
+
+	switch (speed) {
+	case ICE_AQ_LINK_SPEED_1000MB:
+		return ICE_ETH56G_LNK_SPD_1G;
+	case ICE_AQ_LINK_SPEED_2500MB:
+		return ICE_ETH56G_LNK_SPD_2_5G;
+	case ICE_AQ_LINK_SPEED_10GB:
+		return ICE_ETH56G_LNK_SPD_10G;
+	case ICE_AQ_LINK_SPEED_25GB:
+		return ICE_ETH56G_LNK_SPD_25G;
+	case ICE_AQ_LINK_SPEED_40GB:
+		return ICE_ETH56G_LNK_SPD_40G;
+	case ICE_AQ_LINK_SPEED_50GB:
+		switch (li->phy_type_low) {
+		case ICE_PHY_TYPE_LOW_50GBASE_SR:
+		case ICE_PHY_TYPE_LOW_50GBASE_FR:
+		case ICE_PHY_TYPE_LOW_50GBASE_LR:
+		case ICE_PHY_TYPE_LOW_50GBASE_KR_PAM4:
+		case ICE_PHY_TYPE_LOW_50G_AUI1_AOC_ACC:
+		case ICE_PHY_TYPE_LOW_50G_AUI1:
+			return ICE_ETH56G_LNK_SPD_50G;
+		default:
+			return ICE_ETH56G_LNK_SPD_50G2;
+		}
+	case ICE_AQ_LINK_SPEED_100GB:
+		if (li->phy_type_high ||
+		    li->phy_type_low == ICE_PHY_TYPE_LOW_100GBASE_SR2)
+			return ICE_ETH56G_LNK_SPD_100G2;
+		else
+			return ICE_ETH56G_LNK_SPD_100G;
+	default:
+		return ICE_ETH56G_LNK_SPD_1G;
+	}
+}
+
+/**
+ * ice_phy_cfg_parpcs_eth56g - Configure TUs per PAR/PCS clock cycle
+ * @hw: pointer to the HW struct
+ * @port: port to configure
+ *
+ * Configure the number of TUs for the PAR and PCS clocks used as part of the
+ * timestamp calibration process.
+ */
+static int ice_phy_cfg_parpcs_eth56g(struct ice_hw *hw, u8 port)
+{
+	u8 port_blk = port & ~(ICE_PORTS_PER_QUAD - 1);
+	u32 val;
+	int err;
+
+	err = ice_write_xpcs_reg_eth56g(hw, port, PHY_VENDOR_TXLANE_THRESH,
+					ICE_ETH56G_NOMINAL_THRESH4);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read VENDOR_TXLANE_THRESH, status: %d",
+			  err);
+		return err;
+	}
+
+	switch (ice_phy_get_speed_eth56g(&hw->port_info->phy.link_info)) {
+	case ICE_ETH56G_LNK_SPD_1G:
+	case ICE_ETH56G_LNK_SPD_2_5G:
+		err = ice_read_ptp_reg_eth56g(hw, port_blk,
+					      PHY_GPCS_CONFIG_REG0, &val);
+		if (err) {
+			ice_debug(hw, ICE_DBG_PTP, "Failed to read PHY_GPCS_CONFIG_REG0, status: %d",
+				  err);
+			return err;
+		}
+
+		val &= ~PHY_GPCS_CONFIG_REG0_TX_THR_M;
+		val |= FIELD_PREP(PHY_GPCS_CONFIG_REG0_TX_THR_M,
+				  ICE_ETH56G_NOMINAL_TX_THRESH);
+
+		err = ice_write_ptp_reg_eth56g(hw, port_blk,
+					       PHY_GPCS_CONFIG_REG0, val);
+		if (err) {
+			ice_debug(hw, ICE_DBG_PTP, "Failed to write PHY_GPCS_CONFIG_REG0, status: %d",
+				  err);
+			return err;
+		}
+		break;
+	default:
+		break;
+	}
+
+	err = ice_write_40b_ptp_reg_eth56g(hw, port, PHY_PCS_REF_TUS_L,
+					   ICE_ETH56G_NOMINAL_PCS_REF_TUS);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write PHY_PCS_REF_TUS, status: %d",
+			  err);
+		return err;
+	}
+
+	err = ice_write_40b_ptp_reg_eth56g(hw, port, PHY_PCS_REF_INC_L,
+					   ICE_ETH56G_NOMINAL_PCS_REF_INC);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write PHY_PCS_REF_INC, status: %d",
+			  err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_phy_cfg_ptp_1step_eth56g - Configure 1-step PTP settings
+ * @hw: Pointer to the HW struct
+ * @port: Port to configure
+ */
+int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port)
+{
+	u8 port_blk = port & ~(ICE_PORTS_PER_QUAD - 1);
+	u8 blk_port = port & (ICE_PORTS_PER_QUAD - 1);
+	bool enable, sfd_ena;
+	u32 val, peer_delay;
+	int err;
+
+	enable = hw->ptp.phy.eth56g.onestep_ena;
+	peer_delay = hw->ptp.phy.eth56g.peer_delay;
+	sfd_ena = hw->ptp.phy.eth56g.sfd_ena;
+
+	/* PHY_PTP_1STEP_CONFIG */
+	err = ice_read_ptp_reg_eth56g(hw, port_blk, PHY_PTP_1STEP_CONFIG, &val);
+	if (err)
+		return err;
+
+	if (enable)
+		val |= blk_port;
+	else
+		val &= ~blk_port;
+
+	val &= ~(PHY_PTP_1STEP_T1S_UP64_M | PHY_PTP_1STEP_T1S_DELTA_M);
+
+	err = ice_write_ptp_reg_eth56g(hw, port_blk, PHY_PTP_1STEP_CONFIG, val);
+	if (err)
+		return err;
+
+	/* PHY_PTP_1STEP_PEER_DELAY */
+	val = FIELD_PREP(PHY_PTP_1STEP_PD_DELAY_M, peer_delay);
+	if (peer_delay)
+		val |= PHY_PTP_1STEP_PD_ADD_PD_M;
+	val |= PHY_PTP_1STEP_PD_DLY_V_M;
+	err = ice_write_ptp_reg_eth56g(hw, port_blk,
+				       PHY_PTP_1STEP_PEER_DELAY(blk_port), val);
+	if (err)
+		return err;
+
+	val &= ~PHY_PTP_1STEP_PD_DLY_V_M;
+	err = ice_write_ptp_reg_eth56g(hw, port_blk,
+				       PHY_PTP_1STEP_PEER_DELAY(blk_port), val);
+	if (err)
+		return err;
+
+	/* PHY_MAC_XIF_MODE */
+	err = ice_read_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, &val);
+	if (err)
+		return err;
+
+	val &= ~(PHY_MAC_XIF_1STEP_ENA_M | PHY_MAC_XIF_TS_BIN_MODE_M |
+		 PHY_MAC_XIF_TS_SFD_ENA_M | PHY_MAC_XIF_GMII_TS_SEL_M);
+
+	switch (ice_phy_get_speed_eth56g(&hw->port_info->phy.link_info)) {
+	case ICE_ETH56G_LNK_SPD_1G:
+	case ICE_ETH56G_LNK_SPD_2_5G:
+		val |= PHY_MAC_XIF_GMII_TS_SEL_M;
+		break;
+	default:
+		break;
+	}
+
+	val |= FIELD_PREP(PHY_MAC_XIF_1STEP_ENA_M, enable) |
+	       FIELD_PREP(PHY_MAC_XIF_TS_BIN_MODE_M, enable) |
+	       FIELD_PREP(PHY_MAC_XIF_TS_SFD_ENA_M, sfd_ena);
+
+	return ice_write_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, val);
+}
+
+/**
+ * mul_u32_u32_fx_q9 - Multiply two u32 fixed point Q9 values
+ * @a: multiplier value
+ * @b: multiplicand value
+ */
+static u32 mul_u32_u32_fx_q9(u32 a, u32 b)
+{
+	return (u32)(((u64)a * b) >> ICE_ETH56G_MAC_CFG_FRAC_W);
+}
+
+/**
+ * add_u32_u32_fx - Add two u32 fixed point values and discard overflow
+ * @a: first value
+ * @b: second value
+ */
+static u32 add_u32_u32_fx(u32 a, u32 b)
+{
+	return lower_32_bits(((u64)a + b));
+}
+
+/**
+ * ice_ptp_calc_bitslip_eth56g - Calculate bitslip value
+ * @hw: pointer to the HW struct
+ * @port: port to configure
+ * @bs: bitslip multiplier
+ * @fc: FC-FEC enabled
+ * @rs: RS-FEC enabled
+ * @spd: link speed
+ */
+static u32 ice_ptp_calc_bitslip_eth56g(struct ice_hw *hw, u8 port, u32 bs,
+				       bool fc, bool rs,
+				       enum ice_eth56g_link_spd spd)
+{
+	u8 port_offset = port & (ICE_PORTS_PER_QUAD - 1);
+	u8 port_blk = port & ~(ICE_PORTS_PER_QUAD - 1);
+	u32 bitslip;
+	int err;
+
+	if (!bs || rs)
+		return 0;
+
+	if (spd == ICE_ETH56G_LNK_SPD_1G || spd == ICE_ETH56G_LNK_SPD_2_5G)
+		err = ice_read_gpcs_reg_eth56g(hw, port, PHY_GPCS_BITSLIP,
+					       &bitslip);
+	else
+		err = ice_read_ptp_reg_eth56g(hw, port_blk,
+					      PHY_REG_SD_BIT_SLIP(port_offset),
+					      &bitslip);
+	if (err)
+		return 0;
+
+	if (spd == ICE_ETH56G_LNK_SPD_1G && !bitslip) {
+		/* Bitslip register value of 0 corresponds to 10 so substitute
+		 * it for calculations
+		 */
+		bitslip = 10;
+	} else if (spd == ICE_ETH56G_LNK_SPD_10G ||
+		   spd == ICE_ETH56G_LNK_SPD_25G) {
+		if (fc)
+			bitslip = bitslip * 2 + 32;
+		else
+			bitslip = (u32)((s32)bitslip * -1 + 20);
+	}
+
+	bitslip <<= ICE_ETH56G_MAC_CFG_FRAC_W;
+	return mul_u32_u32_fx_q9(bitslip, bs);
+}
+
+/**
+ * ice_ptp_calc_deskew_eth56g - Calculate deskew value
+ * @hw: pointer to the HW struct
+ * @port: port to configure
+ * @ds: deskew multiplier
+ * @rs: RS-FEC enabled
+ * @spd: link speed
+ */
+static u32 ice_ptp_calc_deskew_eth56g(struct ice_hw *hw, u8 port, u32 ds,
+				      bool rs, enum ice_eth56g_link_spd spd)
+{
+	u32 deskew_i, deskew_f;
+	int err;
+
+	if (!ds)
+		return 0;
+
+	read_poll_timeout(ice_read_ptp_reg_eth56g, err,
+			  FIELD_GET(PHY_REG_DESKEW_0_VALID, deskew_i), 500,
+			  50 * USEC_PER_MSEC, false, hw, port, PHY_REG_DESKEW_0,
+			  &deskew_i);
+	if (err)
+		return err;
+
+	deskew_f = FIELD_GET(PHY_REG_DESKEW_0_RLEVEL_FRAC, deskew_i);
+	deskew_i = FIELD_GET(PHY_REG_DESKEW_0_RLEVEL, deskew_i);
+
+	if (rs && spd == ICE_ETH56G_LNK_SPD_50G2)
+		ds = 0x633; /* 3.1 */
+	else if (rs && spd == ICE_ETH56G_LNK_SPD_100G)
+		ds = 0x31b; /* 1.552 */
+
+	deskew_i = FIELD_PREP(ICE_ETH56G_MAC_CFG_RX_OFFSET_INT, deskew_i);
+	/* Shift 3 fractional bits to the end of the integer part */
+	deskew_f <<= ICE_ETH56G_MAC_CFG_FRAC_W - PHY_REG_DESKEW_0_RLEVEL_FRAC_W;
+	return mul_u32_u32_fx_q9(deskew_i | deskew_f, ds);
+}
+
+/**
+ * ice_phy_set_offsets_eth56g - Set Tx/Rx offset values
+ * @hw: pointer to the HW struct
+ * @port: port to configure
+ * @spd: link speed
+ * @cfg: structure to store output values
+ * @fc: FC-FEC enabled
+ * @rs: RS-FEC enabled
+ */
+static int ice_phy_set_offsets_eth56g(struct ice_hw *hw, u8 port,
+				      enum ice_eth56g_link_spd spd,
+				      const struct ice_eth56g_mac_reg_cfg *cfg,
+				      bool fc, bool rs)
+{
+	u32 rx_offset, tx_offset, bs_ds;
+	bool onestep, sfd;
+
+	onestep = hw->ptp.phy.eth56g.onestep_ena;
+	sfd = hw->ptp.phy.eth56g.sfd_ena;
+	bs_ds = cfg->rx_offset.bs_ds;
+
+	if (fc)
+		rx_offset = cfg->rx_offset.fc;
+	else if (rs)
+		rx_offset = cfg->rx_offset.rs;
+	else
+		rx_offset = cfg->rx_offset.no_fec;
+
+	rx_offset = add_u32_u32_fx(rx_offset, cfg->rx_offset.serdes);
+	if (sfd)
+		rx_offset = add_u32_u32_fx(rx_offset, cfg->rx_offset.sfd);
+
+	if (spd < ICE_ETH56G_LNK_SPD_40G)
+		bs_ds = ice_ptp_calc_bitslip_eth56g(hw, port, bs_ds, fc, rs,
+						    spd);
+	else
+		bs_ds = ice_ptp_calc_deskew_eth56g(hw, port, bs_ds, rs, spd);
+	rx_offset = add_u32_u32_fx(rx_offset, bs_ds);
+	rx_offset &= ICE_ETH56G_MAC_CFG_RX_OFFSET_INT |
+		     ICE_ETH56G_MAC_CFG_RX_OFFSET_FRAC;
+
+	if (fc)
+		tx_offset = cfg->tx_offset.fc;
+	else if (rs)
+		tx_offset = cfg->tx_offset.rs;
+	else
+		tx_offset = cfg->tx_offset.no_fec;
+	tx_offset += cfg->tx_offset.serdes + cfg->tx_offset.sfd * sfd +
+		     cfg->tx_offset.onestep * onestep;
+
+	ice_write_mac_reg_eth56g(hw, port, PHY_MAC_RX_OFFSET, rx_offset);
+	return ice_write_mac_reg_eth56g(hw, port, PHY_MAC_TX_OFFSET, tx_offset);
+}
+
+/**
+ * ice_phy_cfg_mac_eth56g - Configure MAC for PTP
+ * @hw: Pointer to the HW struct
+ * @port: Port to configure
+ */
+static int ice_phy_cfg_mac_eth56g(struct ice_hw *hw, u8 port)
+{
+	const struct ice_eth56g_mac_reg_cfg *cfg;
+	enum ice_eth56g_link_spd spd;
+	struct ice_link_status *li;
+	bool fc = false;
+	bool rs = false;
+	bool onestep;
+	u32 val;
+	int err;
+
+	onestep = hw->ptp.phy.eth56g.onestep_ena;
+	li = &hw->port_info->phy.link_info;
+	spd = ice_phy_get_speed_eth56g(li);
+	if (!!(li->an_info & ICE_AQ_FEC_EN)) {
+		if (spd == ICE_ETH56G_LNK_SPD_10G) {
+			fc = true;
+		} else {
+			fc = !!(li->fec_info & ICE_AQ_LINK_25G_KR_FEC_EN);
+			rs = !!(li->fec_info & ~ICE_AQ_LINK_25G_KR_FEC_EN);
+		}
+	}
+	cfg = &eth56g_mac_cfg[spd];
+
+	err = ice_write_mac_reg_eth56g(hw, port, PHY_MAC_RX_MODULO, 0);
+	if (err)
+		return err;
+
+	err = ice_write_mac_reg_eth56g(hw, port, PHY_MAC_TX_MODULO, 0);
+	if (err)
+		return err;
+
+	val = FIELD_PREP(PHY_MAC_TSU_CFG_TX_MODE_M,
+			 cfg->tx_mode.def + rs * cfg->tx_mode.rs) |
+	      FIELD_PREP(PHY_MAC_TSU_CFG_TX_MII_MK_DLY_M, cfg->tx_mk_dly) |
+	      FIELD_PREP(PHY_MAC_TSU_CFG_TX_MII_CW_DLY_M,
+			 cfg->tx_cw_dly.def +
+			 onestep * cfg->tx_cw_dly.onestep) |
+	      FIELD_PREP(PHY_MAC_TSU_CFG_RX_MODE_M,
+			 cfg->rx_mode.def + rs * cfg->rx_mode.rs) |
+	      FIELD_PREP(PHY_MAC_TSU_CFG_RX_MII_MK_DLY_M,
+			 cfg->rx_mk_dly.def + rs * cfg->rx_mk_dly.rs) |
+	      FIELD_PREP(PHY_MAC_TSU_CFG_RX_MII_CW_DLY_M,
+			 cfg->rx_cw_dly.def + rs * cfg->rx_cw_dly.rs) |
+	      FIELD_PREP(PHY_MAC_TSU_CFG_BLKS_PER_CLK_M, cfg->blks_per_clk);
+	err = ice_write_mac_reg_eth56g(hw, port, PHY_MAC_TSU_CONFIG, val);
+	if (err)
+		return err;
+
+	err = ice_write_mac_reg_eth56g(hw, port, PHY_MAC_BLOCKTIME,
+				       cfg->blktime);
+	if (err)
+		return err;
+
+	err = ice_phy_set_offsets_eth56g(hw, port, spd, cfg, fc, rs);
+	if (err)
+		return err;
+
+	if (spd == ICE_ETH56G_LNK_SPD_25G && !rs)
+		val = 0;
+	else
+		val = cfg->mktime;
+
+	return ice_write_mac_reg_eth56g(hw, port, PHY_MAC_MARKERTIME, val);
+}
+
+/**
+ * ice_phy_cfg_intr_eth56g - Configure TX timestamp interrupt
+ * @hw: pointer to the HW struct
+ * @port: the timestamp port
+ * @ena: enable or disable interrupt
+ * @threshold: interrupt threshold
+ *
+ * Configure TX timestamp interrupt for the specified port
+ */
+int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold)
+{
+	int err;
+	u32 val;
+
+	err = ice_read_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, &val);
+	if (err)
+		return err;
+
+	if (ena) {
+		val |= PHY_TS_INT_CONFIG_ENA_M;
+		val &= ~PHY_TS_INT_CONFIG_THRESHOLD_M;
+		val |= FIELD_PREP(PHY_TS_INT_CONFIG_THRESHOLD_M, threshold);
+	} else {
+		val &= ~PHY_TS_INT_CONFIG_ENA_M;
+	}
+
+	return ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, val);
+}
+
+/**
+ * ice_read_phy_and_phc_time_eth56g - Simultaneously capture PHC and PHY time
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to read
+ * @phy_time: on return, the 64bit PHY timer value
+ * @phc_time: on return, the lower 64bits of PHC time
+ *
+ * Issue a ICE_PTP_READ_TIME timer command to simultaneously capture the PHY
+ * and PHC timer values.
+ */
+static int ice_read_phy_and_phc_time_eth56g(struct ice_hw *hw, u8 port,
+					    u64 *phy_time, u64 *phc_time)
+{
+	u64 tx_time, rx_time;
+	u32 zo, lo;
+	u8 tmr_idx;
+	int err;
+
+	tmr_idx = ice_get_ptp_src_clock_index(hw);
+
+	/* Prepare the PHC timer for a ICE_PTP_READ_TIME capture command */
+	ice_ptp_src_cmd(hw, ICE_PTP_READ_TIME);
+
+	/* Prepare the PHY timer for a ICE_PTP_READ_TIME capture command */
+	err = ice_ptp_one_port_cmd(hw, port, ICE_PTP_READ_TIME);
+	if (err)
+		return err;
+
+	/* Issue the sync to start the ICE_PTP_READ_TIME capture */
+	ice_ptp_exec_tmr_cmd(hw);
+
+	/* Read the captured PHC time from the shadow time registers */
+	zo = rd32(hw, GLTSYN_SHTIME_0(tmr_idx));
+	lo = rd32(hw, GLTSYN_SHTIME_L(tmr_idx));
+	*phc_time = (u64)lo << 32 | zo;
+
+	/* Read the captured PHY time from the PHY shadow registers */
+	err = ice_ptp_read_port_capture_eth56g(hw, port, &tx_time, &rx_time);
+	if (err)
+		return err;
+
+	/* If the PHY Tx and Rx timers don't match, log a warning message.
+	 * Note that this should not happen in normal circumstances since the
+	 * driver always programs them together.
+	 */
+	if (tx_time != rx_time)
+		dev_warn(ice_hw_to_dev(hw), "PHY port %u Tx and Rx timers do not match, tx_time 0x%016llX, rx_time 0x%016llX\n",
+			 port, tx_time, rx_time);
+
+	*phy_time = tx_time;
+
+	return 0;
+}
+
+/**
+ * ice_sync_phy_timer_eth56g - Synchronize the PHY timer with PHC timer
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to synchronize
+ *
+ * Perform an adjustment to ensure that the PHY and PHC timers are in sync.
+ * This is done by issuing a ICE_PTP_READ_TIME command which triggers a
+ * simultaneous read of the PHY timer and PHC timer. Then we use the
+ * difference to calculate an appropriate 2s complement addition to add
+ * to the PHY timer in order to ensure it reads the same value as the
+ * primary PHC timer.
+ */
+static int ice_sync_phy_timer_eth56g(struct ice_hw *hw, u8 port)
+{
+	u64 phc_time, phy_time, difference;
+	int err;
+
+	if (!ice_ptp_lock(hw)) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to acquire PTP semaphore\n");
+		return -EBUSY;
+	}
+
+	err = ice_read_phy_and_phc_time_eth56g(hw, port, &phy_time, &phc_time);
+	if (err)
+		goto err_unlock;
+
+	/* Calculate the amount required to add to the port time in order for
+	 * it to match the PHC time.
+	 *
+	 * Note that the port adjustment is done using 2s complement
+	 * arithmetic. This is convenient since it means that we can simply
+	 * calculate the difference between the PHC time and the port time,
+	 * and it will be interpreted correctly.
+	 */
+
+	ice_ptp_src_cmd(hw, ICE_PTP_NOP);
+	difference = phc_time - phy_time;
+
+	err = ice_ptp_prep_port_adj_eth56g(hw, port, (s64)difference);
+	if (err)
+		goto err_unlock;
+
+	err = ice_ptp_one_port_cmd(hw, port, ICE_PTP_ADJ_TIME);
+	if (err)
+		goto err_unlock;
+
+	/* Issue the sync to activate the time adjustment */
+	ice_ptp_exec_tmr_cmd(hw);
+
+	/* Re-capture the timer values to flush the command registers and
+	 * verify that the time was properly adjusted.
+	 */
+	err = ice_read_phy_and_phc_time_eth56g(hw, port, &phy_time, &phc_time);
+	if (err)
+		goto err_unlock;
+
+	dev_info(ice_hw_to_dev(hw),
+		 "Port %u PHY time synced to PHC: 0x%016llX, 0x%016llX\n",
+		 port, phy_time, phc_time);
+
+err_unlock:
+	ice_ptp_unlock(hw);
+	return err;
+}
+
+/**
+ * ice_stop_phy_timer_eth56g - Stop the PHY clock timer
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to stop
+ * @soft_reset: if true, hold the SOFT_RESET bit of PHY_REG_PS
+ *
+ * Stop the clock of a PHY port. This must be done as part of the flow to
+ * re-calibrate Tx and Rx timestamping offsets whenever the clock time is
+ * initialized or when link speed changes.
+ */
+int ice_stop_phy_timer_eth56g(struct ice_hw *hw, u8 port, bool soft_reset)
+{
+	int err;
+
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TX_OFFSET_READY, 0);
+	if (err)
+		return err;
+
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_RX_OFFSET_READY, 0);
+	if (err)
+		return err;
+
+	ice_debug(hw, ICE_DBG_PTP, "Disabled clock on PHY port %u\n", port);
+
+	return 0;
+}
+
+/**
+ * ice_start_phy_timer_eth56g - Start the PHY clock timer
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to start
+ *
+ * Start the clock of a PHY port. This must be done as part of the flow to
+ * re-calibrate Tx and Rx timestamping offsets whenever the clock time is
+ * initialized or when link speed changes.
+ *
+ */
+int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
+{
+	u32 lo, hi;
+	u64 incval;
+	u8 tmr_idx;
+	int err;
+
+	tmr_idx = ice_get_ptp_src_clock_index(hw);
+
+	err = ice_stop_phy_timer_eth56g(hw, port, false);
+	if (err)
+		return err;
+
+	ice_ptp_src_cmd(hw, ICE_PTP_NOP);
+
+	err = ice_phy_cfg_parpcs_eth56g(hw, port);
+	if (err)
+		return err;
+
+	err = ice_phy_cfg_ptp_1step_eth56g(hw, port);
+	if (err)
+		return err;
+
+	err = ice_phy_cfg_mac_eth56g(hw, port);
+	if (err)
+		return err;
+
+	lo = rd32(hw, GLTSYN_INCVAL_L(tmr_idx));
+	hi = rd32(hw, GLTSYN_INCVAL_H(tmr_idx));
+	incval = (u64)hi << 32 | lo;
+
+	err = ice_write_40b_ptp_reg_eth56g(hw, port, PHY_REG_TIMETUS_L, incval);
+	if (err)
+		return err;
+
+	err = ice_ptp_one_port_cmd(hw, port, ICE_PTP_INIT_INCVAL);
+	if (err)
+		return err;
+
+	ice_ptp_exec_tmr_cmd(hw);
+
+	err = ice_sync_phy_timer_eth56g(hw, port);
+	if (err)
+		return err;
+
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TX_OFFSET_READY, 1);
+	if (err)
+		return err;
+
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_RX_OFFSET_READY, 1);
+	if (err)
+		return err;
+
+	ice_debug(hw, ICE_DBG_PTP, "Enabled clock on PHY port %u\n", port);
+
+	return 0;
+}
+
+/**
+ * ice_sb_access_ena_eth56g - Enable SB devices (PHY and others) access
+ * @hw: pointer to HW struct
+ * @enable: Enable or disable access
+ *
+ * Enable sideband devices (PHY and others) access.
+ */
+static void ice_sb_access_ena_eth56g(struct ice_hw *hw, bool enable)
+{
+	u32 val = rd32(hw, PF_SB_REM_DEV_CTL);
+
+	if (enable)
+		val |= BIT(eth56g_phy_0) | BIT(cgu) | BIT(eth56g_phy_1);
+	else
+		val &= ~(BIT(eth56g_phy_0) | BIT(cgu) | BIT(eth56g_phy_1));
+
+	wr32(hw, PF_SB_REM_DEV_CTL, val);
+}
+
+/**
+ * ice_ptp_init_phc_eth56g - Perform E82X specific PHC initialization
+ * @hw: pointer to HW struct
+ *
+ * Perform PHC initialization steps specific to E82X devices.
+ */
+static int ice_ptp_init_phc_eth56g(struct ice_hw *hw)
+{
+	ice_sb_access_ena_eth56g(hw, true);
+	/* Initialize the Clock Generation Unit */
+	return ice_init_cgu_e82x(hw);
+}
+
+/**
+ * ice_ptp_read_tx_hwtstamp_status_eth56g - Get TX timestamp status
+ * @hw: pointer to the HW struct
+ * @ts_status: the timestamp mask pointer
+ *
+ * Read the PHY Tx timestamp status mask indicating which ports have Tx
+ * timestamps available.
+ */
+int ice_ptp_read_tx_hwtstamp_status_eth56g(struct ice_hw *hw, u32 *ts_status)
+{
+	const struct ice_eth56g_params *params = &hw->ptp.phy.eth56g;
+	u8 phy, mask;
+	u32 status;
+
+	mask = (1 << hw->ptp.ports_per_phy) - 1;
+	*ts_status = 0;
+
+	for (phy = 0; phy < params->num_phys; phy++) {
+		int err;
+
+		err = ice_read_phy_eth56g(hw, phy, PHY_PTP_INT_STATUS, &status);
+		if (err)
+			return err;
+
+		*ts_status |= (status & mask) << (phy * hw->ptp.ports_per_phy);
+	}
+
+	ice_debug(hw, ICE_DBG_PTP, "PHY interrupt err: %x\n", *ts_status);
+
+	return 0;
+}
+
+/**
+ * ice_get_phy_tx_tstamp_ready_eth56g - Read the Tx memory status register
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to read from
+ * @tstamp_ready: contents of the Tx memory status register
+ *
+ * Read the PHY_REG_TX_MEMORY_STATUS register indicating which timestamps in
+ * the PHY are ready. A set bit means the corresponding timestamp is valid and
+ * ready to be captured from the PHY timestamp block.
+ */
+static int ice_get_phy_tx_tstamp_ready_eth56g(struct ice_hw *hw, u8 port,
+					      u64 *tstamp_ready)
+{
+	int err;
+
+	err = ice_read_64b_ptp_reg_eth56g(hw, port, PHY_REG_TX_MEMORY_STATUS_L,
+					  tstamp_ready);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_MEMORY_STATUS for port %u, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_init_phy_e825c - initialize PHY parameters
+ * @hw: pointer to the HW struct
+ */
+static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
+{
+	struct ice_ptp_hw *ptp = &hw->ptp;
+	struct ice_eth56g_params *params;
+	u8 phy;
+
+	ptp->phy_model = ICE_PHY_ETH56G;
+	params = &ptp->phy.eth56g;
+	params->onestep_ena = false;
+	params->peer_delay = 0;
+	params->sfd_ena = false;
+	params->phy_addr[0] = eth56g_phy_0;
+	params->phy_addr[1] = eth56g_phy_1;
+	params->num_phys = 2;
+	ptp->ports_per_phy = 4;
+	ptp->num_lports = params->num_phys * ptp->ports_per_phy;
+
+	ice_sb_access_ena_eth56g(hw, true);
+	for (phy = 0; phy < params->num_phys; phy++) {
+		u32 phy_rev;
+		int err;
+
+		err = ice_read_phy_eth56g(hw, phy, PHY_REG_REVISION, &phy_rev);
+		if (err || phy_rev != PHY_REVISION_ETH56G) {
+			ptp->phy_model = ICE_PHY_UNSUP;
+			return;
+		}
+	}
+}
+
 /* E822 family functions
  *
  * The following functions operate on the E822 family of devices.
@@ -1207,15 +2828,14 @@ static int ice_ptp_set_vernier_wl(struct ice_hw *hw)
 static int ice_ptp_init_phc_e82x(struct ice_hw *hw)
 {
 	int err;
-	u32 regval;
+	u32 val;
 
 	/* Enable reading switch and PHY registers over the sideband queue */
 #define PF_SB_REM_DEV_CTL_SWITCH_READ BIT(1)
 #define PF_SB_REM_DEV_CTL_PHY0 BIT(2)
-	regval = rd32(hw, PF_SB_REM_DEV_CTL);
-	regval |= (PF_SB_REM_DEV_CTL_SWITCH_READ |
-		   PF_SB_REM_DEV_CTL_PHY0);
-	wr32(hw, PF_SB_REM_DEV_CTL, regval);
+	val = rd32(hw, PF_SB_REM_DEV_CTL);
+	val |= (PF_SB_REM_DEV_CTL_SWITCH_READ | PF_SB_REM_DEV_CTL_PHY0);
+	wr32(hw, PF_SB_REM_DEV_CTL, val);
 
 	/* Initialize the Clock Generation Unit */
 	err = ice_init_cgu_e82x(hw);
@@ -1442,51 +3062,17 @@ ice_ptp_read_port_capture(struct ice_hw *hw, u8 port, u64 *tx_ts, u64 *rx_ts)
  *
  * Prepare the requested port for an upcoming timer sync command.
  *
- * Do not use this function directly. If you want to configure exactly one
- * port, use ice_ptp_one_port_cmd() instead.
+ * Note there is no equivalent of this operation on E810, as that device
+ * always handles all external PHYs internally.
  */
-static int ice_ptp_write_port_cmd_e82x(struct ice_hw *hw, u8 port,
-				       enum ice_ptp_tmr_cmd cmd)
+static int
+ice_ptp_write_port_cmd_e82x(struct ice_hw *hw, u8 port,
+			    enum ice_ptp_tmr_cmd cmd)
 {
-	u32 cmd_val, val;
-	u8 tmr_idx;
+	u32 val = ice_ptp_tmr_cmd_to_port_reg(hw, cmd);
 	int err;
 
-	tmr_idx = ice_get_ptp_src_clock_index(hw);
-	cmd_val = tmr_idx << SEL_PHY_SRC;
-	switch (cmd) {
-	case ICE_PTP_INIT_TIME:
-		cmd_val |= PHY_CMD_INIT_TIME;
-		break;
-	case ICE_PTP_INIT_INCVAL:
-		cmd_val |= PHY_CMD_INIT_INCVAL;
-		break;
-	case ICE_PTP_ADJ_TIME:
-		cmd_val |= PHY_CMD_ADJ_TIME;
-		break;
-	case ICE_PTP_READ_TIME:
-		cmd_val |= PHY_CMD_READ_TIME;
-		break;
-	case ICE_PTP_ADJ_TIME_AT_TIME:
-		cmd_val |= PHY_CMD_ADJ_TIME_AT_TIME;
-		break;
-	case ICE_PTP_NOP:
-		break;
-	}
-
 	/* Tx case */
-	/* Read, modify, write */
-	err = ice_read_phy_reg_e82x(hw, port, P_REG_TX_TMR_CMD, &val);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_TMR_CMD, err %d\n",
-			  err);
-		return err;
-	}
-
-	/* Modify necessary bits only and perform write */
-	val &= ~TS_CMD_MASK;
-	val |= cmd_val;
-
 	err = ice_write_phy_reg_e82x(hw, port, P_REG_TX_TMR_CMD, val);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write back TX_TMR_CMD, err %d\n",
@@ -1495,19 +3081,8 @@ static int ice_ptp_write_port_cmd_e82x(struct ice_hw *hw, u8 port,
 	}
 
 	/* Rx case */
-	/* Read, modify, write */
-	err = ice_read_phy_reg_e82x(hw, port, P_REG_RX_TMR_CMD, &val);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_TMR_CMD, err %d\n",
-			  err);
-		return err;
-	}
-
-	/* Modify necessary bits only and perform write */
-	val &= ~TS_CMD_MASK;
-	val |= cmd_val;
-
-	err = ice_write_phy_reg_e82x(hw, port, P_REG_RX_TMR_CMD, val);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_RX_TMR_CMD,
+				     val | TS_CMD_RX_TYPE);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write back RX_TMR_CMD, err %d\n",
 			  err);
@@ -1517,63 +3092,6 @@ static int ice_ptp_write_port_cmd_e82x(struct ice_hw *hw, u8 port,
 	return 0;
 }
 
-/**
- * ice_ptp_one_port_cmd - Prepare one port for a timer command
- * @hw: pointer to the HW struct
- * @configured_port: the port to configure with configured_cmd
- * @configured_cmd: timer command to prepare on the configured_port
- *
- * Prepare the configured_port for the configured_cmd, and prepare all other
- * ports for ICE_PTP_NOP. This causes the configured_port to execute the
- * desired command while all other ports perform no operation.
- */
-static int
-ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
-		     enum ice_ptp_tmr_cmd configured_cmd)
-{
-	u8 port;
-
-	for (port = 0; port < hw->ptp.num_lports; port++) {
-		enum ice_ptp_tmr_cmd cmd;
-		int err;
-
-		if (port == configured_port)
-			cmd = configured_cmd;
-		else
-			cmd = ICE_PTP_NOP;
-
-		err = ice_ptp_write_port_cmd_e82x(hw, port, cmd);
-		if (err)
-			return err;
-	}
-
-	return 0;
-}
-
-/**
- * ice_ptp_port_cmd_e82x - Prepare all ports for a timer command
- * @hw: pointer to the HW struct
- * @cmd: timer command to prepare
- *
- * Prepare all ports connected to this device for an upcoming timer sync
- * command.
- */
-static int
-ice_ptp_port_cmd_e82x(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
-{
-	u8 port;
-
-	for (port = 0; port < hw->ptp.num_lports; port++) {
-		int err;
-
-		err = ice_ptp_write_port_cmd_e82x(hw, port, cmd);
-		if (err)
-			return err;
-	}
-
-	return 0;
-}
-
 /* E822 Vernier calibration functions
  *
  * The following functions are used as part of the vernier calibration of
@@ -3415,10 +4933,101 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 		ice_ptp_init_phy_e82x(ptp);
 	else if (ice_is_e810(hw))
 		ice_ptp_init_phy_e810(ptp);
+	else if (ice_is_e825c(hw))
+		ice_ptp_init_phy_e825c(hw);
 	else
 		ptp->phy_model = ICE_PHY_UNSUP;
 }
 
+/**
+ * ice_ptp_write_port_cmd - Prepare a single PHY port for a timer command
+ * @hw: pointer to HW struct
+ * @port: Port to which cmd has to be sent
+ * @cmd: Command to be sent to the port
+ *
+ * Prepare one port for the upcoming timer sync command. Do not use this for
+ * programming only a single port, instead use ice_ptp_one_port_cmd() to
+ * ensure non-modified ports get properly initialized to ICE_PTP_NOP.
+ */
+static int ice_ptp_write_port_cmd(struct ice_hw *hw, u8 port,
+				  enum ice_ptp_tmr_cmd cmd)
+{
+	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		return ice_ptp_write_port_cmd_eth56g(hw, port, cmd);
+	case ICE_PHY_E82X:
+		return ice_ptp_write_port_cmd_e82x(hw, port, cmd);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+/**
+ * ice_ptp_one_port_cmd - Program one PHY port for a timer command
+ * @hw: pointer to HW struct
+ * @configured_port: the port that should execute the command
+ * @configured_cmd: the command to be executed on the configured port
+ *
+ * Prepare one port for executing a timer command, while preparing all other
+ * ports to ICE_PTP_NOP. This allows executing a command on a single port
+ * while ensuring all other ports do not execute stale commands.
+ */
+int ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
+			 enum ice_ptp_tmr_cmd configured_cmd)
+{
+	u32 port;
+
+	for (port = 0; port < hw->ptp.num_lports; port++) {
+		int err;
+
+		/* Program the configured port with the configured command,
+		 * program all other ports with ICE_PTP_NOP.
+		 */
+		if (port == configured_port)
+			err = ice_ptp_write_port_cmd(hw, port, configured_cmd);
+		else
+			err = ice_ptp_write_port_cmd(hw, port, ICE_PTP_NOP);
+
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_port_cmd - Prepare PHY ports for a timer sync command
+ * @hw: pointer to HW struct
+ * @cmd: the timer command to setup
+ *
+ * Prepare all PHY ports on this device for the requested timer command. For
+ * some families this can be done in one shot, but for other families each
+ * port must be configured individually.
+ */
+static int ice_ptp_port_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
+{
+	u32 port;
+
+	/* PHY models which can program all ports simultaneously */
+	switch (hw->ptp.phy_model) {
+	case ICE_PHY_E810:
+		return ice_ptp_port_cmd_e810(hw, cmd);
+	default:
+		break;
+	}
+
+	/* PHY models which require programming each port separately */
+	for (port = 0; port < hw->ptp.num_lports; port++) {
+		int err;
+
+		err = ice_ptp_write_port_cmd(hw, port, cmd);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 /**
  * ice_ptp_tmr_cmd - Prepare and trigger a timer sync command
  * @hw: pointer to HW struct
@@ -3437,17 +5046,7 @@ static int ice_ptp_tmr_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	ice_ptp_src_cmd(hw, cmd);
 
 	/* Next, prepare the ports */
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_E810:
-		err = ice_ptp_port_cmd_e810(hw, cmd);
-		break;
-	case ICE_PHY_E82X:
-		err = ice_ptp_port_cmd_e82x(hw, cmd);
-		break;
-	default:
-		err = -EOPNOTSUPP;
-	}
-
+	err = ice_ptp_port_cmd(hw, cmd);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY ports for timer command %u, err %d\n",
 			  cmd, err);
@@ -3490,6 +5089,10 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 	/* PHY timers */
 	/* Fill Rx and Tx ports and send msg to PHY */
 	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		err = ice_ptp_prep_phy_time_eth56g(hw,
+						   (u32)(time & 0xFFFFFFFF));
+		break;
 	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_time_e810(hw, time & 0xFFFFFFFF);
 		break;
@@ -3532,6 +5135,9 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), upper_32_bits(incval));
 
 	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		err = ice_ptp_prep_phy_incval_eth56g(hw, incval);
+		break;
 	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_incval_e810(hw, incval);
 		break;
@@ -3598,6 +5204,9 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), adj);
 
 	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		err = ice_ptp_prep_phy_adj_eth56g(hw, adj);
+		break;
 	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_adj_e810(hw, adj);
 		break;
@@ -3628,6 +5237,8 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 {
 	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		return ice_read_ptp_tstamp_eth56g(hw, block, idx, tstamp);
 	case ICE_PHY_E810:
 		return ice_read_phy_tstamp_e810(hw, block, idx, tstamp);
 	case ICE_PHY_E82X:
@@ -3656,6 +5267,8 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 {
 	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		return ice_clear_ptp_tstamp_eth56g(hw, block, idx);
 	case ICE_PHY_E810:
 		return ice_clear_phy_tstamp_e810(hw, block, idx);
 	case ICE_PHY_E82X:
@@ -3717,6 +5330,9 @@ static int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx)
 void ice_ptp_reset_ts_memory(struct ice_hw *hw)
 {
 	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		ice_ptp_reset_ts_memory_eth56g(hw);
+		break;
 	case ICE_PHY_E82X:
 		ice_ptp_reset_ts_memory_e82x(hw);
 		break;
@@ -3743,6 +5359,8 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	(void)rd32(hw, GLTSYN_STAT(src_idx));
 
 	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		return ice_ptp_init_phc_eth56g(hw);
 	case ICE_PHY_E810:
 		return ice_ptp_init_phc_e810(hw);
 	case ICE_PHY_E82X:
@@ -3766,6 +5384,9 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 {
 	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		return ice_get_phy_tx_tstamp_ready_eth56g(hw, block,
+							  tstamp_ready);
 	case ICE_PHY_E810:
 		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
 							tstamp_ready);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index cafae345d374..fdbdbcb23029 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -41,6 +41,41 @@ enum ice_ptp_fec_mode {
 	ICE_PTP_FEC_MODE_RS_FEC
 };
 
+enum eth56g_res_type {
+	ETH56G_PHY_REG_PTP,
+	ETH56G_PHY_MEM_PTP,
+	ETH56G_PHY_REG_XPCS,
+	ETH56G_PHY_REG_MAC,
+	ETH56G_PHY_REG_GPCS,
+	NUM_ETH56G_PHY_RES
+};
+
+enum ice_eth56g_link_spd {
+	ICE_ETH56G_LNK_SPD_1G,
+	ICE_ETH56G_LNK_SPD_2_5G,
+	ICE_ETH56G_LNK_SPD_10G,
+	ICE_ETH56G_LNK_SPD_25G,
+	ICE_ETH56G_LNK_SPD_40G,
+	ICE_ETH56G_LNK_SPD_50G,
+	ICE_ETH56G_LNK_SPD_50G2,
+	ICE_ETH56G_LNK_SPD_100G,
+	ICE_ETH56G_LNK_SPD_100G2,
+	NUM_ICE_ETH56G_LNK_SPD /* Must be last */
+};
+
+/**
+ * struct ice_phy_reg_info_eth56g
+ * @base: base address for each PHY block
+ * @step: step between PHY lanes
+ *
+ * Characteristic information for the various PHY register parameters in the
+ * ETH56G devices
+ */
+struct ice_phy_reg_info_eth56g {
+	u32 base[NUM_ETH56G_PHY_RES];
+	u32 step;
+};
+
 /**
  * struct ice_time_ref_info_e82x
  * @pll_freq: Frequency of PLL that drives timer ticks in Hz
@@ -94,6 +129,74 @@ struct ice_vernier_info_e82x {
 	u32 rx_fixed_delay;
 };
 
+#define ICE_ETH56G_MAC_CFG_RX_OFFSET_INT	GENMASK(19, 9)
+#define ICE_ETH56G_MAC_CFG_RX_OFFSET_FRAC	GENMASK(8, 0)
+#define ICE_ETH56G_MAC_CFG_FRAC_W		9
+/**
+ * struct ice_eth56g_mac_reg_cfg
+ * @tx_mode: Tx timestamp compensation mode
+ * @tx_mk_dly: Tx timestamp marker start strobe delay
+ * @tx_cw_dly: Tx timestamp codeword start strobe delay
+ * @rx_mode: Rx timestamp compensation mode
+ * @rx_mk_dly: Rx timestamp marker start strobe delay
+ * @rx_cw_dly: Rx timestamp codeword start strobe delay
+ * @blks_per_clk: number of blocks transferred per clock cycle
+ * @blktime: block time, fixed point
+ * @mktime: marker time, fixed point
+ * @tx_offset: total Tx offset, fixed point
+ * @rx_offset: total Rx offset, contains value for bitslip/deskew, fixed point
+ *
+ * MAC config values for specific PTP registers.
+ * All fixed point registers except Rx offset are 23 bit unsigned ints with
+ * a 9 bit fractional.
+ * Rx offset is 11 bit unsigned int with a 9 bit fractional.
+ */
+struct ice_eth56g_mac_reg_cfg {
+	struct {
+		u8 def;
+		u8 rs;
+	} tx_mode;
+	u8 tx_mk_dly;
+	struct {
+		u8 def;
+		u8 onestep;
+	} tx_cw_dly;
+	struct {
+		u8 def;
+		u8 rs;
+	} rx_mode;
+	struct {
+		u8 def;
+		u8 rs;
+	} rx_mk_dly;
+	struct {
+		u8 def;
+		u8 rs;
+	} rx_cw_dly;
+	u8 blks_per_clk;
+	u16 blktime;
+	u16 mktime;
+	struct {
+		u32 serdes;
+		u32 no_fec;
+		u32 fc;
+		u32 rs;
+		u32 sfd;
+		u32 onestep;
+	} tx_offset;
+	struct {
+		u32 serdes;
+		u32 no_fec;
+		u32 fc;
+		u32 rs;
+		u32 sfd;
+		u32 bs_ds;
+	} rx_offset;
+};
+
+extern
+const struct ice_eth56g_mac_reg_cfg eth56g_mac_cfg[NUM_ICE_ETH56G_LNK_SPD];
+
 /**
  * struct ice_cgu_pll_params_e82x
  * @refclk_pre_div: Reference clock pre-divisor
@@ -188,6 +291,9 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ];
 #define E810C_QSFP_C827_0_HANDLE 2
 #define E810C_QSFP_C827_1_HANDLE 3
 
+/* Table of constants related to possible ETH56G PHY resources */
+extern const struct ice_phy_reg_info_eth56g eth56g_phy_res[NUM_ETH56G_PHY_RES];
+
 /* Table of constants related to possible TIME_REF sources */
 extern const struct ice_time_ref_info_e82x e822_time_ref[NUM_ICE_TIME_REF_FREQ];
 
@@ -197,7 +303,9 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
 /* Increment value to generate nanoseconds in the GLTSYN_TIME_L register for
  * the E810 devices. Based off of a PLL with an 812.5 MHz frequency.
  */
-#define ICE_PTP_NOMINAL_INCVAL_E810 0x13b13b13bULL
+#define ICE_E810_PLL_FREQ		812500000
+#define ICE_PTP_NOMINAL_INCVAL_E810	0x13b13b13bULL
+#define E810_OUT_PROP_DELAY_NS 1
 
 /* Device agnostic functions */
 u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);
@@ -215,6 +323,8 @@ void ice_ptp_reset_ts_memory(struct ice_hw *hw);
 int ice_ptp_init_phc(struct ice_hw *hw);
 void ice_ptp_init_hw(struct ice_hw *hw);
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
+int ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
+			 enum ice_ptp_tmr_cmd configured_cmd);
 
 /* E822 family functions */
 int ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);
@@ -285,9 +395,26 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num);
 int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 				      unsigned long *caps);
 
+/* ETH56G family functions */
+int ice_ptp_read_tx_hwtstamp_status_eth56g(struct ice_hw *hw, u32 *ts_status);
+int ice_stop_phy_timer_eth56g(struct ice_hw *hw, u8 port, bool soft_reset);
+int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port);
+int ice_phy_cfg_tx_offset_eth56g(struct ice_hw *hw, u8 port);
+int ice_phy_cfg_rx_offset_eth56g(struct ice_hw *hw, u8 port);
+int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold);
+int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
+
+#define ICE_ETH56G_NOMINAL_INCVAL	0x140000000ULL
+#define ICE_ETH56G_NOMINAL_PCS_REF_TUS	0x100000000ULL
+#define ICE_ETH56G_NOMINAL_PCS_REF_INC	0x300000000ULL
+#define ICE_ETH56G_NOMINAL_THRESH4	0x7777
+#define ICE_ETH56G_NOMINAL_TX_THRESH	0x6
+
 static inline u64 ice_get_base_incval(struct ice_hw *hw)
 {
 	switch (hw->ptp.phy_model) {
+	case ICE_PHY_ETH56G:
+		return ICE_ETH56G_NOMINAL_INCVAL;
 	case ICE_PHY_E810:
 		return ICE_PTP_NOMINAL_INCVAL_E810;
 	case ICE_PHY_E82X:
@@ -324,6 +451,7 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define TS_CMD_MASK_E810		0xFF
 #define TS_CMD_MASK			0xF
 #define SYNC_EXEC_CMD			0x3
+#define TS_CMD_RX_TYPE			ICE_M(0x18, 0x4)
 
 /* Macros to derive port low and high addresses on both quads */
 #define P_Q0_L(a, p) ((((a) + (0x2000 * (p)))) & 0xFFFF)
@@ -558,4 +686,115 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 /* E810T PCA9575 IO controller pin control */
 #define ICE_E810T_P0_GNSS_PRSNT_N	BIT(4)
 
+/* ETH56G PHY register addresses */
+/* Timestamp PHY incval registers */
+#define PHY_REG_TIMETUS_L		0x8
+#define PHY_REG_TIMETUS_U		0xC
+
+/* Timestamp PCS registers */
+#define PHY_PCS_REF_TUS_L		0x18
+#define PHY_PCS_REF_TUS_U		0x1C
+
+/* Timestamp PCS ref incval registers */
+#define PHY_PCS_REF_INC_L		0x20
+#define PHY_PCS_REF_INC_U		0x24
+
+/* Timestamp init registers */
+#define PHY_REG_RX_TIMER_INC_PRE_L	0x64
+#define PHY_REG_RX_TIMER_INC_PRE_U	0x68
+#define PHY_REG_TX_TIMER_INC_PRE_L	0x44
+#define PHY_REG_TX_TIMER_INC_PRE_U	0x48
+
+/* Timestamp match and adjust target registers */
+#define PHY_REG_RX_TIMER_CNT_ADJ_L	0x6C
+#define PHY_REG_RX_TIMER_CNT_ADJ_U	0x70
+#define PHY_REG_TX_TIMER_CNT_ADJ_L	0x4C
+#define PHY_REG_TX_TIMER_CNT_ADJ_U	0x50
+
+/* Timestamp command registers */
+#define PHY_REG_TX_TMR_CMD		0x40
+#define PHY_REG_RX_TMR_CMD		0x60
+
+/* Phy offset ready registers */
+#define PHY_REG_TX_OFFSET_READY		0x54
+#define PHY_REG_RX_OFFSET_READY		0x74
+
+/* Phy total offset registers */
+#define PHY_REG_TOTAL_TX_OFFSET_L	0x38
+#define PHY_REG_TOTAL_TX_OFFSET_U	0x3C
+#define PHY_REG_TOTAL_RX_OFFSET_L	0x58
+#define PHY_REG_TOTAL_RX_OFFSET_U	0x5C
+
+/* Timestamp capture registers */
+#define PHY_REG_TX_CAPTURE_L		0x78
+#define PHY_REG_TX_CAPTURE_U		0x7C
+#define PHY_REG_RX_CAPTURE_L		0x8C
+#define PHY_REG_RX_CAPTURE_U		0x90
+
+/* Memory status registers */
+#define PHY_REG_TX_MEMORY_STATUS_L	0x80
+#define PHY_REG_TX_MEMORY_STATUS_U	0x84
+
+/* Interrupt config register */
+#define PHY_REG_TS_INT_CONFIG		0x88
+
+/* XIF mode config register */
+#define PHY_MAC_XIF_MODE		0x24
+#define PHY_MAC_XIF_1STEP_ENA_M		ICE_M(0x1, 5)
+#define PHY_MAC_XIF_TS_BIN_MODE_M	ICE_M(0x1, 11)
+#define PHY_MAC_XIF_TS_SFD_ENA_M	ICE_M(0x1, 20)
+#define PHY_MAC_XIF_GMII_TS_SEL_M	ICE_M(0x1, 21)
+
+/* GPCS config register */
+#define PHY_GPCS_CONFIG_REG0		0x268
+#define PHY_GPCS_CONFIG_REG0_TX_THR_M	ICE_M(0xF, 24)
+#define PHY_GPCS_BITSLIP		0x5C
+
+#define PHY_TS_INT_CONFIG_THRESHOLD_M	ICE_M(0x3F, 0)
+#define PHY_TS_INT_CONFIG_ENA_M		BIT(6)
+
+/* 1-step PTP config */
+#define PHY_PTP_1STEP_CONFIG		0x270
+#define PHY_PTP_1STEP_T1S_UP64_M	ICE_M(0xF, 4)
+#define PHY_PTP_1STEP_T1S_DELTA_M	ICE_M(0xF, 8)
+#define PHY_PTP_1STEP_PEER_DELAY(_port)	(0x274 + 4 * (_port))
+#define PHY_PTP_1STEP_PD_ADD_PD_M	ICE_M(0x1, 0)
+#define PHY_PTP_1STEP_PD_DELAY_M	ICE_M(0x3fffffff, 1)
+#define PHY_PTP_1STEP_PD_DLY_V_M	ICE_M(0x1, 31)
+
+/* Macros to derive offsets for TimeStampLow and TimeStampHigh */
+#define PHY_TSTAMP_L(x) (((x) * 8) + 0)
+#define PHY_TSTAMP_U(x) (((x) * 8) + 4)
+
+#define PHY_REG_REVISION		0x85000
+
+#define PHY_REG_DESKEW_0		0x94
+#define PHY_REG_DESKEW_0_RLEVEL		GENMASK(6, 0)
+#define PHY_REG_DESKEW_0_RLEVEL_FRAC	GENMASK(9, 7)
+#define PHY_REG_DESKEW_0_RLEVEL_FRAC_W	3
+#define PHY_REG_DESKEW_0_VALID		GENMASK(10, 10)
+
+#define PHY_REG_GPCS_BITSLIP		0x5C
+#define PHY_REG_SD_BIT_SLIP(_port_offset)	(0x29C + 4 * (_port_offset))
+#define PHY_REVISION_ETH56G		0x10200
+#define PHY_VENDOR_TXLANE_THRESH	0x2000C
+
+#define PHY_MAC_TSU_CONFIG		0x40
+#define PHY_MAC_TSU_CFG_RX_MODE_M	ICE_M(0x7, 0)
+#define PHY_MAC_TSU_CFG_RX_MII_CW_DLY_M	ICE_M(0x7, 4)
+#define PHY_MAC_TSU_CFG_RX_MII_MK_DLY_M	ICE_M(0x7, 8)
+#define PHY_MAC_TSU_CFG_TX_MODE_M	ICE_M(0x7, 12)
+#define PHY_MAC_TSU_CFG_TX_MII_CW_DLY_M	ICE_M(0x1F, 16)
+#define PHY_MAC_TSU_CFG_TX_MII_MK_DLY_M	ICE_M(0x1F, 21)
+#define PHY_MAC_TSU_CFG_BLKS_PER_CLK_M	ICE_M(0x1, 28)
+#define PHY_MAC_RX_MODULO		0x44
+#define PHY_MAC_RX_OFFSET		0x48
+#define PHY_MAC_RX_OFFSET_M		ICE_M(0xFFFFFF, 0)
+#define PHY_MAC_TX_MODULO		0x4C
+#define PHY_MAC_BLOCKTIME		0x50
+#define PHY_MAC_MARKERTIME		0x54
+#define PHY_MAC_TX_OFFSET		0x58
+
+#define PHY_PTP_INT_STATUS		0x7FD140
+
 #endif /* _ICE_PTP_HW_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
index ead75fe2bcda..3b0054faf70c 100644
--- a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
@@ -47,10 +47,12 @@ struct ice_sbq_evt_desc {
 };
 
 enum ice_sbq_msg_dev {
-	rmn_0	= 0x02,
-	rmn_1	= 0x03,
-	rmn_2	= 0x04,
-	cgu	= 0x06
+	eth56g_phy_0	= 0x02,
+	rmn_0		= 0x02,
+	rmn_1		= 0x03,
+	rmn_2		= 0x04,
+	cgu		= 0x06,
+	eth56g_phy_1	= 0x0D,
 };
 
 enum ice_sbq_msg_opcode {
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 2d2af80a65a9..f039fc665455 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -322,7 +322,9 @@ enum ice_time_ref_freq {
 	ICE_TIME_REF_FREQ_156_250	= 4,
 	ICE_TIME_REF_FREQ_245_760	= 5,
 
-	NUM_ICE_TIME_REF_FREQ
+	NUM_ICE_TIME_REF_FREQ,
+
+	ICE_TIME_REF_FREQ_INVALID	= -1,
 };
 
 /* Clock source specification */
@@ -821,15 +823,29 @@ struct ice_mbx_data {
 #define ICE_PORTS_PER_QUAD	4
 #define ICE_GET_QUAD_NUM(port) ((port) / ICE_PORTS_PER_QUAD)
 
+struct ice_eth56g_params {
+	u8 num_phys;
+	u8 phy_addr[2];
+	bool onestep_ena;
+	bool sfd_ena;
+	u32 peer_delay;
+};
+
+union ice_phy_params {
+	struct ice_eth56g_params eth56g;
+};
+
 /* PHY model */
 enum ice_phy_model {
 	ICE_PHY_UNSUP = -1,
-	ICE_PHY_E810  = 1,
+	ICE_PHY_E810 = 1,
 	ICE_PHY_E82X,
+	ICE_PHY_ETH56G,
 };
 
 struct ice_ptp_hw {
 	enum ice_phy_model phy_model;
+	union ice_phy_params phy;
 	u8 num_lports;
 	u8 ports_per_phy;
 };
-- 
2.43.0

