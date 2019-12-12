Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 575CB11D75E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 20:44:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F377B88448;
	Thu, 12 Dec 2019 19:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ueFvNElJxrzO; Thu, 12 Dec 2019 19:44:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3ADEA8844C;
	Thu, 12 Dec 2019 19:44:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 422331BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 36D38881A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4c19HRxzE7Nu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 19:44:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E024688440
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="296698855"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 11:44:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 03:13:00 -0800
Message-Id: <20191212111307.33566-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S35 08/15] ice: Remove Rx flex descriptor
 programming
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

From: Vignesh Sridhar <vignesh.sridhar@intel.com>

Remove Rx flex descriptor metadata and flag programming; per specification
these registers cannot be written to as they are read only.

Signed-off-by: Vignesh Sridhar <vignesh.sridhar@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   | 104 ------------------
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   9 --
 2 files changed, 113 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 28958c0a762a..86bf8b2ec51d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -7,25 +7,6 @@
 
 #define ICE_PF_RESET_WAIT_COUNT	200
 
-#define ICE_PROG_FLEX_ENTRY(hw, rxdid, mdid, idx) \
-	wr32((hw), GLFLXP_RXDID_FLX_WRD_##idx(rxdid), \
-	     ((ICE_RX_OPC_MDID << \
-	       GLFLXP_RXDID_FLX_WRD_##idx##_RXDID_OPCODE_S) & \
-	      GLFLXP_RXDID_FLX_WRD_##idx##_RXDID_OPCODE_M) | \
-	     (((mdid) << GLFLXP_RXDID_FLX_WRD_##idx##_PROT_MDID_S) & \
-	      GLFLXP_RXDID_FLX_WRD_##idx##_PROT_MDID_M))
-
-#define ICE_PROG_FLG_ENTRY(hw, rxdid, flg_0, flg_1, flg_2, flg_3, idx) \
-	wr32((hw), GLFLXP_RXDID_FLAGS(rxdid, idx), \
-	     (((flg_0) << GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S) & \
-	      GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M) | \
-	     (((flg_1) << GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_1_S) & \
-	      GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_1_M) | \
-	     (((flg_2) << GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_2_S) & \
-	      GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_2_M) | \
-	     (((flg_3) << GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_3_S) & \
-	      GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_3_M))
-
 /**
  * ice_set_mac_type - Sets MAC type
  * @hw: pointer to the HW structure
@@ -347,88 +328,6 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 	return 0;
 }
 
-/**
- * ice_init_flex_flags
- * @hw: pointer to the hardware structure
- * @prof_id: Rx Descriptor Builder profile ID
- *
- * Function to initialize Rx flex flags
- */
-static void ice_init_flex_flags(struct ice_hw *hw, enum ice_rxdid prof_id)
-{
-	u8 idx = 0;
-
-	/* Flex-flag fields (0-2) are programmed with FLG64 bits with layout:
-	 * flexiflags0[5:0] - TCP flags, is_packet_fragmented, is_packet_UDP_GRE
-	 * flexiflags1[3:0] - Not used for flag programming
-	 * flexiflags2[7:0] - Tunnel and VLAN types
-	 * 2 invalid fields in last index
-	 */
-	switch (prof_id) {
-	/* Rx flex flags are currently programmed for the NIC profiles only.
-	 * Different flag bit programming configurations can be added per
-	 * profile as needed.
-	 */
-	case ICE_RXDID_FLEX_NIC:
-	case ICE_RXDID_FLEX_NIC_2:
-		ICE_PROG_FLG_ENTRY(hw, prof_id, ICE_FLG_PKT_FRG,
-				   ICE_FLG_UDP_GRE, ICE_FLG_PKT_DSI,
-				   ICE_FLG_FIN, idx++);
-		/* flex flag 1 is not used for flexi-flag programming, skipping
-		 * these four FLG64 bits.
-		 */
-		ICE_PROG_FLG_ENTRY(hw, prof_id, ICE_FLG_SYN, ICE_FLG_RST,
-				   ICE_FLG_PKT_DSI, ICE_FLG_PKT_DSI, idx++);
-		ICE_PROG_FLG_ENTRY(hw, prof_id, ICE_FLG_PKT_DSI,
-				   ICE_FLG_PKT_DSI, ICE_FLG_EVLAN_x8100,
-				   ICE_FLG_EVLAN_x9100, idx++);
-		ICE_PROG_FLG_ENTRY(hw, prof_id, ICE_FLG_VLAN_x8100,
-				   ICE_FLG_TNL_VLAN, ICE_FLG_TNL_MAC,
-				   ICE_FLG_TNL0, idx++);
-		ICE_PROG_FLG_ENTRY(hw, prof_id, ICE_FLG_TNL1, ICE_FLG_TNL2,
-				   ICE_FLG_PKT_DSI, ICE_FLG_PKT_DSI, idx);
-		break;
-
-	default:
-		ice_debug(hw, ICE_DBG_INIT,
-			  "Flag programming for profile ID %d not supported\n",
-			  prof_id);
-	}
-}
-
-/**
- * ice_init_flex_flds
- * @hw: pointer to the hardware structure
- * @prof_id: Rx Descriptor Builder profile ID
- *
- * Function to initialize flex descriptors
- */
-static void ice_init_flex_flds(struct ice_hw *hw, enum ice_rxdid prof_id)
-{
-	enum ice_flex_rx_mdid mdid;
-
-	switch (prof_id) {
-	case ICE_RXDID_FLEX_NIC:
-	case ICE_RXDID_FLEX_NIC_2:
-		ICE_PROG_FLEX_ENTRY(hw, prof_id, ICE_RX_MDID_HASH_LOW, 0);
-		ICE_PROG_FLEX_ENTRY(hw, prof_id, ICE_RX_MDID_HASH_HIGH, 1);
-		ICE_PROG_FLEX_ENTRY(hw, prof_id, ICE_RX_MDID_FLOW_ID_LOWER, 2);
-
-		mdid = (prof_id == ICE_RXDID_FLEX_NIC_2) ?
-			ICE_RX_MDID_SRC_VSI : ICE_RX_MDID_FLOW_ID_HIGH;
-
-		ICE_PROG_FLEX_ENTRY(hw, prof_id, mdid, 3);
-
-		ice_init_flex_flags(hw, prof_id);
-		break;
-
-	default:
-		ice_debug(hw, ICE_DBG_INIT,
-			  "Field init for profile ID %d not supported\n",
-			  prof_id);
-	}
-}
-
 /**
  * ice_init_fltr_mgmt_struct - initializes filter management list and locks
  * @hw: pointer to the HW struct
@@ -882,9 +781,6 @@ enum ice_status ice_init_hw(struct ice_hw *hw)
 
 	if (status)
 		goto err_unroll_fltr_mgmt_struct;
-
-	ice_init_flex_flds(hw, ICE_RXDID_FLEX_NIC);
-	ice_init_flex_flds(hw, ICE_RXDID_FLEX_NIC_2);
 	status = ice_init_hw_tbls(hw);
 	if (status)
 		goto err_unroll_fltr_mgmt_struct;
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index bf9743c970fe..b2502c7fd6ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -61,15 +61,6 @@
 #define PRTDCB_TUP2TC				0x001D26C0
 #define GL_PREEXT_L2_PMASK0(_i)			(0x0020F0FC + ((_i) * 4))
 #define GL_PREEXT_L2_PMASK1(_i)			(0x0020F108 + ((_i) * 4))
-#define GLFLXP_RXDID_FLAGS(_i, _j)		(0x0045D000 + ((_i) * 4 + (_j) * 256))
-#define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S	0
-#define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M	ICE_M(0x3F, 0)
-#define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_1_S	8
-#define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_1_M	ICE_M(0x3F, 8)
-#define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_2_S	16
-#define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_2_M	ICE_M(0x3F, 16)
-#define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_3_S	24
-#define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_3_M	ICE_M(0x3F, 24)
 #define GLFLXP_RXDID_FLX_WRD_0(_i)		(0x0045c800 + ((_i) * 4))
 #define GLFLXP_RXDID_FLX_WRD_0_PROT_MDID_S	0
 #define GLFLXP_RXDID_FLX_WRD_0_PROT_MDID_M	ICE_M(0xFF, 0)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
