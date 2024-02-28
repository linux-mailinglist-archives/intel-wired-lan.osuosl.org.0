Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E46486B44A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:11:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E1A541748;
	Wed, 28 Feb 2024 16:11:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tQHTePecPvWx; Wed, 28 Feb 2024 16:11:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1D7D40809
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709136694;
	bh=gC9DWd/VFnGYj2PYaWvqnwuz3ak6t7n9xovrBIk2kyA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fMSTOr2z7hROEsf+BRveORyOAgHN/xGFMRWdmk6oY2tUa9wIu2ThQp2OJDgYJ9N/+
	 /dys+G/+ejoNZtQt584Frss80NqqVjEQZtLYzH0rliPc8ypIA1oVh6P4xkcmFCAIj0
	 zbJNHNb6DUPGmGTPusDyUnjhavyyBalRhfqb5H78uwctkr2L6qun/d3cvqetcvGIWZ
	 N7ds8uQ8K00ojz7Il78B84xaZwqDx9E7LNGWcxnkcM1bTdrqy3+1C21waU2JnP8djx
	 TfLMJEFELyvhRnGGkFx5aoNgC4XB+AQ3qI5FsjBNnWFoOLJZBpP7aqLrtXKkVQFXBY
	 YbR2ujmjrYmlA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1D7D40809;
	Wed, 28 Feb 2024 16:11:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FD2F1BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EEE3C416E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fv9Q8zPnZRCe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:11:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 18A2041748
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18A2041748
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18A2041748
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3706625"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3706625"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 08:04:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7527778"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 28 Feb 2024 08:04:14 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0D7E536820;
 Wed, 28 Feb 2024 16:04:11 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Feb 2024 16:59:47 +0100
Message-ID: <20240228155957.408036-4-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240228155957.408036-1-larysa.zaremba@intel.com>
References: <20240228155957.408036-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709136688; x=1740672688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uZmeeZD3VWIvcaruww88Mst1ibscMXXKLJg4+styrpY=;
 b=XTARdko04l+n1G4kHGzq7UG3g/G4TUXSqk37zIG5dzUl7Du3rxR9ekrq
 PitoWpcOj4zeXcx3qeIpw7RHIwnYyT8P90FvnrTFGuwZ5efxR36Gm56Vm
 tR7axDkeSOaDm/odqE6XB2r1tfISAHkmdCkFgXCya0C1ajs1g0pQkV6Ty
 YQYvhuANfsSLk/2b+leqELWFngdy69+HKkk48jeDz+qwfAZ1sSdHle4Ri
 Fbl9mTgD27DqJN9Bn6Txuc024fuwXnS9RCiUD6lLJ+HzwwwCLUyZh3niY
 +X7uZLUPrL1+zpURo15vFE5VQWa9+zHoSk821h2iCN/YmjIcM9vksx7Ps
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XTARdko0
Subject: [Intel-wired-lan] [PATCH iwl-net 3/5] ice: Do not add LLDP-specific
 filter
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "David S. Miller" <davem@davemloft.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Pawel Kaminski <pawel.kaminski@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 34295a3696fbd0d90ee7 ("ice: implement new LLDP filter command")
has introduced the ability to use LLDP-specific filter that directs all
LLDP traffic to a single VSI. However, current goal is for all trusted VFs
to be able to see LLDP neighbors. Therefore, replace the functionality with
previously used generic ethernet protocol filter.

The command was added as a way to solve an "issue with some NVMs where an
already existent LLDP filter is blocking the creation of a filter to allow
LLDP packets". Preserve this utility and remove LLDP-specific filter
before configuring another one.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 -
 drivers/net/ethernet/intel/ice/ice_common.c   | 26 ---------------
 drivers/net/ethernet/intel/ice/ice_common.h   |  2 --
 drivers/net/ethernet/intel/ice/ice_lib.c      | 33 +++++++++++++++----
 4 files changed, 26 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 8040317c9561..2855c955d8b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1883,7 +1883,6 @@ struct ice_aqc_lldp_stop_start_specific_agent {
 /* LLDP Filter Control (direct 0x0A0A) */
 struct ice_aqc_lldp_filter_ctrl {
 	u8 cmd_flags;
-#define ICE_AQC_LLDP_FILTER_ACTION_ADD		0x0
 #define ICE_AQC_LLDP_FILTER_ACTION_DELETE	0x1
 	u8 reserved1;
 	__le16 vsi_num;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9266f25a9978..f5cca0e2ead6 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5911,32 +5911,6 @@ bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw)
 				     ICE_FW_API_LLDP_FLTR_PATCH);
 }
 
-/**
- * ice_lldp_fltr_add_remove - add or remove a LLDP Rx switch filter
- * @hw: pointer to HW struct
- * @vsi_num: absolute HW index for VSI
- * @add: boolean for if adding or removing a filter
- */
-int
-ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add)
-{
-	struct ice_aqc_lldp_filter_ctrl *cmd;
-	struct ice_aq_desc desc;
-
-	cmd = &desc.params.lldp_filter_ctrl;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_filter_ctrl);
-
-	if (add)
-		cmd->cmd_flags = ICE_AQC_LLDP_FILTER_ACTION_ADD;
-	else
-		cmd->cmd_flags = ICE_AQC_LLDP_FILTER_ACTION_DELETE;
-
-	cmd->vsi_num = cpu_to_le16(vsi_num);
-
-	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
-}
-
 /**
  * ice_lldp_execute_pending_mib - execute LLDP pending MIB request
  * @hw: pointer to HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 32fd10de620c..900926e6414c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -267,8 +267,6 @@ int
 ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 		    struct ice_sq_cd *cd);
 bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw);
-int
-ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add);
 int ice_lldp_execute_pending_mib(struct ice_hw *hw);
 int
 ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 60e0d824195e..a774bcdcc0c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2039,6 +2039,27 @@ static void ice_vsi_set_tc_cfg(struct ice_vsi *vsi)
 	ice_vsi_set_dcb_tc_cfg(vsi);
 }
 
+/**
+ * ice_lldp_fltr_remove_from_port - Remove a LLDP Rx filter from the port
+ * @hw: port
+ *
+ * Remove a LLDP Rx switch filter from the port. For some NVMs,
+ * such leftover filter can prevent us from configuring another one.
+ */
+static void ice_lldp_fltr_remove_from_port(struct ice_hw *hw)
+{
+	struct ice_aqc_lldp_filter_ctrl *cmd;
+	struct ice_aq_desc desc;
+
+	cmd = &desc.params.lldp_filter_ctrl;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_filter_ctrl);
+
+	cmd->cmd_flags = ICE_AQC_LLDP_FILTER_ACTION_DELETE;
+
+	ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+}
+
 /**
  * ice_cfg_sw_lldp - Config switch rules for LLDP packet handling
  * @vsi: the VSI being configured
@@ -2060,13 +2081,11 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 		status = eth_fltr(vsi, ETH_P_LLDP, ICE_FLTR_TX,
 				  ICE_DROP_PACKET);
 	} else {
-		if (ice_fw_supports_lldp_fltr_ctrl(&pf->hw)) {
-			status = ice_lldp_fltr_add_remove(&pf->hw, vsi->vsi_num,
-							  create);
-		} else {
-			status = eth_fltr(vsi, ETH_P_LLDP, ICE_FLTR_RX,
-					  ICE_FWD_TO_VSI);
-		}
+		if (create && ice_fw_supports_lldp_fltr_ctrl(&pf->hw))
+			ice_lldp_fltr_remove_from_port(&vsi->back->hw);
+
+		status = eth_fltr(vsi, ETH_P_LLDP, ICE_FLTR_RX,
+				  ICE_FWD_TO_VSI);
 	}
 
 	if (status)
-- 
2.43.0

