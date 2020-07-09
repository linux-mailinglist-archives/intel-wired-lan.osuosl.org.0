Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0500B21A4A1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 18:20:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE7AA89A00;
	Thu,  9 Jul 2020 16:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zJTbrcLZdRhs; Thu,  9 Jul 2020 16:20:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96C7789A91;
	Thu,  9 Jul 2020 16:20:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24E0F1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 19F58228F1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hUPrja62f5hC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 1DC372CAC4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
IronPort-SDR: CETjslELZc1JSr2Ra8M3fn+Adt7JkddBAhBwDBL483AGP2gk6ylZ9g6y8X18PGVwtHMga6LH4J
 /yDfcBX2e8eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="232906029"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="232906029"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 09:20:10 -0700
IronPort-SDR: dKgs/4n0DEKn/Sb2Uxz4kkEWkiYbkN5rEoP86wHNSiASNJWm12B3dMWYWoDy8LQDDxlLANebbp
 Orx/B7NCkL1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="280352063"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 09:20:06 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 09:16:05 -0700
Message-Id: <20200709161614.61098-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S49 06/15] ice: move auto FEC checks into
 ice_cfg_phy_fec()
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

The call to ice_cfg_phy_fec() requires the caller to perform certain
actions before calling it. Instead of imposing these preconditions move
the operations into the function and perform them ourselves.

Also, fix some style issues in nearby touched code.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 43 ++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_common.h  |  5 ++-
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 31 ++------------
 3 files changed, 40 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 556fa1c9aee2..c41b598782cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2657,25 +2657,41 @@ ice_copy_phy_caps_to_cfg(struct ice_aqc_get_phy_caps_data *caps,
 
 /**
  * ice_cfg_phy_fec - Configure PHY FEC data based on FEC mode
+ * @pi: port information structure
  * @cfg: PHY configuration data to set FEC mode
  * @fec: FEC mode to configure
- *
- * Caller should copy ice_aqc_get_phy_caps_data.caps ICE_AQC_PHY_EN_AUTO_FEC
- * (bit 7) and ice_aqc_get_phy_caps_data.link_fec_options to cfg.caps
- * ICE_AQ_PHY_ENA_AUTO_FEC (bit 7) and cfg.link_fec_options before calling.
  */
-void
-ice_cfg_phy_fec(struct ice_aqc_set_phy_cfg_data *cfg, enum ice_fec_mode fec)
+enum ice_status
+ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
+		enum ice_fec_mode fec)
 {
+	struct ice_aqc_get_phy_caps_data *pcaps;
+	enum ice_status status;
+
+	if (!pi || !cfg)
+		return ICE_ERR_BAD_PTR;
+
+	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
+	if (!pcaps)
+		return ICE_ERR_NO_MEMORY;
+
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP, pcaps,
+				     NULL);
+	if (status)
+		goto out;
+
+	cfg->caps |= pcaps->caps & ICE_AQC_PHY_EN_AUTO_FEC;
+	cfg->link_fec_opt = pcaps->link_fec_options;
+
 	switch (fec) {
 	case ICE_FEC_BASER:
 		/* Clear RS bits, and AND BASE-R ability
 		 * bits and OR request bits.
 		 */
 		cfg->link_fec_opt &= ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN |
-				     ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN;
+			ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN;
 		cfg->link_fec_opt |= ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ |
-				     ICE_AQC_PHY_FEC_25G_KR_REQ;
+			ICE_AQC_PHY_FEC_25G_KR_REQ;
 		break;
 	case ICE_FEC_RS:
 		/* Clear BASE-R bits, and AND RS ability
@@ -2683,7 +2699,7 @@ ice_cfg_phy_fec(struct ice_aqc_set_phy_cfg_data *cfg, enum ice_fec_mode fec)
 		 */
 		cfg->link_fec_opt &= ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN;
 		cfg->link_fec_opt |= ICE_AQC_PHY_FEC_25G_RS_528_REQ |
-				     ICE_AQC_PHY_FEC_25G_RS_544_REQ;
+			ICE_AQC_PHY_FEC_25G_RS_544_REQ;
 		break;
 	case ICE_FEC_NONE:
 		/* Clear all FEC option bits. */
@@ -2692,8 +2708,17 @@ ice_cfg_phy_fec(struct ice_aqc_set_phy_cfg_data *cfg, enum ice_fec_mode fec)
 	case ICE_FEC_AUTO:
 		/* AND auto FEC bit, and all caps bits. */
 		cfg->caps &= ICE_AQC_PHY_CAPS_MASK;
+		cfg->link_fec_opt |= pcaps->link_fec_options;
+		break;
+	default:
+		status = ICE_ERR_PARAM;
 		break;
 	}
+
+out:
+	kfree(pcaps);
+
+	return status;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index d1238f43e872..2f912c671e6b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -103,8 +103,9 @@ ice_aq_set_phy_cfg(struct ice_hw *hw, u8 lport,
 enum ice_status
 ice_set_fc(struct ice_port_info *pi, u8 *aq_failures,
 	   bool ena_auto_link_update);
-void
-ice_cfg_phy_fec(struct ice_aqc_set_phy_cfg_data *cfg, enum ice_fec_mode fec);
+enum ice_status
+ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
+		enum ice_fec_mode fec);
 void
 ice_copy_phy_caps_to_cfg(struct ice_aqc_get_phy_caps_data *caps,
 			 struct ice_aqc_set_phy_cfg_data *cfg);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index c2291cf4dc6e..4567b0175712 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -968,7 +968,6 @@ static int ice_set_fec_cfg(struct net_device *netdev, enum ice_fec_mode req_fec)
 	struct ice_aqc_set_phy_cfg_data config = { 0 };
 	struct ice_aqc_get_phy_caps_data *caps;
 	struct ice_vsi *vsi = np->vsi;
-	u8 sw_cfg_caps, sw_cfg_fec;
 	struct ice_port_info *pi;
 	enum ice_status status;
 	int err = 0;
@@ -997,36 +996,12 @@ static int ice_set_fec_cfg(struct net_device *netdev, enum ice_fec_mode req_fec)
 
 	/* Copy SW configuration returned from PHY caps to PHY config */
 	ice_copy_phy_caps_to_cfg(caps, &config);
-	sw_cfg_caps = caps->caps;
-	sw_cfg_fec = caps->link_fec_options;
 
-	/* Get toloplogy caps, then copy PHY FEC topoloy caps to PHY config */
-	memset(caps, 0, sizeof(*caps));
+	ice_cfg_phy_fec(pi, &config, req_fec);
+	config.caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
 
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP,
-				     caps, NULL);
-	if (status) {
+	if (ice_aq_set_phy_cfg(pi->hw, pi->lport, &config, NULL))
 		err = -EAGAIN;
-		goto done;
-	}
-
-	config.caps |= (caps->caps & ICE_AQC_PHY_EN_AUTO_FEC);
-	config.link_fec_opt = caps->link_fec_options;
-
-	ice_cfg_phy_fec(&config, req_fec);
-
-	/* If FEC mode has changed, then set PHY configuration and enable AN. */
-	if ((config.caps & ICE_AQ_PHY_ENA_AUTO_FEC) !=
-	    (sw_cfg_caps & ICE_AQC_PHY_EN_AUTO_FEC) ||
-	    config.link_fec_opt != sw_cfg_fec) {
-		if (caps->caps & ICE_AQC_PHY_AN_MODE)
-			config.caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
-
-		status = ice_aq_set_phy_cfg(pi->hw, pi->lport, &config, NULL);
-
-		if (status)
-			err = -EAGAIN;
-	}
 
 done:
 	kfree(caps);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
