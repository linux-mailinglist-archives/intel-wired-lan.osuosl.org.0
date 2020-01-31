Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF07114F45A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2020 23:12:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CBCF88398;
	Fri, 31 Jan 2020 22:12:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2wqhGOoAS-zz; Fri, 31 Jan 2020 22:12:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EB2B88431;
	Fri, 31 Jan 2020 22:12:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A72251BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A42FE87894
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hQPg+vnj444E for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2020 22:12:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 842708781D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 14:12:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,387,1574150400"; d="scan'208";a="310126636"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2020 14:12:02 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 31 Jan 2020 05:38:58 -0800
Message-Id: <20200131133905.42518-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200131133905.42518-1-anthony.l.nguyen@intel.com>
References: <20200131133905.42518-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S37 v2 08/15] ice: fix and consolidate
 logging of NVM/firmware version information
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

From: Bruce Allan <bruce.w.allan@intel.com>

Logging the firmware/NVM information during driver load is redundant since
that information is also available via ethtool.  Move the functionality
found in ice_nvm_version_str() directly into ice_get_drvinfo() and remove
calling the former and logging that info during driver probe.  This also
gets rid of a bug in ice_nvm_version_str() where it returns a pointer to
a buffer which is free'ed when that function exits.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 15 +++++++++++++--
 drivers/net/ethernet/intel/ice/ice_lib.c     | 19 -------------------
 drivers/net/ethernet/intel/ice/ice_lib.h     |  2 --
 drivers/net/ethernet/intel/ice/ice_main.c    |  5 -----
 4 files changed, 13 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 26eca4ce9e2c..7539fd8147de 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -166,13 +166,24 @@ static void
 ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
+	u8 oem_ver, oem_patch, nvm_ver_hi, nvm_ver_lo;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	u16 oem_build;
 
 	strlcpy(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));
 	strlcpy(drvinfo->version, ice_drv_ver, sizeof(drvinfo->version));
-	strlcpy(drvinfo->fw_version, ice_nvm_version_str(&pf->hw),
-		sizeof(drvinfo->fw_version));
+
+	/* Display NVM version (from which the firmware version can be
+	 * determined) which contains more pertinent information.
+	 */
+	ice_get_nvm_version(hw, &oem_ver, &oem_build, &oem_patch,
+			    &nvm_ver_hi, &nvm_ver_lo);
+	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
+		 "%x.%02x 0x%x %d.%d.%d", nvm_ver_hi, nvm_ver_lo,
+		 hw->nvm.eetrack, oem_ver, oem_build, oem_patch);
+
 	strlcpy(drvinfo->bus_info, pci_name(pf->pdev),
 		sizeof(drvinfo->bus_info));
 	drvinfo->n_priv_flags = ICE_PRIV_FLAG_ARRAY_SIZE;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 90efa0e718b4..37ff98da5ca8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2940,25 +2940,6 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 }
 #endif /* CONFIG_DCB */
 
-/**
- * ice_nvm_version_str - format the NVM version strings
- * @hw: ptr to the hardware info
- */
-char *ice_nvm_version_str(struct ice_hw *hw)
-{
-	u8 oem_ver, oem_patch, ver_hi, ver_lo;
-	static char buf[ICE_NVM_VER_LEN];
-	u16 oem_build;
-
-	ice_get_nvm_version(hw, &oem_ver, &oem_build, &oem_patch, &ver_hi,
-			    &ver_lo);
-
-	snprintf(buf, sizeof(buf), "%x.%02x 0x%x %d.%d.%d", ver_hi, ver_lo,
-		 hw->nvm.eetrack, oem_ver, oem_build, oem_patch);
-
-	return buf;
-}
-
 /**
  * ice_update_ring_stats - Update ring statistics
  * @ring: ring to update
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 85d07fedff93..002fdbdade4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -99,8 +99,6 @@ void ice_vsi_cfg_frame_size(struct ice_vsi *vsi);
 
 u32 ice_intrl_usec_to_reg(u8 intrl, u8 gran);
 
-char *ice_nvm_version_str(struct ice_hw *hw);
-
 enum ice_status
 ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 809e7bee8f62..f3ca72a19d03 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3270,11 +3270,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_exit_unroll;
 	}
 
-	dev_info(dev, "firmware %d.%d.%d api %d.%d.%d nvm %s build 0x%08x\n",
-		 hw->fw_maj_ver, hw->fw_min_ver, hw->fw_patch,
-		 hw->api_maj_ver, hw->api_min_ver, hw->api_patch,
-		 ice_nvm_version_str(hw), hw->fw_build);
-
 	ice_request_fw(pf);
 
 	/* if ice_request_fw fails, ICE_FLAG_ADV_FEATURES bit won't be
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
