Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E303757E7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 May 2021 17:51:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BAAB4066B;
	Thu,  6 May 2021 15:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XRsq10eq-64Z; Thu,  6 May 2021 15:51:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67A66405CC;
	Thu,  6 May 2021 15:51:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 106C01BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07AA260DF3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sIcFmlNDnjOK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 15:50:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 70E6E607DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:39 +0000 (UTC)
IronPort-SDR: a/1l1heAED+X9/4SYvPdMCR7O9jhl6C3VEYGdCE1xaZVFi+ioySZ56rxoW2JivPW08Rq1iMA86
 6pGZeBQMf2Lw==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="219389334"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="219389334"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 08:50:36 -0700
IronPort-SDR: zeLBstb0M0BNIXh5a55hlVKJRVaiR/gbs4RQLihBWWXrQ8JXEd6VyekeQ8NW3w9dXyuN0l09Do
 9oGUtyh/49Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="459369495"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2021 08:50:36 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 May 2021 08:40:08 -0700
Message-Id: <20210506154008.12880-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S59 13/13] ice: remove local variable
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

From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

Remove the local variable since it's only used once. Instead, use it
directly.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0034bbe9c9b3..101fa9d06477 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3026,7 +3026,6 @@ static void ice_set_netdev_features(struct net_device *netdev)
  */
 static int ice_cfg_netdev(struct ice_vsi *vsi)
 {
-	struct ice_pf *pf = vsi->back;
 	struct ice_netdev_priv *np;
 	struct net_device *netdev;
 	u8 mac_addr[ETH_ALEN];
@@ -3046,7 +3045,7 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	ice_set_ops(netdev);
 
 	if (vsi->type == ICE_VSI_PF) {
-		SET_NETDEV_DEV(netdev, ice_pf_to_dev(pf));
+		SET_NETDEV_DEV(netdev, ice_pf_to_dev(vsi->back));
 		ether_addr_copy(mac_addr, vsi->port_info->mac.perm_addr);
 		ether_addr_copy(netdev->dev_addr, mac_addr);
 		ether_addr_copy(netdev->perm_addr, mac_addr);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
