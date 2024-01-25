Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1808883C2C9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 13:49:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FF4583B56;
	Thu, 25 Jan 2024 12:49:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FF4583B56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706186977;
	bh=if7RdFkY6rvP8aqigFp/mNLYQWFolyuFp/qkE+awGbo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X/UCh61ygOy1WY/Cvx4EgTZezaQqj9+QBt3T6fUXgr2sC9SSHjkiI/3BhfwV97REc
	 kJAjSAEC20I/GJUIWLc2UMLA9lHRyApjbXsHKTZfHd3u5Xd6kIya6OQta+7Op0bMCw
	 b27tl0hPkxSkmGmBrT3XK0Sap00C1YbW5O9AMwEyXWOOFHkaqSkbfHaLb6GdzOPMZp
	 Y/UrKhoZB5bxmob0d9LCh/bcDp2diqViUq8X1wqkSmSEO2JFCXPafaYGpCDJQ3iUWU
	 39tAgJlevyQJsaiIWIWVah/djwJziTDmWV9PcPoWjRdmZUXkxtDem1KxGbuuMTfVr8
	 uSPWAbV/jfewg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CvOPX9sMWUX9; Thu, 25 Jan 2024 12:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7566F8291C;
	Thu, 25 Jan 2024 12:49:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7566F8291C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 07F2B1BF387
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D3F43400BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3F43400BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sEGI7RNOKtHa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 12:49:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCCDB40242
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCCDB40242
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="399313537"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="399313537"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 04:49:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="905956678"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="905956678"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jan 2024 04:49:16 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jan 2024 13:53:10 +0100
Message-ID: <20240125125314.852914-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
References: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706186958; x=1737722958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8JHDAywT3d98f/Qm+wtW0AYpfKiKBA78cPxoaZMwpCI=;
 b=j8iAgr2QdAXaRHBKjey0N1wDOpVDepNPRkmc6YqsA8ijC2nyybl6wPaY
 UCr6uQHp78yFUKMnKqfu2qlNmDQhTA6q6Ixoqs+/U/4nYWqrtEV0IgiZU
 FXOO2mQEjUHyxgU3BNiohTqr18iDmSuLnBOFkjZ+xOmANmSKM1Em0Ez4K
 LMkPs6neA9J38coxMTrWkjOFxSdF+tWWc4GvaYMeFgmtjYZa4OQGye1Oh
 B3J50Auh+2F/js6+d9T4RKOO0IuVZOypWl9J8paM1EP+ASAbdXJFrkswh
 SJpMYbaJC8bYOA+8tTBR40bejrtS5y+sJ4qx6FpYa6qqqE8yxcj4j1vrJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j8iAgr2Q
Subject: [Intel-wired-lan] [iwl-next v1 4/8] ice: control default Tx rule in
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
 sridhar.samudrala@intel.com, netdev@vger.kernel.org,
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
 drivers/net/ethernet/intel/ice/ice_lag.c | 39 ++++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_lag.h |  3 +-
 2 files changed, 32 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 467372d541d2..efe882a46fd3 100644
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
@@ -266,9 +274,22 @@ ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
 {
 	u32 act = ICE_SINGLE_ACT_VSI_FORWARDING |
 		ICE_SINGLE_ACT_VALID_BIT | ICE_SINGLE_ACT_LAN_ENABLE;
+	int err;
+
+	err = ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_rx_rule_id,
+			       ICE_FLTR_RX, add);
+	if (err)
+		return err;
+
+	err = ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_tx_rule_id,
+			       ICE_FLTR_TX, add);
+	if (err) {
+		ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_rx_rule_id,
+				 ICE_FLTR_RX, !add);
+		return err;
+	}
 
-	return ice_lag_cfg_fltr(lag, act, lag->pf_recipe,
-				&lag->pf_rule_id, add);
+	return 0;
 }
 
 /**
@@ -284,7 +305,7 @@ ice_lag_cfg_drop_fltr(struct ice_lag *lag, bool add)
 		  ICE_SINGLE_ACT_DROP;
 
 	return ice_lag_cfg_fltr(lag, act, lag->lport_recipe,
-				&lag->lport_rule_idx, add);
+				&lag->lport_rule_idx, ICE_FLTR_RX, add);
 }
 
 /**
@@ -310,7 +331,7 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
 	dev = ice_pf_to_dev(lag->pf);
 
 	/* interface not active - remove old default VSI rule */
-	if (bonding_info->slave.state && lag->pf_rule_id) {
+	if (bonding_info->slave.state && lag->pf_rx_rule_id) {
 		if (ice_lag_cfg_dflt_fltr(lag, false))
 			dev_err(dev, "Error removing old default VSI filter\n");
 		if (ice_lag_cfg_drop_fltr(lag, true))
@@ -319,7 +340,7 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
 	}
 
 	/* interface becoming active - add new default VSI rule */
-	if (!bonding_info->slave.state && !lag->pf_rule_id) {
+	if (!bonding_info->slave.state && !lag->pf_rx_rule_id) {
 		if (ice_lag_cfg_dflt_fltr(lag, true))
 			dev_err(dev, "Error adding new default VSI filter\n");
 		if (lag->lport_rule_idx && ice_lag_cfg_drop_fltr(lag, false))
@@ -2149,7 +2170,7 @@ void ice_lag_rebuild(struct ice_pf *pf)
 
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

