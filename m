Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4487C8512
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 13:53:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 269704173C;
	Fri, 13 Oct 2023 11:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 269704173C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697197987;
	bh=dj7DbtdxBVL0HLJEecEEHIfwtxz9E3xKIC8K5Nneu8M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MVN17xPfLkR6VgNyiLeI+ukApb8/yWHkxyDvDTI8FMGcfL4ml9iBPw2/hASlLjXvq
	 akd5pSTDf4/BMmGtggbrnHFp+ZO9djyiBZvJXL3jZ0jk3Skvu2Qh9iFhavmUz7BhHT
	 rL1bVltasa7nfTRIRWB2LtZYv3iepAqbbB47Fq7yxUz31CkaK4BpHaVMQklno+815N
	 aXFAitS9thSDbIra/qt2nmki26e5w1tbOX76r+rl2n1QFRmtbHJboTZ8jCgj88U0sI
	 +7S++Pf2givIrTMIvAKZ+yvVkK/xzTlqWvB8IbYSQ5hQ/AS/r6MG5rrb5vjEQxvaN4
	 3krquo2ICdyFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hp1JGtkDd-pP; Fri, 13 Oct 2023 11:53:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5D3F416FC;
	Fri, 13 Oct 2023 11:53:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5D3F416FC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 925581BF33C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 11:52:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 692AE6079B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 11:52:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 692AE6079B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rX8xqdcTN-qa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 11:52:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41F0F60745
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 11:52:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41F0F60745
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="451636877"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="451636877"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 04:52:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="845446270"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="845446270"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Oct 2023 04:52:46 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com
Date: Fri, 13 Oct 2023 13:52:45 +0200
Message-Id: <20231013115245.1517606-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697197977; x=1728733977;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L2yLlOc8vB7BKM7ZbneI4WcA5LmAwEXyptbf0TpYHOg=;
 b=j5zjDx7QsUhNJtGiEt3pNDRtDYrDlyvvUQl2+Gt5F5I+ZAnqLkpltCfM
 +6dHx8Idhp4QBCJMybbKeNP/J22eqWnR/QEURhoZdh2TRJFvTgAqDwrCL
 1e23mRPJMWEXj9QrliIMM0zXzLpY1GY4bgaouqXmczNIOalhaDVLpfQ6i
 Q6fQol9GItOfcDuHoIQgwE/74krcgr0pay4HjZCSx+vISK3gy2AIpo77h
 ce3J5KVTESsBlnvp4d8JY+k98gI7D7euk1y9ohH6J4XCMBszK7NcPOz4t
 GEVxSyn6A0qgoerf55CDLblWTFXP+7qqhgKnKeLmBQoR6NX72qaQ+Pxis
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j5zjDx7Q
Subject: [Intel-wired-lan] [PATCH iwl-next v5] i40e: add restore default
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, there was no link after plugging a different type of PHY
module if user forced previous PHY specific link type/speed before.

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
v3->v4 fixed commit message typo
v4->v5 cc to netdev@vger.kernel.org
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
