Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DCAD1BDF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 00:40:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C40C883B8;
	Wed,  9 Oct 2019 22:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ufZpaXy-xZW; Wed,  9 Oct 2019 22:40:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 414BD884C9;
	Wed,  9 Oct 2019 22:40:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 57F881BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4CB0E883D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IX8L0cC0RWDh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 22:40:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 492308835E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 15:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="197052251"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga003.jf.intel.com with ESMTP; 09 Oct 2019 15:40:00 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2019 07:09:40 -0700
Message-Id: <20191009140953.14087-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
References: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S31 02/15] ice: add ethtool -m support for
 reading i2c eeprom modules
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

From: Scott W Taylor <scott.w.taylor@intel.com>

Implement ethtool -m support to read eeprom data from SFP/QSFP modules.

Signed-off-by: Scott W Taylor <scott.w.taylor@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  29 ++++
 drivers/net/ethernet/intel/ice/ice_common.c   |  46 ++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   4 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 147 ++++++++++++++++++
 4 files changed, 226 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 73c189a794bb..cfdd72fbd0da 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1148,6 +1148,33 @@ struct ice_aqc_set_port_id_led {
 	u8 rsvd[13];
 };
 
+/* Read/Write SFF EEPROM command (indirect 0x06EE) */
+struct ice_aqc_sff_eeprom {
+	u8 lport_num;
+	u8 lport_num_valid;
+#define ICE_AQC_SFF_PORT_NUM_VALID	BIT(0)
+	__le16 i2c_bus_addr;
+#define ICE_AQC_SFF_I2CBUS_7BIT_M	0x7F
+#define ICE_AQC_SFF_I2CBUS_10BIT_M	0x3FF
+#define ICE_AQC_SFF_I2CBUS_TYPE_M	BIT(10)
+#define ICE_AQC_SFF_I2CBUS_TYPE_7BIT	0
+#define ICE_AQC_SFF_I2CBUS_TYPE_10BIT	ICE_AQC_SFF_I2CBUS_TYPE_M
+#define ICE_AQC_SFF_SET_EEPROM_PAGE_S	11
+#define ICE_AQC_SFF_SET_EEPROM_PAGE_M	(0x3 << ICE_AQC_SFF_SET_EEPROM_PAGE_S)
+#define ICE_AQC_SFF_NO_PAGE_CHANGE	0
+#define ICE_AQC_SFF_SET_23_ON_MISMATCH	1
+#define ICE_AQC_SFF_SET_22_ON_MISMATCH	2
+#define ICE_AQC_SFF_IS_WRITE		BIT(15)
+	__le16 i2c_mem_addr;
+	__le16 eeprom_page;
+#define  ICE_AQC_SFF_EEPROM_BANK_S 0
+#define  ICE_AQC_SFF_EEPROM_BANK_M (0xFF << ICE_AQC_SFF_EEPROM_BANK_S)
+#define  ICE_AQC_SFF_EEPROM_PAGE_S 8
+#define  ICE_AQC_SFF_EEPROM_PAGE_M (0xFF << ICE_AQC_SFF_EEPROM_PAGE_S)
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
 /* NVM Read command (indirect 0x0701)
  * NVM Erase commands (direct 0x0702)
  * NVM Update commands (indirect 0x0703)
@@ -1651,6 +1678,7 @@ struct ice_aq_desc {
 		struct ice_aqc_get_phy_caps get_phy;
 		struct ice_aqc_set_phy_cfg set_phy;
 		struct ice_aqc_restart_an restart_an;
+		struct ice_aqc_sff_eeprom read_write_sff_param;
 		struct ice_aqc_set_port_id_led set_port_id_led;
 		struct ice_aqc_get_sw_cfg get_sw_conf;
 		struct ice_aqc_sw_rules sw_rules;
@@ -1776,6 +1804,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_set_event_mask			= 0x0613,
 	ice_aqc_opc_set_mac_lb				= 0x0620,
 	ice_aqc_opc_set_port_id_led			= 0x06E9,
+	ice_aqc_opc_sff_eeprom				= 0x06EE,
 
 	/* NVM commands */
 	ice_aqc_opc_nvm_read				= 0x0701,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index b96118c43765..eb99ca4099ca 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2560,6 +2560,52 @@ ice_aq_set_port_id_led(struct ice_port_info *pi, bool is_orig_mode,
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
 
+/**
+ * ice_aq_sff_eeprom
+ * @hw: pointer to the HW struct
+ * @lport: bits [7:0] = logical port, bit [8] = logical port valid
+ * @bus_addr: I2C bus address of the eeprom (typically 0xA0, 0=topo default)
+ * @mem_addr: I2C offset. lower 8 bits for address, 8 upper bits zero padding.
+ * @page: QSFP page
+ * @set_page: set or ignore the page
+ * @data: pointer to data buffer to be read/written to the I2C device.
+ * @length: 1-16 for read, 1 for write.
+ * @write: 0 read, 1 for write.
+ * @cd: pointer to command details structure or NULL
+ *
+ * Read/Write SFF EEPROM (0x06EE)
+ */
+enum ice_status
+ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
+		  u16 mem_addr, u8 page, u8 set_page, u8 *data, u8 length,
+		  bool write, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_sff_eeprom *cmd;
+	struct ice_aq_desc desc;
+	enum ice_status status;
+
+	if (!data || (mem_addr & 0xff00))
+		return ICE_ERR_PARAM;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_sff_eeprom);
+	cmd = &desc.params.read_write_sff_param;
+	desc.flags = cpu_to_le16(ICE_AQ_FLAG_RD | ICE_AQ_FLAG_BUF);
+	cmd->lport_num = (u8)(lport & 0xff);
+	cmd->lport_num_valid = (u8)((lport >> 8) & 0x01);
+	cmd->i2c_bus_addr = cpu_to_le16(((bus_addr >> 1) &
+					 ICE_AQC_SFF_I2CBUS_7BIT_M) |
+					((set_page <<
+					  ICE_AQC_SFF_SET_EEPROM_PAGE_S) &
+					 ICE_AQC_SFF_SET_EEPROM_PAGE_M));
+	cmd->i2c_mem_addr = cpu_to_le16(mem_addr & 0xff);
+	cmd->eeprom_page = cpu_to_le16((u16)page << ICE_AQC_SFF_EEPROM_PAGE_S);
+	if (write)
+		cmd->i2c_bus_addr |= cpu_to_le16(ICE_AQC_SFF_IS_WRITE);
+
+	status = ice_aq_send_cmd(hw, &desc, data, length, cd);
+	return status;
+}
+
 /**
  * __ice_aq_get_set_rss_lut
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index c066f4000582..c469d0db5ddc 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -115,6 +115,10 @@ ice_aq_set_mac_loopback(struct ice_hw *hw, bool ena_lpbk, struct ice_sq_cd *cd);
 enum ice_status
 ice_aq_set_port_id_led(struct ice_port_info *pi, bool is_orig_mode,
 		       struct ice_sq_cd *cd);
+enum ice_status
+ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
+		  u16 mem_addr, u8 page, u8 set_page, u8 *data, u8 length,
+		  bool write, struct ice_sq_cd *cd);
 
 enum ice_status
 ice_cfg_vsi_rdma(struct ice_port_info *pi, u16 vsi_handle, u8 tc_bitmap,
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index c270fbbc25bb..48d13e305d9e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3540,6 +3540,151 @@ ice_set_per_q_coalesce(struct net_device *netdev, u32 q_num,
 	return __ice_set_coalesce(netdev, ec, q_num);
 }
 
+#define ICE_I2C_EEPROM_DEV_ADDR		0xA0
+#define ICE_I2C_EEPROM_DEV_ADDR2	0xA2
+#define ICE_MODULE_TYPE_SFP		0x03
+#define ICE_MODULE_TYPE_QSFP_PLUS	0x0D
+#define ICE_MODULE_TYPE_QSFP28		0x11
+#define ICE_MODULE_SFF_ADDR_MODE	0x04
+#define ICE_MODULE_SFF_DIAG_CAPAB	0x40
+#define ICE_MODULE_REVISION_ADDR	0x01
+#define ICE_MODULE_SFF_8472_COMP	0x5E
+#define ICE_MODULE_SFF_8472_SWAP	0x5C
+#define ICE_MODULE_QSFP_MAX_LEN		640
+
+/**
+ * ice_get_module_info - get SFF module type and revision information
+ * @netdev: network interface device structure
+ * @modinfo: module EEPROM size and layout information structure
+ */
+static int
+ice_get_module_info(struct net_device *netdev,
+		    struct ethtool_modinfo *modinfo)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	enum ice_status status;
+	u8 sff8472_comp = 0;
+	u8 sff8472_swap = 0;
+	u8 sff8636_rev = 0;
+	u8 value = 0;
+
+	status = ice_aq_sff_eeprom(hw, 0, ICE_I2C_EEPROM_DEV_ADDR, 0x00, 0x00,
+				   0, &value, 1, 0, NULL);
+	if (status)
+		return -EIO;
+
+	switch (value) {
+	case ICE_MODULE_TYPE_SFP:
+		status = ice_aq_sff_eeprom(hw, 0, ICE_I2C_EEPROM_DEV_ADDR,
+					   ICE_MODULE_SFF_8472_COMP, 0x00, 0,
+					   &sff8472_comp, 1, 0, NULL);
+		if (status)
+			return -EIO;
+		status = ice_aq_sff_eeprom(hw, 0, ICE_I2C_EEPROM_DEV_ADDR,
+					   ICE_MODULE_SFF_8472_SWAP, 0x00, 0,
+					   &sff8472_swap, 1, 0, NULL);
+		if (status)
+			return -EIO;
+
+		if (sff8472_swap & ICE_MODULE_SFF_ADDR_MODE) {
+			modinfo->type = ETH_MODULE_SFF_8079;
+			modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
+		} else if (sff8472_comp &&
+			   (sff8472_swap & ICE_MODULE_SFF_DIAG_CAPAB)) {
+			modinfo->type = ETH_MODULE_SFF_8472;
+			modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
+		} else {
+			modinfo->type = ETH_MODULE_SFF_8079;
+			modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
+		}
+		break;
+	case ICE_MODULE_TYPE_QSFP_PLUS:
+	case ICE_MODULE_TYPE_QSFP28:
+		status = ice_aq_sff_eeprom(hw, 0, ICE_I2C_EEPROM_DEV_ADDR,
+					   ICE_MODULE_REVISION_ADDR, 0x00, 0,
+					   &sff8636_rev, 1, 0, NULL);
+		if (status)
+			return -EIO;
+		/* Check revision compliance */
+		if (sff8636_rev > 0x02) {
+			/* Module is SFF-8636 compliant */
+			modinfo->type = ETH_MODULE_SFF_8636;
+			modinfo->eeprom_len = ICE_MODULE_QSFP_MAX_LEN;
+		} else {
+			modinfo->type = ETH_MODULE_SFF_8436;
+			modinfo->eeprom_len = ICE_MODULE_QSFP_MAX_LEN;
+		}
+		break;
+	default:
+		netdev_warn(netdev,
+			    "SFF Module Type not recognized.\n");
+		return -EINVAL;
+	}
+	return 0;
+}
+
+/**
+ * ice_get_module_eeprom - fill buffer with SFF EEPROM contents
+ * @netdev: network interface device structure
+ * @ee: EEPROM dump request structure
+ * @data: buffer to be filled with EEPROM contents
+ */
+static int
+ice_get_module_eeprom(struct net_device *netdev,
+		      struct ethtool_eeprom *ee, u8 *data)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	u8 addr = ICE_I2C_EEPROM_DEV_ADDR;
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	enum ice_status status;
+	bool is_sfp = false;
+	u16 offset = 0;
+	u8 value = 0;
+	u8 page = 0;
+	int i;
+
+	status = ice_aq_sff_eeprom(hw, 0, addr, offset, page, 0,
+				   &value, 1, 0, NULL);
+	if (status)
+		return -EIO;
+
+	if (!ee || !ee->len || !data)
+		return -EINVAL;
+
+	if (value == ICE_MODULE_TYPE_SFP)
+		is_sfp = true;
+
+	for (i = 0; i < ee->len; i++) {
+		offset = i + ee->offset;
+
+		/* Check if we need to access the other memory page */
+		if (is_sfp) {
+			if (offset >= ETH_MODULE_SFF_8079_LEN) {
+				offset -= ETH_MODULE_SFF_8079_LEN;
+				addr = ICE_I2C_EEPROM_DEV_ADDR2;
+			}
+		} else {
+			while (offset >= ETH_MODULE_SFF_8436_LEN) {
+				/* Compute memory page number and offset. */
+				offset -= ETH_MODULE_SFF_8436_LEN / 2;
+				page++;
+			}
+		}
+
+		status = ice_aq_sff_eeprom(hw, 0, addr, offset, page, !is_sfp,
+					   &value, 1, 0, NULL);
+		if (status)
+			value = 0;
+		data[i] = value;
+	}
+	return 0;
+}
+
 static const struct ethtool_ops ice_ethtool_ops = {
 	.get_link_ksettings	= ice_get_link_ksettings,
 	.set_link_ksettings	= ice_set_link_ksettings,
@@ -3576,6 +3721,8 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_per_queue_coalesce = ice_set_per_q_coalesce,
 	.get_fecparam		= ice_get_fecparam,
 	.set_fecparam		= ice_set_fecparam,
+	.get_module_info	= ice_get_module_info,
+	.get_module_eeprom	= ice_get_module_eeprom,
 };
 
 static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
