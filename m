Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6323C731DBD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 18:28:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3D308402F;
	Thu, 15 Jun 2023 16:28:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3D308402F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686846504;
	bh=et22oz8X3QHhIDmQZjoKy0YYRDSAsftdB34JXldWGW0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EyxOaz+qw4NI43NYINUWdY7k9qldjNmxOVMz96DpHsv2iYwu4dTZYIQB32z7rDJqf
	 9FQ2CUN8uiRBYnRMLyFNn1+twxmbtZ6Xjd7oxsDGA/SVSBRUTrRfPtiFrua+Q81G+S
	 B+1CM7lC91u8mkpN6Ez908o75qzPSUhd/tSLSb+mOQPl3zpj+bAD0Crx1/PNd/1fOU
	 syPSVwjHXBDJjcJ+64mCVG8Xmh4XIbRJpRnC88lRQnYoZTi6z5jPH3Gt2dchZplM8v
	 26V5r6OaMMsCKzW3Lc5nzA9CSIBmcExV7ZCUo7fB6aWQHAhgXN6iaC9nrGZDsTEcBz
	 NF4+3klQdd09g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id syORmV8TPPqD; Thu, 15 Jun 2023 16:28:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BADC83F2B;
	Thu, 15 Jun 2023 16:28:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BADC83F2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E507E1BF23B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B820F60EF1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B820F60EF1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KlKzbT9upkSE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 16:27:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D1BC60BE8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D1BC60BE8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="445336204"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="445336204"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 09:27:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="712513720"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="712513720"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 09:27:52 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Jun 2023 09:29:31 -0700
Message-Id: <20230615162932.762756-10-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615162932.762756-1-david.m.ertman@intel.com>
References: <20230615162932.762756-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686846476; x=1718382476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fCymMh11BDM0sIUq78o1Kso+F0PGaNZuR5UarBdn8Jc=;
 b=CSSCZAfQ/a1N/JYsqcxhINsFZcW+iUKRsuZv64niax7O90DC/JFyqIhH
 pFWkmT0uqYtoNIsQnpJjmVL3XujlxXubNZPRuqQwuDk2IICQTSo78x6vT
 TmYl0xFpuGONj13Fqq88KMZOxgAlj7ImdKnPsqyPO5g6TU8UDUT4AdqQX
 HDMHJYqwAn9uXEn4EEO3b1yPV5l0lFPzl+2jPfU9qydLKKqtWhpunpkoB
 IcfLisDilZR7hZ4Dr+G8WC8y4FW0hsr1irf55YjxoioHzWLoUKoDnIsZg
 /3gQuperR7n5UaXq4jAiAyhARd0UIdzMX+mSYPZFdbPCqGYudMlIO2xIW
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CSSCZAfQ
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
