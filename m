Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C22E502852
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 12:31:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F18784193;
	Fri, 15 Apr 2022 10:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UwQD7ZTZL5lq; Fri, 15 Apr 2022 10:31:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B60D84163;
	Fri, 15 Apr 2022 10:31:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 696C71BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 10:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65CA740952
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 10:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZVBTTfAj3DiY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 10:31:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B397540239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 10:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650018707; x=1681554707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JQp/i7+yxHn3vriSbzs2g3fsFtMPk4IFj//K0465vI4=;
 b=G8ojoBntznsZC0os/cxC+hevFhX0saIWmJrwa5cu5Ana4KBiFTNP94Bd
 tKcUPiJiU9zKTMgBXgXWpo+pmUaoJaYjy0EBsrTb/kB4QnLwr+YtzGEen
 hM38KskLVu3bKu1V7PKK5AgvB9TQfRw/6gxnEcIVv6BCKcOUJ3XemzMn7
 O7+760tX4VIcQy2uBQ/cYh+J08enH+Ms1j16H28BvDdc4dgbWolDA7RAk
 Mb3E137LJLc9L107F2bmcquY2tuNhuWdXKiRDdHn5IzMzSpxMo1mcJ4pI
 k7AfvgC7OOuZQcjeo/iuWYXK/niG0tktOY5fgsYi9mjkY9+6YHolYCtpp w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="245020475"
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="245020475"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 03:31:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="527833609"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga006.jf.intel.com with ESMTP; 15 Apr 2022 03:31:46 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Apr 2022 12:31:38 +0200
Message-Id: <20220415103139.794790-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220415103139.794790-1-karol.kolacinski@intel.com>
References: <20220415103139.794790-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Subject: [Intel-wired-lan] [PATCH intel-next 2/3] ice: add i2c write command
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

Add the possibility to write to connected i2c devices. FW may reject
the write if the device is not on allowlist.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  7 +--
 drivers/net/ethernet/intel/ice/ice_common.c   | 45 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  4 ++
 3 files changed, 52 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index b25e27c4d887..bedc19f12cbd 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1401,7 +1401,7 @@ struct ice_aqc_get_link_topo {
 	u8 rsvd[9];
 };
 
-/* Read I2C (direct, 0x06E2) */
+/* Read/Write I2C (direct, 0x06E2/0x06E3) */
 struct ice_aqc_i2c {
 	struct ice_aqc_link_topo_addr topo_addr;
 	__le16 i2c_addr;
@@ -1411,7 +1411,7 @@ struct ice_aqc_i2c {
 
 	u8 rsvd;
 	__le16 i2c_bus_addr;
-	u8 rsvd2[4];
+	u8 i2c_data[4]; /* Used only by write command, reserved in read. */
 };
 
 /* Read I2C Response (direct, 0x06E2) */
@@ -2130,7 +2130,7 @@ struct ice_aq_desc {
 		struct ice_aqc_get_link_status get_link_status;
 		struct ice_aqc_event_lan_overflow lan_overflow;
 		struct ice_aqc_get_link_topo get_link_topo;
-		struct ice_aqc_i2c read_i2c;
+		struct ice_aqc_i2c read_write_i2c;
 		struct ice_aqc_read_i2c_resp read_i2c_resp;
 	} params;
 };
@@ -2247,6 +2247,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_set_mac_lb				= 0x0620,
 	ice_aqc_opc_get_link_topo			= 0x06E0,
 	ice_aqc_opc_read_i2c				= 0x06E2,
+	ice_aqc_opc_write_i2c				= 0x06E3,
 	ice_aqc_opc_set_port_id_led			= 0x06E9,
 	ice_aqc_opc_set_gpio				= 0x06EC,
 	ice_aqc_opc_get_gpio				= 0x06ED,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9619bdb9e49a..85dd30f99814 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4823,7 +4823,7 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_read_i2c);
-	cmd = &desc.params.read_i2c;
+	cmd = &desc.params.read_write_i2c;
 
 	if (!data)
 		return -EINVAL;
@@ -4850,6 +4850,49 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
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
+ */
+int
+ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
+		 u16 bus_addr, __le16 addr, u8 params, u8 *data,
+		 struct ice_sq_cd *cd)
+{
+	struct ice_aq_desc desc = { 0 };
+	struct ice_aqc_i2c *cmd;
+	u8 i, data_size;
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
+	for (i = 0; i < data_size; i++) {
+		cmd->i2c_data[i] = *data;
+		data++;
+	}
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+}
+
 /**
  * ice_aq_set_driver_param - Set driver parameter to share via firmware
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 872ea7d2332d..61b7c60db689 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -214,5 +214,9 @@ int
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
