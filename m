Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7228CA270ED
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 13:05:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16719811D2;
	Tue,  4 Feb 2025 12:05:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Tyqia6wFx9h; Tue,  4 Feb 2025 12:05:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3717681191
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738670756;
	bh=toAmG31VMuKUV4NjiCgXo2DWdXUb8t3ACbB06rF6W0g=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ngOuaM1iJB3BLhF75IwcECI7GusBvKK1p0H4rsXC/x6UanvT9EoxsK3r/7/8LDgq7
	 +3CG3GkNajRDuNUm6+xluIL12KABNlljnu+X+ly/9pfrmmiJoNdU4U0KNxvIqGwbw1
	 NJP2MevNk6TtQFWMRei+dFkL48L2/KX3O7H6Tl/FwiZPI4cu5OlGBn2FkyJ/SIFzmV
	 TLelfNz+6BwGRPors4AWE5wb2u1HD7FPP1boVjWFacEJp+jPHSfHzq5phCiDpmCeEq
	 2KnndSP0fIo/YGeCRyKfFMaStW9/f+aeNUg8Bg19MVbkXFea3uJxcnfLHzcla1+NGs
	 BqmC50Yjim2Zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3717681191;
	Tue,  4 Feb 2025 12:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A826F185
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 976FB6078D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:05:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KCWyLMCe1yX3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 12:05:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 92B8960071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92B8960071
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92B8960071
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 12:05:52 +0000 (UTC)
X-CSE-ConnectionGUID: 0EWYMu/sTaSKhMbkIQtGOA==
X-CSE-MsgGUID: fbk4hTkhRF+qzYoxnl2s4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="38424821"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="38424821"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 04:05:52 -0800
X-CSE-ConnectionGUID: 4gNYsDRKTx2oO4jomW36ww==
X-CSE-MsgGUID: wvNngaUORreWxvD52NBmBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147783240"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Feb 2025 04:05:49 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D7D4F32CAB;
 Tue,  4 Feb 2025 12:05:47 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Date: Tue,  4 Feb 2025 12:50:52 +0100
Message-ID: <20250204115111.1652453-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250204115111.1652453-1-larysa.zaremba@intel.com>
References: <20250204115111.1652453-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738670752; x=1770206752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tyqcbr+1V9RgqiWlcoOzPxM25jq2nNT3yd6CF0utkp0=;
 b=bSYQkDVW3KQAHSxZITTAsQbGwiJVV0eEbZd4zSFfkfuNrDB/MwandeTJ
 0j8rCyuM2lP5tHjVkRpOIVU7entiXENlLmgGYw/i9jK6qomIBMx6cwpye
 0iXm2LHqMEMQY5cUCdZUMLox1x9qHG0GbAk5ZcZDmDTyGBBVrpqmJ40TJ
 F9VFEII/uDbrB/XtFOXctcVo7mTE5iTKfym34JwqcOZaWW9Ni1ondbZ7y
 iJHKGzw0QHTm1JUYHvc2nYHhfhgrCBDmuuXzWMVt2nMddJHZtLXVwwkjB
 0jkzXvzmMG4eKZJ6naXQd/tZ032T7lLNmiVa8COc7glVM/wdd25r1fCUr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bSYQkDVW
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/6] ice: do not add
 LLDP-specific filter if not necessary
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 34295a3696fb ("ice: implement new LLDP filter command")
introduced the ability to use LLDP-specific filter that directs all
LLDP traffic to a single VSI. However, current goal is for all trusted VFs
to be able to see LLDP neighbors, which is impossible to do with the
special filter.

Make using the generic filter the default choice and fall back to special
one only if a generic filter cannot be added. That way setups with "NVMs
where an already existent LLDP filter is blocking the creation of a filter
to allow LLDP packets" will still be able to configure software Rx LLDP on
PF only, while all other setups would be able to forward them to VFs too.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h        |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c | 10 +++++----
 drivers/net/ethernet/intel/ice/ice_common.h |  3 +--
 drivers/net/ethernet/intel/ice/ice_lib.c    | 23 ++++++++++++++-------
 4 files changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 7200d6042590..53b990e2e850 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -518,6 +518,7 @@ enum ice_pf_flags {
 	ICE_FLAG_MTU_CHANGED,
 	ICE_FLAG_GNSS,			/* GNSS successfully initialized */
 	ICE_FLAG_DPLL,			/* SyncE/PTP dplls initialized */
+	ICE_FLAG_LLDP_AQ_FLTR,
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index aaa592ffd2d8..a1019ef11d9b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -6010,15 +6010,17 @@ bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw)
 /**
  * ice_lldp_fltr_add_remove - add or remove a LLDP Rx switch filter
  * @hw: pointer to HW struct
- * @vsi_num: absolute HW index for VSI
+ * @vsi: VSI to add the filter to
  * @add: boolean for if adding or removing a filter
  */
-int
-ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add)
+int ice_lldp_fltr_add_remove(struct ice_hw *hw, struct ice_vsi *vsi, bool add)
 {
 	struct ice_aqc_lldp_filter_ctrl *cmd;
 	struct ice_aq_desc desc;
 
+	if (vsi->type != ICE_VSI_PF || !ice_fw_supports_lldp_fltr_ctrl(hw))
+		return -EOPNOTSUPP;
+
 	cmd = &desc.params.lldp_filter_ctrl;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_filter_ctrl);
@@ -6028,7 +6030,7 @@ ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add)
 	else
 		cmd->cmd_flags = ICE_AQC_LLDP_FILTER_ACTION_DELETE;
 
-	cmd->vsi_num = cpu_to_le16(vsi_num);
+	cmd->vsi_num = cpu_to_le16(vsi->vsi_num);
 
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 9b00aa0ddf10..64c530b39191 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -290,8 +290,7 @@ int
 ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 		    struct ice_sq_cd *cd);
 bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw);
-int
-ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add);
+int ice_lldp_fltr_add_remove(struct ice_hw *hw, struct ice_vsi *vsi, bool add);
 int ice_lldp_execute_pending_mib(struct ice_hw *hw);
 int
 ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 96ad1d8be8dd..edab19a44707 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2085,19 +2085,28 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 		status = eth_fltr(vsi, ETH_P_LLDP, ICE_FLTR_TX,
 				  ICE_DROP_PACKET);
 	} else {
-		if (ice_fw_supports_lldp_fltr_ctrl(&pf->hw)) {
-			status = ice_lldp_fltr_add_remove(&pf->hw, vsi->vsi_num,
-							  create);
-		} else {
+		if (!test_bit(ICE_FLAG_LLDP_AQ_FLTR, pf->flags)) {
 			status = eth_fltr(vsi, ETH_P_LLDP, ICE_FLTR_RX,
 					  ICE_FWD_TO_VSI);
+			if (!status || !create)
+				goto report;
+
+			dev_info(dev,
+				 "Failed to add generic LLDP Rx filter on VSI %i error: %d, falling back to specialized AQ control\n",
+				 vsi->vsi_num, status);
 		}
+
+		status = ice_lldp_fltr_add_remove(&pf->hw, vsi, create);
+		if (!status)
+			set_bit(ICE_FLAG_LLDP_AQ_FLTR, pf->flags);
+
 	}
 
+report:
 	if (status)
-		dev_dbg(dev, "Fail %s %s LLDP rule on VSI %i error: %d\n",
-			create ? "adding" : "removing", tx ? "TX" : "RX",
-			vsi->vsi_num, status);
+		dev_warn(dev, "Failed to %s %s LLDP rule on VSI %i error: %d\n",
+			 create ? "add" : "remove", tx ? "Tx" : "Rx",
+			 vsi->vsi_num, status);
 }
 
 /**
-- 
2.43.0

