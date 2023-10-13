Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD107C82E3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 12:18:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD092616FD;
	Fri, 13 Oct 2023 10:17:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD092616FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697192279;
	bh=e1IjDHtX8ELTn6yAs8V2ExXIVVh7bZSivT6fxNgWy6w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=e5hs8qReshW9wZL3MpZxC+PU2l3RCR/y+tIRwQ3nN4KpqZ6YOzfDucGS7++Olgha6
	 VeKC/fJ02ypxq9Ai1U3PjixPhrt9ftXdCjnLESmKQ5dG904o2+UoM1IWLDTEmXqkaB
	 hQVXLqCQPhuYBCd0SkWJ7zpQcSmI06DW+g8j5lAuxX+edfhXPgXse4i2HMmD+LIFUy
	 vdfSWiGa4QEutThQcFv4vifn2bHy40GzGISl3cJNclXkTk7E4Vn5eou46DUq/RV658
	 NPW1VkH/szE4n7+RqqEKASgMHPbzkH8KOY4Z9q5sgF4NFxs/IpXVWpbEcH+6FYERyA
	 eh502AIdsmxAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8O3moOAR60Mg; Fri, 13 Oct 2023 10:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E26B60E35;
	Fri, 13 Oct 2023 10:17:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E26B60E35
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3928B1BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AED182324
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:17:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AED182324
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CFnV1dtu2rTn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 10:17:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CAB56822B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAB56822B3
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="364513532"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="364513532"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:17:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="758451246"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="758451246"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmsmga007.fm.intel.com with ESMTP; 13 Oct 2023 03:17:44 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com
Date: Fri, 13 Oct 2023 12:17:43 +0200
Message-Id: <20231013101743.1322277-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697192271; x=1728728271;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N9XZdf1lsEvLzvfu6H62LK0J7LQ/VuQISxTID3pZou4=;
 b=nzEiUyBLcPkAfV2HWG/08z5VChZu2ceC86wgJtYDSg4pmIZCQ8GMo9+V
 3rzQTtCKkX/452zaJxDwEJ6SmGm2gYZMGR0GFZY1U9vc3fuBeaZm1Gu/Y
 FfOsAJR9nSnlutOty5r684+1WWNEPKZB/s/77pF+wOAcZ5GCywWbHx++a
 qGerw8Hxa7Cmlzw8LfNtjr/5ZnXIJG8h8stdiG3M9IoF2ynCJv5u5YKnh
 b/qRSuVRjZ3KX2nA5tf9goOH0xkMSiyRsySM6EjpcZ6ovf+0Xi4o6LIZf
 pxe3DyPgAOzzeH3dyYMb5thQKalpDa6UURQHNPf2NXXhqd9Q4SF8HxBT7
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nzEiUyBL
Subject: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add restore default
 speed when changed PHY doesn't support it
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

Currently, there was no link after plugging a different type of PHY
module if user forced previous PHY specific link type/speed for  before.

Add reset link speed settings to the default values for PHY module,
if different PHY module is inserted and currently defined user-specified
speed is not compatible with this module.

Co-developed-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1->v2 fixed Reviewed-by tags
v2->v3 fixed commit messages and tags
---
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 65 +++++++++++++++++++--
 1 file changed, 61 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d0d0218..6829720 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10076,6 +10076,55 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
 	rtnl_unlock();
 }
 
+/**
+ * i40e_restore_supported_phy_link_speed - Restore default PHY speed
+ * @pf: board private structure
+ *
+ * Set PHY module speeds according to values got from
+ * initial link speed abilites.
+ **/
+static int i40e_restore_supported_phy_link_speed(struct i40e_pf *pf)
+{
+	struct i40e_aq_get_phy_abilities_resp abilities;
+	struct i40e_aq_set_phy_config config = {0};
+	struct i40e_hw *hw = &pf->hw;
+	int err;
+
+	err = i40e_aq_get_phy_capabilities(hw, false, false, &abilities, NULL);
+	if (err) {
+		dev_dbg(&pf->pdev->dev, "failed to get phy cap., ret =  %i last_status =  %s\n",
+			err, i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		return err;
+	}
+	config.eee_capability = abilities.eee_capability;
+	config.phy_type_ext = abilities.phy_type_ext;
+	config.low_power_ctrl = abilities.d3_lpan;
+	config.abilities = abilities.abilities;
+	config.abilities |= I40E_AQ_PHY_ENABLE_AN;
+	config.phy_type = abilities.phy_type;
+	config.eeer = abilities.eeer_val;
+	config.fec_config = abilities.fec_cfg_curr_mod_ext_info &
+			    I40E_AQ_PHY_FEC_CONFIG_MASK;
+	err = i40e_aq_get_phy_capabilities(hw, false, true, &abilities, NULL);
+	if (err) {
+		dev_dbg(&pf->pdev->dev, "get supported phy types ret =  %i last_status =  %s\n",
+			err, i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		return err;
+	}
+	config.link_speed = abilities.link_speed;
+
+	err = i40e_aq_set_phy_config(hw, &config, NULL);
+	if (err)
+		return err;
+	err = i40e_aq_set_link_restart_an(hw, true, NULL);
+	if (err)
+		return err;
+
+	pf->hw.phy.link_info.requested_speeds = config.link_speed;
+
+	return err;
+}
+
 /**
  * i40e_handle_link_event - Handle link event
  * @pf: board private structure
@@ -10086,6 +10135,7 @@ static void i40e_handle_link_event(struct i40e_pf *pf,
 {
 	struct i40e_aqc_get_link_status *status =
 		(struct i40e_aqc_get_link_status *)&e->desc.params.raw;
+	int err;
 
 	/* Do a new status request to re-enable LSE reporting
 	 * and load new status information into the hw struct
@@ -10109,10 +10159,17 @@ static void i40e_handle_link_event(struct i40e_pf *pf,
 		    (!(status->an_info & I40E_AQ_QUALIFIED_MODULE)) &&
 		    (!(status->link_info & I40E_AQ_LINK_UP)) &&
 		    (!(pf->flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED))) {
-			dev_err(&pf->pdev->dev,
-				"Rx/Tx is disabled on this device because an unsupported SFP module type was detected.\n");
-			dev_err(&pf->pdev->dev,
-				"Refer to the Intel(R) Ethernet Adapters and Devices User Guide for a list of supported modules.\n");
+			err = i40e_restore_supported_phy_link_speed(pf);
+			if (err) {
+				dev_err(&pf->pdev->dev,
+					"Rx/Tx is disabled on this device because an unsupported SFP module type was detected.\n");
+				dev_err(&pf->pdev->dev,
+					"Refer to the Intel(R) Ethernet Adapters and Devices User Guide for a list of supported modules.\n");
+
+				return;
+			}
+
+			dev_info(&pf->pdev->dev, "The selected speed is incompatible with the connected media type. Resetting to the default speed setting for the media type.");
 		}
 	}
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
