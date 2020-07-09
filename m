Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BC421A4A2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 18:20:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 536052CD6D;
	Thu,  9 Jul 2020 16:20:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2elZPVgXm0V2; Thu,  9 Jul 2020 16:20:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CDEDA2CB8B;
	Thu,  9 Jul 2020 16:20:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA2E71BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A6813228F1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ns9TIwAhNQ-A for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id D03AD2C885
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:14 +0000 (UTC)
IronPort-SDR: Ic8G/p4PLpm24ZdJ4vdas09Cwdh+1OkBgMm/A3ReItl2pJaQtFpQ8lsvz+dgQI9xlFFiXDBa7D
 g6SFpqUAGAVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="136252763"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="136252763"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 09:20:11 -0700
IronPort-SDR: xG+xS3tH5oXpDvt3ldkCTcFY0YFSMeledSFPsd26leXzGIG4oqtmb9TnmKOAo2CKTVHbGofU5n
 /u1VHkUjlw7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="280352074"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 09:20:07 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 09:16:14 -0700
Message-Id: <20200709161614.61098-15-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S49 15/15] ice: add 1G SGMII PHY type
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

There isn't a case for 1G SGMII in ice_get_media_type() so add
the handling for it.

Also handle the special case where some direct attach
cables may report that they support 1G SGMII, but
that is erroneous since SGMII is supposed to be a
backplane media type (between a MAC and a PHY). If
the driver doesn't handle this special case then a
user could see the 'Port' in ethtool change from
'Direct attach Copper' to 'Backplane' when they have
forced the speed to 1G, but the cable hasn't changed.

Lastly, change ice_aq_get_phy_caps() to save the
module_type info if the function was called with
ICE_AQC_REPORT_TOPO_CAP. This call uses the media
information to populate the module_type. If no
media is present then the values in module_type
will be 0.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c     | 17 ++++++++++++++---
 2 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 528a17e57ea8..d1640ff2aea9 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -993,6 +993,7 @@ struct ice_aqc_get_phy_caps_data {
 	u8 module_type[ICE_MODULE_TYPE_TOTAL_BYTE];
 #define ICE_AQC_MOD_TYPE_BYTE0_SFP_PLUS			0xA0
 #define ICE_AQC_MOD_TYPE_BYTE0_QSFP_PLUS		0x80
+#define ICE_AQC_MOD_TYPE_IDENT				1
 #define ICE_AQC_MOD_TYPE_BYTE1_SFP_PLUS_CU_PASSIVE	BIT(0)
 #define ICE_AQC_MOD_TYPE_BYTE1_SFP_PLUS_CU_ACTIVE	BIT(1)
 #define ICE_AQC_MOD_TYPE_BYTE1_10G_BASE_SR		BIT(4)
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8b45e64398f9..4579939073c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -194,6 +194,8 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 	if (!status && report_mode == ICE_AQC_REPORT_TOPO_CAP) {
 		pi->phy.phy_type_low = le64_to_cpu(pcaps->phy_type_low);
 		pi->phy.phy_type_high = le64_to_cpu(pcaps->phy_type_high);
+		memcpy(pi->phy.link_info.module_type, &pcaps->module_type,
+		       sizeof(pi->phy.link_info.module_type));
 	}
 
 	return status;
@@ -266,6 +268,18 @@ static enum ice_media_type ice_get_media_type(struct ice_port_info *pi)
 		return ICE_MEDIA_UNKNOWN;
 
 	if (hw_link_info->phy_type_low) {
+		/* 1G SGMII is a special case where some DA cable PHYs
+		 * may show this as an option when it really shouldn't
+		 * be since SGMII is meant to be between a MAC and a PHY
+		 * in a backplane. Try to detect this case and handle it
+		 */
+		if (hw_link_info->phy_type_low == ICE_PHY_TYPE_LOW_1G_SGMII &&
+		    (hw_link_info->module_type[ICE_AQC_MOD_TYPE_IDENT] ==
+		    ICE_AQC_MOD_TYPE_BYTE1_SFP_PLUS_CU_ACTIVE ||
+		    hw_link_info->module_type[ICE_AQC_MOD_TYPE_IDENT] ==
+		    ICE_AQC_MOD_TYPE_BYTE1_SFP_PLUS_CU_PASSIVE))
+			return ICE_MEDIA_DA;
+
 		switch (hw_link_info->phy_type_low) {
 		case ICE_PHY_TYPE_LOW_1000BASE_SX:
 		case ICE_PHY_TYPE_LOW_1000BASE_LX:
@@ -2647,9 +2661,6 @@ enum ice_status ice_update_link_info(struct ice_port_info *pi)
 
 		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP,
 					     pcaps, NULL);
-		if (!status)
-			memcpy(li->module_type, &pcaps->module_type,
-			       sizeof(li->module_type));
 
 		devm_kfree(ice_hw_to_dev(hw), pcaps);
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
