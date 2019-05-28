Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 926032CE1A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2019 20:00:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4087687BC2;
	Tue, 28 May 2019 18:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jGdw+DaRMDxc; Tue, 28 May 2019 18:00:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E0D1387BA6;
	Tue, 28 May 2019 18:00:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40DC21BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 34128214F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:59:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y98J1+Z1-zCO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2019 17:59:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id BF1CB22219
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:59:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 10:59:56 -0700
X-ExtLoop1: 1
Received: from alicemic-2.jf.intel.com ([10.166.16.121])
 by orsmga008.jf.intel.com with ESMTP; 28 May 2019 10:59:56 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.micheal@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2019 10:59:19 -0700
Message-Id: <20190528175921.30534-5-alice.michael@intel.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190528175921.30534-1-alice.michael@intel.com>
References: <20190528175921.30534-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S6 5/7] i40e: missing priorities for
 any QoS traffic
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

This patch fixes reading f/w lldp agent status at dcb init time.
It's done by removing direct nvm reading in i40e_update_dcb_config()
and checking whether f/w lldp agent is disabled via
I40E_FLAG_DISABLE_FW_LLDP flag in i40e_init_pf_dcb(). The function
i40e_update_dcb_config() in i40e_main.c is a temporary solution which
will be later renamed to i40e_init_dcb() in the i40e_dcb module. Also
logging was extended to make visible if f/w lldp agent is running or not
and always log a message when dcb was not initialized. Without this
patch for new f/w versions f/w lldp agent status was always read
from nvm as disabled and dcb initialization failed without
clear reason in logs.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 57 +++++++++++++++++++--
 1 file changed, 54 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 7c93f28b7b1d..1dd5fcf256ef 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6411,6 +6411,50 @@ static int i40e_resume_port_tx(struct i40e_pf *pf)
 	return ret;
 }
 
+/**
+ * i40e_update_dcb_config
+ * @hw: pointer to the hw struct
+ * @enable_mib_change: enable mib change event
+ *
+ * Update DCB configuration from the Firmware
+ **/
+static enum i40e_status_code
+i40e_update_dcb_config(struct i40e_hw *hw, bool enable_mib_change)
+{
+	struct i40e_lldp_variables lldp_cfg;
+	i40e_status ret;
+
+	if (!hw->func_caps.dcb)
+		return I40E_NOT_SUPPORTED;
+
+	/* Read LLDP NVM area */
+	ret = i40e_read_lldp_cfg(hw, &lldp_cfg);
+	if (ret)
+		return I40E_ERR_NOT_READY;
+
+	/* Get DCBX status */
+	ret = i40e_get_dcbx_status(hw, &hw->dcbx_status);
+	if (ret)
+		return ret;
+
+	/* Check the DCBX Status */
+	if (hw->dcbx_status == I40E_DCBX_STATUS_DONE ||
+	    hw->dcbx_status == I40E_DCBX_STATUS_IN_PROGRESS) {
+		/* Get current DCBX configuration */
+		ret = i40e_get_dcb_config(hw);
+		if (ret)
+			return ret;
+	} else if (hw->dcbx_status == I40E_DCBX_STATUS_DISABLED) {
+		return I40E_ERR_NOT_READY;
+	}
+
+	/* Configure the LLDP MIB change event */
+	if (enable_mib_change)
+		ret = i40e_aq_cfg_lldp_mib_change_event(hw, true, NULL);
+
+	return ret;
+}
+
 /**
  * i40e_init_pf_dcb - Initialize DCB configuration
  * @pf: PF being configured
@@ -6427,11 +6471,13 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
 	 * Also do not enable DCBx if FW LLDP agent is disabled
 	 */
 	if ((pf->hw_features & I40E_HW_NO_DCB_SUPPORT) ||
-	    (pf->flags & I40E_FLAG_DISABLE_FW_LLDP))
+	    (pf->flags & I40E_FLAG_DISABLE_FW_LLDP)) {
+		dev_info(&pf->pdev->dev, "DCB is not supported or FW LLDP is disabled\n");
+		err = I40E_NOT_SUPPORTED;
 		goto out;
+	}
 
-	/* Get the initial DCB configuration */
-	err = i40e_init_dcb(hw, true);
+	err = i40e_update_dcb_config(hw, true);
 	if (!err) {
 		/* Device/Function is not DCBX capable */
 		if ((!hw->func_caps.dcb) ||
@@ -14881,6 +14927,11 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	pci_set_drvdata(pdev, pf);
 	pci_save_state(pdev);
 
+	dev_info(&pdev->dev,
+		 (pf->flags & I40E_FLAG_DISABLE_FW_LLDP) ?
+			"FW LLDP is disabled\n" :
+			"FW LLDP is enabled\n");
+
 	/* Enable FW to write default DCB config on link-up */
 	i40e_aq_set_dcb_parameters(hw, true, NULL);
 
-- 
2.19.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
