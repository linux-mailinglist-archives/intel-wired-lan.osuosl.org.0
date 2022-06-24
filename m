Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A8B559D28
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jun 2022 17:22:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41814848FA;
	Fri, 24 Jun 2022 15:22:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41814848FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656084136;
	bh=JZR/zaAd05zQZpjek/QM4keE2tD/dWPtElyBFB+OuYg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tsoMQC2z0ZroTE61yqVxwU7bjMSxVVcoRLiLOCgnAB+VweAlnijwVYPKBThOTepQr
	 TwHaKdPhIIrzzcFQXcXwp+LhMb6eRNqDJUMH3uM78IPL2K5qC+2NeYXqbLpMkatbHe
	 F3chdbY491hJxtxmS3h1WJNxcQ6V9NL1J+UEFgkxsPwOVbAEmYkMZVErIhgKJQ/1tN
	 1OkpSPV/S5G7//JDcbmo+CmykNX7gOUe7/qNHGKvDfEaNgghBSYbiCh9jOIJiiA/0z
	 wxcv0Croxx05K/6qtFIwtuwhtJuYK3cKsKxHKAlQuRq3CJNBnx4W5XEHC7ppcJsm4b
	 id00FJQTerTvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uFiOaAUt45KK; Fri, 24 Jun 2022 15:22:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20B2B8145E;
	Fri, 24 Jun 2022 15:22:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20B2B8145E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D68C01BF33A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 15:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AED844117F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 15:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AED844117F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M9UCG4Z7WxJZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jun 2022 15:22:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE59A4116E
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE59A4116E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 15:22:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="306486771"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="306486771"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:22:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="616001611"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga008.jf.intel.com with ESMTP; 24 Jun 2022 08:22:07 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Jun 2022 17:22:02 +0200
Message-Id: <20220624152203.294031-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656084128; x=1687620128;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wvwPDOs+el2zr6I2yn63O1M3q5lCt9v9H6yXrlj0Sa0=;
 b=ZjnOS5q0lSWf6whklIVi6dBmnSKylqMzgvT0nUXBj5+rUa3FiCZnU2gg
 3ce0LF6QGBopFWVhiI6szNWHECuRYGdT4qvu2f0mdSQ++/0nvVEzMIbJY
 q/Sd06N56wd3bQdyPG5B3q/RkRP/LF/EzUimT+zMo/wbmasSj00Ipvs8D
 abLh0zAVTF5BAziY62/yyThpZRHQ0housVhr9bOMaLqxFb45TtDwdZPIp
 TqnHKdtX/JFAgHG16Tc4Y6gIBpl9irjOE5pFveJEz5C1tvhkXudkHSfMV
 +q1R8BJnULVOJ8kZQSBYoLJP9j/dgeT5J63oCPLu+cimBa54e/GJV2Piw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZjnOS5q0
Subject: [Intel-wired-lan] [PATCH v2 intel-next 1/2] ice: add i2c write
 command
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add the possibility to write to connected i2c devices using the AQ
command. FW may reject the write if the device is not on allowlist.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  7 +--
 drivers/net/ethernet/intel/ice/ice_common.c   | 47 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  4 ++
 3 files changed, 54 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index c018f6ff8ee2..64cfdb7edaa8 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1396,7 +1396,7 @@ struct ice_aqc_get_link_topo {
 	u8 rsvd[9];
 };
 
-/* Read I2C (direct, 0x06E2) */
+/* Read/Write I2C (direct, 0x06E2/0x06E3) */
 struct ice_aqc_i2c {
 	struct ice_aqc_link_topo_addr topo_addr;
 	__le16 i2c_addr;
@@ -1406,7 +1406,7 @@ struct ice_aqc_i2c {
 
 	u8 rsvd;
 	__le16 i2c_bus_addr;
-	u8 rsvd2[4];
+	u8 i2c_data[4]; /* Used only by write command, reserved in read. */
 };
 
 /* Read I2C Response (direct, 0x06E2) */
@@ -2125,7 +2125,7 @@ struct ice_aq_desc {
 		struct ice_aqc_get_link_status get_link_status;
 		struct ice_aqc_event_lan_overflow lan_overflow;
 		struct ice_aqc_get_link_topo get_link_topo;
-		struct ice_aqc_i2c read_i2c;
+		struct ice_aqc_i2c read_write_i2c;
 		struct ice_aqc_read_i2c_resp read_i2c_resp;
 	} params;
 };
@@ -2242,6 +2242,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_set_mac_lb				= 0x0620,
 	ice_aqc_opc_get_link_topo			= 0x06E0,
 	ice_aqc_opc_read_i2c				= 0x06E2,
+	ice_aqc_opc_write_i2c				= 0x06E3,
 	ice_aqc_opc_set_port_id_led			= 0x06E9,
 	ice_aqc_opc_set_gpio				= 0x06EC,
 	ice_aqc_opc_get_gpio				= 0x06ED,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 237a2296ff96..05a4acfbdd1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4831,7 +4831,7 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_read_i2c);
-	cmd = &desc.params.read_i2c;
+	cmd = &desc.params.read_write_i2c;
 
 	if (!data)
 		return -EINVAL;
@@ -4858,6 +4858,51 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 	return status;
 }
 
+/**
+ * ice_aq_write_i2c
+ * @hw: pointer to the hw struct
+ * @topo_addr: topology address for a device to communicate with
+ * @bus_addr: 7-bit I2C bus address
+ * @addr: I2C memory address (I2C offset) with up to 16 bits
+ * @params: I2C parameters: bit [4] - I2C address type, bits [3:0] - data size to write (0-7 bytes)
+ * @data: pointer to data (0 to 4 bytes) to be written to the I2C device
+ * @cd: pointer to command details structure or NULL
+ *
+ * Write I2C (0x06E3)
+ *
+ * * Return:
+ * * 0             - Successful write to the i2c device
+ * * -EINVAL       - Data size greater than 4 bytes
+ * * -EIO          - FW error
+ */
+int
+ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
+		 u16 bus_addr, __le16 addr, u8 params, u8 *data,
+		 struct ice_sq_cd *cd)
+{
+	struct ice_aq_desc desc = { 0 };
+	struct ice_aqc_i2c *cmd;
+	u8 data_size;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_write_i2c);
+	cmd = &desc.params.read_write_i2c;
+
+	data_size = FIELD_GET(ICE_AQC_I2C_DATA_SIZE_M, params);
+
+	/* data_size limited to 4 */
+	if (data_size > 4)
+		return -EINVAL;
+
+	cmd->i2c_bus_addr = cpu_to_le16(bus_addr);
+	cmd->topo_addr = topo_addr;
+	cmd->i2c_params = params;
+	cmd->i2c_addr = addr;
+
+	memcpy(cmd->i2c_data, data, data_size);
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+}
+
 /**
  * ice_aq_set_driver_param - Set driver parameter to share via firmware
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 6a7764dd264c..a74df1d3a002 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -215,5 +215,9 @@ int
 ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 		u16 bus_addr, __le16 addr, u8 params, u8 *data,
 		struct ice_sq_cd *cd);
+int
+ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
+		 u16 bus_addr, __le16 addr, u8 params, u8 *data,
+		 struct ice_sq_cd *cd);
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
 #endif /* _ICE_COMMON_H_ */
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
