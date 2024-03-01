Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A6686E0A1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 12:50:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5EE441959;
	Fri,  1 Mar 2024 11:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zj2Xa-Pwj-95; Fri,  1 Mar 2024 11:50:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A582041962
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709293804;
	bh=VfQ6fMwDajFvn14kgV9NgYsw96t2WQNC+/BW1acpLx8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nn4mxr3SYYPzuzcMrjSq3aPOqy5Byd3uIlmT7jCoX5LpCkC4dTYTXAyxftmKGWPPs
	 jwUuUY/SZy2qPlrwJq/BvEzTx4bVE3a8Pjzxt4D3nD4hhwNcPHjJPxw3f47gbD7lV9
	 asXbVuD725UrmYPRXv0uzh3JLqsdRJLjKQz52GHxiHRrIAcDw03e0VAQ2femXPfSYo
	 gQMO31eyc2eymL4Jwis1IrJd2ou0XPT3yWrCWClLKWEBZvqx53o17dgLPI8mz1v39J
	 EmIpZVKWrw3GLSQLRnRlWVwgKpcNFOn6eKXl69FWGBfc8578Q03yxzyvsS/pk0kjOv
	 lgJUPoeJvtVrA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A582041962;
	Fri,  1 Mar 2024 11:50:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A6941BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:50:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 62FC14192E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:50:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l_KJa5g7xd39 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 11:49:59 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 65E4E4194E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65E4E4194E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65E4E4194E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:49:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="4000055"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="4000055"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 03:49:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="39195040"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 01 Mar 2024 03:49:57 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Mar 2024 12:54:10 +0100
Message-ID: <20240301115414.502097-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
References: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709293799; x=1740829799;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FLIY5kfD3ncERyoI7+bk+IFigu6koSUMnW5kLntfDlM=;
 b=PSiNsTjO/6X0r7bVOY11qpAlXII1IFmlf1Oc1d5++61D6a/qtDVJZUEi
 v/7k3KPBw7H4yBrZozS9M4ERVnYgX8iTJFV1d23JC0DlFOwg4IXc5t758
 evMSihsPx2Q42nJIU5fhluDngTKRGKNyJ7SLuqPD4wuveYb2ulIMrqhT0
 llRID2JAX7vOnyWB3/rr2ZTGM/Vo+HrS9OF5yciI6xZEX4NGEyG311Hip
 1cm4CL3XVyk/hIHIHZ/Z4MA/9Ov547clboMgePH4ZEA2TP+SeyiegsPnz
 QENtRt5w7RZtZfDWJ/meDbA7DdAhqtBEmGtzYlIJ5SLfSEV2j2mjq8Gr+
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PSiNsTjO
Subject: [Intel-wired-lan] [iwl-next v3 4/8] ice: control default Tx rule in
 lag
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, przemyslaw.kitszel@intel.com,
 sridhar.samudrala@intel.com, horms@kernel.org, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tx rule in switchdev was changed to use PF instead of additional control
plane VSI. Because of that during lag we should control it. Control
means to add and remove the default Tx rule during lag active/inactive
switching.

It can be done the same way as default Rx rule.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 44 +++++++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_lag.h |  3 +-
 2 files changed, 37 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index a7a342809935..0cb4a5e5c00c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -202,11 +202,12 @@ static struct ice_lag *ice_lag_find_primary(struct ice_lag *lag)
  * @act: rule action
  * @recipe_id: recipe id for the new rule
  * @rule_idx: pointer to rule index
+ * @direction: ICE_FLTR_RX or ICE_FLTR_TX
  * @add: boolean on whether we are adding filters
  */
 static int
 ice_lag_cfg_fltr(struct ice_lag *lag, u32 act, u16 recipe_id, u16 *rule_idx,
-		 bool add)
+		 u8 direction, bool add)
 {
 	struct ice_sw_rule_lkup_rx_tx *s_rule;
 	u16 s_rule_sz, vsi_num;
@@ -231,9 +232,16 @@ ice_lag_cfg_fltr(struct ice_lag *lag, u32 act, u16 recipe_id, u16 *rule_idx,
 
 		act |= FIELD_PREP(ICE_SINGLE_ACT_VSI_ID_M, vsi_num);
 
-		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
 		s_rule->recipe_id = cpu_to_le16(recipe_id);
-		s_rule->src = cpu_to_le16(hw->port_info->lport);
+		if (direction == ICE_FLTR_RX) {
+			s_rule->hdr.type =
+				cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
+			s_rule->src = cpu_to_le16(hw->port_info->lport);
+		} else {
+			s_rule->hdr.type =
+				cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_TX);
+			s_rule->src = cpu_to_le16(vsi_num);
+		}
 		s_rule->act = cpu_to_le32(act);
 		s_rule->hdr_len = cpu_to_le16(DUMMY_ETH_HDR_LEN);
 		opc = ice_aqc_opc_add_sw_rules;
@@ -266,9 +274,27 @@ ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
 {
 	u32 act = ICE_SINGLE_ACT_VSI_FORWARDING |
 		ICE_SINGLE_ACT_VALID_BIT | ICE_SINGLE_ACT_LAN_ENABLE;
+	int err;
+
+	err = ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_rx_rule_id,
+			       ICE_FLTR_RX, add);
+	if (err)
+		goto err_rx;
 
-	return ice_lag_cfg_fltr(lag, act, lag->pf_recipe,
-				&lag->pf_rule_id, add);
+	act = ICE_SINGLE_ACT_VSI_FORWARDING | ICE_SINGLE_ACT_VALID_BIT |
+	      ICE_SINGLE_ACT_LB_ENABLE;
+	err = ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_tx_rule_id,
+			       ICE_FLTR_TX, add);
+	if (err)
+		goto err_tx;
+
+	return 0;
+
+err_tx:
+	ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_rx_rule_id,
+			 ICE_FLTR_RX, !add);
+err_rx:
+	return err;
 }
 
 /**
@@ -284,7 +310,7 @@ ice_lag_cfg_drop_fltr(struct ice_lag *lag, bool add)
 		  ICE_SINGLE_ACT_DROP;
 
 	return ice_lag_cfg_fltr(lag, act, lag->lport_recipe,
-				&lag->lport_rule_idx, add);
+				&lag->lport_rule_idx, ICE_FLTR_RX, add);
 }
 
 /**
@@ -310,7 +336,7 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
 	dev = ice_pf_to_dev(lag->pf);
 
 	/* interface not active - remove old default VSI rule */
-	if (bonding_info->slave.state && lag->pf_rule_id) {
+	if (bonding_info->slave.state && lag->pf_rx_rule_id) {
 		if (ice_lag_cfg_dflt_fltr(lag, false))
 			dev_err(dev, "Error removing old default VSI filter\n");
 		if (ice_lag_cfg_drop_fltr(lag, true))
@@ -319,7 +345,7 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
 	}
 
 	/* interface becoming active - add new default VSI rule */
-	if (!bonding_info->slave.state && !lag->pf_rule_id) {
+	if (!bonding_info->slave.state && !lag->pf_rx_rule_id) {
 		if (ice_lag_cfg_dflt_fltr(lag, true))
 			dev_err(dev, "Error adding new default VSI filter\n");
 		if (lag->lport_rule_idx && ice_lag_cfg_drop_fltr(lag, false))
@@ -2149,7 +2175,7 @@ void ice_lag_rebuild(struct ice_pf *pf)
 
 	ice_lag_cfg_cp_fltr(lag, true);
 
-	if (lag->pf_rule_id)
+	if (lag->pf_rx_rule_id)
 		if (ice_lag_cfg_dflt_fltr(lag, true))
 			dev_err(ice_pf_to_dev(pf), "Error adding default VSI rule in rebuild\n");
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index 183b38792ef2..bab2c83142a1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -43,7 +43,8 @@ struct ice_lag {
 	u8 primary:1; /* this is primary */
 	u16 pf_recipe;
 	u16 lport_recipe;
-	u16 pf_rule_id;
+	u16 pf_rx_rule_id;
+	u16 pf_tx_rule_id;
 	u16 cp_rule_idx;
 	u16 lport_rule_idx;
 	u8 role;
-- 
2.42.0

