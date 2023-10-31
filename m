Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB4C7DD44E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 18:10:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CA0883C23;
	Tue, 31 Oct 2023 17:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CA0883C23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698772244;
	bh=wCwTLO8jYyyTz/QyCV9YfnUjDa7L1ODtGV//79eHzBc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mOozLZpDdHvkJBJaS9EegWGvFjgB0941XbKIJLSj5WZiKClUYyvyU/0Ni4S11J4ic
	 TGWhMRI8eTIiLaai4LD4li28b5nHuIiISDo87dzn5t00RS+iohFgROJKg4HbD2de0j
	 h3d01FojabSbjTHUYDEE04xTxVyZeiQV3gi5F5YDeLrqP1UJUudVPoS3TzGkU6KJck
	 7rP14cs6sDfFLL3egxmD0LDD/mH8ZFwf3hdjgD0sQUdLqnHc2eMZGDcb6AcO/sCxUF
	 CfUQd5pZTGJOMR03LUUgxvEwDhVUvdXbvxUO3z7s2bPX/C8JAff944L4mv+7pdEkvv
	 vQbcJlVqYsxuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oVocATVus5BJ; Tue, 31 Oct 2023 17:10:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55A9383C21;
	Tue, 31 Oct 2023 17:10:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55A9383C21
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E416A1BF28C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 17:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C906361701
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 17:10:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C906361701
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fhlqPA1Dlu_N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 17:10:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 13730616CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 17:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13730616CE
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="474576390"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="474576390"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 10:10:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="904397557"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="904397557"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2023 10:10:35 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Oct 2023 18:08:00 +0100
Message-Id: <20231031170800.1115223-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698772237; x=1730308237;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sTMCjFLXorRr625C1kfAz6kYvbIHYMdM3vH23sRNU0k=;
 b=NaOzfPYlPZQXOUhUC1k1xwCmOTwZqqjRZwFsAleq5TDJsiAUHlhT5R+K
 ZiqKDGm77U5uRP5GaZyumwciuyXwS17FOzqbR3Ifbb3y1uud0/UJ7tJiH
 /gtfgeldInQe5PZMiu1IP0XNvPfNjhwy58F00tCZE+PeOrwNuwnsD9nFV
 RgGH72UFM+KGhZHpxGMS2twxEyIC9k9mgXtXtY73UtVMw3p6XQSgO/GfQ
 xEDhRhC8h4mZtTkIZbwMpRStf143ESL7zuQhPQvPAhZi6YOzlrkUNmEBq
 nYr5zTvo4z4bJ2sxlC/a+Wse5O9p2zOTegBCEorE0wyl42ecMVph4nbpb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NaOzfPYl
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix output pin
 capabilities
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
Cc: Andrii Staikov <andrii.staikov@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The dpll output pins which are used to feed clock signal of PHY and MAC
circuits cannot by disconnected, those integrated circuits require clock
signal for operation.
By stopping assignment of DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE pin
capability, prevent the user from invoking the state set callback on
those pins, setting the state on those pins already returns error, as
firmware doesn't allow the change of their state.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Fixes: 8a3a565ff210 ("ice: add admin commands to access cgu configuration")
Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c   | 12 +++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 54 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +
 3 files changed, 64 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 607f534055b6..347bbbd2fda2 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -1829,6 +1829,7 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 	int num_pins, i, ret = -EINVAL;
 	struct ice_hw *hw = &pf->hw;
 	struct ice_dpll_pin *pins;
+	unsigned long caps;
 	u8 freq_supp_num;
 	bool input;
 
@@ -1848,6 +1849,7 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 	}
 
 	for (i = 0; i < num_pins; i++) {
+		caps = 0;
 		pins[i].idx = i;
 		pins[i].prop.board_label = ice_cgu_get_pin_name(hw, i, input);
 		pins[i].prop.type = ice_cgu_get_pin_type(hw, i, input);
@@ -1860,8 +1862,8 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 						      &dp->input_prio[i]);
 			if (ret)
 				return ret;
-			pins[i].prop.capabilities |=
-				DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE;
+			caps |= (DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE |
+				 DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE);
 			pins[i].prop.phase_range.min =
 				pf->dplls.input_phase_adj_max;
 			pins[i].prop.phase_range.max =
@@ -1871,9 +1873,11 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 				pf->dplls.output_phase_adj_max;
 			pins[i].prop.phase_range.max =
 				-pf->dplls.output_phase_adj_max;
+			ret = ice_cgu_get_output_pin_state_caps(hw, i, &caps);
+			if (ret)
+				return ret;
 		}
-		pins[i].prop.capabilities |=
-			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+		pins[i].prop.capabilities = caps;
 		ret = ice_dpll_pin_state_update(pf, &pins[i], pin_type, NULL);
 		if (ret)
 			return ret;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 6d573908de7a..a00b55e14aac 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -3961,3 +3961,57 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num)
 
 	return ret;
 }
+
+/**
+ * ice_cgu_get_output_pin_state_caps - get output pin state capabilities
+ * @hw: pointer to the hw struct
+ * @pin_id: id of a pin
+ * @caps: capabilities to modify
+ *
+ * Return:
+ * * 0 - success, state capabilities were modified
+ * * negative - failure, capabilities were not modified
+ */
+int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
+				      unsigned long *caps)
+{
+	bool can_change = true;
+
+	switch (hw->device_id) {
+	case ICE_DEV_ID_E810C_SFP:
+		if (pin_id == ZL_OUT2 || pin_id == ZL_OUT3)
+			can_change = false;
+		break;
+	case ICE_DEV_ID_E810C_QSFP:
+		if (pin_id == ZL_OUT2 || pin_id == ZL_OUT3 || pin_id == ZL_OUT4)
+			can_change = false;
+		break;
+	case ICE_DEV_ID_E823L_10G_BASE_T:
+	case ICE_DEV_ID_E823L_1GBE:
+	case ICE_DEV_ID_E823L_BACKPLANE:
+	case ICE_DEV_ID_E823L_QSFP:
+	case ICE_DEV_ID_E823L_SFP:
+	case ICE_DEV_ID_E823C_10G_BASE_T:
+	case ICE_DEV_ID_E823C_BACKPLANE:
+	case ICE_DEV_ID_E823C_QSFP:
+	case ICE_DEV_ID_E823C_SFP:
+	case ICE_DEV_ID_E823C_SGMII:
+		if (hw->cgu_part_number ==
+		    ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032 &&
+		    pin_id == ZL_OUT2)
+			can_change = false;
+		else if (hw->cgu_part_number ==
+			 ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384 &&
+			 pin_id == SI_OUT1)
+			can_change = false;
+		break;
+	default:
+		return -EINVAL;
+	}
+	if (can_change)
+		*caps |= DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+	else
+		*caps &= ~DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 36aeeef99ec0..cf76701566c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -282,6 +282,8 @@ int ice_get_cgu_state(struct ice_hw *hw, u8 dpll_idx,
 int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num);
 
 void ice_ptp_init_phy_model(struct ice_hw *hw);
+int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
+				      unsigned long *caps);
 
 #define PFTSYN_SEM_BYTES	4
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
