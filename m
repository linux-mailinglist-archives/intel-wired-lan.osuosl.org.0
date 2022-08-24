Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2D859F904
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Aug 2022 14:07:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E77C260E85;
	Wed, 24 Aug 2022 12:07:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E77C260E85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661342867;
	bh=kHRsxzjOOhXuCl5yK3092LLAsE2T33TuhcsGIRPFJr8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6g3+WI0C4MhH4QY5+XOiy2LMmoIHv8SVfEtr72U3VQzCSJS9XGZd60MHUq5ju5wIU
	 EbWf/gtuMgjA/KSFI9g8ZQJVHVFE8yQg4ODlY1ktRlcLn09Vypldkzm7uB3cawn7Uz
	 Zu2d9ATNbPoBTUXZcSGxEJKH40e6906u5cfpvDc/48Cvcgmt7i+WMLwXeFyE7SZAcm
	 djDXU5zQjJx0FnlpY1Db2rKq0sD2qK37TgaLQb5Qtyrj8ndGMAEcr044gcxDmE6ny1
	 +yB0nWmbIXpTpLrRHzdql95FG4G002460oRDPmgdcN2kF0uB6boSWQMRo2FVK+cX8k
	 hjGiNQr/kBZZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SolDI1X5hd7T; Wed, 24 Aug 2022 12:07:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB53E60E67;
	Wed, 24 Aug 2022 12:07:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB53E60E67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8DFE11BF29A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 12:07:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6725581B71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 12:07:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6725581B71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nb_nztHLu0O4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Aug 2022 12:07:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B62F80C67
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B62F80C67
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 12:07:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="320004514"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="320004514"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 05:07:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="678021265"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2022 05:07:35 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Aug 2022 14:07:27 +0200
Message-Id: <20220824120728.1384453-2-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220824120728.1384453-1-anatolii.gerasymenko@intel.com>
References: <20220824120728.1384453-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661342857; x=1692878857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QWd9UtJgEbNZRWDYB8sLNbPu2nAzVQ+Qyxcuf3y/JqM=;
 b=M/d6DrmlStcM4Y9FYVQllrpgVVqo8uwrX6S1f+zigvhaKGXH8mPMpv+i
 DGLNADRbEjvJIdD2nw8d+TDYWHpqq0qTOUqqDUZZ7B34k0+sbq7PwubBV
 qklrpzhFD5pSGgXvOFKTjHusPccUHi+bK4feCwFm7MirI7Q7tS0piGwEb
 lEbZoxBqvgwoUGrx9oQaCriifptLJq+jKiQ4h56nLVFwmlyxpQG8GOR42
 Hv648LrY//MLtDBrAJBtkNjUkp6pimQUJbDcl9+NppQHqaO6DXflbeSKT
 No+6egreMepUz1gg49aF5gL1CC4BWsfCBrZOxFpLR+IX349uUx6lE6Acm
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M/d6Drml
Subject: [Intel-wired-lan] [PATCH net-next v4 1/2] ice: Add 'Execute Pending
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
Co-developed-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Co-developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
v4: Fix incorrect defines for DCBx IEEE and CEE modes
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h    | 18 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_common.c    | 13 +++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h    |  1 +
 drivers/net/ethernet/intel/ice/ice_dcb.c       |  3 +++
 4 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 9939238573a4..f6734c919b9c 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1603,14 +1603,24 @@ struct ice_aqc_lldp_get_mib {
 #define ICE_AQ_LLDP_TX_ACTIVE			0
 #define ICE_AQ_LLDP_TX_SUSPENDED		1
 #define ICE_AQ_LLDP_TX_FLUSHED			3
+/* DCBX mode */
+#define ICE_AQ_LLDP_DCBX_M			GENMASK(7, 6)
+#define ICE_AQ_LLDP_DCBX_NA			0
+#define ICE_AQ_LLDP_DCBX_CEE			1
+#define ICE_AQ_LLDP_DCBX_IEEE			2
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
