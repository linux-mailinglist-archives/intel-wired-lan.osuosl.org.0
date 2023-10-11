Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2579A7C4E4B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 11:13:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB9814180E;
	Wed, 11 Oct 2023 09:13:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB9814180E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697015637;
	bh=RbtRSgeTc2dCP1B2wnsAhvOtzXKickmJAm1DHnScvg4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TQHrH+o+XiWbFtk3P39Ge4bAoO+1iZGjvzDfq81VcU/FU/V9djLp0VDBNYs0PNGqA
	 kgLcAgadVle1K/5Io1UD7XUCu4Eyjn6CRhW3H+sSuM3I35xVoRuE12lCxK2Gn/pt9O
	 7U2l5D7aA7I2xEm+3A8y+XmbxLa1rq4eFUj49buGD/Wuv/JMMn2bYekwxlH6Q6vEFF
	 2xojccNKkgV2svzA6lJKcH0bjpqlblYOFQKQteH14T8b/FCaw8/IbpshkKVkrIJAKc
	 0pimuQMPQZpux5anNoK5Og5VotRiZg5BKdKkEPZKX4ZiRAje9h7tGClJ1CRYdZ4779
	 M3R3/5PLJTlTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fYHp8yb6LeY8; Wed, 11 Oct 2023 09:13:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43EFA40160;
	Wed, 11 Oct 2023 09:13:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43EFA40160
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 014DD1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 09:13:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBBAF416CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 09:13:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBBAF416CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ANNzsvN6OyIH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 09:13:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8FB7416CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 09:13:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8FB7416CA
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="3208384"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="3208384"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 02:13:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="897560579"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="897560579"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmsmga001.fm.intel.com with ESMTP; 11 Oct 2023 02:11:58 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed, 11 Oct 2023 11:13:42 +0200
Message-Id: <20231011091342.251204-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697015630; x=1728551630;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BepwLZER9J1GLPv/aHdy1hMRN5Flfgq9B7Ywj9DD/CE=;
 b=mfDrnpUZnAdVM07kym8hP3fivd22jsB2Oc9T8M2WSbY1HAvp1TtgApuW
 8C/padJ6jtTU930xTJGAxL5TYnPIpCYC/qFw6QQRjFFxvpiyAF09hpEst
 abd0zbeRzevP29/1dsdQ3pwc6VUoZzjqokgSLjq7/7ZDAoj/5iJdaPLtc
 xUuSweya7MVg42XXMEpKF7pkrkzpJ0rK+d0SEB9ydvgmoCVCyCCPpbBxt
 ETjNudcXCzmpTO6BLQ6J1YHebIWqGOzKDg8Z2f+jZ9Ka+7y/aFKyfLEHT
 ho8eqVZjjQtzXZrX1NIQky85jefzNdhnmxspAfKbRlnW3hV2H1DiHHEWs
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mfDrnpUZ
Subject: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add restore default
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In order to avoid no link after plugging a different type PHY module.

Add reset link speed settings to the default values for PHY module,
if different PHY module is inserted and currently defined user-specified
speed is not compatible with this module.

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1->v2 fixed Reviewed-by tags
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
