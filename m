Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0D2nNlLe/Wn0jwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 762BD4F6AF4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6FFC40FCE;
	Fri,  8 May 2026 12:59:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aOGj_q1h2r2V; Fri,  8 May 2026 12:59:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00B7D41033
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778245194;
	bh=B1W8QdzudrI1jsrtt7PZqOETfek+7FPHPLUTFY84HyQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tepH6s39LSOjEyN5mrz0Z/f4KZLjJ8Ex568JmSk1erEw+SL8ypNBe3wMUKO0C60Pg
	 03MDH1w3JXcIXpu1VJWihhkfKu9DVlhIxAP5Caou3p7Vop1zSB9S2YRP+TtpE7g/7l
	 uuTAh8RzP9qfIeRI0nq4GBNpJVOfNJlpWg2HC8gkHyxuDQkAQKwBriYwSnUmwohbCc
	 OhQNJCNsvevblVI0T9HNfJhkLN1NBqHRt+71JuRWlS4yX0RsfgmVDGSqE/N4Al5tpy
	 pcpk3u2eNCq2L6e3dxLImcJ5SQS+0HSU+wTLewwooF6jbn7HUytxDX6FmA8B8fBJ+H
	 yi7/qR53r2VYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00B7D41033;
	Fri,  8 May 2026 12:59:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 205B1317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB2BC40F70
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4FgA6zydvE-E for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 12:59:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B141D40F5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B141D40F5D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B141D40F5D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:49 +0000 (UTC)
X-CSE-ConnectionGUID: ortjGnkRSLm3pFN+RfNtvA==
X-CSE-MsgGUID: RvKiby7iTpiQqHw5BhfToA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79199898"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79199898"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:59:50 -0700
X-CSE-ConnectionGUID: Px6Abes9SJydlSe1VPKilg==
X-CSE-MsgGUID: 6OJBYbNuQJaAKbhNfDlFjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241730119"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2026 05:59:44 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 908DD2FC41;
 Fri,  8 May 2026 13:59:42 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 bruce.richardson@intel.com,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 padraig.j.connolly@intel.com, ananth.s@intel.com,
 timothy.miskell@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  8 May 2026 14:41:58 +0200
Message-Id: <20260508124208.11622-6-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778245190; x=1809781190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tcIF3olztzirYuNdibKrjAmw5KKYdetWRVQvzdBOXp4=;
 b=fYgwTyejcGrethv9iLBObX41BiIDBD1J8ihyqHpOZtLfo1dXT7l+y2qk
 W1S5SKFi8+U9MTL9+eot3KJYteankaZC6k/wzmgG2aK1gQNpkEZAYELQb
 2uuDMtR7+dK9xsA6h+nGvih4+q16/GGhezUcYv6GjOA/N0xNr93oyKkOL
 cs7I/BVJLqWArMjTQDLbVpqsmLKpJfkRnI4/x4pVVz+iG/mhIF60I3mF2
 xGreT9Ehp1r+LnUCYNjy5Nfe6fUvx9Au1C7BVAL0x06gtASbIXRBwdei1
 NC5YERf0VnYA3bhhQXNbf2y1z+mhc5GVjjahAHGStpzkGqevBEaFPStnb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fYgwTyej
Subject: [Intel-wired-lan] [PATCH iwl-next v1 05/15] ice: add helpers for
 Global RSS LUT alloc, free, vsi_update
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 762BD4F6AF4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.991];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Add AQ commands for RSS Global LUT allocation and free operations.
Functions will be called since subsequent commit.

Add programming code for GLOBAL LUT ID of UPDATE VSI AQ,
do the same for RSS LUT "type", also for PF LUT in case of VF VSI.

Co-developed-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_switch.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_lib.c      | 28 +++++++++++--
 drivers/net/ethernet/intel/ice/ice_switch.c   | 41 +++++++++++++++++++
 5 files changed, 69 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f9a43daf04fe..7f4f299c4d37 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -369,6 +369,7 @@ struct ice_vsi {
 	u8 *rss_hkey_user;	/* User configured hash keys */
 	u8 *rss_lut_user;	/* User configured lookup table entries */
 	u8 rss_lut_type;	/* used to configure Get/Set RSS LUT AQ call */
+	u8 global_lut_id;       /* valid when lut_type == GLOBAL_LUT */
 
 	/* aRFS members only allocated for the PF VSI */
 #define ICE_MAX_ARFS_LIST	1024
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index d41b2427482d..c49896db51c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -169,6 +169,7 @@ struct ice_aqc_set_port_params {
 #define ICE_AQC_RES_TYPE_VSI_LIST_PRUNE			0x04
 #define ICE_AQC_RES_TYPE_RECIPE				0x05
 #define ICE_AQC_RES_TYPE_SWID				0x07
+#define ICE_AQC_RES_TYPE_GLOBAL_RSS_HASH		0x20
 #define ICE_AQC_RES_TYPE_FDIR_COUNTER_BLOCK		0x21
 #define ICE_AQC_RES_TYPE_FDIR_GUARANTEED_ENTRIES	0x22
 #define ICE_AQC_RES_TYPE_FDIR_SHARED_ENTRIES		0x23
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index b442db4a2ce5..ab6a8c78d14a 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -401,6 +401,8 @@ ice_rem_adv_rule_by_id(struct ice_hw *hw,
 		       struct ice_rule_query_data *remove_entry);
 
 int ice_init_def_sw_recp(struct ice_hw *hw);
+int ice_alloc_rss_global_lut(struct ice_hw *hw, u16 *global_lut_id);
+int ice_free_rss_global_lut(struct ice_hw *hw, u16 global_lut_id);
 u16 ice_get_hw_vsi_num(struct ice_hw *hw, u16 vsi_handle);
 
 int ice_replay_vsi_all_fltr(struct ice_hw *hw, u16 vsi_handle);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index ac6698a01d2f..2de62cde14ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1154,30 +1154,46 @@ static void ice_set_fd_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 	ctxt->info.acl_def_act = cpu_to_le16(val);
 }
 
+/* Translate @lut_type used in most of the places to the Admin Queue
+ * Q_OPT value for RSS.
+ * Used with VSI ADD and VSI UPDATE AQs (opcodes 0x0210, 0x0211).
+ */
+static u8 ice_lut_type_to_aq_qopt_rss_val(enum ice_lut_type lut_type)
+{
+	switch (lut_type) {
+	case ICE_LUT_PF:
+		return ICE_AQ_VSI_Q_OPT_RSS_LUT_PF;
+	case ICE_LUT_GLOBAL:
+		return ICE_AQ_VSI_Q_OPT_RSS_LUT_GBL;
+	case ICE_LUT_VSI:
+	default:
+		return ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
+	}
+}
+
 /**
  * ice_set_rss_vsi_ctx - Set RSS VSI context before adding a VSI
  * @ctxt: the VSI context being set
  * @vsi: the VSI being configured
  */
 void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 {
 	u8 lut_type, hash_type;
+	u8 global_lut_id = 0;
 	struct device *dev;
 	struct ice_pf *pf;
 
 	pf = vsi->back;
 	dev = ice_pf_to_dev(pf);
 
 	switch (vsi->type) {
 	case ICE_VSI_CHNL:
-	case ICE_VSI_PF:
-		/* PF VSI will inherit RSS instance of PF */
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_PF;
 		break;
+	case ICE_VSI_PF:
 	case ICE_VSI_VF:
 	case ICE_VSI_SF:
-		/* VF VSI will gets a small RSS table which is a VSI LUT type */
-		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
+		lut_type = ice_lut_type_to_aq_qopt_rss_val(vsi->rss_lut_type);
 		break;
 	default:
 		dev_dbg(dev, "Unsupported VSI type %s\n",
@@ -1189,8 +1205,12 @@ void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 		vsi->rss_hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
 	hash_type = vsi->rss_hfunc;
 
+	if (vsi->rss_lut_type == ICE_LUT_GLOBAL)
+		 global_lut_id = vsi->global_lut_id;
+
 	ctxt->info.q_opt_rss =
 		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M, lut_type) |
+		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_M, global_lut_id) |
 		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hash_type);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 88f1aefc24b3..b783c97f6cfe 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1527,6 +1527,47 @@ ice_aq_get_sw_cfg(struct ice_hw *hw, struct ice_aqc_get_sw_cfg_resp_elem *buf,
 	return status;
 }
 
+/* Allocate a new Global LUT for the caller.
+ * LUT ID is returned via @global_lut_id.
+ */
+int ice_alloc_rss_global_lut(struct ice_hw *hw, u16 *global_lut_id)
+{
+	DEFINE_RAW_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem, 1);
+	u16 buf_len = __struct_size(buf);
+	int err;
+
+	buf->num_elems = cpu_to_le16(1);
+	buf->res_type = cpu_to_le16(ICE_AQC_RES_TYPE_GLOBAL_RSS_HASH);
+
+	err = ice_aq_alloc_free_res(hw, buf, buf_len, ice_aqc_opc_alloc_res);
+	if (err)
+		ice_debug(hw, ICE_DBG_RES, "Failed to allocate RSS global LUT, err %d\n",
+			  err);
+	else
+		*global_lut_id = le16_to_cpu(buf->elem[0].e.sw_resp);
+
+	return err;
+}
+
+/* Free Global LUT at @global_lut_id. */
+int ice_free_rss_global_lut(struct ice_hw *hw, u16 global_lut_id)
+{
+	DEFINE_RAW_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem, 1);
+	u16 buf_len = __struct_size(buf);
+	int err;
+
+	buf->num_elems = cpu_to_le16(1);
+	buf->res_type = cpu_to_le16(ICE_AQC_RES_TYPE_GLOBAL_RSS_HASH);
+	buf->elem[0].e.sw_resp = cpu_to_le16(global_lut_id);
+
+	err = ice_aq_alloc_free_res(hw, buf, buf_len, ice_aqc_opc_free_res);
+	if (err)
+		ice_debug(hw, ICE_DBG_RES, "Failed to free RSS global LUT %d, err %d\n",
+			  global_lut_id, err);
+
+	return err;
+}
+
 /**
  * ice_aq_add_vsi
  * @hw: pointer to the HW struct
-- 
2.39.3

