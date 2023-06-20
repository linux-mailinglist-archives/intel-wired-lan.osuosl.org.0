Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C73473744A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 20:33:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 112DA82B69;
	Tue, 20 Jun 2023 18:33:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 112DA82B69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687285986;
	bh=et22oz8X3QHhIDmQZjoKy0YYRDSAsftdB34JXldWGW0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pjlmPWRfJkOSnLwIIpLCP0yaOVMW9WIM4VVd9mjzKzS2bUBm2qc9kNKcSXaouLS8T
	 vyOgyKZbQr/67YGWh/7D38U9lqcdoJ90q1ydsb3CfCLnGr+AkvN+jVwai4zN7eoYLA
	 v5IYcLnHEdY6dmvJc/wf8Taq0312QdlhhUcxPN4DpCu0Xiog/qbK+Tq9J/jsegFGVd
	 9f3WQmRihwLg/xsiU0XeFV9VpxwtgyhjRXxhE2UoQyOUyxWwQw8AddyG5COUyEsa4j
	 H7xH/5I49s2L562JdDyIM1rb9Yph63IfrUgPcOYbqavs41dV83GuUN674PskzqN2Bh
	 C2DoUGBd34y6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4VAmL8BWuNf9; Tue, 20 Jun 2023 18:33:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD72782200;
	Tue, 20 Jun 2023 18:33:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD72782200
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A36C1BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:32:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1171E60F4A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:32:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1171E60F4A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jcKbWYPk0zfB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 18:32:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4851960AC9
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4851960AC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:32:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="425907944"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="425907944"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 11:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="784204422"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="784204422"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 11:32:35 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 11:34:13 -0700
Message-Id: <20230620183414.848016-10-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230620183414.848016-1-david.m.ertman@intel.com>
References: <20230620183414.848016-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687285957; x=1718821957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fCymMh11BDM0sIUq78o1Kso+F0PGaNZuR5UarBdn8Jc=;
 b=UTsuMF5ldOTLdgeyagc92ZLlp4cL6V4XwSd2Roz5hqFIT5O1CMYS+0rx
 kSUdiIu3jz4aMO1z9i6ueZ8sSwX8g5+JU3NmHwQRa8txFqfEujUpOsosP
 xTLSzlekWnx2dfP8knbBe9sa78vcs4GAvZSJxIBZbyQt08E1MtZeiXHR5
 lbzhUR4vzUPbNbt+ZITzEVLCWOceUXiD4v1L+LcczbdixI2czgjjEljH9
 5Y4u1ffmzPcHhFHHuen3w7cvafTocQFXP/5o+qem1LGwLsrsTCEEmkvqq
 NV6+zM2KQEUzT/4v09g8X9AKthl2che7Gnu8DFCLrkIW9mB1+2KeeEavS
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UTsuMF5l
Subject: [Intel-wired-lan] [PATCH iwl-next v5 09/10] ice: enforce no DCB
 config changing when in bond
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
Cc: netdev@vger.kernel.org, bcreeley@amd.com, daniel.machon@microchip.com,
 simon.horman@corigine.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To support SRIOV LAG, the driver cannot allow changes to an interface's DCB
configuration when in a bond.  This would break the ability to modify
interfaces Tx scheduling for fail-over interfaces.

Block kernel generated DCB config events when in a bond.

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 50 +++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index 3eb01731e496..e1fbc6de452d 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -70,6 +70,11 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
 		return -EINVAL;
 
+	if (pf->lag && pf->lag->bonded) {
+		netdev_err(netdev, "DCB changes not allowed when in a bond\n");
+		return -EINVAL;
+	}
+
 	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	mutex_lock(&pf->tc_mutex);
@@ -170,6 +175,11 @@ static u8 ice_dcbnl_setdcbx(struct net_device *netdev, u8 mode)
 	if (mode == pf->dcbx_cap)
 		return ICE_DCB_NO_HW_CHG;
 
+	if (pf->lag && pf->lag->bonded) {
+		netdev_err(netdev, "DCB changes not allowed when in a bond\n");
+		return ICE_DCB_NO_HW_CHG;
+	}
+
 	qos_cfg = &pf->hw.port_info->qos_cfg;
 
 	/* DSCP configuration is not DCBx negotiated */
@@ -261,6 +271,11 @@ static int ice_dcbnl_setpfc(struct net_device *netdev, struct ieee_pfc *pfc)
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
 		return -EINVAL;
 
+	if (pf->lag && pf->lag->bonded) {
+		netdev_err(netdev, "DCB changes not allowed when in a bond\n");
+		return -EINVAL;
+	}
+
 	mutex_lock(&pf->tc_mutex);
 
 	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
@@ -323,6 +338,11 @@ static void ice_dcbnl_set_pfc_cfg(struct net_device *netdev, int prio, u8 set)
 	if (prio >= ICE_MAX_USER_PRIORITY)
 		return;
 
+	if (pf->lag && pf->lag->bonded) {
+		netdev_err(netdev, "DCB changes not allowed when in a bond\n");
+		return;
+	}
+
 	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	new_cfg->pfc.pfccap = pf->hw.func_caps.common_cap.maxtc;
@@ -379,6 +399,11 @@ static u8 ice_dcbnl_setstate(struct net_device *netdev, u8 state)
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return ICE_DCB_NO_HW_CHG;
 
+	if (pf->lag && pf->lag->bonded) {
+		netdev_err(netdev, "DCB changes not allowed when in a bond\n");
+		return ICE_DCB_NO_HW_CHG;
+	}
+
 	/* Nothing to do */
 	if (!!state == test_bit(ICE_FLAG_DCB_ENA, pf->flags))
 		return ICE_DCB_NO_HW_CHG;
@@ -451,6 +476,11 @@ ice_dcbnl_set_pg_tc_cfg_tx(struct net_device *netdev, int tc,
 	if (tc >= ICE_MAX_TRAFFIC_CLASS)
 		return;
 
+	if (pf->lag && pf->lag->bonded) {
+		netdev_err(netdev, "DCB changes not allowed when in a bond\n");
+		return;
+	}
+
 	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	/* prio_type, bwg_id and bw_pct per UP are not supported */
@@ -505,6 +535,11 @@ ice_dcbnl_set_pg_bwg_cfg_tx(struct net_device *netdev, int pgid, u8 bw_pct)
 	if (pgid >= ICE_MAX_TRAFFIC_CLASS)
 		return;
 
+	if (pf->lag && pf->lag->bonded) {
+		netdev_err(netdev, "DCB changes not allowed when in a bond\n");
+		return;
+	}
+
 	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	new_cfg->etscfg.tcbwtable[pgid] = bw_pct;
@@ -725,6 +760,11 @@ static int ice_dcbnl_setapp(struct net_device *netdev, struct dcb_app *app)
 		return -EINVAL;
 	}
 
+	if (pf->lag && pf->lag->bonded) {
+		netdev_err(netdev, "DCB changes not allowed when in a bond\n");
+		return -EINVAL;
+	}
+
 	max_tc = pf->hw.func_caps.common_cap.maxtc;
 	if (app->priority >= max_tc) {
 		netdev_err(netdev, "TC %d out of range, max TC %d\n",
@@ -836,6 +876,11 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 		return -EINVAL;
 	}
 
+	if (pf->lag && pf->lag->bonded) {
+		netdev_err(netdev, "DCB changes not allowed when in a bond\n");
+		return -EINVAL;
+	}
+
 	mutex_lock(&pf->tc_mutex);
 	old_cfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 
@@ -937,6 +982,11 @@ static u8 ice_dcbnl_cee_set_all(struct net_device *netdev)
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return ICE_DCB_NO_HW_CHG;
 
+	if (pf->lag && pf->lag->bonded) {
+		netdev_err(netdev, "DCB changes not allowed when in a bond\n");
+		return ICE_DCB_NO_HW_CHG;
+	}
+
 	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	mutex_lock(&pf->tc_mutex);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
