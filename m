Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 643476C4B62
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 14:13:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A97440152;
	Wed, 22 Mar 2023 13:13:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A97440152
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679490782;
	bh=z2+m9Vhd7C3qzlbFaXrOsHG/W1Sy7L4ThwwJcCJ8GZU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oF0qTAV40B4eXYDKgCP56ROqMGwln5uS9AVoP0EW3HckpugYd0VstK5Ur15X5kXim
	 Ma3Va4a7PUIBB43XafnpLiugJEDUXkuknAemSAYWOUnp/j8iH59Fn2gp8vSZEEirSW
	 zz7Oh5ZYTE3BXThhm+AUigE2l0ZjmZyH8SI+udjbR7XyGGsQh0RPzJFJWDFKh5OEhU
	 aqtllCCPyY9DUyu4VDuWSJzzt+QE4iLNddC9HnsefmX+6GrYTFej92mg4eHk1CyStX
	 D6vGyvUNj6pdaUlrkuwrFL2cx1lrUqASon1bvmqFb8bDl7fU56mVcF2alHCEip7ntw
	 TZoiR4LK1wjIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oLxSSB6FkyhU; Wed, 22 Mar 2023 13:13:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C287D4010C;
	Wed, 22 Mar 2023 13:13:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C287D4010C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 608001BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A17041D63
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A17041D63
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id osAylOUd-ajB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 13:12:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 651B841B70
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 651B841B70
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340743714"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340743714"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 06:12:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="714394675"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="714394675"
Received: from hextor.igk.intel.com ([10.123.220.6])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 06:12:46 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Mar 2023 14:12:25 +0100
Message-Id: <20230322131227.244687-4-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230322131227.244687-1-michal.wilczynski@intel.com>
References: <20230322131227.244687-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679490768; x=1711026768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vAgBJ4Zt0UAui3UC49lam24iA000DqdHj7AT0BSjk50=;
 b=IXPr3orhsZ1FnfGwtDdtCV3ccYZgpaGaDt94wJ1yLLJj36djujpz1tyV
 on+pE4kFZJ2qRZAd8bMStC3Ihx2RQNkux6JbiFtN4cx0tbj1t1ztk97V+
 CirKH6Ou0zv3ixSM/b8Dsv8X3ecYPh2G/TRCW25oZm5hK6iOe5+EbMfdA
 1EkyQ8PixZQnPjIlhrc1SJCSSPyS/a5qZobWt4mg3eVBev69muJcZ5zNr
 3pa/PoJVgJgPEY77vvU/LlcHzNemPcuHd2Y68esqwavPzhOt07HP23RLi
 /k9lDnkXATBSdwnv+SyYTRnS82ROnL+lPEY3gW776r5UbLT5skHOtuekb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IXPr3orh
Subject: [Intel-wired-lan] [PATCH net-next v11 3/5] ice: Enable switching
 default tx scheduler topology
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

Introduce support for tx scheduler topology change, based on user
selection, from default 9-layer to 5-layer. In order for switch to be
successful there is a new NVM(version 3.20 or older) and DDP package(OS
Package 1.3.29 or older).

Enable 5-layer topology switch in init path of the driver. To accomplish
that upload of the DDP package needs to be delayed, until change in Tx
topology is finished. To trigger the Tx change user selection should be
changed in NVM using devlink. Then the platform should be rebooted.

Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 106 ++++++++++++++++++----
 1 file changed, 87 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8dc1ae3f8e53..5e5e77a745ee 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4490,11 +4490,11 @@ static char *ice_get_opt_fw_name(struct ice_pf *pf)
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
 
@@ -4503,29 +4503,95 @@ static void ice_request_fw(struct ice_pf *pf)
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
+			dev_info(dev, "Transmit balancing feature disabled\n");
+		else
+			dev_info(dev, "Transmit balancing feature enabled\n");
+		/* if there was a change in topology ice_cfg_tx_topo triggered
+		 * a CORER and we need to re-init hw
+		 */
+		ice_deinit_hw(hw);
+		err = ice_init_hw(hw);
+
+		/* in this case we're not allowing safe mode */
+		kfree(buf_copy);
+
+		return err;
+
+	} else if (err == -EIO) {
+		dev_info(dev, "DDP package does not support transmit balancing feature - please update to the latest DDP package and try again\n");
 	}
 
-dflt_pkg_load:
-	err = request_firmware(&firmware, ICE_DDP_PKG_FILE, dev);
+	kfree(buf_copy);
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
+	if (err)
+		return 0;
+
+	err = ice_init_tx_topology(hw, firmware);
 	if (err) {
-		dev_err(dev, "The DDP package file was not found or could not be read. Entering Safe Mode\n");
-		return;
+		dev_err(dev, "ice_init_hw during change of tx topology failed: %d\n",
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
@@ -4726,9 +4792,11 @@ static int ice_init_dev(struct ice_pf *pf)
 
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
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
