Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ac+O7biAWoEmAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 16:07:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C1E50FB7B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 16:07:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E7988154B;
	Mon, 11 May 2026 14:07:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tvw3qKwZ3Erv; Mon, 11 May 2026 14:07:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10FFF812C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778508461;
	bh=fxqDlUzf6BuyycGfEof2a6aU9UDqrQ2xJLPMUIFeHas=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KBuMVGmFTIJvI+PehRocwMM1TfQ6NOSMYFljqOIeulmm65Ku97AgYQZGDAJE70L6z
	 xi2QEVdfJoktG5n/1HT3icOl6AmJhaz4l7j5EmjRrA3z7+1zo54vi444B1QhYozmlb
	 Xe6idgDOBPPH+37YbeigTsU4wcyMSDlfKvppH5SCiAYXiu4mmaNF7O5ZRtr77dn4fI
	 z+EP5j+bLCaqmsxxNIj/rZf1ajdJZx5IB/IQGCDigRzumSnLPXl1Tu3HPqnZNZfTPt
	 9A9UY/Ecpf+S9lisDB0sAxXBPQUJZIuQxitpz+YEFqnkcZufBUUHvhe3Gtbq/pBxOo
	 KKG5Zk95CDDUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10FFF812C5;
	Mon, 11 May 2026 14:07:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C2EA272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A14240338
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wz0xDst7eM_b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 14:07:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 785E240376
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 785E240376
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 785E240376
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:36 +0000 (UTC)
X-CSE-ConnectionGUID: dnI7PFZ2THK91y/CbYWqLw==
X-CSE-MsgGUID: bwFnuaqsQjCDDuEgpeoP0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90771767"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="90771767"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 07:07:36 -0700
X-CSE-ConnectionGUID: cseuld6XTRKhAR1r+SGhrg==
X-CSE-MsgGUID: jkkC3vv/QCqkqKJj3z1j+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="267820320"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 11 May 2026 07:07:32 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9B6FD2FC4F;
 Mon, 11 May 2026 15:07:30 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Chinh Cao <chinh.t.cao@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 11 May 2026 15:07:02 +0200
Message-ID: <20260511130710.38801-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260511130710.38801-1-marcin.szycik@linux.intel.com>
References: <20260511130710.38801-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778508456; x=1810044456;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OwN2AK2NvdGnitMxCWtpqZCnvr9ICsvpHob9frGxcK8=;
 b=dqLB3uJZSpblDQd/99lfcuGdubjjUXmVb95W7PoA2T2CZcxYcb3MCql1
 cQDnwKsvfpdmHxPAffGX4HHeXLA0Wqy/LkTnWZ8xPs4PDCb/Vief3P/wr
 QHjgd78HQOvFUvIJFEpWCg9cPp9FuR9PEOZMhQJCOX7Ke/5ACxGiKCEsr
 GX6Dfp2MFHb+Olm2HCS5uiSOeqQsfE0kZcUzHadYpxMa9QNFEiTamLdn1
 C4gJvwnVjtLW7H6LGTPHUowAStuSa4peZgs9Z6TFzPFRSTHmgW8h5Bjyq
 tnwGI4vj1odnlFb0hLWxJX7227Yl+6oCJxqn+vaeY3y6zAkgXJWHXio+W
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dqLB3uJZ
Subject: [Intel-wired-lan] [PATCH iwl-next v3 03/10] ice: initialize ACL
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
X-Rspamd-Queue-Id: 65C1E50FB7B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,linux.intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

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
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_acl.h      |   8 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  31 +
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   6 +-
 drivers/net/ethernet/intel/ice/ice_flow.h     |   7 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
 drivers/net/ethernet/intel/ice/ice_acl.c      | 116 ++++
 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 573 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   4 +-
 .../ethernet/intel/ice/ice_ethtool_ntuple.c   |  44 +-
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  14 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  17 +-
 12 files changed, 806 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 3a51a033296c..e064323d983c 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1024,6 +1024,7 @@ void ice_vsi_manage_fdir(struct ice_vsi *vsi, bool ena);
 int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
 int ice_del_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
 int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd);
+u32 ice_ntuple_get_max_fltr_cnt(struct ice_hw *hw);
 int
 ice_get_fdir_fltr_ids(struct ice_hw *hw, struct ethtool_rxnfc *cmd,
 		      u32 *rule_locs);
diff --git a/drivers/net/ethernet/intel/ice/ice_acl.h b/drivers/net/ethernet/intel/ice/ice_acl.h
index bb836f23d65e..d4e6f0e25a12 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl.h
+++ b/drivers/net/ethernet/intel/ice/ice_acl.h
@@ -101,6 +101,8 @@ struct ice_acl_alloc_tbl {
 
 int ice_acl_create_tbl(struct ice_hw *hw, struct ice_acl_tbl_params *params);
 int ice_acl_destroy_tbl(struct ice_hw *hw);
+int ice_acl_create_scen(struct ice_hw *hw, u16 match_width, u16 num_entries,
+			u16 *scen_id);
 int ice_aq_alloc_acl_tbl(struct ice_hw *hw, struct ice_acl_alloc_tbl *tbl,
 			 struct ice_sq_cd *cd);
 int ice_aq_dealloc_acl_tbl(struct ice_hw *hw, u16 alloc_id,
@@ -113,5 +115,11 @@ int ice_aq_program_actpair(struct ice_hw *hw, u8 act_mem_idx, u16 act_entry_idx,
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
index 87f215f47072..5d2cab1a8154 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1994,6 +1994,8 @@ struct ice_aqc_neigh_dev_req {
 					 ICE_ACL_ENTRY_ALLOC_UNIT)
 #define ICE_AQC_ACL_ALLOC_UNITS		(ICE_AQC_ACL_SLICES * \
 					 ICE_AQC_MAX_TCAM_ALLOC_UNITS)
+#define ICE_ACL_MAX_WIDTH_BYTES		(ICE_AQC_ACL_SLICES * \
+					 ICE_AQC_ACL_KEY_WIDTH_BYTES)
 
 struct ice_aqc_acl_alloc_table {
 	__le16 table_width;
@@ -2070,6 +2072,33 @@ struct ice_aqc_acl_generic {
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
@@ -2850,6 +2879,8 @@ enum ice_adminq_opc {
 	/* ACL commands */
 	ice_aqc_opc_alloc_acl_tbl			= 0x0C10,
 	ice_aqc_opc_dealloc_acl_tbl			= 0x0C11,
+	ice_aqc_opc_alloc_acl_scen			= 0x0C14,
+	ice_aqc_opc_dealloc_acl_scen			= 0x0C15,
 	ice_aqc_opc_update_acl_scen			= 0x0C1B,
 	ice_aqc_opc_program_acl_actpair			= 0x0C1C,
 	ice_aqc_opc_program_acl_entry			= 0x0C20,
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 26d79b1364e7..53a4c8ae2781 100644
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
@@ -227,7 +229,7 @@ bool ice_fdir_is_dup_fltr(struct ice_hw *hw, struct ice_ntuple_fltr *input);
 bool ice_fdir_has_frag(enum ice_fltr_ptype flow);
 struct ice_ntuple_fltr *
 ice_fdir_find_fltr_by_idx(struct ice_hw *hw, u32 fltr_idx);
-void
-ice_fdir_update_cntrs(struct ice_hw *hw, enum ice_fltr_ptype flow, bool add);
+void ice_fdir_update_cntrs(struct ice_hw *hw, struct ice_ntuple_fltr *fltr,
+			   bool add);
 void ice_fdir_list_add_fltr(struct ice_hw *hw, struct ice_ntuple_fltr *input);
 #endif /* _ICE_FDIR_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 7323e26afc0b..a20ef320e1f9 100644
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
index e8eeb54d17c3..eb345db4e11b 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1026,6 +1026,8 @@ struct ice_hw {
 	struct udp_tunnel_nic_info udp_tunnel_nic;
 
 	struct ice_acl_tbl *acl_tbl;
+	struct ice_fd_hw_prof **acl_prof;
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
index d821b2c923d5..3ce8e2606b1c 100644
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
@@ -274,6 +348,467 @@ ice_acl_create_tbl(struct ice_hw *hw, struct ice_acl_tbl_params *params)
 	return 0;
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
@@ -282,12 +817,50 @@ ice_acl_create_tbl(struct ice_hw *hw, struct ice_acl_tbl_params *params)
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
index 88cc927e47ef..d2925607fdb5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3188,8 +3188,8 @@ ice_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = hw->fdir_active_fltr;
-		/* report total rule count */
-		cmd->data = ice_get_fdir_cnt_all(hw);
+		/* report max rule count */
+		cmd->data = ice_ntuple_get_max_fltr_cnt(hw);
 		ret = 0;
 		break;
 	case ETHTOOL_GRXCLSRULE:
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
index 15f67ccf82a0..34a6edc798c6 100644
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
 
@@ -333,6 +351,9 @@ void ice_fdir_rem_adq_chnl(struct ice_hw *hw, u16 vsi_idx)
 static struct ice_fd_hw_prof *
 ice_fdir_get_hw_prof(struct ice_hw *hw, enum ice_block blk, int flow)
 {
+	if (blk == ICE_BLK_ACL && hw->acl_prof)
+		return hw->acl_prof[flow];
+
 	if (blk == ICE_BLK_FD && hw->fdir_prof)
 		return hw->fdir_prof[flow];
 
@@ -1610,8 +1631,9 @@ void ice_fdir_del_all_fltrs(struct ice_vsi *vsi)
 	struct ice_hw *hw = &pf->hw;
 
 	list_for_each_entry_safe(f_rule, tmp, &hw->fdir_list_head, fltr_node) {
-		ice_fdir_write_all_fltr(pf, f_rule, false);
-		ice_fdir_update_cntrs(hw, f_rule->flow_type, false);
+		if (!f_rule->acl_fltr)
+			ice_fdir_write_all_fltr(pf, f_rule, false);
+		ice_fdir_update_cntrs(hw, f_rule, false);
 		list_del(&f_rule->fltr_node);
 		devm_kfree(ice_pf_to_dev(pf), f_rule);
 	}
@@ -1646,6 +1668,12 @@ void ice_vsi_manage_fdir(struct ice_vsi *vsi, bool ena)
 			if (hw->fdir_prof[flow])
 				ice_fdir_rem_flow(hw, ICE_BLK_FD, flow);
 
+	if (hw->acl_prof)
+		for (flow = ICE_FLTR_PTYPE_NONF_NONE; flow < ICE_FLTR_PTYPE_MAX;
+		     flow++)
+			if (hw->acl_prof[flow])
+				ice_fdir_rem_flow(hw, ICE_BLK_ACL, flow);
+
 release_lock:
 	mutex_unlock(&hw->fdir_fltr_lock);
 }
@@ -1705,7 +1733,7 @@ ice_ntuple_update_list_entry(struct ice_pf *pf, struct ice_ntuple_fltr *input,
 		err = ice_fdir_write_all_fltr(pf, old_fltr, false);
 		if (err)
 			return err;
-		ice_fdir_update_cntrs(hw, old_fltr->flow_type, false);
+		ice_fdir_update_cntrs(hw, old_fltr, false);
 		/* update sb-filters count, specific to ring->channel */
 		ice_update_per_q_fltr(vsi, old_fltr->orig_q_index, false);
 		if (!input && !hw->fdir_fltr_cnt[old_fltr->flow_type])
@@ -1721,7 +1749,7 @@ ice_ntuple_update_list_entry(struct ice_pf *pf, struct ice_ntuple_fltr *input,
 	ice_fdir_list_add_fltr(hw, input);
 	/* update sb-filters count, specific to ring->channel */
 	ice_update_per_q_fltr(vsi, input->orig_q_index, true);
-	ice_fdir_update_cntrs(hw, input->flow_type, true);
+	ice_fdir_update_cntrs(hw, input, true);
 	return 0;
 }
 
@@ -1992,7 +2020,7 @@ int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	if (ret)
 		return ret;
 
-	max_location = ice_get_fdir_cnt_all(hw);
+	max_location = ice_ntuple_get_max_fltr_cnt(hw);
 	if (fsp->location >= max_location) {
 		dev_err(dev, "Failed to add filter. The number of ntuple filters or provided location exceed max %d.\n",
 			max_location);
@@ -2043,7 +2071,7 @@ int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	goto release_lock;
 
 remove_sw_rule:
-	ice_fdir_update_cntrs(hw, input->flow_type, false);
+	ice_fdir_update_cntrs(hw, input, false);
 	/* update sb-filters count, specific to ring->channel */
 	ice_update_per_q_fltr(vsi, input->orig_q_index, false);
 	list_del(&input->fltr_node);
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 5b25f6414b58..0c3530c661b2 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -1178,19 +1178,25 @@ void ice_fdir_list_add_fltr(struct ice_hw *hw, struct ice_ntuple_fltr *fltr)
 /**
  * ice_fdir_update_cntrs - increment / decrement filter counter
  * @hw: pointer to hardware structure
- * @flow: filter flow type
+ * @fltr: filter node
  * @add: true implies filters added
  */
-void
-ice_fdir_update_cntrs(struct ice_hw *hw, enum ice_fltr_ptype flow, bool add)
+void ice_fdir_update_cntrs(struct ice_hw *hw, struct ice_ntuple_fltr *fltr,
+			   bool add)
 {
+	enum ice_fltr_ptype flow = fltr->flow_type;
 	int incr;
 
 	incr = add ? 1 : -1;
 	hw->fdir_active_fltr += incr;
 
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
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b68890b83b0d..ea565e459a11 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4349,6 +4349,8 @@ static int ice_init_acl(struct ice_pf *pf)
 	struct ice_acl_tbl_params params = {};
 	struct ice_hw *hw = &pf->hw;
 	int divider;
+	u16 scen_id;
+	int err;
 
 	/* Creates a single ACL table that consist of src_ip(4 byte),
 	 * dest_ip(4 byte), src_port(2 byte) and dst_port(2 byte) for a total
@@ -4367,7 +4369,20 @@ static int ice_init_acl(struct ice_pf *pf)
 	params.entry_act_pairs = 1;
 	params.concurr = false;
 
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
-- 
2.49.0

