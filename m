Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE794AAF97
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2019 02:09:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F54986B11;
	Fri,  6 Sep 2019 00:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HIvu_s5KA__K; Fri,  6 Sep 2019 00:09:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB9A8866AD;
	Fri,  6 Sep 2019 00:09:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2935D1BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 00:09:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 30012838CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 00:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pyJXdzj9Lqmv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2019 00:09:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E528C84485
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 00:09:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 17:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,471,1559545200"; d="scan'208";a="195268844"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga002.jf.intel.com with ESMTP; 05 Sep 2019 17:09:14 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  5 Sep 2019 08:39:52 -0700
Message-Id: <20190905153956.53086-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190905153956.53086-1-anthony.l.nguyen@intel.com>
References: <20190905153956.53086-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S29 2/6] ice: Fix FW version formatting in
 dmesg
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

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

The FW build id is currently being displayed as an int which doesn't make
sense. Instead display FW build id as a hex value. Also add other useful
information to the output such as NVM version, api patch info, and FW
build hash.

Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 -
 drivers/net/ethernet/intel/ice/ice_common.c  | 23 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h  |  3 +++
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 25 --------------------
 drivers/net/ethernet/intel/ice/ice_lib.c     | 19 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h     |  2 ++
 drivers/net/ethernet/intel/ice/ice_main.c    |  7 +++---
 drivers/net/ethernet/intel/ice/ice_type.h    |  2 ++
 8 files changed, 53 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 4cdedcebb163..3a3e69a2bc5a 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -53,7 +53,6 @@ extern const char ice_drv_ver[];
 
 #define ICE_DFLT_TRAFFIC_CLASS	BIT(0)
 #define ICE_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
-#define ICE_ETHTOOL_FWVER_LEN	32
 #define ICE_AQ_LEN		64
 #define ICE_MBXSQ_LEN		64
 #define ICE_MBXRQ_LEN		512
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index db62cc748544..22d2a11ef41f 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -728,6 +728,29 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
 	}
 }
 
+/**
+ * ice_get_nvm_version - get cached NVM version data
+ * @hw: pointer to the hardware structure
+ * @oem_ver: 8 bit NVM version
+ * @oem_build: 16 bit NVM build number
+ * @oem_patch: 8 NVM patch number
+ * @ver_hi: high 16 bits of the NVM version
+ * @ver_lo: low 16 bits of the NVM version
+ */
+void
+ice_get_nvm_version(struct ice_hw *hw, u8 *oem_ver, u16 *oem_build,
+		    u8 *oem_patch, u8 *ver_hi, u8 *ver_lo)
+{
+	struct ice_nvm_info *nvm = &hw->nvm;
+
+	*oem_ver = (u8)((nvm->oem_ver & ICE_OEM_VER_MASK) >> ICE_OEM_VER_SHIFT);
+	*oem_patch = (u8)(nvm->oem_ver & ICE_OEM_VER_PATCH_MASK);
+	*oem_build = (u16)((nvm->oem_ver & ICE_OEM_VER_BUILD_MASK) >>
+			   ICE_OEM_VER_BUILD_SHIFT);
+	*ver_hi = (nvm->ver & ICE_NVM_VER_HI_MASK) >> ICE_NVM_VER_HI_SHIFT;
+	*ver_lo = (nvm->ver & ICE_NVM_VER_LO_MASK) >> ICE_NVM_VER_LO_SHIFT;
+}
+
 /**
  * ice_init_hw - main hardware initialization routine
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index e9d77370a17c..0525a051e05b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -133,6 +133,9 @@ ice_stat_update40(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 void
 ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 		  u64 *prev_stat, u64 *cur_stat);
+void
+ice_get_nvm_version(struct ice_hw *hw, u8 *oem_ver, u16 *oem_build,
+		    u8 *oem_patch, u8 *ver_hi, u8 *ver_lo);
 enum ice_status
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_get_elem *buf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d5db1426d484..a16b461b46bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -160,31 +160,6 @@ static const struct ice_priv_flag ice_gstrings_priv_flags[] = {
 
 #define ICE_PRIV_FLAG_ARRAY_SIZE	ARRAY_SIZE(ice_gstrings_priv_flags)
 
-/**
- * ice_nvm_version_str - format the NVM version strings
- * @hw: ptr to the hardware info
- */
-static char *ice_nvm_version_str(struct ice_hw *hw)
-{
-	static char buf[ICE_ETHTOOL_FWVER_LEN];
-	u8 ver, patch;
-	u32 full_ver;
-	u16 build;
-
-	full_ver = hw->nvm.oem_ver;
-	ver = (u8)((full_ver & ICE_OEM_VER_MASK) >> ICE_OEM_VER_SHIFT);
-	build = (u16)((full_ver & ICE_OEM_VER_BUILD_MASK) >>
-		      ICE_OEM_VER_BUILD_SHIFT);
-	patch = (u8)(full_ver & ICE_OEM_VER_PATCH_MASK);
-
-	snprintf(buf, sizeof(buf), "%x.%02x 0x%x %d.%d.%d",
-		 (hw->nvm.ver & ICE_NVM_VER_HI_MASK) >> ICE_NVM_VER_HI_SHIFT,
-		 (hw->nvm.ver & ICE_NVM_VER_LO_MASK) >> ICE_NVM_VER_LO_SHIFT,
-		 hw->nvm.eetrack, ver, build, patch);
-
-	return buf;
-}
-
 static void
 ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7cd8c5d13bcc..9680692bf27c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3275,6 +3275,25 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 }
 #endif /* CONFIG_DCB */
 
+/**
+ * ice_nvm_version_str - format the NVM version strings
+ * @hw: ptr to the hardware info
+ */
+char *ice_nvm_version_str(struct ice_hw *hw)
+{
+	u8 oem_ver, oem_patch, ver_hi, ver_lo;
+	static char buf[ICE_NVM_VER_LEN];
+	u16 oem_build;
+
+	ice_get_nvm_version(hw, &oem_ver, &oem_build, &oem_patch, &ver_hi,
+			    &ver_lo);
+
+	snprintf(buf, sizeof(buf), "%x.%02x 0x%x %d.%d.%d", ver_hi, ver_lo,
+		 hw->nvm.eetrack, oem_ver, oem_build, oem_patch);
+
+	return buf;
+}
+
 /**
  * ice_vsi_cfg_mac_fltr - Add or remove a MAC address filter for a VSI
  * @vsi: the VSI being configured MAC filter
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 7faf8db844f6..87f7f5422b46 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -120,6 +120,8 @@ int ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena);
 
 u32 ice_intrl_usec_to_reg(u8 intrl, u8 gran);
 
+char *ice_nvm_version_str(struct ice_hw *hw);
+
 enum ice_status
 ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ea55ec598dac..16c790de7bca 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2558,9 +2558,10 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_exit_unroll;
 	}
 
-	dev_info(dev, "firmware %d.%d.%05d api %d.%d\n",
-		 hw->fw_maj_ver, hw->fw_min_ver, hw->fw_build,
-		 hw->api_maj_ver, hw->api_min_ver);
+	dev_info(dev, "firmware %d.%d.%d api %d.%d.%d nvm %s build 0x%08x\n",
+		 hw->fw_maj_ver, hw->fw_min_ver, hw->fw_patch,
+		 hw->api_maj_ver, hw->api_min_ver, hw->api_patch,
+		 ice_nvm_version_str(hw), hw->fw_build);
 
 	err = ice_init_pf(pf);
 	if (err) {
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a2676003275a..7ec8a529b5cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -230,6 +230,8 @@ struct ice_nvm_info {
 	u8 blank_nvm_mode;        /* is NVM empty (no FW present) */
 };
 
+#define ICE_NVM_VER_LEN	32
+
 /* Max number of port to queue branches w.r.t topology */
 #define ICE_MAX_TRAFFIC_CLASS 8
 #define ICE_TXSCHED_MAX_BRANCHES ICE_MAX_TRAFFIC_CLASS
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
