Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A62EF7286D9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 20:05:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BABF61539;
	Thu,  8 Jun 2023 18:05:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BABF61539
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686247544;
	bh=Ua+kHvy45WhwpstgFHuv+artDU2oBea2GGp7SZhjvN0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xd5vVj34JDWhITI4vYq3Nj9jAsb1OjQPsV6q9+FlJ2ldLnGpr/hZ3Regr2PufTaIP
	 KPGszdZQaEn/rxm/U9MosIcqyKKdyNv1T9b8rZ578xBj4zMCnUK9gIkePhquiXLnkz
	 g88gkKizbzzewwyhfj5XkX005uqT1nyskjlwN/u7kBt/LA7hpJ6dCIZjtgMG5Nvr1U
	 SHPMKuEskmPjGpWvfW7elxXSQYqdnBLU24tthvM0lmcvtmfWQ6lOWLu0O8rYKV++9O
	 FPnpe+maBIvhmr5P6SjE5c2+fwOcFOISFCGy6zflurhCms7RnTX9MUQdoYHqCmHi3E
	 3z8TzT/ZwHUiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h8Jlnj--Fle0; Thu,  8 Jun 2023 18:05:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CA6F61502;
	Thu,  8 Jun 2023 18:05:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CA6F61502
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E95C21BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1B57423E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:05:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1B57423E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6l2bl-oR3FBh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 18:05:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0397642099
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0397642099
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:05:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="385738741"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="385738741"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 11:04:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="775187932"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="775187932"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 11:04:38 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Jun 2023 11:06:15 -0700
Message-Id: <20230608180618.574171-8-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230608180618.574171-1-david.m.ertman@intel.com>
References: <20230608180618.574171-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686247506; x=1717783506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lM9SwY5KOSOermZaDJOkhj5mjxN0pcbQaCxUCTCPM+M=;
 b=krTRtCW2SJkUuGMrqeUm0S97o3lV1dkYGgsNOttszyYf6oUp9EpPGetp
 nbgyuPaLtPnnU4kd5gax2R28yh0VV504jhNEGDqUoloWba4g9VSS/BiwO
 6hG80mZAcXH7daesbWp1DcRiBowpwn/9cYMQUaQ6N6+4zWn4VRPliXia6
 b06nzIqFrhEEGx1V2jOSOfMw8qNDwLPu0pd3UbJ+/8/QmcSLYyllAi0m5
 m1YljLUbJSDP+EgIs3/1RLItL4kYlZr0Esqsx5c23VtzVvpjtwWC0osh/
 7So8A8WxlzUkgreT+ujU/18l0cOojDX6w9K4USQBKgsAoNRK33BMOj+e7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=krTRtCW2
Subject: [Intel-wired-lan] [PATCH iwl-next v3 07/10] ice: support
 non-standard teardown of bond interface
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
Cc: netdev@vger.kernel.org, daniel.machon@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Code for supporting removal of the PF driver (NETDEV_UNREGISTER) events for
both when the bond has the primary interface as active and when failed over
to thew secondary interface.

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 47 ++++++++++++++++++++----
 1 file changed, 40 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 1ef9c849f79a..bd64f22631d6 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -1226,15 +1226,16 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 		if (!primary_lag && lag->primary)
 			primary_lag = lag;
 
-		if (primary_lag) {
-			if (!lag->primary) {
-				ice_lag_set_swid(0, lag, false);
-			} else {
+		if (!lag->primary) {
+			ice_lag_set_swid(0, lag, false);
+		} else {
+			if (primary_lag && lag->primary) {
 				ice_lag_primary_swid(lag, false);
 				ice_lag_del_prune_list(primary_lag, lag->pf);
 			}
-			ice_lag_cfg_cp_fltr(lag, false);
 		}
+		/* remove filter for control packets */
+		ice_lag_cfg_cp_fltr(lag, false);
 	}
 }
 
@@ -1442,6 +1443,38 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 static void
 ice_lag_unregister(struct ice_lag *lag, struct net_device *event_netdev)
 {
+	struct ice_netdev_priv *np;
+	struct ice_pf *event_pf;
+	struct ice_lag *p_lag;
+
+	p_lag = ice_lag_find_primary(lag);
+	np = netdev_priv(event_netdev);
+	event_pf = np->vsi->back;
+
+	if (p_lag) {
+		if (p_lag->active_port != p_lag->pf->hw.port_info->lport &&
+		    p_lag->active_port != ICE_LAG_INVALID_PORT) {
+			struct ice_hw *active_hw;
+
+			active_hw = ice_lag_find_hw_by_lport(lag,
+							     p_lag->active_port);
+			if (active_hw)
+				ice_lag_reclaim_vf_nodes(p_lag, active_hw);
+			lag->active_port = ICE_LAG_INVALID_PORT;
+		}
+	}
+
+	/* primary processing for primary */
+	if (lag->primary && lag->netdev == event_netdev)
+		ice_lag_primary_swid(lag, false);
+
+	/* primary processing for secondary */
+	if (lag->primary && lag->netdev != event_netdev)
+		ice_lag_del_prune_list(lag, event_pf);
+
+	/* secondary processing for secondary */
+	if (!lag->primary && lag->netdev == event_netdev)
+		ice_lag_set_swid(0, lag, false);
 }
 
 /**
@@ -1487,8 +1520,8 @@ static void ice_lag_process_event(struct work_struct *work)
 	case NETDEV_UNREGISTER:
 		if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG)) {
 			netdev = lag_work->info.bonding_info.info.dev;
-			if (netdev == lag_work->lag->netdev &&
-			    lag_work->lag->bonded)
+			if ((netdev == lag_work->lag->netdev ||
+			     lag_work->lag->primary) && lag_work->lag->bonded)
 				ice_lag_unregister(lag_work->lag, netdev);
 		}
 		break;
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
