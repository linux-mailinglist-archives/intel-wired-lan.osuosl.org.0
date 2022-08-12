Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC1A590FFB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 13:24:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD894418C0;
	Fri, 12 Aug 2022 11:24:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD894418C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660303479;
	bh=DqVIcsN0/TzSrvmw9hI4d2wPRzVTsoG2i0bJvkzrKio=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sVQko3QSbrvlafntQbzYo9l3IUMACVlmtJiCG0tGMGvnGIAqcb7F7qIvpsWN+fl+C
	 c1bq5E9baTqw1prRAQz3DEH6vEfS4dR7piE35MUOGSrDhXYDJeHp4HwC7V55FjUqdA
	 tRwEjIpN78xU6NIhDxeGmNLGj4N9AzRV+a++9kV5vvbsPm/xr4nQFiI7Mm12PPjcYl
	 RJGw0TlHsQTKUfUq3eknhsPF7vugs80iBkm25pahhdnNWcEmVOH1+I4/g/1+rIXglv
	 sBzCAsWy6c1b8hRnJNazELNdY+sbdVnchh9iKgJ0kKnntuMySIuLM0F5bf8esK4VIT
	 HtI7Pd8urLHHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KGCRl2dJh9Oo; Fri, 12 Aug 2022 11:24:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 282514189B;
	Fri, 12 Aug 2022 11:24:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 282514189B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 557FB1BF287
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 11:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 305E481457
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 11:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 305E481457
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pyQCUXBajw74 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 11:24:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F93582451
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F93582451
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 11:24:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="291576429"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="291576429"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 04:24:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="665788643"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga008.fm.intel.com with ESMTP; 12 Aug 2022 04:24:26 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Aug 2022 13:24:20 +0200
Message-Id: <20220812112422.1083684-2-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220812112422.1083684-1-anatolii.gerasymenko@intel.com>
References: <20220812112422.1083684-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660303468; x=1691839468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p0WZmmNFaaE3MZ3AT4+oBfd2crtSDFy0iGA+te7PQFw=;
 b=hxHtDi5uZK5MhDXjtb22ub7Z8rUMggVKzeXJwKNZ+VrQogIWetDgjd3y
 nDgV96tm50rtCQaWMmoKgs/U3V4977xxnMnBVmff+bYdX53GsqWbnb2wW
 WVhaN2vYV7ndRY9ut7nm/kG2IlkJOSVZi4UETDfsL0SwJB0aoI3e6VwDJ
 Wxmcv89YwlJj6owXSl9IctTSwMvuGjbI2kqg49cJ0+qYN5Z/i1ThsMRb2
 4cChdN+Koa1K7SfyfiYaqhX1D2ld0kxSYwr5+7OB6yayMPbtmbx1vkcUd
 6hLKU9WVp7b7+RlwYZAD0K4YRlFQfhFNwrqmDv+z0yzmkGvLgA9aYH/ny
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hxHtDi5u
Subject: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: Add 'Execute Pending
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
