Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 925187922B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jul 2019 19:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 445B7875B9;
	Mon, 29 Jul 2019 17:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C4e0TAzdrB3S; Mon, 29 Jul 2019 17:33:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16AD687594;
	Mon, 29 Jul 2019 17:33:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39D831BF96B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jul 2019 17:33:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3342F2002D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jul 2019 17:33:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s+mtHYGkAq4S for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jul 2019 17:33:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 62F9F20034
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jul 2019 17:33:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 10:33:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="179447235"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jul 2019 10:33:16 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Jul 2019 02:04:44 -0700
Message-Id: <20190729090454.5501-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729090454.5501-1-anthony.l.nguyen@intel.com>
References: <20190729090454.5501-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S24 v2 02/12] ice: Account for all states
 of FW DCBx and LLDP
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

From: Dave Ertman <david.m.ertman@intel.com>

Currently, only the DCBx status is taken into account to
determine if FW LLDP is possible.  But there are NVM version
coming out with DCBx enabled, and FW LLDP disabled.  This
is causing errors where the driver sees that DCBx is not
disabled, and then tries to register for LLDP MIB change
events, and fails.

Change the logic to detect both DCBx and LLDP states in the
FW engine.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 34 +++++++-------------
 1 file changed, 12 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index d285aba3fea7..9ab9ec1ce19e 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -324,6 +324,11 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 	}
 
 	ice_init_dcb(&pf->hw);
+	if (pf->hw.port_info->dcbx_status == ICE_DCBX_STATUS_DIS)
+		pf->hw.port_info->is_sw_lldp = true;
+	else
+		pf->hw.port_info->is_sw_lldp = false;
+
 	if (ice_dcb_need_recfg(pf, prev_cfg, local_dcbx_cfg)) {
 		/* difference in cfg detected - disable DCB till next MIB */
 		dev_err(&pf->pdev->dev, "Set local MIB not accurate\n");
@@ -445,35 +450,17 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 	struct device *dev = &pf->pdev->dev;
 	struct ice_port_info *port_info;
 	struct ice_hw *hw = &pf->hw;
-	int sw_default = 0;
 	int err;
 
 	port_info = hw->port_info;
 
 	err = ice_init_dcb(hw);
 	if (err) {
-		/* FW LLDP is not active, default to SW DCBX/LLDP */
-		dev_info(&pf->pdev->dev, "FW LLDP is not active\n");
-		hw->port_info->dcbx_status = ICE_DCBX_STATUS_NOT_STARTED;
-		hw->port_info->is_sw_lldp = true;
-	}
-
-	if (port_info->dcbx_status == ICE_DCBX_STATUS_DIS)
-		dev_info(&pf->pdev->dev, "DCBX disabled\n");
-
-	/* LLDP disabled in FW */
-	if (port_info->is_sw_lldp) {
-		sw_default = 1;
-		dev_info(&pf->pdev->dev, "DCBx/LLDP in SW mode.\n");
+		/* FW LLDP is disabled, activate SW DCBX/LLDP mode */
+		dev_info(&pf->pdev->dev,
+			 "FW LLDP is disabled, DCBx/LLDP in SW mode.\n");
+		port_info->is_sw_lldp = true;
 		clear_bit(ICE_FLAG_ENABLE_FW_LLDP, pf->flags);
-	} else {
-		set_bit(ICE_FLAG_ENABLE_FW_LLDP, pf->flags);
-	}
-
-	if (port_info->dcbx_status == ICE_DCBX_STATUS_NOT_STARTED)
-		dev_info(&pf->pdev->dev, "DCBX not started\n");
-
-	if (sw_default) {
 		err = ice_dcb_sw_dflt_cfg(pf, locked);
 		if (err) {
 			dev_err(&pf->pdev->dev,
@@ -488,6 +475,9 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 		return 0;
 	}
 
+	port_info->is_sw_lldp = false;
+	set_bit(ICE_FLAG_ENABLE_FW_LLDP, pf->flags);
+
 	/* DCBX in FW and LLDP enabled in FW */
 	pf->dcbx_cap = DCB_CAP_DCBX_LLD_MANAGED | DCB_CAP_DCBX_VER_IEEE;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
