Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E88D87BC277
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Oct 2023 00:48:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77D3F6FADD;
	Fri,  6 Oct 2023 22:48:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77D3F6FADD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696632500;
	bh=/rzFRZuC6im0fIelvk142euRqGD4IffdBP8k2JsBRCw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OAEhjU7lnvd65vqm4JrCjsWDA1p5gF0KKKzcKVdRmUXO0kbwC/E/rBI4mBPASZQr3
	 swowpOKF4DqM6NHYVtt8psZinJBX8UtXA2Bs0QyYzffeGSVI+rc/3sD9H5Y4jq6stw
	 ivb1C5C23nXv5XORBThzdwl+krDM4eeZbRfKXUkb1TJ2A7+q+pKMMwtCw1DnYuieze
	 5QCLgCVVd5luoNTqVeKs4yu8G+lNY6UKGifupVwpm+0ZI4iFpX23nIpzRm0abZOlhi
	 v46HvurJvDosQH5mQasSoAJyj649S9FZhZQ1ChCnY4AWpupGOb8DB7Ahf+g9xSYTpX
	 J5K0bojNA2lNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nnk_xGHhVcu8; Fri,  6 Oct 2023 22:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3919C60DFD;
	Fri,  6 Oct 2023 22:48:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3919C60DFD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 134661BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DED8A41694
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:48:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DED8A41694
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id idYarTQOYYR0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 22:48:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69C2540141
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:48:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69C2540141
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="448044402"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="448044402"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 15:48:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="1083610574"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="1083610574"
Received: from dianaman-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.35.113])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 15:48:02 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  6 Oct 2023 16:47:25 -0600
Message-Id: <20231006224726.443836-6-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231006224726.443836-1-ahmed.zaki@intel.com>
References: <20231006224726.443836-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696632488; x=1728168488;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y/6DhxHwRmP2bjeXmqDXX1HnDy7bCzcXSzLawl5omhQ=;
 b=nUsoWtqLwErHb8o/NLlnMmz3Dai9DfTaMI8G0TwtrhZyY1JKm0/8O2k8
 xJklIVnI2U84ZqsMpM0pRJD9bO3Y65Q/p0YnpQzRnF+T1c93QW7VjbOE9
 55xOTi/EIenjikl324RK4cbZp/aNm+tjeBbnlcobSuYj+ZO3EOxvTwVR3
 rfxHEuJM04im6qWlOhQ6f0+UrRebd8baiGAlfjrISDi0hXh04btQaMlFt
 ulIoSbd9Aa4/pXLCo3VnkS4FZuF6SzOp/8/h3daP57k8ks+XqJywGSim7
 2WRhJTV1cxaAwnciPZj+Rfx9SKx6m5oWHOD74FeeRDEUhVFStTeXnw0sJ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nUsoWtqL
Subject: [Intel-wired-lan] [PATCH net-next v2 5/6] ice: enable symmetric RSS
 Toeplitz hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 vladimir.oltean@nxp.com, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Jeff Guo <jia.guo@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jeff Guo <jia.guo@intel.com>

The hash function in the E800 NICs is set per-VSI and a specific AQ
command is needed to modify the hash function. Use the AQ command to
enable setting the symmetric Toeplitz RSS hash function for any VSI.

When the Symmetric Toeplitz hash function is used, the hardware sets the
input set of the RSS (Toeplitz) algorithm to be the XOR of the fields
index by HSYMM and the fields index by the INSET registers. We use this
to create a symmetric hash by setting the HSYMM registers to point to
their counterparts in the INSET registers:

 HSYMM [src_fv] = dst_fv;
 HSYMM [dst_fv] = src_fv;

where src_fv and dst_fv are the indexes of the protocol's src and dst
fields.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Jeff Guo <jia.guo@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  10 +-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |   4 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  33 ++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   4 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   1 +
 drivers/net/ethernet/intel/ice/ice_flow.c     | 222 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_flow.h     |  13 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   4 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  41 ++--
 drivers/net/ethernet/intel/ice/ice_main.c     |  44 ++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   9 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   2 +-
 14 files changed, 322 insertions(+), 68 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index fcaa5c3b8ec0..c131fe24f959 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -360,6 +360,7 @@ struct ice_vsi {
 	/* RSS config */
 	u16 rss_table_size;	/* HW RSS table size */
 	u16 rss_size;		/* Allocated RSS queues */
+	u8 rss_hfunc;		/* User configured hash type */
 	u8 *rss_hkey_user;	/* User configured hash keys */
 	u8 *rss_lut_user;	/* User configured lookup table entries */
 	u8 rss_lut_type;	/* used to configure Get/Set RSS LUT AQ call */
@@ -910,6 +911,7 @@ int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
 int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
 int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed);
 int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed);
+int ice_set_rss_hfunc(struct ice_vsi *vsi, u8 hfunc);
 void ice_fill_rss_lut(u8 *lut, u16 rss_table_size, u16 rss_size);
 int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset);
 void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 31fdcac33986..8d08a34dfb65 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -6,6 +6,7 @@
 
 #include <linux/bitfield.h>
 
+#include "ice.h"
 #include "ice_type.h"
 #include "ice_nvm.h"
 #include "ice_flex_pipe.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d30d1b2a819b..5ca959373f93 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2538,7 +2538,9 @@ ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 	cfg.hash_flds = hashed_flds;
 	cfg.addl_hdrs = hdrs;
 	cfg.hdr_type = ICE_RSS_ANY_HEADERS;
-	status = ice_add_rss_cfg(&pf->hw, vsi->idx, &cfg);
+	cfg.symm = !!(nfc->data & RXH_SYMMETRIC);
+
+	status = ice_add_rss_cfg(&pf->hw, vsi, &cfg);
 	if (status) {
 		dev_dbg(dev, "ice_add_rss_cfg failed, vsi num = %d, error = %d\n",
 			vsi->vsi_num, status);
@@ -2559,6 +2561,7 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
 	u64 hash_flds;
+	bool symm;
 	u32 hdrs;
 
 	dev = ice_pf_to_dev(pf);
@@ -2577,7 +2580,7 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 		return;
 	}
 
-	hash_flds = ice_get_rss_cfg(&pf->hw, vsi->idx, hdrs);
+	hash_flds = ice_get_rss_cfg(&pf->hw, vsi->idx, hdrs, &symm);
 	if (hash_flds == ICE_HASH_INVALID) {
 		dev_dbg(dev, "No hash fields found for the given header type, vsi num = %d\n",
 			vsi->vsi_num);
@@ -2601,6 +2604,9 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 	    hash_flds & ICE_FLOW_HASH_FLD_UDP_DST_PORT ||
 	    hash_flds & ICE_FLOW_HASH_FLD_SCTP_DST_PORT)
 		nfc->data |= (u64)RXH_L4_B_2_3;
+
+	if (symm)
+		nfc->data |= (u64)RXH_SYMMETRIC;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index c9c72f8dbcb2..20a2b768e2d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -441,7 +441,7 @@ void ice_fdir_replay_flows(struct ice_hw *hw)
 			prof = hw->fdir_prof[flow];
 			ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX,
 					  prof->fdir_seg[tun], TNL_SEG_CNT(tun),
-					  &hw_prof);
+					  false, &hw_prof);
 			for (j = 0; j < prof->cnt; j++) {
 				enum ice_flow_priority prio;
 				u64 entry_h = 0;
@@ -674,7 +674,7 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 	 * actions (NULL) and zero actions 0.
 	 */
 	err = ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX, seg,
-				TNL_SEG_CNT(tun), &prof);
+				TNL_SEG_CNT(tun), false, &prof);
 	if (err)
 		return err;
 	err = ice_flow_add_entry(hw, ICE_BLK_FD, prof->id, main_vsi->idx,
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 41260110c29c..7f0bd4e42e40 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1218,11 +1218,13 @@ ice_prof_has_mask(struct ice_hw *hw, enum ice_block blk, u8 prof, u16 *masks)
  * @blk: HW block
  * @fv: field vector to search for
  * @masks: masks for FV
+ * @symm: symmetric setting for RSS flows
  * @prof_id: receives the profile ID
  */
 static int
 ice_find_prof_id_with_mask(struct ice_hw *hw, enum ice_block blk,
-			   struct ice_fv_word *fv, u16 *masks, u8 *prof_id)
+			   struct ice_fv_word *fv, u16 *masks, bool symm,
+			   u8 *prof_id)
 {
 	struct ice_es *es = &hw->blk[blk].es;
 	u8 i;
@@ -1236,6 +1238,9 @@ ice_find_prof_id_with_mask(struct ice_hw *hw, enum ice_block blk,
 	for (i = 0; i < (u8)es->count; i++) {
 		u16 off = i * es->fvw;
 
+		if (blk == ICE_BLK_RSS && es->symm[i] != symm)
+			continue;
+
 		if (memcmp(&es->t[off], fv, es->fvw * sizeof(*fv)))
 			continue;
 
@@ -1716,15 +1721,16 @@ ice_update_prof_masking(struct ice_hw *hw, enum ice_block blk, u16 prof_id,
 }
 
 /**
- * ice_write_es - write an extraction sequence to hardware
+ * ice_write_es - write an extraction sequence and symmetric setting to hardware
  * @hw: pointer to the HW struct
  * @blk: the block in which to write the extraction sequence
  * @prof_id: the profile ID to write
  * @fv: pointer to the extraction sequence to write - NULL to clear extraction
+ * @symm: symmetric setting for RSS profiles
  */
 static void
 ice_write_es(struct ice_hw *hw, enum ice_block blk, u8 prof_id,
-	     struct ice_fv_word *fv)
+	     struct ice_fv_word *fv, bool symm)
 {
 	u16 off;
 
@@ -1737,6 +1743,9 @@ ice_write_es(struct ice_hw *hw, enum ice_block blk, u8 prof_id,
 		memcpy(&hw->blk[blk].es.t[off], fv,
 		       hw->blk[blk].es.fvw * sizeof(*fv));
 	}
+
+	if (blk == ICE_BLK_RSS)
+		hw->blk[blk].es.symm[prof_id] = symm;
 }
 
 /**
@@ -1753,7 +1762,7 @@ ice_prof_dec_ref(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 
 	if (hw->blk[blk].es.ref_count[prof_id] > 0) {
 		if (!--hw->blk[blk].es.ref_count[prof_id]) {
-			ice_write_es(hw, blk, prof_id, NULL);
+			ice_write_es(hw, blk, prof_id, NULL, false);
 			ice_free_prof_masks(hw, blk, prof_id);
 			return ice_free_prof_id(hw, blk, prof_id);
 		}
@@ -2116,6 +2125,7 @@ void ice_free_hw_tbls(struct ice_hw *hw)
 		devm_kfree(ice_hw_to_dev(hw), hw->blk[i].prof_redir.t);
 		devm_kfree(ice_hw_to_dev(hw), hw->blk[i].es.t);
 		devm_kfree(ice_hw_to_dev(hw), hw->blk[i].es.ref_count);
+		devm_kfree(ice_hw_to_dev(hw), hw->blk[i].es.symm);
 		devm_kfree(ice_hw_to_dev(hw), hw->blk[i].es.written);
 		devm_kfree(ice_hw_to_dev(hw), hw->blk[i].es.mask_ena);
 	}
@@ -2179,6 +2189,7 @@ void ice_clear_hw_tbls(struct ice_hw *hw)
 
 		memset(es->t, 0, es->count * sizeof(*es->t) * es->fvw);
 		memset(es->ref_count, 0, es->count * sizeof(*es->ref_count));
+		memset(es->symm, 0, es->count * sizeof(*es->symm));
 		memset(es->written, 0, es->count * sizeof(*es->written));
 		memset(es->mask_ena, 0, es->count * sizeof(*es->mask_ena));
 
@@ -2296,6 +2307,11 @@ int ice_init_hw_tbls(struct ice_hw *hw)
 		if (!es->ref_count)
 			goto err;
 
+		es->symm = devm_kcalloc(ice_hw_to_dev(hw), es->count,
+					sizeof(*es->symm), GFP_KERNEL);
+		if (!es->symm)
+			goto err;
+
 		es->written = devm_kcalloc(ice_hw_to_dev(hw), es->count,
 					   sizeof(*es->written), GFP_KERNEL);
 		if (!es->written)
@@ -2973,6 +2989,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
  * @attr_cnt: number of elements in attr array
  * @es: extraction sequence (length of array is determined by the block)
  * @masks: mask for extraction sequence
+ * @symm: symmetric setting for RSS profiles
  *
  * This function registers a profile, which matches a set of PTYPES with a
  * particular extraction sequence. While the hardware profile is allocated
@@ -2982,7 +2999,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 int
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
-	     struct ice_fv_word *es, u16 *masks)
+	     struct ice_fv_word *es, u16 *masks, bool symm)
 {
 	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
@@ -2996,7 +3013,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	mutex_lock(&hw->blk[blk].es.prof_map_lock);
 
 	/* search for existing profile */
-	status = ice_find_prof_id_with_mask(hw, blk, es, masks, &prof_id);
+	status = ice_find_prof_id_with_mask(hw, blk, es, masks, symm, &prof_id);
 	if (status) {
 		/* allocate profile ID */
 		status = ice_alloc_prof_id(hw, blk, &prof_id);
@@ -3019,7 +3036,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 			goto err_ice_add_prof;
 
 		/* and write new es */
-		ice_write_es(hw, blk, prof_id, es);
+		ice_write_es(hw, blk, prof_id, es, symm);
 	}
 
 	ice_prof_inc_ref(hw, blk, prof_id);
@@ -3107,7 +3124,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
  * This will search for a profile tracking ID which was previously added.
  * The profile map lock should be held before calling this function.
  */
-static struct ice_prof_map *
+struct ice_prof_map *
 ice_search_prof_id(struct ice_hw *hw, enum ice_block blk, u64 id)
 {
 	struct ice_prof_map *entry = NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 7af7c8e9aa4e..b39d7cdc381f 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -42,7 +42,9 @@ bool ice_hw_ptype_ena(struct ice_hw *hw, u16 ptype);
 int
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
-	     struct ice_fv_word *es, u16 *masks);
+	     struct ice_fv_word *es, u16 *masks, bool symm);
+struct ice_prof_map *
+ice_search_prof_id(struct ice_hw *hw, enum ice_block blk, u64 id);
 int
 ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 395ebb18950a..d427a79d001a 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -146,6 +146,7 @@ struct ice_es {
 	u32 *mask_ena;
 	struct list_head prof_map;
 	struct ice_fv_word *t;
+	u8 *symm;	/* symmetric setting per profile (RSS blk)*/
 	struct mutex prof_map_lock;	/* protect access to profiles list */
 	u8 *written;
 	u8 reverse; /* set to true to reverse FV order */
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 44f90d243fe7..efce56368083 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1235,6 +1235,7 @@ ice_flow_proc_segs(struct ice_hw *hw, struct ice_flow_prof_params *params)
 #define ICE_FLOW_FIND_PROF_CHK_FLDS	0x00000001
 #define ICE_FLOW_FIND_PROF_CHK_VSI	0x00000002
 #define ICE_FLOW_FIND_PROF_NOT_CHK_DIR	0x00000004
+#define ICE_FLOW_FIND_PROF_CHK_SYMM	0x00000008
 
 /**
  * ice_flow_find_prof_conds - Find a profile matching headers and conditions
@@ -1243,13 +1244,14 @@ ice_flow_proc_segs(struct ice_hw *hw, struct ice_flow_prof_params *params)
  * @dir: flow direction
  * @segs: array of one or more packet segments that describe the flow
  * @segs_cnt: number of packet segments provided
+ * @symm: symmetric setting for RSS profiles
  * @vsi_handle: software VSI handle to check VSI (ICE_FLOW_FIND_PROF_CHK_VSI)
  * @conds: additional conditions to be checked (ICE_FLOW_FIND_PROF_CHK_*)
  */
 static struct ice_flow_prof *
 ice_flow_find_prof_conds(struct ice_hw *hw, enum ice_block blk,
 			 enum ice_flow_dir dir, struct ice_flow_seg_info *segs,
-			 u8 segs_cnt, u16 vsi_handle, u32 conds)
+			 u8 segs_cnt, bool symm, u16 vsi_handle, u32 conds)
 {
 	struct ice_flow_prof *p, *prof = NULL;
 
@@ -1265,6 +1267,11 @@ ice_flow_find_prof_conds(struct ice_hw *hw, enum ice_block blk,
 			    !test_bit(vsi_handle, p->vsis))
 				continue;
 
+			/* Check for symmetric settings */
+			if ((conds & ICE_FLOW_FIND_PROF_CHK_SYMM) &&
+			    p->symm != symm)
+				continue;
+
 			/* Protocol headers must be checked. Matched fields are
 			 * checked if specified.
 			 */
@@ -1331,6 +1338,7 @@ ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block __always_unused blk,
  * @dir: flow direction
  * @segs: array of one or more packet segments that describe the flow
  * @segs_cnt: number of packet segments provided
+ * @symm: symmetric setting for RSS profiles
  * @prof: stores the returned flow profile added
  *
  * Assumption: the caller has acquired the lock to the profile list
@@ -1339,7 +1347,7 @@ static int
 ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 		       enum ice_flow_dir dir,
 		       struct ice_flow_seg_info *segs, u8 segs_cnt,
-		       struct ice_flow_prof **prof)
+		       bool symm, struct ice_flow_prof **prof)
 {
 	struct ice_flow_prof_params *params;
 	struct ice_prof_id *ids;
@@ -1376,6 +1384,7 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	params->prof->id = prof_id;
 	params->prof->dir = dir;
 	params->prof->segs_cnt = segs_cnt;
+	params->prof->symm = symm;
 
 	/* Make a copy of the segments that need to be persistent in the flow
 	 * profile instance
@@ -1392,7 +1401,7 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	/* Add a HW profile for this flow profile */
 	status = ice_add_prof(hw, blk, prof_id, (u8 *)params->ptypes,
 			      params->attr, params->attr_cnt, params->es,
-			      params->mask);
+			      params->mask, symm);
 	if (status) {
 		ice_debug(hw, ICE_DBG_FLOW, "Error adding a HW flow profile\n");
 		goto out;
@@ -1522,12 +1531,13 @@ ice_flow_disassoc_prof(struct ice_hw *hw, enum ice_block blk,
  * @dir: flow direction
  * @segs: array of one or more packet segments that describe the flow
  * @segs_cnt: number of packet segments provided
+ * @symm: symmetric setting for RSS profiles
  * @prof: stores the returned flow profile added
  */
 int
 ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 		  struct ice_flow_seg_info *segs, u8 segs_cnt,
-		  struct ice_flow_prof **prof)
+		  bool symm, struct ice_flow_prof **prof)
 {
 	int status;
 
@@ -1546,7 +1556,8 @@ ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 
 	mutex_lock(&hw->fl_profs_locks[blk]);
 
-	status = ice_flow_add_prof_sync(hw, blk, dir, segs, segs_cnt, prof);
+	status = ice_flow_add_prof_sync(hw, blk, dir, segs, segs_cnt,
+					symm, prof);
 	if (!status)
 		list_add(&(*prof)->l_entry, &hw->fl_profs[blk]);
 
@@ -2068,6 +2079,7 @@ ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
 	rss_cfg->hash.hash_flds = prof->segs[prof->segs_cnt - 1].match;
 	rss_cfg->hash.addl_hdrs = prof->segs[prof->segs_cnt - 1].hdrs;
 	rss_cfg->hash.hdr_type = hdr_type;
+	rss_cfg->hash.symm = prof->symm;
 	set_bit(vsi_handle, rss_cfg->vsis);
 
 	list_add_tail(&rss_cfg->l_entry, &hw->rss_list_head);
@@ -2075,6 +2087,139 @@ ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
 	return 0;
 }
 
+/**
+ * ice_rss_config_xor_word - set the HSYMM registers for one input set word
+ * @hw: pointer to the hardware structure
+ * @prof_id: RSS hardware profile id
+ * @src: the FV index used by the protocol's source field
+ * @dst: the FV index used by the protocol's destination field
+ *
+ * Write to the HSYMM register with the index of @src FV the value of the @dst
+ * FV index. This will tell the hardware to XOR HSYMM[src] with INSET[dst]
+ * while calculating the RSS input set.
+ */
+static void
+ice_rss_config_xor_word(struct ice_hw *hw, u8 prof_id, u8 src, u8 dst)
+{
+	u32 val, reg, bits_shift;
+	u8 reg_idx;
+
+	reg_idx = src / GLQF_HSYMM_REG_SIZE;
+	bits_shift = ((src % GLQF_HSYMM_REG_SIZE) << 3);
+	val = dst | GLQF_HSYMM_ENABLE_BIT;
+
+	reg = rd32(hw, GLQF_HSYMM(prof_id, reg_idx));
+	reg = (reg & ~(0xff << bits_shift)) | (val << bits_shift);
+	wr32(hw, GLQF_HSYMM(prof_id, reg_idx), reg);
+}
+
+/**
+ * ice_rss_config_xor - set the symmetric registers for a profile's protocol
+ * @hw: pointer to the hardware structure
+ * @prof_id: RSS hardware profile id
+ * @src: the FV index used by the protocol's source field
+ * @dst: the FV index used by the protocol's destination field
+ * @len: length of the source/destination fields in words
+ */
+static void
+ice_rss_config_xor(struct ice_hw *hw, u8 prof_id, u8 src, u8 dst, u8 len)
+{
+	int fv_last_word =
+		ICE_FLOW_SW_FIELD_VECTOR_MAX / ICE_FLOW_FV_EXTRACT_SZ - 1;
+	int i;
+
+	for (i = 0; i < len; i++) {
+		ice_rss_config_xor_word(hw, prof_id,
+					/* Yes, field vector in GLQF_HSYMM and
+					 * GLQF_HINSET is inversed!
+					 */
+					fv_last_word - (src + i),
+					fv_last_word - (dst + i));
+		ice_rss_config_xor_word(hw, prof_id,
+					fv_last_word - (dst + i),
+					fv_last_word - (src + i));
+	}
+}
+
+/**
+ * ice_rss_set_symm - set the symmetric settings for an RSS profile
+ * @hw: pointer to the hardware structure
+ * @prof: pointer to flow profile
+ *
+ * The symmetric hash will result from XORing the protocol's fields with
+ * indexes in GLQF_HSYMM and GLQF_HINSET. This function configures the profile's
+ * GLQF_HSYMM registers.
+ */
+static void ice_rss_set_symm(struct ice_hw *hw, struct ice_flow_prof *prof)
+{
+	struct ice_prof_map *map;
+	u8 prof_id, m;
+
+	mutex_lock(&hw->blk[ICE_BLK_RSS].es.prof_map_lock);
+	map = ice_search_prof_id(hw, ICE_BLK_RSS, prof->id);
+	if (map)
+		prof_id = map->prof_id;
+	mutex_unlock(&hw->blk[ICE_BLK_RSS].es.prof_map_lock);
+
+	if (!map)
+		return;
+
+	/* clear to default */
+	for (m = 0; m < GLQF_HSYMM_REG_PER_PROF; m++)
+		wr32(hw, GLQF_HSYMM(prof_id, m), 0);
+
+	if (prof->symm) {
+		struct ice_flow_seg_xtrct *ipv4_src, *ipv4_dst;
+		struct ice_flow_seg_xtrct *ipv6_src, *ipv6_dst;
+		struct ice_flow_seg_xtrct *sctp_src, *sctp_dst;
+		struct ice_flow_seg_xtrct *tcp_src, *tcp_dst;
+		struct ice_flow_seg_xtrct *udp_src, *udp_dst;
+		struct ice_flow_seg_info *seg;
+
+		seg = &prof->segs[prof->segs_cnt - 1];
+
+		ipv4_src = &seg->fields[ICE_FLOW_FIELD_IDX_IPV4_SA].xtrct;
+		ipv4_dst = &seg->fields[ICE_FLOW_FIELD_IDX_IPV4_DA].xtrct;
+
+		ipv6_src = &seg->fields[ICE_FLOW_FIELD_IDX_IPV6_SA].xtrct;
+		ipv6_dst = &seg->fields[ICE_FLOW_FIELD_IDX_IPV6_DA].xtrct;
+
+		tcp_src = &seg->fields[ICE_FLOW_FIELD_IDX_TCP_SRC_PORT].xtrct;
+		tcp_dst = &seg->fields[ICE_FLOW_FIELD_IDX_TCP_DST_PORT].xtrct;
+
+		udp_src = &seg->fields[ICE_FLOW_FIELD_IDX_UDP_SRC_PORT].xtrct;
+		udp_dst = &seg->fields[ICE_FLOW_FIELD_IDX_UDP_DST_PORT].xtrct;
+
+		sctp_src = &seg->fields[ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT].xtrct;
+		sctp_dst = &seg->fields[ICE_FLOW_FIELD_IDX_SCTP_DST_PORT].xtrct;
+
+		/* xor IPv4 */
+		if (ipv4_src->prot_id != 0 && ipv4_dst->prot_id != 0)
+			ice_rss_config_xor(hw, prof_id,
+					   ipv4_src->idx, ipv4_dst->idx, 2);
+
+		/* xor IPv6 */
+		if (ipv6_src->prot_id != 0 && ipv6_dst->prot_id != 0)
+			ice_rss_config_xor(hw, prof_id,
+					   ipv6_src->idx, ipv6_dst->idx, 8);
+
+		/* xor TCP */
+		if (tcp_src->prot_id != 0 && tcp_dst->prot_id != 0)
+			ice_rss_config_xor(hw, prof_id,
+					   tcp_src->idx, tcp_dst->idx, 1);
+
+		/* xor UDP */
+		if (udp_src->prot_id != 0 && udp_dst->prot_id != 0)
+			ice_rss_config_xor(hw, prof_id,
+					   udp_src->idx, udp_dst->idx, 1);
+
+		/* xor SCTP */
+		if (sctp_src->prot_id != 0 && sctp_dst->prot_id != 0)
+			ice_rss_config_xor(hw, prof_id,
+					   sctp_src->idx, sctp_dst->idx, 1);
+	}
+}
+
 /**
  * ice_add_rss_cfg_sync - add an RSS configuration
  * @hw: pointer to the hardware structure
@@ -2094,8 +2239,7 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 	int status;
 
 	segs_cnt = (cfg->hdr_type == ICE_RSS_OUTER_HEADERS) ?
-			   ICE_FLOW_SEG_SINGLE :
-			   ICE_FLOW_SEG_MAX;
+			ICE_FLOW_SEG_SINGLE : ICE_FLOW_SEG_MAX;
 
 	segs = kcalloc(segs_cnt, sizeof(*segs), GFP_KERNEL);
 	if (!segs)
@@ -2106,13 +2250,14 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 	if (status)
 		goto exit;
 
-	/* Search for a flow profile that has matching headers, hash fields
-	 * and has the input VSI associated to it. If found, no further
+	/* Search for a flow profile that has matching headers, hash fields,
+	 * symm and has the input VSI associated to it. If found, no further
 	 * operations required and exit.
 	 */
 	prof = ice_flow_find_prof_conds(hw, blk, ICE_FLOW_RX, segs, segs_cnt,
-					vsi_handle,
+					cfg->symm, vsi_handle,
 					ICE_FLOW_FIND_PROF_CHK_FLDS |
+					ICE_FLOW_FIND_PROF_CHK_SYMM |
 					ICE_FLOW_FIND_PROF_CHK_VSI);
 	if (prof)
 		goto exit;
@@ -2123,7 +2268,8 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 	 * the protocol header and new hash field configuration.
 	 */
 	prof = ice_flow_find_prof_conds(hw, blk, ICE_FLOW_RX, segs, segs_cnt,
-					vsi_handle, ICE_FLOW_FIND_PROF_CHK_VSI);
+					cfg->symm, vsi_handle,
+					ICE_FLOW_FIND_PROF_CHK_VSI);
 	if (prof) {
 		status = ice_flow_disassoc_prof(hw, blk, prof, vsi_handle);
 		if (!status)
@@ -2139,11 +2285,12 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 		}
 	}
 
-	/* Search for a profile that has same match fields only. If this
-	 * exists then associate the VSI to this profile.
+	/* Search for a profile that has the same match fields and symmetric
+	 * setting. If this exists then associate the VSI to this profile.
 	 */
 	prof = ice_flow_find_prof_conds(hw, blk, ICE_FLOW_RX, segs, segs_cnt,
-					vsi_handle,
+					cfg->symm, vsi_handle,
+					ICE_FLOW_FIND_PROF_CHK_SYMM |
 					ICE_FLOW_FIND_PROF_CHK_FLDS);
 	if (prof) {
 		status = ice_flow_assoc_prof(hw, blk, prof, vsi_handle);
@@ -2154,10 +2301,12 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 
 	/* Create a new flow profile with packet segment information. */
 	status = ice_flow_add_prof(hw, blk, ICE_FLOW_RX,
-				   segs, segs_cnt, &prof);
+				   segs, segs_cnt, cfg->symm, &prof);
 	if (status)
 		goto exit;
 
+	prof->symm = cfg->symm;
+	ice_rss_set_symm(hw, prof);
 	status = ice_flow_assoc_prof(hw, blk, prof, vsi_handle);
 	/* If association to a new flow profile failed then this profile can
 	 * be removed.
@@ -2177,7 +2326,7 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 /**
  * ice_add_rss_cfg - add an RSS configuration with specified hashed fields
  * @hw: pointer to the hardware structure
- * @vsi_handle: software VSI handle
+ * @vsi: VSI to add the RSS configuration to
  * @cfg: configure parameters
  *
  * This function will generate a flow profile based on fields associated with
@@ -2185,14 +2334,19 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
  * a flow entry to the profile.
  */
 int
-ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
+ice_add_rss_cfg(struct ice_hw *hw, struct ice_vsi *vsi,
 		const struct ice_rss_hash_cfg *cfg)
 {
 	struct ice_rss_hash_cfg local_cfg;
+	u16 vsi_handle;
 	int status;
 
-	if (!ice_is_vsi_valid(hw, vsi_handle) || !cfg ||
-	    cfg->hdr_type > ICE_RSS_ANY_HEADERS ||
+	if (!vsi)
+		return -EINVAL;
+
+	vsi_handle = vsi->idx;
+	if (!ice_is_vsi_valid(hw, vsi_handle) ||
+	    !cfg || cfg->hdr_type > ICE_RSS_ANY_HEADERS ||
 	    cfg->hash_flds == ICE_HASH_INVALID)
 		return -EINVAL;
 
@@ -2211,6 +2365,11 @@ ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
 	}
 	mutex_unlock(&hw->rss_locks);
 
+	/* Update the VSI's hash function */
+	if (cfg->symm && vsi->rss_hfunc != ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ)
+		return ice_set_rss_hfunc(vsi,
+					 ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ);
+
 	return status;
 }
 
@@ -2233,8 +2392,7 @@ ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 	int status;
 
 	segs_cnt = (cfg->hdr_type == ICE_RSS_OUTER_HEADERS) ?
-			   ICE_FLOW_SEG_SINGLE :
-			   ICE_FLOW_SEG_MAX;
+			ICE_FLOW_SEG_SINGLE : ICE_FLOW_SEG_MAX;
 	segs = kcalloc(segs_cnt, sizeof(*segs), GFP_KERNEL);
 	if (!segs)
 		return -ENOMEM;
@@ -2245,7 +2403,7 @@ ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 		goto out;
 
 	prof = ice_flow_find_prof_conds(hw, blk, ICE_FLOW_RX, segs, segs_cnt,
-					vsi_handle,
+					cfg->symm, vsi_handle,
 					ICE_FLOW_FIND_PROF_CHK_FLDS);
 	if (!prof) {
 		status = -ENOENT;
@@ -2288,8 +2446,8 @@ ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
 	struct ice_rss_hash_cfg local_cfg;
 	int status;
 
-	if (!ice_is_vsi_valid(hw, vsi_handle) || !cfg ||
-	    cfg->hdr_type > ICE_RSS_ANY_HEADERS ||
+	if (!ice_is_vsi_valid(hw, vsi_handle) ||
+	    !cfg || cfg->hdr_type > ICE_RSS_ANY_HEADERS ||
 	    cfg->hash_flds == ICE_HASH_INVALID)
 		return -EINVAL;
 
@@ -2346,19 +2504,24 @@ ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
 /**
  * ice_add_avf_rss_cfg - add an RSS configuration for AVF driver
  * @hw: pointer to the hardware structure
- * @vsi_handle: software VSI handle
+ * @vsi: VF's VSI
  * @avf_hash: hash bit fields (ICE_AVF_FLOW_FIELD_*) to configure
  *
  * This function will take the hash bitmap provided by the AVF driver via a
  * message, convert it to ICE-compatible values, and configure RSS flow
  * profiles.
  */
-int ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 avf_hash)
+int ice_add_avf_rss_cfg(struct ice_hw *hw, struct ice_vsi *vsi, u64 avf_hash)
 {
 	struct ice_rss_hash_cfg hcfg;
+	u16 vsi_handle;
 	int status = 0;
 	u64 hash_flds;
 
+	if (!vsi)
+		return -EINVAL;
+
+	vsi_handle = vsi->idx;
 	if (avf_hash == ICE_AVF_FLOW_FIELD_INVALID ||
 	    !ice_is_vsi_valid(hw, vsi_handle))
 		return -EINVAL;
@@ -2431,7 +2594,8 @@ int ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 avf_hash)
 		hcfg.addl_hdrs = ICE_FLOW_SEG_HDR_NONE;
 		hcfg.hash_flds = rss_hash;
 		hcfg.hdr_type = ICE_RSS_ANY_HEADERS;
-		status = ice_add_rss_cfg(hw, vsi_handle, &hcfg);
+		hcfg.symm = false;
+		status = ice_add_rss_cfg(hw, vsi, &hcfg);
 		if (status)
 			break;
 	}
@@ -2470,11 +2634,12 @@ int ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
  * @hw: pointer to the hardware structure
  * @vsi_handle: software VSI handle
  * @hdrs: protocol header type
+ * @symm: whether the RSS is symmetric (bool, output)
  *
  * This function will return the match fields of the first instance of flow
  * profile having the given header types and containing input VSI
  */
-u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs)
+u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs, bool *symm)
 {
 	u64 rss_hash = ICE_HASH_INVALID;
 	struct ice_rss_cfg *r;
@@ -2488,6 +2653,7 @@ u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs)
 		if (test_bit(vsi_handle, r->vsis) &&
 		    r->hash.addl_hdrs == hdrs) {
 			rss_hash = r->hash.hash_flds;
+			*symm = r->hash.symm;
 			break;
 		}
 	mutex_unlock(&hw->rss_locks);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 73a54e1dd31f..f0ac023ed37e 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -296,6 +296,7 @@ struct ice_rss_hash_cfg {
 	u32 addl_hdrs; /* protocol header fields */
 	u64 hash_flds; /* hash bit field (ICE_FLOW_HASH_*) to configure */
 	enum ice_rss_cfg_hdr_type hdr_type; /* to specify inner or outer */
+	bool symm; /* symmetric or asymmetric hash */
 };
 
 enum ice_flow_dir {
@@ -311,6 +312,7 @@ enum ice_flow_priority {
 #define ICE_FLOW_SEG_SINGLE		1
 #define ICE_FLOW_SEG_MAX		2
 #define ICE_FLOW_SEG_RAW_FLD_MAX	2
+#define ICE_FLOW_SW_FIELD_VECTOR_MAX	48
 #define ICE_FLOW_FV_EXTRACT_SZ		2
 
 #define ICE_FLOW_SET_HDRS(seg, val)	((seg)->hdrs |= (u32)(val))
@@ -395,6 +397,8 @@ struct ice_flow_prof {
 
 	/* software VSI handles referenced by this flow profile */
 	DECLARE_BITMAP(vsis, ICE_MAX_VSI);
+
+	bool symm; /* Symmetric Hash for RSS */
 };
 
 struct ice_rss_cfg {
@@ -407,7 +411,7 @@ struct ice_rss_cfg {
 int
 ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 		  struct ice_flow_seg_info *segs, u8 segs_cnt,
-		  struct ice_flow_prof **prof);
+		  bool symm, struct ice_flow_prof **prof);
 int ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id);
 int
 ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
@@ -423,11 +427,12 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info *seg, u16 off, u8 len,
 int ice_flow_rem_vsi_prof(struct ice_hw *hw, u16 vsi_handle, u64 prof_id);
 void ice_rem_vsi_rss_list(struct ice_hw *hw, u16 vsi_handle);
 int ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
-int ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds);
+int ice_add_avf_rss_cfg(struct ice_hw *hw, struct ice_vsi *vsi,
+			u64 hashed_flds);
 int ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
-int ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
+int ice_add_rss_cfg(struct ice_hw *hw, struct ice_vsi *vsi,
 		    const struct ice_rss_hash_cfg *cfg);
 int ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
 		    const struct ice_rss_hash_cfg *cfg);
-u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs);
+u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs, bool *symm);
 #endif /* _ICE_FLOW_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 6756f3d51d14..ac5aef1ea300 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -389,6 +389,10 @@
 #define GLQF_HMASK_SEL(_i)			(0x00410000 + ((_i) * 4))
 #define GLQF_HMASK_SEL_MAX_INDEX		127
 #define GLQF_HMASK_SEL_MASK_SEL_S		0
+#define GLQF_HSYMM(_i, _j)			(0x0040F000 + ((_i) * 4 + (_j) * 512))
+#define GLQF_HSYMM_REG_SIZE			4
+#define GLQF_HSYMM_REG_PER_PROF			6
+#define GLQF_HSYMM_ENABLE_BIT			BIT(7)
 #define PFQF_FD_ENA				0x0043A000
 #define PFQF_FD_ENA_FD_ENA_M			BIT(0)
 #define PFQF_FD_SIZE				0x00460100
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b7c3ab0591c6..048c0d80a0c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1186,12 +1186,10 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 	case ICE_VSI_PF:
 		/* PF VSI will inherit RSS instance of PF */
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_PF;
-		hash_type = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 		break;
 	case ICE_VSI_VF:
 		/* VF VSI will gets a small RSS table which is a VSI LUT type */
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
-		hash_type = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 		break;
 	default:
 		dev_dbg(dev, "Unsupported VSI type %s\n",
@@ -1199,10 +1197,12 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 		return;
 	}
 
-	ctxt->info.q_opt_rss = ((lut_type << ICE_AQ_VSI_Q_OPT_RSS_LUT_S) &
-				ICE_AQ_VSI_Q_OPT_RSS_LUT_M) |
-				((hash_type << ICE_AQ_VSI_Q_OPT_RSS_HASH_S) &
-				 ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
+	hash_type = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
+	vsi->rss_hfunc = hash_type;
+
+	ctxt->info.q_opt_rss =
+		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M, lut_type) |
+		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hash_type);
 }
 
 static void
@@ -1601,7 +1601,7 @@ static void ice_vsi_set_vf_rss_flow_fld(struct ice_vsi *vsi)
 		return;
 	}
 
-	status = ice_add_avf_rss_cfg(&pf->hw, vsi->idx, ICE_DEFAULT_RSS_HENA);
+	status = ice_add_avf_rss_cfg(&pf->hw, vsi, ICE_DEFAULT_RSS_HENA);
 	if (status)
 		dev_dbg(dev, "ice_add_avf_rss_cfg failed for vsi = %d, error = %d\n",
 			vsi->vsi_num, status);
@@ -1609,34 +1609,34 @@ static void ice_vsi_set_vf_rss_flow_fld(struct ice_vsi *vsi)
 
 static const struct ice_rss_hash_cfg default_rss_cfgs[] = {
 	/* configure RSS for IPv4 with input set IP src/dst */
-	{ICE_FLOW_SEG_HDR_IPV4, ICE_FLOW_HASH_IPV4, ICE_RSS_ANY_HEADERS},
+	{ICE_FLOW_SEG_HDR_IPV4, ICE_FLOW_HASH_IPV4, ICE_RSS_ANY_HEADERS, false},
 	/* configure RSS for IPv6 with input set IPv6 src/dst */
-	{ICE_FLOW_SEG_HDR_IPV6, ICE_FLOW_HASH_IPV6, ICE_RSS_ANY_HEADERS},
+	{ICE_FLOW_SEG_HDR_IPV6, ICE_FLOW_HASH_IPV6, ICE_RSS_ANY_HEADERS, false},
 	/* configure RSS for tcp4 with input set IP src/dst, TCP src/dst */
 	{ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV4,
-				ICE_HASH_TCP_IPV4,  ICE_RSS_ANY_HEADERS},
+				ICE_HASH_TCP_IPV4,  ICE_RSS_ANY_HEADERS, false},
 	/* configure RSS for udp4 with input set IP src/dst, UDP src/dst */
 	{ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV4,
-				ICE_HASH_UDP_IPV4,  ICE_RSS_ANY_HEADERS},
+				ICE_HASH_UDP_IPV4,  ICE_RSS_ANY_HEADERS, false},
 	/* configure RSS for sctp4 with input set IP src/dst - only support
 	 * RSS on SCTPv4 on outer headers (non-tunneled)
 	 */
 	{ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4,
-		ICE_HASH_SCTP_IPV4, ICE_RSS_OUTER_HEADERS},
+		ICE_HASH_SCTP_IPV4, ICE_RSS_OUTER_HEADERS, false},
 	/* configure RSS for tcp6 with input set IPv6 src/dst, TCP src/dst */
 	{ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6,
-				ICE_HASH_TCP_IPV6,  ICE_RSS_ANY_HEADERS},
+				ICE_HASH_TCP_IPV6,  ICE_RSS_ANY_HEADERS, false},
 	/* configure RSS for udp6 with input set IPv6 src/dst, UDP src/dst */
 	{ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV6,
-				ICE_HASH_UDP_IPV6,  ICE_RSS_ANY_HEADERS},
+				ICE_HASH_UDP_IPV6,  ICE_RSS_ANY_HEADERS, false},
 	/* configure RSS for sctp6 with input set IPv6 src/dst - only support
 	 * RSS on SCTPv6 on outer headers (non-tunneled)
 	 */
 	{ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6,
-		ICE_HASH_SCTP_IPV6, ICE_RSS_OUTER_HEADERS},
+		ICE_HASH_SCTP_IPV6, ICE_RSS_OUTER_HEADERS, false},
 	/* configure RSS for IPSEC ESP SPI with input set MAC_IPV4_SPI */
 	{ICE_FLOW_SEG_HDR_ESP,
-		ICE_FLOW_HASH_ESP_SPI, ICE_RSS_OUTER_HEADERS},
+		ICE_FLOW_HASH_ESP_SPI, ICE_RSS_OUTER_HEADERS, false},
 };
 
 /**
@@ -1652,7 +1652,7 @@ static const struct ice_rss_hash_cfg default_rss_cfgs[] = {
  */
 static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 {
-	u16 vsi_handle = vsi->idx, vsi_num = vsi->vsi_num;
+	u16 vsi_num = vsi->vsi_num;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	struct device *dev;
@@ -1668,10 +1668,11 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 	for (i = 0; i < ARRAY_SIZE(default_rss_cfgs); i++) {
 		const struct ice_rss_hash_cfg *cfg = &default_rss_cfgs[i];
 
-		status = ice_add_rss_cfg(hw, vsi_handle, cfg);
+		status = ice_add_rss_cfg(hw, vsi, cfg);
 		if (status)
-			dev_dbg(dev, "ice_add_rss_cfg failed, addl_hdrs = %x, hash_flds = %llx, hdr_type = %d\n",
-				cfg->addl_hdrs, cfg->hash_flds, cfg->hdr_type);
+			dev_dbg(dev, "ice_add_rss_cfg failed, addl_hdrs = %x, hash_flds = %llx, hdr_type = %d, symm = %d\n",
+				cfg->addl_hdrs, cfg->hash_flds,
+				cfg->hdr_type, cfg->symm);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 20fb53ea4e5b..437278a1ec0d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7682,6 +7682,50 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
 	return status;
 }
 
+/**
+ * ice_set_rss_hfunc - Set RSS HASH function
+ * @vsi: Pointer to VSI structure
+ * @hfunc: hash function (ICE_AQ_VSI_Q_OPT_RSS_*)
+ *
+ * Returns 0 on success, negative on failure
+ */
+int ice_set_rss_hfunc(struct ice_vsi *vsi, u8 hfunc)
+{
+	struct ice_vsi_ctx *ctx;
+	int err;
+
+	if (hfunc == vsi->rss_hfunc)
+		return 0;
+
+	if (hfunc != ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ &&
+	    hfunc != ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ)
+		return -EOPNOTSUPP;
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_Q_OPT_VALID);
+	ctx->info.q_opt_rss = vsi->info.q_opt_rss;
+	ctx->info.q_opt_rss &= ~ICE_AQ_VSI_Q_OPT_RSS_HASH_M;
+	ctx->info.q_opt_rss |=
+		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hfunc);
+	ctx->info.q_opt_tc = vsi->info.q_opt_tc;
+	ctx->info.q_opt_flags = vsi->info.q_opt_rss;
+
+	err = ice_update_vsi(&vsi->back->hw, vsi->idx, ctx, NULL);
+	if (err) {
+		dev_err(ice_pf_to_dev(vsi->back), "Failed to configure RSS hash for VSI %d, error %d\n",
+			vsi->vsi_num, err);
+	} else {
+		vsi->info.q_opt_rss = ctx->info.q_opt_rss;
+		vsi->rss_hfunc = hfunc;
+	}
+
+	kfree(ctx);
+	return err;
+}
+
 /**
  * ice_bridge_getlink - Get the hardware bridge mode
  * @skb: skb buff
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index f14aae2fe06c..1014679eb147 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -710,6 +710,11 @@ static bool ice_vc_parse_rss_cfg(struct ice_hw *hw,
 	/* set outer layer RSS as default */
 	hash_cfg->hdr_type = ICE_RSS_OUTER_HEADERS;
 
+	if (rss_cfg->rss_algorithm == VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC)
+		hash_cfg->symm = true;
+	else
+		hash_cfg->symm = false;
+
 	hf_list = ice_vc_hash_field_list;
 	hf_list_len = ARRAY_SIZE(ice_vc_hash_field_list);
 	hdr_list = ice_vc_hdr_list;
@@ -876,7 +881,7 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 		}
 
 		if (add) {
-			if (ice_add_rss_cfg(hw, vsi->idx, &cfg)) {
+			if (ice_add_rss_cfg(hw, vsi, &cfg)) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				dev_err(dev, "ice_add_rss_cfg failed for vsi = %d, v_ret = %d\n",
 					vsi->vsi_num, v_ret);
@@ -2616,7 +2621,7 @@ static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
 	}
 
 	if (vrh->hena) {
-		status = ice_add_avf_rss_cfg(&pf->hw, vsi->idx, vrh->hena);
+		status = ice_add_avf_rss_cfg(&pf->hw, vsi, vrh->hena);
 		v_ret = ice_err_to_virt_err(status);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 5cd143863b21..bcf5d85d5013 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -666,7 +666,7 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
 	}
 
 	ret = ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX, seg,
-				tun + 1, &prof);
+				tun + 1, false, &prof);
 	if (ret) {
 		dev_dbg(dev, "Could not add VSI flow 0x%x for VF %d\n",
 			flow, vf->vf_id);
-- 
2.34.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

