Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC02B21E1BB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 22:57:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E400893BA;
	Mon, 13 Jul 2020 20:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lksILHAWuFKU; Mon, 13 Jul 2020 20:57:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1D0E89386;
	Mon, 13 Jul 2020 20:57:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B1341BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 23B0C87752
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x6KvU3BiO3OV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0EAE2876C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
IronPort-SDR: kyUgGfq9RoNKolvQz9TzI7ffs+LoAXZVTDZcYdKX+CJp3rSWxlluQQFPYaVYtz3Fixe9I2LPCW
 TbpjvdEvctIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213545912"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="213545912"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 13:57:08 -0700
IronPort-SDR: tUdYaInex2gg8EJLrzGIoovQMv55z/HL+kXYhhSoWClNwtwAze9mPp8v4NwJd30zLsyUomwGI6
 C8X678r23ODg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="285526682"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2020 13:57:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jul 2020 13:53:04 -0700
Message-Id: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S50 01/15] ice: Implement LFC workaround
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

There is a bug where the LFC settings are not being preserved
through a link event.  The registers in question are the ones
that are touched (and restored) when a set_local_mib AQ command
is performed.

On a link-up event, make sure that a set_local_mib is being
performed.

Move the function ice_aq_set_lldp_mib() from the DCB specific
ice_dcb.c to ice_common.c so that the driver always has access
to this AQ command.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  |  33 ++++++
 drivers/net/ethernet/intel/ice/ice_common.h  |   3 +
 drivers/net/ethernet/intel/ice/ice_dcb.c     |  33 ------
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |   4 -
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  11 ++
 drivers/net/ethernet/intel/ice/ice_main.c    | 102 ++++++++++++++++++-
 6 files changed, 148 insertions(+), 38 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 4579939073c3..99b12446c7b0 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4338,3 +4338,36 @@ bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps)
 
 	return false;
 }
+
+/**
+ * ice_aq_set_lldp_mib - Set the LLDP MIB
+ * @hw: pointer to the HW struct
+ * @mib_type: Local, Remote or both Local and Remote MIBs
+ * @buf: pointer to the caller-supplied buffer to store the MIB block
+ * @buf_size: size of the buffer (in bytes)
+ * @cd: pointer to command details structure or NULL
+ *
+ * Set the LLDP MIB. (0x0A08)
+ */
+enum ice_status
+ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
+		    struct ice_sq_cd *cd)
+{
+	struct ice_aqc_lldp_set_local_mib *cmd;
+	struct ice_aq_desc desc;
+
+	cmd = &desc.params.lldp_set_mib;
+
+	if (buf_size == 0 || !buf)
+		return ICE_ERR_PARAM;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_set_local_mib);
+
+	desc.flags |= cpu_to_le16((u16)ICE_AQ_FLAG_RD);
+	desc.datalen = cpu_to_le16(buf_size);
+
+	cmd->type = mib_type;
+	cmd->length = cpu_to_le16(buf_size);
+
+	return ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 33a681a75439..b4bf6f84b464 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -172,4 +172,7 @@ ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 enum ice_status
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_txsched_elem_data *buf);
+enum ice_status
+ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
+		    struct ice_sq_cd *cd);
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 2cecc9d08005..2a3147ee0bbb 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -134,39 +134,6 @@ ice_aq_start_lldp(struct ice_hw *hw, bool persist, struct ice_sq_cd *cd)
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
 
-/**
- * ice_aq_set_lldp_mib - Set the LLDP MIB
- * @hw: pointer to the HW struct
- * @mib_type: Local, Remote or both Local and Remote MIBs
- * @buf: pointer to the caller-supplied buffer to store the MIB block
- * @buf_size: size of the buffer (in bytes)
- * @cd: pointer to command details structure or NULL
- *
- * Set the LLDP MIB. (0x0A08)
- */
-static enum ice_status
-ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
-		    struct ice_sq_cd *cd)
-{
-	struct ice_aqc_lldp_set_local_mib *cmd;
-	struct ice_aq_desc desc;
-
-	cmd = &desc.params.lldp_set_mib;
-
-	if (buf_size == 0 || !buf)
-		return ICE_ERR_PARAM;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_set_local_mib);
-
-	desc.flags |= cpu_to_le16((u16)ICE_AQ_FLAG_RD);
-	desc.datalen = cpu_to_le16(buf_size);
-
-	cmd->type = mib_type;
-	cmd->length = cpu_to_le16(buf_size);
-
-	return ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
-}
-
 /**
  * ice_get_dcbx_status
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 979af197f8a3..3b3a2789eb55 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -444,10 +444,6 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 		goto dcb_error;
 	}
 
-	/* If DCB was not enabled previously, we are done */
-	if (!test_bit(ICE_FLAG_DCB_ENA, pf->flags))
-		return;
-
 	mutex_lock(&pf->tc_mutex);
 
 	if (!pf->hw.port_info->is_sw_lldp)
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
index 323238669572..35c21d9ae009 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
@@ -53,6 +53,12 @@ ice_set_cgd_num(struct ice_tlan_ctx *tlan_ctx, struct ice_ring *ring)
 {
 	tlan_ctx->cgd_num = ring->dcb_tc;
 }
+
+static inline bool ice_is_dcb_active(struct ice_pf *pf)
+{
+	return (test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags) ||
+		test_bit(ICE_FLAG_DCB_ENA, pf->flags));
+}
 #else
 #define ice_dcb_rebuild(pf) do {} while (0)
 
@@ -95,6 +101,11 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_ring __always_unused *tx_ring,
 	return 0;
 }
 
+static inline bool ice_is_dcb_active(struct ice_pf __always_unused *pf)
+{
+	return false;
+}
+
 static inline bool
 ice_is_pfc_causing_hung_q(struct ice_pf __always_unused *pf,
 			  unsigned int __always_unused txqueue)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7ea99f164d18..3024fff6ca1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -766,6 +766,100 @@ static void ice_vsi_link_event(struct ice_vsi *vsi, bool link_up)
 	}
 }
 
+/**
+ * ice_set_dflt_mib - send a default config MIB to the FW
+ * @pf: private PF struct
+ *
+ * This function sends a default configuration MIB to the FW.
+ *
+ * If this function errors out at any point, the driver is still able to
+ * function.  The main impact is that LFC may not operate as expected.
+ * Therefore an error state in this function should be treated with a DBG
+ * message and continue on with driver rebuild/reenable.
+ */
+static void ice_set_dflt_mib(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	u8 mib_type, *buf, *lldpmib = NULL;
+	u16 len, typelen, offset = 0;
+	struct ice_lldp_org_tlv *tlv;
+	struct ice_hw *hw;
+	u32 ouisubtype;
+
+	if (!pf) {
+		dev_dbg(dev, "%s NULL pf pointer\n", __func__);
+		return;
+	}
+
+	hw = &pf->hw;
+	mib_type = SET_LOCAL_MIB_TYPE_LOCAL_MIB;
+	lldpmib = kzalloc(ICE_LLDPDU_SIZE, GFP_KERNEL);
+	if (!lldpmib) {
+		dev_dbg(dev, "%s Failed to allocate MIB memory\n",
+			__func__);
+		return;
+	}
+
+	/* Add ETS CFG TLV */
+	tlv = (struct ice_lldp_org_tlv *)lldpmib;
+	typelen = ((ICE_TLV_TYPE_ORG << ICE_LLDP_TLV_TYPE_S) |
+		   ICE_IEEE_ETS_TLV_LEN);
+	tlv->typelen = htons(typelen);
+	ouisubtype = ((ICE_IEEE_8021QAZ_OUI << ICE_LLDP_TLV_OUI_S) |
+		      ICE_IEEE_SUBTYPE_ETS_CFG);
+	tlv->ouisubtype = htonl(ouisubtype);
+
+	buf = tlv->tlvinfo;
+	buf[0] = 0;
+
+	/* ETS CFG all UPs map to TC 0. Next 4 (1 - 4) Octets = 0.
+	 * Octets 5 - 12 are BW values, set octet 5 to 100% BW.
+	 * Octets 13 - 20 are TSA values - leave as zeros
+	 */
+	buf[5] = 0x64;
+	len = (typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S;
+	offset += len + 2;
+	tlv = (struct ice_lldp_org_tlv *)
+		((char *)tlv + sizeof(tlv->typelen) + len);
+
+	/* Add ETS REC TLV */
+	buf = tlv->tlvinfo;
+	tlv->typelen = htons(typelen);
+
+	ouisubtype = ((ICE_IEEE_8021QAZ_OUI << ICE_LLDP_TLV_OUI_S) |
+		      ICE_IEEE_SUBTYPE_ETS_REC);
+	tlv->ouisubtype = htonl(ouisubtype);
+
+	/* First octet of buf is reserved
+	 * Octets 1 - 4 map UP to TC - all UPs map to zero
+	 * Octets 5 - 12 are BW values - set TC 0 to 100%.
+	 * Octets 13 - 20 are TSA value - leave as zeros
+	 */
+	buf[5] = 0x64;
+	offset += len + 2;
+	tlv = (struct ice_lldp_org_tlv *)
+		((char *)tlv + sizeof(tlv->typelen) + len);
+
+	/* Add PFC CFG TLV */
+	typelen = ((ICE_TLV_TYPE_ORG << ICE_LLDP_TLV_TYPE_S) |
+		   ICE_IEEE_PFC_TLV_LEN);
+	tlv->typelen = htons(typelen);
+
+	ouisubtype = ((ICE_IEEE_8021QAZ_OUI << ICE_LLDP_TLV_OUI_S) |
+		      ICE_IEEE_SUBTYPE_PFC_CFG);
+	tlv->ouisubtype = htonl(ouisubtype);
+
+	/* Octet 1 left as all zeros - PFC disabled */
+	buf[0] = 0x08;
+	len = (typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S;
+	offset += len + 2;
+
+	if (ice_aq_set_lldp_mib(hw, mib_type, (void *)lldpmib, offset, NULL))
+		dev_dbg(dev, "%s Failed to set default LLDP MIB\n", __func__);
+
+	kfree(lldpmib);
+}
+
 /**
  * ice_link_event - process the link event
  * @pf: PF that the link event is associated with
@@ -821,7 +915,13 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	if (link_up == old_link && link_speed == old_link_speed)
 		return result;
 
-	ice_dcb_rebuild(pf);
+	if (ice_is_dcb_active(pf)) {
+		if (test_bit(ICE_FLAG_DCB_ENA, pf->flags))
+			ice_dcb_rebuild(pf);
+	} else {
+		if (link_up)
+			ice_set_dflt_mib(pf);
+	}
 	ice_vsi_link_event(vsi, link_up);
 	ice_print_link_msg(vsi, link_up);
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
