Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D66337F3812
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 22:20:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 724B880DD1;
	Tue, 21 Nov 2023 21:20:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 724B880DD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700601613;
	bh=Sbz4dJvphyVzMvMjDG/qBHSOlRXFzIvpIzFk1zxOPsU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LbKD404dHP8pxxwYNipzV6qlgKSdd4r80k51zlzR9CEC65Rr/oTI0PAUl8D5ob6BR
	 WCdJwuviLkliJAKJS2DfMD31esd/O1iO3TFWqy8TvbK40iiktSw6mytv4y3nG3S6Jh
	 9gF1aa8HjZTlZFBFB9GSGU51y2NknxmhQKsP0Wu1gkGaQ3JXnINeiRWaC+bqhn9nWM
	 4hVPdqoPuq+zznPrnxVO1zBSO9pXJeLAIc2Bi0pduNsqSC+SG2MBN05ZEDMj1UTwu3
	 zfd44BlTtlP1PkDrJivjEBJkJfZTzflBdgUM1q4qgRoMPS9I4zygH0W9qosyHevbRG
	 AqlgbGVEHSbBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JcooKw9OH60W; Tue, 21 Nov 2023 21:20:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E408380D5E;
	Tue, 21 Nov 2023 21:20:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E408380D5E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD71E1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C03896079B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C03896079B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0q8vofam6YCP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A3E0760E8F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3E0760E8F
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423022104"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="423022104"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716630563"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="716630563"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:38 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 13:19:19 -0800
Message-Id: <20231121211921.19834-12-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231121211921.19834-1-jesse.brandeburg@intel.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601582; x=1732137582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2BGMaUaAy3oWsrj4YUr+Q+cjERQKrbDJkHnQsQ2/muo=;
 b=jydwFef6spJOzZgF03h84ZEvebNdypGNUBN5kkh+o92D7qniS//AJhhe
 Ecg5IFj4Pejh5vO8zMVEXPD+hMH59oaaAwuQWauxbA9wz0HOe9WOr5MTg
 b+HkGsEzsJDzohLrAOPbf2IX2w6PB5UGlqYF353lRTaN6Y+2mv76HAtK4
 ZF8OCgpG+7bQxKNaAV2QL/vgq+UFNacpXZiZcfhAaDmF22JKRlz++nyqn
 Zsuu89r52gpZSaAyuXWqrPzZ67v7a5eurGwpU3IJeR4VUSfJVnSaSzyoD
 fvOP5CXeor8O2JxcI4oNzbwKZJGU7PnHH0R4/C7iqed/Q+b5JgL7MtCTy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jydwFef6
Subject: [Intel-wired-lan] [PATCH iwl-next v1 11/13] i40e: field get
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
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor the i40e driver to use FIELD_GET() for mask and shift reads,
which reduces lines of code and adds clarity of intent.

This code was generated by the following coccinelle/spatch script and
then manually repaired.

While making one of the conversions, an if() check was inverted to
return early and avoid un-necessary indentation of the remainder of the
function. In some other cases a stack variable was moved inside the
block where it was used while doing cleanups/review.

@get@
constant shift,mask;
metavariable type T;
expression a;
@@
-(((T)(a) & mask) >> shift)
+FIELD_GET(mask, a)

and applied via:
spatch --sp-file field_prep.cocci --in-place --dir \
 drivers/net/ethernet/intel/

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c |  56 +++----
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    | 158 +++++++-----------
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   3 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   4 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   7 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  73 ++++----
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  13 +-
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   4 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  29 ++--
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  19 +--
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    |   3 +-
 11 files changed, 144 insertions(+), 225 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 4ec4ab2c7d48..b4a5b65496d7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -664,11 +664,11 @@ int i40e_init_shared_code(struct i40e_hw *hw)
 	hw->phy.get_link_info = true;
 
 	/* Determine port number and PF number*/
-	port = (rd32(hw, I40E_PFGEN_PORTNUM) & I40E_PFGEN_PORTNUM_PORT_NUM_MASK)
-					   >> I40E_PFGEN_PORTNUM_PORT_NUM_SHIFT;
+	port = FIELD_GET(I40E_PFGEN_PORTNUM_PORT_NUM_MASK,
+			 rd32(hw, I40E_PFGEN_PORTNUM));
 	hw->port = (u8)port;
-	ari = (rd32(hw, I40E_GLPCI_CAPSUP) & I40E_GLPCI_CAPSUP_ARI_EN_MASK) >>
-						 I40E_GLPCI_CAPSUP_ARI_EN_SHIFT;
+	ari = FIELD_GET(I40E_GLPCI_CAPSUP_ARI_EN_MASK,
+			rd32(hw, I40E_GLPCI_CAPSUP));
 	func_rid = rd32(hw, I40E_PF_FUNC_RID);
 	if (ari)
 		hw->pf_id = (u8)(func_rid & 0xff);
@@ -986,9 +986,8 @@ int i40e_pf_reset(struct i40e_hw *hw)
 	 * The grst delay value is in 100ms units, and we'll wait a
 	 * couple counts longer to be sure we don't just miss the end.
 	 */
-	grst_del = (rd32(hw, I40E_GLGEN_RSTCTL) &
-		    I40E_GLGEN_RSTCTL_GRSTDEL_MASK) >>
-		    I40E_GLGEN_RSTCTL_GRSTDEL_SHIFT;
+	grst_del = FIELD_GET(I40E_GLGEN_RSTCTL_GRSTDEL_MASK,
+			     rd32(hw, I40E_GLGEN_RSTCTL));
 
 	/* It can take upto 15 secs for GRST steady state.
 	 * Bump it to 16 secs max to be safe.
@@ -1080,26 +1079,20 @@ void i40e_clear_hw(struct i40e_hw *hw)
 
 	/* get number of interrupts, queues, and VFs */
 	val = rd32(hw, I40E_GLPCI_CNF2);
-	num_pf_int = (val & I40E_GLPCI_CNF2_MSI_X_PF_N_MASK) >>
-		     I40E_GLPCI_CNF2_MSI_X_PF_N_SHIFT;
-	num_vf_int = (val & I40E_GLPCI_CNF2_MSI_X_VF_N_MASK) >>
-		     I40E_GLPCI_CNF2_MSI_X_VF_N_SHIFT;
+	num_pf_int = FIELD_GET(I40E_GLPCI_CNF2_MSI_X_PF_N_MASK, val);
+	num_vf_int = FIELD_GET(I40E_GLPCI_CNF2_MSI_X_VF_N_MASK, val);
 
 	val = rd32(hw, I40E_PFLAN_QALLOC);
-	base_queue = (val & I40E_PFLAN_QALLOC_FIRSTQ_MASK) >>
-		     I40E_PFLAN_QALLOC_FIRSTQ_SHIFT;
-	j = (val & I40E_PFLAN_QALLOC_LASTQ_MASK) >>
-	    I40E_PFLAN_QALLOC_LASTQ_SHIFT;
+	base_queue = FIELD_GET(I40E_PFLAN_QALLOC_FIRSTQ_MASK, val);
+	j = FIELD_GET(I40E_PFLAN_QALLOC_LASTQ_MASK, val);
 	if (val & I40E_PFLAN_QALLOC_VALID_MASK && j >= base_queue)
 		num_queues = (j - base_queue) + 1;
 	else
 		num_queues = 0;
 
 	val = rd32(hw, I40E_PF_VT_PFALLOC);
-	i = (val & I40E_PF_VT_PFALLOC_FIRSTVF_MASK) >>
-	    I40E_PF_VT_PFALLOC_FIRSTVF_SHIFT;
-	j = (val & I40E_PF_VT_PFALLOC_LASTVF_MASK) >>
-	    I40E_PF_VT_PFALLOC_LASTVF_SHIFT;
+	i = FIELD_GET(I40E_PF_VT_PFALLOC_FIRSTVF_MASK, val);
+	j = FIELD_GET(I40E_PF_VT_PFALLOC_LASTVF_MASK, val);
 	if (val & I40E_PF_VT_PFALLOC_VALID_MASK && j >= i)
 		num_vfs = (j - i) + 1;
 	else
@@ -1194,8 +1187,7 @@ static u32 i40e_led_is_mine(struct i40e_hw *hw, int idx)
 	    !hw->func_caps.led[idx])
 		return 0;
 	gpio_val = rd32(hw, I40E_GLGEN_GPIO_CTL(idx));
-	port = (gpio_val & I40E_GLGEN_GPIO_CTL_PRT_NUM_MASK) >>
-		I40E_GLGEN_GPIO_CTL_PRT_NUM_SHIFT;
+	port = FIELD_GET(I40E_GLGEN_GPIO_CTL_PRT_NUM_MASK, gpio_val);
 
 	/* if PRT_NUM_NA is 1 then this LED is not port specific, OR
 	 * if it is not our port then ignore
@@ -1239,8 +1231,7 @@ u32 i40e_led_get(struct i40e_hw *hw)
 		if (!gpio_val)
 			continue;
 
-		mode = (gpio_val & I40E_GLGEN_GPIO_CTL_LED_MODE_MASK) >>
-			I40E_GLGEN_GPIO_CTL_LED_MODE_SHIFT;
+		mode = FIELD_GET(I40E_GLGEN_GPIO_CTL_LED_MODE_MASK, gpio_val);
 		break;
 	}
 
@@ -4190,8 +4181,7 @@ i40e_validate_filter_settings(struct i40e_hw *hw,
 
 	/* FCHSIZE + FCDSIZE should not be greater than PMFCOEFMAX */
 	val = rd32(hw, I40E_GLHMC_FCOEFMAX);
-	fcoe_fmax = (val & I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_MASK)
-		     >> I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_SHIFT;
+	fcoe_fmax = FIELD_GET(I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_MASK, val);
 	if (fcoe_filt_size + fcoe_cntx_size >  fcoe_fmax)
 		return -EINVAL;
 
@@ -4646,8 +4636,7 @@ int i40e_read_phy_register_clause22(struct i40e_hw *hw,
 			   "PHY: Can't write command to external PHY.\n");
 	} else {
 		command = rd32(hw, I40E_GLGEN_MSRWD(port_num));
-		*value = (command & I40E_GLGEN_MSRWD_MDIRDDATA_MASK) >>
-			 I40E_GLGEN_MSRWD_MDIRDDATA_SHIFT;
+		*value = FIELD_GET(I40E_GLGEN_MSRWD_MDIRDDATA_MASK, command);
 	}
 
 	return status;
@@ -4756,8 +4745,7 @@ int i40e_read_phy_register_clause45(struct i40e_hw *hw,
 
 	if (!status) {
 		command = rd32(hw, I40E_GLGEN_MSRWD(port_num));
-		*value = (command & I40E_GLGEN_MSRWD_MDIRDDATA_MASK) >>
-			 I40E_GLGEN_MSRWD_MDIRDDATA_SHIFT;
+		*value = FIELD_GET(I40E_GLGEN_MSRWD_MDIRDDATA_MASK, command);
 	} else {
 		i40e_debug(hw, I40E_DEBUG_PHY,
 			   "PHY: Can't read register value from external PHY.\n");
@@ -5902,9 +5890,8 @@ i40e_aq_add_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 		u16 tnl_type;
 		u32 ti;
 
-		tnl_type = (le16_to_cpu(filters[i].element.flags) &
-			   I40E_AQC_ADD_CLOUD_TNL_TYPE_MASK) >>
-			   I40E_AQC_ADD_CLOUD_TNL_TYPE_SHIFT;
+		tnl_type = FIELD_GET(I40E_AQC_ADD_CLOUD_TNL_TYPE_MASK,
+				     le16_to_cpu(filters[i].element.flags));
 
 		/* Due to hardware eccentricities, the VNI for Geneve is shifted
 		 * one more byte further than normally used for Tenant ID in
@@ -5996,9 +5983,8 @@ i40e_aq_rem_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 		u16 tnl_type;
 		u32 ti;
 
-		tnl_type = (le16_to_cpu(filters[i].element.flags) &
-			   I40E_AQC_ADD_CLOUD_TNL_TYPE_MASK) >>
-			   I40E_AQC_ADD_CLOUD_TNL_TYPE_SHIFT;
+		tnl_type = FIELD_GET(I40E_AQC_ADD_CLOUD_TNL_TYPE_MASK,
+				     le16_to_cpu(filters[i].element.flags));
 
 		/* Due to hardware eccentricities, the VNI for Geneve is shifted
 		 * one more byte further than normally used for Tenant ID in
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index a0691b7c87c4..9d88ed6105fd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -22,8 +22,7 @@ int i40e_get_dcbx_status(struct i40e_hw *hw, u16 *status)
 		return -EINVAL;
 
 	reg = rd32(hw, I40E_PRTDCB_GENS);
-	*status = (u16)((reg & I40E_PRTDCB_GENS_DCBX_STATUS_MASK) >>
-			I40E_PRTDCB_GENS_DCBX_STATUS_SHIFT);
+	*status = FIELD_GET(I40E_PRTDCB_GENS_DCBX_STATUS_MASK, reg);
 
 	return 0;
 }
@@ -52,12 +51,9 @@ static void i40e_parse_ieee_etscfg_tlv(struct i40e_lldp_org_tlv *tlv,
 	 * |1bit | 1bit|3 bits|3bits|
 	 */
 	etscfg = &dcbcfg->etscfg;
-	etscfg->willing = (u8)((buf[offset] & I40E_IEEE_ETS_WILLING_MASK) >>
-			       I40E_IEEE_ETS_WILLING_SHIFT);
-	etscfg->cbs = (u8)((buf[offset] & I40E_IEEE_ETS_CBS_MASK) >>
-			   I40E_IEEE_ETS_CBS_SHIFT);
-	etscfg->maxtcs = (u8)((buf[offset] & I40E_IEEE_ETS_MAXTC_MASK) >>
-			      I40E_IEEE_ETS_MAXTC_SHIFT);
+	etscfg->willing = FIELD_GET(I40E_IEEE_ETS_WILLING_MASK, buf[offset]);
+	etscfg->cbs = FIELD_GET(I40E_IEEE_ETS_CBS_MASK, buf[offset]);
+	etscfg->maxtcs = FIELD_GET(I40E_IEEE_ETS_MAXTC_MASK, buf[offset]);
 
 	/* Move offset to Priority Assignment Table */
 	offset++;
@@ -71,11 +67,9 @@ static void i40e_parse_ieee_etscfg_tlv(struct i40e_lldp_org_tlv *tlv,
 	 *        -----------------------------------------
 	 */
 	for (i = 0; i < 4; i++) {
-		priority = (u8)((buf[offset] & I40E_IEEE_ETS_PRIO_1_MASK) >>
-				I40E_IEEE_ETS_PRIO_1_SHIFT);
-		etscfg->prioritytable[i * 2] =  priority;
-		priority = (u8)((buf[offset] & I40E_IEEE_ETS_PRIO_0_MASK) >>
-				I40E_IEEE_ETS_PRIO_0_SHIFT);
+		priority = FIELD_GET(I40E_IEEE_ETS_PRIO_1_MASK, buf[offset]);
+		etscfg->prioritytable[i * 2] = priority;
+		priority = FIELD_GET(I40E_IEEE_ETS_PRIO_0_MASK, buf[offset]);
 		etscfg->prioritytable[i * 2 + 1] = priority;
 		offset++;
 	}
@@ -126,12 +120,10 @@ static void i40e_parse_ieee_etsrec_tlv(struct i40e_lldp_org_tlv *tlv,
 	 *        -----------------------------------------
 	 */
 	for (i = 0; i < 4; i++) {
-		priority = (u8)((buf[offset] & I40E_IEEE_ETS_PRIO_1_MASK) >>
-				I40E_IEEE_ETS_PRIO_1_SHIFT);
-		dcbcfg->etsrec.prioritytable[i*2] =  priority;
-		priority = (u8)((buf[offset] & I40E_IEEE_ETS_PRIO_0_MASK) >>
-				I40E_IEEE_ETS_PRIO_0_SHIFT);
-		dcbcfg->etsrec.prioritytable[i*2 + 1] = priority;
+		priority = FIELD_GET(I40E_IEEE_ETS_PRIO_1_MASK, buf[offset]);
+		dcbcfg->etsrec.prioritytable[i * 2] = priority;
+		priority = FIELD_GET(I40E_IEEE_ETS_PRIO_0_MASK, buf[offset]);
+		dcbcfg->etsrec.prioritytable[(i * 2) + 1] = priority;
 		offset++;
 	}
 
@@ -172,12 +164,9 @@ static void i40e_parse_ieee_pfccfg_tlv(struct i40e_lldp_org_tlv *tlv,
 	 * -----------------------------------------
 	 * |1bit | 1bit|2 bits|4bits| 1 octet      |
 	 */
-	dcbcfg->pfc.willing = (u8)((buf[0] & I40E_IEEE_PFC_WILLING_MASK) >>
-				   I40E_IEEE_PFC_WILLING_SHIFT);
-	dcbcfg->pfc.mbc = (u8)((buf[0] & I40E_IEEE_PFC_MBC_MASK) >>
-			       I40E_IEEE_PFC_MBC_SHIFT);
-	dcbcfg->pfc.pfccap = (u8)((buf[0] & I40E_IEEE_PFC_CAP_MASK) >>
-				  I40E_IEEE_PFC_CAP_SHIFT);
+	dcbcfg->pfc.willing = FIELD_GET(I40E_IEEE_PFC_WILLING_MASK, buf[0]);
+	dcbcfg->pfc.mbc = FIELD_GET(I40E_IEEE_PFC_MBC_MASK, buf[0]);
+	dcbcfg->pfc.pfccap = FIELD_GET(I40E_IEEE_PFC_CAP_MASK, buf[0]);
 	dcbcfg->pfc.pfcenable = buf[1];
 }
 
@@ -198,8 +187,7 @@ static void i40e_parse_ieee_app_tlv(struct i40e_lldp_org_tlv *tlv,
 	u8 *buf;
 
 	typelength = ntohs(tlv->typelength);
-	length = (u16)((typelength & I40E_LLDP_TLV_LEN_MASK) >>
-		       I40E_LLDP_TLV_LEN_SHIFT);
+	length = FIELD_GET(I40E_LLDP_TLV_LEN_MASK, typelength);
 	buf = tlv->tlvinfo;
 
 	/* The App priority table starts 5 octets after TLV header */
@@ -217,12 +205,10 @@ static void i40e_parse_ieee_app_tlv(struct i40e_lldp_org_tlv *tlv,
 	 *        -----------------------------------------
 	 */
 	while (offset < length) {
-		dcbcfg->app[i].priority = (u8)((buf[offset] &
-						I40E_IEEE_APP_PRIO_MASK) >>
-					       I40E_IEEE_APP_PRIO_SHIFT);
-		dcbcfg->app[i].selector = (u8)((buf[offset] &
-						I40E_IEEE_APP_SEL_MASK) >>
-					       I40E_IEEE_APP_SEL_SHIFT);
+		dcbcfg->app[i].priority = FIELD_GET(I40E_IEEE_APP_PRIO_MASK,
+						    buf[offset]);
+		dcbcfg->app[i].selector = FIELD_GET(I40E_IEEE_APP_SEL_MASK,
+						    buf[offset]);
 		dcbcfg->app[i].protocolid = (buf[offset + 1] << 0x8) |
 					     buf[offset + 2];
 		/* Move to next app */
@@ -250,8 +236,7 @@ static void i40e_parse_ieee_tlv(struct i40e_lldp_org_tlv *tlv,
 	u8 subtype;
 
 	ouisubtype = ntohl(tlv->ouisubtype);
-	subtype = (u8)((ouisubtype & I40E_LLDP_TLV_SUBTYPE_MASK) >>
-		       I40E_LLDP_TLV_SUBTYPE_SHIFT);
+	subtype = FIELD_GET(I40E_LLDP_TLV_SUBTYPE_MASK, ouisubtype);
 	switch (subtype) {
 	case I40E_IEEE_SUBTYPE_ETS_CFG:
 		i40e_parse_ieee_etscfg_tlv(tlv, dcbcfg);
@@ -301,11 +286,9 @@ static void i40e_parse_cee_pgcfg_tlv(struct i40e_cee_feat_tlv *tlv,
 	 *        -----------------------------------------
 	 */
 	for (i = 0; i < 4; i++) {
-		priority = (u8)((buf[offset] & I40E_CEE_PGID_PRIO_1_MASK) >>
-				 I40E_CEE_PGID_PRIO_1_SHIFT);
-		etscfg->prioritytable[i * 2] =  priority;
-		priority = (u8)((buf[offset] & I40E_CEE_PGID_PRIO_0_MASK) >>
-				 I40E_CEE_PGID_PRIO_0_SHIFT);
+		priority = FIELD_GET(I40E_CEE_PGID_PRIO_1_MASK, buf[offset]);
+		etscfg->prioritytable[i * 2] = priority;
+		priority = FIELD_GET(I40E_CEE_PGID_PRIO_0_MASK, buf[offset]);
 		etscfg->prioritytable[i * 2 + 1] = priority;
 		offset++;
 	}
@@ -362,8 +345,7 @@ static void i40e_parse_cee_app_tlv(struct i40e_cee_feat_tlv *tlv,
 	u8 i;
 
 	typelength = ntohs(tlv->hdr.typelen);
-	length = (u16)((typelength & I40E_LLDP_TLV_LEN_MASK) >>
-		       I40E_LLDP_TLV_LEN_SHIFT);
+	length = FIELD_GET(I40E_LLDP_TLV_LEN_MASK, typelength);
 
 	dcbcfg->numapps = length / sizeof(*app);
 
@@ -419,15 +401,13 @@ static void i40e_parse_cee_tlv(struct i40e_lldp_org_tlv *tlv,
 	u32 ouisubtype;
 
 	ouisubtype = ntohl(tlv->ouisubtype);
-	subtype = (u8)((ouisubtype & I40E_LLDP_TLV_SUBTYPE_MASK) >>
-		       I40E_LLDP_TLV_SUBTYPE_SHIFT);
+	subtype = FIELD_GET(I40E_LLDP_TLV_SUBTYPE_MASK, ouisubtype);
 	/* Return if not CEE DCBX */
 	if (subtype != I40E_CEE_DCBX_TYPE)
 		return;
 
 	typelength = ntohs(tlv->typelength);
-	tlvlen = (u16)((typelength & I40E_LLDP_TLV_LEN_MASK) >>
-			I40E_LLDP_TLV_LEN_SHIFT);
+	tlvlen = FIELD_GET(I40E_LLDP_TLV_LEN_MASK, typelength);
 	len = sizeof(tlv->typelength) + sizeof(ouisubtype) +
 	      sizeof(struct i40e_cee_ctrl_tlv);
 	/* Return if no CEE DCBX Feature TLVs */
@@ -437,11 +417,8 @@ static void i40e_parse_cee_tlv(struct i40e_lldp_org_tlv *tlv,
 	sub_tlv = (struct i40e_cee_feat_tlv *)((char *)tlv + len);
 	while (feat_tlv_count < I40E_CEE_MAX_FEAT_TYPE) {
 		typelength = ntohs(sub_tlv->hdr.typelen);
-		sublen = (u16)((typelength &
-				I40E_LLDP_TLV_LEN_MASK) >>
-				I40E_LLDP_TLV_LEN_SHIFT);
-		subtype = (u8)((typelength & I40E_LLDP_TLV_TYPE_MASK) >>
-				I40E_LLDP_TLV_TYPE_SHIFT);
+		sublen = FIELD_GET(I40E_LLDP_TLV_LEN_MASK, typelength);
+		subtype = FIELD_GET(I40E_LLDP_TLV_TYPE_MASK, typelength);
 		switch (subtype) {
 		case I40E_CEE_SUBTYPE_PG_CFG:
 			i40e_parse_cee_pgcfg_tlv(sub_tlv, dcbcfg);
@@ -478,8 +455,7 @@ static void i40e_parse_org_tlv(struct i40e_lldp_org_tlv *tlv,
 	u32 oui;
 
 	ouisubtype = ntohl(tlv->ouisubtype);
-	oui = (u32)((ouisubtype & I40E_LLDP_TLV_OUI_MASK) >>
-		    I40E_LLDP_TLV_OUI_SHIFT);
+	oui = FIELD_GET(I40E_LLDP_TLV_OUI_MASK, ouisubtype);
 	switch (oui) {
 	case I40E_IEEE_8021QAZ_OUI:
 		i40e_parse_ieee_tlv(tlv, dcbcfg);
@@ -517,10 +493,8 @@ int i40e_lldp_to_dcb_config(u8 *lldpmib,
 	tlv = (struct i40e_lldp_org_tlv *)lldpmib;
 	while (1) {
 		typelength = ntohs(tlv->typelength);
-		type = (u16)((typelength & I40E_LLDP_TLV_TYPE_MASK) >>
-			     I40E_LLDP_TLV_TYPE_SHIFT);
-		length = (u16)((typelength & I40E_LLDP_TLV_LEN_MASK) >>
-			       I40E_LLDP_TLV_LEN_SHIFT);
+		type = FIELD_GET(I40E_LLDP_TLV_TYPE_MASK, typelength);
+		length = FIELD_GET(I40E_LLDP_TLV_LEN_MASK, typelength);
 		offset += sizeof(typelength) + length;
 
 		/* END TLV or beyond LLDPDU size */
@@ -594,7 +568,7 @@ static void i40e_cee_to_dcb_v1_config(
 {
 	u16 status, tlv_status = le16_to_cpu(cee_cfg->tlv_status);
 	u16 app_prio = le16_to_cpu(cee_cfg->oper_app_prio);
-	u8 i, tc, err;
+	u8 i, err;
 
 	/* CEE PG data to ETS config */
 	dcbcfg->etscfg.maxtcs = cee_cfg->oper_num_tc;
@@ -603,13 +577,13 @@ static void i40e_cee_to_dcb_v1_config(
 	 * from those in the CEE Priority Group sub-TLV.
 	 */
 	for (i = 0; i < 4; i++) {
-		tc = (u8)((cee_cfg->oper_prio_tc[i] &
-			 I40E_CEE_PGID_PRIO_0_MASK) >>
-			 I40E_CEE_PGID_PRIO_0_SHIFT);
-		dcbcfg->etscfg.prioritytable[i * 2] =  tc;
-		tc = (u8)((cee_cfg->oper_prio_tc[i] &
-			 I40E_CEE_PGID_PRIO_1_MASK) >>
-			 I40E_CEE_PGID_PRIO_1_SHIFT);
+		u8 tc;
+
+		tc = FIELD_GET(I40E_CEE_PGID_PRIO_0_MASK,
+			       cee_cfg->oper_prio_tc[i]);
+		dcbcfg->etscfg.prioritytable[i * 2] = tc;
+		tc = FIELD_GET(I40E_CEE_PGID_PRIO_1_MASK,
+			       cee_cfg->oper_prio_tc[i]);
 		dcbcfg->etscfg.prioritytable[i*2 + 1] = tc;
 	}
 
@@ -631,8 +605,7 @@ static void i40e_cee_to_dcb_v1_config(
 	dcbcfg->pfc.pfcenable = cee_cfg->oper_pfc_en;
 	dcbcfg->pfc.pfccap = I40E_MAX_TRAFFIC_CLASS;
 
-	status = (tlv_status & I40E_AQC_CEE_APP_STATUS_MASK) >>
-		  I40E_AQC_CEE_APP_STATUS_SHIFT;
+	status = FIELD_GET(I40E_AQC_CEE_APP_STATUS_MASK, tlv_status);
 	err = (status & I40E_TLV_STATUS_ERR) ? 1 : 0;
 	/* Add APPs if Error is False */
 	if (!err) {
@@ -641,22 +614,19 @@ static void i40e_cee_to_dcb_v1_config(
 
 		/* FCoE APP */
 		dcbcfg->app[0].priority =
-			(app_prio & I40E_AQC_CEE_APP_FCOE_MASK) >>
-			 I40E_AQC_CEE_APP_FCOE_SHIFT;
+			FIELD_GET(I40E_AQC_CEE_APP_FCOE_MASK, app_prio);
 		dcbcfg->app[0].selector = I40E_APP_SEL_ETHTYPE;
 		dcbcfg->app[0].protocolid = I40E_APP_PROTOID_FCOE;
 
 		/* iSCSI APP */
 		dcbcfg->app[1].priority =
-			(app_prio & I40E_AQC_CEE_APP_ISCSI_MASK) >>
-			 I40E_AQC_CEE_APP_ISCSI_SHIFT;
+			FIELD_GET(I40E_AQC_CEE_APP_ISCSI_MASK, app_prio);
 		dcbcfg->app[1].selector = I40E_APP_SEL_TCPIP;
 		dcbcfg->app[1].protocolid = I40E_APP_PROTOID_ISCSI;
 
 		/* FIP APP */
 		dcbcfg->app[2].priority =
-			(app_prio & I40E_AQC_CEE_APP_FIP_MASK) >>
-			 I40E_AQC_CEE_APP_FIP_SHIFT;
+			FIELD_GET(I40E_AQC_CEE_APP_FIP_MASK, app_prio);
 		dcbcfg->app[2].selector = I40E_APP_SEL_ETHTYPE;
 		dcbcfg->app[2].protocolid = I40E_APP_PROTOID_FIP;
 	}
@@ -675,7 +645,7 @@ static void i40e_cee_to_dcb_config(
 {
 	u32 status, tlv_status = le32_to_cpu(cee_cfg->tlv_status);
 	u16 app_prio = le16_to_cpu(cee_cfg->oper_app_prio);
-	u8 i, tc, err, sync, oper;
+	u8 i, err, sync, oper;
 
 	/* CEE PG data to ETS config */
 	dcbcfg->etscfg.maxtcs = cee_cfg->oper_num_tc;
@@ -684,13 +654,13 @@ static void i40e_cee_to_dcb_config(
 	 * from those in the CEE Priority Group sub-TLV.
 	 */
 	for (i = 0; i < 4; i++) {
-		tc = (u8)((cee_cfg->oper_prio_tc[i] &
-			 I40E_CEE_PGID_PRIO_0_MASK) >>
-			 I40E_CEE_PGID_PRIO_0_SHIFT);
-		dcbcfg->etscfg.prioritytable[i * 2] =  tc;
-		tc = (u8)((cee_cfg->oper_prio_tc[i] &
-			 I40E_CEE_PGID_PRIO_1_MASK) >>
-			 I40E_CEE_PGID_PRIO_1_SHIFT);
+		u8 tc;
+
+		tc = FIELD_GET(I40E_CEE_PGID_PRIO_0_MASK,
+			       cee_cfg->oper_prio_tc[i]);
+		dcbcfg->etscfg.prioritytable[i * 2] = tc;
+		tc = FIELD_GET(I40E_CEE_PGID_PRIO_1_MASK,
+			       cee_cfg->oper_prio_tc[i]);
 		dcbcfg->etscfg.prioritytable[i * 2 + 1] = tc;
 	}
 
@@ -713,8 +683,7 @@ static void i40e_cee_to_dcb_config(
 	dcbcfg->pfc.pfccap = I40E_MAX_TRAFFIC_CLASS;
 
 	i = 0;
-	status = (tlv_status & I40E_AQC_CEE_FCOE_STATUS_MASK) >>
-		  I40E_AQC_CEE_FCOE_STATUS_SHIFT;
+	status = FIELD_GET(I40E_AQC_CEE_FCOE_STATUS_MASK, tlv_status);
 	err = (status & I40E_TLV_STATUS_ERR) ? 1 : 0;
 	sync = (status & I40E_TLV_STATUS_SYNC) ? 1 : 0;
 	oper = (status & I40E_TLV_STATUS_OPER) ? 1 : 0;
@@ -722,15 +691,13 @@ static void i40e_cee_to_dcb_config(
 	if (!err && sync && oper) {
 		/* FCoE APP */
 		dcbcfg->app[i].priority =
-			(app_prio & I40E_AQC_CEE_APP_FCOE_MASK) >>
-			 I40E_AQC_CEE_APP_FCOE_SHIFT;
+			FIELD_GET(I40E_AQC_CEE_APP_FCOE_MASK, app_prio);
 		dcbcfg->app[i].selector = I40E_APP_SEL_ETHTYPE;
 		dcbcfg->app[i].protocolid = I40E_APP_PROTOID_FCOE;
 		i++;
 	}
 
-	status = (tlv_status & I40E_AQC_CEE_ISCSI_STATUS_MASK) >>
-		  I40E_AQC_CEE_ISCSI_STATUS_SHIFT;
+	status = FIELD_GET(I40E_AQC_CEE_ISCSI_STATUS_MASK, tlv_status);
 	err = (status & I40E_TLV_STATUS_ERR) ? 1 : 0;
 	sync = (status & I40E_TLV_STATUS_SYNC) ? 1 : 0;
 	oper = (status & I40E_TLV_STATUS_OPER) ? 1 : 0;
@@ -738,15 +705,13 @@ static void i40e_cee_to_dcb_config(
 	if (!err && sync && oper) {
 		/* iSCSI APP */
 		dcbcfg->app[i].priority =
-			(app_prio & I40E_AQC_CEE_APP_ISCSI_MASK) >>
-			 I40E_AQC_CEE_APP_ISCSI_SHIFT;
+			FIELD_GET(I40E_AQC_CEE_APP_ISCSI_MASK, app_prio);
 		dcbcfg->app[i].selector = I40E_APP_SEL_TCPIP;
 		dcbcfg->app[i].protocolid = I40E_APP_PROTOID_ISCSI;
 		i++;
 	}
 
-	status = (tlv_status & I40E_AQC_CEE_FIP_STATUS_MASK) >>
-		  I40E_AQC_CEE_FIP_STATUS_SHIFT;
+	status = FIELD_GET(I40E_AQC_CEE_FIP_STATUS_MASK, tlv_status);
 	err = (status & I40E_TLV_STATUS_ERR) ? 1 : 0;
 	sync = (status & I40E_TLV_STATUS_SYNC) ? 1 : 0;
 	oper = (status & I40E_TLV_STATUS_OPER) ? 1 : 0;
@@ -754,8 +719,7 @@ static void i40e_cee_to_dcb_config(
 	if (!err && sync && oper) {
 		/* FIP APP */
 		dcbcfg->app[i].priority =
-			(app_prio & I40E_AQC_CEE_APP_FIP_MASK) >>
-			 I40E_AQC_CEE_APP_FIP_SHIFT;
+			FIELD_GET(I40E_AQC_CEE_APP_FIP_MASK, app_prio);
 		dcbcfg->app[i].selector = I40E_APP_SEL_ETHTYPE;
 		dcbcfg->app[i].protocolid = I40E_APP_PROTOID_FIP;
 		i++;
@@ -1188,7 +1152,7 @@ static void i40e_add_ieee_app_pri_tlv(struct i40e_lldp_org_tlv *tlv,
 		selector = dcbcfg->app[i].selector & 0x7;
 		buf[offset] = (priority << I40E_IEEE_APP_PRIO_SHIFT) | selector;
 		buf[offset + 1] = (dcbcfg->app[i].protocolid >> 0x8) & 0xFF;
-		buf[offset + 2] =  dcbcfg->app[i].protocolid & 0xFF;
+		buf[offset + 2] = dcbcfg->app[i].protocolid & 0xFF;
 		/* Move to next app */
 		offset += 3;
 		i++;
@@ -1284,8 +1248,7 @@ int i40e_dcb_config_to_lldp(u8 *lldpmib, u16 *miblen,
 	do {
 		i40e_add_dcb_tlv(tlv, dcbcfg, tlvid++);
 		typelength = ntohs(tlv->typelength);
-		length = (u16)((typelength & I40E_LLDP_TLV_LEN_MASK) >>
-				I40E_LLDP_TLV_LEN_SHIFT);
+		length = FIELD_GET(I40E_LLDP_TLV_LEN_MASK, typelength);
 		if (length)
 			offset += length + I40E_IEEE_TLV_HEADER_LENGTH;
 		/* END TLV or beyond LLDPDU size */
@@ -1537,8 +1500,7 @@ u8 i40e_dcb_hw_get_num_tc(struct i40e_hw *hw)
 {
 	u32 reg = rd32(hw, I40E_PRTDCB_GENC);
 
-	return (u8)((reg & I40E_PRTDCB_GENC_NUMTC_MASK) >>
-		I40E_PRTDCB_GENC_NUMTC_SHIFT);
+	return FIELD_GET(I40E_PRTDCB_GENC_NUMTC_MASK, reg);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c b/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
index 4721845fda6e..b96a92187ab3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
@@ -21,8 +21,7 @@ static void i40e_get_pfc_delay(struct i40e_hw *hw, u16 *delay)
 	u32 val;
 
 	val = rd32(hw, I40E_PRTDCB_GENC);
-	*delay = (u16)((val & I40E_PRTDCB_GENC_PFCLDA_MASK) >>
-		       I40E_PRTDCB_GENC_PFCLDA_SHIFT);
+	*delay = FIELD_GET(I40E_PRTDCB_GENC_PFCLDA_MASK, val);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
index cf25bfc5dc3f..2f53f0f53bc3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
@@ -81,8 +81,8 @@ static int i40e_ddp_does_profile_exist(struct i40e_hw *hw,
 static bool i40e_ddp_profiles_overlap(struct i40e_profile_info *new,
 				      struct i40e_profile_info *old)
 {
-	unsigned int group_id_old = (u8)((old->track_id & 0x00FF0000) >> 16);
-	unsigned int group_id_new = (u8)((new->track_id & 0x00FF0000) >> 16);
+	unsigned int group_id_old = FIELD_GET(0x00FF0000, old->track_id);
+	unsigned int group_id_new = FIELD_GET(0x00FF0000, new->track_id);
 
 	/* 0x00 group must be only the first */
 	if (group_id_new == 0)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index afbe921f6d20..585b599bedeb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -1959,9 +1959,8 @@ int i40e_get_eeprom_len(struct net_device *netdev)
 		i40e_trace(ioctl_get_eeprom_len, np->vsi->back, val);
 		return val;
 	}
-	val = (rd32(hw, I40E_GLPCI_LBARCTRL)
-		& I40E_GLPCI_LBARCTRL_FL_SIZE_MASK)
-		>> I40E_GLPCI_LBARCTRL_FL_SIZE_SHIFT;
+	val = FIELD_GET(I40E_GLPCI_LBARCTRL_FL_SIZE_MASK,
+			rd32(hw, I40E_GLPCI_LBARCTRL));
 	/* register returns value in power of 2, 64Kbyte chunks. */
 	val = (64 * 1024) * BIT(val);
 	i40e_trace(ioctl_get_eeprom_len, np->vsi->back, val);
@@ -3300,7 +3299,7 @@ static int i40e_parse_rx_flow_user_data(struct ethtool_rx_flow_spec *fsp,
 	} else if (valid) {
 		data->flex_word = value & I40E_USERDEF_FLEX_WORD;
 		data->flex_offset =
-			(value & I40E_USERDEF_FLEX_OFFSET) >> 16;
+			FIELD_GET(I40E_USERDEF_FLEX_OFFSET, value);
 		data->flex_filter = true;
 	}
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 0dfe472747c6..903a1e66697d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1197,11 +1197,9 @@ static void i40e_update_pf_stats(struct i40e_pf *pf)
 
 	val = rd32(hw, I40E_PRTPM_EEE_STAT);
 	nsd->tx_lpi_status =
-		       (val & I40E_PRTPM_EEE_STAT_TX_LPI_STATUS_MASK) >>
-			I40E_PRTPM_EEE_STAT_TX_LPI_STATUS_SHIFT;
+		       FIELD_GET(I40E_PRTPM_EEE_STAT_TX_LPI_STATUS_MASK, val);
 	nsd->rx_lpi_status =
-		       (val & I40E_PRTPM_EEE_STAT_RX_LPI_STATUS_MASK) >>
-			I40E_PRTPM_EEE_STAT_RX_LPI_STATUS_SHIFT;
+		       FIELD_GET(I40E_PRTPM_EEE_STAT_RX_LPI_STATUS_MASK, val);
 	i40e_stat_update32(hw, I40E_PRTPM_TLPIC,
 			   pf->stat_offsets_loaded,
 			   &osd->tx_lpi_count, &nsd->tx_lpi_count);
@@ -4340,8 +4338,7 @@ static irqreturn_t i40e_intr(int irq, void *data)
 			set_bit(__I40E_RESET_INTR_RECEIVED, pf->state);
 		ena_mask &= ~I40E_PFINT_ICR0_ENA_GRST_MASK;
 		val = rd32(hw, I40E_GLGEN_RSTAT);
-		val = (val & I40E_GLGEN_RSTAT_RESET_TYPE_MASK)
-		       >> I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT;
+		val = FIELD_GET(I40E_GLGEN_RSTAT_RESET_TYPE_MASK, val);
 		if (val == I40E_RESET_CORER) {
 			pf->corer_count++;
 			i40e_trace(state_reset_corer, pf, pf->corer_count);
@@ -5010,8 +5007,8 @@ static void i40e_vsi_free_irq(struct i40e_vsi *vsi)
 			 * next_q field of the registers.
 			 */
 			val = rd32(hw, I40E_PFINT_LNKLSTN(vector - 1));
-			qp = (val & I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK)
-				>> I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT;
+			qp = FIELD_GET(I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK,
+				       val);
 			val |= I40E_QUEUE_END_OF_LIST
 				<< I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT;
 			wr32(hw, I40E_PFINT_LNKLSTN(vector - 1), val);
@@ -5033,8 +5030,8 @@ static void i40e_vsi_free_irq(struct i40e_vsi *vsi)
 
 				val = rd32(hw, I40E_QINT_TQCTL(qp));
 
-				next = (val & I40E_QINT_TQCTL_NEXTQ_INDX_MASK)
-					>> I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT;
+				next = FIELD_GET(I40E_QINT_TQCTL_NEXTQ_INDX_MASK,
+						 val);
 
 				val &= ~(I40E_QINT_TQCTL_MSIX_INDX_MASK  |
 					 I40E_QINT_TQCTL_MSIX0_INDX_MASK |
@@ -5052,8 +5049,7 @@ static void i40e_vsi_free_irq(struct i40e_vsi *vsi)
 		free_irq(pf->pdev->irq, pf);
 
 		val = rd32(hw, I40E_PFINT_LNKLST0);
-		qp = (val & I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK)
-			>> I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT;
+		qp = FIELD_GET(I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK, val);
 		val |= I40E_QUEUE_END_OF_LIST
 			<< I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT;
 		wr32(hw, I40E_PFINT_LNKLST0, val);
@@ -9556,18 +9552,18 @@ static void i40e_handle_lan_overflow_event(struct i40e_pf *pf,
 	dev_dbg(&pf->pdev->dev, "overflow Rx Queue Number = %d QTX_CTL=0x%08x\n",
 		queue, qtx_ctl);
 
+	if (FIELD_GET(I40E_QTX_CTL_PFVF_Q_MASK, qtx_ctl) !=
+	    I40E_QTX_CTL_VF_QUEUE)
+		return;
+
 	/* Queue belongs to VF, find the VF and issue VF reset */
-	if (((qtx_ctl & I40E_QTX_CTL_PFVF_Q_MASK)
-	    >> I40E_QTX_CTL_PFVF_Q_SHIFT) == I40E_QTX_CTL_VF_QUEUE) {
-		vf_id = (u16)((qtx_ctl & I40E_QTX_CTL_VFVM_INDX_MASK)
-			 >> I40E_QTX_CTL_VFVM_INDX_SHIFT);
-		vf_id -= hw->func_caps.vf_base_id;
-		vf = &pf->vf[vf_id];
-		i40e_vc_notify_vf_reset(vf);
-		/* Allow VF to process pending reset notification */
-		msleep(20);
-		i40e_reset_vf(vf, false);
-	}
+	vf_id = FIELD_GET(I40E_QTX_CTL_VFVM_INDX_MASK, qtx_ctl);
+	vf_id -= hw->func_caps.vf_base_id;
+	vf = &pf->vf[vf_id];
+	i40e_vc_notify_vf_reset(vf);
+	/* Allow VF to process pending reset notification */
+	msleep(20);
+	i40e_reset_vf(vf, false);
 }
 
 /**
@@ -9593,8 +9589,7 @@ u32 i40e_get_current_fd_count(struct i40e_pf *pf)
 
 	val = rd32(&pf->hw, I40E_PFQF_FDSTAT);
 	fcnt_prog = (val & I40E_PFQF_FDSTAT_GUARANT_CNT_MASK) +
-		    ((val & I40E_PFQF_FDSTAT_BEST_CNT_MASK) >>
-		      I40E_PFQF_FDSTAT_BEST_CNT_SHIFT);
+		    FIELD_GET(I40E_PFQF_FDSTAT_BEST_CNT_MASK, val);
 	return fcnt_prog;
 }
 
@@ -9608,8 +9603,7 @@ u32 i40e_get_global_fd_count(struct i40e_pf *pf)
 
 	val = rd32(&pf->hw, I40E_GLQF_FDCNT_0);
 	fcnt_prog = (val & I40E_GLQF_FDCNT_0_GUARANT_CNT_MASK) +
-		    ((val & I40E_GLQF_FDCNT_0_BESTCNT_MASK) >>
-		     I40E_GLQF_FDCNT_0_BESTCNT_SHIFT);
+		    FIELD_GET(I40E_GLQF_FDCNT_0_BESTCNT_MASK, val);
 	return fcnt_prog;
 }
 
@@ -11200,14 +11194,10 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
 	/* find what triggered the MDD event */
 	reg = rd32(hw, I40E_GL_MDET_TX);
 	if (reg & I40E_GL_MDET_TX_VALID_MASK) {
-		u8 pf_num = (reg & I40E_GL_MDET_TX_PF_NUM_MASK) >>
-				I40E_GL_MDET_TX_PF_NUM_SHIFT;
-		u16 vf_num = (reg & I40E_GL_MDET_TX_VF_NUM_MASK) >>
-				I40E_GL_MDET_TX_VF_NUM_SHIFT;
-		u8 event = (reg & I40E_GL_MDET_TX_EVENT_MASK) >>
-				I40E_GL_MDET_TX_EVENT_SHIFT;
-		u16 queue = ((reg & I40E_GL_MDET_TX_QUEUE_MASK) >>
-				I40E_GL_MDET_TX_QUEUE_SHIFT) -
+		u8 pf_num = FIELD_GET(I40E_GL_MDET_TX_PF_NUM_MASK, reg);
+		u16 vf_num = FIELD_GET(I40E_GL_MDET_TX_VF_NUM_MASK, reg);
+		u8 event = FIELD_GET(I40E_GL_MDET_TX_EVENT_MASK, reg);
+		u16 queue = FIELD_GET(I40E_GL_MDET_TX_QUEUE_MASK, reg) -
 				pf->hw.func_caps.base_queue;
 		if (netif_msg_tx_err(pf))
 			dev_info(&pf->pdev->dev, "Malicious Driver Detection event 0x%02x on TX queue %d PF number 0x%02x VF number 0x%02x\n",
@@ -11217,12 +11207,9 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
 	}
 	reg = rd32(hw, I40E_GL_MDET_RX);
 	if (reg & I40E_GL_MDET_RX_VALID_MASK) {
-		u8 func = (reg & I40E_GL_MDET_RX_FUNCTION_MASK) >>
-				I40E_GL_MDET_RX_FUNCTION_SHIFT;
-		u8 event = (reg & I40E_GL_MDET_RX_EVENT_MASK) >>
-				I40E_GL_MDET_RX_EVENT_SHIFT;
-		u16 queue = ((reg & I40E_GL_MDET_RX_QUEUE_MASK) >>
-				I40E_GL_MDET_RX_QUEUE_SHIFT) -
+		u8 func = FIELD_GET(I40E_GL_MDET_RX_FUNCTION_MASK, reg);
+		u8 event = FIELD_GET(I40E_GL_MDET_RX_EVENT_MASK, reg);
+		u16 queue = FIELD_GET(I40E_GL_MDET_RX_QUEUE_MASK, reg) -
 				pf->hw.func_caps.base_queue;
 		if (netif_msg_rx_err(pf))
 			dev_info(&pf->pdev->dev, "Malicious Driver Detection event 0x%02x on RX queue %d of function 0x%02x\n",
@@ -16187,8 +16174,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	/* make sure the MFS hasn't been set lower than the default */
 #define MAX_FRAME_SIZE_DEFAULT 0x2600
-	val = (rd32(&pf->hw, I40E_PRTGL_SAH) &
-	       I40E_PRTGL_SAH_MFS_MASK) >> I40E_PRTGL_SAH_MFS_SHIFT;
+	val = FIELD_GET(I40E_PRTGL_SAH_MFS_MASK,
+			rd32(&pf->hw, I40E_PRTGL_SAH));
 	if (val < MAX_FRAME_SIZE_DEFAULT)
 		dev_warn(&pdev->dev, "MFS for port %x has been set below the default: %x\n",
 			 pf->hw.port, val);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index 70215ae92b0c..987534b0285b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -27,8 +27,7 @@ int i40e_init_nvm(struct i40e_hw *hw)
 	 * as the blank mode may be used in the factory line.
 	 */
 	gens = rd32(hw, I40E_GLNVM_GENS);
-	sr_size = ((gens & I40E_GLNVM_GENS_SR_SIZE_MASK) >>
-			   I40E_GLNVM_GENS_SR_SIZE_SHIFT);
+	sr_size = FIELD_GET(I40E_GLNVM_GENS_SR_SIZE_MASK, gens);
 	/* Switching to words (sr_size contains power of 2KB) */
 	nvm->sr_size = BIT(sr_size) * I40E_SR_WORDS_IN_1KB;
 
@@ -194,9 +193,8 @@ static int i40e_read_nvm_word_srctl(struct i40e_hw *hw, u16 offset,
 		ret_code = i40e_poll_sr_srctl_done_bit(hw);
 		if (!ret_code) {
 			sr_reg = rd32(hw, I40E_GLNVM_SRDATA);
-			*data = (u16)((sr_reg &
-				       I40E_GLNVM_SRDATA_RDDATA_MASK)
-				    >> I40E_GLNVM_SRDATA_RDDATA_SHIFT);
+			*data = FIELD_GET(I40E_GLNVM_SRDATA_RDDATA_MASK,
+					  sr_reg);
 		}
 	}
 	if (ret_code)
@@ -772,13 +770,12 @@ static inline u8 i40e_nvmupd_get_module(u32 val)
 }
 static inline u8 i40e_nvmupd_get_transaction(u32 val)
 {
-	return (u8)((val & I40E_NVM_TRANS_MASK) >> I40E_NVM_TRANS_SHIFT);
+	return FIELD_GET(I40E_NVM_TRANS_MASK, val);
 }
 
 static inline u8 i40e_nvmupd_get_preservation_flags(u32 val)
 {
-	return (u8)((val & I40E_NVM_PRESERVATION_FLAGS_MASK) >>
-		    I40E_NVM_PRESERVATION_FLAGS_SHIFT);
+	return FIELD_GET(I40E_NVM_PRESERVATION_FLAGS_MASK, val);
 }
 
 static const char * const i40e_nvm_update_state_str[] = {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 1cf993a79438..e7ebcb09f23c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -1480,8 +1480,8 @@ void i40e_ptp_init(struct i40e_pf *pf)
 	/* Only one PF is assigned to control 1588 logic per port. Do not
 	 * enable any support for PFs not assigned via PRTTSYN_CTL0.PF_ID
 	 */
-	pf_id = (rd32(hw, I40E_PRTTSYN_CTL0) & I40E_PRTTSYN_CTL0_PF_ID_MASK) >>
-		I40E_PRTTSYN_CTL0_PF_ID_SHIFT;
+	pf_id = FIELD_GET(I40E_PRTTSYN_CTL0_PF_ID_MASK,
+			  rd32(hw, I40E_PRTTSYN_CTL0));
 	if (hw->pf_id != pf_id) {
 		clear_bit(I40E_FLAG_PTP_ENA, pf->flags);
 		dev_info(&pf->pdev->dev, "%s: PTP not supported on %s\n",
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index b0df3dde1386..971ba3322038 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -686,8 +686,7 @@ static void i40e_fd_handle_status(struct i40e_ring *rx_ring, u64 qword0_raw,
 	u32 error;
 
 	qw0 = (struct i40e_16b_rx_wb_qw0 *)&qword0_raw;
-	error = (qword1 & I40E_RX_PROG_STATUS_DESC_QW1_ERROR_MASK) >>
-		I40E_RX_PROG_STATUS_DESC_QW1_ERROR_SHIFT;
+	error = FIELD_GET(I40E_RX_PROG_STATUS_DESC_QW1_ERROR_MASK, qword1);
 
 	if (error == BIT(I40E_RX_PROG_STATUS_DESC_FD_TBL_FULL_SHIFT)) {
 		pf->fd_inv = le32_to_cpu(qw0->hi_dword.fd_id);
@@ -1398,8 +1397,7 @@ void i40e_clean_programming_status(struct i40e_ring *rx_ring, u64 qword0_raw,
 {
 	u8 id;
 
-	id = (qword1 & I40E_RX_PROG_STATUS_DESC_QW1_PROGID_MASK) >>
-		  I40E_RX_PROG_STATUS_DESC_QW1_PROGID_SHIFT;
+	id = FIELD_GET(I40E_RX_PROG_STATUS_DESC_QW1_PROGID_MASK, qword1);
 
 	if (id == I40E_RX_PROG_STATUS_DESC_FD_FILTER_STATUS)
 		i40e_fd_handle_status(rx_ring, qword0_raw, qword1, id);
@@ -1759,11 +1757,9 @@ static inline void i40e_rx_checksum(struct i40e_vsi *vsi,
 	u64 qword;
 
 	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
-	ptype = (qword & I40E_RXD_QW1_PTYPE_MASK) >> I40E_RXD_QW1_PTYPE_SHIFT;
-	rx_error = (qword & I40E_RXD_QW1_ERROR_MASK) >>
-		   I40E_RXD_QW1_ERROR_SHIFT;
-	rx_status = (qword & I40E_RXD_QW1_STATUS_MASK) >>
-		    I40E_RXD_QW1_STATUS_SHIFT;
+	ptype = FIELD_GET(I40E_RXD_QW1_PTYPE_MASK, qword);
+	rx_error = FIELD_GET(I40E_RXD_QW1_ERROR_MASK, qword);
+	rx_status = FIELD_GET(I40E_RXD_QW1_STATUS_MASK, qword);
 	decoded = decode_rx_desc_ptype(ptype);
 
 	skb->ip_summed = CHECKSUM_NONE;
@@ -1896,13 +1892,10 @@ void i40e_process_skb_fields(struct i40e_ring *rx_ring,
 			     union i40e_rx_desc *rx_desc, struct sk_buff *skb)
 {
 	u64 qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
-	u32 rx_status = (qword & I40E_RXD_QW1_STATUS_MASK) >>
-			I40E_RXD_QW1_STATUS_SHIFT;
+	u32 rx_status = FIELD_GET(I40E_RXD_QW1_STATUS_MASK, qword);
 	u32 tsynvalid = rx_status & I40E_RXD_QW1_STATUS_TSYNVALID_MASK;
-	u32 tsyn = (rx_status & I40E_RXD_QW1_STATUS_TSYNINDX_MASK) >>
-		   I40E_RXD_QW1_STATUS_TSYNINDX_SHIFT;
-	u8 rx_ptype = (qword & I40E_RXD_QW1_PTYPE_MASK) >>
-		      I40E_RXD_QW1_PTYPE_SHIFT;
+	u32 tsyn = FIELD_GET(I40E_RXD_QW1_STATUS_TSYNINDX_MASK, rx_status);
+	u8 rx_ptype = FIELD_GET(I40E_RXD_QW1_PTYPE_MASK, qword);
 
 	if (unlikely(tsynvalid))
 		i40e_ptp_rx_hwtstamp(rx_ring->vsi->back, skb, tsyn);
@@ -2549,8 +2542,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			continue;
 		}
 
-		size = (qword & I40E_RXD_QW1_LENGTH_PBUF_MASK) >>
-		       I40E_RXD_QW1_LENGTH_PBUF_SHIFT;
+		size = FIELD_GET(I40E_RXD_QW1_LENGTH_PBUF_MASK, qword);
 		if (!size)
 			break;
 
@@ -3594,8 +3586,7 @@ static inline int i40e_tx_map(struct i40e_ring *tx_ring, struct sk_buff *skb,
 
 	if (tx_flags & I40E_TX_FLAGS_HW_VLAN) {
 		td_cmd |= I40E_TX_DESC_CMD_IL2TAG1;
-		td_tag = (tx_flags & I40E_TX_FLAGS_VLAN_MASK) >>
-			 I40E_TX_FLAGS_VLAN_SHIFT;
+		td_tag = FIELD_GET(I40E_TX_FLAGS_VLAN_MASK, tx_flags);
 	}
 
 	first->tx_flags = tx_flags;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 5a45c53e6770..024e5d541e17 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -474,10 +474,10 @@ static void i40e_release_rdma_qvlist(struct i40e_vf *vf)
 			 */
 			reg_idx = (msix_vf - 1) * vf->vf_id + qv_info->ceq_idx;
 			reg = rd32(hw, I40E_VPINT_CEQCTL(reg_idx));
-			next_q_index = (reg & I40E_VPINT_CEQCTL_NEXTQ_INDX_MASK)
-					>> I40E_VPINT_CEQCTL_NEXTQ_INDX_SHIFT;
-			next_q_type = (reg & I40E_VPINT_CEQCTL_NEXTQ_TYPE_MASK)
-					>> I40E_VPINT_CEQCTL_NEXTQ_TYPE_SHIFT;
+			next_q_index = FIELD_GET(I40E_VPINT_CEQCTL_NEXTQ_INDX_MASK,
+						 reg);
+			next_q_type = FIELD_GET(I40E_VPINT_CEQCTL_NEXTQ_TYPE_MASK,
+						reg);
 
 			reg_idx = ((msix_vf - 1) * vf->vf_id) + (v_idx - 1);
 			reg = (next_q_index &
@@ -555,10 +555,10 @@ i40e_config_rdma_qvlist(struct i40e_vf *vf,
 		 * queue on top. Also link it with the new queue in CEQCTL.
 		 */
 		reg = rd32(hw, I40E_VPINT_LNKLSTN(reg_idx));
-		next_q_idx = ((reg & I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK) >>
-				I40E_VPINT_LNKLSTN_FIRSTQ_INDX_SHIFT);
-		next_q_type = ((reg & I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK) >>
-				I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_SHIFT);
+		next_q_idx = FIELD_GET(I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK,
+				       reg);
+		next_q_type = FIELD_GET(I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK,
+					reg);
 
 		if (qv_info->ceq_idx != I40E_QUEUE_INVALID_IDX) {
 			reg_idx = (msix_vf - 1) * vf->vf_id + qv_info->ceq_idx;
@@ -4674,8 +4674,7 @@ int i40e_ndo_get_vf_config(struct net_device *netdev,
 	ivi->max_tx_rate = vf->tx_rate;
 	ivi->min_tx_rate = 0;
 	ivi->vlan = le16_to_cpu(vsi->info.pvid) & I40E_VLAN_MASK;
-	ivi->qos = (le16_to_cpu(vsi->info.pvid) & I40E_PRIORITY_MASK) >>
-		   I40E_VLAN_PRIORITY_SHIFT;
+	ivi->qos = FIELD_GET(I40E_PRIORITY_MASK, le16_to_cpu(vsi->info.pvid));
 	if (vf->link_forced == false)
 		ivi->linkstate = IFLA_VF_LINK_STATE_AUTO;
 	else if (vf->link_up == true)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index e99fa854d17f..af7d5fa6cdc1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -476,8 +476,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 			continue;
 		}
 
-		size = (qword & I40E_RXD_QW1_LENGTH_PBUF_MASK) >>
-		       I40E_RXD_QW1_LENGTH_PBUF_SHIFT;
+		size = FIELD_GET(I40E_RXD_QW1_LENGTH_PBUF_MASK, qword);
 		if (!size)
 			break;
 
-- 
2.39.3


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

