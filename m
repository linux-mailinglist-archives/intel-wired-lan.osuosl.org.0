Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 993D97A220C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Sep 2023 17:12:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A00F4197A;
	Fri, 15 Sep 2023 15:12:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A00F4197A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694790768;
	bh=JksoLcJhoMmRfLOlMXddpoFMWy1KXWCxjk49GBEA+EU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=onKiqzhgcmm/kXyTVnlTkR8uISdY0KKp1noa2j9HQ6P7xFXJ4uJyqjgFADsacZbRD
	 xP65bh/7QHWbuvQ1yIeexSv4hI6PoBC2GmNRVI3a9tmaf51l5Nhs4E+arK8uW9Qfcn
	 I26qYNP8BLzdOXQRVjkVcmxglwGZmT4j5yegjGIwLFoAJxxfMbMe6Ov5KBt5IayvJB
	 akLaOI9HHlSfueMHTOmmooePMWXREwLzEcKr+VK3LUV6wbIH4Lj7FUVUPYN9GdiSNs
	 E4USgF/eVkbQUrgAUns39GE9vVqaueKEFoSI/xcI58myvkfr62ajJsmkSx7p4WoGbq
	 71posywQnjT5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MHojPDul1uyn; Fri, 15 Sep 2023 15:12:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCA9D41952;
	Fri, 15 Sep 2023 15:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCA9D41952
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5733A1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 307C683C01
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 307C683C01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XE8cvoNimm7D for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Sep 2023 15:12:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BBD483B87
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BBD483B87
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="410209420"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="410209420"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:12:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868741779"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868741779"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga004.jf.intel.com with ESMTP; 15 Sep 2023 08:12:32 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 518D633BDD;
 Fri, 15 Sep 2023 16:12:30 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Sep 2023 17:09:55 +0200
Message-Id: <20230915150958.592564-4-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230915150958.592564-1-pawel.chmielewski@intel.com>
References: <20230915150958.592564-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694790755; x=1726326755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WH+ERfP4d4rt3knHNtwJlJTTkcnUJm7JtkDQX08d96Q=;
 b=jQqrXVbUu1SKbL0J02Gc8TlkKMTyamRESFcgbTtXasuwym8wsdLHkVtw
 GdB5XTO5/ObNT+i52nRSYpZBxdpXFynN61fvW4Jfj5O6qWaj3aF80uqmY
 d1eCvgjD6j67Ilr7QnKz1i0eUbF5c+n7Z80mvD1ATypnUER1sQ7sh3tzB
 2tegemOsT4T7SzbX8mzmcBQlpxSpKtQYCYWesrWTZ8icEaHWQNf1QbedW
 olHRsFxhFlV+e9HtPl3hVX+Ekw6SFB/tCD8PK0kLf7tAsvVz80v/uPXfS
 KtAK5grmVFwXKJNiOLEKcZjmuvSEMv8MdqIaag7u//FcItnFEcQmGOUlN
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jQqrXVbU
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/6] ice: Add
 ice_get_link_status_datalen
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
Cc: Pawel Chmielewski <pawel.chmielewski@intel.com>, netdev@vger.kernel.org,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, andrew@lunn.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>

The Get Link Status data length can vary with different versions of
ice_aqc_get_link_status_data. Add ice_get_link_status_datalen() to return
datalen for the specific ice_aqc_get_link_status_data version.
Add new link partner fields to ice_aqc_get_link_status_data; PHY type,
FEC, and flow control.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Co-developed-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 37 +++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_common.c   | 22 ++++++++++-
 2 files changed, 53 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index c38e189ea8f7..baa60e88ad33 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1329,10 +1329,39 @@ struct ice_aqc_get_link_status_data {
 #define ICE_AQ_LINK_SPEED_100GB		BIT(10)
 #define ICE_AQ_LINK_SPEED_200GB		BIT(11)
 #define ICE_AQ_LINK_SPEED_UNKNOWN	BIT(15)
-	__le32 reserved3; /* Aligns next field to 8-byte boundary */
-	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
-	__le64 phy_type_high; /* Use values from ICE_PHY_TYPE_HIGH_* */
-};
+	/* Aligns next field to 8-byte boundary */
+	__le16 reserved3;
+	u8 ext_fec_status;
+	/* RS 272 FEC enabled */
+#define ICE_AQ_LINK_RS_272_FEC_EN      BIT(0)
+	u8 reserved4;
+	/* Use values from ICE_PHY_TYPE_LOW_* */
+	__le64 phy_type_low;
+	/* Use values from ICE_PHY_TYPE_HIGH_* */
+	__le64 phy_type_high;
+#define ICE_AQC_LS_DATA_SIZE_V1 \
+	offsetofend(struct ice_aqc_get_link_status_data, phy_type_high)
+	/* Get link status v2 link partner data */
+	__le64 lp_phy_type_low;
+	__le64 lp_phy_type_high;
+	u8 lp_fec_adv;
+#define ICE_AQ_LINK_LP_10G_KR_FEC_CAP  BIT(0)
+#define ICE_AQ_LINK_LP_25G_KR_FEC_CAP  BIT(1)
+#define ICE_AQ_LINK_LP_RS_528_FEC_CAP  BIT(2)
+#define ICE_AQ_LINK_LP_50G_KR_272_FEC_CAP BIT(3)
+#define ICE_AQ_LINK_LP_100G_KR_272_FEC_CAP BIT(4)
+#define ICE_AQ_LINK_LP_200G_KR_272_FEC_CAP BIT(5)
+	u8 lp_fec_req;
+#define ICE_AQ_LINK_LP_10G_KR_FEC_REQ  BIT(0)
+#define ICE_AQ_LINK_LP_25G_KR_FEC_REQ  BIT(1)
+#define ICE_AQ_LINK_LP_RS_528_FEC_REQ  BIT(2)
+#define ICE_AQ_LINK_LP_KR_272_FEC_REQ  BIT(3)
+	u8 lp_flowcontrol;
+#define ICE_AQ_LINK_LP_PAUSE_ADV       BIT(0)
+#define ICE_AQ_LINK_LP_ASM_DIR_ADV     BIT(1)
+#define ICE_AQC_LS_DATA_SIZE_V2 \
+	offsetofend(struct ice_aqc_get_link_status_data, lp_flowcontrol)
+} __packed;
 
 /* Set event mask command (direct 0x0613) */
 struct ice_aqc_set_event_mask {
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index e8225b275f70..e611e32b4a17 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -576,6 +576,24 @@ static enum ice_media_type ice_get_media_type(struct ice_port_info *pi)
 	return ICE_MEDIA_UNKNOWN;
 }
 
+/**
+ * ice_get_link_status_datalen
+ * @hw: pointer to the HW struct
+ *
+ * Returns datalength for the Get Link Status AQ command, which is bigger for
+ * newer adapter families handled by ice driver.
+ */
+static u16 ice_get_link_status_datalen(struct ice_hw *hw)
+{
+	switch (hw->mac_type) {
+	case ICE_MAC_E830:
+		return ICE_AQC_LS_DATA_SIZE_V2;
+	case ICE_MAC_E810:
+	default:
+		return ICE_AQC_LS_DATA_SIZE_V1;
+	}
+}
+
 /**
  * ice_aq_get_link_info
  * @pi: port information structure
@@ -614,8 +632,8 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 	resp->cmd_flags = cpu_to_le16(cmd_flags);
 	resp->lport_num = pi->lport;
 
-	status = ice_aq_send_cmd(hw, &desc, &link_data, sizeof(link_data), cd);
-
+	status = ice_aq_send_cmd(hw, &desc, &link_data,
+				 ice_get_link_status_datalen(hw), cd);
 	if (status)
 		return status;
 
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
