Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE507075B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 00:59:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26BC384357;
	Wed, 17 May 2023 22:59:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26BC384357
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684364359;
	bh=eK/gwn+lvaAozKAF5Ir3sYn7U+FYSBWCsUNbmhDQato=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IX9p8sap2scpLApVCa3/Y9z5QHitol4e4VqWAs/GvC8+PHhykPoL0x804HCQgWpqS
	 kRO7yRlKzWN8wzgVHDeQAjGlf6JZVEGN7V3Aoh9OM8ot91F5EagXjnTLnJ/UK1o0m0
	 cjvjPJ68h7dcXJKNrUHzJk0dmggNUR/NEgOm2kxAXyaCjtAnRTiClGXQjVQIfwxZNp
	 KUYohPy8x/LgF8+KlNOqm/IG4RahcO7gmDp6vmKnz7f7JihzXnNmzVdDDnu4BryUdK
	 cqv9mdLBu+jmk3h7dYGRPhBDeH6iNgvw3gNapTMKj9N6nvvZzmVsC8pNNBU353sTSI
	 We+ft1IFtLZqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 91gawUHpYvMs; Wed, 17 May 2023 22:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D174F81E14;
	Wed, 17 May 2023 22:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D174F81E14
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66DBC1BF47A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27CD542A37
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27CD542A37
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ln76gE7_i_EN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 22:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C41940145
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C41940145
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="355078645"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="355078645"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 15:58:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="876201329"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="876201329"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 15:58:49 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 16:00:27 -0700
Message-Id: <20230517230028.321350-10-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517230028.321350-1-david.m.ertman@intel.com>
References: <20230517230028.321350-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684364334; x=1715900334;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UHYUnqlZDJOxuBTVLrNqVYdWOOxsD3Au1UFIgRJyCPk=;
 b=DsNDEIrN/T5XHoeS3c9KDjbIiJjUOxRvIFjxTprxD05qlReTCI6jFt3y
 kwi0cAGorh3pwfDi64SvgUWwV/Gylf8AnOjC/84zuKrY+PW6I9GjcDAAn
 ZzznxdYYtZdDd5VVRHDWXdTQ+PnduwC75JcSBehHYEI2TT0wC4VwTv3Wm
 SGCCTf3K5YUs6TD+Upd1B2WzEqXdvXnF/eJqhXKXE+kiHzEOIESdwZwBT
 iMnfd1nzBrSx7WY8j3bZvcBEHkBjLHASRBFyRi0yzyYOJm2fR4TfU7Ew2
 wuqSJb5cvhe2deLhr3g2zH9UPaK3Z5OJqQbaPCStrKyUA2+/lGW/Z3ZIN
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DsNDEIrN
Subject: [Intel-wired-lan] [PATCH iwl-next v6 09/10] ice: enforce no DCB
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To support SRIOV LAG, the driver cannot allow changes to an interface's DCB
configuration when in a bond.  This would break the ability to modify
interfaces Tx scheduling for fail-over interfaces.

Block kernel generated DCB config events when in a bond.

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
