Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F10CA21A49A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 18:20:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADAE28915E;
	Thu,  9 Jul 2020 16:20:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AjdKTYKPg1UF; Thu,  9 Jul 2020 16:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16C8F88C23;
	Thu,  9 Jul 2020 16:20:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B04851BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AC3FC886AA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wlDWn3SC-hJd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D589888ACB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
IronPort-SDR: AFUkgUMXTj13GaoMqYGiPjg7yNgOKpA8xz08Ja0OfIMMgROspUH2CoeT+X/oD6+dLnAsX5UnIP
 FgQ3MMe0RIqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="136252759"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="136252759"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 09:20:11 -0700
IronPort-SDR: 5jejLbBUY62zG9HpE1v3KRVmGoTuRKpejpL2ecESXOIhugjbIFPUex/BtqQ5nZWdaOpoRookOb
 kEr/gaEgVtiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="280352070"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 09:20:07 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 09:16:10 -0700
Message-Id: <20200709161614.61098-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S49 11/15] ice: update reporting of
 autoneg capabilities
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

Firmware now reports AN28, AN32, and AN73. Add a helper and check these new
values and report PHY autoneg capability.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  3 +++
 drivers/net/ethernet/intel/ice/ice_common.c     | 15 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c    |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_main.c       |  8 ++++++--
 5 files changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 9a57fabc449f..59f876300e96 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -963,6 +963,9 @@ struct ice_aqc_get_phy_caps_data {
 #define ICE_AQC_PHY_CAPS_MASK				ICE_M(0xff, 0)
 	u8 low_power_ctrl;
 #define ICE_AQC_PHY_EN_D3COLD_LOW_POWER_AUTONEG		BIT(0)
+#define ICE_AQC_PHY_AN_EN_CLAUSE28			BIT(1)
+#define ICE_AQC_PHY_AN_EN_CLAUSE73			BIT(2)
+#define ICE_AQC_PHY_AN_EN_CLAUSE37			BIT(3)
 	__le16 eee_cap;
 #define ICE_AQC_PHY_EEE_EN_100BASE_TX			BIT(0)
 #define ICE_AQC_PHY_EEE_EN_1000BASE_T			BIT(1)
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f5b92a17c5d6..6a64d6e77357 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4237,3 +4237,18 @@ ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 
 	return status;
 }
+
+/**
+ * ice_is_phy_caps_an_enabled - check if PHY capabilities autoneg is enabled
+ * @caps: get PHY capability data
+ */
+bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps)
+{
+	if (caps->caps & ICE_AQC_PHY_AN_MODE ||
+	    caps->low_power_ctrl & (ICE_AQC_PHY_AN_EN_CLAUSE28 |
+				    ICE_AQC_PHY_AN_EN_CLAUSE73 |
+				    ICE_AQC_PHY_AN_EN_CLAUSE37))
+		return true;
+
+	return false;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 1b8b02bb4399..33a681a75439 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -104,6 +104,7 @@ bool ice_fw_supports_link_override(struct ice_hw *hw);
 enum ice_status
 ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 			      struct ice_port_info *pi);
+bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps);
 
 enum ice_fc_mode ice_caps_to_fc_mode(u8 caps);
 enum ice_fec_mode ice_caps_to_fec_mode(u8 caps, u8 fec_options);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 60abd261b8bf..06b93e97892d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2987,8 +2987,8 @@ ice_get_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	if (status)
 		goto out;
 
-	pause->autoneg = ((pcaps->caps & ICE_AQC_PHY_AN_MODE) ?
-			AUTONEG_ENABLE : AUTONEG_DISABLE);
+	pause->autoneg = ice_is_phy_caps_an_enabled(pcaps) ? AUTONEG_ENABLE :
+							     AUTONEG_DISABLE;
 
 	if (dcbx_cfg->pfc.pfcena)
 		/* PFC enabled so report LFC as off */
@@ -3056,8 +3056,8 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 		return -EIO;
 	}
 
-	is_an = ((pcaps->caps & ICE_AQC_PHY_AN_MODE) ?
-			AUTONEG_ENABLE : AUTONEG_DISABLE);
+	is_an = ice_is_phy_caps_an_enabled(pcaps) ? AUTONEG_ENABLE :
+						    AUTONEG_DISABLE;
 
 	kfree(pcaps);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a44273769264..7ea99f164d18 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -612,6 +612,7 @@ static void ice_print_topo_conflict(struct ice_vsi *vsi)
 void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
 {
 	struct ice_aqc_get_phy_caps_data *caps;
+	const char *an_advertised;
 	enum ice_status status;
 	const char *fec_req;
 	const char *speed;
@@ -710,6 +711,7 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
 	caps = kzalloc(sizeof(*caps), GFP_KERNEL);
 	if (!caps) {
 		fec_req = "Unknown";
+		an_advertised = "Unknown";
 		goto done;
 	}
 
@@ -718,6 +720,8 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
 	if (status)
 		netdev_info(vsi->netdev, "Get phy capability failed.\n");
 
+	an_advertised = ice_is_phy_caps_an_enabled(caps) ? "On" : "Off";
+
 	if (caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_528_REQ ||
 	    caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_544_REQ)
 		fec_req = "RS-FEC";
@@ -730,8 +734,8 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
 	kfree(caps);
 
 done:
-	netdev_info(vsi->netdev, "NIC Link is up %sbps Full Duplex, Requested FEC: %s, Negotiated FEC: %s, Autoneg: %s, Flow Control: %s\n",
-		    speed, fec_req, fec, an, fc);
+	netdev_info(vsi->netdev, "NIC Link is up %sbps Full Duplex, Requested FEC: %s, Negotiated FEC: %s, Autoneg Advertised: %s, Autoneg Negotiated: %s, Flow Control: %s\n",
+		    speed, fec_req, fec, an_advertised, an, fc);
 	ice_print_topo_conflict(vsi);
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
