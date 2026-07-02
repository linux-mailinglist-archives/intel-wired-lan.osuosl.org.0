Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m1aJFPBLRmpDOAsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 838F86F6BD2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=9T2+s3ay;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E363407A2;
	Thu,  2 Jul 2026 11:30:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7LRJwkXtxpje; Thu,  2 Jul 2026 11:30:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C0F7408B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782991848;
	bh=yD7fU1Hva+DRuJ6jGv2tBlGLOU7dkkpdRWrMTA5tDcs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9T2+s3ayFmMMTIjr5HwruSCOrb2Oe6ibLIYJv/086kNABVpIjLRzvrHgBlJcvov+f
	 pYY5lIV0fd/9v6eFNtZwsmD4sRR0TCXCN+c/T0565bWDWn8EhiX5GGie0amEVMRFBc
	 2G7oNY5rk5BkaObnoIfg6IjbLgzVu5DwvN/mV1kJKGvHLgaUA9izju3VVJLeqEj22P
	 rp9ruqQRBaWuJgS/iyQe15ztY9sgoiKTl6kjEFCm4fra0wPzc4a6CL3n+Fot+T/jAA
	 P/qJ1z92QqRO0CiRr6/0hYnA83QX6LO3DM6X+Rm093D/pozNv9J+EvIbo0tOtl+RKM
	 GARrhuX71FU8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C0F7408B3;
	Thu,  2 Jul 2026 11:30:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 286A8127
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19BFB82349
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q3QOJt7I2-qw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 11:30:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1F3B28235E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F3B28235E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F3B28235E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:43 +0000 (UTC)
X-CSE-ConnectionGUID: du9ftfOSRxqvUnJWHeB0Qw==
X-CSE-MsgGUID: x7Y+QvS4T4+YkMtPGC8j6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83611739"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83611739"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 04:30:43 -0700
X-CSE-ConnectionGUID: 8qvgeFXfSUGhTRL1REOQIg==
X-CSE-MsgGUID: YcTlwI5kRcqb5BdKW6HaNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="251788408"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa010.jf.intel.com with ESMTP; 02 Jul 2026 04:30:39 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7E39828764;
 Thu,  2 Jul 2026 12:30:37 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Chinh Cao <chinh.t.cao@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu,  2 Jul 2026 12:29:58 +0200
Message-ID: <20260702103007.97020-5-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260702103007.97020-1-marcin.szycik@linux.intel.com>
References: <20260702103007.97020-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782991843; x=1814527843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zvJTt3DvH8t/HQ7F6CUfwB2y0SEs4LtYze0BCjDQm+I=;
 b=HIC/Su4Wlh9NJt4lUmBNIHoABq+jCauBo9UsBXgz5jv72oKEk7hui8J8
 LecvgitPvRqF1DVxk1I/JxBbrkgHSdYFu6iANgZzwFUaLyI/ZPBDipNtJ
 GeRH6dXItWSJ6rEtoxHpNl/TmxHvBt30WSdKT+IRR3lNa6d0bJRCy+lop
 //ho1k2tdzIvn8xseBp8kIkjIeUc2DM7GeNgJl8nSm12zP6e+lA1ItmoI
 isG5ztQyM3ld9ztVGrE0XlnQOBjak5WbADEg5Qj9UF2uIerqiaOPMa9qN
 Sta9XJ7hTt9iS0xfwn4hyI85B42DjWmE90/8rxvv28hDaPcCGN91fmW74
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HIC/Su4W
Subject: [Intel-wired-lan] [PATCH iwl-next v5 04/12] ice: initialize ACL
 scenario
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 838F86F6BD2

From: Real Valiquette <real.valiquette@intel.com>

Complete initialization of the ACL table by programming the table with an
initial scenario. The scenario stores the data for the filtering rules.
Adjust reporting of ntuple filters to include ACL filters.

Co-developed-by: Chinh Cao <chinh.t.cao@intel.com>
Signed-off-by: Chinh Cao <chinh.t.cao@intel.com>
Signed-off-by: Real Valiquette <real.valiquette@intel.com>
Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v5:
* Make ice_acl_rem_flows() non-static. Remove its call from
  ice_vsi_manage_fdir(), instead call it from ice_deinit_acl()
* ice_fdir_del_all_fltrs(), ice_fdir_replay_fltrs(): skip ACL filters
v4:
* Introduce struct ice_acl_hw_prof in place of using struct
  ice_fd_hw_prof for ACL. It didn't make very much sense, because most
  members were actually unsed, in addition to it being very confusing.
* Now, ice_fdir_rem_flow() won't be able to remove ACL profiles (because
  ice_fdir_get_hw_prof() no longer returns them, as it should logically
  be). Instead, create a new function: ice_acl_rem_flows(). It's simpler
  than the previously used ice_fdir_rem_flow(), because it doesn't need
  to iterate over any arrays. It also doesn't need to call some
  functions - it should all be handled by ice_acl_rem_flow()
v3:
* ice_acl_create_scen(): add check against max match width
  (ICE_ACL_MAX_WIDTH_BYTES)
* ice_acl_alloc_partition(): change `row` type to int, throw errors if
  subtractions underflows
* ice_acl_destroy_scen(): add a call to ice_acl_commit_partition() to
  clear availability bits. We don't actually destroy scenarios outside
  of driver deinit, so this doesn't currently matter, but should be done
  to futureproof the code
* ice_fdir_update_cntrs(): remove `flow` and `acl_fltr` args, pass the
  whole fltr and read those values from it. This prevents passing
  literal value as acl_fltr, ensuring the correct counter will be
  modified (previously there were some hardcoded calls)
v2:
* Add unroll in ice_init_acl() in case of ice_acl_create_scen() failure
---
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_acl.h      |   8 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  31 +
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   2 +
 drivers/net/ethernet/intel/ice/ice_flow.h     |   7 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   7 +
 drivers/net/ethernet/intel/ice/ice_acl.c      | 116 ++++
 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 573 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   4 +-
 .../ethernet/intel/ice/ice_ethtool_ntuple.c   |  86 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  20 +-
 11 files changed, 841 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 916b0ca8f201..f47266bb2cc4 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1018,10 +1018,12 @@ void ice_vsi_manage_fdir(struct ice_vsi *vsi, bool ena);
 int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
 int ice_del_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
 int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd);
+u32 ice_ntuple_get_max_fltr_cnt(struct ice_hw *hw);
 int
 ice_get_fdir_fltr_ids(struct ice_hw *hw, struct ethtool_rxnfc *cmd,
 		      u32 *rule_locs);
 void ice_fdir_rem_adq_chnl(struct ice_hw *hw, u16 vsi_idx);
+void ice_acl_rem_flows(struct ice_hw *hw);
 void ice_fdir_release_flows(struct ice_hw *hw);
 void ice_fdir_replay_flows(struct ice_hw *hw);
 void ice_fdir_replay_fltrs(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_acl.h b/drivers/net/ethernet/intel/ice/ice_acl.h
index 7446be5d1edb..148e9b67a115 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl.h
+++ b/drivers/net/ethernet/intel/ice/ice_acl.h
@@ -102,6 +102,8 @@ struct ice_acl_alloc_tbl {
 
 int ice_acl_create_tbl(struct ice_hw *hw, struct ice_acl_tbl_params *params);
 int ice_acl_destroy_tbl(struct ice_hw *hw);
+int ice_acl_create_scen(struct ice_hw *hw, u16 match_width, u16 num_entries,
+			u16 *scen_id);
 int ice_aq_alloc_acl_tbl(struct ice_hw *hw, struct ice_acl_alloc_tbl *tbl,
 			 struct ice_sq_cd *cd);
 int ice_aq_dealloc_acl_tbl(struct ice_hw *hw, u16 alloc_id,
@@ -114,5 +116,11 @@ int ice_aq_program_actpair(struct ice_hw *hw, u8 act_mem_idx, u16 act_entry_idx,
 			   struct ice_aqc_actpair *buf, struct ice_sq_cd *cd);
 int ice_aq_alloc_acl_scen(struct ice_hw *hw, u16 *scen_id,
 			  struct ice_aqc_acl_scen *buf, struct ice_sq_cd *cd);
+int ice_aq_dealloc_acl_scen(struct ice_hw *hw, u16 scen_id,
+			    struct ice_sq_cd *cd);
+int ice_aq_update_acl_scen(struct ice_hw *hw, u16 scen_id,
+			   struct ice_aqc_acl_scen *buf, struct ice_sq_cd *cd);
+int ice_aq_query_acl_scen(struct ice_hw *hw, u16 scen_id,
+			  struct ice_aqc_acl_scen *buf, struct ice_sq_cd *cd);
 
 #endif /* _ICE_ACL_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 8cd788ce7dd6..646617d66549 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1996,6 +1996,8 @@ struct ice_aqc_neigh_dev_req {
 					 ICE_ACL_ENTRY_ALLOC_UNIT)
 #define ICE_AQC_ACL_ALLOC_UNITS		(ICE_AQC_ACL_SLICES * \
 					 ICE_AQC_MAX_TCAM_ALLOC_UNITS)
+#define ICE_ACL_MAX_WIDTH_BYTES		(ICE_AQC_ACL_SLICES * \
+					 ICE_AQC_ACL_KEY_WIDTH_BYTES)
 
 struct ice_aqc_acl_alloc_table {
 	__le16 table_width;
@@ -2072,6 +2074,33 @@ struct ice_aqc_acl_generic {
 	u8 act_mem[ICE_AQC_MAX_ACTION_MEMORIES];
 };
 
+/* Allocate ACL scenario (indirect 0x0C14). This command doesn't have separate
+ * response buffer since original command buffer gets updated with
+ * 'scen_id' in case of success
+ */
+struct ice_aqc_acl_alloc_scen {
+	union {
+		struct {
+			u8 reserved[8];
+		} cmd;
+		struct {
+			__le16 scen_id;
+			u8 reserved[6];
+		} resp;
+	} ops;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+/* De-allocate ACL scenario (direct 0x0C15). This command doesn't need
+ * separate response buffer since nothing to be returned as a response
+ * except status.
+ */
+struct ice_aqc_acl_dealloc_scen {
+	__le16 scen_id;
+	u8 reserved[14];
+};
+
 /* Update ACL scenario (direct 0x0C1B)
  * Query ACL scenario (direct 0x0C23)
  */
@@ -2852,6 +2881,8 @@ enum ice_adminq_opc {
 	/* ACL commands */
 	ice_aqc_opc_alloc_acl_tbl			= 0x0C10,
 	ice_aqc_opc_dealloc_acl_tbl			= 0x0C11,
+	ice_aqc_opc_alloc_acl_scen			= 0x0C14,
+	ice_aqc_opc_dealloc_acl_scen			= 0x0C15,
 	ice_aqc_opc_update_acl_scen			= 0x0C1B,
 	ice_aqc_opc_program_acl_actpair			= 0x0C1C,
 	ice_aqc_opc_program_acl_entry			= 0x0C20,
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 54f51ae31b40..ad3f841070f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -198,6 +198,8 @@ struct ice_ntuple_fltr {
 	u32 fltr_id;
 	u8 fdid_prio;
 	u8 comp_report;
+
+	bool acl_fltr;
 };
 
 /* Dummy packet filter definition structure */
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 6c6cdc8addb1..b9b42592b84a 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -482,6 +482,13 @@ struct ice_flow_prof {
 	DECLARE_BITMAP(vsis, ICE_MAX_VSI);
 
 	bool symm; /* Symmetric Hash for RSS */
+
+	union {
+		/* struct sw_recipe */
+		struct ice_acl_scen *scen;
+		/* struct fd */
+		u32 data;
+	} cfg;
 };
 
 struct ice_rss_raw_cfg {
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 0a857a650388..871f4867bf4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -266,6 +266,11 @@ struct ice_fd_hw_prof {
 	u64 prof_id[ICE_FD_HW_SEG_MAX];
 };
 
+struct ice_acl_hw_prof {
+	struct ice_flow_seg_info *seg;
+	u64 prof_id;
+};
+
 /* Common HW capabilities for SW use */
 struct ice_hw_common_caps {
 	u32 valid_functions;
@@ -1028,6 +1033,8 @@ struct ice_hw {
 	struct udp_tunnel_nic_info udp_tunnel_nic;
 
 	struct ice_acl_tbl *acl_tbl;
+	struct ice_acl_hw_prof **acl_prof;
+	u16 acl_fltr_cnt[ICE_FLTR_PTYPE_MAX];
 
 	/* dvm boost update information */
 	struct ice_dvm_table dvm_upd;
diff --git a/drivers/net/ethernet/intel/ice/ice_acl.c b/drivers/net/ethernet/intel/ice/ice_acl.c
index 3d963c6071dc..81bddac8d0a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl.c
+++ b/drivers/net/ethernet/intel/ice/ice_acl.c
@@ -134,3 +134,119 @@ int ice_aq_program_actpair(struct ice_hw *hw, u8 act_mem_idx, u16 act_entry_idx,
 
 	return ice_aq_send_cmd(hw, &desc, buf, sizeof(*buf), cd);
 }
+
+/**
+ * ice_aq_alloc_acl_scen - allocate ACL scenario
+ * @hw: pointer to the HW struct
+ * @scen_id: memory location to receive allocated scenario ID
+ * @buf: address of indirect data buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Allocate ACL scenario (indirect 0x0C14)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_aq_alloc_acl_scen(struct ice_hw *hw, u16 *scen_id,
+			  struct ice_aqc_acl_scen *buf, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_alloc_scen *cmd;
+	struct libie_aq_desc desc;
+	int err;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_alloc_acl_scen);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
+	cmd = libie_aq_raw(&desc);
+
+	err = ice_aq_send_cmd(hw, &desc, buf, sizeof(*buf), cd);
+	if (!err)
+		*scen_id = le16_to_cpu(cmd->ops.resp.scen_id);
+
+	return err;
+}
+
+/**
+ * ice_aq_dealloc_acl_scen - deallocate ACL scenario
+ * @hw: pointer to the HW struct
+ * @scen_id: scen_id to be deallocated (input and output field)
+ * @cd: pointer to command details structure or NULL
+ *
+ * Deallocate ACL scenario (direct 0x0C15)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_aq_dealloc_acl_scen(struct ice_hw *hw, u16 scen_id,
+			    struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_dealloc_scen *cmd;
+	struct libie_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_dealloc_acl_scen);
+	cmd = libie_aq_raw(&desc);
+	cmd->scen_id = cpu_to_le16(scen_id);
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+}
+
+/**
+ * ice_aq_update_query_scen - update or query ACL scenario
+ * @hw: pointer to the HW struct
+ * @opcode: AQ command opcode for either query or update scenario
+ * @scen_id: scen_id to be updated or queried
+ * @buf: address of indirect data buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Calls update or query ACL scenario
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_aq_update_query_scen(struct ice_hw *hw, u16 opcode, u16 scen_id,
+				    struct ice_aqc_acl_scen *buf,
+				    struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_update_query_scen *cmd;
+	struct libie_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, opcode);
+	if (opcode == ice_aqc_opc_update_acl_scen)
+		desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
+	cmd = libie_aq_raw(&desc);
+	cmd->scen_id = cpu_to_le16(scen_id);
+
+	return ice_aq_send_cmd(hw, &desc, buf, sizeof(*buf), cd);
+}
+
+/**
+ * ice_aq_update_acl_scen - update ACL scenario
+ * @hw: pointer to the HW struct
+ * @scen_id: scen_id to be updated
+ * @buf: address of indirect data buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Update ACL scenario (indirect 0x0C1B)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_aq_update_acl_scen(struct ice_hw *hw, u16 scen_id,
+			   struct ice_aqc_acl_scen *buf, struct ice_sq_cd *cd)
+{
+	return ice_aq_update_query_scen(hw, ice_aqc_opc_update_acl_scen,
+					scen_id, buf, cd);
+}
+
+/**
+ * ice_aq_query_acl_scen - query ACL scenario
+ * @hw: pointer to the HW struct
+ * @scen_id: scen_id to be queried
+ * @buf: address of indirect data buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Query ACL scenario (indirect 0x0C23)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_aq_query_acl_scen(struct ice_hw *hw, u16 scen_id,
+			  struct ice_aqc_acl_scen *buf, struct ice_sq_cd *cd)
+{
+	return ice_aq_update_query_scen(hw, ice_aqc_opc_query_acl_scen,
+					scen_id, buf, cd);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c b/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
index bb99c3e437ec..0ff139222602 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
+++ b/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
@@ -6,6 +6,80 @@
 /* Determine the TCAM index of entry 'e' within the ACL table */
 #define ICE_ACL_TBL_TCAM_IDX(e) ((e) / ICE_AQC_ACL_TCAM_DEPTH)
 
+/**
+ * ice_acl_init_entry - initialize ACL entry
+ * @scen: pointer to the scenario struct
+ *
+ * Initialize the scenario control structure.
+ */
+static void ice_acl_init_entry(struct ice_acl_scen *scen)
+{
+	/* low priority: start from the highest index, 25% of total entries
+	 * normal priority: start from the highest index, 50% of total entries
+	 * high priority: start from the lowest index, 25% of total entries
+	 */
+	scen->first_idx[ICE_ACL_PRIO_LOW] = scen->num_entry - 1;
+	scen->first_idx[ICE_ACL_PRIO_NORMAL] = scen->num_entry -
+		scen->num_entry / 4 - 1;
+	scen->first_idx[ICE_ACL_PRIO_HIGH] = 0;
+
+	scen->last_idx[ICE_ACL_PRIO_LOW] = scen->num_entry -
+		scen->num_entry / 4;
+	scen->last_idx[ICE_ACL_PRIO_NORMAL] = scen->num_entry / 4;
+	scen->last_idx[ICE_ACL_PRIO_HIGH] = scen->num_entry / 4 - 1;
+}
+
+/**
+ * ice_acl_tbl_calc_end_idx - get end ACL entry index
+ * @start: start index of the TCAM entry of this partition
+ * @num_entries: number of entries in this partition
+ * @width: width of a partition in number of TCAMs
+ *
+ * Calculate the end entry index for a partition with starting entry index
+ * 'start', entries 'num_entries', and width 'width'.
+ *
+ * Returns: end entry index
+ */
+static u16 ice_acl_tbl_calc_end_idx(u16 start, u16 num_entries, u16 width)
+{
+	u16 end_idx, add_entries = 0;
+
+	end_idx = start + (num_entries - 1);
+
+	/* In case that our ACL partition requires cascading TCAMs */
+	if (width > 1) {
+		u16 num_stack_level;
+
+		/* Figure out the TCAM stacked level in this ACL scenario */
+		num_stack_level = (start % ICE_AQC_ACL_TCAM_DEPTH) +
+			num_entries;
+		num_stack_level = DIV_ROUND_UP(num_stack_level,
+					       ICE_AQC_ACL_TCAM_DEPTH);
+
+		/* In this case, each entries in our ACL partition span
+		 * multiple TCAMs. Thus, we will need to add
+		 * ((width - 1) * num_stack_level) TCAM's entries to
+		 * end_idx.
+		 *
+		 * For example : In our case, our scenario is 2x2:
+		 *	[TCAM 0]	[TCAM 1]
+		 *	[TCAM 2]	[TCAM 3]
+		 * Assuming that a TCAM will have 512 entries. If "start"
+		 * is 500, "num_entries" is 3 and "width" = 2, then end_idx
+		 * should be 1024 (belongs to TCAM 2).
+		 * Before going to this if statement, end_idx will have the
+		 * value of 512. If "width" is 1, then the final value of
+		 * end_idx is 512. However, in our case, width is 2, then we
+		 * will need add (2 - 1) * 1 * 512. As result, end_idx will
+		 * have the value of 1024.
+		 */
+		add_entries = (width - 1) * num_stack_level *
+			ICE_AQC_ACL_TCAM_DEPTH;
+	}
+
+	return end_idx + add_entries;
+}
+
 /**
  * ice_acl_init_tbl - initialize ACL table
  * @hw: pointer to the hardware structure
@@ -288,6 +362,467 @@ int ice_acl_create_tbl(struct ice_hw *hw, struct ice_acl_tbl_params *params)
 	return err;
 }
 
+/**
+ * ice_acl_alloc_partition - Allocate a partition from the ACL table
+ * @hw: pointer to the hardware structure
+ * @req: info of partition being allocated
+ *
+ * Returns: 0 on success, negative on error
+ */
+static int ice_acl_alloc_partition(struct ice_hw *hw, struct ice_acl_scen *req)
+{
+	u16 start = 0, cnt = 0, off = 0;
+	u16 width, r_entries;
+	bool done = false;
+	int row;
+	int dir;
+
+	/* Determine the number of TCAMs each entry overlaps */
+	width = DIV_ROUND_UP(req->width, ICE_AQC_ACL_KEY_WIDTH_BYTES);
+
+	/* Check if we have enough TCAMs to accommodate the width */
+	if (width > hw->acl_tbl->last_tcam - hw->acl_tbl->first_tcam + 1)
+		return -ENOSPC;
+
+	/* Number of entries must be multiple of ICE_ACL_ENTRY_ALLOC_UNIT's */
+	r_entries = ALIGN(req->num_entry, ICE_ACL_ENTRY_ALLOC_UNIT);
+
+	/* To look for an available partition that can accommodate the request,
+	 * the process first logically arranges available TCAMs in rows such
+	 * that each row produces entries with the requested width. It then
+	 * scans the TCAMs' available bitmap, one bit at a time, and
+	 * accumulates contiguous available 64-entry chunks until there are
+	 * enough of them or when all TCAM configurations have been checked.
+	 *
+	 * For width of 1 TCAM, the scanning process starts from the top most
+	 * TCAM, and goes downward. Available bitmaps are examined from LSB
+	 * to MSB.
+	 *
+	 * For width of multiple TCAMs, the process starts from the bottom-most
+	 * row of TCAMs, and goes upward. Available bitmaps are examined from
+	 * the MSB to the LSB.
+	 *
+	 * To make sure that adjacent TCAMs can be logically arranged in the
+	 * same row, the scanning process may have multiple passes. In each
+	 * pass, the first TCAM of the bottom-most row is displaced by one
+	 * additional TCAM. The width of the row and the number of the TCAMs
+	 * available determine the number of passes. When the displacement is
+	 * more than the size of width, the TCAM row configurations will
+	 * repeat. The process will terminate when the configurations repeat.
+	 *
+	 * Available partitions can span more than one row of TCAMs.
+	 */
+	if (width == 1) {
+		row = hw->acl_tbl->first_tcam;
+		dir = 1;
+	} else {
+		/* Start with the bottom-most row, and scan for available
+		 * entries upward
+		 */
+		row = hw->acl_tbl->last_tcam + 1 - width;
+		if (row < 0)
+			return -EINVAL;
+
+		dir = -1;
+	}
+
+	do {
+		/* Scan all 64-entry chunks, one chunk at a time, in the
+		 * current TCAM row
+		 */
+		for (u16 i = 0;
+		     i < ICE_AQC_MAX_TCAM_ALLOC_UNITS && cnt < r_entries;
+		     i++) {
+			bool avail = true;
+			u16 p;
+
+			/* Compute the cumulative available mask across the
+			 * TCAM row to determine if the current 64-entry chunk
+			 * is available.
+			 */
+			p = dir > 0 ? i : ICE_AQC_MAX_TCAM_ALLOC_UNITS - i - 1;
+			for (u16 w = row; w < row + width && avail; w++) {
+				u16 b;
+
+				b = (w * ICE_AQC_MAX_TCAM_ALLOC_UNITS) + p;
+				avail &= test_bit(b, hw->acl_tbl->avail);
+			}
+
+			if (!avail) {
+				cnt = 0;
+			} else {
+				/* Compute the starting index of the newly
+				 * found partition. When 'dir' is negative, the
+				 * scan processes is going upward. If so, the
+				 * starting index needs to be updated for every
+				 * available 64-entry chunk found.
+				 */
+				if (!cnt || dir < 0)
+					start = (row * ICE_AQC_ACL_TCAM_DEPTH) +
+						(p * ICE_ACL_ENTRY_ALLOC_UNIT);
+				cnt += ICE_ACL_ENTRY_ALLOC_UNIT;
+			}
+		}
+
+		if (cnt >= r_entries) {
+			req->start = start;
+			req->num_entry = r_entries;
+			req->end = ice_acl_tbl_calc_end_idx(start, r_entries,
+							    width);
+			break;
+		}
+
+		row = dir > 0 ? row + width : row - width;
+		if (row < 0)
+			return -EINVAL;
+
+		if (row > hw->acl_tbl->last_tcam ||
+		    row < hw->acl_tbl->first_tcam) {
+			/* All rows have been checked. Increment 'off' that
+			 * will help yield a different TCAM configuration in
+			 * which adjacent TCAMs can be alternatively in the
+			 * same row.
+			 */
+			off++;
+
+			/* However, if the new 'off' value yields previously
+			 * checked configurations, then exit.
+			 */
+			if (off >= width) {
+				done = true;
+			} else {
+				row = dir > 0 ? off :
+					hw->acl_tbl->last_tcam + 1 - off -
+					width;
+				if (row < 0)
+					return -EINVAL;
+			}
+		}
+	} while (!done);
+
+	return cnt >= r_entries ? 0 : -ENOSPC;
+}
+
+/**
+ * ice_acl_fill_tcam_select - fill key byte selection for scenario's TCAM
+ * @scen_buf: Pointer to the scenario buffer that needs to be populated
+ * @scen: Pointer to the available space for the scenario
+ * @tcam_idx: Index of the TCAM used for this scenario
+ * @tcam_idx_in_cascade: Local index of the TCAM in the cascade scenario
+ *
+ * For all TCAM that participate in this scenario, fill out the tcam_select
+ * value.
+ */
+static void ice_acl_fill_tcam_select(struct ice_aqc_acl_scen *scen_buf,
+				     struct ice_acl_scen *scen, u16 tcam_idx,
+				     u16 tcam_idx_in_cascade)
+{
+	u16 cascade_cnt, idx;
+
+	idx = tcam_idx_in_cascade * ICE_AQC_ACL_KEY_WIDTH_BYTES;
+	cascade_cnt = DIV_ROUND_UP(scen->width, ICE_AQC_ACL_KEY_WIDTH_BYTES);
+
+	/* For each scenario, we reserved last three bytes of scenario width for
+	 * profile ID, range checker, and packet direction. Thus, the last three
+	 * bytes of the last cascaded TCAMs will have value of 1st, 31st and
+	 * 32nd byte location of BYTE selection base.
+	 *
+	 * For other bytes in the TCAMs:
+	 * For non-cascade mode (1 TCAM wide) scenario, TCAM[x]'s Select {0-1}
+	 * select indices 0-1 of the Byte Selection Base
+	 * For cascade mode, the leftmost TCAM of the first cascade row selects
+	 * indices 0-4 of the Byte Selection Base; the second TCAM in the
+	 * cascade row selects indices starting with 5-n
+	 */
+	for (int j = 0; j < ICE_AQC_ACL_KEY_WIDTH_BYTES; j++) {
+		/* PKT DIR uses the 1st location of Byte Selection Base: + 1 */
+		u8 val = ICE_AQC_ACL_BYTE_SEL_BASE + 1 + idx;
+
+		if (tcam_idx_in_cascade == cascade_cnt - 1) {
+			if (j == ICE_ACL_SCEN_RNG_CHK_IDX_IN_TCAM)
+				val = ICE_AQC_ACL_BYTE_SEL_BASE_RNG_CHK;
+			else if (j == ICE_ACL_SCEN_PID_IDX_IN_TCAM)
+				val = ICE_AQC_ACL_BYTE_SEL_BASE_PID;
+			else if (j == ICE_ACL_SCEN_PKT_DIR_IDX_IN_TCAM)
+				val = ICE_AQC_ACL_BYTE_SEL_BASE_PKT_DIR;
+		}
+
+		/* In case that scenario's width is greater than the width of
+		 * the Byte selection base, we will not assign a value to the
+		 * tcam_select[j]. As a result, the tcam_select[j] will have
+		 * default value which is zero.
+		 */
+		if (val > ICE_AQC_ACL_BYTE_SEL_BASE_RNG_CHK)
+			continue;
+
+		scen_buf->tcam_cfg[tcam_idx].tcam_select[j] = val;
+
+		idx++;
+	}
+}
+
+/**
+ * ice_acl_set_scen_chnk_msk - set entries chunk masks
+ * @scen_buf: Pointer to the scenario buffer that needs to be populated
+ * @scen: pointer to the available space for the scenario
+ *
+ * Set the chunk mask for the entries that will be used by this scenario
+ */
+static void ice_acl_set_scen_chnk_msk(struct ice_aqc_acl_scen *scen_buf,
+				      struct ice_acl_scen *scen)
+{
+	u16 tcam_idx, num_cscd, units;
+	u8 chnk_offst;
+
+	/* Determine the starting TCAM index and offset of the start entry */
+	tcam_idx = ICE_ACL_TBL_TCAM_IDX(scen->start);
+	chnk_offst = (u8)((scen->start % ICE_AQC_ACL_TCAM_DEPTH) /
+			  ICE_ACL_ENTRY_ALLOC_UNIT);
+
+	/* Entries are allocated and tracked in multiple of 64's */
+	units = scen->num_entry / ICE_ACL_ENTRY_ALLOC_UNIT;
+
+	/* Determine number of cascaded TCAMs */
+	num_cscd = scen->width / ICE_AQC_ACL_KEY_WIDTH_BYTES;
+
+	for (u16 cnt = 0; cnt < units; cnt++) {
+		/* Set the corresponding bitmap of individual 64-entry
+		 * chunk spans across a cascade of 1 or more TCAMs
+		 * For each TCAM, there will be (ICE_AQC_ACL_TCAM_DEPTH
+		 * / ICE_ACL_ENTRY_ALLOC_UNIT) or 8 chunks.
+		 */
+		for (u16 i = tcam_idx; i < tcam_idx + num_cscd; i++)
+			scen_buf->tcam_cfg[i].chnk_msk |= BIT(chnk_offst);
+
+		chnk_offst = (chnk_offst + 1) % ICE_AQC_MAX_TCAM_ALLOC_UNITS;
+		if (!chnk_offst)
+			tcam_idx += num_cscd;
+	}
+}
+
+/**
+ * ice_acl_assign_act_mem_for_scen - associate action memories to new TCAM
+ * @tbl: pointer to ACL table structure
+ * @scen: pointer to the scenario struct
+ * @scen_buf: pointer to the available space for the scenario
+ * @current_tcam_idx: theoretical index of the TCAM that we associated those
+ *		      action memory banks with, at the table creation time
+ * @target_tcam_idx: index of the TCAM that we want to associate those action
+ *		     memory banks with
+ */
+static void ice_acl_assign_act_mem_for_scen(struct ice_acl_tbl *tbl,
+					    struct ice_acl_scen *scen,
+					    struct ice_aqc_acl_scen *scen_buf,
+					    u8 current_tcam_idx,
+					    u8 target_tcam_idx)
+{
+	for (int i = 0; i < ICE_AQC_MAX_ACTION_MEMORIES; i++) {
+		struct ice_acl_act_mem *p_mem = &tbl->act_mems[i];
+
+		if (p_mem->act_mem == ICE_ACL_ACT_MEM_ACT_MEM_INVAL ||
+		    p_mem->member_of_tcam != current_tcam_idx)
+			continue;
+
+		scen_buf->act_mem_cfg[i] = target_tcam_idx;
+		scen_buf->act_mem_cfg[i] |= ICE_AQC_ACL_SCE_ACT_MEM_EN;
+		set_bit(i, scen->act_mem_bitmap);
+	}
+}
+
+/**
+ * ice_acl_commit_partition - Indicate if the specified partition is active
+ * @hw: pointer to the hardware structure
+ * @scen: pointer to the scenario struct
+ * @commit: true if the partition is being commit
+ */
+static void ice_acl_commit_partition(struct ice_hw *hw,
+				     struct ice_acl_scen *scen, bool commit)
+{
+	u16 tcam_idx, off, num_cscd, units;
+
+	/* Determine the starting TCAM index and offset of the start entry */
+	tcam_idx = ICE_ACL_TBL_TCAM_IDX(scen->start);
+	off = (scen->start % ICE_AQC_ACL_TCAM_DEPTH) /
+		ICE_ACL_ENTRY_ALLOC_UNIT;
+
+	/* Entries are allocated and tracked in multiple of 64's */
+	units = scen->num_entry / ICE_ACL_ENTRY_ALLOC_UNIT;
+
+	/* Determine number of cascaded TCAM */
+	num_cscd = scen->width / ICE_AQC_ACL_KEY_WIDTH_BYTES;
+
+	for (u16 cnt = 0; cnt < units; cnt++) {
+		/* Set/clear the corresponding bitmap of individual 64-entry
+		 * chunk spans across a row of 1 or more TCAMs
+		 */
+		for (u16 w = 0; w < num_cscd; w++) {
+			u16 b;
+
+			b = ((tcam_idx + w) * ICE_AQC_MAX_TCAM_ALLOC_UNITS) +
+				off;
+			if (commit)
+				set_bit(b, hw->acl_tbl->avail);
+			else
+				clear_bit(b, hw->acl_tbl->avail);
+		}
+
+		off = (off + 1) % ICE_AQC_MAX_TCAM_ALLOC_UNITS;
+		if (!off)
+			tcam_idx += num_cscd;
+	}
+}
+
+/**
+ * ice_acl_create_scen - create ACL scenario
+ * @hw: pointer to the hardware structure
+ * @match_width: number of bytes to be matched in this scenario
+ * @num_entries: number of entries to be allocated for the scenario
+ * @scen_id: holds returned scenario ID if successful
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_acl_create_scen(struct ice_hw *hw, u16 match_width, u16 num_entries,
+			u16 *scen_id)
+{
+	u8 cascade_cnt, first_tcam, last_tcam, i, k;
+	struct ice_aqc_acl_scen scen_buf = {};
+	struct ice_acl_scen *scen;
+	int err;
+
+	if (match_width > ICE_ACL_MAX_WIDTH_BYTES)
+		return -EINVAL;
+
+	scen = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*scen), GFP_KERNEL);
+	if (!scen)
+		return -ENOMEM;
+
+	scen->start = hw->acl_tbl->first_entry;
+	scen->width = ICE_AQC_ACL_KEY_WIDTH_BYTES *
+		DIV_ROUND_UP(match_width, ICE_AQC_ACL_KEY_WIDTH_BYTES);
+	scen->num_entry = num_entries;
+
+	err = ice_acl_alloc_partition(hw, scen);
+	if (err)
+		goto out;
+
+	/* Determine the number of cascade TCAMs, given the scenario's width */
+	cascade_cnt = DIV_ROUND_UP(scen->width, ICE_AQC_ACL_KEY_WIDTH_BYTES);
+	first_tcam = ICE_ACL_TBL_TCAM_IDX(scen->start);
+	last_tcam = ICE_ACL_TBL_TCAM_IDX(scen->end);
+
+	/* For each scenario, we reserved last three bytes of scenario width for
+	 * packet direction flag, profile ID and range checker. Thus, we want to
+	 * return back to the caller the eff_width, pkt_dir_idx, rng_chk_idx and
+	 * pid_idx.
+	 */
+	scen->eff_width = cascade_cnt * ICE_AQC_ACL_KEY_WIDTH_BYTES -
+		ICE_ACL_SCEN_MIN_WIDTH;
+	scen->rng_chk_idx = (cascade_cnt - 1) * ICE_AQC_ACL_KEY_WIDTH_BYTES +
+		ICE_ACL_SCEN_RNG_CHK_IDX_IN_TCAM;
+	scen->pid_idx = (cascade_cnt - 1) * ICE_AQC_ACL_KEY_WIDTH_BYTES +
+		ICE_ACL_SCEN_PID_IDX_IN_TCAM;
+	scen->pkt_dir_idx = (cascade_cnt - 1) * ICE_AQC_ACL_KEY_WIDTH_BYTES +
+		ICE_ACL_SCEN_PKT_DIR_IDX_IN_TCAM;
+
+	/* set the chunk mask for the tcams */
+	ice_acl_set_scen_chnk_msk(&scen_buf, scen);
+
+	/* set the TCAM select and start_cmp and start_set bits */
+	k = first_tcam;
+	/* set the START_SET bit at the beginning of the stack */
+	scen_buf.tcam_cfg[k].start_cmp_set |= ICE_AQC_ACL_ALLOC_SCE_START_SET;
+	while (k <= last_tcam) {
+		u8 last_tcam_idx_cascade = cascade_cnt + k - 1;
+
+		/* set start_cmp for the first cascaded TCAM */
+		scen_buf.tcam_cfg[k].start_cmp_set |=
+			ICE_AQC_ACL_ALLOC_SCE_START_CMP;
+
+		/* cascade TCAMs up to the width of the scenario */
+		for (i = k; i < cascade_cnt + k; i++) {
+			ice_acl_fill_tcam_select(&scen_buf, scen, i, i - k);
+			ice_acl_assign_act_mem_for_scen(hw->acl_tbl, scen,
+							&scen_buf, i,
+							last_tcam_idx_cascade);
+		}
+
+		k = i;
+	}
+
+	/* We need to set the start_cmp bit for the unused TCAMs. */
+	i = 0;
+	while (i < first_tcam)
+		scen_buf.tcam_cfg[i++].start_cmp_set =
+					ICE_AQC_ACL_ALLOC_SCE_START_CMP;
+
+	i = last_tcam + 1;
+	while (i < ICE_AQC_ACL_SLICES)
+		scen_buf.tcam_cfg[i++].start_cmp_set =
+					ICE_AQC_ACL_ALLOC_SCE_START_CMP;
+
+	err = ice_aq_alloc_acl_scen(hw, scen_id, &scen_buf, NULL);
+	if (err) {
+		ice_debug(hw, ICE_DBG_ACL, "AQ allocation of ACL scenario failed. status: %d\n",
+			  err);
+		goto out;
+	}
+
+	scen->id = *scen_id;
+	ice_acl_commit_partition(hw, scen, false);
+	ice_acl_init_entry(scen);
+	list_add(&scen->list_entry, &hw->acl_tbl->scens);
+
+out:
+	if (err)
+		devm_kfree(ice_hw_to_dev(hw), scen);
+
+	return err;
+}
+
+/**
+ * ice_acl_destroy_scen - destroy an ACL scenario
+ * @hw: pointer to the HW struct
+ * @scen_id: ID of the remove scenario
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_acl_destroy_scen(struct ice_hw *hw, u16 scen_id)
+{
+	struct ice_acl_scen *scen, *tmp_scen;
+	struct ice_flow_prof *p, *tmp;
+	int err;
+
+	/* Remove profiles that use "scen_id" scenario */
+	list_for_each_entry_safe(p, tmp, &hw->fl_profs[ICE_BLK_ACL], l_entry)
+		if (p->cfg.scen && p->cfg.scen->id == scen_id) {
+			err = ice_flow_rem_prof(hw, ICE_BLK_ACL, p->id);
+			if (err) {
+				ice_debug(hw, ICE_DBG_ACL, "ice_flow_rem_prof failed. status: %d\n",
+					  err);
+				return err;
+			}
+		}
+
+	err = ice_aq_dealloc_acl_scen(hw, scen_id, NULL);
+	if (err) {
+		ice_debug(hw, ICE_DBG_ACL, "AQ de-allocation of scenario failed. status: %d\n",
+			  err);
+		return err;
+	}
+
+	/* Remove scenario from hw->acl_tbl->scens */
+	list_for_each_entry_safe(scen, tmp_scen, &hw->acl_tbl->scens,
+				 list_entry)
+		if (scen->id == scen_id) {
+			ice_acl_commit_partition(hw, scen, true);
+
+			list_del(&scen->list_entry);
+			devm_kfree(ice_hw_to_dev(hw), scen);
+		}
+
+	return 0;
+}
+
 /**
  * ice_acl_destroy_tbl - Destroy a previously created LEM table for ACL
  * @hw: pointer to the HW struct
@@ -296,12 +831,50 @@ int ice_acl_create_tbl(struct ice_hw *hw, struct ice_acl_tbl_params *params)
  */
 int ice_acl_destroy_tbl(struct ice_hw *hw)
 {
+	struct ice_acl_scen *pos_scen, *tmp_scen;
 	struct ice_aqc_acl_generic resp_buf;
+	struct ice_aqc_acl_scen buf;
 	int err;
 
 	if (!hw->acl_tbl)
 		return -ENOENT;
 
+	/* Mark all the created scenario's TCAM to stop the packet lookup and
+	 * delete them afterward
+	 */
+	list_for_each_entry_safe(pos_scen, tmp_scen, &hw->acl_tbl->scens,
+				 list_entry) {
+		err = ice_aq_query_acl_scen(hw, pos_scen->id, &buf, NULL);
+		if (err) {
+			ice_debug(hw, ICE_DBG_ACL, "ice_aq_query_acl_scen() failed. status: %d\n",
+				  err);
+			return err;
+		}
+
+		for (int i = 0; i < ICE_AQC_ACL_SLICES; i++) {
+			buf.tcam_cfg[i].chnk_msk = 0;
+			buf.tcam_cfg[i].start_cmp_set =
+					ICE_AQC_ACL_ALLOC_SCE_START_CMP;
+		}
+
+		for (int i = 0; i < ICE_AQC_MAX_ACTION_MEMORIES; i++)
+			buf.act_mem_cfg[i] = 0;
+
+		err = ice_aq_update_acl_scen(hw, pos_scen->id, &buf, NULL);
+		if (err) {
+			ice_debug(hw, ICE_DBG_ACL, "ice_aq_update_acl_scen() failed. status: %d\n",
+				  err);
+			return err;
+		}
+
+		err = ice_acl_destroy_scen(hw, pos_scen->id);
+		if (err) {
+			ice_debug(hw, ICE_DBG_ACL, "deletion of scenario failed. status: %d\n",
+				  err);
+			return err;
+		}
+	}
+
 	err = ice_aq_dealloc_acl_tbl(hw, hw->acl_tbl->id, &resp_buf, NULL);
 	if (err) {
 		ice_debug(hw, ICE_DBG_ACL, "AQ de-allocation of ACL failed. status: %d\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index ed2df3f6ba1f..114db472e02d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3178,8 +3178,8 @@ ice_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = hw->ntuple_active_fltr_cnt;
-		/* report total rule count */
-		cmd->data = ice_get_fdir_cnt_all(hw);
+		/* report max rule count */
+		cmd->data = ice_ntuple_get_max_fltr_cnt(hw);
 		ret = 0;
 		break;
 	case ETHTOOL_GRXCLSRULE:
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
index ad519a8513db..7cd158051840 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
@@ -215,6 +215,24 @@ int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd)
 	return ret;
 }
 
+/**
+ * ice_ntuple_get_max_fltr_cnt - get max number of allowed filters
+ * @hw: hardware structure containing filter information
+ *
+ * Return: maximum number of allowed filters
+ */
+u32 ice_ntuple_get_max_fltr_cnt(struct ice_hw *hw)
+{
+	int acl_cnt;
+
+	if (hw->dev_caps.num_funcs < 8)
+		acl_cnt = ICE_AQC_ACL_TCAM_DEPTH / ICE_ACL_ENTIRE_SLICE;
+	else
+		acl_cnt = ICE_AQC_ACL_TCAM_DEPTH / ICE_ACL_HALF_SLICE;
+
+	return ice_get_fdir_cnt_all(hw) + acl_cnt;
+}
+
 /**
  * ice_get_fdir_fltr_ids - fill buffer with filter IDs of active filters
  * @hw: hardware structure containing the filter list
@@ -231,8 +249,8 @@ ice_get_fdir_fltr_ids(struct ice_hw *hw, struct ethtool_rxnfc *cmd,
 	unsigned int cnt = 0;
 	int val = 0;
 
-	/* report total rule count */
-	cmd->data = ice_get_fdir_cnt_all(hw);
+	/* report max rule count */
+	cmd->data = ice_ntuple_get_max_fltr_cnt(hw);
 
 	mutex_lock(&hw->fdir_fltr_lock);
 
@@ -402,6 +420,37 @@ ice_fdir_rem_flow(struct ice_hw *hw, enum ice_block blk,
 	prof->cnt = 0;
 }
 
+/**
+ * ice_acl_rem_flows - remove ACL flow profiles and all their entries
+ * @hw: hardware structure containing the filter list
+ */
+void ice_acl_rem_flows(struct ice_hw *hw)
+{
+	if (!hw->acl_prof)
+		return;
+
+	for (enum ice_fltr_ptype flow = ICE_FLTR_PTYPE_NONF_NONE;
+	     flow < ICE_FLTR_PTYPE_MAX; flow++) {
+		struct ice_acl_hw_prof *prof;
+		int err;
+
+		flow &= ~FLOW_EXT;
+		prof = hw->acl_prof[flow];
+		if (!prof || !prof->seg)
+			continue;
+
+		err = ice_flow_rem_prof(hw, ICE_BLK_ACL, prof->prof_id);
+		if (err) {
+			dev_err(ice_hw_to_dev(hw), "Could not remove ACL profile, flow type %d\n",
+				flow);
+			continue;
+		}
+
+		kfree(prof->seg);
+		prof->seg = NULL;
+	}
+}
+
 /**
  * ice_fdir_release_flows - release all flows in use for later replay
  * @hw: pointer to HW instance
@@ -1564,8 +1613,12 @@ void ice_fdir_replay_fltrs(struct ice_pf *pf)
 	struct ice_hw *hw = &pf->hw;
 
 	list_for_each_entry(f_rule, &hw->fdir_list_head, fltr_node) {
-		int err = ice_fdir_write_all_fltr(pf, f_rule, true);
+		int err;
+
+		if (f_rule->acl_fltr)
+			continue;
 
+		err = ice_fdir_write_all_fltr(pf, f_rule, true);
 		if (err)
 			dev_dbg(ice_pf_to_dev(pf), "Flow Director error %d, could not reprogram filter %d\n",
 				err, f_rule->fltr_id);
@@ -1598,20 +1651,26 @@ int ice_fdir_create_dflt_rules(struct ice_pf *pf)
 }
 
 /**
- * ice_ntuple_update_cntrs - increment or decrement filter counter
+ * ice_ntuple_update_cntrs - increment or decrement FDir/ACL filter counters
  * @hw: pointer to hardware structure
- * @flow: filter flow type
+ * @fltr: filter node
  * @add: true to increment, false to decrement
  */
 static void ice_ntuple_update_cntrs(struct ice_hw *hw,
-				    enum ice_fltr_ptype flow, bool add)
+				    struct ice_ntuple_fltr *fltr, bool add)
 {
+	enum ice_fltr_ptype flow = fltr->flow_type;
 	int incr = add ? 1 : -1;
 
 	hw->ntuple_active_fltr_cnt += incr;
 
-	if (flow == ICE_FLTR_PTYPE_NONF_NONE || flow >= ICE_FLTR_PTYPE_MAX)
+	if (flow == ICE_FLTR_PTYPE_NONF_NONE || flow >= ICE_FLTR_PTYPE_MAX) {
 		ice_debug(hw, ICE_DBG_SW, "Unknown filter type %d\n", flow);
+		return;
+	}
+
+	if (fltr->acl_fltr)
+		hw->acl_fltr_cnt[flow] += incr;
 	else
 		hw->fdir_fltr_cnt[flow] += incr;
 }
@@ -1629,8 +1688,11 @@ void ice_fdir_del_all_fltrs(struct ice_vsi *vsi)
 	struct ice_hw *hw = &pf->hw;
 
 	list_for_each_entry_safe(f_rule, tmp, &hw->fdir_list_head, fltr_node) {
+		if (f_rule->acl_fltr)
+			continue;
+
 		ice_fdir_write_all_fltr(pf, f_rule, false);
-		ice_ntuple_update_cntrs(hw, f_rule->flow_type, false);
+		ice_ntuple_update_cntrs(hw, f_rule, false);
 		list_del(&f_rule->fltr_node);
 		devm_kfree(ice_pf_to_dev(pf), f_rule);
 	}
@@ -1724,7 +1786,7 @@ ice_ntuple_update_list_entry(struct ice_pf *pf, struct ice_ntuple_fltr *input,
 		err = ice_fdir_write_all_fltr(pf, old_fltr, false);
 		if (err)
 			return err;
-		ice_ntuple_update_cntrs(hw, old_fltr->flow_type, false);
+		ice_ntuple_update_cntrs(hw, old_fltr, false);
 		/* update sb-filters count, specific to ring->channel */
 		ice_update_per_q_fltr(vsi, old_fltr->orig_q_index, false);
 		if (!input && !hw->fdir_fltr_cnt[old_fltr->flow_type])
@@ -1740,7 +1802,7 @@ ice_ntuple_update_list_entry(struct ice_pf *pf, struct ice_ntuple_fltr *input,
 	ice_fdir_list_add_fltr(hw, input);
 	/* update sb-filters count, specific to ring->channel */
 	ice_update_per_q_fltr(vsi, input->orig_q_index, true);
-	ice_ntuple_update_cntrs(hw, input->flow_type, true);
+	ice_ntuple_update_cntrs(hw, input, true);
 	return 0;
 }
 
@@ -2008,7 +2070,7 @@ int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	if (ret)
 		return ret;
 
-	max_location = ice_get_fdir_cnt_all(hw);
+	max_location = ice_ntuple_get_max_fltr_cnt(hw);
 	if (fsp->location >= max_location) {
 		dev_err(dev, "Failed to add filter. The number of ntuple filters or provided location exceed max %d.\n",
 			max_location);
@@ -2059,7 +2121,7 @@ int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	goto release_lock;
 
 remove_sw_rule:
-	ice_ntuple_update_cntrs(hw, input->flow_type, false);
+	ice_ntuple_update_cntrs(hw, input, false);
 	/* update sb-filters count, specific to ring->channel */
 	ice_update_per_q_fltr(vsi, input->orig_q_index, false);
 	list_del(&input->fltr_node);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b69b8a52e9f9..2f3e11459855 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4330,6 +4330,8 @@ static int ice_acl_create_hw(struct ice_pf *pf)
 	struct ice_acl_tbl_params params = {};
 	struct ice_hw *hw = &pf->hw;
 	int divider;
+	u16 scen_id;
+	int err;
 
 	/* Create a single ACL table that consists of src_ip (4 bytes),
 	 * dest_ip (4 bytes), src_port (2 bytes) and dst_port (2 bytes) for a
@@ -4349,7 +4351,20 @@ static int ice_acl_create_hw(struct ice_pf *pf)
 	params.concurr = false;
 	params.num_dep_tbls = 0;
 
-	return ice_acl_create_tbl(hw, &params);
+	err = ice_acl_create_tbl(hw, &params);
+	if (err)
+		return err;
+
+	err = ice_acl_create_scen(hw, params.width, params.depth, &scen_id);
+	if (err)
+		goto destroy_table;
+
+	return 0;
+
+destroy_table:
+	ice_acl_destroy_tbl(hw);
+
+	return err;
 }
 
 /**
@@ -4369,6 +4384,9 @@ static int ice_init_acl(struct ice_pf *pf)
  */
 static void ice_deinit_acl(struct ice_pf *pf)
 {
+	struct ice_hw *hw = &pf->hw;
+
+	ice_acl_rem_flows(hw);
 	ice_acl_destroy_tbl(&pf->hw);
 }
 
-- 
2.49.0

