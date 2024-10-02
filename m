Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3FA98D28B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 13:53:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE6B28202E;
	Wed,  2 Oct 2024 11:53:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3pMjLFFWJLgw; Wed,  2 Oct 2024 11:53:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C056D81FF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727870006;
	bh=HF8udMa00z7v11B5CDpbAWW77Zzp7RcRYUyBboSt4G4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xsl7RD1Ovu02IZhqB7e7oiinLv8A04IFIYogtyi56Z+JxMhkGJEh1cw7oykuUdK3w
	 /3SL7m025bQCy8/QnGCUDNsgrxMzU6uIt9QrKRLh998pdCfT0KF1JZe3CtjGTalY70
	 6nvAcYHZtkT+PkAcZZMqNXcUZEbl8fwzZuXkDOdPJRn6bUONEgO44G4XBOktikQ3UW
	 p4nIfuW5F1CjUXy7Y9P9wUxqzsPbCR3U4m4QEva5IvlR5ENdw5i5jiMDDHo1v5WFhR
	 gdHVROA/Y8rL7WVdpz+zWU1pJhSbPQO1oloHIEXZBi2GBzlrdvoG9p7+d3HQBZ3x3d
	 2+ayimV3pjeHQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C056D81FF0;
	Wed,  2 Oct 2024 11:53:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD7111BF293
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7F0C40DAB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gtnLZ-v9Rj6R for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 11:53:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8C61240D93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C61240D93
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C61240D93
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:20 +0000 (UTC)
X-CSE-ConnectionGUID: o6bBbuLKSuqqNhVhYC2bUw==
X-CSE-MsgGUID: lkPKauk7SjSt8VX8uordCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="27183851"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="27183851"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 04:53:20 -0700
X-CSE-ConnectionGUID: ZCKoxdE6RLuLh2zwd/wlIQ==
X-CSE-MsgGUID: 7re44d5KTUutxli8V8QBPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="78396380"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 02 Oct 2024 04:53:17 -0700
Received: from pkitszel-desk.intel.com (unknown [10.245.246.21])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 02FF027BDE;
 Wed,  2 Oct 2024 12:53:15 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed,  2 Oct 2024 13:50:21 +0200
Message-ID: <20241002115304.15127-7-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241002115304.15127-6-przemyslaw.kitszel@intel.com>
References: <20241002115304.15127-6-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727870001; x=1759406001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SvXTULnSI2SizGjm07lIlC/a83Bu+y0MMMCyXo7mogM=;
 b=M8EDO+tY6AIoBme5a15HYWvxwldHI60Uw9QyRoupMPlbgk5kUtNyz8hh
 7PZu9XtjtT4F90bcpZ8FAbVdfxFZ9GyPgJIVcOMZ72veRd7Vhrt0kBG7V
 KrCBRt22pKU/+zxsqqRpQ6HPgFxLHyTG8v3n7sZRdfRv8pHrArHi4gzUr
 bGod1J1dVY4EWunYpL9lDQtdRKqdZe+V0jAIOWqOXX1DB9I506SzPhchA
 pssZLrc70sJApma84NrYGDuC/a9t7Tw4LX9s8SfQnvdhMlvuR88naofIR
 sjGyb6c0vVXdZg/cpIxCRbPjnYLB4LzAfnKUD+TOv+j9YvlMrf1lYyOkF
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M8EDO+tY
Subject: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: c827: move wait for FW
 to ice_init_hw()
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
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move call to ice_wait_for_fw() from ice_init_dev() into ice_init_hw(),
where it fits better. This requires also to move ice_wait_for_fw()
to ice_common.c.

ice_is_pf_c827() is now used only in ice_common.c, so it could be static.

CC: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h |   1 -
 drivers/net/ethernet/intel/ice/ice_common.c | 110 +++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_main.c   |  37 -------
 3 files changed, 75 insertions(+), 73 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 27208a60cece..3b739a7fe498 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -113,7 +113,6 @@ int
 ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		    struct ice_aqc_get_phy_caps_data *caps,
 		    struct ice_sq_cd *cd);
-bool ice_is_pf_c827(struct ice_hw *hw);
 bool ice_is_phy_rclk_in_netlist(struct ice_hw *hw);
 bool ice_is_clock_mux_in_netlist(struct ice_hw *hw);
 bool ice_is_cgu_in_netlist(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 009716a12a26..85057eb42545 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -307,6 +307,42 @@ bool ice_is_e825c(struct ice_hw *hw)
 	}
 }
 
+/**
+ * ice_is_pf_c827 - check if pf contains c827 phy
+ * @hw: pointer to the hw struct
+ *
+ * Return: true if the device has c827 phy.
+ */
+static bool ice_is_pf_c827(struct ice_hw *hw)
+{
+	struct ice_aqc_get_link_topo cmd = {};
+	u8 node_part_number;
+	u16 node_handle;
+	int status;
+
+	if (hw->mac_type != ICE_MAC_E810)
+		return false;
+
+	if (hw->device_id != ICE_DEV_ID_E810C_QSFP)
+		return true;
+
+	cmd.addr.topo_params.node_type_ctx =
+		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_TYPE_M, ICE_AQC_LINK_TOPO_NODE_TYPE_PHY) |
+		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_CTX_M, ICE_AQC_LINK_TOPO_NODE_CTX_PORT);
+	cmd.addr.topo_params.index = 0;
+
+	status = ice_aq_get_netlist_node(hw, &cmd, &node_part_number,
+					 &node_handle);
+
+	if (status || node_part_number != ICE_AQC_GET_LINK_TOPO_NODE_NR_C827)
+		return false;
+
+	if (node_handle == E810C_QSFP_C827_0_HANDLE || node_handle == E810C_QSFP_C827_1_HANDLE)
+		return true;
+
+	return false;
+}
+
 /**
  * ice_clear_pf_cfg - Clear PF configuration
  * @hw: pointer to the hardware structure
@@ -1021,6 +1057,33 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
 	}
 }
 
+/**
+ * ice_wait_for_fw - wait for full FW readiness
+ * @hw: pointer to the hardware structure
+ * @timeout: milliseconds that can elapse before timing out
+ *
+ * Return: 0 on success, -ETIMEDOUT on timeout.
+ */
+static int ice_wait_for_fw(struct ice_hw *hw, u32 timeout)
+{
+	int fw_loading;
+	u32 elapsed = 0;
+
+	while (elapsed <= timeout) {
+		fw_loading = rd32(hw, GL_MNG_FWSM) & GL_MNG_FWSM_FW_LOADING_M;
+
+		/* firmware was not yet loaded, we have to wait more */
+		if (fw_loading) {
+			elapsed += 100;
+			msleep(100);
+			continue;
+		}
+		return 0;
+	}
+
+	return -ETIMEDOUT;
+}
+
 /**
  * ice_init_hw - main hardware initialization routine
  * @hw: pointer to the hardware structure
@@ -1170,8 +1233,19 @@ int ice_init_hw(struct ice_hw *hw)
 	mutex_init(&hw->tnl_lock);
 	ice_init_chk_recipe_reuse_support(hw);
 
-	return 0;
+	/* Some cards require longer initialization times
+	 * due to necessity of loading FW from an external source.
+	 * This can take even half a minute.
+	 */
+	if (ice_is_pf_c827(hw)) {
+		status = ice_wait_for_fw(hw, 30000);
+		if (status) {
+			dev_err(ice_hw_to_dev(hw), "ice_wait_for_fw timed out");
+			goto err_unroll_fltr_mgmt_struct;
+		}
+	}
 
+	return 0;
 err_unroll_fltr_mgmt_struct:
 	ice_cleanup_fltr_mgmt_struct(hw);
 err_unroll_sched:
@@ -2684,40 +2758,6 @@ ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 	ice_recalc_port_limited_caps(hw, &dev_p->common_cap);
 }
 
-/**
- * ice_is_pf_c827 - check if pf contains c827 phy
- * @hw: pointer to the hw struct
- */
-bool ice_is_pf_c827(struct ice_hw *hw)
-{
-	struct ice_aqc_get_link_topo cmd = {};
-	u8 node_part_number;
-	u16 node_handle;
-	int status;
-
-	if (hw->mac_type != ICE_MAC_E810)
-		return false;
-
-	if (hw->device_id != ICE_DEV_ID_E810C_QSFP)
-		return true;
-
-	cmd.addr.topo_params.node_type_ctx =
-		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_TYPE_M, ICE_AQC_LINK_TOPO_NODE_TYPE_PHY) |
-		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_CTX_M, ICE_AQC_LINK_TOPO_NODE_CTX_PORT);
-	cmd.addr.topo_params.index = 0;
-
-	status = ice_aq_get_netlist_node(hw, &cmd, &node_part_number,
-					 &node_handle);
-
-	if (status || node_part_number != ICE_AQC_GET_LINK_TOPO_NODE_NR_C827)
-		return false;
-
-	if (node_handle == E810C_QSFP_C827_0_HANDLE || node_handle == E810C_QSFP_C827_1_HANDLE)
-		return true;
-
-	return false;
-}
-
 /**
  * ice_is_phy_rclk_in_netlist
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2fafb56728b2..53479b729492 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4747,31 +4747,6 @@ static void ice_decfg_netdev(struct ice_vsi *vsi)
 	vsi->netdev = NULL;
 }
 
-/**
- * ice_wait_for_fw - wait for full FW readiness
- * @hw: pointer to the hardware structure
- * @timeout: milliseconds that can elapse before timing out
- */
-static int ice_wait_for_fw(struct ice_hw *hw, u32 timeout)
-{
-	int fw_loading;
-	u32 elapsed = 0;
-
-	while (elapsed <= timeout) {
-		fw_loading = rd32(hw, GL_MNG_FWSM) & GL_MNG_FWSM_FW_LOADING_M;
-
-		/* firmware was not yet loaded, we have to wait more */
-		if (fw_loading) {
-			elapsed += 100;
-			msleep(100);
-			continue;
-		}
-		return 0;
-	}
-
-	return -ETIMEDOUT;
-}
-
 int ice_init_dev(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
@@ -4784,18 +4759,6 @@ int ice_init_dev(struct ice_pf *pf)
 		return err;
 	}
 
-	/* Some cards require longer initialization times
-	 * due to necessity of loading FW from an external source.
-	 * This can take even half a minute.
-	 */
-	if (ice_is_pf_c827(hw)) {
-		err = ice_wait_for_fw(hw, 30000);
-		if (err) {
-			dev_err(dev, "ice_wait_for_fw timed out");
-			return err;
-		}
-	}
-
 	ice_init_feature_support(pf);
 
 	err = ice_init_ddp_config(hw, pf);
-- 
2.46.0

