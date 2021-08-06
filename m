Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9703D3E30A7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 23:07:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 396E560B6E;
	Fri,  6 Aug 2021 21:07:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZUMfitbeFV2I; Fri,  6 Aug 2021 21:07:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4590960B53;
	Fri,  6 Aug 2021 21:07:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E7351C1162
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 21:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EEF9383C02
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 21:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mcotJcSb1X1P for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 21:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B76A083BAF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 21:07:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10068"; a="212588689"
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="212588689"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 14:07:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="438303757"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by orsmga002.jf.intel.com with ESMTP; 06 Aug 2021 14:07:12 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 13:53:56 -0700
Message-Id: <20210806205356.18517-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next 3/7] ice: Add DSCP support
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

From: Dave Ertman <david.m.ertman@intel.com>

Implement the code to handle submission of APP TLV's
containing DSCP to TC mapping.

The first such mapping received on an interface
will cause that PF to switch to L3 DSCP QoS mode,
apply the default config for that mode, and apply
the received mapping.

Only one such mapping will be allowed per DSCP value,
and when the last DSCP mapping is deleted, the PF
will switch back into L2 VLAN QoS mode, applying the
appropriate default QoS settings.

L3 DSCP QoS mode will only be allowed in SW DCBx
mode, in other words, when the FW LLDP engine is
disabled.  Commands that break this mutual exclusivity
will be blocked.

Co-developed-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
v2:
- Add implementation for ndo_select_queue to remap
the priority to match the DSCP2UP data
- Adjust ice_get_pfc_mode() to return 0 instead of -EOPNOTSUPP
when CONFIG_DCB is not defined
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  18 ++
 drivers/net/ethernet/intel/ice/ice_dcb.c      | 225 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dcb.h      |  19 ++
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   7 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |  12 +
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c   | 188 ++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   7 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  34 +++
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |  10 +-
 11 files changed, 468 insertions(+), 56 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 21b4c7cd6f05..012af71dcbff 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -671,6 +671,19 @@ struct ice_aqc_sw_rules_elem {
 	} __packed pdata;
 };
 
+/* Query PFC Mode (direct 0x0302)
+ * Set PFC Mode (direct 0x0303)
+ */
+struct ice_aqc_set_query_pfc_mode {
+	u8	pfc_mode;
+/* For Set Command response, reserved in all other cases */
+#define ICE_AQC_PFC_NOT_CONFIGURED	0
+/* For Query Command response, reserved in all other cases */
+#define ICE_AQC_DCB_DIS		0
+#define ICE_AQC_PFC_VLAN_BASED_PFC	1
+#define ICE_AQC_PFC_DSCP_BASED_PFC	2
+	u8	rsvd[15];
+};
 /* Get Default Topology (indirect 0x0400) */
 struct ice_aqc_get_topo {
 	u8 port_num;
@@ -1936,6 +1949,7 @@ struct ice_aq_desc {
 		struct ice_aqc_nvm_pkg_data pkg_data;
 		struct ice_aqc_nvm_pass_comp_tbl pass_comp_tbl;
 		struct ice_aqc_pf_vf_msg virt;
+		struct ice_aqc_set_query_pfc_mode set_query_pfc_mode;
 		struct ice_aqc_lldp_get_mib lldp_get_mib;
 		struct ice_aqc_lldp_set_mib_change lldp_set_event;
 		struct ice_aqc_lldp_stop lldp_stop;
@@ -2040,6 +2054,10 @@ enum ice_adminq_opc {
 
 	ice_aqc_opc_clear_pf_cfg			= 0x02A4,
 
+	/* DCB commands */
+	ice_aqc_opc_query_pfc_mode			= 0x0302,
+	ice_aqc_opc_set_pfc_mode			= 0x0303,
+
 	/* transmit scheduler commands */
 	ice_aqc_opc_get_dflt_topo			= 0x0400,
 	ice_aqc_opc_add_sched_elems			= 0x0401,
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 849fcf605479..1c1ade0fe11f 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -735,6 +735,46 @@ ice_aq_get_cee_dcb_cfg(struct ice_hw *hw,
 	return ice_aq_send_cmd(hw, &desc, (void *)buff, sizeof(*buff), cd);
 }
 
+/**
+ * ice_aq_set_pfc_mode - Set PFC mode
+ * @hw: pointer to the HW struct
+ * @pfc_mode: value of PFC mode to set
+ * @cd: pointer to command details structure or NULL
+ *
+ * This AQ call configures the PFC mdoe to DSCP-based PFC mode or
+ * VLAN-based PFC (0x0303)
+ */
+enum ice_status
+ice_aq_set_pfc_mode(struct ice_hw *hw, u8 pfc_mode, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_set_query_pfc_mode *cmd;
+	struct ice_aq_desc desc;
+	enum ice_status status;
+
+	if (pfc_mode > ICE_AQC_PFC_DSCP_BASED_PFC)
+		return ICE_ERR_PARAM;
+
+	cmd = &desc.params.set_query_pfc_mode;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_pfc_mode);
+
+	cmd->pfc_mode = pfc_mode;
+
+	status = ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+	if (status)
+		return status;
+
+	/* FW will write the PFC mode set back into cmd->pfc_mode, but if DCB is
+	 * disabled, FW will write back 0 to cmd->pfc_mode. After the AQ has
+	 * been executed, check if cmd->pfc_mode is what was requested. If not,
+	 * return an error.
+	 */
+	if (cmd->pfc_mode != pfc_mode)
+		return ICE_ERR_NOT_SUPPORTED;
+
+	return 0;
+}
+
 /**
  * ice_cee_to_dcb_cfg
  * @cee_cfg: pointer to CEE configuration struct
@@ -1207,7 +1247,140 @@ ice_add_ieee_app_pri_tlv(struct ice_lldp_org_tlv *tlv,
 }
 
 /**
- * ice_add_dcb_tlv - Add all IEEE TLVs
+ * ice_add_dscp_up_tlv - Prepare DSCP to UP TLV
+ * @tlv: location to build the TLV data
+ * @dcbcfg: location of data to convert to TLV
+ */
+static void
+ice_add_dscp_up_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
+{
+	u8 *buf = tlv->tlvinfo;
+	u32 ouisubtype;
+	u16 typelen;
+	int i;
+
+	typelen = ((ICE_TLV_TYPE_ORG << ICE_LLDP_TLV_TYPE_S) |
+		   ICE_DSCP_UP_TLV_LEN);
+	tlv->typelen = htons(typelen);
+
+	ouisubtype = (u32)((ICE_DSCP_OUI << ICE_LLDP_TLV_OUI_S) |
+			   ICE_DSCP_SUBTYPE_DSCP2UP);
+	tlv->ouisubtype = htonl(ouisubtype);
+
+	/* bytes 0 - 63 - IPv4 DSCP2UP LUT */
+	for (i = 0; i < ICE_DSCP_NUM_VAL; i++) {
+		/* IPv4 mapping */
+		buf[i] = dcbcfg->dscp_map[i];
+		/* IPv6 mapping */
+		buf[i + ICE_DSCP_IPV6_OFFSET] = dcbcfg->dscp_map[i];
+	}
+
+	/* byte 64 - IPv4 untagged traffic */
+	buf[i] = 0;
+
+	/* byte 144 - IPv6 untagged traffic */
+	buf[i + ICE_DSCP_IPV6_OFFSET] = 0;
+}
+
+#define ICE_BYTES_PER_TC	8
+/**
+ * ice_add_dscp_enf_tlv - Prepare DSCP Enforcement TLV
+ * @tlv: location to build the TLV data
+ */
+static void
+ice_add_dscp_enf_tlv(struct ice_lldp_org_tlv *tlv)
+{
+	u8 *buf = tlv->tlvinfo;
+	u32 ouisubtype;
+	u16 typelen;
+
+	typelen = ((ICE_TLV_TYPE_ORG << ICE_LLDP_TLV_TYPE_S) |
+		   ICE_DSCP_ENF_TLV_LEN);
+	tlv->typelen = htons(typelen);
+
+	ouisubtype = (u32)((ICE_DSCP_OUI << ICE_LLDP_TLV_OUI_S) |
+			   ICE_DSCP_SUBTYPE_ENFORCE);
+	tlv->ouisubtype = htonl(ouisubtype);
+
+	/* Allow all DSCP values to be valid for all TC's (IPv4 and IPv6) */
+	memset(buf, 0, 2 * (ICE_MAX_TRAFFIC_CLASS * ICE_BYTES_PER_TC));
+}
+
+/**
+ * ice_add_dscp_tc_bw_tlv - Prepare DSCP BW for TC TLV
+ * @tlv: location to build the TLV data
+ * @dcbcfg: location of the data to convert to TLV
+ */
+static void
+ice_add_dscp_tc_bw_tlv(struct ice_lldp_org_tlv *tlv,
+		       struct ice_dcbx_cfg *dcbcfg)
+{
+	struct ice_dcb_ets_cfg *etscfg;
+	u8 *buf = tlv->tlvinfo;
+	u32 ouisubtype;
+	u8 offset = 0;
+	u16 typelen;
+	int i;
+
+	typelen = ((ICE_TLV_TYPE_ORG << ICE_LLDP_TLV_TYPE_S) |
+		   ICE_DSCP_TC_BW_TLV_LEN);
+	tlv->typelen = htons(typelen);
+
+	ouisubtype = (u32)((ICE_DSCP_OUI << ICE_LLDP_TLV_OUI_S) |
+			   ICE_DSCP_SUBTYPE_TCBW);
+	tlv->ouisubtype = htonl(ouisubtype);
+
+	/* First Octect after subtype
+	 * ----------------------------
+	 * | RSV | CBS | RSV | Max TCs |
+	 * | 1b  | 1b  | 3b  | 3b      |
+	 * ----------------------------
+	 */
+	etscfg = &dcbcfg->etscfg;
+	buf[0] = etscfg->maxtcs & ICE_IEEE_ETS_MAXTC_M;
+
+	/* bytes 1 - 4 reserved */
+	offset = 5;
+
+	/* TC BW table
+	 * bytes 0 - 7 for TC 0 - 7
+	 *
+	 * TSA Assignment table
+	 * bytes 8 - 15 for TC 0 - 7
+	 */
+	for (i = 0; i < ICE_MAX_TRAFFIC_CLASS; i++) {
+		buf[offset] = etscfg->tcbwtable[i];
+		buf[offset + ICE_MAX_TRAFFIC_CLASS] = etscfg->tsatable[i];
+		offset++;
+	}
+}
+
+/**
+ * ice_add_dscp_pfc_tlv - Prepare DSCP PFC TLV
+ * @tlv: Fill PFC TLV in IEEE format
+ * @dcbcfg: Local store which holds the PFC CFG data
+ */
+static void
+ice_add_dscp_pfc_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
+{
+	u8 *buf = tlv->tlvinfo;
+	u32 ouisubtype;
+	u16 typelen;
+
+	typelen = ((ICE_TLV_TYPE_ORG << ICE_LLDP_TLV_TYPE_S) |
+		   ICE_DSCP_PFC_TLV_LEN);
+	tlv->typelen = htons(typelen);
+
+	ouisubtype = (u32)((ICE_DSCP_OUI << ICE_LLDP_TLV_OUI_S) |
+			   ICE_DSCP_SUBTYPE_PFC);
+	tlv->ouisubtype = htonl(ouisubtype);
+
+	buf[0] = dcbcfg->pfc.pfccap & 0xF;
+	buf[1] = dcbcfg->pfc.pfcena & 0xF;
+}
+
+/**
+ * ice_add_dcb_tlv - Add all IEEE or DSCP TLVs
  * @tlv: Fill TLV data in IEEE format
  * @dcbcfg: Local store which holds the DCB Config
  * @tlvid: Type of IEEE TLV
@@ -1218,21 +1391,41 @@ static void
 ice_add_dcb_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg,
 		u16 tlvid)
 {
-	switch (tlvid) {
-	case ICE_IEEE_TLV_ID_ETS_CFG:
-		ice_add_ieee_ets_tlv(tlv, dcbcfg);
-		break;
-	case ICE_IEEE_TLV_ID_ETS_REC:
-		ice_add_ieee_etsrec_tlv(tlv, dcbcfg);
-		break;
-	case ICE_IEEE_TLV_ID_PFC_CFG:
-		ice_add_ieee_pfc_tlv(tlv, dcbcfg);
-		break;
-	case ICE_IEEE_TLV_ID_APP_PRI:
-		ice_add_ieee_app_pri_tlv(tlv, dcbcfg);
-		break;
-	default:
-		break;
+	if (dcbcfg->pfc_mode == ICE_QOS_MODE_VLAN) {
+		switch (tlvid) {
+		case ICE_IEEE_TLV_ID_ETS_CFG:
+			ice_add_ieee_ets_tlv(tlv, dcbcfg);
+			break;
+		case ICE_IEEE_TLV_ID_ETS_REC:
+			ice_add_ieee_etsrec_tlv(tlv, dcbcfg);
+			break;
+		case ICE_IEEE_TLV_ID_PFC_CFG:
+			ice_add_ieee_pfc_tlv(tlv, dcbcfg);
+			break;
+		case ICE_IEEE_TLV_ID_APP_PRI:
+			ice_add_ieee_app_pri_tlv(tlv, dcbcfg);
+			break;
+		default:
+			break;
+		}
+	} else {
+		/* pfc_mode == ICE_QOS_MODE_DSCP */
+		switch (tlvid) {
+		case ICE_TLV_ID_DSCP_UP:
+			ice_add_dscp_up_tlv(tlv, dcbcfg);
+			break;
+		case ICE_TLV_ID_DSCP_ENF:
+			ice_add_dscp_enf_tlv(tlv);
+			break;
+		case ICE_TLV_ID_DSCP_TC_BW:
+			ice_add_dscp_tc_bw_tlv(tlv, dcbcfg);
+			break;
+		case ICE_TLV_ID_DSCP_TO_PFC:
+			ice_add_dscp_pfc_tlv(tlv, dcbcfg);
+			break;
+		default:
+			break;
+		}
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.h b/drivers/net/ethernet/intel/ice/ice_dcb.h
index d7e5e6178a21..39ade6b8bc57 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.h
@@ -22,6 +22,14 @@
 
 #define ICE_CEE_DCBX_OUI		0x001B21
 #define ICE_CEE_DCBX_TYPE		2
+
+#define ICE_DSCP_OUI			0xFFFFFF
+#define ICE_DSCP_SUBTYPE_DSCP2UP	0x41
+#define ICE_DSCP_SUBTYPE_ENFORCE	0x42
+#define ICE_DSCP_SUBTYPE_TCBW		0x43
+#define ICE_DSCP_SUBTYPE_PFC		0x44
+#define ICE_DSCP_IPV6_OFFSET		80
+
 #define ICE_CEE_SUBTYPE_PG_CFG		2
 #define ICE_CEE_SUBTYPE_PFC_CFG		3
 #define ICE_CEE_SUBTYPE_APP_PRI		4
@@ -78,11 +86,20 @@
 #define ICE_IEEE_TLV_ID_APP_PRI		6
 #define ICE_TLV_ID_END_OF_LLDPPDU	7
 #define ICE_TLV_ID_START		ICE_IEEE_TLV_ID_ETS_CFG
+#define ICE_TLV_ID_DSCP_UP		3
+#define ICE_TLV_ID_DSCP_ENF		4
+#define ICE_TLV_ID_DSCP_TC_BW		5
+#define ICE_TLV_ID_DSCP_TO_PFC		6
 
 #define ICE_IEEE_ETS_TLV_LEN		25
 #define ICE_IEEE_PFC_TLV_LEN		6
 #define ICE_IEEE_APP_TLV_LEN		11
 
+#define ICE_DSCP_UP_TLV_LEN		148
+#define ICE_DSCP_ENF_TLV_LEN		132
+#define ICE_DSCP_TC_BW_TLV_LEN		25
+#define ICE_DSCP_PFC_TLV_LEN		6
+
 /* IEEE 802.1AB LLDP Organization specific TLV */
 struct ice_lldp_org_tlv {
 	__be16 typelen;
@@ -120,6 +137,8 @@ struct ice_cee_app_prio {
 	u8 prio_map;
 } __packed;
 
+enum ice_status
+ice_aq_set_pfc_mode(struct ice_hw *hw, u8 pfc_mode, struct ice_sq_cd *cd);
 enum ice_status
 ice_aq_get_dcb_cfg(struct ice_hw *hw, u8 mib_type, u8 bridgetype,
 		   struct ice_dcbx_cfg *dcbcfg);
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 926cf748c5ec..26b4d5f579e6 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -544,7 +544,7 @@ static int ice_dcb_init_cfg(struct ice_pf *pf, bool locked)
  * @ets_willing: configure ETS willing
  * @locked: was this function called with RTNL held
  */
-static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool ets_willing, bool locked)
+int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool ets_willing, bool locked)
 {
 	struct ice_aqc_port_ets_elem buf = { 0 };
 	struct ice_dcbx_cfg *dcbcfg;
@@ -726,6 +726,11 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 		/* FW LLDP is disabled, activate SW DCBX/LLDP mode */
 		dev_info(dev, "FW LLDP is disabled, DCBx/LLDP in SW mode.\n");
 		clear_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags);
+		err = ice_aq_set_pfc_mode(&pf->hw, ICE_AQC_PFC_VLAN_BASED_PFC,
+					  NULL);
+		if (err)
+			dev_info(dev, "Failed to set VLAN PFC mode\n");
+
 		err = ice_dcb_sw_dflt_cfg(pf, true, locked);
 		if (err) {
 			dev_err(dev, "Failed to set local DCB config %d\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
index 261b6e2ed7bc..3dcde1750a5e 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
@@ -15,6 +15,7 @@
 #define ICE_DCB_HW_CHG		2 /* DCB configuration changed, no reset */
 
 void ice_dcb_rebuild(struct ice_pf *pf);
+int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool ets_willing, bool locked);
 u8 ice_dcb_get_ena_tc(struct ice_dcbx_cfg *dcbcfg);
 u8 ice_dcb_get_num_tc(struct ice_dcbx_cfg *dcbcfg);
 void ice_vsi_set_dcb_tc_cfg(struct ice_vsi *vsi);
@@ -59,6 +60,12 @@ static inline bool ice_is_dcb_active(struct ice_pf *pf)
 	return (test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags) ||
 		test_bit(ICE_FLAG_DCB_ENA, pf->flags));
 }
+
+static inline u8 ice_get_pfc_mode(struct ice_pf *pf)
+{
+	return pf->hw.port_info->qos_cfg.local_dcbx_cfg.pfc_mode;
+}
+
 #else
 static inline void ice_dcb_rebuild(struct ice_pf *pf) { }
 
@@ -113,6 +120,11 @@ ice_is_pfc_causing_hung_q(struct ice_pf __always_unused *pf,
 	return false;
 }
 
+static inline u8 ice_get_pfc_mode(struct ice_pf *pf)
+{
+	return 0;
+}
+
 static inline void ice_pf_dcb_recfg(struct ice_pf *pf) { }
 static inline void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi) { }
 static inline void ice_update_dcb_stats(struct ice_pf *pf) { }
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index 4180f1f35fb8..0121dbc62c8a 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -64,7 +64,7 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_dcbx_cfg *new_cfg;
 	int bwcfg = 0, bwrec = 0;
-	int err, i, max_tc = 0;
+	int err, i;
 
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
@@ -80,13 +80,14 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 		new_cfg->etscfg.tcbwtable[i] = ets->tc_tx_bw[i];
 		bwcfg += ets->tc_tx_bw[i];
 		new_cfg->etscfg.tsatable[i] = ets->tc_tsa[i];
-		new_cfg->etscfg.prio_table[i] = ets->prio_tc[i];
-		if (ets->prio_tc[i] > max_tc)
-			max_tc = ets->prio_tc[i];
+		if (new_cfg->pfc_mode == ICE_QOS_MODE_VLAN) {
+			/* in DSCP mode up->tc mapping cannot change */
+			new_cfg->etscfg.prio_table[i] = ets->prio_tc[i];
+			new_cfg->etsrec.prio_table[i] = ets->reco_prio_tc[i];
+		}
 		new_cfg->etsrec.tcbwtable[i] = ets->tc_reco_bw[i];
 		bwrec += ets->tc_reco_bw[i];
 		new_cfg->etsrec.tsatable[i] = ets->tc_reco_tsa[i];
-		new_cfg->etsrec.prio_table[i] = ets->reco_prio_tc[i];
 	}
 
 	if (ice_dcb_bwchk(pf, new_cfg)) {
@@ -94,12 +95,7 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 		goto ets_out;
 	}
 
-	max_tc = pf->hw.func_caps.common_cap.maxtc;
-
-	new_cfg->etscfg.maxtcs = max_tc;
-
-	if (!bwcfg)
-		new_cfg->etscfg.tcbwtable[0] = 100;
+	new_cfg->etscfg.maxtcs = pf->hw.func_caps.common_cap.maxtc;
 
 	if (!bwrec)
 		new_cfg->etsrec.tcbwtable[0] = 100;
@@ -173,10 +169,13 @@ static u8 ice_dcbnl_setdcbx(struct net_device *netdev, u8 mode)
 
 	pf->dcbx_cap = mode;
 	qos_cfg = &pf->hw.port_info->qos_cfg;
-	if (mode & DCB_CAP_DCBX_VER_CEE)
+	if (mode & DCB_CAP_DCBX_VER_CEE) {
+		if (qos_cfg->local_dcbx_cfg.pfc_mode == ICE_QOS_MODE_DSCP)
+			return ICE_DCB_NO_HW_CHG;
 		qos_cfg->local_dcbx_cfg.dcbx_mode = ICE_DCBX_MODE_CEE;
-	else
+	} else {
 		qos_cfg->local_dcbx_cfg.dcbx_mode = ICE_DCBX_MODE_IEEE;
+	}
 
 	dev_info(ice_pf_to_dev(pf), "DCBx mode = 0x%x\n", mode);
 	return ICE_DCB_HW_CHG_RST;
@@ -683,6 +682,8 @@ ice_dcbnl_find_app(struct ice_dcbx_cfg *cfg,
 	return false;
 }
 
+#define ICE_BYTES_PER_DSCP_VAL		8
+
 /**
  * ice_dcbnl_setapp - set local IEEE App config
  * @netdev: relevant netdev struct
@@ -693,42 +694,114 @@ static int ice_dcbnl_setapp(struct net_device *netdev, struct dcb_app *app)
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_dcb_app_priority_table new_app;
 	struct ice_dcbx_cfg *old_cfg, *new_cfg;
+	u8 max_tc;
 	int ret;
 
-	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
-	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
+	/* ONLY DSCP APP TLVs have operational significance */
+	if (app->selector != IEEE_8021QAZ_APP_SEL_DSCP)
 		return -EINVAL;
 
-	mutex_lock(&pf->tc_mutex);
+	/* only allow APP TLVs in SW Mode */
+	if (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) {
+		netdev_err(netdev, "can't do DSCP QoS when FW DCB agent active\n");
+		return -EINVAL;
+	}
 
-	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
+		return -EINVAL;
 
-	old_cfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
+	if (app->protocol >= ICE_DSCP_NUM_VAL) {
+		netdev_err(netdev, "DSCP value 0x%04X out of range\n",
+			   app->protocol);
+		return -EINVAL;
+	}
 
-	if (old_cfg->numapps == ICE_DCBX_MAX_APPS) {
-		ret = -EINVAL;
-		goto setapp_out;
+	max_tc = pf->hw.func_caps.common_cap.maxtc;
+	if (app->priority >= max_tc) {
+		netdev_err(netdev, "TC %d out of range, max TC %d\n",
+			   app->priority, max_tc);
+		return -EINVAL;
 	}
 
+	/* grab TC mutex */
+	mutex_lock(&pf->tc_mutex);
+
+	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
+	old_cfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
+
 	ret = dcb_ieee_setapp(netdev, app);
 	if (ret)
 		goto setapp_out;
 
+	if (test_and_set_bit(app->protocol, new_cfg->dscp_mapped)) {
+		netdev_err(netdev, "DSCP value 0x%04X already user mapped\n",
+			   app->protocol);
+		ret = dcb_ieee_delapp(netdev, app);
+		if (ret)
+			netdev_err(netdev, "Failed to delete re-mapping TLV\n");
+		ret = -EINVAL;
+		goto setapp_out;
+	}
+
 	new_app.selector = app->selector;
 	new_app.prot_id = app->protocol;
 	new_app.priority = app->priority;
-	if (ice_dcbnl_find_app(old_cfg, &new_app)) {
-		ret = 0;
-		goto setapp_out;
-	}
 
+	/* If port is not in DSCP mode, need to set */
+	if (old_cfg->pfc_mode == ICE_QOS_MODE_VLAN) {
+		int i, j;
+
+		/* set DSCP mode */
+		ret = ice_aq_set_pfc_mode(&pf->hw, ICE_AQC_PFC_DSCP_BASED_PFC,
+					  NULL);
+		if (ret) {
+			netdev_err(netdev, "Failed to set DSCP PFC mode %d\n",
+				   ret);
+			goto setapp_out;
+		}
+		netdev_info(netdev, "Switched QoS to L3 DSCP mode\n");
+
+		new_cfg->pfc_mode = ICE_QOS_MODE_DSCP;
+
+		/* set default DSCP QoS values */
+		new_cfg->etscfg.willing = 0;
+		new_cfg->pfc.pfccap = max_tc;
+		new_cfg->pfc.willing = 0;
+
+		for (i = 0; i < max_tc; i++)
+			for (j = 0; j < ICE_BYTES_PER_DSCP_VAL; j++) {
+				int dscp, offset;
+
+				dscp = (i * max_tc) + j;
+				offset = max_tc * ICE_BYTES_PER_DSCP_VAL;
+
+				new_cfg->dscp_map[dscp] = i;
+				/* if less that 8 TCs supported */
+				if (max_tc < ICE_MAX_TRAFFIC_CLASS)
+					new_cfg->dscp_map[dscp + offset] = i;
+			}
+
+		new_cfg->etscfg.tcbwtable[0] = 100;
+		new_cfg->etscfg.tsatable[0] = ICE_IEEE_TSA_ETS;
+		new_cfg->etscfg.prio_table[0] = 0;
+
+		for (i = 1; i < max_tc; i++) {
+			new_cfg->etscfg.tcbwtable[i] = 0;
+			new_cfg->etscfg.tsatable[i] = ICE_IEEE_TSA_ETS;
+			new_cfg->etscfg.prio_table[i] = i;
+		}
+	} /* end of switching to DSCP mode */
+
+	/* apply new mapping for this DSCP value */
+	new_cfg->dscp_map[app->protocol] = app->priority;
 	new_cfg->app[new_cfg->numapps++] = new_app;
+
 	ret = ice_pf_dcb_cfg(pf, new_cfg, true);
 	/* return of zero indicates new cfg applied */
 	if (ret == ICE_DCB_HW_CHG_RST)
 		ice_dcbnl_devreset(netdev);
-	if (ret == ICE_DCB_NO_HW_CHG)
-		ret = ICE_DCB_HW_CHG_RST;
+	else
+		ret = ICE_DCB_NO_HW_CHG;
 
 setapp_out:
 	mutex_unlock(&pf->tc_mutex);
@@ -749,22 +822,21 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 	unsigned int i, j;
 	int ret = 0;
 
-	if (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED)
+	if (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) {
+		netdev_err(netdev, "can't delete DSCP netlink app when FW DCB agent is active\n");
 		return -EINVAL;
+	}
 
 	mutex_lock(&pf->tc_mutex);
 	old_cfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 
-	if (old_cfg->numapps <= 1)
-		goto delapp_out;
-
 	ret = dcb_ieee_delapp(netdev, app);
 	if (ret)
 		goto delapp_out;
 
 	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
-	for (i = 1; i < new_cfg->numapps; i++) {
+	for (i = 0; i < new_cfg->numapps; i++) {
 		if (app->selector == new_cfg->app[i].selector &&
 		    app->protocol == new_cfg->app[i].prot_id &&
 		    app->priority == new_cfg->app[i].priority) {
@@ -784,17 +856,57 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 	new_cfg->numapps--;
 
 	for (j = i; j < new_cfg->numapps; j++) {
-		new_cfg->app[i].selector = old_cfg->app[j + 1].selector;
-		new_cfg->app[i].prot_id = old_cfg->app[j + 1].prot_id;
-		new_cfg->app[i].priority = old_cfg->app[j + 1].priority;
+		new_cfg->app[j].selector = old_cfg->app[j + 1].selector;
+		new_cfg->app[j].prot_id = old_cfg->app[j + 1].prot_id;
+		new_cfg->app[j].priority = old_cfg->app[j + 1].priority;
 	}
 
-	ret = ice_pf_dcb_cfg(pf, new_cfg, true);
-	/* return of zero indicates new cfg applied */
+	/* if not a DSCP APP TLV, then we are done */
+	if (app->selector != IEEE_8021QAZ_APP_SEL_DSCP) {
+		ret = ICE_DCB_HW_CHG;
+		goto delapp_out;
+	}
+
+	/* if DSCP TLV, then need to address change in mapping */
+	clear_bit(app->protocol, new_cfg->dscp_mapped);
+	/* remap this DSCP value to default value */
+	new_cfg->dscp_map[app->protocol] = app->protocol %
+					   ICE_BYTES_PER_DSCP_VAL;
+
+	/* if the last DSCP mapping just got deleted, need to switch
+	 * to L2 VLAN QoS mode
+	 */
+	if (bitmap_empty(new_cfg->dscp_mapped, ICE_DSCP_NUM_VAL) &&
+	    new_cfg->pfc_mode == ICE_QOS_MODE_DSCP) {
+		ret = ice_aq_set_pfc_mode(&pf->hw,
+					  ICE_AQC_PFC_VLAN_BASED_PFC,
+					  NULL);
+		if (ret) {
+			netdev_info(netdev, "Failed to set VLAN PFC mode %d\n",
+				    ret);
+			goto delapp_out;
+		}
+		netdev_info(netdev, "Switched QoS to L2 VLAN mode\n");
+
+		new_cfg->pfc_mode = ICE_QOS_MODE_VLAN;
+
+		ret = ice_dcb_sw_dflt_cfg(pf, true, true);
+	} else {
+		ret = ice_pf_dcb_cfg(pf, new_cfg, true);
+	}
+
+	/* return of ICE_DCB_HW_CHG_RST indicates new cfg applied
+	 * and reset needs to be performed
+	 */
 	if (ret == ICE_DCB_HW_CHG_RST)
 		ice_dcbnl_devreset(netdev);
+
+	/* if the change was not siginificant enough to actually call
+	 * the reconfiguration flow, we still need to tell caller that
+	 * their request was successfully handled
+	 */
 	if (ret == ICE_DCB_NO_HW_CHG)
-		ret = ICE_DCB_HW_CHG_RST;
+		ret = ICE_DCB_HW_CHG;
 
 delapp_out:
 	mutex_unlock(&pf->tc_mutex);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 2858805cdeea..e3bb8b961823 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1218,6 +1218,13 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			enum ice_status status;
 			bool dcbx_agent_status;
 
+			if (ice_get_pfc_mode(pf) == ICE_QOS_MODE_DSCP) {
+				clear_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags);
+				dev_err(dev, "QoS in L3 DSCP mode, FW Agent not allowed to start\n");
+				ret = -EOPNOTSUPP;
+				goto ethtool_exit;
+			}
+
 			/* Remove rule to direct LLDP packets to default VSI.
 			 * The FW LLDP engine will now be consuming them.
 			 */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4580202a6421..873092aacbb2 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7307,6 +7307,7 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_open = ice_open,
 	.ndo_stop = ice_stop,
 	.ndo_start_xmit = ice_start_xmit,
+	.ndo_select_queue = ice_select_queue,
 	.ndo_features_check = ice_features_check,
 	.ndo_set_rx_mode = ice_set_rx_mode,
 	.ndo_set_mac_address = ice_set_mac_address,
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 67678b7e9dd1..db231ec86f11 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -6,6 +6,7 @@
 #include <linux/prefetch.h>
 #include <linux/mm.h>
 #include <linux/bpf_trace.h>
+#include <net/dsfield.h>
 #include <net/xdp.h>
 #include "ice_txrx_lib.h"
 #include "ice_lib.h"
@@ -2383,6 +2384,39 @@ netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 	return ice_xmit_frame_ring(skb, tx_ring);
 }
 
+/**
+ * ice_get_dscp_up - return the UP/TC value for a SKB
+ * @dcbcfg: DCB config that contains DSCP to UP/TC mapping
+ * @skb: SKB to query for info to determine UP/TC
+ *
+ * This function is to only be called when the PF is in L3 DSCP PFC mode
+ */
+static u8 ice_get_dscp_up(struct ice_dcbx_cfg *dcbcfg, struct sk_buff *skb)
+{
+	u8 dscp = 0;
+
+	if (skb->protocol == htons(ETH_P_IP))
+		dscp = ipv4_get_dsfield(ip_hdr(skb)) >> 2;
+	else if (skb->protocol == htons(ETH_P_IPV6))
+		dscp = ipv6_get_dsfield(ipv6_hdr(skb)) >> 2;
+
+	return dcbcfg->dscp_map[dscp];
+}
+
+u16
+ice_select_queue(struct net_device *netdev, struct sk_buff *skb,
+		 struct net_device *sb_dev)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	struct ice_dcbx_cfg *dcbcfg;
+
+	dcbcfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
+	if (dcbcfg->pfc_mode == ICE_QOS_MODE_DSCP)
+		skb->priority = ice_get_dscp_up(dcbcfg, skb);
+
+	return netdev_pick_tx(netdev, skb, sb_dev);
+}
+
 /**
  * ice_clean_ctrl_tx_irq - interrupt handler for flow director Tx queue
  * @tx_ring: tx_ring to clean
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 63538cb3b632..09e3d3b1afc4 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -382,6 +382,9 @@ union ice_32b_rx_flex_desc;
 
 bool ice_alloc_rx_bufs(struct ice_ring *rxr, u16 cleaned_count);
 netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device *netdev);
+u16
+ice_select_queue(struct net_device *dev, struct sk_buff *skb,
+		 struct net_device *sb_dev);
 void ice_clean_tx_ring(struct ice_ring *tx_ring);
 void ice_clean_rx_ring(struct ice_ring *rx_ring);
 int ice_setup_tx_ring(struct ice_ring *tx_ring);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index fadc68f74d95..95bf4fd6f6b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -626,7 +626,8 @@ struct ice_dcb_app_priority_table {
 };
 
 #define ICE_MAX_USER_PRIORITY	8
-#define ICE_DCBX_MAX_APPS	32
+#define ICE_DCBX_MAX_APPS	64
+#define ICE_DSCP_NUM_VAL	64
 #define ICE_LLDPDU_SIZE		1500
 #define ICE_TLV_STATUS_OPER	0x1
 #define ICE_TLV_STATUS_SYNC	0x2
@@ -644,7 +645,14 @@ struct ice_dcbx_cfg {
 	struct ice_dcb_ets_cfg etscfg;
 	struct ice_dcb_ets_cfg etsrec;
 	struct ice_dcb_pfc_cfg pfc;
+#define ICE_QOS_MODE_VLAN	0x0
+#define ICE_QOS_MODE_DSCP	0x1
+	u8 pfc_mode;
 	struct ice_dcb_app_priority_table app[ICE_DCBX_MAX_APPS];
+	/* when DSCP mapping defined by user set its bit to 1 */
+	DECLARE_BITMAP(dscp_mapped, ICE_DSCP_NUM_VAL);
+	/* array holding DSCP -> UP/TC values for DSCP L3 QoS mode */
+	u8 dscp_map[ICE_DSCP_NUM_VAL];
 	u8 dcbx_mode;
 #define ICE_DCBX_MODE_CEE	0x1
 #define ICE_DCBX_MODE_IEEE	0x2
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
