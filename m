Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CE21C6434
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 May 2020 00:55:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6886287789;
	Tue,  5 May 2020 22:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k4VipvB8dNQ0; Tue,  5 May 2020 22:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFE5C8789A;
	Tue,  5 May 2020 22:55:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4883B1BF479
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 22:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4232B869EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 22:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HQfoZcfDQRxc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2020 22:55:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B43387789
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 22:55:41 +0000 (UTC)
IronPort-SDR: GLor9loKdjVAMihWDE6d9B9L7U4KLETyxQAT55vKmEeNqRIoBAgCxcjVB13LdO6fhZ/Tslp2R2
 LeFuZcGXerqQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 15:55:40 -0700
IronPort-SDR: lG7nkmaHhl0JuAas84aYiQHl1LEATlA3U0cAFVTj1U5A9zymMmSX/OLxgch8K5GXudQUPupOrw
 QN7I3kdFCWJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,357,1583222400"; d="scan'208";a="295994766"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga008.jf.intel.com with ESMTP; 05 May 2020 15:55:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  5 May 2020 15:55:37 -0700
Message-Id: <20200505225537.3318391-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: report netlist version in
 .info_get
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The flash memory for the ice hardware contains a block of information
used for link management called the Netlist module.

As this essentially represents another section of firmware, add its
version information to the output of the driver's .info_get handler.

This includes both a version and the first few bytes of a hash of the
module contents.

  fw.netlist -> the version information extracted from the netlist module
  fw.netlist.build-> first 4 bytes of the hash of the contents, similar
                     to fw.mgmt.build

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 Documentation/networking/devlink/ice.rst      | 11 +++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 27 ++++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 23 +++++
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 86 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_type.h     | 11 +++
 5 files changed, 158 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 5b58fc4e1268..b7c1c3602b1c 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -69,6 +69,17 @@ The ``ice`` driver reports the following versions
       - The version of the DDP package that is active in the device. Note
         that both the name (as reported by ``fw.app.name``) and version are
         required to uniquely identify the package.
+    * - ``fw.netlist``
+      - running
+      - 1.1.2000-6.7.0
+      - The version of the netlist module. This module defines the device's
+        Ethernet capabilities and default settings, and is used by the
+        management firmware as part of managing link and device
+        connectivity.
+    * - ``fw.netlist.build``
+      - running
+      - 0xee16ced7
+      - The first 4 bytes of the hash of the netlist module contents.
 
 Regions
 =======
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index a1066c4bf40d..214c8f1c699f 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1265,6 +1265,33 @@ struct ice_aqc_nvm_checksum {
 	u8 rsvd2[12];
 };
 
+/* The result of netlist NVM read comes in a TLV format. The actual data
+ * (netlist header) starts from word offset 1 (byte 2). The FW strips
+ * out the type field from the TLV header so all the netlist fields
+ * should adjust their offset value by 1 word (2 bytes) in order to map
+ * their correct location.
+ */
+#define ICE_AQC_NVM_LINK_TOPO_NETLIST_MOD_ID		0x11B
+#define ICE_AQC_NVM_LINK_TOPO_NETLIST_LEN_OFFSET	1
+#define ICE_AQC_NVM_LINK_TOPO_NETLIST_LEN		2 /* In bytes */
+#define ICE_AQC_NVM_NETLIST_NODE_COUNT_OFFSET		2
+#define ICE_AQC_NVM_NETLIST_NODE_COUNT_LEN		2 /* In bytes */
+#define ICE_AQC_NVM_NETLIST_NODE_COUNT_M		ICE_M(0x3FF, 0)
+#define ICE_AQC_NVM_NETLIST_ID_BLK_START_OFFSET		5
+#define ICE_AQC_NVM_NETLIST_ID_BLK_LEN			0x30 /* In words */
+
+/* netlist ID block field offsets (word offsets) */
+#define ICE_AQC_NVM_NETLIST_ID_BLK_MAJOR_VER_LOW	2
+#define ICE_AQC_NVM_NETLIST_ID_BLK_MAJOR_VER_HIGH	3
+#define ICE_AQC_NVM_NETLIST_ID_BLK_MINOR_VER_LOW	4
+#define ICE_AQC_NVM_NETLIST_ID_BLK_MINOR_VER_HIGH	5
+#define ICE_AQC_NVM_NETLIST_ID_BLK_TYPE_LOW		6
+#define ICE_AQC_NVM_NETLIST_ID_BLK_TYPE_HIGH		7
+#define ICE_AQC_NVM_NETLIST_ID_BLK_REV_LOW		8
+#define ICE_AQC_NVM_NETLIST_ID_BLK_REV_HIGH		9
+#define ICE_AQC_NVM_NETLIST_ID_BLK_SHA_HASH		0xA
+#define ICE_AQC_NVM_NETLIST_ID_BLK_CUST_VER		0x2F
+
 /**
  * Send to PF command (indirect 0x0801) ID is only used by PF
  *
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index c6833944b90a..a73d06e06b5d 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -105,6 +105,27 @@ static int ice_info_ddp_pkg_version(struct ice_pf *pf, char *buf, size_t len)
 	return 0;
 }
 
+static int ice_info_netlist_ver(struct ice_pf *pf, char *buf, size_t len)
+{
+	struct ice_netlist_ver_info *netlist = &pf->hw.netlist_ver;
+
+	/* The netlist version fields are BCD formatted */
+	snprintf(buf, len, "%x.%x.%x-%x.%x.%x", netlist->major, netlist->minor,
+		 netlist->type >> 16, netlist->type & 0xFFFF, netlist->rev,
+		 netlist->cust_ver);
+
+	return 0;
+}
+
+static int ice_info_netlist_build(struct ice_pf *pf, char *buf, size_t len)
+{
+	struct ice_netlist_ver_info *netlist = &pf->hw.netlist_ver;
+
+	snprintf(buf, len, "0x%08x", netlist->hash);
+
+	return 0;
+}
+
 #define fixed(key, getter) { ICE_VERSION_FIXED, key, getter }
 #define running(key, getter) { ICE_VERSION_RUNNING, key, getter }
 
@@ -128,6 +149,8 @@ static const struct ice_devlink_version {
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID, ice_info_eetrack),
 	running("fw.app.name", ice_info_ddp_pkg_name),
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_APP, ice_info_ddp_pkg_version),
+	running("fw.netlist", ice_info_netlist_ver),
+	running("fw.netlist.build", ice_info_netlist_build),
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 8beb675d676b..7c2a06892bbb 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -366,6 +366,87 @@ static enum ice_status ice_get_orom_ver_info(struct ice_hw *hw)
 	return 0;
 }
 
+/**
+ * ice_get_netlist_ver_info
+ * @hw: pointer to the HW struct
+ *
+ * Get the netlist version information
+ */
+static enum ice_status ice_get_netlist_ver_info(struct ice_hw *hw)
+{
+	struct ice_netlist_ver_info *ver = &hw->netlist_ver;
+	enum ice_status ret;
+	u32 id_blk_start;
+	__le16 raw_data;
+	u16 data, i;
+	u16 *buff;
+
+	ret = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (ret)
+		return ret;
+	buff = kcalloc(ICE_AQC_NVM_NETLIST_ID_BLK_LEN, sizeof(*buff),
+		       GFP_KERNEL);
+	if (!buff) {
+		ret = ICE_ERR_NO_MEMORY;
+		goto exit_no_mem;
+	}
+
+	/* read module length */
+	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_LINK_TOPO_NETLIST_MOD_ID,
+			      ICE_AQC_NVM_LINK_TOPO_NETLIST_LEN_OFFSET * 2,
+			      ICE_AQC_NVM_LINK_TOPO_NETLIST_LEN, &raw_data,
+			      false, false, NULL);
+	if (ret)
+		goto exit_error;
+
+	data = le16_to_cpu(raw_data);
+	/* exit if length is = 0 */
+	if (!data)
+		goto exit_error;
+
+	/* read node count */
+	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_LINK_TOPO_NETLIST_MOD_ID,
+			      ICE_AQC_NVM_NETLIST_NODE_COUNT_OFFSET * 2,
+			      ICE_AQC_NVM_NETLIST_NODE_COUNT_LEN, &raw_data,
+			      false, false, NULL);
+	if (ret)
+		goto exit_error;
+	data = le16_to_cpu(raw_data) & ICE_AQC_NVM_NETLIST_NODE_COUNT_M;
+
+	/* netlist ID block starts from offset 4 + node count * 2 */
+	id_blk_start = ICE_AQC_NVM_NETLIST_ID_BLK_START_OFFSET + data * 2;
+
+	/* read the entire netlist ID block */
+	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_LINK_TOPO_NETLIST_MOD_ID,
+			      id_blk_start * 2,
+			      ICE_AQC_NVM_NETLIST_ID_BLK_LEN * 2, buff, false,
+			      false, NULL);
+	if (ret)
+		goto exit_error;
+
+	for (i = 0; i < ICE_AQC_NVM_NETLIST_ID_BLK_LEN; i++)
+		buff[i] = le16_to_cpu(((__force __le16 *)buff)[i]);
+
+	ver->major = (buff[ICE_AQC_NVM_NETLIST_ID_BLK_MAJOR_VER_HIGH] << 16) |
+		buff[ICE_AQC_NVM_NETLIST_ID_BLK_MAJOR_VER_LOW];
+	ver->minor = (buff[ICE_AQC_NVM_NETLIST_ID_BLK_MINOR_VER_HIGH] << 16) |
+		buff[ICE_AQC_NVM_NETLIST_ID_BLK_MINOR_VER_LOW];
+	ver->type = (buff[ICE_AQC_NVM_NETLIST_ID_BLK_TYPE_HIGH] << 16) |
+		buff[ICE_AQC_NVM_NETLIST_ID_BLK_TYPE_LOW];
+	ver->rev = (buff[ICE_AQC_NVM_NETLIST_ID_BLK_REV_HIGH] << 16) |
+		buff[ICE_AQC_NVM_NETLIST_ID_BLK_REV_LOW];
+	ver->cust_ver = buff[ICE_AQC_NVM_NETLIST_ID_BLK_CUST_VER];
+	/* Read the left most 4 bytes of SHA */
+	ver->hash = buff[ICE_AQC_NVM_NETLIST_ID_BLK_SHA_HASH + 15] << 16 |
+		buff[ICE_AQC_NVM_NETLIST_ID_BLK_SHA_HASH + 14];
+
+exit_error:
+	kfree(buff);
+exit_no_mem:
+	ice_release_nvm(hw);
+	return ret;
+}
+
 /**
  * ice_discover_flash_size - Discover the available flash size.
  * @hw: pointer to the HW struct
@@ -515,6 +596,11 @@ enum ice_status ice_init_nvm(struct ice_hw *hw)
 		return status;
 	}
 
+	/* read the netlist version information */
+	status = ice_get_netlist_ver_info(hw);
+	if (status)
+		ice_debug(hw, ICE_DBG_INIT, "Failed to read netlist info.\n");
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 4ceb2db42999..40ac93d24e97 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -261,6 +261,16 @@ struct ice_nvm_info {
 
 #define ICE_NVM_VER_LEN	32
 
+/* netlist version information */
+struct ice_netlist_ver_info {
+	u32 major;			/* major high/low */
+	u32 minor;			/* minor high/low */
+	u32 type;			/* type high/low */
+	u32 rev;			/* revision high/low */
+	u32 hash;			/* SHA-1 hash word */
+	u16 cust_ver;			/* customer version */
+};
+
 /* Max number of port to queue branches w.r.t topology */
 #define ICE_MAX_TRAFFIC_CLASS 8
 #define ICE_TXSCHED_MAX_BRANCHES ICE_MAX_TRAFFIC_CLASS
@@ -510,6 +520,7 @@ struct ice_hw {
 	struct ice_nvm_info nvm;
 	struct ice_hw_dev_caps dev_caps;	/* device capabilities */
 	struct ice_hw_func_caps func_caps;	/* function capabilities */
+	struct ice_netlist_ver_info netlist_ver; /* netlist version info */
 
 	struct ice_switch_info *switch_info;	/* switch filter lists */
 
-- 
2.25.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
