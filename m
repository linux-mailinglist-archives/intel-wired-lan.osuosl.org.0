Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CED67C82E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 12:19:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19030616B5;
	Fri, 13 Oct 2023 10:19:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19030616B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697192383;
	bh=1I5CJLOK6025Rl+CGuE1TDcf8zfUBSD+1O9sTnCQamE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZhLF7ofdhuCg+D9l1QAjJcBkbqflpbdJFRYMNUYxU+yYpDNeplrlc6lNUX+syAm2b
	 /WX0uZd9T/RUPf7kAEzpm2N7+8lHtJql5G/6aKmZ1ApQlXR7u6d8MpA7ckKjTCqERW
	 0AhX0JOxmoGuUKDRyJejMX5sNmKgilYp6mxzYRMjPE5XMq+ZWoWcOeEb/iLGeAge75
	 kscCbWQtySyP/C4z3uqJZG2YpVWf7aq9IkoXjio7IohLONk8Os7Ij2tOXsmGgqfFXw
	 UhbzeLHnXzv00WEESlyPX1X6lmuEMHkBYTEJzRj6lic28GpB5hHNWxVYXNQbLGLMLq
	 iZ4Obr9+njomA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cg9NVsSeyaB5; Fri, 13 Oct 2023 10:19:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D97F360BC7;
	Fri, 13 Oct 2023 10:19:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D97F360BC7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A3FF1BF349
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DEBD40292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:19:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DEBD40292
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djogZS1JlL5Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 10:19:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1BEFC400CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:19:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BEFC400CB
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="364513724"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="364513724"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:19:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="898505429"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="898505429"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmsmga001.fm.intel.com with ESMTP; 13 Oct 2023 03:17:42 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com
Date: Fri, 13 Oct 2023 12:19:31 +0200
Message-Id: <20231013101931.1326412-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697192375; x=1728728375;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k+syo+kKSkeL7WxD587qiNMVcXwPo3vOWRFewPpsBsI=;
 b=HHX9SeS3SaPDhDs1b/I01O1ZynfbWPFGYYGnfZOr2ST2zVZtKsPattlc
 1AQF5I9KCsWalo4kvfNRYZaUxVvf73A6vEDpLUkZur8SrS2ao4QT4dd+L
 SyhulnQNMAiPst3RS/PZQ089jnn5zsFHRt1EPfdfFQVMwrThCZFc8H+Jx
 OXRykf8FfwjhgQLAR07HAvORiJAHVM5+elPR4SRsfxlPhfB5Hu6/SYmt/
 xUhatvKwlIJEIp4IJT+ajtEv8E/+dS1E1xliPYIERokQERxN9C8RHsw/v
 x6Z6SrWRV6H++WUernmZ6l15UHN+1fIj3cb89wk7CAp/c+8O1XtEavhT8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HHX9SeS3
Subject: [Intel-wired-lan] [PATCH iwl-next v4] i40e: add restore default
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
