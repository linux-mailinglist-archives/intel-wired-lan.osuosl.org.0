Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0E398F137
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 16:19:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82B438113C;
	Thu,  3 Oct 2024 14:19:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zent73RqSC3e; Thu,  3 Oct 2024 14:19:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2A548164A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727965140;
	bh=pv0MJZmQgDpJx+GBTm0ZpROstBBfs4r77iVh7f10qyk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iHY/ckN/NL5RWCW8IxF7Kne7vq7NAH13F3Zl0fpBVMEDKAdF46ajxKgLlazF4AEhR
	 8grPtFbW98FGbD7k5O9WUFPyKnaofJn+im6BJRi2CKF1+NRGeNmi2hbEMFWgXvBw97
	 8aEtwdH73J9uYmF2BxV50UemPVssdJRbxHzjVVtfv4AxvjUDsYEhq9SaRNloZ5VIA5
	 S1w0Lz6szFpDStP9LtQLy3Zf2/+29Qhf+YiitXdfOE4nUmtcnJtNXDoin/1N2jEOPl
	 rPQucTEsDAhZwBH7QSXeLQY8xa5SAOeXwd4aFva4EaZccXW35qnpirSvCyjGM8D4Tz
	 W4VLegqRymHjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2A548164A;
	Thu,  3 Oct 2024 14:19:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 894671BF285
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 14:18:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7867440169
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 14:18:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bAchV79LJ-En for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 14:18:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 112E34015A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 112E34015A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 112E34015A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 14:18:55 +0000 (UTC)
X-CSE-ConnectionGUID: ZKVgSYaeS3ih8FjM0qNKPA==
X-CSE-MsgGUID: buTSzp0iTz6Ge+208o1DBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="52567155"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="52567155"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 07:18:56 -0700
X-CSE-ConnectionGUID: nPMYDpQMQ/CdePDDd+1m2w==
X-CSE-MsgGUID: ZUzjeWZVQlSI/4MNaa0sng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74793970"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.245.117.83])
 by orviesa007.jf.intel.com with ESMTP; 03 Oct 2024 07:18:54 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Oct 2024 16:16:46 +0200
Message-ID: <20241003141650.16524-4-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20241003141650.16524-1-piotr.kwapulinski@intel.com>
References: <20241003141650.16524-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727965136; x=1759501136;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bi7aCZ4I2EdLz9+mTJXu44WI2GKYdaBwuXZ+Umrp/pM=;
 b=FxnB6W/B4p/oYKu3JVXqg5IrHDp6i6I8kc2T0c4VTDh7w2aHqPD202Fv
 lF46oy+GLuUS0+c03MGmz0gcDFH8tH/ORWcUdqLL4l5AZfdgyA3v6cQdl
 UTHg+mjN9dZ0PmZNS5Se2ntO8p7ipnsgvvYCLTR3P7eypjQGeraKPTZGr
 TSY94DIerlh+idewj8s9ovphWNpROhgwB7/tU1jmOx5bEBt9WJjybWw8i
 BpNwCnh+XdJG3L3+229y5IOfB6r10jTUAN9IP/KFVGD9/SpC5zCTk6wZY
 rqGemYQ+a1HYWfgquMqRIzw7XCrz1HM6B9VUl5eVavEGse0qZI3FS5fea
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FxnB6W/B
Subject: [Intel-wired-lan] [PATCH iwl-next v9 3/7] ixgbe: Add link
 management support for E610 device
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Jan Glaza <jan.glaza@intel.com>, Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add low level link management support for E610 device. Link management
operations are handled via the Admin Command Interface. Add the following
link management operations:
- get link capabilities
- set up link
- get media type
- get link status, link status events
- link power management

Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Jan Glaza <jan.glaza@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 1091 +++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   32 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |    1 +
 3 files changed, 1124 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 3bc88df..c0c740f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1033,3 +1033,1094 @@ void ixgbe_copy_phy_caps_to_cfg(struct ixgbe_aci_cmd_get_phy_caps_data *caps,
 	cfg->module_compliance_enforcement =
 		caps->module_compliance_enforcement;
 }
+
+/**
+ * ixgbe_aci_set_phy_cfg - set PHY configuration
+ * @hw: pointer to the HW struct
+ * @cfg: structure with PHY configuration data to be set
+ *
+ * Set the various PHY configuration parameters supported on the Port
+ * using ACI command (0x0601).
+ * One or more of the Set PHY config parameters may be ignored in an MFP
+ * mode as the PF may not have the privilege to set some of the PHY Config
+ * parameters.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_aci_set_phy_cfg(struct ixgbe_hw *hw,
+			  struct ixgbe_aci_cmd_set_phy_cfg_data *cfg)
+{
+	struct ixgbe_aci_desc desc;
+	int err;
+
+	if (!cfg)
+		return -EINVAL;
+
+	/* Ensure that only valid bits of cfg->caps can be turned on. */
+	cfg->caps &= IXGBE_ACI_PHY_ENA_VALID_MASK;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_set_phy_cfg);
+	desc.params.set_phy.lport_num = hw->bus.func;
+	desc.flags |= IXGBE_ACI_FLAG_RD;
+
+	err = ixgbe_aci_send_cmd(hw, &desc, cfg, sizeof(*cfg));
+
+	if (!err)
+		hw->phy.curr_user_phy_cfg = *cfg;
+
+	return err;
+}
+
+/**
+ * ixgbe_aci_set_link_restart_an - set up link and restart AN
+ * @hw: pointer to the HW struct
+ * @ena_link: if true: enable link, if false: disable link
+ *
+ * Function sets up the link and restarts the Auto-Negotiation over the link.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_aci_set_link_restart_an(struct ixgbe_hw *hw, bool ena_link)
+{
+	struct ixgbe_aci_cmd_restart_an *cmd;
+	struct ixgbe_aci_desc desc;
+
+	cmd = &desc.params.restart_an;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_restart_an);
+
+	cmd->cmd_flags = IXGBE_ACI_RESTART_AN_LINK_RESTART;
+	cmd->lport_num = hw->bus.func;
+	if (ena_link)
+		cmd->cmd_flags |= IXGBE_ACI_RESTART_AN_LINK_ENABLE;
+	else
+		cmd->cmd_flags &= ~IXGBE_ACI_RESTART_AN_LINK_ENABLE;
+
+	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
+}
+
+/**
+ * ixgbe_is_media_cage_present - check if media cage is present
+ * @hw: pointer to the HW struct
+ *
+ * Identify presence of media cage using the ACI command (0x06E0).
+ *
+ * Return: true if media cage is present, else false. If no cage, then
+ * media type is backplane or BASE-T.
+ */
+static bool ixgbe_is_media_cage_present(struct ixgbe_hw *hw)
+{
+	struct ixgbe_aci_cmd_get_link_topo *cmd;
+	struct ixgbe_aci_desc desc;
+
+	cmd = &desc.params.get_link_topo;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_topo);
+
+	cmd->addr.topo_params.node_type_ctx =
+		FIELD_PREP(IXGBE_ACI_LINK_TOPO_NODE_CTX_M,
+			   IXGBE_ACI_LINK_TOPO_NODE_CTX_PORT);
+
+	/* Set node type. */
+	cmd->addr.topo_params.node_type_ctx |=
+		FIELD_PREP(IXGBE_ACI_LINK_TOPO_NODE_TYPE_M,
+			   IXGBE_ACI_LINK_TOPO_NODE_TYPE_CAGE);
+
+	/* Node type cage can be used to determine if cage is present. If AQC
+	 * returns error (ENOENT), then no cage present. If no cage present then
+	 * connection type is backplane or BASE-T.
+	 */
+	return ixgbe_aci_get_netlist_node(hw, cmd, NULL, NULL);
+}
+
+/**
+ * ixgbe_get_media_type_from_phy_type - Gets media type based on phy type
+ * @hw: pointer to the HW struct
+ *
+ * Try to identify the media type based on the phy type.
+ * If more than one media type, the ixgbe_media_type_unknown is returned.
+ * First, phy_type_low is checked, then phy_type_high.
+ * If none are identified, the ixgbe_media_type_unknown is returned
+ *
+ * Return: type of a media based on phy type in form of enum.
+ */
+static enum ixgbe_media_type
+ixgbe_get_media_type_from_phy_type(struct ixgbe_hw *hw)
+{
+	struct ixgbe_link_status *hw_link_info;
+
+	if (!hw)
+		return ixgbe_media_type_unknown;
+
+	hw_link_info = &hw->link.link_info;
+	if (hw_link_info->phy_type_low && hw_link_info->phy_type_high)
+		/* If more than one media type is selected, report unknown */
+		return ixgbe_media_type_unknown;
+
+	if (hw_link_info->phy_type_low) {
+		/* 1G SGMII is a special case where some DA cable PHYs
+		 * may show this as an option when it really shouldn't
+		 * be since SGMII is meant to be between a MAC and a PHY
+		 * in a backplane. Try to detect this case and handle it
+		 */
+		if (hw_link_info->phy_type_low == IXGBE_PHY_TYPE_LOW_1G_SGMII &&
+		    (hw_link_info->module_type[IXGBE_ACI_MOD_TYPE_IDENT] ==
+		    IXGBE_ACI_MOD_TYPE_BYTE1_SFP_PLUS_CU_ACTIVE ||
+		    hw_link_info->module_type[IXGBE_ACI_MOD_TYPE_IDENT] ==
+		    IXGBE_ACI_MOD_TYPE_BYTE1_SFP_PLUS_CU_PASSIVE))
+			return ixgbe_media_type_da;
+
+		switch (hw_link_info->phy_type_low) {
+		case IXGBE_PHY_TYPE_LOW_1000BASE_SX:
+		case IXGBE_PHY_TYPE_LOW_1000BASE_LX:
+		case IXGBE_PHY_TYPE_LOW_10GBASE_SR:
+		case IXGBE_PHY_TYPE_LOW_10GBASE_LR:
+		case IXGBE_PHY_TYPE_LOW_25GBASE_SR:
+		case IXGBE_PHY_TYPE_LOW_25GBASE_LR:
+			return ixgbe_media_type_fiber;
+		case IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC:
+		case IXGBE_PHY_TYPE_LOW_25G_AUI_AOC_ACC:
+			return ixgbe_media_type_fiber;
+		case IXGBE_PHY_TYPE_LOW_100BASE_TX:
+		case IXGBE_PHY_TYPE_LOW_1000BASE_T:
+		case IXGBE_PHY_TYPE_LOW_2500BASE_T:
+		case IXGBE_PHY_TYPE_LOW_5GBASE_T:
+		case IXGBE_PHY_TYPE_LOW_10GBASE_T:
+		case IXGBE_PHY_TYPE_LOW_25GBASE_T:
+			return ixgbe_media_type_copper;
+		case IXGBE_PHY_TYPE_LOW_10G_SFI_DA:
+		case IXGBE_PHY_TYPE_LOW_25GBASE_CR:
+		case IXGBE_PHY_TYPE_LOW_25GBASE_CR_S:
+		case IXGBE_PHY_TYPE_LOW_25GBASE_CR1:
+			return ixgbe_media_type_da;
+		case IXGBE_PHY_TYPE_LOW_25G_AUI_C2C:
+			if (ixgbe_is_media_cage_present(hw))
+				return ixgbe_media_type_aui;
+			fallthrough;
+		case IXGBE_PHY_TYPE_LOW_1000BASE_KX:
+		case IXGBE_PHY_TYPE_LOW_2500BASE_KX:
+		case IXGBE_PHY_TYPE_LOW_2500BASE_X:
+		case IXGBE_PHY_TYPE_LOW_5GBASE_KR:
+		case IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1:
+		case IXGBE_PHY_TYPE_LOW_10G_SFI_C2C:
+		case IXGBE_PHY_TYPE_LOW_25GBASE_KR:
+		case IXGBE_PHY_TYPE_LOW_25GBASE_KR1:
+		case IXGBE_PHY_TYPE_LOW_25GBASE_KR_S:
+			return ixgbe_media_type_backplane;
+		}
+	} else {
+		switch (hw_link_info->phy_type_high) {
+		case IXGBE_PHY_TYPE_HIGH_10BASE_T:
+			return ixgbe_media_type_copper;
+		}
+	}
+	return ixgbe_media_type_unknown;
+}
+
+/**
+ * ixgbe_update_link_info - update status of the HW network link
+ * @hw: pointer to the HW struct
+ *
+ * Update the status of the HW network link.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_update_link_info(struct ixgbe_hw *hw)
+{
+	struct ixgbe_link_status *li;
+	int err;
+
+	if (!hw)
+		return -EINVAL;
+
+	li = &hw->link.link_info;
+
+	err = ixgbe_aci_get_link_info(hw, true, NULL);
+	if (err)
+		return err;
+
+	if (li->link_info & IXGBE_ACI_MEDIA_AVAILABLE) {
+		struct ixgbe_aci_cmd_get_phy_caps_data __free(kfree) *pcaps;
+
+		pcaps =	kzalloc(sizeof(*pcaps), GFP_KERNEL);
+		if (!pcaps)
+			return -ENOMEM;
+
+		err = ixgbe_aci_get_phy_caps(hw, false,
+					     IXGBE_ACI_REPORT_TOPO_CAP_MEDIA,
+					     pcaps);
+
+		if (!err)
+			memcpy(li->module_type, &pcaps->module_type,
+			       sizeof(li->module_type));
+	}
+
+	return err;
+}
+
+/**
+ * ixgbe_get_link_status - get status of the HW network link
+ * @hw: pointer to the HW struct
+ * @link_up: pointer to bool (true/false = linkup/linkdown)
+ *
+ * Variable link_up is true if link is up, false if link is down.
+ * The variable link_up is invalid if status is non zero. As a
+ * result of this call, link status reporting becomes enabled
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_get_link_status(struct ixgbe_hw *hw, bool *link_up)
+{
+	if (!hw || !link_up)
+		return -EINVAL;
+
+	if (hw->link.get_link_info) {
+		int err = ixgbe_update_link_info(hw);
+
+		if (err)
+			return err;
+	}
+
+	*link_up = hw->link.link_info.link_info & IXGBE_ACI_LINK_UP;
+
+	return 0;
+}
+
+/**
+ * ixgbe_aci_get_link_info - get the link status
+ * @hw: pointer to the HW struct
+ * @ena_lse: enable/disable LinkStatusEvent reporting
+ * @link: pointer to link status structure - optional
+ *
+ * Get the current Link Status using ACI command (0x607).
+ * The current link can be optionally provided to update
+ * the status.
+ *
+ * Return: the link status of the adapter.
+ */
+int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
+			    struct ixgbe_link_status *link)
+{
+	struct ixgbe_aci_cmd_get_link_status_data link_data = { 0 };
+	struct ixgbe_aci_cmd_get_link_status *resp;
+	struct ixgbe_link_status *li_old, *li;
+	struct ixgbe_fc_info *hw_fc_info;
+	struct ixgbe_aci_desc desc;
+	bool tx_pause, rx_pause;
+	u8 cmd_flags;
+	int err;
+
+	if (!hw)
+		return -EINVAL;
+
+	li_old = &hw->link.link_info_old;
+	li = &hw->link.link_info;
+	hw_fc_info = &hw->fc;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_status);
+	cmd_flags = (ena_lse) ? IXGBE_ACI_LSE_ENA : IXGBE_ACI_LSE_DIS;
+	resp = &desc.params.get_link_status;
+	resp->cmd_flags = cmd_flags;
+	resp->lport_num = hw->bus.func;
+
+	err = ixgbe_aci_send_cmd(hw, &desc, &link_data, sizeof(link_data));
+
+	if (err)
+		return err;
+
+	/* Save off old link status information. */
+	*li_old = *li;
+
+	/* Update current link status information. */
+	li->link_speed = link_data.link_speed;
+	li->phy_type_low = link_data.phy_type_low;
+	li->phy_type_high = link_data.phy_type_high;
+	li->link_info = link_data.link_info;
+	li->link_cfg_err = link_data.link_cfg_err;
+	li->an_info = link_data.an_info;
+	li->ext_info = link_data.ext_info;
+	li->max_frame_size = link_data.max_frame_size;
+	li->fec_info = link_data.cfg & IXGBE_ACI_FEC_MASK;
+	li->topo_media_conflict = link_data.topo_media_conflict;
+	li->pacing = link_data.cfg & (IXGBE_ACI_CFG_PACING_M |
+				      IXGBE_ACI_CFG_PACING_TYPE_M);
+
+	/* Update fc info. */
+	tx_pause = !!(link_data.an_info & IXGBE_ACI_LINK_PAUSE_TX);
+	rx_pause = !!(link_data.an_info & IXGBE_ACI_LINK_PAUSE_RX);
+	if (tx_pause && rx_pause)
+		hw_fc_info->current_mode = ixgbe_fc_full;
+	else if (tx_pause)
+		hw_fc_info->current_mode = ixgbe_fc_tx_pause;
+	else if (rx_pause)
+		hw_fc_info->current_mode = ixgbe_fc_rx_pause;
+	else
+		hw_fc_info->current_mode = ixgbe_fc_none;
+
+	li->lse_ena = !!(resp->cmd_flags & IXGBE_ACI_LSE_IS_ENABLED);
+
+	/* Save link status information. */
+	if (link)
+		*link = *li;
+
+	/* Flag cleared so calling functions don't call AQ again. */
+	hw->link.get_link_info = false;
+
+	return 0;
+}
+
+/**
+ * ixgbe_aci_set_event_mask - set event mask
+ * @hw: pointer to the HW struct
+ * @port_num: port number of the physical function
+ * @mask: event mask to be set
+ *
+ * Set the event mask using ACI command (0x0613).
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_aci_set_event_mask(struct ixgbe_hw *hw, u8 port_num, u16 mask)
+{
+	struct ixgbe_aci_cmd_set_event_mask *cmd;
+	struct ixgbe_aci_desc desc;
+
+	cmd = &desc.params.set_event_mask;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_set_event_mask);
+
+	cmd->lport_num = port_num;
+
+	cmd->event_mask = mask;
+	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
+}
+
+/**
+ * ixgbe_configure_lse - enable/disable link status events
+ * @hw: pointer to the HW struct
+ * @activate: true for enable lse, false otherwise
+ * @mask: event mask to be set; a set bit means deactivation of the
+ * corresponding event
+ *
+ * Set the event mask and then enable or disable link status events
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate, u16 mask)
+{
+	int err;
+
+	err = ixgbe_aci_set_event_mask(hw, (u8)hw->bus.func, mask);
+	if (err)
+		return err;
+
+	/* Enabling link status events generation by fw */
+	err = ixgbe_aci_get_link_info(hw, activate, NULL);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+/**
+ * ixgbe_get_media_type_e610 - Gets media type
+ * @hw: pointer to the HW struct
+ *
+ * In order to get the media type, the function gets PHY
+ * capabilities and later on use them to identify the PHY type
+ * checking phy_type_high and phy_type_low.
+ *
+ * Return: the type of media in form of ixgbe_media_type enum
+ * or ixgbe_media_type_unknown in case of an error.
+ */
+enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw)
+{
+	struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
+	int rc;
+
+	rc = ixgbe_update_link_info(hw);
+	if (rc)
+		return ixgbe_media_type_unknown;
+
+	/* If there is no link but PHY (dongle) is available SW should use
+	 * Get PHY Caps admin command instead of Get Link Status, find most
+	 * significant bit that is set in PHY types reported by the command
+	 * and use it to discover media type.
+	 */
+	if (!(hw->link.link_info.link_info & IXGBE_ACI_LINK_UP) &&
+	    (hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE)) {
+		int highest_bit;
+
+		/* Get PHY Capabilities */
+		rc = ixgbe_aci_get_phy_caps(hw, false,
+					    IXGBE_ACI_REPORT_TOPO_CAP_MEDIA,
+					    &pcaps);
+		if (rc)
+			return ixgbe_media_type_unknown;
+
+		highest_bit = fls64(pcaps.phy_type_high);
+		if (highest_bit) {
+			hw->link.link_info.phy_type_high =
+				BIT_ULL(highest_bit - 1);
+			hw->link.link_info.phy_type_low = 0;
+		} else {
+			highest_bit = fls64(pcaps.phy_type_low);
+			if (highest_bit)
+				hw->link.link_info.phy_type_low =
+					BIT_ULL(highest_bit - 1);
+		}
+	}
+
+	/* Based on link status or search above try to discover media type. */
+	hw->phy.media_type = ixgbe_get_media_type_from_phy_type(hw);
+
+	return hw->phy.media_type;
+}
+
+/**
+ * ixgbe_setup_link_e610 - Set up link
+ * @hw: pointer to hardware structure
+ * @speed: new link speed
+ * @autoneg_wait: true when waiting for completion is needed
+ *
+ * Set up the link with the specified speed.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_setup_link_e610(struct ixgbe_hw *hw, ixgbe_link_speed speed,
+			  bool autoneg_wait)
+{
+	/* Simply request FW to perform proper PHY setup */
+	return hw->phy.ops.setup_link_speed(hw, speed, autoneg_wait);
+}
+
+/**
+ * ixgbe_check_link_e610 - Determine link and speed status
+ * @hw: pointer to hardware structure
+ * @speed: pointer to link speed
+ * @link_up: true when link is up
+ * @link_up_wait_to_complete: bool used to wait for link up or not
+ *
+ * Determine if the link is up and the current link speed
+ * using ACI command (0x0607).
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_check_link_e610(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
+			  bool *link_up, bool link_up_wait_to_complete)
+{
+	int err;
+	u32 i;
+
+	if (!speed || !link_up)
+		return -EINVAL;
+
+	/* Set get_link_info flag to ensure that fresh
+	 * link information will be obtained from FW
+	 * by sending Get Link Status admin command.
+	 */
+	hw->link.get_link_info = true;
+
+	/* Update link information in adapter context. */
+	err = ixgbe_get_link_status(hw, link_up);
+	if (err)
+		return err;
+
+	/* Wait for link up if it was requested. */
+	if (link_up_wait_to_complete && !(*link_up)) {
+		for (i = 0; i < hw->mac.max_link_up_time; i++) {
+			msleep(100);
+			hw->link.get_link_info = true;
+			err = ixgbe_get_link_status(hw, link_up);
+			if (err)
+				return err;
+			if (*link_up)
+				break;
+		}
+	}
+
+	/* Use link information in adapter context updated by the call
+	 * to ixgbe_get_link_status() to determine current link speed.
+	 * Link speed information is valid only when link up was
+	 * reported by FW.
+	 */
+	if (*link_up) {
+		switch (hw->link.link_info.link_speed) {
+		case IXGBE_ACI_LINK_SPEED_10MB:
+			*speed = IXGBE_LINK_SPEED_10_FULL;
+			break;
+		case IXGBE_ACI_LINK_SPEED_100MB:
+			*speed = IXGBE_LINK_SPEED_100_FULL;
+			break;
+		case IXGBE_ACI_LINK_SPEED_1000MB:
+			*speed = IXGBE_LINK_SPEED_1GB_FULL;
+			break;
+		case IXGBE_ACI_LINK_SPEED_2500MB:
+			*speed = IXGBE_LINK_SPEED_2_5GB_FULL;
+			break;
+		case IXGBE_ACI_LINK_SPEED_5GB:
+			*speed = IXGBE_LINK_SPEED_5GB_FULL;
+			break;
+		case IXGBE_ACI_LINK_SPEED_10GB:
+			*speed = IXGBE_LINK_SPEED_10GB_FULL;
+			break;
+		default:
+			*speed = IXGBE_LINK_SPEED_UNKNOWN;
+			break;
+		}
+	} else {
+		*speed = IXGBE_LINK_SPEED_UNKNOWN;
+	}
+
+	return 0;
+}
+
+/**
+ * ixgbe_get_link_capabilities_e610 - Determine link capabilities
+ * @hw: pointer to hardware structure
+ * @speed: pointer to link speed
+ * @autoneg: true when autoneg or autotry is enabled
+ *
+ * Determine speed and AN parameters of a link.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_get_link_capabilities_e610(struct ixgbe_hw *hw,
+				     ixgbe_link_speed *speed,
+				     bool *autoneg)
+{
+	if (!speed || !autoneg)
+		return -EINVAL;
+
+	*autoneg = true;
+	*speed = hw->phy.speeds_supported;
+
+	return 0;
+}
+
+/**
+ * ixgbe_cfg_phy_fc - Configure PHY Flow Control (FC) data based on FC mode
+ * @hw: pointer to hardware structure
+ * @cfg: PHY configuration data to set FC mode
+ * @req_mode: FC mode to configure
+ *
+ * Configures PHY Flow Control according to the provided configuration.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_cfg_phy_fc(struct ixgbe_hw *hw,
+		     struct ixgbe_aci_cmd_set_phy_cfg_data *cfg,
+		     enum ixgbe_fc_mode req_mode)
+{
+	u8 pause_mask = 0x0;
+
+	if (!cfg)
+		return -EINVAL;
+
+	switch (req_mode) {
+	case ixgbe_fc_full:
+		pause_mask |= IXGBE_ACI_PHY_EN_TX_LINK_PAUSE;
+		pause_mask |= IXGBE_ACI_PHY_EN_RX_LINK_PAUSE;
+		break;
+	case ixgbe_fc_rx_pause:
+		pause_mask |= IXGBE_ACI_PHY_EN_RX_LINK_PAUSE;
+		break;
+	case ixgbe_fc_tx_pause:
+		pause_mask |= IXGBE_ACI_PHY_EN_TX_LINK_PAUSE;
+		break;
+	default:
+		break;
+	}
+
+	/* Clear the old pause settings. */
+	cfg->caps &= ~(IXGBE_ACI_PHY_EN_TX_LINK_PAUSE |
+		IXGBE_ACI_PHY_EN_RX_LINK_PAUSE);
+
+	/* Set the new capabilities. */
+	cfg->caps |= pause_mask;
+
+	return 0;
+}
+
+/**
+ * ixgbe_setup_fc_e610 - Set up flow control
+ * @hw: pointer to hardware structure
+ *
+ * Set up flow control. This has to be done during init time.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_setup_fc_e610(struct ixgbe_hw *hw)
+{
+	struct ixgbe_aci_cmd_get_phy_caps_data pcaps = { 0 };
+	struct ixgbe_aci_cmd_set_phy_cfg_data cfg = { 0 };
+	int err;
+
+	/* Get the current PHY config */
+	err = ixgbe_aci_get_phy_caps(hw, false,
+				     IXGBE_ACI_REPORT_ACTIVE_CFG, &pcaps);
+	if (err)
+		return err;
+
+	ixgbe_copy_phy_caps_to_cfg(&pcaps, &cfg);
+
+	/* Configure the set PHY data */
+	err = ixgbe_cfg_phy_fc(hw, &cfg, hw->fc.requested_mode);
+	if (err)
+		return err;
+
+	/* If the capabilities have changed, then set the new config */
+	if (cfg.caps != pcaps.caps) {
+		cfg.caps |= IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
+
+		err = ixgbe_aci_set_phy_cfg(hw, &cfg);
+		if (err)
+			return err;
+	}
+
+	return err;
+}
+
+/**
+ * ixgbe_fc_autoneg_e610 - Configure flow control
+ * @hw: pointer to hardware structure
+ *
+ * Configure Flow Control.
+ */
+void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw)
+{
+	int err;
+
+	/* Get current link err.
+	 * Current FC mode will be stored in the hw context.
+	 */
+	err = ixgbe_aci_get_link_info(hw, false, NULL);
+	if (err)
+		goto no_autoneg;
+
+	/* Check if the link is up */
+	if (!(hw->link.link_info.link_info & IXGBE_ACI_LINK_UP))
+		goto no_autoneg;
+
+	/* Check if auto-negotiation has completed */
+	if (!(hw->link.link_info.an_info & IXGBE_ACI_AN_COMPLETED))
+		goto no_autoneg;
+
+	hw->fc.fc_was_autonegged = true;
+	return;
+
+no_autoneg:
+	hw->fc.fc_was_autonegged = false;
+	hw->fc.current_mode = hw->fc.requested_mode;
+}
+
+/**
+ * ixgbe_disable_rx_e610 - Disable RX unit
+ * @hw: pointer to hardware structure
+ *
+ * Disable RX DMA unit on E610 with use of ACI command (0x000C).
+ *
+ * Return: the exit code of the operation.
+ */
+void ixgbe_disable_rx_e610(struct ixgbe_hw *hw)
+{
+	u32 rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
+	u32 pfdtxgswc;
+	int err;
+
+	if (!(rxctrl & IXGBE_RXCTRL_RXEN))
+		return;
+
+	pfdtxgswc = IXGBE_READ_REG(hw, IXGBE_PFDTXGSWC);
+	if (pfdtxgswc & IXGBE_PFDTXGSWC_VT_LBEN) {
+		pfdtxgswc &= ~IXGBE_PFDTXGSWC_VT_LBEN;
+		IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, pfdtxgswc);
+		hw->mac.set_lben = true;
+	} else {
+		hw->mac.set_lben = false;
+	}
+
+	err = ixgbe_aci_disable_rxen(hw);
+
+	/* If we fail - disable RX using register write */
+	if (err) {
+		rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
+		if (rxctrl & IXGBE_RXCTRL_RXEN) {
+			rxctrl &= ~IXGBE_RXCTRL_RXEN;
+			IXGBE_WRITE_REG(hw, IXGBE_RXCTRL, rxctrl);
+		}
+	}
+}
+
+/**
+ * ixgbe_init_phy_ops_e610 - PHY specific init
+ * @hw: pointer to hardware structure
+ *
+ * Initialize any function pointers that were not able to be
+ * set during init_shared_code because the PHY type was not known.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_init_phy_ops_e610(struct ixgbe_hw *hw)
+{
+	struct ixgbe_mac_info *mac = &hw->mac;
+	struct ixgbe_phy_info *phy = &hw->phy;
+	int ret_val;
+
+	if (mac->ops.get_media_type(hw) == ixgbe_media_type_copper)
+		phy->ops.set_phy_power = ixgbe_set_phy_power_e610;
+	else
+		phy->ops.set_phy_power = NULL;
+
+	/* Identify the PHY */
+	ret_val = phy->ops.identify(hw);
+	if (ret_val)
+		return ret_val;
+
+	return ret_val;
+}
+
+/**
+ * ixgbe_identify_phy_e610 - Identify PHY
+ * @hw: pointer to hardware structure
+ *
+ * Determine PHY type, supported speeds and PHY ID.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
+{
+	struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
+	int err;
+
+	/* Set PHY type */
+	hw->phy.type = ixgbe_phy_fw;
+
+	err = ixgbe_aci_get_phy_caps(hw, false,
+				     IXGBE_ACI_REPORT_TOPO_CAP_MEDIA, &pcaps);
+	if (err)
+		return err;
+
+	if (!(pcaps.module_compliance_enforcement &
+	      IXGBE_ACI_MOD_ENFORCE_STRICT_MODE)) {
+		/* Handle lenient mode */
+		err = ixgbe_aci_get_phy_caps(hw, false,
+					     IXGBE_ACI_REPORT_TOPO_CAP_NO_MEDIA,
+					     &pcaps);
+		if (err)
+			return err;
+	}
+
+	/* Determine supported speeds */
+	hw->phy.speeds_supported = IXGBE_LINK_SPEED_UNKNOWN;
+
+	if (pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_10BASE_T ||
+	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_10M_SGMII)
+		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_10_FULL;
+	if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_100BASE_TX ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_100M_SGMII ||
+	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_100M_USXGMII)
+		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_100_FULL;
+	if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_T  ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_SX ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_LX ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_KX ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1G_SGMII    ||
+	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_1G_USXGMII)
+		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_1GB_FULL;
+	if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_T       ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_DA      ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_SR      ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_LR      ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1  ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_C2C     ||
+	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_10G_USXGMII)
+		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_10GB_FULL;
+
+	/* 2.5 and 5 Gbps link speeds must be excluded from the
+	 * auto-negotiation set used during driver initialization due to
+	 * compatibility issues with certain switches. Those issues do not
+	 * exist in case of E610 2.5G SKU device (0x57b1).
+	 */
+	if (!hw->phy.autoneg_advertised &&
+	    hw->device_id != IXGBE_DEV_ID_E610_2_5G_T)
+		hw->phy.autoneg_advertised = hw->phy.speeds_supported;//PK
+
+	if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_T   ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_X   ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_KX  ||
+	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_SGMII ||
+	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_USXGMII)
+		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_2_5GB_FULL;
+
+	if (!hw->phy.autoneg_advertised &&
+	    hw->device_id == IXGBE_DEV_ID_E610_2_5G_T)
+		hw->phy.autoneg_advertised = hw->phy.speeds_supported;//PK
+
+	if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_T  ||
+	    pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_KR ||
+	    pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_5G_USXGMII)
+		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_5GB_FULL;
+
+	/* Set PHY ID */
+	memcpy(&hw->phy.id, pcaps.phy_id_oui, sizeof(u32));
+
+	hw->phy.eee_speeds_supported = IXGBE_LINK_SPEED_10_FULL |
+				       IXGBE_LINK_SPEED_100_FULL |
+				       IXGBE_LINK_SPEED_1GB_FULL;
+	hw->phy.eee_speeds_advertised = hw->phy.eee_speeds_supported;
+
+	return 0;
+}
+
+/**
+ * ixgbe_identify_module_e610 - Identify SFP module type
+ * @hw: pointer to hardware structure
+ *
+ * Identify the SFP module type.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_identify_module_e610(struct ixgbe_hw *hw)
+{
+	bool media_available;
+	u8 module_type;
+	int err;
+
+	err = ixgbe_update_link_info(hw);
+	if (err)
+		return err;
+
+	media_available =
+		(hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE);
+
+	if (media_available) {
+		hw->phy.sfp_type = ixgbe_sfp_type_unknown;
+
+		/* Get module type from hw context updated by
+		 * ixgbe_update_link_info()
+		 */
+		module_type = hw->link.link_info.module_type[IXGBE_ACI_MOD_TYPE_IDENT];
+
+		if ((module_type & IXGBE_ACI_MOD_TYPE_BYTE1_SFP_PLUS_CU_PASSIVE) ||
+		    (module_type & IXGBE_ACI_MOD_TYPE_BYTE1_SFP_PLUS_CU_ACTIVE)) {
+			hw->phy.sfp_type = ixgbe_sfp_type_da_cu;
+		} else if (module_type & IXGBE_ACI_MOD_TYPE_BYTE1_10G_BASE_SR) {
+			hw->phy.sfp_type = ixgbe_sfp_type_sr;
+		} else if ((module_type & IXGBE_ACI_MOD_TYPE_BYTE1_10G_BASE_LR) ||
+			   (module_type & IXGBE_ACI_MOD_TYPE_BYTE1_10G_BASE_LRM)) {
+			hw->phy.sfp_type = ixgbe_sfp_type_lr;
+		}
+	} else {
+		hw->phy.sfp_type = ixgbe_sfp_type_not_present;
+		return -ENOENT;
+	}
+
+	return 0;
+}
+
+/**
+ * ixgbe_setup_phy_link_e610 - Sets up firmware-controlled PHYs
+ * @hw: pointer to hardware structure
+ *
+ * Set the parameters for the firmware-controlled PHYs.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
+{
+	struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
+	struct ixgbe_aci_cmd_set_phy_cfg_data pcfg;
+	u8 rmode = IXGBE_ACI_REPORT_TOPO_CAP_MEDIA;
+	u64 sup_phy_type_low, sup_phy_type_high;
+	int err;
+
+	err = ixgbe_aci_get_link_info(hw, false, NULL);
+	if (err)
+		return err;
+
+	/* If media is not available get default config. */
+	if (!(hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE))
+		rmode = IXGBE_ACI_REPORT_DFLT_CFG;
+
+	err = ixgbe_aci_get_phy_caps(hw, false, rmode, &pcaps);
+	if (err)
+		return err;
+
+	sup_phy_type_low = pcaps.phy_type_low;
+	sup_phy_type_high = pcaps.phy_type_high;
+
+	/* Get Active configuration to avoid unintended changes. */
+	err = ixgbe_aci_get_phy_caps(hw, false, IXGBE_ACI_REPORT_ACTIVE_CFG,
+				     &pcaps);
+	if (err)
+		return err;
+
+	ixgbe_copy_phy_caps_to_cfg(&pcaps, &pcfg);
+
+	/* Set default PHY types for a given speed */
+	pcfg.phy_type_low = 0;
+	pcfg.phy_type_high = 0;
+
+	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10_FULL) {
+		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_10BASE_T;
+		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_10M_SGMII;
+	}
+	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_100_FULL) {
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_100BASE_TX;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_100M_SGMII;
+		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_100M_USXGMII;
+	}
+	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_1GB_FULL) {
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_T;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_SX;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_LX;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1000BASE_KX;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_1G_SGMII;
+		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_1G_USXGMII;
+	}
+	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_2_5GB_FULL) {
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_T;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_X;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_2500BASE_KX;
+		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_2500M_SGMII;
+		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_2500M_USXGMII;
+	}
+	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_5GB_FULL) {
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_5GBASE_T;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_5GBASE_KR;
+		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_5G_USXGMII;
+	}
+	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10GB_FULL) {
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_T;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_DA;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_SR;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_LR;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC;
+		pcfg.phy_type_low  |= IXGBE_PHY_TYPE_LOW_10G_SFI_C2C;
+		pcfg.phy_type_high |= IXGBE_PHY_TYPE_HIGH_10G_USXGMII;
+	}
+
+	/* Mask the set values to avoid requesting unsupported link types */
+	pcfg.phy_type_low &= sup_phy_type_low;
+	pcfg.phy_type_high &= sup_phy_type_high;
+
+	if (pcfg.phy_type_high != pcaps.phy_type_high ||
+	    pcfg.phy_type_low != pcaps.phy_type_low ||
+	    pcfg.caps != pcaps.caps) {
+		pcfg.caps |= IXGBE_ACI_PHY_ENA_LINK;
+		pcfg.caps |= IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
+
+		err = ixgbe_aci_set_phy_cfg(hw, &pcfg);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ixgbe_set_phy_power_e610 - Control power for copper PHY
+ * @hw: pointer to hardware structure
+ * @on: true for on, false for off
+ *
+ * Set the power on/off of the PHY
+ * by getting its capabilities and setting the appropriate
+ * configuration parameters.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_set_phy_power_e610(struct ixgbe_hw *hw, bool on)
+{
+	struct ixgbe_aci_cmd_get_phy_caps_data phy_caps = { 0 };
+	struct ixgbe_aci_cmd_set_phy_cfg_data phy_cfg = { 0 };
+	int err;
+
+	err = ixgbe_aci_get_phy_caps(hw, false,
+				     IXGBE_ACI_REPORT_ACTIVE_CFG,
+				     &phy_caps);
+	if (err)
+		return err;
+
+	ixgbe_copy_phy_caps_to_cfg(&phy_caps, &phy_cfg);
+
+	if (on)
+		phy_cfg.caps &= ~IXGBE_ACI_PHY_ENA_LOW_POWER;
+	else
+		phy_cfg.caps |= IXGBE_ACI_PHY_ENA_LOW_POWER;
+
+	/* PHY is already in requested power mode. */
+	if (phy_caps.caps == phy_cfg.caps)
+		return 0;
+
+	phy_cfg.caps |= IXGBE_ACI_PHY_ENA_LINK;
+	phy_cfg.caps |= IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
+
+	err = ixgbe_aci_set_phy_cfg(hw, &phy_cfg);
+
+	return err;
+}
+
+/**
+ * ixgbe_enter_lplu_e610 - Transition to low power states
+ * @hw: pointer to hardware structure
+ *
+ * Configures Low Power Link Up on transition to low power states
+ * (from D0 to non-D0). Link is required to enter LPLU so avoid resetting the
+ * X557 PHY immediately prior to entering LPLU.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_enter_lplu_e610(struct ixgbe_hw *hw)
+{
+	struct ixgbe_aci_cmd_get_phy_caps_data phy_caps = { 0 };
+	struct ixgbe_aci_cmd_set_phy_cfg_data phy_cfg = { 0 };
+	int err;
+
+	err = ixgbe_aci_get_phy_caps(hw, false,
+				     IXGBE_ACI_REPORT_ACTIVE_CFG,
+				     &phy_caps);
+	if (err)
+		return err;
+
+	ixgbe_copy_phy_caps_to_cfg(&phy_caps, &phy_cfg);
+
+	phy_cfg.low_power_ctrl_an |= IXGBE_ACI_PHY_EN_D3COLD_LOW_POWER_AUTONEG;
+
+	err = ixgbe_aci_set_phy_cfg(hw, &phy_cfg);
+
+	return err;
+}
+
+/**
+ * ixgbe_aci_get_netlist_node - get a node handle
+ * @hw: pointer to the hw struct
+ * @cmd: get_link_topo AQ structure
+ * @node_part_number: output node part number if node found
+ * @node_handle: output node handle parameter if node found
+ *
+ * Get the netlist node and assigns it to
+ * the provided handle using ACI command (0x06E0).
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
+			       struct ixgbe_aci_cmd_get_link_topo *cmd,
+			       u8 *node_part_number, u16 *node_handle)
+{
+	struct ixgbe_aci_desc desc;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_topo);
+	desc.params.get_link_topo = *cmd;
+
+	if (ixgbe_aci_send_cmd(hw, &desc, NULL, 0))
+		return -EOPNOTSUPP;
+
+	if (node_handle)
+		*node_handle = desc.params.get_link_topo.addr.handle;
+	if (node_part_number)
+		*node_part_number = desc.params.get_link_topo.node_part_num;
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 5c5a676..4a4f969 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -27,5 +27,37 @@ int ixgbe_aci_get_phy_caps(struct ixgbe_hw *hw, bool qual_mods, u8 report_mode,
 			   struct ixgbe_aci_cmd_get_phy_caps_data *pcaps);
 void ixgbe_copy_phy_caps_to_cfg(struct ixgbe_aci_cmd_get_phy_caps_data *caps,
 				struct ixgbe_aci_cmd_set_phy_cfg_data *cfg);
+int ixgbe_aci_set_phy_cfg(struct ixgbe_hw *hw,
+			  struct ixgbe_aci_cmd_set_phy_cfg_data *cfg);
+int ixgbe_aci_set_link_restart_an(struct ixgbe_hw *hw, bool ena_link);
+int ixgbe_update_link_info(struct ixgbe_hw *hw);
+int ixgbe_get_link_status(struct ixgbe_hw *hw, bool *link_up);
+int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
+			    struct ixgbe_link_status *link);
+int ixgbe_aci_set_event_mask(struct ixgbe_hw *hw, u8 port_num, u16 mask);
+int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate, u16 mask);
+enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw);
+int ixgbe_setup_link_e610(struct ixgbe_hw *hw, ixgbe_link_speed speed,
+			  bool autoneg_wait);
+int ixgbe_check_link_e610(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
+			  bool *link_up, bool link_up_wait_to_complete);
+int ixgbe_get_link_capabilities_e610(struct ixgbe_hw *hw,
+				     ixgbe_link_speed *speed,
+				     bool *autoneg);
+int ixgbe_cfg_phy_fc(struct ixgbe_hw *hw,
+		     struct ixgbe_aci_cmd_set_phy_cfg_data *cfg,
+		     enum ixgbe_fc_mode req_mode);
+int ixgbe_setup_fc_e610(struct ixgbe_hw *hw);
+void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw);
+void ixgbe_disable_rx_e610(struct ixgbe_hw *hw);
+int ixgbe_init_phy_ops_e610(struct ixgbe_hw *hw);
+int ixgbe_identify_phy_e610(struct ixgbe_hw *hw);
+int ixgbe_identify_module_e610(struct ixgbe_hw *hw);
+int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw);
+int ixgbe_set_phy_power_e610(struct ixgbe_hw *hw, bool on);
+int ixgbe_enter_lplu_e610(struct ixgbe_hw *hw);
+int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
+			       struct ixgbe_aci_cmd_get_link_topo *cmd,
+			       u8 *node_part_number, u16 *node_handle);
 
 #endif /* _IXGBE_E610_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 6c6d990..1f97652 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -652,6 +652,7 @@ struct ixgbe_aci_cmd_link_topo_params {
 #define IXGBE_ACI_LINK_TOPO_NODE_TYPE_CLK_MUX	10
 #define IXGBE_ACI_LINK_TOPO_NODE_TYPE_GPS	11
 #define IXGBE_ACI_LINK_TOPO_NODE_CTX_S		4
+#define IXGBE_ACI_LINK_TOPO_NODE_CTX_M		GENMASK(7, 4)
 #define IXGBE_ACI_LINK_TOPO_NODE_CTX_GLOBAL			0
 #define IXGBE_ACI_LINK_TOPO_NODE_CTX_BOARD			1
 #define IXGBE_ACI_LINK_TOPO_NODE_CTX_PORT			2
-- 
2.43.0

