Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEB486DA4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2019 01:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4A7C87695;
	Thu,  8 Aug 2019 23:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V2XqAtkt6+fJ; Thu,  8 Aug 2019 23:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B538487620;
	Thu,  8 Aug 2019 23:08:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1411E1BF383
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0F0AE88353
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PaimIAbkHn4k for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 23:08:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6DEC088338
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 16:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,363,1559545200"; d="scan'208";a="169141827"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2019 16:08:16 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2019 07:39:25 -0700
Message-Id: <20190808143938.4968-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
References: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S27 02/15] ice: Correctly handle return
 values for init DCB
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

In the init path for DCB, the call to ice_init_dcb()
can return a non-zero value for either an actual
error, or due to the FW lldp engine being stopped.

We are currently treating all non-zero values only as
an indication that the FW LLDP engine is stopped.

Check for an actual error in the DCB init flow.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index e65b87f26828..eb1077450e5b 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -457,14 +457,18 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 	port_info = hw->port_info;
 
 	err = ice_init_dcb(hw);
+	if (err && !port_info->is_sw_lldp) {
+		dev_err(&pf->pdev->dev, "Error initializing DCB %d\n", err);
+		goto dcb_init_err;
+	}
+
+	dev_info(&pf->pdev->dev,
+		 "DCB is enabled in the hardware, max number of TCs supported on this port are %d\n",
+		 pf->hw.func_caps.common_cap.maxtc);
 	if (err) {
 		/* FW LLDP is disabled, activate SW DCBX/LLDP mode */
-		dev_info(&pf->pdev->dev,
-			 "DCB is enabled in the hardware, max number of TCs supported on this port are %d\n",
-			 pf->hw.func_caps.common_cap.maxtc);
 		dev_info(&pf->pdev->dev,
 			 "FW LLDP is disabled, DCBx/LLDP in SW mode.\n");
-		port_info->is_sw_lldp = true;
 		clear_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags);
 		err = ice_dcb_sw_dflt_cfg(pf, locked);
 		if (err) {
@@ -480,7 +484,6 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 		return 0;
 	}
 
-	port_info->is_sw_lldp = false;
 	set_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags);
 
 	/* DCBX in FW and LLDP enabled in FW */
@@ -492,10 +495,6 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 	if (err)
 		goto dcb_init_err;
 
-	dev_info(&pf->pdev->dev,
-		 "DCB is enabled in the hardware, max number of TCs supported on this port are %d\n",
-		 pf->hw.func_caps.common_cap.maxtc);
-	dev_info(&pf->pdev->dev, "DCBX offload supported\n");
 	return err;
 
 dcb_init_err:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
