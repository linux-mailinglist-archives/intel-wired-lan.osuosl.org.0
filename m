Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087207C4C9A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 10:05:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95835416A5;
	Wed, 11 Oct 2023 08:05:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95835416A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697011520;
	bh=KL2EsSEaLj7/x0YU5vp53ZKuwjhlC9QjuHLB3kzG2/w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Rhb9ryZbJQLWS0UqpVlUjXGxx/SJXbLT10+RpP8evOGtDqy+yRYOarIYEB2JuRGZJ
	 XWFcMsxpr/aXQHXBamCfF/rsGzs4rMCmvb3BJDf7Aa+mDfoNvlFCewOV8OpUGf8mNt
	 t0aQ5RjCpxXYpGyZyUPEDYweO+of2gyckSUAieGefKau+pJqTDXkizEoqWGkbjcs2N
	 G+lWk/BpLI37ycFL2lslLkx8XtbToj6e6zsSUyaec7bgqYSGYSegExMzY81KwyWaMP
	 yel2AQsMJePJEjrQbte6+RwoP1qLBQngT0xGGFvoLmrqA1k/o7PsVEMjUlNo3QcAMn
	 pO3aOeset5f3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u1Vo6mTNU6SD; Wed, 11 Oct 2023 08:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C30E14168B;
	Wed, 11 Oct 2023 08:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C30E14168B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 677581BF32C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 08:05:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D6A6404DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 08:05:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D6A6404DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZzRaCpn4_0zC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 08:05:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 423D1404DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 08:05:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 423D1404DE
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384458410"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="384458410"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="844464068"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="844464068"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Oct 2023 01:05:06 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed, 11 Oct 2023 10:05:06 +0200
Message-Id: <20231011080506.129043-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697011512; x=1728547512;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1yUQy0F73vpz3d0EpaAxtrV44pB+WKV7dIb1ZQxW7mg=;
 b=cs6kvJ38s/riRZfQppa6atLaYSydzzbFoWuJSaCPsWrxJwD1sFUdwIXJ
 i7iYRODg9KfJmswIugt2oagltrL4+EjTUKr3SKqJMzHXYLsuze07CRQ/Z
 mM/qEG0K6pJErwIailEL4Cyt/ceuIEJ4s7+mEehhpPJ5M9Nd4hZ/SUPjU
 Cc8DpYeFl/Psa3+di+WViWTCG+NKMmGfH3dwlkP8Tz25EU7l+U0Tn5AEx
 aP7/ZXTtgeaf+8GDHvuaFOW6BPCbQz6HZGmXGPRq9KFbHYUmSiN/+iYBt
 SlKMxj5iLPoqcBSgZkbzHajHftxWYDbLcvKRYK1PyOKQuG0KXC91EzZ1T
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel
 header.b=cs6kvJ38
Subject: [Intel-wired-lan] [PATCH iwl-next v1] i40e: add restore default
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
Cc: Larysa <larysa.zaremba@intel.com>, Zaremba@osuosl.org,
 Radoslaw Tyl <radoslawx.tyl@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In order to avoid no link after plugging a different type PHY module.

Add reset link speed settings to the default values for PHY module,
if different PHY module is inserted and currently defined user-specified
speed is not compatible with this module.

Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Zaremba, Larysa <larysa.zaremba@intel.com>
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
