Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7014F88C563
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 15:40:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 158E34082C;
	Tue, 26 Mar 2024 14:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o2JeA7chz9e4; Tue, 26 Mar 2024 14:40:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBF8040800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711464037;
	bh=N51vn6lcRmLcDWZiUxvMSfs105PR2U0e/fyJ/R71ehk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lGrdsGgi4rFRn4axgN9PdK6RGdRdwRNJYRBlAFZ73VijhdDfCWtZhykKlyxowz1H+
	 jKyMiz/8seLWbaBJEsta2ZhaYUXOwxJMGZd6yZdW0xLyBrf9cGRyt21fPqagMtE66G
	 nNdpLhnQ3uZQ/JqAnoLALU+8v9EReES+DVVL/lH45IRBpZ77EequextkRT9CJOmqju
	 FG0kw4nOhfvYE8yeZu4K+0q6jaotMFKPyuKnTADyNXY/t3We6+QA1D5wDAuBVmarMn
	 1L9aDBKN4cJ862/RqebK1hwD2Hg7sYQ85Rrx8cn4aUTSDTDaiUy4MzFOok+qyP1V/E
	 mGjXA9RRHC4fw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBF8040800;
	Tue, 26 Mar 2024 14:40:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 665541BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DA18414EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:40:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4MeK17Ty7eXb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 14:40:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3675D40463
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3675D40463
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3675D40463
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:40:34 +0000 (UTC)
X-CSE-ConnectionGUID: EYUZsapaQLiX34argYewlQ==
X-CSE-MsgGUID: 87RUWRcpSoG+wd8FVFmmPA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="10296832"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="10296832"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 07:40:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16412437"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 26 Mar 2024 07:40:13 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E99BB284C3;
 Tue, 26 Mar 2024 14:40:10 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 10:30:40 -0400
Message-Id: <20240326143042.9240-5-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240326143042.9240-1-mateusz.polchlopek@intel.com>
References: <20240326143042.9240-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711464034; x=1743000034;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RVdStZvVQZ1u25sL9rKmq/CnGRZibYuzRRGovLRa7cs=;
 b=CmYWpIa/fQhL3BXG0z1TVxBzChR+5UnvPBfkCG8fDiFRzfuZ8cNA4AWr
 AaIQAKJacdamehkYc8dg/j6pJzrW9WhLegibTehP150Purk1tnU3LWcBV
 5AQqJ6VKKT9CQG72R0eSU+CHttakwItTFGZaUmZfYUDIlJeMVqZ7Z9wep
 Rz2Ol1zW3++7WL0K+PjIXxFisUcpC66vVFFflRZ1YpeSpYzHW0lyoz0UT
 S8+CI0UziMaie+I8Uo2Knu4DBalX/EyYscoea/EWZrfIqR9OHPN+q0DDH
 sDmPWjVXAZ1dPEZKoZgksZRbVXwblfpxb4OEeiWc+q54R7nWCjF6nzsAy
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CmYWpIa/
Subject: [Intel-wired-lan] [PATCH net-next v8 4/6] ice: Enable switching
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
Cc: andrew@lunn.ch, jiri@resnulli.us, michal.wilczynski@intel.com,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com, kuba@kernel.org
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
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 102 ++++++++++++++++++----
 1 file changed, 83 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3dea0d4c767c..f3309a81a26b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4417,11 +4417,11 @@ static char *ice_get_opt_fw_name(struct ice_pf *pf)
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
 
@@ -4430,29 +4430,91 @@ static void ice_request_fw(struct ice_pf *pf)
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
+	}
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
+	u8 *buf_copy;
+	int err;
+
+	dev = ice_pf_to_dev(pf);
+	/* ice_cfg_tx_topo buf argument is not a constant,
+	 * so we have to make a copy
+	 */
+	buf_copy = kmemdup(firmware->data, firmware->size, GFP_KERNEL);
+
+	err = ice_cfg_tx_topo(hw, buf_copy, firmware->size);
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
+	if (err) {
+		dev_err(dev, "Fail during requesting FW: %d\n", err);
+		return err;
 	}
 
-dflt_pkg_load:
-	err = request_firmware(&firmware, ICE_DDP_PKG_FILE, dev);
+	err = ice_init_tx_topology(hw, firmware);
 	if (err) {
-		dev_err(dev, "The DDP package file was not found or could not be read. Entering Safe Mode\n");
-		return;
+		dev_err(dev, "Fail during initialization of Tx topology: %d\n",
+			err);
+		release_firmware(firmware);
+		return err;
 	}
 
-	/* request for firmware was successful. Download to device */
+	/* Download firmware to device */
 	ice_load_pkg(firmware, pf);
 	release_firmware(firmware);
+
+	return 0;
 }
 
 /**
@@ -4625,9 +4687,11 @@ int ice_init_dev(struct ice_pf *pf)
 
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

