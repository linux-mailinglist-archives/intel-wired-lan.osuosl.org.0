Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC74B7BAE25
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 23:47:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50EC36FA3F;
	Thu,  5 Oct 2023 21:47:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50EC36FA3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696542424;
	bh=M6lHp3XU5jvwVQQib2DIt9POuA7/RQD6avpMtHlI24g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yYKGVWxH2MocUtwkzzzbMUT4zrMzKz+6AmJv4+moCctHHlqP9ILozH3h3w2uRPPza
	 eOmlJNWXxAw5ncdKJ3GPxV47u3TMpVuXFcyxFv7NWmTvFxv8AX/EDKB3aFhMzRBR1d
	 vzsrHfjDDtYz5+cPn4/rHuy9EimtFxtb3qZB5dD1ooxXA+WIht3RdKUrXHnGK2kpZu
	 Lg3bOpB5/YA688kvwNiNLNuIQEGPh256Wg1xSqUD9M5DAIK7DG5AJ7wyXUomt04FKE
	 Xx5HLFe1UOgPYi2Yp1XeYfaKmhhnPglq8osTPNe0cKisT2xuglVHyIasE9MXVgKU8a
	 p1r4FSETTKwXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OXjFPH9myb5j; Thu,  5 Oct 2023 21:47:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57AFE611D2;
	Thu,  5 Oct 2023 21:47:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57AFE611D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 447B21BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 21:46:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19A2041E39
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 21:46:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19A2041E39
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ii27cDaJ9L1W for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 21:46:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6B3D141EA1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 21:46:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B3D141EA1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="373977697"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="373977697"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 14:46:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="822271082"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="822271082"
Received: from tsicinsk-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.35.190])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 14:46:26 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Thu,  5 Oct 2023 15:46:04 -0600
Message-Id: <20231005214607.3178614-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005214607.3178614-1-ahmed.zaki@intel.com>
References: <20231005214607.3178614-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696542392; x=1728078392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tQU5x9NfzlIc1ZRz5p0ucaECc17bJfPe9O5cNKkqzAg=;
 b=n+kd49ve1/b2H3BPVSMrf02IjLU6X24eClreZL3g/nlDq62rehp1jtuX
 imTipL7yWqe3Fyxdbv74uWNtuaEb+tzKlDSz9dCVV+HMiBsTTgKGHCvhZ
 3forPBNSameApAvdqfmZPZW6APOnEAEiqFzLIV6af61zYI9uU2GG3lNIQ
 YPObQHrb0OzlGRfnVGTvvM3eRu+Jd2MQeln3VY+tULxCNPExHq5YaPZcU
 +xv8/1jDLzqXybEhUk1iSCTRLdSPzzGEnKaZWJwEMw5uta1JgRJ3zZMRy
 /OkeV5rNhqht17BXBdF9wEwciTf+NOpDmZ+GwfpdHfX6wDsw1sluSr+Wy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n+kd49ve
Subject: [Intel-wired-lan] [PATCH net-next 3/6] ice: refactor RSS
 configuration
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
Cc: Ahmed Zaki <ahmed.zaki@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Qi Zhang <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

Refactor the driver to use a communication data structure for RSS
config. To do so we introduce the new ice_rss_hash_cfg struct, and then
pass it as an argument to several functions.

Also introduce enum ice_rss_cfg_hdr_type to specify a more granular and
flexible RSS configuration:

ICE_RSS_OUTER_HEADERS - take outer layer as RSS input set
ICE_RSS_INNER_HEADERS - take inner layer as RSS input set
ICE_RSS_INNER_HEADERS_W_OUTER_IPV4 - take inner layer as RSS input set for
                                     packet with outer IPV4
ICE_RSS_INNER_HEADERS_W_OUTER_IPV6 - take inner layer as RSS input set for
                                     packet with outer IPV6
ICE_RSS_ANY_HEADERS - try with outer first then inner (same as the
		      behaviour without this change)

Finally, move the virtchnl_rss_algorithm enum to be with the other RSS
related structures in the virtchnl.h file.

There should be no functional change due to this patch.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   6 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     | 232 +++++++++++-------
 drivers/net/ethernet/intel/ice/ice_flow.h     |  33 ++-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 100 +++-----
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  36 +--
 include/linux/avf/virtchnl.h                  |  16 +-
 6 files changed, 246 insertions(+), 177 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d3cb08e66dcb..d30d1b2a819b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2508,6 +2508,7 @@ static int
 ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 {
 	struct ice_pf *pf = vsi->back;
+	struct ice_rss_hash_cfg cfg;
 	struct device *dev;
 	u64 hashed_flds;
 	int status;
@@ -2534,7 +2535,10 @@ ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 		return -EINVAL;
 	}
 
-	status = ice_add_rss_cfg(&pf->hw, vsi->idx, hashed_flds, hdrs);
+	cfg.hash_flds = hashed_flds;
+	cfg.addl_hdrs = hdrs;
+	cfg.hdr_type = ICE_RSS_ANY_HEADERS;
+	status = ice_add_rss_cfg(&pf->hw, vsi->idx, &cfg);
 	if (status) {
 		dev_dbg(dev, "ice_add_rss_cfg failed, vsi num = %d, error = %d\n",
 			vsi->vsi_num, status);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 85cca572c22a..ff76eaabfb69 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1858,37 +1858,49 @@ int ice_flow_rem_vsi_prof(struct ice_hw *hw, u16 vsi_handle, u64 prof_id)
 /**
  * ice_flow_set_rss_seg_info - setup packet segments for RSS
  * @segs: pointer to the flow field segment(s)
- * @hash_fields: fields to be hashed on for the segment(s)
- * @flow_hdr: protocol header fields within a packet segment
+ * @seg_cnt: segment count
+ * @cfg: configure parameters
  *
  * Helper function to extract fields from hash bitmap and use flow
  * header value to set flow field segment for further use in flow
  * profile entry or removal.
  */
 static int
-ice_flow_set_rss_seg_info(struct ice_flow_seg_info *segs, u64 hash_fields,
-			  u32 flow_hdr)
+ice_flow_set_rss_seg_info(struct ice_flow_seg_info *segs, u8 seg_cnt,
+			  const struct ice_rss_hash_cfg *cfg)
 {
+	struct ice_flow_seg_info *seg;
 	u64 val;
-	u8 i;
+	u16 i;
+
+	/* set inner most segment */
+	seg = &segs[seg_cnt - 1];
 
-	for_each_set_bit(i, (unsigned long *)&hash_fields,
-			 ICE_FLOW_FIELD_IDX_MAX)
-		ice_flow_set_fld(segs, (enum ice_flow_field)i,
+	for_each_set_bit(i, (const unsigned long *)&cfg->hash_flds,
+			 (u16)ICE_FLOW_FIELD_IDX_MAX)
+		ice_flow_set_fld(seg, (enum ice_flow_field)i,
 				 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
 				 ICE_FLOW_FLD_OFF_INVAL, false);
 
-	ICE_FLOW_SET_HDRS(segs, flow_hdr);
+	ICE_FLOW_SET_HDRS(seg, cfg->addl_hdrs);
 
-	if (segs->hdrs & ~ICE_FLOW_RSS_SEG_HDR_VAL_MASKS &
+	/* set outer most header */
+	if (cfg->hdr_type == ICE_RSS_INNER_HEADERS_W_OUTER_IPV4)
+		segs[ICE_RSS_OUTER_HEADERS].hdrs |= ICE_FLOW_SEG_HDR_IPV4 |
+						    ICE_FLOW_SEG_HDR_IPV_OTHER;
+	else if (cfg->hdr_type == ICE_RSS_INNER_HEADERS_W_OUTER_IPV6)
+		segs[ICE_RSS_OUTER_HEADERS].hdrs |= ICE_FLOW_SEG_HDR_IPV6 |
+						    ICE_FLOW_SEG_HDR_IPV_OTHER;
+
+	if (seg->hdrs & ~ICE_FLOW_RSS_SEG_HDR_VAL_MASKS &
 	    ~ICE_FLOW_RSS_HDRS_INNER_MASK & ~ICE_FLOW_SEG_HDR_IPV_OTHER)
 		return -EINVAL;
 
-	val = (u64)(segs->hdrs & ICE_FLOW_RSS_SEG_HDR_L3_MASKS);
+	val = (u64)(seg->hdrs & ICE_FLOW_RSS_SEG_HDR_L3_MASKS);
 	if (val && !is_power_of_2(val))
 		return -EIO;
 
-	val = (u64)(segs->hdrs & ICE_FLOW_RSS_SEG_HDR_L4_MASKS);
+	val = (u64)(seg->hdrs & ICE_FLOW_RSS_SEG_HDR_L4_MASKS);
 	if (val && !is_power_of_2(val))
 		return -EIO;
 
@@ -1958,6 +1970,39 @@ int ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
 	return status;
 }
 
+/**
+ * ice_get_rss_hdr_type - get a RSS profile's header type
+ * @prof: RSS flow profile
+ */
+static enum ice_rss_cfg_hdr_type
+ice_get_rss_hdr_type(struct ice_flow_prof *prof)
+{
+	if (prof->segs_cnt == ICE_FLOW_SEG_SINGLE) {
+		return ICE_RSS_OUTER_HEADERS;
+	} else if (prof->segs_cnt == ICE_FLOW_SEG_MAX) {
+		const struct ice_flow_seg_info *s;
+
+		s = &prof->segs[ICE_RSS_OUTER_HEADERS];
+		if (s->hdrs == ICE_FLOW_SEG_HDR_NONE)
+			return ICE_RSS_INNER_HEADERS;
+		if (s->hdrs & ICE_FLOW_SEG_HDR_IPV4)
+			return ICE_RSS_INNER_HEADERS_W_OUTER_IPV4;
+		if (s->hdrs & ICE_FLOW_SEG_HDR_IPV6)
+			return ICE_RSS_INNER_HEADERS_W_OUTER_IPV6;
+	}
+
+	return ICE_RSS_ANY_HEADERS;
+}
+
+static bool
+ice_rss_match_prof(struct ice_rss_cfg *r, struct ice_flow_prof *prof,
+		   enum ice_rss_cfg_hdr_type hdr_type)
+{
+	return (r->hash.hdr_type == hdr_type &&
+		r->hash.hash_flds == prof->segs[prof->segs_cnt - 1].match &&
+		r->hash.addl_hdrs == prof->segs[prof->segs_cnt - 1].hdrs);
+}
+
 /**
  * ice_rem_rss_list - remove RSS configuration from list
  * @hw: pointer to the hardware structure
@@ -1969,15 +2014,16 @@ int ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
 static void
 ice_rem_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
 {
+	enum ice_rss_cfg_hdr_type hdr_type;
 	struct ice_rss_cfg *r, *tmp;
 
 	/* Search for RSS hash fields associated to the VSI that match the
 	 * hash configurations associated to the flow profile. If found
 	 * remove from the RSS entry list of the VSI context and delete entry.
 	 */
+	hdr_type = ice_get_rss_hdr_type(prof);
 	list_for_each_entry_safe(r, tmp, &hw->rss_list_head, l_entry)
-		if (r->hashed_flds == prof->segs[prof->segs_cnt - 1].match &&
-		    r->packet_hdr == prof->segs[prof->segs_cnt - 1].hdrs) {
+		if (ice_rss_match_prof(r, prof, hdr_type)) {
 			clear_bit(vsi_handle, r->vsis);
 			if (bitmap_empty(r->vsis, ICE_MAX_VSI)) {
 				list_del(&r->l_entry);
@@ -1998,11 +2044,12 @@ ice_rem_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
 static int
 ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
 {
+	enum ice_rss_cfg_hdr_type hdr_type;
 	struct ice_rss_cfg *r, *rss_cfg;
 
+	hdr_type = ice_get_rss_hdr_type(prof);
 	list_for_each_entry(r, &hw->rss_list_head, l_entry)
-		if (r->hashed_flds == prof->segs[prof->segs_cnt - 1].match &&
-		    r->packet_hdr == prof->segs[prof->segs_cnt - 1].hdrs) {
+		if (ice_rss_match_prof(r, prof, hdr_type)) {
 			set_bit(vsi_handle, r->vsis);
 			return 0;
 		}
@@ -2012,8 +2059,9 @@ ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
 	if (!rss_cfg)
 		return -ENOMEM;
 
-	rss_cfg->hashed_flds = prof->segs[prof->segs_cnt - 1].match;
-	rss_cfg->packet_hdr = prof->segs[prof->segs_cnt - 1].hdrs;
+	rss_cfg->hash.hash_flds = prof->segs[prof->segs_cnt - 1].match;
+	rss_cfg->hash.addl_hdrs = prof->segs[prof->segs_cnt - 1].hdrs;
+	rss_cfg->hash.hdr_type = hdr_type;
 	set_bit(vsi_handle, rss_cfg->vsis);
 
 	list_add_tail(&rss_cfg->l_entry, &hw->rss_list_head);
@@ -2022,54 +2070,55 @@ ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
 }
 
 #define ICE_FLOW_PROF_HASH_S	0
-#define ICE_FLOW_PROF_HASH_M	(0xFFFFFFFFULL << ICE_FLOW_PROF_HASH_S)
+#define ICE_FLOW_PROF_HASH_M	GENMASK_ULL(31, 0)
 #define ICE_FLOW_PROF_HDR_S	32
-#define ICE_FLOW_PROF_HDR_M	(0x3FFFFFFFULL << ICE_FLOW_PROF_HDR_S)
-#define ICE_FLOW_PROF_ENCAP_S	63
-#define ICE_FLOW_PROF_ENCAP_M	(BIT_ULL(ICE_FLOW_PROF_ENCAP_S))
-
-#define ICE_RSS_OUTER_HEADERS	1
-#define ICE_RSS_INNER_HEADERS	2
+#define ICE_FLOW_PROF_HDR_M	GENMASK_ULL(61, 32)
+#define ICE_FLOW_PROF_ENCAP_S	62
+#define ICE_FLOW_PROF_ENCAP_M	GENMASK_ULL(63, 62)
 
 /* Flow profile ID format:
  * [0:31] - Packet match fields
- * [32:62] - Protocol header
- * [63] - Encapsulation flag, 0 if non-tunneled, 1 if tunneled
+ * [32:61] - Protocol header
+ * [62:63] - Encapsulation flag:
+ *	     0 if non-tunneled
+ *	     1 if tunneled
+ *	     2 for tunneled with outer ipv4
+ *	     3 for tunneled with outer ipv6
  */
-#define ICE_FLOW_GEN_PROFID(hash, hdr, segs_cnt) \
-	((u64)(((u64)(hash) & ICE_FLOW_PROF_HASH_M) | \
+#define ICE_FLOW_GEN_PROFID(hash, hdr, encap)                                \
+	((u64)(((u64)(hash) & ICE_FLOW_PROF_HASH_M) |                        \
 	       (((u64)(hdr) << ICE_FLOW_PROF_HDR_S) & ICE_FLOW_PROF_HDR_M) | \
-	       ((u8)((segs_cnt) - 1) ? ICE_FLOW_PROF_ENCAP_M : 0)))
+	       (((u64)(encap) << ICE_FLOW_PROF_ENCAP_S) &                    \
+		ICE_FLOW_PROF_ENCAP_M)))
 
 /**
  * ice_add_rss_cfg_sync - add an RSS configuration
  * @hw: pointer to the hardware structure
  * @vsi_handle: software VSI handle
- * @hashed_flds: hash bit fields (ICE_FLOW_HASH_*) to configure
- * @addl_hdrs: protocol header fields
- * @segs_cnt: packet segment count
+ * @cfg: configure parameters
  *
  * Assumption: lock has already been acquired for RSS list
  */
 static int
-ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
-		     u32 addl_hdrs, u8 segs_cnt)
+ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
+		     const struct ice_rss_hash_cfg *cfg)
 {
 	const enum ice_block blk = ICE_BLK_RSS;
 	struct ice_flow_prof *prof = NULL;
 	struct ice_flow_seg_info *segs;
+	u8 segs_cnt;
 	int status;
 
-	if (!segs_cnt || segs_cnt > ICE_FLOW_SEG_MAX)
-		return -EINVAL;
+	segs_cnt = (cfg->hdr_type == ICE_RSS_OUTER_HEADERS) ?
+			   ICE_FLOW_SEG_SINGLE :
+			   ICE_FLOW_SEG_MAX;
 
 	segs = kcalloc(segs_cnt, sizeof(*segs), GFP_KERNEL);
 	if (!segs)
 		return -ENOMEM;
 
 	/* Construct the packet segment info from the hashed fields */
-	status = ice_flow_set_rss_seg_info(&segs[segs_cnt - 1], hashed_flds,
-					   addl_hdrs);
+	status = ice_flow_set_rss_seg_info(segs, segs_cnt, cfg);
 	if (status)
 		goto exit;
 
@@ -2123,9 +2172,9 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 	 * segment information.
 	 */
 	status = ice_flow_add_prof(hw, blk, ICE_FLOW_RX,
-				   ICE_FLOW_GEN_PROFID(hashed_flds,
+				   ICE_FLOW_GEN_PROFID(cfg->hash_flds,
 						       segs[segs_cnt - 1].hdrs,
-						       segs_cnt),
+						       cfg->hdr_type),
 				   segs, segs_cnt, &prof);
 	if (status)
 		goto exit;
@@ -2150,29 +2199,37 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
  * ice_add_rss_cfg - add an RSS configuration with specified hashed fields
  * @hw: pointer to the hardware structure
  * @vsi_handle: software VSI handle
- * @hashed_flds: hash bit fields (ICE_FLOW_HASH_*) to configure
- * @addl_hdrs: protocol header fields
+ * @cfg: configure parameters
  *
  * This function will generate a flow profile based on fields associated with
  * the input fields to hash on, the flow type and use the VSI number to add
  * a flow entry to the profile.
  */
 int
-ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
-		u32 addl_hdrs)
+ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
+		const struct ice_rss_hash_cfg *cfg)
 {
+	struct ice_rss_hash_cfg local_cfg;
 	int status;
 
-	if (hashed_flds == ICE_HASH_INVALID ||
-	    !ice_is_vsi_valid(hw, vsi_handle))
+	if (!ice_is_vsi_valid(hw, vsi_handle) || !cfg ||
+	    cfg->hdr_type > ICE_RSS_ANY_HEADERS ||
+	    cfg->hash_flds == ICE_HASH_INVALID)
 		return -EINVAL;
 
 	mutex_lock(&hw->rss_locks);
-	status = ice_add_rss_cfg_sync(hw, vsi_handle, hashed_flds, addl_hdrs,
-				      ICE_RSS_OUTER_HEADERS);
-	if (!status)
-		status = ice_add_rss_cfg_sync(hw, vsi_handle, hashed_flds,
-					      addl_hdrs, ICE_RSS_INNER_HEADERS);
+	local_cfg = *cfg;
+	if (cfg->hdr_type < ICE_RSS_ANY_HEADERS) {
+		status = ice_add_rss_cfg_sync(hw, vsi_handle, &local_cfg);
+	} else {
+		local_cfg.hdr_type = ICE_RSS_OUTER_HEADERS;
+		status = ice_add_rss_cfg_sync(hw, vsi_handle, &local_cfg);
+		if (!status) {
+			local_cfg.hdr_type = ICE_RSS_INNER_HEADERS;
+			status = ice_add_rss_cfg_sync(hw, vsi_handle,
+						      &local_cfg);
+		}
+	}
 	mutex_unlock(&hw->rss_locks);
 
 	return status;
@@ -2182,28 +2239,29 @@ ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
  * ice_rem_rss_cfg_sync - remove an existing RSS configuration
  * @hw: pointer to the hardware structure
  * @vsi_handle: software VSI handle
- * @hashed_flds: Packet hash types (ICE_FLOW_HASH_*) to remove
- * @addl_hdrs: Protocol header fields within a packet segment
- * @segs_cnt: packet segment count
+ * @cfg: configure parameters
  *
  * Assumption: lock has already been acquired for RSS list
  */
 static int
-ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
-		     u32 addl_hdrs, u8 segs_cnt)
+ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
+		     const struct ice_rss_hash_cfg *cfg)
 {
 	const enum ice_block blk = ICE_BLK_RSS;
 	struct ice_flow_seg_info *segs;
 	struct ice_flow_prof *prof;
+	u8 segs_cnt;
 	int status;
 
+	segs_cnt = (cfg->hdr_type == ICE_RSS_OUTER_HEADERS) ?
+			   ICE_FLOW_SEG_SINGLE :
+			   ICE_FLOW_SEG_MAX;
 	segs = kcalloc(segs_cnt, sizeof(*segs), GFP_KERNEL);
 	if (!segs)
 		return -ENOMEM;
 
 	/* Construct the packet segment info from the hashed fields */
-	status = ice_flow_set_rss_seg_info(&segs[segs_cnt - 1], hashed_flds,
-					   addl_hdrs);
+	status = ice_flow_set_rss_seg_info(segs, segs_cnt, cfg);
 	if (status)
 		goto out;
 
@@ -2236,31 +2294,39 @@ ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
  * ice_rem_rss_cfg - remove an existing RSS config with matching hashed fields
  * @hw: pointer to the hardware structure
  * @vsi_handle: software VSI handle
- * @hashed_flds: Packet hash types (ICE_FLOW_HASH_*) to remove
- * @addl_hdrs: Protocol header fields within a packet segment
+ * @cfg: configure parameters
  *
  * This function will lookup the flow profile based on the input
  * hash field bitmap, iterate through the profile entry list of
  * that profile and find entry associated with input VSI to be
- * removed. Calls are made to underlying flow s which will APIs
+ * removed. Calls are made to underlying flow apis which will in
  * turn build or update buffers for RSS XLT1 section.
  */
-int __maybe_unused
-ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
-		u32 addl_hdrs)
+int
+ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
+		const struct ice_rss_hash_cfg *cfg)
 {
+	struct ice_rss_hash_cfg local_cfg;
 	int status;
 
-	if (hashed_flds == ICE_HASH_INVALID ||
-	    !ice_is_vsi_valid(hw, vsi_handle))
+	if (!ice_is_vsi_valid(hw, vsi_handle) || !cfg ||
+	    cfg->hdr_type > ICE_RSS_ANY_HEADERS ||
+	    cfg->hash_flds == ICE_HASH_INVALID)
 		return -EINVAL;
 
 	mutex_lock(&hw->rss_locks);
-	status = ice_rem_rss_cfg_sync(hw, vsi_handle, hashed_flds, addl_hdrs,
-				      ICE_RSS_OUTER_HEADERS);
-	if (!status)
-		status = ice_rem_rss_cfg_sync(hw, vsi_handle, hashed_flds,
-					      addl_hdrs, ICE_RSS_INNER_HEADERS);
+	local_cfg = *cfg;
+	if (cfg->hdr_type < ICE_RSS_ANY_HEADERS) {
+		status = ice_rem_rss_cfg_sync(hw, vsi_handle, &local_cfg);
+	} else {
+		local_cfg.hdr_type = ICE_RSS_OUTER_HEADERS;
+		status = ice_rem_rss_cfg_sync(hw, vsi_handle, &local_cfg);
+		if (!status) {
+			local_cfg.hdr_type = ICE_RSS_INNER_HEADERS;
+			status = ice_rem_rss_cfg_sync(hw, vsi_handle,
+						      &local_cfg);
+		}
+	}
 	mutex_unlock(&hw->rss_locks);
 
 	return status;
@@ -2310,6 +2376,7 @@ ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
  */
 int ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 avf_hash)
 {
+	struct ice_rss_hash_cfg hcfg;
 	int status = 0;
 	u64 hash_flds;
 
@@ -2382,8 +2449,10 @@ int ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 avf_hash)
 		if (rss_hash == ICE_HASH_INVALID)
 			return -EIO;
 
-		status = ice_add_rss_cfg(hw, vsi_handle, rss_hash,
-					 ICE_FLOW_SEG_HDR_NONE);
+		hcfg.addl_hdrs = ICE_FLOW_SEG_HDR_NONE;
+		hcfg.hash_flds = rss_hash;
+		hcfg.hdr_type = ICE_RSS_ANY_HEADERS;
+		status = ice_add_rss_cfg(hw, vsi_handle, &hcfg);
 		if (status)
 			break;
 	}
@@ -2407,16 +2476,7 @@ int ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
 	mutex_lock(&hw->rss_locks);
 	list_for_each_entry(r, &hw->rss_list_head, l_entry) {
 		if (test_bit(vsi_handle, r->vsis)) {
-			status = ice_add_rss_cfg_sync(hw, vsi_handle,
-						      r->hashed_flds,
-						      r->packet_hdr,
-						      ICE_RSS_OUTER_HEADERS);
-			if (status)
-				break;
-			status = ice_add_rss_cfg_sync(hw, vsi_handle,
-						      r->hashed_flds,
-						      r->packet_hdr,
-						      ICE_RSS_INNER_HEADERS);
+			status = ice_add_rss_cfg_sync(hw, vsi_handle, &r->hash);
 			if (status)
 				break;
 		}
@@ -2447,8 +2507,8 @@ u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs)
 	mutex_lock(&hw->rss_locks);
 	list_for_each_entry(r, &hw->rss_list_head, l_entry)
 		if (test_bit(vsi_handle, r->vsis) &&
-		    r->packet_hdr == hdrs) {
-			rss_hash = r->hashed_flds;
+		    r->hash.addl_hdrs == hdrs) {
+			rss_hash = r->hash.hash_flds;
 			break;
 		}
 	mutex_unlock(&hw->rss_locks);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index b465d27d9b80..7a1db1df760e 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -34,6 +34,8 @@
 #define ICE_HASH_TCP_IPV6	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_TCP_PORT)
 #define ICE_HASH_UDP_IPV4	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_UDP_PORT)
 #define ICE_HASH_UDP_IPV6	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_UDP_PORT)
+#define ICE_HASH_SCTP_IPV4	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_SCTP_PORT)
+#define ICE_HASH_SCTP_IPV6	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_SCTP_PORT)
 
 #define ICE_FLOW_HASH_GTP_TEID \
 	(BIT_ULL(ICE_FLOW_FIELD_IDX_GTPC_TEID))
@@ -279,6 +281,23 @@ enum ice_flow_avf_hdr_field {
 	BIT_ULL(ICE_AVF_FLOW_FIELD_UNICAST_IPV6_UDP) | \
 	BIT_ULL(ICE_AVF_FLOW_FIELD_MULTICAST_IPV6_UDP))
 
+enum ice_rss_cfg_hdr_type {
+	ICE_RSS_OUTER_HEADERS, /* take outer headers as inputset. */
+	ICE_RSS_INNER_HEADERS, /* take inner headers as inputset. */
+	/* take inner headers as inputset for packet with outer ipv4. */
+	ICE_RSS_INNER_HEADERS_W_OUTER_IPV4,
+	/* take inner headers as inputset for packet with outer ipv6. */
+	ICE_RSS_INNER_HEADERS_W_OUTER_IPV6,
+	/* take outer headers first then inner headers as inputset */
+	ICE_RSS_ANY_HEADERS
+};
+
+struct ice_rss_hash_cfg {
+	u32 addl_hdrs; /* protocol header fields */
+	u64 hash_flds; /* hash bit field (ICE_FLOW_HASH_*) to configure */
+	enum ice_rss_cfg_hdr_type hdr_type; /* to specify inner or outer */
+};
+
 enum ice_flow_dir {
 	ICE_FLOW_RX		= 0x02,
 };
@@ -289,6 +308,7 @@ enum ice_flow_priority {
 	ICE_FLOW_PRIO_HIGH
 };
 
+#define ICE_FLOW_SEG_SINGLE		1
 #define ICE_FLOW_SEG_MAX		2
 #define ICE_FLOW_SEG_RAW_FLD_MAX	2
 #define ICE_FLOW_FV_EXTRACT_SZ		2
@@ -381,8 +401,7 @@ struct ice_rss_cfg {
 	struct list_head l_entry;
 	/* bitmap of VSIs added to the RSS entry */
 	DECLARE_BITMAP(vsis, ICE_MAX_VSI);
-	u64 hashed_flds;
-	u32 packet_hdr;
+	struct ice_rss_hash_cfg hash;
 };
 
 int
@@ -406,11 +425,9 @@ void ice_rem_vsi_rss_list(struct ice_hw *hw, u16 vsi_handle);
 int ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
 int ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds);
 int ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
-int
-ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
-		u32 addl_hdrs);
-int
-ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
-		u32 addl_hdrs);
+int ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
+		    const struct ice_rss_hash_cfg *cfg);
+int ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
+		    const struct ice_rss_hash_cfg *cfg);
 u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs);
 #endif /* _ICE_FLOW_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 1adf65d88ef0..b7c3ab0591c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1607,6 +1607,38 @@ static void ice_vsi_set_vf_rss_flow_fld(struct ice_vsi *vsi)
 			vsi->vsi_num, status);
 }
 
+static const struct ice_rss_hash_cfg default_rss_cfgs[] = {
+	/* configure RSS for IPv4 with input set IP src/dst */
+	{ICE_FLOW_SEG_HDR_IPV4, ICE_FLOW_HASH_IPV4, ICE_RSS_ANY_HEADERS},
+	/* configure RSS for IPv6 with input set IPv6 src/dst */
+	{ICE_FLOW_SEG_HDR_IPV6, ICE_FLOW_HASH_IPV6, ICE_RSS_ANY_HEADERS},
+	/* configure RSS for tcp4 with input set IP src/dst, TCP src/dst */
+	{ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV4,
+				ICE_HASH_TCP_IPV4,  ICE_RSS_ANY_HEADERS},
+	/* configure RSS for udp4 with input set IP src/dst, UDP src/dst */
+	{ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV4,
+				ICE_HASH_UDP_IPV4,  ICE_RSS_ANY_HEADERS},
+	/* configure RSS for sctp4 with input set IP src/dst - only support
+	 * RSS on SCTPv4 on outer headers (non-tunneled)
+	 */
+	{ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4,
+		ICE_HASH_SCTP_IPV4, ICE_RSS_OUTER_HEADERS},
+	/* configure RSS for tcp6 with input set IPv6 src/dst, TCP src/dst */
+	{ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6,
+				ICE_HASH_TCP_IPV6,  ICE_RSS_ANY_HEADERS},
+	/* configure RSS for udp6 with input set IPv6 src/dst, UDP src/dst */
+	{ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV6,
+				ICE_HASH_UDP_IPV6,  ICE_RSS_ANY_HEADERS},
+	/* configure RSS for sctp6 with input set IPv6 src/dst - only support
+	 * RSS on SCTPv6 on outer headers (non-tunneled)
+	 */
+	{ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6,
+		ICE_HASH_SCTP_IPV6, ICE_RSS_OUTER_HEADERS},
+	/* configure RSS for IPSEC ESP SPI with input set MAC_IPV4_SPI */
+	{ICE_FLOW_SEG_HDR_ESP,
+		ICE_FLOW_HASH_ESP_SPI, ICE_RSS_OUTER_HEADERS},
+};
+
 /**
  * ice_vsi_set_rss_flow_fld - Sets RSS input set for different flows
  * @vsi: VSI to be configured
@@ -1625,6 +1657,7 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 	struct ice_hw *hw = &pf->hw;
 	struct device *dev;
 	int status;
+	u32 i;
 
 	dev = ice_pf_to_dev(pf);
 	if (ice_is_safe_mode(pf)) {
@@ -1632,67 +1665,14 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 			vsi_num);
 		return;
 	}
-	/* configure RSS for IPv4 with input set IP src/dst */
-	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV4,
-				 ICE_FLOW_SEG_HDR_IPV4);
-	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for ipv4 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
-
-	/* configure RSS for IPv6 with input set IPv6 src/dst */
-	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV6,
-				 ICE_FLOW_SEG_HDR_IPV6);
-	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for ipv6 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
-
-	/* configure RSS for tcp4 with input set IP src/dst, TCP src/dst */
-	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_TCP_IPV4,
-				 ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV4);
-	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for tcp4 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
+	for (i = 0; i < ARRAY_SIZE(default_rss_cfgs); i++) {
+		const struct ice_rss_hash_cfg *cfg = &default_rss_cfgs[i];
 
-	/* configure RSS for udp4 with input set IP src/dst, UDP src/dst */
-	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_UDP_IPV4,
-				 ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV4);
-	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for udp4 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
-
-	/* configure RSS for sctp4 with input set IP src/dst */
-	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV4,
-				 ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4);
-	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for sctp4 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
-
-	/* configure RSS for tcp6 with input set IPv6 src/dst, TCP src/dst */
-	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_TCP_IPV6,
-				 ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6);
-	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for tcp6 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
-
-	/* configure RSS for udp6 with input set IPv6 src/dst, UDP src/dst */
-	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_UDP_IPV6,
-				 ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV6);
-	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for udp6 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
-
-	/* configure RSS for sctp6 with input set IPv6 src/dst */
-	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV6,
-				 ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6);
-	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for sctp6 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
-
-	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_ESP_SPI,
-				 ICE_FLOW_SEG_HDR_ESP);
-	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for esp/spi flow, vsi = %d, error = %d\n",
-			vsi_num, status);
+		status = ice_add_rss_cfg(hw, vsi_handle, cfg);
+		if (status)
+			dev_dbg(dev, "ice_add_rss_cfg failed, addl_hdrs = %x, hash_flds = %llx, hdr_type = %d\n",
+				cfg->addl_hdrs, cfg->hash_flds, cfg->hdr_type);
+	}
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 3d1eeff2d09f..ed6fdc92300e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -689,9 +689,7 @@ ice_vc_validate_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto)
  * a specific virtchnl RSS cfg
  * @hw: pointer to the hardware
  * @rss_cfg: pointer to the virtchnl RSS cfg
- * @addl_hdrs: pointer to the protocol header fields (ICE_FLOW_SEG_HDR_*)
- * to configure
- * @hash_flds: pointer to the hash bit fields (ICE_FLOW_HASH_*) to configure
+ * @hash_cfg: pointer to the HW hash configuration
  *
  * Return true if all the protocol header and hash fields in the RSS cfg could
  * be parsed, else return false
@@ -699,13 +697,18 @@ ice_vc_validate_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto)
  * This function parses the virtchnl RSS cfg to be the intended
  * hash fields and the intended header for RSS configuration
  */
-static bool
-ice_vc_parse_rss_cfg(struct ice_hw *hw, struct virtchnl_rss_cfg *rss_cfg,
-		     u32 *addl_hdrs, u64 *hash_flds)
+static bool ice_vc_parse_rss_cfg(struct ice_hw *hw,
+				 struct virtchnl_rss_cfg *rss_cfg,
+				 struct ice_rss_hash_cfg *hash_cfg)
 {
 	const struct ice_vc_hash_field_match_type *hf_list;
 	const struct ice_vc_hdr_match_type *hdr_list;
 	int i, hf_list_len, hdr_list_len;
+	u32 *addl_hdrs = &hash_cfg->addl_hdrs;
+	u64 *hash_flds = &hash_cfg->hash_flds;
+
+	/* set outer layer RSS as default */
+	hash_cfg->hdr_type = ICE_RSS_OUTER_HEADERS;
 
 	hf_list = ice_vc_hash_field_list;
 	hf_list_len = ARRAY_SIZE(ice_vc_hash_field_list);
@@ -856,18 +859,24 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 
 		kfree(ctx);
 	} else {
-		u32 addl_hdrs = ICE_FLOW_SEG_HDR_NONE;
-		u64 hash_flds = ICE_HASH_INVALID;
+		struct ice_rss_hash_cfg cfg;
+
+		/* Only check for none raw pattern case */
+		if (!ice_vc_validate_pattern(vf, &rss_cfg->proto_hdrs)) {
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			goto error_param;
+		}
+		cfg.addl_hdrs = ICE_FLOW_SEG_HDR_NONE;
+		cfg.hash_flds = ICE_HASH_INVALID;
+		cfg.hdr_type = ICE_RSS_ANY_HEADERS;
 
-		if (!ice_vc_parse_rss_cfg(hw, rss_cfg, &addl_hdrs,
-					  &hash_flds)) {
+		if (!ice_vc_parse_rss_cfg(hw, rss_cfg, &cfg)) {
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 			goto error_param;
 		}
 
 		if (add) {
-			if (ice_add_rss_cfg(hw, vsi->idx, hash_flds,
-					    addl_hdrs)) {
+			if (ice_add_rss_cfg(hw, vsi->idx, &cfg)) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				dev_err(dev, "ice_add_rss_cfg failed for vsi = %d, v_ret = %d\n",
 					vsi->vsi_num, v_ret);
@@ -875,8 +884,7 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 		} else {
 			int status;
 
-			status = ice_rem_rss_cfg(hw, vsi->idx, hash_flds,
-						 addl_hdrs);
+			status = ice_rem_rss_cfg(hw, vsi->idx, &cfg);
 			/* We just ignore -ENOENT, because if two configurations
 			 * share the same profile remove one of them actually
 			 * removes both, since the profile is deleted.
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index dd71d3009771..a06f12d9f8d7 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -907,6 +907,14 @@ struct virtchnl_rss_hena {
 
 VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_rss_hena);
 
+/* Type of RSS algorithm */
+enum virtchnl_rss_algorithm {
+	VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC	= 0,
+	VIRTCHNL_RSS_ALG_R_ASYMMETRIC		= 1,
+	VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC	= 2,
+	VIRTCHNL_RSS_ALG_XOR_SYMMETRIC		= 3,
+};
+
 /* VIRTCHNL_OP_ENABLE_CHANNELS
  * VIRTCHNL_OP_DISABLE_CHANNELS
  * VF sends these messages to enable or disable channels based on
@@ -1091,14 +1099,6 @@ enum virtchnl_vfr_states {
 	VIRTCHNL_VFR_VFACTIVE,
 };
 
-/* Type of RSS algorithm */
-enum virtchnl_rss_algorithm {
-	VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC	= 0,
-	VIRTCHNL_RSS_ALG_R_ASYMMETRIC		= 1,
-	VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC	= 2,
-	VIRTCHNL_RSS_ALG_XOR_SYMMETRIC		= 3,
-};
-
 #define VIRTCHNL_MAX_NUM_PROTO_HDRS	32
 #define PROTO_HDR_SHIFT			5
 #define PROTO_HDR_FIELD_START(proto_hdr_type) ((proto_hdr_type) << PROTO_HDR_SHIFT)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
