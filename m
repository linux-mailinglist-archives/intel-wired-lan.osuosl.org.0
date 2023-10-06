Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 476C57BB5EB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 13:06:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C84FD4285D;
	Fri,  6 Oct 2023 11:06:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C84FD4285D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696590361;
	bh=kdKy3+L4BCWfh42Eof7CIiAeGn8pZEqRczVPidaKuM8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=doigb9XyMosTDPdd92iIgoPJS1XDy4tktqF8PCLgkTf19ceD/s1EiaLv9cKNXmZtY
	 hoQtpelTQFNwM1sI/qdfwlNsN0i8VI8SwFzS9KgcmxX5orpSwh7CnwnkMLY/oEuPMa
	 Db+3nF6a+0OmoFXGHLaGDgQlP8eri97HbKfE9x9D1HEbPVBkFURDwVVnenJ5Hyfm8x
	 UErtbV7pJJRTkhqsREUoPE+b8IiDV/20UT9SLocFWQYTSzAeOeFlbNON7Rljy7pQnb
	 zFvyYwJd1yKDWK8dO1ZZZgudJalAabZ+qzdXdc/KVDGYhxxSGwMJjLHknlMIjVWleT
	 FRy8KZ4EmRvEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agfd06wL9q4R; Fri,  6 Oct 2023 11:05:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DDBD418FE;
	Fri,  6 Oct 2023 11:05:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DDBD418FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36F6E1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:05:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE71E41E89
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:05:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE71E41E89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B4_lvVDLKg4c for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 11:05:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAF6B41A32
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:05:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAF6B41A32
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="2332740"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="2332740"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 04:05:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="895844417"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="895844417"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 06 Oct 2023 04:04:10 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 69DCF36345;
 Fri,  6 Oct 2023 12:05:41 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Oct 2023 07:02:10 -0400
Message-Id: <20231006110212.96305-4-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231006110212.96305-1-mateusz.polchlopek@intel.com>
References: <20231006110212.96305-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696590345; x=1728126345;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kNrEmOh5WmMmAaFdoGUjMhORFctkIYyOww9zGbLkdFI=;
 b=IrwNaIZaZ3AqBLbbXYRJTGBEtjizK0vA4rwKECoBzNIB7F6C4ZXEnDmA
 G5a7aTbYvi5Hl3wm1MSftws3FMEcxh4IGEvh9A/6X+jSbeuua8xY2yXLd
 5tFb4v5VFTfxu3cgI4qVTJox1n0qDQIx6XAmYVcVenBYFrHmvoV3M/8yp
 FwjouhcE6foVXNtjQRs9mkuLxI3UyE7uFzn3K8IiZkB9E4xnuAaEvhTP6
 JiLmp8Sz+CNEExorGmhU37XnJvFxIdKJt67jyqGrWQua1ZDQTLaM3T0sS
 YoOubyBWPv3b5j4CChVCVLxIWUulWHt+COIUG95Vyl8oD9LbaTWZNtiPT
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IrwNaIZa
Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/5] ice: Enable switching
 default Tx scheduler topology
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
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Michal Wilczynski <michal.wilczynski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Wilczynski <michal.wilczynski@intel.com>

Introduce support for Tx scheduler topology change, based on user
selection, from default 9-layer to 5-layer.
Change requires NVM (version 3.20 or newer) and DDP package (OS Package
1.3.30 or newer - available for over a year in linux-firmware, since
commit aed71f296637 in linux-firmware ("ice: Update package to 1.3.30.0"))
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/?id=aed71f296637

Enable 5-layer topology switch in init path of the driver. To accomplish
that upload of the DDP package needs to be delayed, until change in Tx
topology is finished. To trigger the Tx change user selection should be
changed in NVM using devlink. Then the platform should be rebooted.

Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c  |  2 +-
 drivers/net/ethernet/intel/ice/ice_ddp.h  |  2 +-
 drivers/net/ethernet/intel/ice/ice_main.c | 97 ++++++++++++++++++-----
 3 files changed, 80 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 95c7712b56b8..44591bcdb537 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1950,7 +1950,7 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
  * The function will apply the new Tx topology from the package buffer
  * if available.
  */
-int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
+int ice_cfg_tx_topo(struct ice_hw *hw, const u8 *buf, u32 len)
 {
 	u8 *current_topo, *new_topo = NULL;
 	struct ice_run_time_cfg_seg *seg;
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
index c00203df35da..b6f126e11dea 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
@@ -432,6 +432,6 @@ u16 ice_pkg_buf_get_active_sections(struct ice_buf_build *bld);
 void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
 			   u32 sect_type);
 
-int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len);
+int ice_cfg_tx_topo(struct ice_hw *hw, const u8 *buf, u32 len);
 
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3363c69d49da..ad3a1572a635 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4319,11 +4319,11 @@ static char *ice_get_opt_fw_name(struct ice_pf *pf)
 /**
  * ice_request_fw - Device initialization routine
  * @pf: pointer to the PF instance
+ * @firmware: double pointer to firmware struct
  */
-static void ice_request_fw(struct ice_pf *pf)
+static int ice_request_fw(struct ice_pf *pf, const struct firmware **firmware)
 {
 	char *opt_fw_filename = ice_get_opt_fw_name(pf);
-	const struct firmware *firmware = NULL;
 	struct device *dev = ice_pf_to_dev(pf);
 	int err = 0;
 
@@ -4332,29 +4332,86 @@ static void ice_request_fw(struct ice_pf *pf)
 	 * and warning messages for other errors.
 	 */
 	if (opt_fw_filename) {
-		err = firmware_request_nowarn(&firmware, opt_fw_filename, dev);
-		if (err) {
-			kfree(opt_fw_filename);
-			goto dflt_pkg_load;
-		}
-
-		/* request for firmware was successful. Download to device */
-		ice_load_pkg(firmware, pf);
+		err = firmware_request_nowarn(firmware, opt_fw_filename, dev);
 		kfree(opt_fw_filename);
-		release_firmware(firmware);
-		return;
+		if (!err)
+			return err;
 	}
+	err = request_firmware(firmware, ICE_DDP_PKG_FILE, dev);
+	if (err)
+		dev_err(dev, "The DDP package file was not found or could not be read. Entering Safe Mode\n");
+
+	return err;
+}
+
+/**
+ * ice_init_tx_topology - performs Tx topology initialization
+ * @hw: pointer to the hardware structure
+ * @firmware: pointer to firmware structure
+ */
+static int
+ice_init_tx_topology(struct ice_hw *hw, const struct firmware *firmware)
+{
+	u8 num_tx_sched_layers = hw->num_tx_sched_layers;
+	struct ice_pf *pf = hw->back;
+	struct device *dev;
+	int err;
+
+	dev = ice_pf_to_dev(pf);
 
-dflt_pkg_load:
-	err = request_firmware(&firmware, ICE_DDP_PKG_FILE, dev);
+	err = ice_cfg_tx_topo(hw, firmware->data, firmware->size);
+	if (!err) {
+		if (hw->num_tx_sched_layers > num_tx_sched_layers)
+			dev_info(dev, "Tx scheduling layers switching feature disabled\n");
+		else
+			dev_info(dev, "Tx scheduling layers switching feature enabled\n");
+		/* if there was a change in topology ice_cfg_tx_topo triggered
+		 * a CORER and we need to re-init hw
+		 */
+		ice_deinit_hw(hw);
+		err = ice_init_hw(hw);
+
+		return err;
+	} else if (err == -EIO) {
+		dev_info(dev, "DDP package does not support Tx scheduling layers switching feature - please update to the latest DDP package and try again\n");
+	}
+
+	return 0;
+}
+
+/**
+ * ice_init_ddp_config - DDP related configuration
+ * @hw: pointer to the hardware structure
+ * @pf: pointer to pf structure
+ *
+ * This function loads DDP file from the disk, then initializes Tx
+ * topology. At the end DDP package is loaded on the card.
+ */
+static int ice_init_ddp_config(struct ice_hw *hw, struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	const struct firmware *firmware = NULL;
+	int err;
+
+	err = ice_request_fw(pf, &firmware);
 	if (err) {
-		dev_err(dev, "The DDP package file was not found or could not be read. Entering Safe Mode\n");
-		return;
+		dev_err(dev, "Fail during requesting FW: %d\n", err);
+		return err;
 	}
 
-	/* request for firmware was successful. Download to device */
+	err = ice_init_tx_topology(hw, firmware);
+	if (err) {
+		dev_err(dev, "Fail during initialization of Tx topology: %d\n",
+			err);
+		release_firmware(firmware);
+		return err;
+	}
+
+	/* Download firmware to device */
 	ice_load_pkg(firmware, pf);
 	release_firmware(firmware);
+
+	return 0;
 }
 
 /**
@@ -4614,9 +4671,11 @@ static int ice_init_dev(struct ice_pf *pf)
 
 	ice_init_feature_support(pf);
 
-	ice_request_fw(pf);
+	err = ice_init_ddp_config(hw, pf);
+	if (err)
+		return err;
 
-	/* if ice_request_fw fails, ICE_FLAG_ADV_FEATURES bit won't be
+	/* if ice_init_ddp_config fails, ICE_FLAG_ADV_FEATURES bit won't be
 	 * set in pf->state, which will cause ice_is_safe_mode to return
 	 * true
 	 */
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
