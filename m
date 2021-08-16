Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E95783EDABA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Aug 2021 18:18:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 841D6834F2;
	Mon, 16 Aug 2021 16:18:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EbvhUULwAzW7; Mon, 16 Aug 2021 16:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB695834F4;
	Mon, 16 Aug 2021 16:18:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A1931BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6565C60625
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ZdpW3saskAQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 16:17:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D9506079C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="214041227"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="214041227"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 09:17:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="487524452"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2021 09:17:53 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org
Date: Mon, 16 Aug 2021 18:07:16 +0200
Message-Id: <20210816160717.31285-7-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC net-next 6/7] ice: add SIOC{S|G}SYNCE
 interface usage to recover reference signal
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
Cc: cong.wang@bytedance.com, arnd@arndb.de, gustavoars@kernel.org,
 richardcochran@gmail.com, nikolay@nvidia.com, colin.king@canonical.com,
 kuba@kernel.org, shuah@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add new Admin Queue Command definitions for getting and setting
configuration of PHY recovered clock signal from Firmware.

Allow user to enable or disable propagation of PHY recovered clock
signal onto requested output pin with new IOCTLs: SIOCGSYNCE,
SIOCSSYNCE.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 31 ++++++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 64 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  6 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 83 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  8 ++
 6 files changed, 195 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index f0c5a1f4910b..103b036c3c3f 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1946,6 +1946,31 @@ struct ice_aqc_get_cgu_dpll_status {
 	__le16 node_handle;
 };
 
+/* Set PHY recovered clock output (direct 0x0630) */
+struct ice_aqc_set_phy_rec_clk_out {
+	u8 phy_output;
+	u8 port_num;
+	u8 flags;
+#define ICE_AQC_SET_PHY_REC_CLK_OUT_OUT_EN      BIT(0)
+#define ICE_AQC_SET_PHY_REC_CLK_OUT_CURR_PORT   0xFF
+	u8 rsvd;
+	__le32 freq;
+	u8 rsvd2[6];
+	__le16 node_handle;
+};
+
+/* Get PHY recovered clock output (direct 0x0631) */
+struct ice_aqc_get_phy_rec_clk_out {
+	u8 phy_output;
+	u8 port_num;
+	u8 flags;
+#define ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN      BIT(0)
+	u8 rsvd;
+	__le32 freq;
+	u8 rsvd2[6];
+	__le16 node_handle;
+};
+
 /* Driver Shared Parameters (direct, 0x0C90) */
 struct ice_aqc_driver_shared_params {
 	u8 set_or_get_op;
@@ -2051,6 +2076,8 @@ struct ice_aq_desc {
 		struct ice_aqc_get_clear_fw_log get_clear_fw_log;
 		struct ice_aqc_download_pkg download_pkg;
 		struct ice_aqc_get_cgu_dpll_status get_cgu_dpll_status;
+		struct ice_aqc_set_phy_rec_clk_out set_phy_rec_clk_out;
+		struct ice_aqc_get_phy_rec_clk_out get_phy_rec_clk_out;
 		struct ice_aqc_driver_shared_params drv_shared_params;
 		struct ice_aqc_set_mac_lb set_mac_lb;
 		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
@@ -2215,7 +2242,9 @@ enum ice_adminq_opc {
 	ice_aqc_opc_update_pkg				= 0x0C42,
 	ice_aqc_opc_get_pkg_info_list			= 0x0C43,
 
-	ice_aqc_opc_get_cgu_dpll_status                 = 0x0C66,
+	ice_aqc_opc_get_cgu_dpll_status			= 0x0C66,
+	ice_aqc_opc_set_phy_rec_clk_out			= 0x0630,
+	ice_aqc_opc_get_phy_rec_clk_out			= 0x0631,
 
 	ice_aqc_opc_driver_shared_params		= 0x0C90,
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 1935412941ef..985a4aabf55a 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4993,6 +4993,70 @@ ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add)
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 }
 
+/**
+ * ice_aq_set_phy_rec_clk_out - set RCLK phy out
+ * @hw: pointer to the HW struct
+ * @phy_output: PHY reference clock output pin
+ * @enable: GPIO state to be applied
+ * @freq: PHY output frequency
+ *
+ * Set CGU reference priority (0x0630)
+ * Return 0 on success or negative value on failure.
+ */
+enum ice_status
+ice_aq_set_phy_rec_clk_out(struct ice_hw *hw, u8 phy_output, bool enable,
+			   u32 *freq)
+{
+	struct ice_aqc_set_phy_rec_clk_out *cmd;
+	struct ice_aq_desc desc;
+	enum ice_status status;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_phy_rec_clk_out);
+	cmd = &desc.params.set_phy_rec_clk_out;
+	cmd->phy_output = phy_output;
+	cmd->port_num = ICE_AQC_SET_PHY_REC_CLK_OUT_CURR_PORT;
+	cmd->flags = enable & ICE_AQC_SET_PHY_REC_CLK_OUT_OUT_EN;
+	cmd->freq = cpu_to_le32(*freq);
+
+	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+	if (!status)
+		*freq = le32_to_cpu(cmd->freq);
+
+	return status;
+}
+
+/**
+ * ice_aq_get_phy_rec_clk_out
+ * @hw: pointer to the HW struct
+ * @phy_output: PHY reference clock output pin
+ * @port_num: Port number
+ * @flags: PHY flags
+ * @freq: PHY output frequency
+ *
+ * Get PHY recovered clock output (0x0631)
+ */
+enum ice_status
+ice_aq_get_phy_rec_clk_out(struct ice_hw *hw, u8 phy_output, u8 *port_num,
+			   u8 *flags, u32 *freq)
+{
+	struct ice_aqc_get_phy_rec_clk_out *cmd;
+	struct ice_aq_desc desc;
+	enum ice_status status;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_phy_rec_clk_out);
+	cmd = &desc.params.get_phy_rec_clk_out;
+	cmd->phy_output = phy_output;
+
+	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+	if (!status) {
+		*port_num = cmd->port_num;
+		*flags = cmd->flags;
+		*freq = le32_to_cpu(cmd->freq);
+	}
+
+	return status;
+}
+
 /**
  * ice_fw_supports_report_dflt_cfg
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index eb2e082c43cb..1c2e08377224 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -202,4 +202,10 @@ bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
 enum ice_status
 ice_aq_get_cgu_dpll_status(struct ice_hw *hw, u8 dpll_num, u8 *ref_state,
 			   u16 *dpll_state, u64 *phase_offset, u8 *eec_mode);
+enum ice_status
+ice_aq_set_phy_rec_clk_out(struct ice_hw *hw, u8 phy_output, bool enable,
+			   u32 *freq);
+enum ice_status
+ice_aq_get_phy_rec_clk_out(struct ice_hw *hw, u8 phy_output, u8 *port_num,
+			   u8 *flags, u32 *freq);
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 802a59345bfa..60ab4b80d919 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6675,6 +6675,10 @@ static int ice_eth_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
 		return ice_ptp_get_ts_config(pf, ifr);
 	case SIOCSHWTSTAMP:
 		return ice_ptp_set_ts_config(pf, ifr);
+	case SIOCGSYNCE:
+		return ice_ptp_get_ref_clk(pf, ifr);
+	case SIOCSSYNCE:
+		return ice_ptp_set_ref_clk(pf, ifr);
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d48200a838e1..23ab85dbbfc8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3,6 +3,7 @@
 
 #include "ice.h"
 #include "ice_lib.h"
+#include <linux/net_synce.h>
 
 #define E810_OUT_PROP_DELAY_NS 1
 
@@ -2205,3 +2206,85 @@ void ice_ptp_release(struct ice_pf *pf)
 
 	dev_info(ice_pf_to_dev(pf), "Removed PTP clock\n");
 }
+
+/**
+ * ice_ptp_get_ref_clk - get state of PHY recovered clock pin
+ * @pf:  pointer to pf structure
+ * @ifr: pointer to ioctl data
+ *
+ * Get state of the pin from Firmware and pass it to the user.
+ */
+int ice_ptp_get_ref_clk(struct ice_pf *pf, struct ifreq *ifr)
+{
+	u8 flags = 0, port_num = ICE_AQC_SET_PHY_REC_CLK_OUT_CURR_PORT;
+	struct synce_ref_clk_cfg ref_clk;
+	u32 freq = 0;
+	int ret;
+
+	if (copy_from_user(&ref_clk, ifr->ifr_data, sizeof(ref_clk)))
+		return -EFAULT;
+
+	if (ref_clk.pin_id > ICE_C827_RCLKB_PIN) {
+		ret = -EINVAL;
+		goto out;
+	}
+	ret = ice_aq_get_phy_rec_clk_out(&pf->hw, ref_clk.pin_id,
+					 &port_num, &flags, &freq);
+
+	if (ret) {
+		dev_warn(ice_pf_to_dev(pf),
+			 "Failed to read recover reference clock config on pin %u err %d aq_err %s\n",
+			 ref_clk.pin_id,
+			 ret, ice_aq_str(pf->hw.adminq.sq_last_status));
+		goto out;
+	}
+	ref_clk.enable = !!(flags & ICE_AQC_SET_PHY_REC_CLK_OUT_OUT_EN);
+	dev_dbg(ice_pf_to_dev(pf),
+		"recover reference clock on pin: %u is %s\n",
+		ref_clk.pin_id,
+		ref_clk.enable ? "enabled" : "disabled");
+	ret = copy_to_user(ifr->ifr_data, &ref_clk, sizeof(ref_clk));
+out:
+	return ret;
+}
+
+/**
+ * ice_ptp_set_ref_clk - set state of PHY recovered clock pin
+ * @pf:  pointer to pf structure
+ * @ifr: pointer to ioctl data
+ *
+ * Set state of the pin in the Firmware according to the user input.
+ */
+int ice_ptp_set_ref_clk(struct ice_pf *pf, struct ifreq *ifr)
+{
+	struct synce_ref_clk_cfg ref_clk;
+	u32 freq = 0;
+	int ret;
+
+	if (copy_from_user(&ref_clk, ifr->ifr_data, sizeof(ref_clk)))
+		return -EFAULT;
+
+	if (ref_clk.pin_id > ICE_C827_RCLKB_PIN) {
+		ret = -EINVAL;
+		goto out;
+	}
+	ret = ice_aq_set_phy_rec_clk_out(&pf->hw, ref_clk.pin_id,
+					 ref_clk.enable, &freq);
+
+	if (ret) {
+		dev_warn(ice_pf_to_dev(pf),
+			 "Failed to %s recover reference clock on pin %u err %d aq_err %s\n",
+			 ref_clk.enable ? "enable" : "disable",
+			 ref_clk.pin_id,
+			 ret, ice_aq_str(pf->hw.adminq.sq_last_status));
+		goto out;
+	}
+
+	dev_dbg(ice_pf_to_dev(pf),
+		"%s recover reference clock on pin: %u\n",
+		ref_clk.enable ? "Enabled" : " Disabled",
+		ref_clk.pin_id);
+	ret = copy_to_user(ifr->ifr_data, &ref_clk, sizeof(ref_clk));
+out:
+	return ret;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 49d7154e627c..75656eb3084a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -24,6 +24,12 @@ struct ice_perout_channel {
 	u64 start_time;
 };
 
+enum ice_phy_rclk_pins {
+	ICE_C827_RCLKA_PIN,		/* SCL pin */
+	ICE_C827_RCLKB_PIN,		/* SDA pin */
+	ICE_C827_RCLK_PINS_NUM		/* number of pins */
+};
+
 /* The ice hardware captures Tx hardware timestamps in the PHY. The timestamp
  * is stored in a buffer of registers. Depending on the specific hardware,
  * this buffer might be shared across multiple PHY ports.
@@ -223,4 +229,6 @@ static inline void ice_ptp_release(struct ice_pf *pf) { }
 static inline int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 { return 0; }
 #endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
+int ice_ptp_get_ref_clk(struct ice_pf *pf, struct ifreq *ifr);
+int ice_ptp_set_ref_clk(struct ice_pf *pf, struct ifreq *ifr);
 #endif /* _ICE_PTP_H_ */
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
