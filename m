Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F4A172656
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2020 19:15:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29C4E88012;
	Thu, 27 Feb 2020 18:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KpP+ZV+5FsT8; Thu, 27 Feb 2020 18:15:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 637758800F;
	Thu, 27 Feb 2020 18:15:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9EF601BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C06188020
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dFsWPxh6sCfF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2020 18:15:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 922C288002
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 10:15:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="285408851"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2020 10:15:52 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Feb 2020 10:14:58 -0800
Message-Id: <20200227181505.61720-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227181505.61720-1-anthony.l.nguyen@intel.com>
References: <20200227181505.61720-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S40 08/15] ice: renegotiate link after FW
 DCB on
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

When switching from SW DCB to FW DCB it is necessary
to renegotiate DCBx so that the FW agent can have up
to date information about the DCB settings of the link
partner.

Perform an autoneg restart on the link when activating
FW DCB.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 53 +++++++++++---------
 1 file changed, 29 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index c9c217202046..c67cfae64f2b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1131,6 +1131,33 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 	return err;
 }
 
+/**
+ * ice_nway_reset - restart autonegotiation
+ * @netdev: network interface device structure
+ */
+static int ice_nway_reset(struct net_device *netdev)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_port_info *pi;
+	enum ice_status status;
+
+	pi = vsi->port_info;
+	/* If VSI state is up, then restart autoneg with link up */
+	if (!test_bit(__ICE_DOWN, vsi->back->state))
+		status = ice_aq_set_link_restart_an(pi, true, NULL);
+	else
+		status = ice_aq_set_link_restart_an(pi, false, NULL);
+
+	if (status) {
+		netdev_info(netdev, "link restart failed, err %d aq_err %d\n",
+			    status, pi->hw->adminq.sq_last_status);
+		return -EIO;
+	}
+
+	return 0;
+}
+
 /**
  * ice_get_priv_flags - report device private flags
  * @netdev: network interface device structure
@@ -1264,6 +1291,8 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			status = ice_cfg_lldp_mib_change(&pf->hw, true);
 			if (status)
 				dev_dbg(dev, "Fail to enable MIB change events\n");
+
+			ice_nway_reset(netdev);
 		}
 	}
 	if (test_bit(ICE_FLAG_LEGACY_RX, change_flags)) {
@@ -2775,30 +2804,6 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 	return err;
 }
 
-static int ice_nway_reset(struct net_device *netdev)
-{
-	/* restart autonegotiation */
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
-	struct ice_port_info *pi;
-	enum ice_status status;
-
-	pi = vsi->port_info;
-	/* If VSI state is up, then restart autoneg with link up */
-	if (!test_bit(__ICE_DOWN, vsi->back->state))
-		status = ice_aq_set_link_restart_an(pi, true, NULL);
-	else
-		status = ice_aq_set_link_restart_an(pi, false, NULL);
-
-	if (status) {
-		netdev_info(netdev, "link restart failed, err %d aq_err %d\n",
-			    status, pi->hw->adminq.sq_last_status);
-		return -EIO;
-	}
-
-	return 0;
-}
-
 /**
  * ice_get_pauseparam - Get Flow Control status
  * @netdev: network interface device structure
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
