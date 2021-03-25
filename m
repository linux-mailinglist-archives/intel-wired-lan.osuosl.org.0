Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F19A349C81
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7B0040F7D;
	Thu, 25 Mar 2021 22:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GOq5Zdn6YgOa; Thu, 25 Mar 2021 22:45:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E73440F78;
	Thu, 25 Mar 2021 22:45:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A99B1BF909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D897F84B59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TAO4X-_3cRDt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4178184B54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
IronPort-SDR: By4Sxx8qXoNbCfnY0fXW9VR5/7sqKdR866Lhb6KDwlb0g6Kia8CI00zRy5c90IDeMyIRM8wK3E
 0SolBTKQ5siQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031240"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031240"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:01 -0700
IronPort-SDR: dam0G04VrbuFecy5/AaIGJSRBt8T7s8VyGHaovtC472w8eR7wNb8DArKTNadYH7i+/RfK1NnJk
 SduKt2lyUfSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251368"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:10 -0700
Message-Id: <20210325223517.17722-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 07/14] ice: Fix error return codes in
 ice_set_link_ksettings
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

Return more appropriate error codes so that the right error
message is communicated to the user by ethtool.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 989b0b0e3cad..643012b0cc67 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2212,7 +2212,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	pi = np->vsi->port_info;
 
 	if (!pi)
-		return -EOPNOTSUPP;
+		return -EIO;
 
 	if (pi->phy.media_type != ICE_MEDIA_BASET &&
 	    pi->phy.media_type != ICE_MEDIA_FIBER &&
@@ -2229,7 +2229,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
 				     phy_caps, NULL);
 	if (status) {
-		err = -EAGAIN;
+		err = -EIO;
 		goto done;
 	}
 
@@ -2252,7 +2252,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 			   __ETHTOOL_LINK_MODE_MASK_NBITS)) {
 		if (!test_bit(ICE_FLAG_LINK_LENIENT_MODE_ENA, pf->flags))
 			netdev_info(netdev, "The selected speed is not supported by the current media. Please select a link speed that is supported by the current media.\n");
-		err = -EINVAL;
+		err = -EOPNOTSUPP;
 		goto done;
 	}
 
@@ -2304,7 +2304,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	pi->phy.get_link_info = true;
 	status = ice_get_link_status(pi, &linkup);
 	if (status) {
-		err = -EAGAIN;
+		err = -EIO;
 		goto done;
 	}
 
@@ -2335,7 +2335,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	/* check if there is a PHY type for the requested advertised speed */
 	if (!(phy_type_low || phy_type_high)) {
 		netdev_info(netdev, "The selected speed is not supported by the current media. Please select a link speed that is supported by the current media.\n");
-		err = -EAGAIN;
+		err = -EOPNOTSUPP;
 		goto done;
 	}
 
@@ -2359,7 +2359,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 					      pf->nvm_phy_type_lo;
 		} else {
 			netdev_info(netdev, "The selected speed is not supported by the current media. Please select a link speed that is supported by the current media.\n");
-			err = -EAGAIN;
+			err = -EOPNOTSUPP;
 			goto done;
 		}
 	}
@@ -2378,7 +2378,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	status = ice_aq_set_phy_cfg(&pf->hw, pi, &config, NULL);
 	if (status) {
 		netdev_info(netdev, "Set phy config failed,\n");
-		err = -EAGAIN;
+		err = -EIO;
 		goto done;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
