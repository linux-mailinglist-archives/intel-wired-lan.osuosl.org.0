Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAD132A955
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:25:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7DE983ACB;
	Tue,  2 Mar 2021 18:25:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWhVpRhO2YhJ; Tue,  2 Mar 2021 18:25:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9196683AB2;
	Tue,  2 Mar 2021 18:25:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3F9E1BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9E05606B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eca23jGHI1GR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:25:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D05A4606BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:18 +0000 (UTC)
IronPort-SDR: mE/BDP0F/tT/MJu6/mshuBmf3GI9RaIVVQaCeSOvwMFlR8sjdmmyiDjBJoa8bu10KKC6gcbUQC
 RGHwHvqSpQYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="186263184"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="186263184"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:25:17 -0800
IronPort-SDR: VynewSZtSVA8h+3ZLENNyGJhzo8PPMGYdx0Zn1SXUSKO/wmvB5ffTnQf3vy7cI9yIe5wPLX7eX
 06P6aFbkxtBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="434915053"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2021 10:25:17 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:15:35 -0800
Message-Id: <20210302181545.51822-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S56 03/13] ice: Refactor get/set RSS LUT
 to use struct parameter
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

Update ice_aq_get_rss_lut() and ice_aq_set_rss_lut() to take a new
structure ice_aq_get_set_rss_params instead of passing individual
parameters. This is done for 2 reasons:

1. Reduce the number of parameters passed to the functions.
2. Reduce the amount of change required if the arguments ever need to be
   updated in the future.

Also, reduce duplicate code that was checking for an invalid vsi_handle
and lut parameter by moving the checks to the lower level
__ice_aq_get_set_rss_lut().

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 54 +++++++++-----------
 drivers/net/ethernet/intel/ice/ice_common.h  |  6 +--
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  9 +++-
 drivers/net/ethernet/intel/ice/ice_lib.c     |  9 +++-
 drivers/net/ethernet/intel/ice/ice_main.c    | 18 +++++--
 drivers/net/ethernet/intel/ice/ice_type.h    |  8 +++
 6 files changed, 62 insertions(+), 42 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 105504c8cfe7..3fdd76a85ab9 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3206,23 +3206,33 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 /**
  * __ice_aq_get_set_rss_lut
  * @hw: pointer to the hardware structure
- * @vsi_id: VSI FW index
- * @lut_type: LUT table type
- * @lut: pointer to the LUT buffer provided by the caller
- * @lut_size: size of the LUT buffer
- * @glob_lut_idx: global LUT index
+ * @params: RSS LUT parameters
  * @set: set true to set the table, false to get the table
  *
  * Internal function to get (0x0B05) or set (0x0B03) RSS look up table
  */
 static enum ice_status
-__ice_aq_get_set_rss_lut(struct ice_hw *hw, u16 vsi_id, u8 lut_type, u8 *lut,
-			 u16 lut_size, u8 glob_lut_idx, bool set)
+__ice_aq_get_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *params, bool set)
 {
+	u16 flags = 0, vsi_id, lut_type, lut_size, glob_lut_idx, vsi_handle;
 	struct ice_aqc_get_set_rss_lut *cmd_resp;
 	struct ice_aq_desc desc;
 	enum ice_status status;
-	u16 flags = 0;
+	u8 *lut;
+
+	if (!params)
+		return ICE_ERR_PARAM;
+
+	vsi_handle = params->vsi_handle;
+	lut = params->lut;
+
+	if (!ice_is_vsi_valid(hw, vsi_handle) || !lut)
+		return ICE_ERR_PARAM;
+
+	lut_size = params->lut_size;
+	lut_type = params->lut_type;
+	glob_lut_idx = params->global_lut_id;
+	vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
 
 	cmd_resp = &desc.params.get_set_rss_lut;
 
@@ -3296,43 +3306,27 @@ __ice_aq_get_set_rss_lut(struct ice_hw *hw, u16 vsi_id, u8 lut_type, u8 *lut,
 /**
  * ice_aq_get_rss_lut
  * @hw: pointer to the hardware structure
- * @vsi_handle: software VSI handle
- * @lut_type: LUT table type
- * @lut: pointer to the LUT buffer provided by the caller
- * @lut_size: size of the LUT buffer
+ * @get_params: RSS LUT parameters used to specify which RSS LUT to get
  *
  * get the RSS lookup table, PF or VSI type
  */
 enum ice_status
-ice_aq_get_rss_lut(struct ice_hw *hw, u16 vsi_handle, u8 lut_type,
-		   u8 *lut, u16 lut_size)
+ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_params)
 {
-	if (!ice_is_vsi_valid(hw, vsi_handle) || !lut)
-		return ICE_ERR_PARAM;
-
-	return __ice_aq_get_set_rss_lut(hw, ice_get_hw_vsi_num(hw, vsi_handle),
-					lut_type, lut, lut_size, 0, false);
+	return __ice_aq_get_set_rss_lut(hw, get_params, false);
 }
 
 /**
  * ice_aq_set_rss_lut
  * @hw: pointer to the hardware structure
- * @vsi_handle: software VSI handle
- * @lut_type: LUT table type
- * @lut: pointer to the LUT buffer provided by the caller
- * @lut_size: size of the LUT buffer
+ * @set_params: RSS LUT parameters used to specify how to set the RSS LUT
  *
  * set the RSS lookup table, PF or VSI type
  */
 enum ice_status
-ice_aq_set_rss_lut(struct ice_hw *hw, u16 vsi_handle, u8 lut_type,
-		   u8 *lut, u16 lut_size)
+ice_aq_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *set_params)
 {
-	if (!ice_is_vsi_valid(hw, vsi_handle) || !lut)
-		return ICE_ERR_PARAM;
-
-	return __ice_aq_get_set_rss_lut(hw, ice_get_hw_vsi_num(hw, vsi_handle),
-					lut_type, lut, lut_size, 0, true);
+	return __ice_aq_get_set_rss_lut(hw, set_params, true);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index baf4064fcbfe..81fd69cb1485 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -51,11 +51,9 @@ ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 		  u32 rxq_index);
 
 enum ice_status
-ice_aq_get_rss_lut(struct ice_hw *hw, u16 vsi_handle, u8 lut_type, u8 *lut,
-		   u16 lut_size);
+ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_params);
 enum ice_status
-ice_aq_set_rss_lut(struct ice_hw *hw, u16 vsi_handle, u8 lut_type, u8 *lut,
-		   u16 lut_size);
+ice_aq_set_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *set_params);
 enum ice_status
 ice_aq_get_rss_key(struct ice_hw *hw, u16 vsi_handle,
 		   struct ice_aqc_get_set_rss_keys *keys);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 26a7be2f7193..b0da7fe5468b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3358,6 +3358,7 @@ static int ice_get_valid_rss_size(struct ice_hw *hw, int new_size)
  */
 static int ice_vsi_set_dflt_rss_lut(struct ice_vsi *vsi, int req_rss_size)
 {
+	struct ice_aq_get_set_rss_lut_params set_params = {};
 	struct ice_pf *pf = vsi->back;
 	enum ice_status status;
 	struct device *dev;
@@ -3383,8 +3384,12 @@ static int ice_vsi_set_dflt_rss_lut(struct ice_vsi *vsi, int req_rss_size)
 
 	/* create/set RSS LUT */
 	ice_fill_rss_lut(lut, vsi->rss_table_size, vsi->rss_size);
-	status = ice_aq_set_rss_lut(hw, vsi->idx, vsi->rss_lut_type, lut,
-				    vsi->rss_table_size);
+	set_params.vsi_handle = vsi->idx;
+	set_params.lut_size = vsi->rss_table_size;
+	set_params.lut_type = vsi->rss_lut_type;
+	set_params.lut = lut;
+	set_params.global_lut_id = 0;
+	status = ice_aq_set_rss_lut(hw, &set_params);
 	if (status) {
 		dev_err(dev, "Cannot set RSS lut, err %s aq_err %s\n",
 			ice_stat_str(status),
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f67b58a154fa..0ded64de38f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1337,6 +1337,7 @@ int ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
  */
 static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 {
+	struct ice_aq_get_set_rss_lut_params set_params = {};
 	struct ice_aqc_get_set_rss_keys *key;
 	struct ice_pf *pf = vsi->back;
 	enum ice_status status;
@@ -1356,8 +1357,12 @@ static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 	else
 		ice_fill_rss_lut(lut, vsi->rss_table_size, vsi->rss_size);
 
-	status = ice_aq_set_rss_lut(&pf->hw, vsi->idx, vsi->rss_lut_type, lut,
-				    vsi->rss_table_size);
+	set_params.vsi_handle = vsi->idx;
+	set_params.lut_size = vsi->rss_table_size;
+	set_params.lut_type = vsi->rss_lut_type;
+	set_params.lut = lut;
+	set_params.global_lut_id = 0;
+	status = ice_aq_set_rss_lut(&pf->hw, &set_params);
 
 	if (status) {
 		dev_err(dev, "set_rss_lut failed, error %s\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3e5f71bf333b..ed9b226156ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6366,8 +6366,13 @@ int ice_set_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
 	}
 
 	if (lut) {
-		status = ice_aq_set_rss_lut(hw, vsi->idx, vsi->rss_lut_type,
-					    lut, lut_size);
+		struct ice_aq_get_set_rss_lut_params set_params = {
+			.vsi_handle = vsi->idx, .lut_size = lut_size,
+			.lut_type = vsi->rss_lut_type, .lut = lut,
+			.global_lut_id = 0
+		};
+
+		status = ice_aq_set_rss_lut(hw, &set_params);
 		if (status) {
 			dev_err(dev, "Cannot set RSS lut, err %s aq_err %s\n",
 				ice_stat_str(status),
@@ -6410,8 +6415,13 @@ int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
 	}
 
 	if (lut) {
-		status = ice_aq_get_rss_lut(hw, vsi->idx, vsi->rss_lut_type,
-					    lut, lut_size);
+		struct ice_aq_get_set_rss_lut_params get_params = {
+			.vsi_handle = vsi->idx, .lut_size = lut_size,
+			.lut_type = vsi->rss_lut_type, .lut = lut,
+			.global_lut_id = 0
+		};
+
+		status = ice_aq_get_rss_lut(hw, &get_params);
 		if (status) {
 			dev_err(dev, "Cannot get RSS lut, err %s aq_err %s\n",
 				ice_stat_str(status),
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 208989b5629d..b99c815f2bd0 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -910,6 +910,14 @@ struct ice_hw_port_stats {
 	u64 fd_sb_match;
 };
 
+struct ice_aq_get_set_rss_lut_params {
+	u16 vsi_handle;		/* software VSI handle */
+	u16 lut_size;		/* size of the LUT buffer */
+	u8 lut_type;		/* type of the LUT (i.e. VSI, PF, Global) */
+	u8 *lut;		/* input RSS LUT for set and output RSS LUT for get */
+	u8 global_lut_id;	/* only valid when lut_type is global */
+};
+
 /* Checksum and Shadow RAM pointers */
 #define ICE_SR_NVM_CTRL_WORD		0x00
 #define ICE_SR_BOOT_CFG_PTR		0x132
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
