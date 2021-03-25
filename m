Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81600349C7F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A0CF84B59;
	Thu, 25 Mar 2021 22:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bKUll3mZmQT4; Thu, 25 Mar 2021 22:45:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22D9B84B53;
	Thu, 25 Mar 2021 22:45:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A48B51BF909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D5A784B56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id klrGBh0O8N9d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0D4B84AF9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:03 +0000 (UTC)
IronPort-SDR: edu3plT2JvIS4XdzrfTYZcPluEf87kHYfQnXKJAc56I8eBYpdSMD78pha5Bdd9FFCVWUGDB1et
 XMvKj9hvz8Vw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031238"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031238"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:01 -0700
IronPort-SDR: wIU/f9P92hMqOHrw4WB37GvQK9DatI0XOtbtdhPweMninF/GRCvdPxgeUs+yS6VKN3D2BPa4NL
 6CBDwjzDmKCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251367"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:09 -0700
Message-Id: <20210325223517.17722-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 06/14] ice: Rename a couple of
 variables
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

In ice_set_link_ksettings, change 'abilities' to 'phy_caps' and 'p' to
'pi'. This is more consistent with similar usages elsewhere in the
driver.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 50 ++++++++++----------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b942ff36f772..989b0b0e3cad 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2196,12 +2196,12 @@ ice_set_link_ksettings(struct net_device *netdev,
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ethtool_link_ksettings safe_ks, copy_ks;
-	struct ice_aqc_get_phy_caps_data *abilities;
 	u8 autoneg, timeout = TEST_SET_BITS_TIMEOUT;
+	struct ice_aqc_get_phy_caps_data *phy_caps;
 	struct ice_aqc_set_phy_cfg_data config;
 	u16 adv_link_speed, curr_link_speed;
 	struct ice_pf *pf = np->vsi->back;
-	struct ice_port_info *p;
+	struct ice_port_info *pi;
 	u8 autoneg_changed = 0;
 	enum ice_status status;
 	u64 phy_type_high = 0;
@@ -2209,25 +2209,25 @@ ice_set_link_ksettings(struct net_device *netdev,
 	int err = 0;
 	bool linkup;
 
-	p = np->vsi->port_info;
+	pi = np->vsi->port_info;
 
-	if (!p)
+	if (!pi)
 		return -EOPNOTSUPP;
 
-	if (p->phy.media_type != ICE_MEDIA_BASET &&
-	    p->phy.media_type != ICE_MEDIA_FIBER &&
-	    p->phy.media_type != ICE_MEDIA_BACKPLANE &&
-	    p->phy.media_type != ICE_MEDIA_DA &&
-	    p->phy.link_info.link_info & ICE_AQ_LINK_UP)
+	if (pi->phy.media_type != ICE_MEDIA_BASET &&
+	    pi->phy.media_type != ICE_MEDIA_FIBER &&
+	    pi->phy.media_type != ICE_MEDIA_BACKPLANE &&
+	    pi->phy.media_type != ICE_MEDIA_DA &&
+	    pi->phy.link_info.link_info & ICE_AQ_LINK_UP)
 		return -EOPNOTSUPP;
 
-	abilities = kzalloc(sizeof(*abilities), GFP_KERNEL);
-	if (!abilities)
+	phy_caps = kzalloc(sizeof(*phy_caps), GFP_KERNEL);
+	if (!phy_caps)
 		return -ENOMEM;
 
 	/* Get the PHY capabilities based on media */
-	status = ice_aq_get_phy_caps(p, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
-				     abilities, NULL);
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
+				     phy_caps, NULL);
 	if (status) {
 		err = -EAGAIN;
 		goto done;
@@ -2289,26 +2289,26 @@ ice_set_link_ksettings(struct net_device *netdev,
 	 * configuration is initialized during probe from PHY capabilities
 	 * software mode, and updated on set PHY configuration.
 	 */
-	memcpy(&config, &p->phy.curr_user_phy_cfg, sizeof(config));
+	memcpy(&config, &pi->phy.curr_user_phy_cfg, sizeof(config));
 
 	config.caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
 
 	/* Check autoneg */
-	err = ice_setup_autoneg(p, &safe_ks, &config, autoneg, &autoneg_changed,
+	err = ice_setup_autoneg(pi, &safe_ks, &config, autoneg, &autoneg_changed,
 				netdev);
 
 	if (err)
 		goto done;
 
 	/* Call to get the current link speed */
-	p->phy.get_link_info = true;
-	status = ice_get_link_status(p, &linkup);
+	pi->phy.get_link_info = true;
+	status = ice_get_link_status(pi, &linkup);
 	if (status) {
 		err = -EAGAIN;
 		goto done;
 	}
 
-	curr_link_speed = p->phy.link_info.link_speed;
+	curr_link_speed = pi->phy.link_info.link_speed;
 	adv_link_speed = ice_ksettings_find_adv_link_speed(ks);
 
 	/* If speed didn't get set, set it to what it currently is.
@@ -2327,7 +2327,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	}
 
 	/* save the requested speeds */
-	p->phy.link_info.req_speeds = adv_link_speed;
+	pi->phy.link_info.req_speeds = adv_link_speed;
 
 	/* set link and auto negotiation so changes take effect */
 	config.caps |= ICE_AQ_PHY_ENA_LINK;
@@ -2343,9 +2343,9 @@ ice_set_link_ksettings(struct net_device *netdev,
 	 * for set PHY configuration
 	 */
 	config.phy_type_high = cpu_to_le64(phy_type_high) &
-			abilities->phy_type_high;
+			phy_caps->phy_type_high;
 	config.phy_type_low = cpu_to_le64(phy_type_low) &
-			abilities->phy_type_low;
+			phy_caps->phy_type_low;
 
 	if (!(config.phy_type_high || config.phy_type_low)) {
 		/* If there is no intersection and lenient mode is enabled, then
@@ -2365,7 +2365,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	}
 
 	/* If link is up put link down */
-	if (p->phy.link_info.link_info & ICE_AQ_LINK_UP) {
+	if (pi->phy.link_info.link_info & ICE_AQ_LINK_UP) {
 		/* Tell the OS link is going down, the link will go
 		 * back up when fw says it is ready asynchronously
 		 */
@@ -2375,7 +2375,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	}
 
 	/* make the aq call */
-	status = ice_aq_set_phy_cfg(&pf->hw, p, &config, NULL);
+	status = ice_aq_set_phy_cfg(&pf->hw, pi, &config, NULL);
 	if (status) {
 		netdev_info(netdev, "Set phy config failed,\n");
 		err = -EAGAIN;
@@ -2383,9 +2383,9 @@ ice_set_link_ksettings(struct net_device *netdev,
 	}
 
 	/* Save speed request */
-	p->phy.curr_user_speed_req = adv_link_speed;
+	pi->phy.curr_user_speed_req = adv_link_speed;
 done:
-	kfree(abilities);
+	kfree(phy_caps);
 	clear_bit(ICE_CFG_BUSY, pf->state);
 
 	return err;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
