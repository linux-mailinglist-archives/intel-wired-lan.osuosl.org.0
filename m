Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E16DF587AAE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 12:28:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A4DB60B04;
	Tue,  2 Aug 2022 10:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A4DB60B04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659436137;
	bh=DqVIcsN0/TzSrvmw9hI4d2wPRzVTsoG2i0bJvkzrKio=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=17lrJlZ5RzUH/J5UZtmTXUmJbj+uk9L8nNb/kjF4E424lqBxAzarRMxXChrXtFuXx
	 Zf1hfDmdlMiWFPJnOybe7KARi6p5m0CVi5L86fZgocLtgpyNrOJLTsEu4TO9VKLWQo
	 RGsTM685CuDXVBZNLuaHGYwkjdmNirOXZqz8Mek086WuG9AryzI4o+FZqpB4PJX3PF
	 4/ED6Qtm2U/9mVZhHB+vnofSGDORZKV3JZQBNjLz6EHnc9D/Kq42Hk/1jkoFyu98dc
	 KfYL6vI4LtTregJb9UsXCh9TgLF/Ndon5p3ynqGJNeb9b2bp9KX/slMKhON925tdK8
	 DCbDiDDLCODpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dBZcirVTr-DG; Tue,  2 Aug 2022 10:28:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDDA560B08;
	Tue,  2 Aug 2022 10:28:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDDA560B08
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B10101BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:28:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 97926402C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:28:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97926402C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gtMyKmGT8gnv for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 10:28:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C0B3402C2
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C0B3402C2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:28:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="290589537"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="290589537"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 03:28:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="635244140"
Received: from propan.igk.intel.com ([10.211.8.82])
 by orsmga001.jf.intel.com with ESMTP; 02 Aug 2022 03:28:48 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Aug 2022 12:26:16 +0200
Message-Id: <20220802102618.31303-2-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220802102618.31303-1-anatolii.gerasymenko@intel.com>
References: <20220802102618.31303-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659436130; x=1690972130;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p0WZmmNFaaE3MZ3AT4+oBfd2crtSDFy0iGA+te7PQFw=;
 b=VwkhkRN6gw24vQg6meJioLPn6o6x9pq/XRd0pZbTkHcanfiy6sNW/H2B
 tgdl2gP2lfCEelc5j3E+MNcRCMgBJhZ2twDjB1i7soJwpH0AqE9i8m1hd
 76RbFvGbrl9Eq/GsdweZiqBWxKpNGYkf2NpbOZ7W9R+ZRcZOiYj65/Rji
 Fi68L45ca8bjpz3R8scbZGxBS+dpqej2g4FuyZRCQLrOGDcTZjEIBnTBj
 3vUCzW9cGR1yT7MmRgMIaxXzLJq5MDA0Csq4SQnWvPurVSjDTmHijOEiz
 X77aPIsDEyU1WcTCIsUjYBgEGtkaXmh0BR6VM96WQaNkYgzDf/dEsCSvY
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VwkhkRN6
Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: Add 'Execute Pending
 LLDP MIB' Admin Queue command
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
Cc: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>,
 Karen Sornek <karen.sornek@intel.com>,
 Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>

In DCB Willing Mode (FW managed LLDP), when the link partner changes
configuration which requires fewer TCs, the TCs that are no longer
needed are suspended by EMP FW, removed, and never resumed. This occurs
before a MIB change event is indicated to SW. The permanent suspension and
removal of these TC nodes in the scheduler prevents RDMA from being able
to destroy QPs associated with this TC, requiring a CORE reset to recover.

A new DCBX configuration change flow is defined to allow SW driver and
other SW components (RDMA) to properly adjust to the configuration
changes before they are taking effect in HW. This flow includes a
two-way handshake between EMP FW<->LAN SW<->RDMA SW.

List of changes:
- Add 'Execute Pending LLDP MIB' AQC.
- Add 'Pending Event Enable' bit.
- Add additional logic to ignore Pending Event Enable' request
  while 'LLDP MIB Chnage' event is disabled.
- Add 'Execute Pending LLDP MIB' AQC sending function to FW,
  which is needed to take place MIB Event change.

Signed-off-by: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>
Co-developed-by: Karen Sornek <karen.sornek@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
Co-developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h    | 18 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_common.c    | 13 +++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h    |  1 +
 drivers/net/ethernet/intel/ice/ice_dcb.c       |  3 +++
 4 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 9939238573a4..506f24f9277a 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1603,14 +1603,24 @@ struct ice_aqc_lldp_get_mib {
 #define ICE_AQ_LLDP_TX_ACTIVE			0
 #define ICE_AQ_LLDP_TX_SUSPENDED		1
 #define ICE_AQ_LLDP_TX_FLUSHED			3
+/* DCBX mode */
+#define ICE_AQ_LLDP_DCBX_M			GENMASK(7, 6)
+#define ICE_AQ_LLDP_DCBX_NA			0
+#define ICE_AQ_LLDP_DCBX_IEEE			1
+#define ICE_AQ_LLDP_DCBX_CEE			2
+
+	u8 state;
+#define ICE_AQ_LLDP_MIB_CHANGE_STATE_M		BIT(0)
+#define ICE_AQ_LLDP_MIB_CHANGE_EXECUTED		0
+#define ICE_AQ_LLDP_MIB_CHANGE_PENDING		1
+
 /* The following bytes are reserved for the Get LLDP MIB command (0x0A00)
  * and in the LLDP MIB Change Event (0x0A01). They are valid for the
  * Get LLDP MIB (0x0A00) response only.
  */
-	u8 reserved1;
 	__le16 local_len;
 	__le16 remote_len;
-	u8 reserved2[2];
+	u8 reserved[2];
 	__le32 addr_high;
 	__le32 addr_low;
 };
@@ -1621,6 +1631,9 @@ struct ice_aqc_lldp_set_mib_change {
 	u8 command;
 #define ICE_AQ_LLDP_MIB_UPDATE_ENABLE		0x0
 #define ICE_AQ_LLDP_MIB_UPDATE_DIS		0x1
+#define ICE_AQ_LLDP_MIB_PENDING_M		BIT(1)
+#define ICE_AQ_LLDP_MIB_PENDING_DISABLE		0
+#define ICE_AQ_LLDP_MIB_PENDING_ENABLE		1
 	u8 reserved[15];
 };
 
@@ -2269,6 +2282,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_lldp_set_local_mib			= 0x0A08,
 	ice_aqc_opc_lldp_stop_start_specific_agent	= 0x0A09,
 	ice_aqc_opc_lldp_filter_ctrl			= 0x0A0A,
+	ice_aqc_opc_lldp_execute_pending_mib		= 0x0A0B,
 
 	/* RSS commands */
 	ice_aqc_opc_set_rss_key				= 0x0B02,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 27d0cbbd29da..30b428d27044 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5217,6 +5217,19 @@ ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add)
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 }
 
+/**
+ * ice_lldp_execute_pending_mib - execute LLDP pending MIB request
+ * @hw: pointer to HW struct
+ */
+int ice_lldp_execute_pending_mib(struct ice_hw *hw)
+{
+	struct ice_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_execute_pending_mib);
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+}
+
 /**
  * ice_fw_supports_report_dflt_cfg
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 61b7c60db689..1a8153edb751 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -210,6 +210,7 @@ ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw);
 int
 ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add);
+int ice_lldp_execute_pending_mib(struct ice_hw *hw);
 int
 ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 		u16 bus_addr, __le16 addr, u8 params, u8 *data,
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 0b146a0d4205..ca95f8753cee 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -73,6 +73,9 @@ ice_aq_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_update,
 
 	if (!ena_update)
 		cmd->command |= ICE_AQ_LLDP_MIB_UPDATE_DIS;
+	else
+		cmd->command |= FIELD_PREP(ICE_AQ_LLDP_MIB_PENDING_M,
+					   ICE_AQ_LLDP_MIB_PENDING_ENABLE);
 
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
