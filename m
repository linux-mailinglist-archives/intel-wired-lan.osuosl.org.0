Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA7F573A3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 23:29:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3917C87B84;
	Wed, 26 Jun 2019 21:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mMk2DTiE4YuT; Wed, 26 Jun 2019 21:29:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D267B87B9B;
	Wed, 26 Jun 2019 21:29:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C1A01BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 21:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 65ADD87B84
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 21:29:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lDB4sFjujYHI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 21:28:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D1CE087B96
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 21:28:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 14:28:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,421,1557212400"; d="scan'208";a="188795227"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jun 2019 14:28:47 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Jun 2019 14:28:47 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.250]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.90]) with mapi id 14.03.0439.000;
 Wed, 26 Jun 2019 14:28:47 -0700
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH S22 01/16] ice: add lp_advertising flow control support
Thread-Index: AQHVLEdMMYjyO0TRb0+z6n14egTGUaauc6qw
Date: Wed, 26 Jun 2019 21:28:46 +0000
Message-ID: <9A83C569D64F2541B0B591F2CBA3CC01E96AC525@ORSMSX121.amr.corp.intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjk2YjYyZmMtMzVhYy00ZTk2LWE5OWYtNDM0YzQyYTU1MjA2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRkNCZU4zTHlpNUNYXC9IMVc4QnB0TElzYTB3UWZFeWorNkQ5NWhYeWRKclBNeWorUFBUTXkxUlNnTW10VUhZV0sifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.0.600.7
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S22 01/16] ice: add lp_advertising
 flow control support
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

ACK

Thanks,
Paul

-----Original Message-----
From: Nguyen, Anthony L 
Sent: Wednesday, June 26, 2019 2:20 AM
To: intel-wired-lan@lists.osuosl.org
Cc: Greenwalt, Paul <paul.greenwalt@intel.com>
Subject: [PATCH S22 01/16] ice: add lp_advertising flow control support

From: Paul Greenwalt <paul.greenwalt@intel.com>

Add support for reporting link partner advertising when ETHTOOL_GLINKSETTINGS defined. Get pause param reports the Tx/Rx pause configured, and then ethtool issues ETHTOOL_GSET ioctl and ice_get_settings_link_up reports the negotiated Tx/Rx pause. Negotiated pause frame report per IEEE 802.3-2005 table 288-3.

$ ethtool --show-pause ens6f0
Pause parameters for ens6f0:
Autonegotiate:  on
RX:             on
TX:             on
RX negotiated:  on
TX negotiated:  on

$ ethtool ens6f0
Settings for ens6f0:
        Supported ports: [ FIBRE ]
        Supported link modes:   25000baseCR/Full
        Supported pause frame use: Symmetric
        Supports auto-negotiation: Yes
        Supported FEC modes: None BaseR RS
        Advertised link modes:  25000baseCR/Full
        Advertised pause frame use: Symmetric Receive-only
        Advertised auto-negotiation: Yes
        Advertised FEC modes: None BaseR RS
        Link partner advertised link modes:  Not reported
        Link partner advertised pause frame use: Symmetric
        Link partner advertised auto-negotiation: Yes
        Link partner advertised FEC modes: Not reported
        Speed: 25000Mb/s
        Duplex: Full
        Port: Direct Attach Copper
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: on
        Supports Wake-on: g
        Wake-on: g
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: yes

When ETHTOOL_GLINKSETTINGS is not defined, get pause param reports the negotiated Tx/Rx pause.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 104 +++++++++++++------
 1 file changed, 72 insertions(+), 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 5c9f7a8bfd16..cfe5469b6f17 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1716,6 +1716,7 @@ ice_get_settings_link_up(struct ethtool_link_ksettings *ks,
 			 struct net_device *netdev)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_port_info *pi = np->vsi->port_info;
 	struct ethtool_link_ksettings cap_ksettings;
 	struct ice_link_status *link_info;
 	struct ice_vsi *vsi = np->vsi;
@@ -2040,6 +2041,33 @@ ice_get_settings_link_up(struct ethtool_link_ksettings *ks,
 		break;
 	}
 	ks->base.duplex = DUPLEX_FULL;
+
+	if (link_info->an_info & ICE_AQ_AN_COMPLETED)
+		ethtool_link_ksettings_add_link_mode(ks, lp_advertising,
+						     Autoneg);
+
+	/* Set flow control negotiated Rx/Tx pause */
+	switch (pi->fc.current_mode) {
+	case ICE_FC_FULL:
+		ethtool_link_ksettings_add_link_mode(ks, lp_advertising, Pause);
+		break;
+	case ICE_FC_TX_PAUSE:
+		ethtool_link_ksettings_add_link_mode(ks, lp_advertising, Pause);
+		ethtool_link_ksettings_add_link_mode(ks, lp_advertising,
+						     Asym_Pause);
+		break;
+	case ICE_FC_RX_PAUSE:
+		ethtool_link_ksettings_add_link_mode(ks, lp_advertising,
+						     Asym_Pause);
+		break;
+	case ICE_FC_PFC:
+		/* fall through */
+	default:
+		ethtool_link_ksettings_del_link_mode(ks, lp_advertising, Pause);
+		ethtool_link_ksettings_del_link_mode(ks, lp_advertising,
+						     Asym_Pause);
+		break;
+	}
 }
 
 /**
@@ -2078,9 +2106,12 @@ ice_get_link_ksettings(struct net_device *netdev,
 	struct ice_aqc_get_phy_caps_data *caps;
 	struct ice_link_status *hw_link_info;
 	struct ice_vsi *vsi = np->vsi;
+	enum ice_status status;
+	int err = 0;
 
 	ethtool_link_ksettings_zero_link_mode(ks, supported);
 	ethtool_link_ksettings_zero_link_mode(ks, advertising);
+	ethtool_link_ksettings_zero_link_mode(ks, lp_advertising);
 	hw_link_info = &vsi->port_info->phy.link_info;
 
 	/* set speed and duplex */
@@ -2125,48 +2156,36 @@ ice_get_link_ksettings(struct net_device *netdev,
 	/* flow control is symmetric and always supported */
 	ethtool_link_ksettings_add_link_mode(ks, supported, Pause);
 
-	switch (vsi->port_info->fc.req_mode) {
-	case ICE_FC_FULL:
+	caps = devm_kzalloc(&vsi->back->pdev->dev, sizeof(*caps), GFP_KERNEL);
+	if (!caps)
+		return -ENOMEM;
+
+	status = ice_aq_get_phy_caps(vsi->port_info, false,
+				     ICE_AQC_REPORT_SW_CFG, caps, NULL);
+	if (status) {
+		err = -EIO;
+		goto done;
+	}
+
+	/* Set the advertised flow control based on the PHY capability */
+	if ((caps->caps & ICE_AQC_PHY_EN_TX_LINK_PAUSE) &&
+	    (caps->caps & ICE_AQC_PHY_EN_RX_LINK_PAUSE)) {
 		ethtool_link_ksettings_add_link_mode(ks, advertising, Pause);
-		break;
-	case ICE_FC_TX_PAUSE:
 		ethtool_link_ksettings_add_link_mode(ks, advertising,
 						     Asym_Pause);
-		break;
-	case ICE_FC_RX_PAUSE:
+	} else if (caps->caps & ICE_AQC_PHY_EN_TX_LINK_PAUSE) {
+		ethtool_link_ksettings_add_link_mode(ks, advertising,
+						     Asym_Pause);
+	} else if (caps->caps & ICE_AQC_PHY_EN_RX_LINK_PAUSE) {
 		ethtool_link_ksettings_add_link_mode(ks, advertising, Pause);
 		ethtool_link_ksettings_add_link_mode(ks, advertising,
 						     Asym_Pause);
-		break;
-	case ICE_FC_PFC:
-	default:
+	} else {
 		ethtool_link_ksettings_del_link_mode(ks, advertising, Pause);
 		ethtool_link_ksettings_del_link_mode(ks, advertising,
 						     Asym_Pause);
-		break;
 	}
 
-	caps = devm_kzalloc(&vsi->back->pdev->dev, sizeof(*caps), GFP_KERNEL);
-	if (!caps)
-		goto done;
-
-	if (ice_aq_get_phy_caps(vsi->port_info, false, ICE_AQC_REPORT_TOPO_CAP,
-				caps, NULL))
-		netdev_info(netdev, "Get phy capability failed.\n");
-
-	/* Set supported FEC modes based on PHY capability */
-	ethtool_link_ksettings_add_link_mode(ks, supported, FEC_NONE);
-
-	if (caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN ||
-	    caps->link_fec_options & ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN)
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_BASER);
-	if (caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN)
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);
-
-	if (ice_aq_get_phy_caps(vsi->port_info, false, ICE_AQC_REPORT_SW_CFG,
-				caps, NULL))
-		netdev_info(netdev, "Get phy capability failed.\n");
-
 	/* Set advertised FEC modes based on PHY capability */
 	ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_NONE);
 
@@ -2178,9 +2197,25 @@ ice_get_link_ksettings(struct net_device *netdev,
 	    caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_544_REQ)
 		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_RS);
 
+	status = ice_aq_get_phy_caps(vsi->port_info, false,
+				     ICE_AQC_REPORT_TOPO_CAP, caps, NULL);
+	if (status) {
+		err = -EIO;
+		goto done;
+	}
+
+	/* Set supported FEC modes based on PHY capability */
+	ethtool_link_ksettings_add_link_mode(ks, supported, FEC_NONE);
+
+	if (caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN ||
+	    caps->link_fec_options & ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN)
+		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_BASER);
+	if (caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN)
+		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);
+
 done:
 	devm_kfree(&vsi->back->pdev->dev, caps);
-	return 0;
+	return err;
 }
 
 /**
@@ -2817,6 +2852,11 @@ static int ice_nway_reset(struct net_device *netdev)
  * ice_get_pauseparam - Get Flow Control status
  * @netdev: network interface device structure
  * @pause: ethernet pause (flow control) parameters
+ *
+ * Get requested flow control status from PHY capability.
+ * If autoneg is true, then ethtool will send the ETHTOOL_GSET ioctl 
+ which
+ * is handled by ice_get_link_ksettings. ice_get_link_ksettings will 
+ report
+ * the negotiated Rx/Tx pause via lp_advertising.
  */
 static void
 ice_get_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
--
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
