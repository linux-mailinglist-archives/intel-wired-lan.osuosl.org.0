Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C10BA7075B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 00:59:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57E80842B9;
	Wed, 17 May 2023 22:59:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57E80842B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684364363;
	bh=rOzFcsUTokBoWJpy/VCnfaIaeW98BwQc2x4PozTVJKA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ScGt4KuTimmXQDm6Xn0txVZ4Dogjtu53eWLsxfgb7G4cwIy7fAMmgCle9k4Y9r7f9
	 MayDl2o0UoqE3qTZLxA43BrL7hqTZQWgBj+XaSpt8EJNMa3jnXSmQ3+c7zUaPY2WIs
	 qofKELZd3u7Ipcv6WlqP+u7/ALOEJ8D33lp6x5+IqvCXpIVhEpHGtCB3QnRE2VtI+C
	 5U7nZ85UDpJ5uIcbKjycUb0aM4+kxpZMJn9uG4UmE7XSdbQJQW4BqRI5P1D7A/ZmFV
	 5DC7r7lNazI1B6NH1kB+ryvEUMRhtkRphn5TYzGeLwMNTSCCuoQGKuL5oX6v5jm+CW
	 WCmR1mHRfLImg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 52WHNyo00f7S; Wed, 17 May 2023 22:59:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22E4C81E14;
	Wed, 17 May 2023 22:59:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22E4C81E14
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 780B61BF47A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:59:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 423C140145
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 423C140145
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7ptvoNsVC9W for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 22:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 675CC42A3E
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 675CC42A3E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="355078643"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="355078643"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 15:58:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="876201327"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="876201327"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 15:58:49 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 16:00:25 -0700
Message-Id: <20230517230028.321350-8-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517230028.321350-1-david.m.ertman@intel.com>
References: <20230517230028.321350-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684364333; x=1715900333;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=To1jULRIEN587eHLi5xvYA5GhRyf0KNU4NYNMjg97ok=;
 b=ez/XVbsVQkMoPqtl54fuvANlj5/w23+6JP+tkjGqlsXO5cwN1pxqmCg5
 CRvlCc+gQbqehuN9bcEji7Ir/uZTDcURaw5GsT7VozYPk2fuCUIJy6DMG
 41ZS9mTRKUz6i2wNBaFuZOi0S4CQdNiIfEtHc11117CTOmZic3Ngh3x4l
 FTxczDoL3kTNP3h3ZUGIGQRF8AZFQpkBJycHIk3kTFnZMVlL6xOiLTIjv
 V7ae9VTu2mPIbkDxPXKzIB6HG3QvWFT2DZ7utsu+KdgAM22n/XsmaHDAZ
 w6IgLM4PiVtYTFNnpAn5Rmv1wG3ythnDOuTX3nYq9aCT/PAcQpy07xMgQ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ez/XVbsV
Subject: [Intel-wired-lan] [PATCH iwl-next v6 07/10] ice: support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Code for supporting removal of the PF driver (NETDEV_UNREGISTER) events for
both when the bond has the primary interface as active and when failed over
to thew secondary interface.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 47 ++++++++++++++++++++----
 1 file changed, 40 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 1e9afe5630ff..522d9e121e0a 100644
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
