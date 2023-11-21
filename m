Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C107F381B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 22:20:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8D2A81338;
	Tue, 21 Nov 2023 21:20:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8D2A81338
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700601632;
	bh=W6Tmsi9in/X9VNJwBCS4GQyOlfxFGk91eSRQBIflzAM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A5zCUhWDkDaypZV1ZRZ73nlMdNFvNGGNQJxTdpol/ZNQb1NQmxDtRcurDVTJPSppd
	 16VtD4OcS+PV235Oszaygh2ebzyEkOn5Sd2DmQfldnetUfhvBCNrnPIkJQTzO8gDow
	 fzT3U6ydCKNgxwHBFYSpMjP6+FCD0dD1a/MXtpR9m+auWsdlkUI/5luJUBavryKb5T
	 left0KMlSGrXd9KgBWdt3rXJGSQLHSR9ur/ja4xukWLu2IbEvADWCOJw85vKV4mjra
	 C9JxWu+EfRIVvDjIuf5sxfqmuO05gmOd6NGeeG7Z2hVF0ldfWaq/a+BqhboetJIJBC
	 5/QkMANCD7uHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0MKD_FP2tp9T; Tue, 21 Nov 2023 21:20:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0882C80DC4;
	Tue, 21 Nov 2023 21:20:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0882C80DC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5C621BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F84840898
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F84840898
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id okZ_TW7xiLJm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C557410BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C557410BA
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423022105"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="423022105"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716630568"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="716630568"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:38 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 13:19:21 -0800
Message-Id: <20231121211921.19834-14-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231121211921.19834-1-jesse.brandeburg@intel.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601582; x=1732137582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9pr7BDu0E+qO7xyp0wD6HdLxbUjs1uDBRDgLbIm+GrY=;
 b=APPwzQOB2uBUMPdLn0ABLse9e6PcG8IED+eY/9M3sQL/SqFaZQAO1As8
 GNnTRNNK2U4PTDcNutG2ZN9F7K4/L3ghxasXeurr30xsBN1v30XYEb+gc
 tIcneMz7kU74t0pUuTwe1yOB8h75oOFuQJnif/kct8ApDVVhaio80X/tN
 CnTq3/ibryFGGFXLOlE9BoRuVT6EQntf5xTdVdtPb+kiaksJGMx8G5n2M
 Fqp09ped5qsju9RSenl7TSxZEvBTG1iwskWNirYCX4tKue35PNwMNELXp
 mS5AWKq7ZQN4PiEoupjeVL551oD0Fb90ih8Jz+wmMpOi5zIInJ3bYnsCU
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=APPwzQOB
Subject: [Intel-wired-lan] [PATCH iwl-next v1 13/13] ice: field get
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor the ice driver to use FIELD_GET() for mask and shift reads,
which reduces lines of code and adds clarity of intent.

This code was generated by the following coccinelle/spatch script and
then manually repaired.

@get@
constant shift,mask;
type T;
expression a;
@@
-(((T)(a) & mask) >> shift)
+FIELD_GET(mask, a)

and applied via:
spatch --sp-file field_prep.cocci --in-place --dir \
 drivers/net/ethernet/intel/

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     | 12 +--
 drivers/net/ethernet/intel/ice/ice_common.c   | 15 ++--
 drivers/net/ethernet/intel/ice/ice_dcb.c      | 74 ++++++++-----------
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c   |  2 +-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  3 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  5 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 48 +++++-------
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 15 ++--
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  4 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    |  3 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  3 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  2 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 13 ++--
 13 files changed, 81 insertions(+), 118 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 3fd6e99dba23..26648b193ac9 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -224,14 +224,10 @@ static void ice_cfg_itr_gran(struct ice_hw *hw)
 
 	/* no need to update global register if ITR gran is already set */
 	if (!(regval & GLINT_CTL_DIS_AUTOMASK_M) &&
-	    (((regval & GLINT_CTL_ITR_GRAN_200_M) >>
-	     GLINT_CTL_ITR_GRAN_200_S) == ICE_ITR_GRAN_US) &&
-	    (((regval & GLINT_CTL_ITR_GRAN_100_M) >>
-	     GLINT_CTL_ITR_GRAN_100_S) == ICE_ITR_GRAN_US) &&
-	    (((regval & GLINT_CTL_ITR_GRAN_50_M) >>
-	     GLINT_CTL_ITR_GRAN_50_S) == ICE_ITR_GRAN_US) &&
-	    (((regval & GLINT_CTL_ITR_GRAN_25_M) >>
-	      GLINT_CTL_ITR_GRAN_25_S) == ICE_ITR_GRAN_US))
+	    (FIELD_GET(GLINT_CTL_ITR_GRAN_200_M, regval) == ICE_ITR_GRAN_US) &&
+	    (FIELD_GET(GLINT_CTL_ITR_GRAN_100_M, regval) == ICE_ITR_GRAN_US) &&
+	    (FIELD_GET(GLINT_CTL_ITR_GRAN_50_M, regval) == ICE_ITR_GRAN_US) &&
+	    (FIELD_GET(GLINT_CTL_ITR_GRAN_25_M, regval) == ICE_ITR_GRAN_US))
 		return;
 
 	regval = FIELD_PREP(GLINT_CTL_ITR_GRAN_200_M, ICE_ITR_GRAN_US) |
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9d3f01d33522..8df151dd0c90 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1152,9 +1152,8 @@ void ice_output_fw_log(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf)
  */
 static void ice_get_itr_intrl_gran(struct ice_hw *hw)
 {
-	u8 max_agg_bw = (rd32(hw, GL_PWR_MODE_CTL) &
-			 GL_PWR_MODE_CTL_CAR_MAX_BW_M) >>
-			GL_PWR_MODE_CTL_CAR_MAX_BW_S;
+	u8 max_agg_bw = FIELD_GET(GL_PWR_MODE_CTL_CAR_MAX_BW_M,
+				  rd32(hw, GL_PWR_MODE_CTL));
 
 	switch (max_agg_bw) {
 	case ICE_MAX_AGG_BW_200G:
@@ -1374,8 +1373,8 @@ int ice_check_reset(struct ice_hw *hw)
 	 * or EMPR has occurred. The grst delay value is in 100ms units.
 	 * Add 1sec for outstanding AQ commands that can take a long time.
 	 */
-	grst_timeout = ((rd32(hw, GLGEN_RSTCTL) & GLGEN_RSTCTL_GRSTDEL_M) >>
-			GLGEN_RSTCTL_GRSTDEL_S) + 10;
+	grst_timeout = FIELD_GET(GLGEN_RSTCTL_GRSTDEL_M,
+				 rd32(hw, GLGEN_RSTCTL)) + 10;
 
 	for (cnt = 0; cnt < grst_timeout; cnt++) {
 		mdelay(100);
@@ -2459,7 +2458,7 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 	info->tmr_index_owned = ((number & ICE_TS_TMR_IDX_OWND_M) != 0);
 	info->tmr_index_assoc = ((number & ICE_TS_TMR_IDX_ASSOC_M) != 0);
 
-	info->clk_freq = (number & ICE_TS_CLK_FREQ_M) >> ICE_TS_CLK_FREQ_S;
+	info->clk_freq = FIELD_GET(ICE_TS_CLK_FREQ_M, number);
 	info->clk_src = ((number & ICE_TS_CLK_SRC_M) != 0);
 
 	if (info->clk_freq < NUM_ICE_TIME_REF_FREQ) {
@@ -2660,7 +2659,7 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 	info->tmr0_owned = ((number & ICE_TS_TMR0_OWND_M) != 0);
 	info->tmr0_ena = ((number & ICE_TS_TMR0_ENA_M) != 0);
 
-	info->tmr1_owner = (number & ICE_TS_TMR1_OWNR_M) >> ICE_TS_TMR1_OWNR_S;
+	info->tmr1_owner = FIELD_GET(ICE_TS_TMR1_OWNR_M, number);
 	info->tmr1_owned = ((number & ICE_TS_TMR1_OWND_M) != 0);
 	info->tmr1_ena = ((number & ICE_TS_TMR1_ENA_M) != 0);
 
@@ -5986,7 +5985,7 @@ ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 		ice_debug(hw, ICE_DBG_INIT, "Failed to read override link options.\n");
 		return status;
 	}
-	ldo->options = buf & ICE_LINK_OVERRIDE_OPT_M;
+	ldo->options = FIELD_GET(ICE_LINK_OVERRIDE_OPT_M, buf);
 	ldo->phy_config = (buf & ICE_LINK_OVERRIDE_PHY_CFG_M) >>
 		ICE_LINK_OVERRIDE_PHY_CFG_S;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 41b7853291d3..7f3e00c187b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -146,8 +146,7 @@ static u8 ice_get_dcbx_status(struct ice_hw *hw)
 	u32 reg;
 
 	reg = rd32(hw, PRTDCB_GENS);
-	return (u8)((reg & PRTDCB_GENS_DCBX_STATUS_M) >>
-		    PRTDCB_GENS_DCBX_STATUS_S);
+	return FIELD_GET(PRTDCB_GENS_DCBX_STATUS_M, reg);
 }
 
 /**
@@ -173,11 +172,9 @@ ice_parse_ieee_ets_common_tlv(u8 *buf, struct ice_dcb_ets_cfg *ets_cfg)
 	 */
 	for (i = 0; i < 4; i++) {
 		ets_cfg->prio_table[i * 2] =
-			((buf[offset] & ICE_IEEE_ETS_PRIO_1_M) >>
-			 ICE_IEEE_ETS_PRIO_1_S);
+			FIELD_GET(ICE_IEEE_ETS_PRIO_1_M, buf[offset]);
 		ets_cfg->prio_table[i * 2 + 1] =
-			((buf[offset] & ICE_IEEE_ETS_PRIO_0_M) >>
-			 ICE_IEEE_ETS_PRIO_0_S);
+			FIELD_GET(ICE_IEEE_ETS_PRIO_0_M, buf[offset]);
 		offset++;
 	}
 
@@ -221,11 +218,9 @@ ice_parse_ieee_etscfg_tlv(struct ice_lldp_org_tlv *tlv,
 	 * |1bit | 1bit|3 bits|3bits|
 	 */
 	etscfg = &dcbcfg->etscfg;
-	etscfg->willing = ((buf[0] & ICE_IEEE_ETS_WILLING_M) >>
-			   ICE_IEEE_ETS_WILLING_S);
-	etscfg->cbs = ((buf[0] & ICE_IEEE_ETS_CBS_M) >> ICE_IEEE_ETS_CBS_S);
-	etscfg->maxtcs = ((buf[0] & ICE_IEEE_ETS_MAXTC_M) >>
-			  ICE_IEEE_ETS_MAXTC_S);
+	etscfg->willing = FIELD_GET(ICE_IEEE_ETS_WILLING_M, buf[0]);
+	etscfg->cbs = FIELD_GET(ICE_IEEE_ETS_CBS_M, buf[0]);
+	etscfg->maxtcs = FIELD_GET(ICE_IEEE_ETS_MAXTC_M, buf[0]);
 
 	/* Begin parsing at Priority Assignment Table (offset 1 in buf) */
 	ice_parse_ieee_ets_common_tlv(&buf[1], etscfg);
@@ -267,11 +262,9 @@ ice_parse_ieee_pfccfg_tlv(struct ice_lldp_org_tlv *tlv,
 	 * -----------------------------------------
 	 * |1bit | 1bit|2 bits|4bits| 1 octet      |
 	 */
-	dcbcfg->pfc.willing = ((buf[0] & ICE_IEEE_PFC_WILLING_M) >>
-			       ICE_IEEE_PFC_WILLING_S);
-	dcbcfg->pfc.mbc = ((buf[0] & ICE_IEEE_PFC_MBC_M) >> ICE_IEEE_PFC_MBC_S);
-	dcbcfg->pfc.pfccap = ((buf[0] & ICE_IEEE_PFC_CAP_M) >>
-			      ICE_IEEE_PFC_CAP_S);
+	dcbcfg->pfc.willing = FIELD_GET(ICE_IEEE_PFC_WILLING_M, buf[0]);
+	dcbcfg->pfc.mbc = FIELD_GET(ICE_IEEE_PFC_MBC_M, buf[0]);
+	dcbcfg->pfc.pfccap = FIELD_GET(ICE_IEEE_PFC_CAP_M, buf[0]);
 	dcbcfg->pfc.pfcena = buf[1];
 }
 
@@ -293,7 +286,7 @@ ice_parse_ieee_app_tlv(struct ice_lldp_org_tlv *tlv,
 	u8 *buf;
 
 	typelen = ntohs(tlv->typelen);
-	len = ((typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S);
+	len = FIELD_GET(ICE_LLDP_TLV_LEN_M, typelen);
 	buf = tlv->tlvinfo;
 
 	/* Removing sizeof(ouisubtype) and reserved byte from len.
@@ -313,12 +306,10 @@ ice_parse_ieee_app_tlv(struct ice_lldp_org_tlv *tlv,
 	 *        -----------------------------------------
 	 */
 	while (offset < len) {
-		dcbcfg->app[i].priority = ((buf[offset] &
-					    ICE_IEEE_APP_PRIO_M) >>
-					   ICE_IEEE_APP_PRIO_S);
-		dcbcfg->app[i].selector = ((buf[offset] &
-					    ICE_IEEE_APP_SEL_M) >>
-					   ICE_IEEE_APP_SEL_S);
+		dcbcfg->app[i].priority = FIELD_GET(ICE_IEEE_APP_PRIO_M,
+						    buf[offset]);
+		dcbcfg->app[i].selector = FIELD_GET(ICE_IEEE_APP_SEL_M,
+						    buf[offset]);
 		dcbcfg->app[i].prot_id = (buf[offset + 1] << 0x8) |
 			buf[offset + 2];
 		/* Move to next app */
@@ -346,8 +337,7 @@ ice_parse_ieee_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
 	u8 subtype;
 
 	ouisubtype = ntohl(tlv->ouisubtype);
-	subtype = (u8)((ouisubtype & ICE_LLDP_TLV_SUBTYPE_M) >>
-		       ICE_LLDP_TLV_SUBTYPE_S);
+	subtype = FIELD_GET(ICE_LLDP_TLV_SUBTYPE_M, ouisubtype);
 	switch (subtype) {
 	case ICE_IEEE_SUBTYPE_ETS_CFG:
 		ice_parse_ieee_etscfg_tlv(tlv, dcbcfg);
@@ -398,11 +388,9 @@ ice_parse_cee_pgcfg_tlv(struct ice_cee_feat_tlv *tlv,
 	 */
 	for (i = 0; i < 4; i++) {
 		etscfg->prio_table[i * 2] =
-			((buf[offset] & ICE_CEE_PGID_PRIO_1_M) >>
-			 ICE_CEE_PGID_PRIO_1_S);
+			FIELD_GET(ICE_CEE_PGID_PRIO_1_M, buf[offset]);
 		etscfg->prio_table[i * 2 + 1] =
-			((buf[offset] & ICE_CEE_PGID_PRIO_0_M) >>
-			 ICE_CEE_PGID_PRIO_0_S);
+			FIELD_GET(ICE_CEE_PGID_PRIO_0_M, buf[offset]);
 		offset++;
 	}
 
@@ -465,7 +453,7 @@ ice_parse_cee_app_tlv(struct ice_cee_feat_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
 	u8 i;
 
 	typelen = ntohs(tlv->hdr.typelen);
-	len = ((typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S);
+	len = FIELD_GET(ICE_LLDP_TLV_LEN_M, typelen);
 
 	dcbcfg->numapps = len / sizeof(*app);
 	if (!dcbcfg->numapps)
@@ -520,14 +508,13 @@ ice_parse_cee_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
 	u32 ouisubtype;
 
 	ouisubtype = ntohl(tlv->ouisubtype);
-	subtype = (u8)((ouisubtype & ICE_LLDP_TLV_SUBTYPE_M) >>
-		       ICE_LLDP_TLV_SUBTYPE_S);
+	subtype = FIELD_GET(ICE_LLDP_TLV_SUBTYPE_M, ouisubtype);
 	/* Return if not CEE DCBX */
 	if (subtype != ICE_CEE_DCBX_TYPE)
 		return;
 
 	typelen = ntohs(tlv->typelen);
-	tlvlen = ((typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S);
+	tlvlen = FIELD_GET(ICE_LLDP_TLV_LEN_M, typelen);
 	len = sizeof(tlv->typelen) + sizeof(ouisubtype) +
 		sizeof(struct ice_cee_ctrl_tlv);
 	/* Return if no CEE DCBX Feature TLVs */
@@ -539,9 +526,8 @@ ice_parse_cee_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
 		u16 sublen;
 
 		typelen = ntohs(sub_tlv->hdr.typelen);
-		sublen = ((typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S);
-		subtype = (u8)((typelen & ICE_LLDP_TLV_TYPE_M) >>
-			       ICE_LLDP_TLV_TYPE_S);
+		sublen = FIELD_GET(ICE_LLDP_TLV_LEN_M, typelen);
+		subtype = FIELD_GET(ICE_LLDP_TLV_TYPE_M, typelen);
 		switch (subtype) {
 		case ICE_CEE_SUBTYPE_PG_CFG:
 			ice_parse_cee_pgcfg_tlv(sub_tlv, dcbcfg);
@@ -578,7 +564,7 @@ ice_parse_org_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
 	u32 oui;
 
 	ouisubtype = ntohl(tlv->ouisubtype);
-	oui = ((ouisubtype & ICE_LLDP_TLV_OUI_M) >> ICE_LLDP_TLV_OUI_S);
+	oui = FIELD_GET(ICE_LLDP_TLV_OUI_M, ouisubtype);
 	switch (oui) {
 	case ICE_IEEE_8021QAZ_OUI:
 		ice_parse_ieee_tlv(tlv, dcbcfg);
@@ -615,8 +601,8 @@ static int ice_lldp_to_dcb_cfg(u8 *lldpmib, struct ice_dcbx_cfg *dcbcfg)
 	tlv = (struct ice_lldp_org_tlv *)lldpmib;
 	while (1) {
 		typelen = ntohs(tlv->typelen);
-		type = ((typelen & ICE_LLDP_TLV_TYPE_M) >> ICE_LLDP_TLV_TYPE_S);
-		len = ((typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S);
+		type = FIELD_GET(ICE_LLDP_TLV_TYPE_M, typelen);
+		len = FIELD_GET(ICE_LLDP_TLV_LEN_M, typelen);
 		offset += sizeof(typelen) + len;
 
 		/* END TLV or beyond LLDPDU size */
@@ -805,11 +791,11 @@ ice_cee_to_dcb_cfg(struct ice_aqc_get_cee_dcb_cfg_resp *cee_cfg,
 	 */
 	for (i = 0; i < ICE_MAX_TRAFFIC_CLASS / 2; i++) {
 		dcbcfg->etscfg.prio_table[i * 2] =
-			((cee_cfg->oper_prio_tc[i] & ICE_CEE_PGID_PRIO_0_M) >>
-			 ICE_CEE_PGID_PRIO_0_S);
+			FIELD_GET(ICE_CEE_PGID_PRIO_0_M,
+				  cee_cfg->oper_prio_tc[i]);
 		dcbcfg->etscfg.prio_table[i * 2 + 1] =
-			((cee_cfg->oper_prio_tc[i] & ICE_CEE_PGID_PRIO_1_M) >>
-			 ICE_CEE_PGID_PRIO_1_S);
+			FIELD_GET(ICE_CEE_PGID_PRIO_1_M,
+				  cee_cfg->oper_prio_tc[i]);
 	}
 
 	ice_for_each_traffic_class(i) {
@@ -1482,7 +1468,7 @@ ice_dcb_cfg_to_lldp(u8 *lldpmib, u16 *miblen, struct ice_dcbx_cfg *dcbcfg)
 	while (1) {
 		ice_add_dcb_tlv(tlv, dcbcfg, tlvid++);
 		typelen = ntohs(tlv->typelen);
-		len = (typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S;
+		len = FIELD_GET(ICE_LLDP_TLV_LEN_M, typelen);
 		if (len)
 			offset += len + 2;
 		/* END TLV or beyond LLDPDU size */
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index e1fbc6de452d..6d50b90a7359 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -227,7 +227,7 @@ static void ice_get_pfc_delay(struct ice_hw *hw, u16 *delay)
 	u32 val;
 
 	val = rd32(hw, PRTDCB_GENC);
-	*delay = (u16)((val & PRTDCB_GENC_PFCLDA_M) >> PRTDCB_GENC_PFCLDA_S);
+	*delay = FIELD_GET(PRTDCB_GENC_PFCLDA_M, val);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index d151e5bacfec..7886fa1a0e1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -507,8 +507,7 @@ ice_parse_rx_flow_user_data(struct ethtool_rx_flow_spec *fsp,
 		return -EINVAL;
 
 	data->flex_word = value & ICE_USERDEF_FLEX_WORD_M;
-	data->flex_offset = (value & ICE_USERDEF_FLEX_OFFS_M) >>
-			     ICE_USERDEF_FLEX_OFFS_S;
+	data->flex_offset = FIELD_GET(ICE_USERDEF_FLEX_OFFS_M, value);
 	if (data->flex_offset > ICE_USERDEF_FLEX_MAX_OFFS_VAL)
 		return -EINVAL;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 453eba59abb2..8cdd53412748 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -974,9 +974,8 @@ static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
 	/* Traffic from VSI can be sent to LAN */
 	ctxt->info.sw_flags2 = ICE_AQ_VSI_SW_FLAG_LAN_ENA;
 	/* allow all untagged/tagged packets by default on Tx */
-	ctxt->info.inner_vlan_flags = ((ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL &
-				  ICE_AQ_VSI_INNER_VLAN_TX_MODE_M) >>
-				 ICE_AQ_VSI_INNER_VLAN_TX_MODE_S);
+	ctxt->info.inner_vlan_flags = FIELD_GET(ICE_AQ_VSI_INNER_VLAN_TX_MODE_M,
+						ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL);
 	/* SVM - by default bits 3 and 4 in inner_vlan_flags are 0's which
 	 * results in legacy behavior (show VLAN, DEI, and UP) in descriptor.
 	 *
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1f159b4362ec..c7c6ec3e131b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -980,7 +980,7 @@ static void ice_set_dflt_mib(struct ice_pf *pf)
 	 * Octets 13 - 20 are TSA values - leave as zeros
 	 */
 	buf[5] = 0x64;
-	len = (typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S;
+	len = FIELD_GET(ICE_LLDP_TLV_LEN_M, typelen);
 	offset += len + 2;
 	tlv = (struct ice_lldp_org_tlv *)
 		((char *)tlv + sizeof(tlv->typelen) + len);
@@ -1014,7 +1014,7 @@ static void ice_set_dflt_mib(struct ice_pf *pf)
 
 	/* Octet 1 left as all zeros - PFC disabled */
 	buf[0] = 0x08;
-	len = (typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S;
+	len = FIELD_GET(ICE_LLDP_TLV_LEN_M, typelen);
 	offset += len + 2;
 
 	if (ice_aq_set_lldp_mib(hw, mib_type, (void *)lldpmib, offset, NULL))
@@ -1745,14 +1745,10 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 	/* find what triggered an MDD event */
 	reg = rd32(hw, GL_MDET_TX_PQM);
 	if (reg & GL_MDET_TX_PQM_VALID_M) {
-		u8 pf_num = (reg & GL_MDET_TX_PQM_PF_NUM_M) >>
-				GL_MDET_TX_PQM_PF_NUM_S;
-		u16 vf_num = (reg & GL_MDET_TX_PQM_VF_NUM_M) >>
-				GL_MDET_TX_PQM_VF_NUM_S;
-		u8 event = (reg & GL_MDET_TX_PQM_MAL_TYPE_M) >>
-				GL_MDET_TX_PQM_MAL_TYPE_S;
-		u16 queue = ((reg & GL_MDET_TX_PQM_QNUM_M) >>
-				GL_MDET_TX_PQM_QNUM_S);
+		u8 pf_num = FIELD_GET(GL_MDET_TX_PQM_PF_NUM_M, reg);
+		u16 vf_num = FIELD_GET(GL_MDET_TX_PQM_VF_NUM_M, reg);
+		u8 event = FIELD_GET(GL_MDET_TX_PQM_MAL_TYPE_M, reg);
+		u16 queue = FIELD_GET(GL_MDET_TX_PQM_QNUM_M, reg);
 
 		if (netif_msg_tx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
@@ -1762,14 +1758,10 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 
 	reg = rd32(hw, GL_MDET_TX_TCLAN_BY_MAC(hw));
 	if (reg & GL_MDET_TX_TCLAN_VALID_M) {
-		u8 pf_num = (reg & GL_MDET_TX_TCLAN_PF_NUM_M) >>
-				GL_MDET_TX_TCLAN_PF_NUM_S;
-		u16 vf_num = (reg & GL_MDET_TX_TCLAN_VF_NUM_M) >>
-				GL_MDET_TX_TCLAN_VF_NUM_S;
-		u8 event = (reg & GL_MDET_TX_TCLAN_MAL_TYPE_M) >>
-				GL_MDET_TX_TCLAN_MAL_TYPE_S;
-		u16 queue = ((reg & GL_MDET_TX_TCLAN_QNUM_M) >>
-				GL_MDET_TX_TCLAN_QNUM_S);
+		u8 pf_num = FIELD_GET(GL_MDET_TX_TCLAN_PF_NUM_M, reg);
+		u16 vf_num = FIELD_GET(GL_MDET_TX_TCLAN_VF_NUM_M, reg);
+		u8 event = FIELD_GET(GL_MDET_TX_TCLAN_MAL_TYPE_M, reg);
+		u16 queue = FIELD_GET(GL_MDET_TX_TCLAN_QNUM_M, reg);
 
 		if (netif_msg_tx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
@@ -1779,14 +1771,10 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 
 	reg = rd32(hw, GL_MDET_RX);
 	if (reg & GL_MDET_RX_VALID_M) {
-		u8 pf_num = (reg & GL_MDET_RX_PF_NUM_M) >>
-				GL_MDET_RX_PF_NUM_S;
-		u16 vf_num = (reg & GL_MDET_RX_VF_NUM_M) >>
-				GL_MDET_RX_VF_NUM_S;
-		u8 event = (reg & GL_MDET_RX_MAL_TYPE_M) >>
-				GL_MDET_RX_MAL_TYPE_S;
-		u16 queue = ((reg & GL_MDET_RX_QNUM_M) >>
-				GL_MDET_RX_QNUM_S);
+		u8 pf_num = FIELD_GET(GL_MDET_RX_PF_NUM_M, reg);
+		u16 vf_num = FIELD_GET(GL_MDET_RX_VF_NUM_M, reg);
+		u8 event = FIELD_GET(GL_MDET_RX_MAL_TYPE_M, reg);
+		u16 queue = FIELD_GET(GL_MDET_RX_QNUM_M, reg);
 
 		if (netif_msg_rx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event %d on RX queue %d PF# %d VF# %d\n",
@@ -3117,8 +3105,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 		/* we have a reset warning */
 		ena_mask &= ~PFINT_OICR_GRST_M;
-		reset = (rd32(hw, GLGEN_RSTAT) & GLGEN_RSTAT_RESET_TYPE_M) >>
-			GLGEN_RSTAT_RESET_TYPE_S;
+		reset = FIELD_GET(GLGEN_RSTAT_RESET_TYPE_M,
+				  rd32(hw, GLGEN_RSTAT));
 
 		if (reset == ICE_RESET_CORER)
 			pf->corer_count++;
@@ -7904,8 +7892,8 @@ static void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 		struct ice_hw *hw = &pf->hw;
 		u32 head, val = 0;
 
-		head = (rd32(hw, QTX_COMM_HEAD(vsi->txq_map[txqueue])) &
-			QTX_COMM_HEAD_HEAD_M) >> QTX_COMM_HEAD_HEAD_S;
+		head = FIELD_GET(QTX_COMM_HEAD_HEAD_M,
+				 rd32(hw, QTX_COMM_HEAD(vsi->txq_map[txqueue])));
 		/* Read interrupt register */
 		val = rd32(hw, GLINT_DYN_CTL(tx_ring->q_vector->reg_idx));
 
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index f6f52a248066..d4e05d2cb30c 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -571,8 +571,8 @@ ice_get_nvm_ver_info(struct ice_hw *hw, enum ice_bank_select bank, struct ice_nv
 		return status;
 	}
 
-	nvm->major = (ver & ICE_NVM_VER_HI_MASK) >> ICE_NVM_VER_HI_SHIFT;
-	nvm->minor = (ver & ICE_NVM_VER_LO_MASK) >> ICE_NVM_VER_LO_SHIFT;
+	nvm->major = FIELD_GET(ICE_NVM_VER_HI_MASK, ver);
+	nvm->minor = FIELD_GET(ICE_NVM_VER_LO_MASK, ver);
 
 	status = ice_read_nvm_sr_copy(hw, bank, ICE_SR_NVM_EETRACK_LO, &eetrack_lo);
 	if (status) {
@@ -706,9 +706,9 @@ ice_get_orom_ver_info(struct ice_hw *hw, enum ice_bank_select bank, struct ice_o
 
 	combo_ver = le32_to_cpu(civd.combo_ver);
 
-	orom->major = (u8)((combo_ver & ICE_OROM_VER_MASK) >> ICE_OROM_VER_SHIFT);
-	orom->patch = (u8)(combo_ver & ICE_OROM_VER_PATCH_MASK);
-	orom->build = (u16)((combo_ver & ICE_OROM_VER_BUILD_MASK) >> ICE_OROM_VER_BUILD_SHIFT);
+	orom->major = FIELD_GET(ICE_OROM_VER_MASK, combo_ver);
+	orom->patch = FIELD_GET(ICE_OROM_VER_PATCH_MASK, combo_ver);
+	orom->build = FIELD_GET(ICE_OROM_VER_BUILD_MASK, combo_ver);
 
 	return 0;
 }
@@ -950,7 +950,8 @@ static int ice_determine_active_flash_banks(struct ice_hw *hw)
 	}
 
 	/* Check that the control word indicates validity */
-	if ((ctrl_word & ICE_SR_CTRL_WORD_1_M) >> ICE_SR_CTRL_WORD_1_S != ICE_SR_CTRL_WORD_VALID) {
+	if (FIELD_GET(ICE_SR_CTRL_WORD_1_M, ctrl_word) !=
+	    ICE_SR_CTRL_WORD_VALID) {
 		ice_debug(hw, ICE_DBG_NVM, "Shadow RAM control word is invalid\n");
 		return -EIO;
 	}
@@ -1027,7 +1028,7 @@ int ice_init_nvm(struct ice_hw *hw)
 	 * as the blank mode may be used in the factory line.
 	 */
 	gens_stat = rd32(hw, GLNVM_GENS);
-	sr_size = (gens_stat & GLNVM_GENS_SR_SIZE_M) >> GLNVM_GENS_SR_SIZE_S;
+	sr_size = FIELD_GET(GLNVM_GENS_SR_SIZE_M, gens_stat);
 
 	/* Switching to words (sr_size contains power of 2) */
 	flash->sr_words = BIT(sr_size) * ICE_SR_WORDS_IN_1KB;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 42458554d2a7..266ea809ba3d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1140,9 +1140,9 @@ static int ice_ptp_check_tx_fifo(struct ice_ptp_port *port)
 	}
 
 	if (offs & 0x1)
-		phy_sts = (val & Q_REG_FIFO13_M) >> Q_REG_FIFO13_S;
+		phy_sts = FIELD_GET(Q_REG_FIFO13_M, val);
 	else
-		phy_sts = (val & Q_REG_FIFO02_M) >> Q_REG_FIFO02_S;
+		phy_sts = FIELD_GET(Q_REG_FIFO02_M, val);
 
 	if (phy_sts & FIFO_EMPTY) {
 		port->tx_fifo_busy_cnt = FIFO_OK;
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 2f4a621254e8..d174a4eeb899 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -1387,8 +1387,7 @@ void ice_sched_get_psm_clk_freq(struct ice_hw *hw)
 	u32 val, clk_src;
 
 	val = rd32(hw, GLGEN_CLKSTAT_SRC);
-	clk_src = (val & GLGEN_CLKSTAT_SRC_PSM_CLK_SRC_M) >>
-		GLGEN_CLKSTAT_SRC_PSM_CLK_SRC_S;
+	clk_src = FIELD_GET(GLGEN_CLKSTAT_SRC_PSM_CLK_SRC_M, val);
 
 #define PSM_CLK_SRC_367_MHZ 0x0
 #define PSM_CLK_SRC_416_MHZ 0x1
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 54d602388c9c..4ee349fe6409 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1318,8 +1318,7 @@ ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event)
 	dev_dbg(ice_pf_to_dev(pf), "GLDCB_RTCTQ: 0x%08x\n", gldcb_rtctq);
 
 	/* event returns device global Rx queue number */
-	queue = (gldcb_rtctq & GLDCB_RTCTQ_RXQNUM_M) >>
-		GLDCB_RTCTQ_RXQNUM_S;
+	queue = FIELD_GET(GLDCB_RTCTQ_RXQNUM_M, gldcb_rtctq);
 
 	vf = ice_get_vf_from_pfq(pf, ice_globalq_to_pfq(pf, queue));
 	if (!vf)
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 727aebe24b92..0a918db3a59a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3019,7 +3019,7 @@ static struct ice_vlan ice_vc_to_vlan(struct virtchnl_vlan *vc_vlan)
 {
 	struct ice_vlan vlan = { 0 };
 
-	vlan.prio = (vc_vlan->tci & VLAN_PRIO_MASK) >> VLAN_PRIO_SHIFT;
+	vlan.prio = FIELD_GET(VLAN_PRIO_MASK, vc_vlan->tci);
 	vlan.vid = vc_vlan->tci & VLAN_VID_MASK;
 	vlan.tpid = vc_vlan->tpid;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index e62104f895a1..e5bcd3f26141 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -1480,16 +1480,15 @@ ice_vf_verify_rx_desc(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
 	int ret;
 
 	stat_err = le16_to_cpu(ctx->rx_desc.wb.status_error0);
-	if (((stat_err & ICE_FXD_FLTR_WB_QW1_DD_M) >>
-	    ICE_FXD_FLTR_WB_QW1_DD_S) != ICE_FXD_FLTR_WB_QW1_DD_YES) {
+	if (FIELD_GET(ICE_FXD_FLTR_WB_QW1_DD_M, stat_err) !=
+	    ICE_FXD_FLTR_WB_QW1_DD_YES) {
 		*status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
 		dev_err(dev, "VF %d: Desc Done not set\n", vf->vf_id);
 		ret = -EINVAL;
 		goto err_exit;
 	}
 
-	prog_id = (stat_err & ICE_FXD_FLTR_WB_QW1_PROG_ID_M) >>
-		ICE_FXD_FLTR_WB_QW1_PROG_ID_S;
+	prog_id = FIELD_GET(ICE_FXD_FLTR_WB_QW1_PROG_ID_M, stat_err);
 	if (prog_id == ICE_FXD_FLTR_WB_QW1_PROG_ADD &&
 	    ctx->v_opcode != VIRTCHNL_OP_ADD_FDIR_FILTER) {
 		dev_err(dev, "VF %d: Desc show add, but ctx not",
@@ -1508,8 +1507,7 @@ ice_vf_verify_rx_desc(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
 		goto err_exit;
 	}
 
-	error = (stat_err & ICE_FXD_FLTR_WB_QW1_FAIL_M) >>
-		ICE_FXD_FLTR_WB_QW1_FAIL_S;
+	error = FIELD_GET(ICE_FXD_FLTR_WB_QW1_FAIL_M, stat_err);
 	if (error == ICE_FXD_FLTR_WB_QW1_FAIL_YES) {
 		if (prog_id == ICE_FXD_FLTR_WB_QW1_PROG_ADD) {
 			dev_err(dev, "VF %d, Failed to add FDIR rule due to no space in the table",
@@ -1524,8 +1522,7 @@ ice_vf_verify_rx_desc(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
 		goto err_exit;
 	}
 
-	error = (stat_err & ICE_FXD_FLTR_WB_QW1_FAIL_PROF_M) >>
-		ICE_FXD_FLTR_WB_QW1_FAIL_PROF_S;
+	error = FIELD_GET(ICE_FXD_FLTR_WB_QW1_FAIL_PROF_M, stat_err);
 	if (error == ICE_FXD_FLTR_WB_QW1_FAIL_PROF_YES) {
 		dev_err(dev, "VF %d: Profile matching error", vf->vf_id);
 		*status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
