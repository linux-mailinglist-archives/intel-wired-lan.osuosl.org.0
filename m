Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3F189216C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 17:17:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A49241795;
	Fri, 29 Mar 2024 16:17:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k3ciUPoWEigl; Fri, 29 Mar 2024 16:17:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2BF34179B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711729068;
	bh=AggHKUFUgI29snDg8uclHRqTHgZJJNz7bYvDgWcm0k4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gXqPyjgkBWdChnJaWJTfv8H7tfvve4pfD0tcYLkSiRy2G7x/wKXJyT4YyuGKAgzAg
	 4/UCBrPzU+JHFzcrjmA1xrK/cy6DkUCu8rmTDi+7wtdXmMWHzr6IwOPtp5tTKhh46M
	 BKezh6GBsMAWhOhs/SyjMZcufFWKJzNuvRYgxKaGVXg2qRQtkEIoIAiOezbrliBn2Y
	 W0tR78cSwERVnx2tbFrrx4kW2wvK1MtIWC3B0LBAWkOxUzha6rqCptPu4DjOlD4GjA
	 6lPAGY8wDqTMUjZP+WIV5yq1ATvkp2FxeFkN53OcRLFrGGRQbh0a6OxDW5kOGL4uCT
	 OqjTJRf7S1eqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2BF34179B;
	Fri, 29 Mar 2024 16:17:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 46B1B1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 16:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4146F82D96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 16:17:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zo7q_w_D99yw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 16:17:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ADC9282D45
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADC9282D45
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ADC9282D45
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 16:17:41 +0000 (UTC)
X-CSE-ConnectionGUID: CnAt9DxOTjGthrXV6jFfbg==
X-CSE-MsgGUID: F+V6O4mQSUC8jZT4lJER/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="7038315"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="7038315"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 09:17:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="21474500"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa005.fm.intel.com with ESMTP; 29 Mar 2024 09:17:39 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 Mar 2024 17:09:42 +0100
Message-ID: <20240329161730.47777-17-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329161730.47777-14-karol.kolacinski@intel.com>
References: <20240329161730.47777-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711729062; x=1743265062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5sLHLaAcTO+dwAwJtcn3KsM4Mm3MwQ1azFkx7va/A9Y=;
 b=TpZqb3xdb81tNV5NVYDbcDjLBljFL07IFfAgvCiex/SeqxAjKyPK58Bd
 b0wY6OmgiqIglX494cfNWDX9XLu51faga3DFCM3oMAdAuPnuVtEFzICQW
 PFcW5Txjf/s4BKoI7vlPldxFHfgLkgRMLMh7RUaCa2hY7cCt5VLUmqjVm
 0e+unpn28ezZPlIcqWlAstTlekAEu2ZGFybUXAznDSQpRo4/8HbSjv1xy
 RlVoIjCbQfsF4LlfrFYOm1DdYOS6ntOJTG9xQAMhKf1uZ15RJRkvL3qva
 Vq7pGACEkTJco+qEW4CrE5bwC/PM5EP0kL/QkPHRxjtyPfBTDcqR1llRO
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TpZqb3xd
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 03/12] ice: Implement Tx
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
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 63 ++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 31 ++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  4 +-
 3 files changed, 63 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 8150f949dfd3..3019988a43c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1457,42 +1457,43 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
  * @ena: bool value to enable or disable interrupt
  * @threshold: Minimum number of packets at which intr is triggered
  *
- * Utility function to enable or disable Tx timestamp interrupt and threshold
+ * Utility function to configure all the PHY interrupt settings, including
+ * whether the PHY interrupt is enabled, and what threshold to use. Also
+ * configures The E82X timestamp owner to react to interrupts from all PHYs.
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
@@ -3010,12 +3011,10 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
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
index c892b966c3b8..12f04ad263c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2715,6 +2715,37 @@ ice_get_phy_tx_tstamp_ready_e82x(struct ice_hw *hw, u8 quad, u64 *tstamp_ready)
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
+	err = ice_write_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG, val);
+
+	return err;
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

