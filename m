Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CD08A892B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 18:45:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9530240499;
	Wed, 17 Apr 2024 16:45:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 86FixKunhHJ0; Wed, 17 Apr 2024 16:45:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCB39407F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713372304;
	bh=G9cJ/HjoC/yOCST9Y7CM8w9Aw/bGEtYDO4qQ0pbMCTI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hkgS8Dvqh+WGKr5u65fQCRV8pVUesnnqpIrj7tw0qyrZFq/zfPmcpFB/GDYJmb8nw
	 qu3HUVIbe/xZ9HK/wI7T802e9JvPxsaUYjG5P5Ur+5DFNM+yz4YAUAb7v8UIY8ozML
	 VWnTW1NJm4Ze5eKHsk6Mg1P9SDbf3tpaa5OR3tHZVv8NUbyeCCk71Qa68NnFEeV8rv
	 1Jmn8o1YG8n5gFqI1iqBwJIArCSdo+eKMWbDBb+2EfOSL2HaID3C23IYR63hWVHtzQ
	 HgWlFvxjJ7rfG08QXzyocRgYsuCGj8lYYab9YmwhQw5fM34l3eiuyKCxNj/nT4NVAi
	 AZmQ85+sbCfhQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCB39407F4;
	Wed, 17 Apr 2024 16:45:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 020591BF29F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E2ECD403B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:44:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sWECDgtpv7gg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 16:44:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0073240114
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0073240114
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0073240114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:44:58 +0000 (UTC)
X-CSE-ConnectionGUID: XZ636mBnREmtV8RTDComRA==
X-CSE-MsgGUID: X8FgFROMSHeqfpFpVBANEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="12660687"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="12660687"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 09:44:59 -0700
X-CSE-ConnectionGUID: ax8EeafNRkW5mM5Umnz1ig==
X-CSE-MsgGUID: RaC3smdTTp2+vdfyEn3Gzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27470646"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa004.jf.intel.com with ESMTP; 17 Apr 2024 09:44:56 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Apr 2024 18:39:07 +0200
Message-ID: <20240417164410.850175-17-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240417164410.850175-14-karol.kolacinski@intel.com>
References: <20240417164410.850175-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713372299; x=1744908299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VXrmH2/YygY4e/rt1+ZokjRIE3fgIkg32DwN4unYXls=;
 b=oK4IrHmGeSTRJ7ekmS3v2s6h5GgtWyg3qCOv3wrw55y1oNBDF+2u4/SJ
 QnlJJBF4s1ZCZiGySV/TWimWmjrfSqOTdXZDEWzpWpeCPC3C500n8DmqS
 eeFiDl6fDZZuE1umZQM6n/wR6tccywJkXWBRUBQ2tz/TD6bW3Ga3MLxWT
 /iyIorkGnAtynESSwo/mC4zA2BC+ygV3NUDgFwfYfQ3vLhmB6crt2IwHX
 Qv8HIv3cK/bWyXJYdDSjYxkFJkK4/h4uylpp1ZgZCB80Gg8qq2SZpBE5Q
 uWV01BhnvZeDpxVbmr9z72D1Op+wiyuinznFFt24mEw6VbZ2sAKe5fEwO
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oK4IrHmG
Subject: [Intel-wired-lan] [PATCH v9 iwl-next 03/12] ice: Implement Tx
 interrupt enablement functions
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
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

Introduce functions enabling/disabling Tx TS interrupts
for the E822 and ETH56G PHYs

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V5 -> V6: Adjusted return in ice_phy_cfg_intr_e82x()

 drivers/net/ethernet/intel/ice/ice_ptp.c    | 66 +++++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 31 ++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  4 +-
 3 files changed, 66 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index cca9d09b2d61..412555194c97 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1457,42 +1457,46 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
  * @ena: bool value to enable or disable interrupt
  * @threshold: Minimum number of packets at which intr is triggered
  *
- * Utility function to enable or disable Tx timestamp interrupt and threshold
+ * Utility function to configure all the PHY interrupt settings, including
+ * whether the PHY interrupt is enabled, and what threshold to use. Also
+ * configures The E82X timestamp owner to react to interrupts from all PHYs.
+ *
+ * Return: 0 on success, -EOPNOTSUPP when PHY model incorrect, other error codes
+ * when failed to configure PHY interrupt for E82X
  */
 static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 {
+	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	int err = 0;
-	int quad;
-	u32 val;
 
 	ice_ptp_reset_ts_memory(hw);
 
-	for (quad = 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lports); quad++) {
-		err = ice_read_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG,
-					     &val);
-		if (err)
-			break;
-
-		if (ena) {
-			val |= Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
-			val &= ~Q_REG_TX_MEM_GBL_CFG_INTR_THR_M;
-			val |= FIELD_PREP(Q_REG_TX_MEM_GBL_CFG_INTR_THR_M,
-					  threshold);
-		} else {
-			val &= ~Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
+	switch (hw->ptp.phy_model) {
+	case ICE_PHY_E82X: {
+		int quad;
+
+		for (quad = 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lports);
+		     quad++) {
+			int err;
+
+			err = ice_phy_cfg_intr_e82x(hw, quad, ena, threshold);
+			if (err) {
+				dev_err(dev, "Failed to configure PHY interrupt for quad %d, err %d\n",
+					quad, err);
+				return err;
+			}
 		}
 
-		err = ice_write_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG,
-					      val);
-		if (err)
-			break;
+		return 0;
+	}
+	case ICE_PHY_E810:
+		return 0;
+	case ICE_PHY_UNSUP:
+	default:
+		dev_warn(dev, "%s: Unexpected PHY model %d\n", __func__,
+			 hw->ptp.phy_model);
+		return -EOPNOTSUPP;
 	}
-
-	if (err)
-		dev_err(ice_pf_to_dev(pf), "PTP failed in intr ena, err %d\n",
-			err);
-	return err;
 }
 
 /**
@@ -3010,12 +3014,10 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 	/* Release the global hardware lock */
 	ice_ptp_unlock(hw);
 
-	if (!ice_is_e810(hw)) {
-		/* Enable quad interrupts */
-		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
-		if (err)
-			goto err_exit;
-	}
+	/* Configure PHY interrupt settings */
+	err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
+	if (err)
+		goto err_exit;
 
 	/* Ensure we have a clock device */
 	err = ice_ptp_create_clock(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 43aa83bc54c2..0a4026c8a3ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2719,6 +2719,37 @@ ice_get_phy_tx_tstamp_ready_e82x(struct ice_hw *hw, u8 quad, u64 *tstamp_ready)
 	return 0;
 }
 
+/**
+ * ice_phy_cfg_intr_e82x - Configure TX timestamp interrupt
+ * @hw: pointer to the HW struct
+ * @quad: the timestamp quad
+ * @ena: enable or disable interrupt
+ * @threshold: interrupt threshold
+ *
+ * Configure TX timestamp interrupt for the specified quad
+ *
+ * Return: 0 on success, other error codes when failed to read/write quad
+ */
+
+int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 threshold)
+{
+	int err;
+	u32 val;
+
+	err = ice_read_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG, &val);
+	if (err)
+		return err;
+
+	val &= ~Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
+	if (ena) {
+		val |= Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
+		val &= ~Q_REG_TX_MEM_GBL_CFG_INTR_THR_M;
+		val |= FIELD_PREP(Q_REG_TX_MEM_GBL_CFG_INTR_THR_M, threshold);
+	}
+
+	return ice_write_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG, val);
+}
+
 /**
  * ice_ptp_init_phy_e82x - initialize PHY parameters
  * @ptp: pointer to the PTP HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 6246de3bacf3..5645b20a9f87 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -265,6 +265,7 @@ int ice_stop_phy_timer_e82x(struct ice_hw *hw, u8 port, bool soft_reset);
 int ice_start_phy_timer_e82x(struct ice_hw *hw, u8 port);
 int ice_phy_cfg_tx_offset_e82x(struct ice_hw *hw, u8 port);
 int ice_phy_cfg_rx_offset_e82x(struct ice_hw *hw, u8 port);
+int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 threshold);
 
 /* E810 family functions */
 int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
@@ -342,11 +343,8 @@ int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 #define Q_REG_TX_MEM_GBL_CFG		0xC08
 #define Q_REG_TX_MEM_GBL_CFG_LANE_TYPE_S	0
 #define Q_REG_TX_MEM_GBL_CFG_LANE_TYPE_M	BIT(0)
-#define Q_REG_TX_MEM_GBL_CFG_TX_TYPE_S	1
 #define Q_REG_TX_MEM_GBL_CFG_TX_TYPE_M	ICE_M(0xFF, 1)
-#define Q_REG_TX_MEM_GBL_CFG_INTR_THR_S	9
 #define Q_REG_TX_MEM_GBL_CFG_INTR_THR_M ICE_M(0x3F, 9)
-#define Q_REG_TX_MEM_GBL_CFG_INTR_ENA_S	15
 #define Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M	BIT(15)
 
 /* Tx Timestamp data registers */
-- 
2.43.0

