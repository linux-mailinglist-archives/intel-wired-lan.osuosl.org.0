Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 702E471F3B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 20:24:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A55A85B18;
	Tue, 23 Jul 2019 18:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pttLNRM6BPK7; Tue, 23 Jul 2019 18:24:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2C33857D8;
	Tue, 23 Jul 2019 18:24:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B74081BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B43E8832A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gG0IQXiH5HwI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 18:24:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D5918249B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 11:24:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="253311794"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by orsmga001.jf.intel.com with ESMTP; 23 Jul 2019 11:24:35 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 06:03:41 -0400
Message-Id: <20190723100345.57522-8-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723100345.57522-1-alice.michael@intel.com>
References: <20190723100345.57522-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S8 08/12] i40e: Remove function
 i40e_update_dcb_config()
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
Cc: Grzegorz Siwik <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Siwik <grzegorz.siwik@intel.com>

This patch removes function i40e_update_dcb_config(). Instead of
i40e_update_dcb_config() we use i40e_init_dcb(), which implements the
correct nvm read.

Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 46 +--------------------
 1 file changed, 1 insertion(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 5c280c025085..8d6b9515b595 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6419,50 +6419,6 @@ static int i40e_resume_port_tx(struct i40e_pf *pf)
 	return ret;
 }
 
-/**
- * i40e_update_dcb_config
- * @hw: pointer to the HW struct
- * @enable_mib_change: enable MIB change event
- *
- * Update DCB configuration from the firmware
- **/
-static enum i40e_status_code
-i40e_update_dcb_config(struct i40e_hw *hw, bool enable_mib_change)
-{
-	struct i40e_lldp_variables lldp_cfg;
-	i40e_status ret;
-
-	if (!hw->func_caps.dcb)
-		return I40E_NOT_SUPPORTED;
-
-	/* Read LLDP NVM area */
-	ret = i40e_read_lldp_cfg(hw, &lldp_cfg);
-	if (ret)
-		return I40E_ERR_NOT_READY;
-
-	/* Get DCBX status */
-	ret = i40e_get_dcbx_status(hw, &hw->dcbx_status);
-	if (ret)
-		return ret;
-
-	/* Check the DCBX Status */
-	if (hw->dcbx_status == I40E_DCBX_STATUS_DONE ||
-	    hw->dcbx_status == I40E_DCBX_STATUS_IN_PROGRESS) {
-		/* Get current DCBX configuration */
-		ret = i40e_get_dcb_config(hw);
-		if (ret)
-			return ret;
-	} else if (hw->dcbx_status == I40E_DCBX_STATUS_DISABLED) {
-		return I40E_ERR_NOT_READY;
-	}
-
-	/* Configure the LLDP MIB change event */
-	if (enable_mib_change)
-		ret = i40e_aq_cfg_lldp_mib_change_event(hw, true, NULL);
-
-	return ret;
-}
-
 /**
  * i40e_init_pf_dcb - Initialize DCB configuration
  * @pf: PF being configured
@@ -6485,7 +6441,7 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
 		goto out;
 	}
 
-	err = i40e_update_dcb_config(hw, true);
+	err = i40e_init_dcb(hw, true);
 	if (!err) {
 		/* Device/Function is not DCBX capable */
 		if ((!hw->func_caps.dcb) ||
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
