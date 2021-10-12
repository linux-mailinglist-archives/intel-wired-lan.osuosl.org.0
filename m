Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED54A42ADD6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 22:32:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98EBD40792;
	Tue, 12 Oct 2021 20:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vglAv34gvdrl; Tue, 12 Oct 2021 20:32:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A46D40794;
	Tue, 12 Oct 2021 20:32:27 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 428BC1BF5A0
 for <intel-wired-lan@osuosl.org>; Tue, 12 Oct 2021 20:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A6D760BB1
 for <intel-wired-lan@osuosl.org>; Tue, 12 Oct 2021 20:32:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jzDyswCJ8ypK for <intel-wired-lan@osuosl.org>;
 Tue, 12 Oct 2021 20:32:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D3FC607F6
 for <intel-wired-lan@osuosl.org>; Tue, 12 Oct 2021 20:32:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="227547834"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="227547834"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 13:32:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="491138351"
Received: from dmert-dev.jf.intel.com ([10.166.241.5])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 13:32:21 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 12 Oct 2021 13:31:21 -0700
Message-Id: <20211012203121.85155-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix problems with DSCP QoS
 implementation
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

The patch that implemented DSCP QoS implementation removed a
bandwidth check that was used to check for a specific condition
caused by some corner cases.  This check should not of been
removed.

The same patch also added a check for when the DCBx state could
be changed in relation to DSCP, but the check was erroneously
added nested in a check for CEE mode, which made the check useless.

Fix these problems by re-adding the bandwidth check and relocating
the DSCP mode check earlier in the function that changes DCBx state
in the driver.

Fixes: 2a87bd73e5 ("ice: Add DSCP support")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index 7fdeb411b6df..3eb01731e496 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -97,6 +97,9 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 
 	new_cfg->etscfg.maxtcs = pf->hw.func_caps.common_cap.maxtc;
 
+	if (!bwcfg)
+		new_cfg->etscfg.tcbwtable[0] = 100;
+
 	if (!bwrec)
 		new_cfg->etsrec.tcbwtable[0] = 100;
 
@@ -167,15 +170,18 @@ static u8 ice_dcbnl_setdcbx(struct net_device *netdev, u8 mode)
 	if (mode == pf->dcbx_cap)
 		return ICE_DCB_NO_HW_CHG;
 
-	pf->dcbx_cap = mode;
 	qos_cfg = &pf->hw.port_info->qos_cfg;
-	if (mode & DCB_CAP_DCBX_VER_CEE) {
-		if (qos_cfg->local_dcbx_cfg.pfc_mode == ICE_QOS_MODE_DSCP)
-			return ICE_DCB_NO_HW_CHG;
+
+	/* DSCP configuration is not DCBx negotiated */
+	if (qos_cfg->local_dcbx_cfg.pfc_mode == ICE_QOS_MODE_DSCP)
+		return ICE_DCB_NO_HW_CHG;
+
+	pf->dcbx_cap = mode;
+
+	if (mode & DCB_CAP_DCBX_VER_CEE)
 		qos_cfg->local_dcbx_cfg.dcbx_mode = ICE_DCBX_MODE_CEE;
-	} else {
+	else
 		qos_cfg->local_dcbx_cfg.dcbx_mode = ICE_DCBX_MODE_IEEE;
-	}
 
 	dev_info(ice_pf_to_dev(pf), "DCBx mode = 0x%x\n", mode);
 	return ICE_DCB_HW_CHG_RST;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
