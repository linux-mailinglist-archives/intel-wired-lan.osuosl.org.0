Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 754AD2C2ADA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Nov 2020 16:08:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D47DB84F33;
	Tue, 24 Nov 2020 15:08:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 39CSXl_tl7bN; Tue, 24 Nov 2020 15:08:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6E9884F7A;
	Tue, 24 Nov 2020 15:08:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9DEA1BF44C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 15:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8954B220C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 15:08:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rzNNbXa3uZgT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Nov 2020 15:08:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 0AE51204DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 15:08:49 +0000 (UTC)
IronPort-SDR: awZZSoaZconY2dJoE7iddKQBSD9P9fz2u4O+5tsuVo6+r/ucLu4Xa7mgy1nUdoo/JX88ACmWg4
 iRyUjKbOQTLw==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="159725987"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="159725987"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 07:08:48 -0800
IronPort-SDR: 0gRINSNiPEt+Ly25Mkw2wIkxL2QhmMSO7Oo3MX5eUj/hYVEX8y4ZnwvL9PCyy/qrsgwvl9GhZx
 ZTUkk0QY4xLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="332588867"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga006.jf.intel.com with ESMTP; 24 Nov 2020 07:08:47 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Nov 2020 15:08:27 +0000
Message-Id: <20201124150827.19757-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix overwriting flow control
 settings during driver loading
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Dawid Lukwinski <dawid.lukwinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

During driver loading flow control settings were written to FW
using a variable which was always zero, since it was being set
only by ethtool. This behavior has been corrected and driver
no longer overwrites the default FW/NVM settings.

Fixes: 373149fc99a0 ("i40e: Decrease the scope of rtnl lock")
Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 27 ---------------------
 1 file changed, 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 672dc2c..c5c7832 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10061,7 +10061,6 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	int old_recovery_mode_bit = test_bit(__I40E_RECOVERY_MODE, pf->state);
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 	struct i40e_hw *hw = &pf->hw;
-	u8 set_fc_aq_fail = 0;
 	i40e_status ret;
 	u32 val;
 	int v;
@@ -10187,13 +10186,6 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 			 i40e_stat_str(&pf->hw, ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 
-	/* make sure our flow control settings are restored */
-	ret = i40e_set_fc(&pf->hw, &set_fc_aq_fail, true);
-	if (ret)
-		dev_dbg(&pf->pdev->dev, "setting flow control: ret = %s last_status = %s\n",
-			i40e_stat_str(&pf->hw, ret),
-			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
-
 	/* Rebuild the VSIs and VEBs that existed before reset.
 	 * They are still in our local switch element arrays, so only
 	 * need to rebuild the switch model in the HW.
@@ -14784,7 +14776,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	int err;
 	u32 val;
 	u32 i;
-	u8 set_fc_aq_fail;
 
 	err = pci_enable_device_mem(pdev);
 	if (err)
@@ -15119,24 +15110,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	}
 	INIT_LIST_HEAD(&pf->vsi[pf->lan_vsi]->ch_list);
 
-	/* Make sure flow control is set according to current settings */
-	err = i40e_set_fc(hw, &set_fc_aq_fail, true);
-	if (set_fc_aq_fail & I40E_SET_FC_AQ_FAIL_GET)
-		dev_dbg(&pf->pdev->dev,
-			"Set fc with err %s aq_err %s on get_phy_cap\n",
-			i40e_stat_str(hw, err),
-			i40e_aq_str(hw, hw->aq.asq_last_status));
-	if (set_fc_aq_fail & I40E_SET_FC_AQ_FAIL_SET)
-		dev_dbg(&pf->pdev->dev,
-			"Set fc with err %s aq_err %s on set_phy_config\n",
-			i40e_stat_str(hw, err),
-			i40e_aq_str(hw, hw->aq.asq_last_status));
-	if (set_fc_aq_fail & I40E_SET_FC_AQ_FAIL_UPDATE)
-		dev_dbg(&pf->pdev->dev,
-			"Set fc with err %s aq_err %s on get_link_info\n",
-			i40e_stat_str(hw, err),
-			i40e_aq_str(hw, hw->aq.asq_last_status));
-
 	/* if FDIR VSI was set up, start it now */
 	for (i = 0; i < pf->num_alloc_vsi; i++) {
 		if (pf->vsi[i] && pf->vsi[i]->type == I40E_VSI_FDIR) {
-- 
2.17.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
