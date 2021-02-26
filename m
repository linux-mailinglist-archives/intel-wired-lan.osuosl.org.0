Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6256326987
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 22:29:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E06184F0A7;
	Fri, 26 Feb 2021 21:29:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 854swZP9_BqB; Fri, 26 Feb 2021 21:29:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D43B84F0BA;
	Fri, 26 Feb 2021 21:29:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1050A1BF302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5F3C4341C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pBRCq9aCBH-l for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D332743401
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
IronPort-SDR: oAvEgC/wrYaXf+ZicVcsW4w/mpLcuzdEZoatf2LuWq05J+krDfNULqg7Xv4pVHH6Kizg20QXD7
 nA/oHrqTfiBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="186117849"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="186117849"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 13:28:57 -0800
IronPort-SDR: AyMwu3d9ATfsGQ+m6g5xFZTvFm/tsNMfUrcNdT3UPWqmiggs3RS8RuYZo7VcfHsaTi/wk6l0Uu
 64fkWh7yBAhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="432913443"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2021 13:28:56 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Feb 2021 13:19:25 -0800
Message-Id: <20210226211932.46683-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 06/13] ice: Recognize 860 as iSCSI
 port in CEE mode
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

From: Chinh T Cao <chinh.t.cao@intel.com>

iSCSI can use both TCP ports 860 and 3260. However, in our current
implementation, the ice_aqc_opc_get_cee_dcb_cfg (0x0A07) AQ command
doesn't provide a way to communicate the protocol port number to the
AQ's caller. Thus, we assume that 3260 is the iSCSI port number at the
AQ's caller layer.

Rely on the dcbx-willing mode, desired QoS and remote QoS configuration to
determine which port number that iSCSI will use.

Fixes: 0ebd3ff13cca ("ice: Add code for DCB initialization part 2/4")
Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c  | 38 +++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_type.h |  1 +
 2 files changed, 30 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index e42727941ef5..211ac6f907ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -738,22 +738,27 @@ ice_aq_get_cee_dcb_cfg(struct ice_hw *hw,
 /**
  * ice_cee_to_dcb_cfg
  * @cee_cfg: pointer to CEE configuration struct
- * @dcbcfg: DCB configuration struct
+ * @pi: port information structure
  *
  * Convert CEE configuration from firmware to DCB configuration
  */
 static void
 ice_cee_to_dcb_cfg(struct ice_aqc_get_cee_dcb_cfg_resp *cee_cfg,
-		   struct ice_dcbx_cfg *dcbcfg)
+		   struct ice_port_info *pi)
 {
 	u32 status, tlv_status = le32_to_cpu(cee_cfg->tlv_status);
 	u32 ice_aqc_cee_status_mask, ice_aqc_cee_status_shift;
+	u8 i, j, err, sync, oper, app_index, ice_app_sel_type;
 	u16 app_prio = le16_to_cpu(cee_cfg->oper_app_prio);
-	u8 i, err, sync, oper, app_index, ice_app_sel_type;
 	u16 ice_aqc_cee_app_mask, ice_aqc_cee_app_shift;
+	struct ice_dcbx_cfg *cmp_dcbcfg, *dcbcfg;
 	u16 ice_app_prot_id_type;
 
-	/* CEE PG data to ETS config */
+	dcbcfg = &pi->qos_cfg.local_dcbx_cfg;
+	dcbcfg->dcbx_mode = ICE_DCBX_MODE_CEE;
+	dcbcfg->tlv_status = tlv_status;
+
+	/* CEE PG data */
 	dcbcfg->etscfg.maxtcs = cee_cfg->oper_num_tc;
 
 	/* Note that the FW creates the oper_prio_tc nibbles reversed
@@ -780,10 +785,16 @@ ice_cee_to_dcb_cfg(struct ice_aqc_get_cee_dcb_cfg_resp *cee_cfg,
 		}
 	}
 
-	/* CEE PFC data to ETS config */
+	/* CEE PFC data */
 	dcbcfg->pfc.pfcena = cee_cfg->oper_pfc_en;
 	dcbcfg->pfc.pfccap = ICE_MAX_TRAFFIC_CLASS;
 
+	/* CEE APP TLV data */
+	if (dcbcfg->app_mode == ICE_DCBX_APPS_NON_WILLING)
+		cmp_dcbcfg = &pi->qos_cfg.desired_dcbx_cfg;
+	else
+		cmp_dcbcfg = &pi->qos_cfg.remote_dcbx_cfg;
+
 	app_index = 0;
 	for (i = 0; i < 3; i++) {
 		if (i == 0) {
@@ -802,6 +813,18 @@ ice_cee_to_dcb_cfg(struct ice_aqc_get_cee_dcb_cfg_resp *cee_cfg,
 			ice_aqc_cee_app_shift = ICE_AQC_CEE_APP_ISCSI_S;
 			ice_app_sel_type = ICE_APP_SEL_TCPIP;
 			ice_app_prot_id_type = ICE_APP_PROT_ID_ISCSI;
+
+			for (j = 0; j < cmp_dcbcfg->numapps; j++) {
+				u16 prot_id = cmp_dcbcfg->app[j].prot_id;
+				u8 sel = cmp_dcbcfg->app[j].selector;
+
+				if  (sel == ICE_APP_SEL_TCPIP &&
+				     (prot_id == ICE_APP_PROT_ID_ISCSI ||
+				      prot_id == ICE_APP_PROT_ID_ISCSI_860)) {
+					ice_app_prot_id_type = prot_id;
+					break;
+				}
+			}
 		} else {
 			/* FIP APP */
 			ice_aqc_cee_status_mask = ICE_AQC_CEE_FIP_STATUS_M;
@@ -892,11 +915,8 @@ enum ice_status ice_get_dcb_cfg(struct ice_port_info *pi)
 	ret = ice_aq_get_cee_dcb_cfg(pi->hw, &cee_cfg, NULL);
 	if (!ret) {
 		/* CEE mode */
-		dcbx_cfg = &pi->qos_cfg.local_dcbx_cfg;
-		dcbx_cfg->dcbx_mode = ICE_DCBX_MODE_CEE;
-		dcbx_cfg->tlv_status = le32_to_cpu(cee_cfg.tlv_status);
-		ice_cee_to_dcb_cfg(&cee_cfg, dcbx_cfg);
 		ret = ice_get_ieee_or_cee_dcb_cfg(pi, ICE_DCBX_MODE_CEE);
+		ice_cee_to_dcb_cfg(&cee_cfg, pi);
 	} else if (pi->hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT) {
 		/* CEE mode not enabled try querying IEEE data */
 		dcbx_cfg = &pi->qos_cfg.local_dcbx_cfg;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a6cb0c35748c..266036b7a49a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -535,6 +535,7 @@ struct ice_dcb_app_priority_table {
 #define ICE_TLV_STATUS_ERR	0x4
 #define ICE_APP_PROT_ID_FCOE	0x8906
 #define ICE_APP_PROT_ID_ISCSI	0x0cbc
+#define ICE_APP_PROT_ID_ISCSI_860 0x035c
 #define ICE_APP_PROT_ID_FIP	0x8914
 #define ICE_APP_SEL_ETHTYPE	0x1
 #define ICE_APP_SEL_TCPIP	0x2
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
