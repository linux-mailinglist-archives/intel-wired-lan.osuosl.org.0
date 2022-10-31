Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 762DF613BE7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Oct 2022 18:09:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A6EE60C33;
	Mon, 31 Oct 2022 17:09:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A6EE60C33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667236171;
	bh=S5tT0KKTLo+LKTxPt9VgXbEVjglVn/oeXxjiCOOSg4k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=d3LjMgMURYV+iThudn2mA6ijfatv+siRnDs6j8kf7K9MgiWHtg9cAowtzAZs0RiBE
	 2crcYsyuPq0C9FIe5jM7ZAcs9/jZeGE6Fyskmmjno7ZgQeurv2gIiumFaZwMfB6ShC
	 pShj70pPA/eHF/8IckGfqXq5dfzH55tViaNGE4IqCEDt+vUf0Sc19ivjA5fsMDY9RJ
	 EmnupdSEc2TKQ5GywjWV6xCdSa1w0oHwrhtdK6IxqT5jmXJpvQmx7Ua39dThlDYCdp
	 tJ5Dp8NAbGHYrI50SbibY0NfTogBxbweGPni+dQTsBNGHVS8ccEuGDcmIb5nc/VbLF
	 ZOLcqbAMpWFOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lEUiD2BUDhtP; Mon, 31 Oct 2022 17:09:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EAB060B1F;
	Mon, 31 Oct 2022 17:09:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EAB060B1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AD291BF327
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 17:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6446440400
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 17:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6446440400
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eTir2m41LwnR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Oct 2022 17:09:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E15BA403CA
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E15BA403CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 17:09:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="296370481"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="296370481"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 10:09:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="962847231"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="962847231"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 10:09:22 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 31 Oct 2022 10:09:12 -0700
Message-Id: <20221031170912.1719253-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667236163; x=1698772163;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OUxyCENeFrp6miszrxTgslR4n2SLZJVjLwQBsyFXv/0=;
 b=ZGTFfnSCVoLeIuiFLd3RnffdC9g809JxKJoVIbxF0iBVMbwNezyW5QW4
 OMlfN1JVANs3lWPFQZ4Y2rdFcJB7mASQsQkLMix3n/E2gDykrCmVf+5MD
 CRDvURr0Brg6dL0bPVGMx7HToBamRcZrsRElLkV0uwtA5NDiOwgIRYFGY
 xphPyLMnWiKWb+Yf7MSttJs5whN2oUEqWD3hZFMA/Qptd3unYj9Gfe0vL
 G/zl/YLJCU1jtxaP6jfHcMggGhQfmysjgJAZlNfxOYOuPwv+kHu3as/HJ
 0FTYrcDvXHpDZBkG88VrCQFXf5SqNLOpXUdFkszylH9yVjgTSY0jNanpA
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZGTFfnSC
Subject: [Intel-wired-lan] [PATCH net-next:dev-queue v1] ice: Remove and
 replace ice speed defines with ethtool.h versions
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

The driver is currently using ICE_LINK_SPEED_* defines that mirror what
ethtool.h defines, with one exception ICE_LINK_SPEED_UNKNOWN.

This issue is fixed by the following changes:

1. replace ICE_LINK_SPEED_UNKNOWN with 0 because SPEED_UNKNOWN in
   ethtool.h is "-1" and that doesn't match the driver's expected behavior
2. transform ICE_LINK_SPEED_*MBPS to SPEED_* using static tables and
   fls()-1 to convert from BIT() to an index in a table.

Suggested-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
bloat-o-meter results of change:
add/remove: 3/0 grow/shrink: 2/3 up/down: 158/-652 (-494)
Function                                     old     new   delta
ice_legacy_aq_to_vc_speed                      -      60     +60
ice_aq_to_link_speed                           -      60     +60
ice_get_link_speed                             -      20     +20
ice_set_min_bw_limit                         329     338      +9
ice_set_max_bw_limit                         334     343      +9
ice_get_link_speed_kbps                      195      40    -155
ice_get_link_speed_mbps                      195      29    -166
ice_conv_link_speed_to_virtchnl              382      51    -331
Total: Before=536449, After=535955, chg -0.09%
---
 drivers/net/ethernet/intel/ice/ice_common.c   | 41 ++++++++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 12 ---
 drivers/net/ethernet/intel/ice/ice_lib.c      | 32 +------
 drivers/net/ethernet/intel/ice/ice_vf_mbx.c   | 92 +++++--------------
 5 files changed, 69 insertions(+), 109 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9f77bfc15fce..3a345071b61a 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2975,8 +2975,8 @@ bool ice_is_100m_speed_supported(struct ice_hw *hw)
  * Note: In the structure of [phy_type_low, phy_type_high], there should
  * be one bit set, as this function will convert one PHY type to its
  * speed.
- * If no bit gets set, ICE_LINK_SPEED_UNKNOWN will be returned
- * If more than one bit gets set, ICE_LINK_SPEED_UNKNOWN will be returned
+ * If no bit gets set, ICE_AQ_LINK_SPEED_UNKNOWN will be returned
+ * If more than one bit gets set, ICE_AQ_LINK_SPEED_UNKNOWN will be returned
  */
 static u16
 ice_get_link_speed_based_on_phy_type(u64 phy_type_low, u64 phy_type_high)
@@ -5555,3 +5555,40 @@ bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw)
 				     ICE_FW_API_REPORT_DFLT_CFG_MIN,
 				     ICE_FW_API_REPORT_DFLT_CFG_PATCH);
 }
+
+/* each of the indexes into the following array match the speed of a return
+ * value from the list of AQ returned speeds like the range:
+ * ICE_AQ_LINK_SPEED_10MB .. ICE_AQ_LINK_SPEED_100GB excluding
+ * ICE_AQ_LINK_SPEED_UNKNOWN which is BIT(15) and maps to BIT(14) in this
+ * array. The array is defined as 15 elements long because the link_speed
+ * returned by the firmware is a 16 bit * value, but is indexed
+ * by [fls(speed) - 1]
+ */
+static const u32 ice_aq_to_link_speed[15] = {
+	SPEED_10,	/* BIT(0) */
+	SPEED_100,
+	SPEED_1000,
+	SPEED_2500,
+	SPEED_5000,
+	SPEED_10000,
+	SPEED_20000,
+	SPEED_25000,
+	SPEED_40000,
+	SPEED_50000,
+	SPEED_100000,	/* BIT(10) */
+	0,
+	0,
+	0,
+	0		/* BIT(14) */
+};
+
+/**
+ * ice_get_link_speed - get integer speed from table
+ * @index: array index from fls(aq speed) - 1
+ *
+ * Returns: u32 value containing integer speed
+ */
+u32 ice_get_link_speed(u16 index)
+{
+	return ice_aq_to_link_speed[index];
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 858b89a39cb6..6a7898565072 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -163,6 +163,7 @@ int
 ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 		  u16 mem_addr, u8 page, u8 set_page, u8 *data, u8 length,
 		  bool write, struct ice_sq_cd *cd);
+u32 ice_get_link_speed(u16 index);
 
 int
 ice_cfg_vsi_rdma(struct ice_port_info *pi, u16 vsi_handle, u16 tc_bitmap,
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index b3baf7c3f910..89f986a75cc8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -908,17 +908,5 @@ static inline struct ice_rx_ptype_decoded ice_decode_rx_desc_ptype(u16 ptype)
 	return ice_ptype_lkup[ptype];
 }
 
-#define ICE_LINK_SPEED_UNKNOWN		0
-#define ICE_LINK_SPEED_10MBPS		10
-#define ICE_LINK_SPEED_100MBPS		100
-#define ICE_LINK_SPEED_1000MBPS		1000
-#define ICE_LINK_SPEED_2500MBPS		2500
-#define ICE_LINK_SPEED_5000MBPS		5000
-#define ICE_LINK_SPEED_10000MBPS	10000
-#define ICE_LINK_SPEED_20000MBPS	20000
-#define ICE_LINK_SPEED_25000MBPS	25000
-#define ICE_LINK_SPEED_40000MBPS	40000
-#define ICE_LINK_SPEED_50000MBPS	50000
-#define ICE_LINK_SPEED_100000MBPS	100000
 
 #endif /* _ICE_LAN_TX_RX_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 803c14d3da55..49dc1ec36e58 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -4097,33 +4097,11 @@ int ice_clear_dflt_vsi(struct ice_vsi *vsi)
  */
 int ice_get_link_speed_mbps(struct ice_vsi *vsi)
 {
-	switch (vsi->port_info->phy.link_info.link_speed) {
-	case ICE_AQ_LINK_SPEED_100GB:
-		return SPEED_100000;
-	case ICE_AQ_LINK_SPEED_50GB:
-		return SPEED_50000;
-	case ICE_AQ_LINK_SPEED_40GB:
-		return SPEED_40000;
-	case ICE_AQ_LINK_SPEED_25GB:
-		return SPEED_25000;
-	case ICE_AQ_LINK_SPEED_20GB:
-		return SPEED_20000;
-	case ICE_AQ_LINK_SPEED_10GB:
-		return SPEED_10000;
-	case ICE_AQ_LINK_SPEED_5GB:
-		return SPEED_5000;
-	case ICE_AQ_LINK_SPEED_2500MB:
-		return SPEED_2500;
-	case ICE_AQ_LINK_SPEED_1000MB:
-		return SPEED_1000;
-	case ICE_AQ_LINK_SPEED_100MB:
-		return SPEED_100;
-	case ICE_AQ_LINK_SPEED_10MB:
-		return SPEED_10;
-	case ICE_AQ_LINK_SPEED_UNKNOWN:
-	default:
-		return 0;
-	}
+	unsigned int link_speed;
+
+	link_speed = vsi->port_info->phy.link_info.link_speed;
+
+	return (int)ice_get_link_speed(fls(link_speed) - 1);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
index fc8c93fa4455..d4a4001b6e5d 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
@@ -39,6 +39,24 @@ ice_aq_send_msg_to_vf(struct ice_hw *hw, u16 vfid, u32 v_opcode, u32 v_retval,
 	return ice_sq_send_cmd(hw, &hw->mailboxq, &desc, msg, msglen, cd);
 }
 
+static const u32 ice_legacy_aq_to_vc_speed[15] = {
+	VIRTCHNL_LINK_SPEED_100MB,	/* BIT(0) */
+	VIRTCHNL_LINK_SPEED_100MB,
+	VIRTCHNL_LINK_SPEED_1GB,
+	VIRTCHNL_LINK_SPEED_1GB,
+	VIRTCHNL_LINK_SPEED_1GB,
+	VIRTCHNL_LINK_SPEED_10GB,
+	VIRTCHNL_LINK_SPEED_20GB,
+	VIRTCHNL_LINK_SPEED_25GB,
+	VIRTCHNL_LINK_SPEED_40GB,
+	VIRTCHNL_LINK_SPEED_40GB,
+	VIRTCHNL_LINK_SPEED_40GB,
+	VIRTCHNL_LINK_SPEED_UNKNOWN,
+	VIRTCHNL_LINK_SPEED_UNKNOWN,
+	VIRTCHNL_LINK_SPEED_UNKNOWN,
+	VIRTCHNL_LINK_SPEED_UNKNOWN	/* BIT(14) */
+};
+
 /**
  * ice_conv_link_speed_to_virtchnl
  * @adv_link_support: determines the format of the returned link speed
@@ -55,79 +73,17 @@ u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed)
 {
 	u32 speed;
 
-	if (adv_link_support)
-		switch (link_speed) {
-		case ICE_AQ_LINK_SPEED_10MB:
-			speed = ICE_LINK_SPEED_10MBPS;
-			break;
-		case ICE_AQ_LINK_SPEED_100MB:
-			speed = ICE_LINK_SPEED_100MBPS;
-			break;
-		case ICE_AQ_LINK_SPEED_1000MB:
-			speed = ICE_LINK_SPEED_1000MBPS;
-			break;
-		case ICE_AQ_LINK_SPEED_2500MB:
-			speed = ICE_LINK_SPEED_2500MBPS;
-			break;
-		case ICE_AQ_LINK_SPEED_5GB:
-			speed = ICE_LINK_SPEED_5000MBPS;
-			break;
-		case ICE_AQ_LINK_SPEED_10GB:
-			speed = ICE_LINK_SPEED_10000MBPS;
-			break;
-		case ICE_AQ_LINK_SPEED_20GB:
-			speed = ICE_LINK_SPEED_20000MBPS;
-			break;
-		case ICE_AQ_LINK_SPEED_25GB:
-			speed = ICE_LINK_SPEED_25000MBPS;
-			break;
-		case ICE_AQ_LINK_SPEED_40GB:
-			speed = ICE_LINK_SPEED_40000MBPS;
-			break;
-		case ICE_AQ_LINK_SPEED_50GB:
-			speed = ICE_LINK_SPEED_50000MBPS;
-			break;
-		case ICE_AQ_LINK_SPEED_100GB:
-			speed = ICE_LINK_SPEED_100000MBPS;
-			break;
-		default:
-			speed = ICE_LINK_SPEED_UNKNOWN;
-			break;
-		}
-	else
+	if (adv_link_support) {
+		/* convert a BIT() value into an array index */
+		speed = ice_get_link_speed(fls(link_speed) - 1);
+	} else {
 		/* Virtchnl speeds are not defined for every speed supported in
 		 * the hardware. To maintain compatibility with older AVF
 		 * drivers, while reporting the speed the new speed values are
 		 * resolved to the closest known virtchnl speeds
 		 */
-		switch (link_speed) {
-		case ICE_AQ_LINK_SPEED_10MB:
-		case ICE_AQ_LINK_SPEED_100MB:
-			speed = (u32)VIRTCHNL_LINK_SPEED_100MB;
-			break;
-		case ICE_AQ_LINK_SPEED_1000MB:
-		case ICE_AQ_LINK_SPEED_2500MB:
-		case ICE_AQ_LINK_SPEED_5GB:
-			speed = (u32)VIRTCHNL_LINK_SPEED_1GB;
-			break;
-		case ICE_AQ_LINK_SPEED_10GB:
-			speed = (u32)VIRTCHNL_LINK_SPEED_10GB;
-			break;
-		case ICE_AQ_LINK_SPEED_20GB:
-			speed = (u32)VIRTCHNL_LINK_SPEED_20GB;
-			break;
-		case ICE_AQ_LINK_SPEED_25GB:
-			speed = (u32)VIRTCHNL_LINK_SPEED_25GB;
-			break;
-		case ICE_AQ_LINK_SPEED_40GB:
-		case ICE_AQ_LINK_SPEED_50GB:
-		case ICE_AQ_LINK_SPEED_100GB:
-			speed = (u32)VIRTCHNL_LINK_SPEED_40GB;
-			break;
-		default:
-			speed = (u32)VIRTCHNL_LINK_SPEED_UNKNOWN;
-			break;
-		}
+		speed = ice_legacy_aq_to_vc_speed[fls(link_speed) - 1];
+	}
 
 	return speed;
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
