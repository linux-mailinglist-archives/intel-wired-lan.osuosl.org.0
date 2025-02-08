Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F724A2D65A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Feb 2025 14:38:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEBDD419C1;
	Sat,  8 Feb 2025 13:38:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QJGgmArPLS8J; Sat,  8 Feb 2025 13:38:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9242741A1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739021895;
	bh=toAmG31VMuKUV4NjiCgXo2DWdXUb8t3ACbB06rF6W0g=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FQKIUWjpfMZpMsKxbst+PoGyyLJmvjc9J/q8DmvMvMgOURnCd3E/orxpUl7SOj/qp
	 WRcAUMb3dgslbm3X+2QMWlY0MlgVp+Y60ucxI+7tuPYKyLfGSUtv7FZumV6A06IRTu
	 Ob7/Mvi3QGZyRaaBzgFlHIyjbqLpvMPSa4BtkF2dp2JNx10onJlQjyCJYJYWNGvQc/
	 +oM59UZi6ELeeGoAp01yyVOZdOT6rZq6yt4MpvTBhnC8B3NXUJ/zogiikSuM3mBLNs
	 oYOrZcN17ZLd1nEsGjCeJkmA6H8dcX2re0I/dAaQvagfN17y1qef9naUjJZ//C4ho+
	 F+MsrRHvwWBHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9242741A1F;
	Sat,  8 Feb 2025 13:38:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4058D1B5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 13:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2480A41957
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 13:38:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k8pJNZFee4fd for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Feb 2025 13:38:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 045A44097E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 045A44097E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 045A44097E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 13:38:11 +0000 (UTC)
X-CSE-ConnectionGUID: S3GCrWyZQbykkLQBd7sQWg==
X-CSE-MsgGUID: w229imulRKqQTz0G6w4NQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51084811"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51084811"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2025 05:38:12 -0800
X-CSE-ConnectionGUID: qLHonc4MTAGoCssMv8TTlQ==
X-CSE-MsgGUID: ueq2JimORWui6D7UWQYMfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116980867"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa005.jf.intel.com with ESMTP; 08 Feb 2025 05:38:08 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0ACC132C9D;
 Sat,  8 Feb 2025 13:38:06 +0000 (GMT)
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
Date: Sat,  8 Feb 2025 14:22:43 +0100
Message-ID: <20250208132251.1989365-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250208132251.1989365-1-larysa.zaremba@intel.com>
References: <20250208132251.1989365-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739021892; x=1770557892;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tyqcbr+1V9RgqiWlcoOzPxM25jq2nNT3yd6CF0utkp0=;
 b=djd1G8Q3ZupPj7qxcSGv+MTVj/Zqb8ZZZVB3y7dy0di4htJIKGjK3kww
 7/Kz8i4DtcnCJnkMS7qxW7fkSxsgYfYTTGtaW5dgxmGHXU39ids9b43UT
 7/FbwDgOzW3LTem8hgPuwphV4HM/mxNAvVpTYwRe+wNlCfRxwGNgh8p7j
 IR93kEYJdAM1I1MaiP2E+dzUDv3cCHuIDIq3yTcnpsolWaqBnooKsRY9o
 20zn63sv9yymFTyy9WOYafOk7C50+gXU0xeJOYwzKyPGMYTHwt/lclwRA
 nAt7sJpNencn/GTyQFUMDncbyC/3I9Hx4dm/PJh6H10rPiEY4gWY4CiyG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=djd1G8Q3
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/6] ice: do not add
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

