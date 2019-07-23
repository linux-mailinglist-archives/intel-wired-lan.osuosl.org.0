Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1582F71E03
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 19:54:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DFBC81FAA;
	Tue, 23 Jul 2019 17:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zh-9L-DLU4fu; Tue, 23 Jul 2019 17:54:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E8A94820F7;
	Tue, 23 Jul 2019 17:54:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39B831BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E1EC81E24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XiFXea9bokMa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 17:54:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6E9F981B7D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 10:53:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="344813716"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga005.jf.intel.com with ESMTP; 23 Jul 2019 10:53:58 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 02:24:45 -0700
Message-Id: <20190723092454.3508-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723092454.3508-1-anthony.l.nguyen@intel.com>
References: <20190723092454.3508-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v3 05/15] ice: fix set pause param
 autoneg check
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

From: Paul Greenwalt <paul.greenwalt@intel.com>

When ETHTOOL_GLINKSETTINGS is defined get pause param pause->autoneg
reports SW configured setting, however when not defined get pause param
pause->autoneg reports the link status. Set pause param needs to compare
pause->autoneg with the same source as get pause param to block the user
from changing autoneg with the set pause param option, or the user
may be incorrectly blocked from changing Rx|Tx pause settings.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 28 +++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 1fe048cfb737..ba29aede99ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2856,6 +2856,7 @@ static int
 ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_aqc_get_phy_caps_data *pcaps;
 	struct ice_link_status *hw_link_info;
 	struct ice_pf *pf = np->vsi->back;
 	struct ice_dcbx_cfg *dcbx_cfg;
@@ -2866,6 +2867,7 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	u8 aq_failures;
 	bool link_up;
 	int err = 0;
+	u32 is_an;
 
 	pi = vsi->port_info;
 	hw_link_info = &pi->phy.link_info;
@@ -2880,7 +2882,31 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 		return -EOPNOTSUPP;
 	}
 
-	if (pause->autoneg != (hw_link_info->an_info & ICE_AQ_AN_COMPLETED)) {
+	/* Get pause param reports configured and negotiated flow control pause
+	 * when ETHTOOL_GLINKSETTINGS is defined. Since ETHTOOL_GLINKSETTINGS is
+	 * defined get pause param pause->autoneg reports SW configured setting,
+	 * so compare pause->autoneg with SW configured to prevent the user from
+	 * using set pause param to chance autoneg.
+	 */
+	pcaps = devm_kzalloc(&vsi->back->pdev->dev, sizeof(*pcaps),
+			     GFP_KERNEL);
+	if (!pcaps)
+		return -ENOMEM;
+
+	/* Get current PHY config */
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_SW_CFG, pcaps,
+				     NULL);
+	if (status) {
+		devm_kfree(&vsi->back->pdev->dev, pcaps);
+		return -EIO;
+	}
+
+	is_an = ((pcaps->caps & ICE_AQC_PHY_AN_MODE) ?
+			AUTONEG_ENABLE : AUTONEG_DISABLE);
+
+	devm_kfree(&vsi->back->pdev->dev, pcaps);
+
+	if (pause->autoneg != is_an) {
 		netdev_info(netdev, "To change autoneg please use: ethtool -s <dev> autoneg <on|off>\n");
 		return -EOPNOTSUPP;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
