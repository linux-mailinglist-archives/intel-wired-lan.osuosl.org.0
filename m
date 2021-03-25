Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E56C349C74
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A707560782;
	Thu, 25 Mar 2021 22:45:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wb4iUiS-CuIc; Thu, 25 Mar 2021 22:45:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A285F60781;
	Thu, 25 Mar 2021 22:45:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 906161BF909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D5CA84B56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fX1KGWqbwEMn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BEB5984AF9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:02 +0000 (UTC)
IronPort-SDR: JdVWgMmHoAIK1v2V+Ikgg9XyJsSLbnc/fzW6lrI+rZrzWVyCWEFyx8IufzZpFDk0Cnk3q0IxBI
 cA2PMDJy7mZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031235"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031235"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:01 -0700
IronPort-SDR: ufyMN66/xpkf2O12vqJQmU3mcIBgjFRpsJVUQoa7uzjecjbWbEILS2vsCfdLVFAK245M1qYMIa
 l+FBGaCWBEPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251366"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:08 -0700
Message-Id: <20210325223517.17722-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 05/14] ice: Remove unnecessary checker
 loop
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

The loop checking for PF VSI doesn't make any sense. The VSI type
backing the netdev passed to ice_set_link_ksettings will always be
of type ICE_PF_VSI. Remove it.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index af02bbbc3647..b942ff36f772 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2198,8 +2198,8 @@ ice_set_link_ksettings(struct net_device *netdev,
 	struct ethtool_link_ksettings safe_ks, copy_ks;
 	struct ice_aqc_get_phy_caps_data *abilities;
 	u8 autoneg, timeout = TEST_SET_BITS_TIMEOUT;
-	u16 adv_link_speed, curr_link_speed, idx;
 	struct ice_aqc_set_phy_cfg_data config;
+	u16 adv_link_speed, curr_link_speed;
 	struct ice_pf *pf = np->vsi->back;
 	struct ice_port_info *p;
 	u8 autoneg_changed = 0;
@@ -2214,14 +2214,6 @@ ice_set_link_ksettings(struct net_device *netdev,
 	if (!p)
 		return -EOPNOTSUPP;
 
-	/* Check if this is LAN VSI */
-	ice_for_each_vsi(pf, idx)
-		if (pf->vsi[idx]->type == ICE_VSI_PF) {
-			if (np->vsi != pf->vsi[idx])
-				return -EOPNOTSUPP;
-			break;
-		}
-
 	if (p->phy.media_type != ICE_MEDIA_BASET &&
 	    p->phy.media_type != ICE_MEDIA_FIBER &&
 	    p->phy.media_type != ICE_MEDIA_BACKPLANE &&
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
