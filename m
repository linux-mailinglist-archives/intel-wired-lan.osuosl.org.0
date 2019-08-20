Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED7096756
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2019 19:21:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AAEF62287D;
	Tue, 20 Aug 2019 17:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gwwmrLzqiA6Z; Tue, 20 Aug 2019 17:21:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E61BE228B4;
	Tue, 20 Aug 2019 17:21:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66CD11BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 17:21:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6351B2287D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 17:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sh6PPoDC-Hn4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2019 17:21:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 7DFF622855
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 17:21:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 10:21:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="189928437"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga002.jf.intel.com with ESMTP; 20 Aug 2019 10:21:17 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Aug 2019 01:52:37 -0700
Message-Id: <20190820085237.35579-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next v3 04/14] ice: fix set pause param
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
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 27 +++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)
---
v3:
 - Use kzalloc/kfree instead of devm_kzalloc/devm_kzfree

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 1fe048cfb737..0099cfb21860 100644
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
@@ -2880,7 +2882,30 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 		return -EOPNOTSUPP;
 	}
 
-	if (pause->autoneg != (hw_link_info->an_info & ICE_AQ_AN_COMPLETED)) {
+	/* Get pause param reports configured and negotiated flow control pause
+	 * when ETHTOOL_GLINKSETTINGS is defined. Since ETHTOOL_GLINKSETTINGS is
+	 * defined get pause param pause->autoneg reports SW configured setting,
+	 * so compare pause->autoneg with SW configured to prevent the user from
+	 * using set pause param to chance autoneg.
+	 */
+	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
+	if (!pcaps)
+		return -ENOMEM;
+
+	/* Get current PHY config */
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_SW_CFG, pcaps,
+				     NULL);
+	if (status) {
+		kfree(pcaps);
+		return -EIO;
+	}
+
+	is_an = ((pcaps->caps & ICE_AQC_PHY_AN_MODE) ?
+			AUTONEG_ENABLE : AUTONEG_DISABLE);
+
+	kfree(pcaps);
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
