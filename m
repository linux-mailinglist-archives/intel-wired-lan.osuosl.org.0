Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 967C9557D2B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jun 2022 15:41:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 906B640395;
	Thu, 23 Jun 2022 13:41:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 906B640395
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655991674;
	bh=Pkc9y7NRkdNP0Wxkwcc2jV4W3V7nvDF50S07eoyExCw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xVlGc5kjwZe2I2AjX5z9gRcmxE7z49PLOMueY40ECRiLOFmGPN48PHggq8n75y9j/
	 upHTLGXNqNNPiUOaiFRqKPi6oGQAoUUyqqzltKc/MZCnK5JEsUtGiijSyFW5A/0NST
	 hCn0NZlRCHq23tkSqLEkOR8mmtFuIyHcih4WYcBLlzfbUH5M253QPzvP9DHpzWY0IF
	 WFz2mqIMQULfw3ecO8ISD30SooDOg/6rbM0dyFqq2+z8Yd1pBZXX53hRx8X3x9sV8r
	 L/pDFrn/jAQqmh7cnGbRn25ZDA7vtl26nAIJ9m2vh9Yo7ClTPmqoteb4CxE8W7OKNd
	 Fzupm6MGk+AlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hEXFHAPG06_R; Thu, 23 Jun 2022 13:41:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51AF6400FD;
	Thu, 23 Jun 2022 13:41:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51AF6400FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E6E91BF405
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 13:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 212A884720
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 13:41:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 212A884720
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Peso4zUfAWEF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jun 2022 13:41:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4561846FF
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4561846FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 13:41:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="279489177"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="279489177"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 06:41:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="691027892"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by fmsmga002.fm.intel.com with ESMTP; 23 Jun 2022 06:41:05 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 23 Jun 2022 15:41:01 +0200
Message-Id: <20220623134102.166331-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655991666; x=1687527666;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GElFWm0bl3xU117KiH01P8f4yYHRC86Q1539Bob5isY=;
 b=ccL7M39P4vD4CZSa1uTKaxZbipa8GuiO/NXaShAtVuXS2c473vCAbXJp
 lB7ue2CTRLgrcrEWbM4tCse/dkiLfU+njGYQZSv3FN2geSpWRBZcf3Gve
 UtXpuL600zcMZj8NqDtOUzGyTD4m+PSjgk/pugSKUGBVe1OkiqspRv7yO
 +3O7u1rmtJb/6Q+7QfPgHCG+ifdsg5OZrqhwe7qB7DQ2a6oE8fLsivy7w
 Uat+75nS4NxtTx51+SSWo1AcCtyfyuLyzPfL2lcsVQ7w14oc7vDUF3xsE
 8OPu+HgH8iwSbYbGxKvFfD6ymEgkmnOyarSaKmL9vC/1XjeiqsLrQeBes
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ccL7M39P
Subject: [Intel-wired-lan] [PATCH intel-next 1/2] ice: add i2c write command
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
 drivers/net/ethernet/intel/ice/ice_common.c   | 48 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  4 ++
 3 files changed, 55 insertions(+), 4 deletions(-)

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
index 237a2296ff96..7b0f5c63dbd4 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4831,7 +4831,7 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_read_i2c);
-	cmd = &desc.params.read_i2c;
+	cmd = &desc.params.read_write_i2c;
 
 	if (!data)
 		return -EINVAL;
@@ -4858,6 +4858,52 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
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
+	unsigned int i;
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
