Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DF1807C72
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 00:38:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B3D443703;
	Wed,  6 Dec 2023 23:38:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B3D443703
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701905894;
	bh=Z1Ba9B8jEf1W6/6gliCe83wFYCGAldmxZILtKi7gmF0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y+rsMBCueREzkQiB4SCZQ2OflThwXyzvqsODti8Sv7VE6IlgHu5lo4wC22/c4V/+d
	 7XlJWDdnkL6fqUYNJFD/+ZxRrG6Oe/4W+w9rsPxnszC6rnbFTeo7vC5xNcDbWM8T96
	 s9hNFT07zeHKSsESYWVOJaxw7CzhWzG/CyM2fKhYwXUOgxQgVsE8Rrwcj5usIVw7EO
	 3AcYXtfPmvtQnYQPGV/7ZfM49xh7qjT4SNMc811mn/xAeuhxMLal2tFZLJqP77M+RE
	 ZjB0ys5u9WhHY7tZTvLY5/plVG+bzzVU4PlHr3RBqpQnI5oUmnwdLdN6LFPNO8kmJm
	 l0UJp74BZd5mw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7eSCp4qYDYBa; Wed,  6 Dec 2023 23:38:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43063436B3;
	Wed,  6 Dec 2023 23:38:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43063436B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C15351BF275
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:38:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4E624369A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:38:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4E624369A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id llzpTTbcpuFx for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 23:38:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33CC2436B3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:38:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33CC2436B3
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="379164000"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="379164000"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 15:38:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="771486604"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="771486604"
Received: from traguzov-mobl4.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.62.75])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 15:37:53 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Wed,  6 Dec 2023 16:36:41 -0700
Message-Id: <20231206233642.447794-8-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231206233642.447794-1-ahmed.zaki@intel.com>
References: <20231206233642.447794-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701905882; x=1733441882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kcyBeBJ4Kj9XeCuGjkYt3ZNqCC28zS87GmtFPCl6sO0=;
 b=HvYX2A/Ku62vcbDX/Q1sjtVWnZhIbe2KgI/+wz00Rdb6kQKK4rmkctJY
 yNzgmUuyEJNpsfscsIg37bgJZQt27K6eEhTDfve/mMaTAuROoraD3iYtP
 YrgMjaKAEZAZquwLlTUlKgvQgQ+PuKejBN3TeYNoy/D7T3w5ZnU9xfbXp
 Sj3nFnb9QmC9aVEAHyaIY9NuK8+ZgetSrUrP0pZHOPzEzrpa3V5ptd0ky
 Re273esr3hcEZTl2A9ea2B4/naIkLceb37J3NqyaDNmQyFz9Ic1TBBAsI
 EXlVv7i9OsHRyzhpSQtNkgxwFOwajV/3e8MQ5MXXjb37L3OxfQMJx1RpF
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HvYX2A/K
Subject: [Intel-wired-lan] [PATCH net-next v8 7/8] ice: enable symmetric-xor
 RSS for Toeplitz hash function
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 vladimir.oltean@nxp.com, gal@nvidia.com, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, Jeff Guo <jia.guo@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, ecree.xilinx@gmail.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jeff Guo <jia.guo@intel.com>

Allow the user to set the symmetric Toeplitz hash function via:

    # ethtool -X eth0 hfunc toeplitz symmetric-xor

All existing RSS configurations will be converted to symmetric unless they
have a non-symmetric field (other than IP src/dst and L4 src/dst ports)
used for hashing. The driver will reject a new RSS configuration if such
a field is requested.

The hash function in the E800 NICs is set per-VSI and a specific AQ
command is needed to modify the hash function. Use the AQ command to
enable setting the symmetric Toeplitz RSS hash function for any VSI
in the new ice_set_rss_hfunc().

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
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  39 +--
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |   4 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  33 ++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   4 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   1 +
 drivers/net/ethernet/intel/ice/ice_flow.c     | 265 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_flow.h     |  27 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   4 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  40 +--
 drivers/net/ethernet/intel/ice/ice_main.c     |  53 ++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   9 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   2 +-
 14 files changed, 402 insertions(+), 82 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 3ea33947b878..2b3aa37df4f3 100644
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
@@ -920,6 +921,7 @@ int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
 int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
 int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed);
 int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed);
+int ice_set_rss_hfunc(struct ice_vsi *vsi, u8 hfunc);
 void ice_fill_rss_lut(u8 *lut, u16 rss_table_size, u16 rss_size);
 int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset);
 void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 5f7aa293d4ae..77b4c68cf696 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -6,6 +6,7 @@
 
 #include <linux/bitfield.h>
 
+#include "ice.h"
 #include "ice_type.h"
 #include "ice_nvm.h"
 #include "ice_flex_pipe.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 4bfabdd0089b..2921d531b66e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2505,27 +2505,15 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
 	return hdrs;
 }
 
-#define ICE_FLOW_HASH_FLD_IPV4_SA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA)
-#define ICE_FLOW_HASH_FLD_IPV6_SA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA)
-#define ICE_FLOW_HASH_FLD_IPV4_DA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA)
-#define ICE_FLOW_HASH_FLD_IPV6_DA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA)
-#define ICE_FLOW_HASH_FLD_TCP_SRC_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_SRC_PORT)
-#define ICE_FLOW_HASH_FLD_TCP_DST_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_DST_PORT)
-#define ICE_FLOW_HASH_FLD_UDP_SRC_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_SRC_PORT)
-#define ICE_FLOW_HASH_FLD_UDP_DST_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_DST_PORT)
-#define ICE_FLOW_HASH_FLD_SCTP_SRC_PORT	\
-	BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT)
-#define ICE_FLOW_HASH_FLD_SCTP_DST_PORT	\
-	BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)
-
 /**
  * ice_parse_hash_flds - parses hash fields from RSS hash input
  * @nfc: ethtool rxnfc command
+ * @symm: true if Symmetric Topelitz is set
  *
  * This function parses the rxnfc command and returns intended
  * hash fields for RSS configuration
  */
-static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc)
+static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc, bool symm)
 {
 	u64 hfld = ICE_HASH_INVALID;
 
@@ -2598,6 +2586,7 @@ ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 	struct device *dev;
 	u64 hashed_flds;
 	int status;
+	bool symm;
 	u32 hdrs;
 
 	dev = ice_pf_to_dev(pf);
@@ -2607,7 +2596,8 @@ ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 		return -EINVAL;
 	}
 
-	hashed_flds = ice_parse_hash_flds(nfc);
+	symm = !!(vsi->rss_hfunc == ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ);
+	hashed_flds = ice_parse_hash_flds(nfc, symm);
 	if (hashed_flds == ICE_HASH_INVALID) {
 		dev_dbg(dev, "Invalid hash fields, vsi num = %d\n",
 			vsi->vsi_num);
@@ -2624,7 +2614,9 @@ ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 	cfg.hash_flds = hashed_flds;
 	cfg.addl_hdrs = hdrs;
 	cfg.hdr_type = ICE_RSS_ANY_HEADERS;
-	status = ice_add_rss_cfg(&pf->hw, vsi->idx, &cfg);
+	cfg.symm = symm;
+
+	status = ice_add_rss_cfg(&pf->hw, vsi, &cfg);
 	if (status) {
 		dev_dbg(dev, "ice_add_rss_cfg failed, vsi num = %d, error = %d\n",
 			vsi->vsi_num, status);
@@ -2645,6 +2637,7 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
 	u64 hash_flds;
+	bool symm;
 	u32 hdrs;
 
 	dev = ice_pf_to_dev(pf);
@@ -2663,7 +2656,7 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 		return;
 	}
 
-	hash_flds = ice_get_rss_cfg(&pf->hw, vsi->idx, hdrs);
+	hash_flds = ice_get_rss_cfg(&pf->hw, vsi->idx, hdrs, &symm);
 	if (hash_flds == ICE_HASH_INVALID) {
 		dev_dbg(dev, "No hash fields found for the given header type, vsi num = %d\n",
 			vsi->vsi_num);
@@ -3245,6 +3238,8 @@ ice_get_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
 	}
 
 	rxfh->hfunc = ETH_RSS_HASH_TOP;
+	if (vsi->rss_hfunc == ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ)
+		rxfh->input_xfrm |= RXH_XFRM_SYM_XOR;
 
 	if (!rxfh->indir)
 		return 0;
@@ -3289,6 +3284,7 @@ ice_set_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh,
 	     struct netlink_ext_ack *extack)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
+	u8 hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
@@ -3313,6 +3309,14 @@ ice_set_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh,
 		return -EOPNOTSUPP;
 	}
 
+	/* Update the VSI's hash function */
+	if (rxfh->input_xfrm & RXH_XFRM_SYM_XOR)
+		hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ;
+
+	err = ice_set_rss_hfunc(vsi, hfunc);
+	if (err)
+		return err;
+
 	if (rxfh->key) {
 		if (!vsi->rss_hkey_user) {
 			vsi->rss_hkey_user =
@@ -4223,6 +4227,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE |
 				     ETHTOOL_COALESCE_RX_USECS_HIGH,
+	.cap_rss_sym_xor_supported = true,
 	.get_link_ksettings	= ice_get_link_ksettings,
 	.set_link_ksettings	= ice_set_link_ksettings,
 	.get_drvinfo		= ice_get_drvinfo,
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 015484a227f4..54e4536219aa 100644
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
@@ -682,7 +682,7 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 	 * actions (NULL) and zero actions 0.
 	 */
 	err = ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX, seg,
-				TNL_SEG_CNT(tun), &prof);
+				TNL_SEG_CNT(tun), false, &prof);
 	if (err)
 		return err;
 	err = ice_flow_add_entry(hw, ICE_BLK_FD, prof->id, main_vsi->idx,
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index b29c0720ce3a..85c57ec315c4 100644
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
 		devm_kfree(ice_hw_to_dev(hw), hw->blk[i].prof_id.id);
@@ -2180,6 +2190,7 @@ void ice_clear_hw_tbls(struct ice_hw *hw)
 
 		memset(es->t, 0, es->count * sizeof(*es->t) * es->fvw);
 		memset(es->ref_count, 0, es->count * sizeof(*es->ref_count));
+		memset(es->symm, 0, es->count * sizeof(*es->symm));
 		memset(es->written, 0, es->count * sizeof(*es->written));
 		memset(es->mask_ena, 0, es->count * sizeof(*es->mask_ena));
 
@@ -2297,6 +2308,11 @@ int ice_init_hw_tbls(struct ice_hw *hw)
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
@@ -2974,6 +2990,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
  * @attr_cnt: number of elements in attr array
  * @es: extraction sequence (length of array is determined by the block)
  * @masks: mask for extraction sequence
+ * @symm: symmetric setting for RSS profiles
  *
  * This function registers a profile, which matches a set of PTYPES with a
  * particular extraction sequence. While the hardware profile is allocated
@@ -2983,7 +3000,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 int
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
-	     struct ice_fv_word *es, u16 *masks)
+	     struct ice_fv_word *es, u16 *masks, bool symm)
 {
 	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
@@ -2997,7 +3014,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	mutex_lock(&hw->blk[blk].es.prof_map_lock);
 
 	/* search for existing profile */
-	status = ice_find_prof_id_with_mask(hw, blk, es, masks, &prof_id);
+	status = ice_find_prof_id_with_mask(hw, blk, es, masks, symm, &prof_id);
 	if (status) {
 		/* allocate profile ID */
 		status = ice_alloc_prof_id(hw, blk, &prof_id);
@@ -3020,7 +3037,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 			goto err_ice_add_prof;
 
 		/* and write new es */
-		ice_write_es(hw, blk, prof_id, es);
+		ice_write_es(hw, blk, prof_id, es, symm);
 	}
 
 	ice_prof_inc_ref(hw, blk, prof_id);
@@ -3108,7 +3125,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
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
index 0e2510d7535b..fc2b58f56279 100644
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
@@ -1330,6 +1337,7 @@ ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block __always_unused blk,
  * @dir: flow direction
  * @segs: array of one or more packet segments that describe the flow
  * @segs_cnt: number of packet segments provided
+ * @symm: symmetric setting for RSS profiles
  * @prof: stores the returned flow profile added
  *
  * Assumption: the caller has acquired the lock to the profile list
@@ -1338,7 +1346,7 @@ static int
 ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 		       enum ice_flow_dir dir,
 		       struct ice_flow_seg_info *segs, u8 segs_cnt,
-		       struct ice_flow_prof **prof)
+		       bool symm, struct ice_flow_prof **prof)
 {
 	struct ice_flow_prof_params *params;
 	struct ice_prof_id *ids;
@@ -1375,6 +1383,7 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	params->prof->id = prof_id;
 	params->prof->dir = dir;
 	params->prof->segs_cnt = segs_cnt;
+	params->prof->symm = symm;
 
 	/* Make a copy of the segments that need to be persistent in the flow
 	 * profile instance
@@ -1391,7 +1400,7 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	/* Add a HW profile for this flow profile */
 	status = ice_add_prof(hw, blk, prof_id, (u8 *)params->ptypes,
 			      params->attr, params->attr_cnt, params->es,
-			      params->mask);
+			      params->mask, symm);
 	if (status) {
 		ice_debug(hw, ICE_DBG_FLOW, "Error adding a HW flow profile\n");
 		goto out;
@@ -1521,12 +1530,13 @@ ice_flow_disassoc_prof(struct ice_hw *hw, enum ice_block blk,
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
 
@@ -1545,7 +1555,8 @@ ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 
 	mutex_lock(&hw->fl_profs_locks[blk]);
 
-	status = ice_flow_add_prof_sync(hw, blk, dir, segs, segs_cnt, prof);
+	status = ice_flow_add_prof_sync(hw, blk, dir, segs, segs_cnt,
+					symm, prof);
 	if (!status)
 		list_add(&(*prof)->l_entry, &hw->fl_profs[blk]);
 
@@ -2065,6 +2076,7 @@ ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
 	rss_cfg->hash.hash_flds = prof->segs[prof->segs_cnt - 1].match;
 	rss_cfg->hash.addl_hdrs = prof->segs[prof->segs_cnt - 1].hdrs;
 	rss_cfg->hash.hdr_type = hdr_type;
+	rss_cfg->hash.symm = prof->symm;
 	set_bit(vsi_handle, rss_cfg->vsis);
 
 	list_add_tail(&rss_cfg->l_entry, &hw->rss_list_head);
@@ -2072,6 +2084,139 @@ ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
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
@@ -2091,8 +2236,7 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 	int status;
 
 	segs_cnt = (cfg->hdr_type == ICE_RSS_OUTER_HEADERS) ?
-			   ICE_FLOW_SEG_SINGLE :
-			   ICE_FLOW_SEG_MAX;
+			ICE_FLOW_SEG_SINGLE : ICE_FLOW_SEG_MAX;
 
 	segs = kcalloc(segs_cnt, sizeof(*segs), GFP_KERNEL);
 	if (!segs)
@@ -2103,13 +2247,14 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
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
@@ -2120,7 +2265,8 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 	 * the protocol header and new hash field configuration.
 	 */
 	prof = ice_flow_find_prof_conds(hw, blk, ICE_FLOW_RX, segs, segs_cnt,
-					vsi_handle, ICE_FLOW_FIND_PROF_CHK_VSI);
+					cfg->symm, vsi_handle,
+					ICE_FLOW_FIND_PROF_CHK_VSI);
 	if (prof) {
 		status = ice_flow_disassoc_prof(hw, blk, prof, vsi_handle);
 		if (!status)
@@ -2136,11 +2282,12 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
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
@@ -2151,10 +2298,12 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 
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
@@ -2174,7 +2323,7 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 /**
  * ice_add_rss_cfg - add an RSS configuration with specified hashed fields
  * @hw: pointer to the hardware structure
- * @vsi_handle: software VSI handle
+ * @vsi: VSI to add the RSS configuration to
  * @cfg: configure parameters
  *
  * This function will generate a flow profile based on fields associated with
@@ -2182,14 +2331,19 @@ ice_add_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
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
 
@@ -2230,8 +2384,7 @@ ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 	int status;
 
 	segs_cnt = (cfg->hdr_type == ICE_RSS_OUTER_HEADERS) ?
-			   ICE_FLOW_SEG_SINGLE :
-			   ICE_FLOW_SEG_MAX;
+			ICE_FLOW_SEG_SINGLE : ICE_FLOW_SEG_MAX;
 	segs = kcalloc(segs_cnt, sizeof(*segs), GFP_KERNEL);
 	if (!segs)
 		return -ENOMEM;
@@ -2242,7 +2395,7 @@ ice_rem_rss_cfg_sync(struct ice_hw *hw, u16 vsi_handle,
 		goto out;
 
 	prof = ice_flow_find_prof_conds(hw, blk, ICE_FLOW_RX, segs, segs_cnt,
-					vsi_handle,
+					cfg->symm, vsi_handle,
 					ICE_FLOW_FIND_PROF_CHK_FLDS);
 	if (!prof) {
 		status = -ENOENT;
@@ -2285,8 +2438,8 @@ ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
 	struct ice_rss_hash_cfg local_cfg;
 	int status;
 
-	if (!ice_is_vsi_valid(hw, vsi_handle) || !cfg ||
-	    cfg->hdr_type > ICE_RSS_ANY_HEADERS ||
+	if (!ice_is_vsi_valid(hw, vsi_handle) ||
+	    !cfg || cfg->hdr_type > ICE_RSS_ANY_HEADERS ||
 	    cfg->hash_flds == ICE_HASH_INVALID)
 		return -EINVAL;
 
@@ -2343,19 +2496,24 @@ ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
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
@@ -2428,7 +2586,8 @@ int ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 avf_hash)
 		hcfg.addl_hdrs = ICE_FLOW_SEG_HDR_NONE;
 		hcfg.hash_flds = rss_hash;
 		hcfg.hdr_type = ICE_RSS_ANY_HEADERS;
-		status = ice_add_rss_cfg(hw, vsi_handle, &hcfg);
+		hcfg.symm = false;
+		status = ice_add_rss_cfg(hw, vsi, &hcfg);
 		if (status)
 			break;
 	}
@@ -2436,6 +2595,54 @@ int ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 avf_hash)
 	return status;
 }
 
+static bool rss_cfg_symm_valid(u64 hfld)
+{
+	return !((!!(hfld & ICE_FLOW_HASH_FLD_IPV4_SA) ^
+		  !!(hfld & ICE_FLOW_HASH_FLD_IPV4_DA)) ||
+		 (!!(hfld & ICE_FLOW_HASH_FLD_IPV6_SA) ^
+		  !!(hfld & ICE_FLOW_HASH_FLD_IPV6_DA)) ||
+		 (!!(hfld & ICE_FLOW_HASH_FLD_TCP_SRC_PORT) ^
+		  !!(hfld & ICE_FLOW_HASH_FLD_TCP_DST_PORT)) ||
+		 (!!(hfld & ICE_FLOW_HASH_FLD_UDP_SRC_PORT) ^
+		  !!(hfld & ICE_FLOW_HASH_FLD_UDP_DST_PORT)) ||
+		 (!!(hfld & ICE_FLOW_HASH_FLD_SCTP_SRC_PORT) ^
+		  !!(hfld & ICE_FLOW_HASH_FLD_SCTP_DST_PORT)));
+}
+
+/**
+ * ice_set_rss_cfg_symm - set symmtery for all VSI's RSS configurations
+ * @hw: pointer to the hardware structure
+ * @vsi: VSI to set/unset Symmetric RSS
+ * @symm: TRUE to set Symmetric RSS hashing
+ */
+int ice_set_rss_cfg_symm(struct ice_hw *hw, struct ice_vsi *vsi, bool symm)
+{
+	struct ice_rss_hash_cfg	local;
+	struct ice_rss_cfg *r, *tmp;
+	u16 vsi_handle = vsi->idx;
+	int status = 0;
+
+	if (!ice_is_vsi_valid(hw, vsi_handle))
+		return -EINVAL;
+
+	mutex_lock(&hw->rss_locks);
+	list_for_each_entry_safe(r, tmp, &hw->rss_list_head, l_entry) {
+		if (test_bit(vsi_handle, r->vsis) && r->hash.symm != symm) {
+			local = r->hash;
+			local.symm = symm;
+			if (symm && !rss_cfg_symm_valid(r->hash.hash_flds))
+				continue;
+
+			status = ice_add_rss_cfg_sync(hw, vsi_handle, &local);
+			if (status)
+				break;
+		}
+	}
+	mutex_unlock(&hw->rss_locks);
+
+	return status;
+}
+
 /**
  * ice_replay_rss_cfg - replay RSS configurations associated with VSI
  * @hw: pointer to the hardware structure
@@ -2467,11 +2674,12 @@ int ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
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
@@ -2485,6 +2693,7 @@ u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs)
 		if (test_bit(vsi_handle, r->vsis) &&
 		    r->hash.addl_hdrs == hdrs) {
 			rss_hash = r->hash.hash_flds;
+			*symm = r->hash.symm;
 			break;
 		}
 	mutex_unlock(&hw->rss_locks);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 5a39ae0753dc..ff82915ab497 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -229,6 +229,19 @@ enum ice_flow_field {
 	ICE_FLOW_FIELD_IDX_MAX
 };
 
+#define ICE_FLOW_HASH_FLD_IPV4_SA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA)
+#define ICE_FLOW_HASH_FLD_IPV6_SA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA)
+#define ICE_FLOW_HASH_FLD_IPV4_DA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA)
+#define ICE_FLOW_HASH_FLD_IPV6_DA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA)
+#define ICE_FLOW_HASH_FLD_TCP_SRC_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_SRC_PORT)
+#define ICE_FLOW_HASH_FLD_TCP_DST_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_DST_PORT)
+#define ICE_FLOW_HASH_FLD_UDP_SRC_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_SRC_PORT)
+#define ICE_FLOW_HASH_FLD_UDP_DST_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_DST_PORT)
+#define ICE_FLOW_HASH_FLD_SCTP_SRC_PORT	\
+	BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT)
+#define ICE_FLOW_HASH_FLD_SCTP_DST_PORT	\
+	BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)
+
 /* Flow headers and fields for AVF support */
 enum ice_flow_avf_hdr_field {
 	/* Values 0 - 28 are reserved for future use */
@@ -296,6 +309,7 @@ struct ice_rss_hash_cfg {
 	u32 addl_hdrs; /* protocol header fields */
 	u64 hash_flds; /* hash bit field (ICE_FLOW_HASH_*) to configure */
 	enum ice_rss_cfg_hdr_type hdr_type; /* to specify inner or outer */
+	bool symm; /* symmetric or asymmetric hash */
 };
 
 enum ice_flow_dir {
@@ -311,6 +325,7 @@ enum ice_flow_priority {
 #define ICE_FLOW_SEG_SINGLE		1
 #define ICE_FLOW_SEG_MAX		2
 #define ICE_FLOW_SEG_RAW_FLD_MAX	2
+#define ICE_FLOW_SW_FIELD_VECTOR_MAX	48
 #define ICE_FLOW_FV_EXTRACT_SZ		2
 
 #define ICE_FLOW_SET_HDRS(seg, val)	((seg)->hdrs |= (u32)(val))
@@ -392,6 +407,8 @@ struct ice_flow_prof {
 
 	/* software VSI handles referenced by this flow profile */
 	DECLARE_BITMAP(vsis, ICE_MAX_VSI);
+
+	bool symm; /* Symmetric Hash for RSS */
 };
 
 struct ice_rss_cfg {
@@ -404,7 +421,7 @@ struct ice_rss_cfg {
 int
 ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 		  struct ice_flow_seg_info *segs, u8 segs_cnt,
-		  struct ice_flow_prof **prof);
+		  bool symm, struct ice_flow_prof **prof);
 int ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id);
 int
 ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
@@ -420,11 +437,13 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info *seg, u16 off, u8 len,
 int ice_flow_rem_vsi_prof(struct ice_hw *hw, u16 vsi_handle, u64 prof_id);
 void ice_rem_vsi_rss_list(struct ice_hw *hw, u16 vsi_handle);
 int ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
-int ice_add_avf_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds);
+int ice_set_rss_cfg_symm(struct ice_hw *hw, struct ice_vsi *vsi, bool symm);
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
index 86936b758ade..e126dbbd7b2c 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -404,6 +404,10 @@
 #define GLQF_HMASK_SEL(_i)			(0x00410000 + ((_i) * 4))
 #define GLQF_HMASK_SEL_MAX_INDEX		127
 #define GLQF_HMASK_SEL_MASK_SEL_S		0
+#define GLQF_HSYMM(_i, _j)			(0x0040F000 + ((_i) * 4 + (_j) * 512))
+#define GLQF_HSYMM_REG_SIZE			4
+#define GLQF_HSYMM_REG_PER_PROF			6
+#define GLQF_HSYMM_ENABLE_BIT			BIT(7)
 #define E800_PFQF_FD_CNT_FD_GCNT_M		GENMASK(14, 0)
 #define E830_PFQF_FD_CNT_FD_GCNT_M		GENMASK(15, 0)
 #define E800_PFQF_FD_CNT_FD_BCNT_M		GENMASK(30, 16)
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b22f1b861831..711e4fb62cb7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1191,12 +1191,10 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
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
@@ -1204,9 +1202,12 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 		return;
 	}
 
-	ctxt->info.q_opt_rss = ((lut_type << ICE_AQ_VSI_Q_OPT_RSS_LUT_S) &
-				ICE_AQ_VSI_Q_OPT_RSS_LUT_M) |
-				(hash_type & ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
+	hash_type = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
+	vsi->rss_hfunc = hash_type;
+
+	ctxt->info.q_opt_rss =
+		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M, lut_type) |
+		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hash_type);
 }
 
 static void
@@ -1605,7 +1606,7 @@ static void ice_vsi_set_vf_rss_flow_fld(struct ice_vsi *vsi)
 		return;
 	}
 
-	status = ice_add_avf_rss_cfg(&pf->hw, vsi->idx, ICE_DEFAULT_RSS_HENA);
+	status = ice_add_avf_rss_cfg(&pf->hw, vsi, ICE_DEFAULT_RSS_HENA);
 	if (status)
 		dev_dbg(dev, "ice_add_avf_rss_cfg failed for vsi = %d, error = %d\n",
 			vsi->vsi_num, status);
@@ -1613,34 +1614,34 @@ static void ice_vsi_set_vf_rss_flow_fld(struct ice_vsi *vsi)
 
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
@@ -1656,7 +1657,7 @@ static const struct ice_rss_hash_cfg default_rss_cfgs[] = {
  */
 static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 {
-	u16 vsi_handle = vsi->idx, vsi_num = vsi->vsi_num;
+	u16 vsi_num = vsi->vsi_num;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	struct device *dev;
@@ -1672,10 +1673,11 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
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
index efdcd03e3b2b..d1a14bf7b65c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7712,6 +7712,59 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
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
+	struct ice_hw *hw = &vsi->back->hw;
+	struct ice_vsi_ctx *ctx;
+	bool symm;
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
+	err = ice_update_vsi(hw, vsi->idx, ctx, NULL);
+	if (err) {
+		dev_err(ice_pf_to_dev(vsi->back), "Failed to configure RSS hash for VSI %d, error %d\n",
+			vsi->vsi_num, err);
+	} else {
+		vsi->info.q_opt_rss = ctx->info.q_opt_rss;
+		vsi->rss_hfunc = hfunc;
+		netdev_info(vsi->netdev, "Hash function set to: %sToeplitz\n",
+			    hfunc == ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ ?
+			    "Symmetric " : "");
+	}
+	kfree(ctx);
+	if (err)
+		return err;
+
+	/* Fix the symmetry setting for all existing RSS configurations */
+	symm = !!(hfunc == ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ);
+	return ice_set_rss_cfg_symm(hw, vsi, symm);
+}
+
 /**
  * ice_bridge_getlink - Get the hardware bridge mode
  * @skb: skb buff
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 5b618b24b242..9f69a7c31dd5 100644
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
@@ -2641,7 +2646,7 @@ static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
 	}
 
 	if (vrh->hena) {
-		status = ice_add_avf_rss_cfg(&pf->hw, vsi->idx, vrh->hena);
+		status = ice_add_avf_rss_cfg(&pf->hw, vsi, vrh->hena);
 		v_ret = ice_err_to_virt_err(status);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index de103c5bb8f4..9ee7ab207b37 100644
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

