Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB47AC25B
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Sep 2019 00:15:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3886887D7C;
	Fri,  6 Sep 2019 22:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2uJG3XGLfsUP; Fri,  6 Sep 2019 22:15:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D34F87D9E;
	Fri,  6 Sep 2019 22:15:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FCF61BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 22:15:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 110C92221F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 22:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EJkrmNZuiYqD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2019 22:15:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 37461203C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 22:15:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 15:15:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="190952362"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Sep 2019 15:15:43 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Sep 2019 06:46:21 -0700
Message-Id: <20190906134626.37344-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S29 v2 1/6] ice: send driver version to
 firmware
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

From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

The driver is required to send a version to the firmware
to indicate that the driver is up. If the driver doesn't
do this the firmware doesn't behave properly.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
v2:
- Modified error message when ice_send_version() fails
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 13 +++++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 37 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  3 ++
 drivers/net/ethernet/intel/ice/ice_main.c     | 36 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  8 ++++
 6 files changed, 97 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index b36e1cf0e461..4cdedcebb163 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -29,6 +29,7 @@
 #include <linux/sctp.h>
 #include <linux/ipv6.h>
 #include <linux/if_bridge.h>
+#include <linux/ctype.h>
 #include <linux/avf/virtchnl.h>
 #include <net/ipv6.h>
 #include "ice_devids.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 4da0cde9695b..9c9791788610 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -33,6 +33,17 @@ struct ice_aqc_get_ver {
 	u8 api_patch;
 };
 
+/* Send driver version (indirect 0x0002) */
+struct ice_aqc_driver_ver {
+	u8 major_ver;
+	u8 minor_ver;
+	u8 build_ver;
+	u8 subbuild_ver;
+	u8 reserved[4];
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
 /* Queue Shutdown (direct 0x0003) */
 struct ice_aqc_q_shutdown {
 	u8 driver_unloading;
@@ -1547,6 +1558,7 @@ struct ice_aq_desc {
 		u8 raw[16];
 		struct ice_aqc_generic generic;
 		struct ice_aqc_get_ver get_ver;
+		struct ice_aqc_driver_ver driver_ver;
 		struct ice_aqc_q_shutdown q_shutdown;
 		struct ice_aqc_req_res res_owner;
 		struct ice_aqc_manage_mac_read mac_read;
@@ -1618,6 +1630,7 @@ enum ice_aq_err {
 enum ice_adminq_opc {
 	/* AQ commands */
 	ice_aqc_opc_get_ver				= 0x0001,
+	ice_aqc_opc_driver_ver				= 0x0002,
 	ice_aqc_opc_q_shutdown				= 0x0003,
 
 	/* resource ownership */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8b2c46615834..db62cc748544 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1258,6 +1258,43 @@ enum ice_status ice_aq_get_fw_ver(struct ice_hw *hw, struct ice_sq_cd *cd)
 	return status;
 }
 
+/**
+ * ice_aq_send_driver_ver
+ * @hw: pointer to the HW struct
+ * @dv: driver's major, minor version
+ * @cd: pointer to command details structure or NULL
+ *
+ * Send the driver version (0x0002) to the firmware
+ */
+enum ice_status
+ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver *dv,
+		       struct ice_sq_cd *cd)
+{
+	struct ice_aqc_driver_ver *cmd;
+	struct ice_aq_desc desc;
+	u16 len;
+
+	cmd = &desc.params.driver_ver;
+
+	if (!dv)
+		return ICE_ERR_PARAM;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_driver_ver);
+
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	cmd->major_ver = dv->major_ver;
+	cmd->minor_ver = dv->minor_ver;
+	cmd->build_ver = dv->build_ver;
+	cmd->subbuild_ver = dv->subbuild_ver;
+
+	len = 0;
+	while (len < sizeof(dv->driver_string) &&
+	       isascii(dv->driver_string[len]) && dv->driver_string[len])
+		len++;
+
+	return ice_aq_send_cmd(hw, &desc, dv->driver_string, len, cd);
+}
+
 /**
  * ice_aq_q_shutdown
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index e376d1eadba4..e9d77370a17c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -71,6 +71,9 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc,
 		void *buf, u16 buf_size, struct ice_sq_cd *cd);
 enum ice_status ice_aq_get_fw_ver(struct ice_hw *hw, struct ice_sq_cd *cd);
 
+enum ice_status
+ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver *dv,
+		       struct ice_sq_cd *cd);
 enum ice_status
 ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		    struct ice_aqc_get_phy_caps_data *caps,
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f8be9ada2447..c0988b74f007 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -9,7 +9,13 @@
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 
-#define DRV_VERSION	"0.7.5-k"
+#define DRV_VERSION_MAJOR 0
+#define DRV_VERSION_MINOR 7
+#define DRV_VERSION_BUILD 5
+
+#define DRV_VERSION	__stringify(DRV_VERSION_MAJOR) "." \
+			__stringify(DRV_VERSION_MINOR) "." \
+			__stringify(DRV_VERSION_BUILD) "-k"
 #define DRV_SUMMARY	"Intel(R) Ethernet Connection E800 Series Linux Driver"
 const char ice_drv_ver[] = DRV_VERSION;
 static const char ice_driver_string[] = DRV_SUMMARY;
@@ -2459,6 +2465,25 @@ static void ice_verify_cacheline_size(struct ice_pf *pf)
 			 ICE_CACHE_LINE_BYTES);
 }
 
+/**
+ * ice_send_version - update firmware with driver version
+ * @pf: PF struct
+ *
+ * Returns ICE_SUCCESS on success, else error code
+ */
+static enum ice_status ice_send_version(struct ice_pf *pf)
+{
+	struct ice_driver_ver dv;
+
+	dv.major_ver = DRV_VERSION_MAJOR;
+	dv.minor_ver = DRV_VERSION_MINOR;
+	dv.build_ver = DRV_VERSION_BUILD;
+	dv.subbuild_ver = 0;
+	strscpy((char *)dv.driver_string, DRV_VERSION,
+		sizeof(dv.driver_string));
+	return ice_aq_send_driver_ver(&pf->hw, &dv, NULL);
+}
+
 /**
  * ice_probe - Device initialization routine
  * @pdev: PCI device information struct
@@ -2612,6 +2637,15 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	clear_bit(__ICE_SERVICE_DIS, pf->state);
 
+	/* tell the firmware we are up */
+	err = ice_send_version(pf);
+	if (err) {
+		dev_err(dev,
+			"probe failed sending driver version %s. error: %d\n",
+			ice_drv_ver, err);
+		goto err_alloc_sw_unroll;
+	}
+
 	/* since everything is good, start the service timer */
 	mod_timer(&pf->serv_tmr, round_jiffies(jiffies + pf->serv_tmr_period));
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 4501d50a7dcc..a2676003275a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -53,6 +53,14 @@ enum ice_aq_res_access_type {
 	ICE_RES_WRITE
 };
 
+struct ice_driver_ver {
+	u8 major_ver;
+	u8 minor_ver;
+	u8 build_ver;
+	u8 subbuild_ver;
+	u8 driver_string[32];
+};
+
 enum ice_fc_mode {
 	ICE_FC_NONE = 0,
 	ICE_FC_RX_PAUSE,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
