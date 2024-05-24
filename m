Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 903038CEAC5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 22:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BC9981FEE;
	Fri, 24 May 2024 20:22:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MDVHFlnx_5u8; Fri, 24 May 2024 20:22:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7DDD781E5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716582148;
	bh=uaWO/eodFiROf0yVhArE7PAJORcWCNDY4jVIJiXRvME=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L6581CwXni0mFEQt+7HWWDJFcClKD8oa26apovkXYrAG1l2XvqTb5AIbaXYSZuzpA
	 0jWyQRw2W0xoBCT6lNLSgGHkqosVpyR2ZQKJu1pjpvIct5N464SOm5S1zy4qkCXxB2
	 l42MlMTk9okFRn9HNKYdkykxumFNr6jHdgfbaezro/Kig91UeRejrWml/2Gv2DA0gP
	 MYYrIw2dHeXPkewEQS6Fma9wd5RnHYasq8UQs1GdHhDnUSaaojmu1P2qVstwujd1XH
	 H4FuSy3GVR15rnc9FRbHehPIOAe2unjU/hUj/5HlbJDWXBokh8d6ZK6YwH5tPbJeF/
	 WDsEZmE0ME8dw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7DDD781E5A;
	Fri, 24 May 2024 20:22:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93D851CFA05
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 13:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8030160624
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 13:53:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id imEHuGF8v6Wg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 13:53:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=anil.samal@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 55A1760B50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55A1760B50
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55A1760B50
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 13:53:07 +0000 (UTC)
X-CSE-ConnectionGUID: n8nyuUmGS3mrKkMD9Sqdpg==
X-CSE-MsgGUID: 0JPqdiLsTbK5CufYvrWn4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="13111915"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="13111915"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 06:53:05 -0700
X-CSE-ConnectionGUID: vDYzU3CQTkaJNanoumN5aQ==
X-CSE-MsgGUID: DiMaoH7SRUytoT43bRvJ2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="64837194"
Received: from c3-1-server.sj.intel.com ([10.232.18.246])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 06:53:05 -0700
From: Anil Samal <anil.samal@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 May 2024 06:51:07 -0700
Message-ID: <20240524135255.3607422-4-anil.samal@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240524135255.3607422-1-anil.samal@intel.com>
References: <20240524135255.3607422-1-anil.samal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 24 May 2024 20:22:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716558788; x=1748094788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0I7WA3mSumwJlFEhhaGHma+tWIdkzI7uqtN1LVW6kn4=;
 b=BknfgrJIKSrNq+Q7t1eLU+Mc7KSYBK7Zq0vWTijlFdbTVM5tVISxbA3f
 JXjzlhU62TYYZcg3TWLQXf+7czWCHCt3fLl28ESInK3YNlOA0gHH1PEOo
 KEw39xmdmfxkhtNrLWrS3yIep4ockiMTbwSCwAQnvNjJu11QJuFjR456+
 MxuX2U/jrc/YiyvKhYHcqvjILuYQFkkfVIli5vcMXz74WJOQXvE8vPdL1
 EKPSPAjmDN7e3Ap/Ivn/8zXa5NccMJLsvBjIgb2EfpQDsTvN1XERoGIjd
 TcbSnQDYlHl3JoyoLkaUpicIUxKLdTZoxrgyn4OOwKLWpAM1SmAZNnbkn
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BknfgrJI
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: Implement driver
 functionality to dump serdes equalizer values
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
Cc: netdev@vger.kernel.org, lukasz.czapnik@intel.com,
 Anil Samal <anil.samal@intel.com>, leszek.pepiak@intel.com,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

    To debug link issues in the field, serdes Tx/Rx equalizer values
    help to determine the health of serdes lane.

    Extend 'ethtool -d' option to dump serdes Tx/Rx equalizer.
    The following list of equalizer param is supported
        a. rx_equalization_pre2
        b. rx_equalization_pre1
        c. rx_equalization_post1
        d. rx_equalization_bflf
        e. rx_equalization_bfhf
        f. rx_equalization_drate
        g. tx_equalization_pre1
        h. tx_equalization_pre3
        i. tx_equalization_atten
        j. tx_equalization_post1
        k. tx_equalization_pre2

Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Anil Samal <anil.samal@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  51 +++++++
 drivers/net/ethernet/intel/ice/ice_common.c   |  37 +++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 141 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |  19 +++
 5 files changed, 248 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index e76c388b9905..92d96c85d924 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1460,6 +1460,55 @@ struct ice_aqc_get_sensor_reading_resp {
 	} data;
 };
 
+/* DNL call command (indirect 0x0682)
+ * Struct is used for both command and response
+ */
+struct ice_aqc_dnl_call_command {
+	u8 ctx; /* Used in command, reserved in response */
+	u8 reserved;
+	__le16 activity_id;
+#define ICE_AQC_ACT_ID_DNL 0x1129
+	__le32 reserved1;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+struct ice_aqc_dnl_equa_param {
+	__le16 data_in;
+#define ICE_AQC_RX_EQU_SHIFT 8
+#define ICE_AQC_RX_EQU_PRE2 (0x10 << ICE_AQC_RX_EQU_SHIFT)
+#define ICE_AQC_RX_EQU_PRE1 (0x11 << ICE_AQC_RX_EQU_SHIFT)
+#define ICE_AQC_RX_EQU_POST1 (0x12 << ICE_AQC_RX_EQU_SHIFT)
+#define ICE_AQC_RX_EQU_BFLF (0x13 << ICE_AQC_RX_EQU_SHIFT)
+#define ICE_AQC_RX_EQU_BFHF (0x14 << ICE_AQC_RX_EQU_SHIFT)
+#define ICE_AQC_RX_EQU_DRATE (0x15 << ICE_AQC_RX_EQU_SHIFT)
+#define ICE_AQC_TX_EQU_PRE1 0x0
+#define ICE_AQC_TX_EQU_PRE3 0x3
+#define ICE_AQC_TX_EQU_ATTEN 0x4
+#define ICE_AQC_TX_EQU_POST1 0x8
+#define ICE_AQC_TX_EQU_PRE2 0xC
+	__le16 op_code_serdes_sel;
+#define ICE_AQC_OP_CODE_SHIFT 4
+#define ICE_AQC_OP_CODE_RX_EQU (0x9 << ICE_AQC_OP_CODE_SHIFT)
+#define ICE_AQC_OP_CODE_TX_EQU (0x10 << ICE_AQC_OP_CODE_SHIFT)
+	__le32 reserved[3];
+};
+
+struct ice_aqc_dnl_equa_respon {
+	/* Equalization value can be negative */
+	int val;
+	__le32 reserved[3];
+};
+
+/* DNL call command/response buffer (indirect 0x0682) */
+struct ice_aqc_dnl_call {
+	union {
+		struct ice_aqc_dnl_equa_param txrx_equa_reqs;
+		__le32 stores[4];
+		struct ice_aqc_dnl_equa_respon txrx_equa_resp;
+	} sto;
+};
+
 struct ice_aqc_link_topo_params {
 	u8 lport_num;
 	u8 lport_num_valid;
@@ -2563,6 +2612,7 @@ struct ice_aq_desc {
 		struct ice_aqc_get_link_status get_link_status;
 		struct ice_aqc_event_lan_overflow lan_overflow;
 		struct ice_aqc_get_link_topo get_link_topo;
+		struct ice_aqc_dnl_call_command dnl_call;
 		struct ice_aqc_i2c read_write_i2c;
 		struct ice_aqc_read_i2c_resp read_i2c_resp;
 		struct ice_aqc_get_set_tx_topo get_set_tx_topo;
@@ -2687,6 +2737,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_set_phy_rec_clk_out			= 0x0630,
 	ice_aqc_opc_get_phy_rec_clk_out			= 0x0631,
 	ice_aqc_opc_get_sensor_reading			= 0x0632,
+	ice_aqc_opc_dnl_call                            = 0x0682,
 	ice_aqc_opc_get_link_topo			= 0x06E0,
 	ice_aqc_opc_read_i2c				= 0x06E2,
 	ice_aqc_opc_write_i2c				= 0x06E3,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 6430829ce98b..4f2e0832e237 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3299,6 +3299,43 @@ int ice_update_link_info(struct ice_port_info *pi)
 	return status;
 }
 
+/**
+ * ice_aq_get_phy_equalization - function to read serdes equaliser
+ * value from firmware using admin queue command.
+ * @hw: pointer to the HW struct
+ * @data_in: represents the serdes equalization parameter requested
+ * @op_code: represents the serdes number and flag to represent tx or rx
+ * @serdes_num: represents the serdes number
+ * @output: pointer to the caller-supplied buffer to return serdes equaliser
+ *
+ * Return: non-zero status on error and 0 on success.
+ */
+int ice_aq_get_phy_equalization(struct ice_hw *hw, u16 data_in, u16 op_code,
+				u8 serdes_num, int *output)
+{
+	struct ice_aqc_dnl_call_command *cmd;
+	struct ice_aqc_dnl_call buf = {};
+	struct ice_aq_desc desc;
+	int err;
+
+	buf.sto.txrx_equa_reqs.data_in = cpu_to_le16(data_in);
+	buf.sto.txrx_equa_reqs.op_code_serdes_sel =
+		cpu_to_le16(op_code | (serdes_num & 0xF));
+	cmd = &desc.params.dnl_call;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_dnl_call);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_BUF |
+				  ICE_AQ_FLAG_RD |
+				  ICE_AQ_FLAG_SI);
+	desc.datalen = cpu_to_le16(sizeof(struct ice_aqc_dnl_call));
+	cmd->activity_id = cpu_to_le16(ICE_AQC_ACT_ID_DNL);
+
+	err = ice_aq_send_cmd(hw, &desc, &buf, sizeof(struct ice_aqc_dnl_call),
+			      NULL);
+	*output = err ? 0 : buf.sto.txrx_equa_resp.val;
+
+	return err;
+}
+
 #define FEC_REG_PORT(port) {	\
 	FEC_CORR_LOW_REG_PORT##port,		\
 	FEC_CORR_HIGH_REG_PORT##port,	\
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 6b888efce593..f4cff37e895a 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -142,6 +142,8 @@ int
 ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 			      struct ice_port_info *pi);
 bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps);
+int ice_aq_get_phy_equalization(struct ice_hw *hw, u16 data_in, u16 op_code,
+				u8 serdes_num, int *output);
 int
 ice_aq_get_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
 		     enum ice_fec_stats_types fec_type, u32 *output);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 962a7666827d..8ba2b4e43049 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -463,7 +463,8 @@ ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 
 static int ice_get_regs_len(struct net_device __always_unused *netdev)
 {
-	return sizeof(ice_regs_dump_list);
+	return (sizeof(ice_regs_dump_list) +
+		sizeof(struct ice_regdump_to_ethtool));
 }
 
 /**
@@ -681,6 +682,140 @@ static int ice_get_port_topology(struct ice_hw *hw, u8 lport,
 	return 0;
 }
 
+/**
+ * ice_get_tx_rx_equa - read serdes tx rx equaliser param
+ * @hw: pointer to the HW struct
+ * @serdes_num: represents the serdes number
+ * @ptr: structure to read all serdes parameter for given serdes
+ *
+ * Return: all serdes equalization parameter supported per serdes number
+ */
+static int ice_get_tx_rx_equa(struct ice_hw *hw, u8 serdes_num,
+			      struct ice_serdes_equalization_to_ethtool *ptr)
+{
+	int err;
+
+	err = ice_aq_get_phy_equalization(hw, ICE_AQC_TX_EQU_PRE1,
+					  ICE_AQC_OP_CODE_TX_EQU, serdes_num,
+					  &ptr->tx_equalization_pre1);
+	if (err)
+		return err;
+
+	err = ice_aq_get_phy_equalization(hw, ICE_AQC_TX_EQU_PRE3,
+					  ICE_AQC_OP_CODE_TX_EQU, serdes_num,
+					  &ptr->tx_equalization_pre3);
+	if (err)
+		return err;
+
+	err = ice_aq_get_phy_equalization(hw, ICE_AQC_TX_EQU_ATTEN,
+					  ICE_AQC_OP_CODE_TX_EQU, serdes_num,
+					  &ptr->tx_equalization_atten);
+	if (err)
+		return err;
+
+	err = ice_aq_get_phy_equalization(hw, ICE_AQC_TX_EQU_POST1,
+					  ICE_AQC_OP_CODE_TX_EQU, serdes_num,
+					  &ptr->tx_equalization_post1);
+	if (err)
+		return err;
+
+	err = ice_aq_get_phy_equalization(hw, ICE_AQC_TX_EQU_PRE2,
+					  ICE_AQC_OP_CODE_TX_EQU, serdes_num,
+					  &ptr->tx_equalization_pre2);
+	if (err)
+		return err;
+
+	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_PRE2,
+					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
+					  &ptr->rx_equalization_pre2);
+	if (err)
+		return err;
+
+	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_PRE1,
+					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
+					  &ptr->rx_equalization_pre1);
+	if (err)
+		return err;
+
+	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_POST1,
+					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
+					  &ptr->rx_equalization_post1);
+	if (err)
+		return err;
+
+	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_BFLF,
+					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
+					  &ptr->rx_equalization_bflf);
+	if (err)
+		return err;
+
+	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_BFHF,
+					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
+					  &ptr->rx_equalization_bfhf);
+	if (err)
+		return err;
+
+	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_DRATE,
+					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
+					  &ptr->rx_equalization_drate);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+/**
+ * ice_get_extended_regs - returns FEC correctable, uncorrectable stats per
+ *                         pcsquad, pcsport
+ * @netdev: pointer to net device structure
+ * @p: output buffer to fill requested register dump
+ *
+ * Return: 0 on success, negative on failure.
+ */
+static int ice_get_extended_regs(struct net_device *netdev, void *p)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_regdump_to_ethtool *ice_prv_regs_buf;
+	struct ice_port_topology port_topology = {};
+	struct ice_port_info *pi;
+	struct ice_pf *pf;
+	struct ice_hw *hw;
+	unsigned int i;
+	int err;
+
+	pf = np->vsi->back;
+	hw = &pf->hw;
+	pi = np->vsi->port_info;
+
+	if (!hw || !pi)
+		return -EINVAL;
+
+	/* Serdes parameters are not supported if not the PF VSI */
+	if (np->vsi->type != ICE_VSI_PF)
+		return -EINVAL;
+
+	err = ice_get_port_topology(hw, pi->lport, &port_topology);
+	if (err)
+		return -EINVAL;
+	if (port_topology.serdes_lane_count > 4)
+		return -EINVAL;
+
+	ice_prv_regs_buf = p;
+
+	/* Get serdes equalization parameter for available serdes */
+	for (i = 0; i < port_topology.serdes_lane_count; i++) {
+		u8 serdes_num = 0;
+
+		serdes_num = port_topology.primary_serdes_lane + i;
+		err = ice_get_tx_rx_equa(hw, serdes_num,
+					 &ice_prv_regs_buf->equalization[i]);
+		if (err)
+			return -EINVAL;
+	}
+
+	return 0;
+}
+
 static void
 ice_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
 {
@@ -690,10 +825,12 @@ ice_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
 	u32 *regs_buf = (u32 *)p;
 	unsigned int i;
 
-	regs->version = 1;
+	regs->version = 2;
 
 	for (i = 0; i < ARRAY_SIZE(ice_regs_dump_list); ++i)
 		regs_buf[i] = rd32(hw, ice_regs_dump_list[i]);
+
+	ice_get_extended_regs(netdev, (void *)&regs_buf[i]);
 }
 
 static u32 ice_get_msglevel(struct net_device *netdev)
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
index ffc8ad180e61..9acccae38625 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.h
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
@@ -9,6 +9,25 @@ struct ice_phy_type_to_ethtool {
 	u8 link_mode;
 };
 
+struct ice_serdes_equalization_to_ethtool {
+	int rx_equalization_pre2;
+	int rx_equalization_pre1;
+	int rx_equalization_post1;
+	int rx_equalization_bflf;
+	int rx_equalization_bfhf;
+	int rx_equalization_drate;
+	int tx_equalization_pre1;
+	int tx_equalization_pre3;
+	int tx_equalization_atten;
+	int tx_equalization_post1;
+	int tx_equalization_pre2;
+};
+
+struct ice_regdump_to_ethtool {
+	/* A multilane port can have max 4 serdes */
+	struct ice_serdes_equalization_to_ethtool equalization[4];
+};
+
 /* Port topology from lport i.e.
  * serdes mapping, pcsquad, macport, cage etc...
  */
-- 
2.44.0

