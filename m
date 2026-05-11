Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGmNB7riAWq1lwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 16:07:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A0D50FB8A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 16:07:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED1D4416E3;
	Mon, 11 May 2026 14:07:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AKh9jSvWJcTD; Mon, 11 May 2026 14:07:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C858416EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778508466;
	bh=1Y460i0/c1AUMW1sIg4K4YQ9rggWffKCXgbmsZSTkEY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8VcSjE3/vfYxJIm5Y6y9uXJ3htYYN52K0B7ZTN4u+PJO1m1p+91IIzqviVsm8hfPt
	 vgVJ1vrpFq6VUtwE9AvKaFSzSvYI8YZcb5ZKtmj9WrdSFog6yL/XBcQh8yvv2ce/l2
	 19yIQPvBMwCekWntBLLS4Ljp2U8OxjOiuJ9mqfE/5ZErw2TT/jDnwjVWCXUV4alubl
	 LRrj+kWe7Xszp1nNIdJI8v3T1aITlq5IxHCuFYyiLga14Zf4ivf1cS7ay2I69W9GnI
	 Ytg01A/zcMQVuMYDwhfW3Wq5ohQn1zcgokjGXvpLY8FuEFD86fYj+6DeOvCiFm5zsp
	 X3XhlZrzFa/sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C858416EC;
	Mon, 11 May 2026 14:07:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A2205272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94100416E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GuxA3RImz1Gh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 14:07:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4F343416DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F343416DE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F343416DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:41 +0000 (UTC)
X-CSE-ConnectionGUID: 0b4rXtmzSOetbdmPSymRsQ==
X-CSE-MsgGUID: o5d7dtHCQI++TLMMNNu9Gw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="83265236"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="83265236"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 07:07:41 -0700
X-CSE-ConnectionGUID: K1jWMHkhSY2XCnjwGo+iPA==
X-CSE-MsgGUID: SIG5WZ6oQQ2xLj859nhIvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="237685842"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 11 May 2026 07:07:36 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CD0F62FC53;
 Mon, 11 May 2026 15:07:34 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Chinh Cao <chinh.t.cao@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 11 May 2026 15:07:07 +0200
Message-ID: <20260511130710.38801-9-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260511130710.38801-1-marcin.szycik@linux.intel.com>
References: <20260511130710.38801-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778508461; x=1810044461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AcIBi5a0Zxq0MYns/qLB4l5y093btgyiTwaUU6PNDm8=;
 b=aD3V21TXf7uKEQKeqIhhQkSnqYmjIKvsuZJLRl0B7q5BBkFooBKnz6lU
 yaGZWnuC6bbK6ZAhGE1fjoBfRz9FZ4Y/+GidkMOxTaqvF3kwuftqtaeYy
 qd7LK6TJ0ZGsPps+CvxZjhrWjkGoAHmeO0mL29MpO4lda4PE7qM1VVRum
 oGVDEfO5HHXTFfflEdJIRUPS//hGUiAgB+eHGJJiQG+2cUW6OUPnavWZD
 bXVZIpUE01CdzHbTCOekSP8iAfbZljxv6/Aq4mVoGF14fXL3Z+N3eMChr
 dYvYWRNyio1U1Oh+YN29sidjZwQW1REUnPpv4XeFsX3O4wTaI/0qs6saq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aD3V21TX
Subject: [Intel-wired-lan] [PATCH iwl-next v3 08/10] ice: program ACL entry
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
X-Rspamd-Queue-Id: 72A0D50FB8A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,linux.intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

From: Real Valiquette <real.valiquette@intel.com>

Complete the filter programming process; set the flow entry and action into
the scenario and write it to hardware. Configure the VSI for ACL filters.

Co-developed-by: Chinh Cao <chinh.t.cao@intel.com>
Signed-off-by: Chinh Cao <chinh.t.cao@intel.com>
Signed-off-by: Real Valiquette <real.valiquette@intel.com>
Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v3:
* Cleanup comments in ice_acl_add_entry(),
  ice_flow_acl_find_scen_entry_cond()
* ice_acl_rem_entry(): clear entry from entry bitmap only if programming
  succceeded
* ice_acl_rem_entry(): catch ice_acl_scen_free_entry_idx() status
* ice_acl_add_rule_ethtool(): add fdir_fltr_lock around
  ice_ntuple_update_list_entry() call
* ice_acl_add_rule_ethtool(): catch ice_ntuple_update_list_entry()
  status, add unroll
* ice_flow_acl_find_scen_entry_cond(): remove inner loop when checking
  if actions match. Previously it was effectively checking if actions
  match *and* are all the same. Note: ACL will always use 1 action in
  current software implementation, but it can be extended in the future.
* ice_flow_acl_add_scen_entry_sync(): set exist->acts_cnt = 0 on alloc
  fail
v2:
* Use plain alloc instead of devm_ for ice_flow_entry::acts
* Use FIELD_PREP_CONST() for ICE_ACL_RX_*_MISS_CNTR
* Fix wrong struct ice_acl_act_entry alloc count in
  ice_flow_acl_add_scen_entry_sync() - was e->entry_sz, which is an
  unrelated value
* Only set acts_cnt after successful allocation in
  ice_flow_acl_add_scen_entry_sync()
* Return -EINVAL instead of -ENOSPC on wrong index in
  ice_acl_scen_free_entry_idx()
---
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_acl.h      |  21 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_flow.h     |   3 +
 drivers/net/ethernet/intel/ice/ice_acl.c      |  53 ++-
 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 252 +++++++++++
 drivers/net/ethernet/intel/ice/ice_acl_main.c |  22 +-
 .../ethernet/intel/ice/ice_ethtool_ntuple.c   |  48 ++-
 drivers/net/ethernet/intel/ice/ice_flow.c     | 390 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.c      |  10 +-
 10 files changed, 793 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 9e6643931022..f9a43daf04fe 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1061,6 +1061,8 @@ void ice_aq_prep_for_event(struct ice_pf *pf, struct ice_aq_task *task,
 			   u16 opcode);
 int ice_aq_wait_for_event(struct ice_pf *pf, struct ice_aq_task *task,
 			  unsigned long timeout);
+int ice_ntuple_update_list_entry(struct ice_pf *pf,
+				 struct ice_ntuple_fltr *input, int fltr_idx);
 int ice_open(struct net_device *netdev);
 int ice_open_internal(struct net_device *netdev);
 int ice_stop(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_acl.h b/drivers/net/ethernet/intel/ice/ice_acl.h
index 3a4adcf368cf..0b5651401eb7 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl.h
+++ b/drivers/net/ethernet/intel/ice/ice_acl.h
@@ -39,6 +39,7 @@ struct ice_acl_tbl {
 	DECLARE_BITMAP(avail, ICE_AQC_ACL_ALLOC_UNITS);
 };
 
+#define ICE_MAX_ACL_TCAM_ENTRY (ICE_AQC_ACL_TCAM_DEPTH * ICE_AQC_ACL_SLICES)
 enum ice_acl_entry_prio {
 	ICE_ACL_PRIO_LOW = 0,
 	ICE_ACL_PRIO_NORMAL,
@@ -65,6 +66,11 @@ struct ice_acl_scen {
 	 * participate in this scenario
 	 */
 	DECLARE_BITMAP(act_mem_bitmap, ICE_AQC_MAX_ACTION_MEMORIES);
+
+	/* If nth bit of entry_bitmap is set, then nth entry will
+	 * be available in this scenario
+	 */
+	DECLARE_BITMAP(entry_bitmap, ICE_MAX_ACL_TCAM_ENTRY);
 	u16 first_idx[ICE_ACL_MAX_PRIO];
 	u16 last_idx[ICE_ACL_MAX_PRIO];
 
@@ -137,6 +143,12 @@ int ice_aq_alloc_acl_cntrs(struct ice_hw *hw, struct ice_acl_cntrs *cntrs,
 			   struct ice_sq_cd *cd);
 int ice_aq_dealloc_acl_cntrs(struct ice_hw *hw, struct ice_acl_cntrs *cntrs,
 			     struct ice_sq_cd *cd);
+int ice_prog_acl_prof_ranges(struct ice_hw *hw, u8 prof_id,
+			     struct ice_aqc_acl_profile_ranges *buf,
+			     struct ice_sq_cd *cd);
+int ice_query_acl_prof_ranges(struct ice_hw *hw, u8 prof_id,
+			      struct ice_aqc_acl_profile_ranges *buf,
+			      struct ice_sq_cd *cd);
 int ice_aq_alloc_acl_scen(struct ice_hw *hw, u16 *scen_id,
 			  struct ice_aqc_acl_scen *buf, struct ice_sq_cd *cd);
 int ice_aq_dealloc_acl_scen(struct ice_hw *hw, u16 scen_id,
@@ -145,5 +157,14 @@ int ice_aq_update_acl_scen(struct ice_hw *hw, u16 scen_id,
 			   struct ice_aqc_acl_scen *buf, struct ice_sq_cd *cd);
 int ice_aq_query_acl_scen(struct ice_hw *hw, u16 scen_id,
 			  struct ice_aqc_acl_scen *buf, struct ice_sq_cd *cd);
+int ice_acl_add_entry(struct ice_hw *hw, struct ice_acl_scen *scen,
+		      enum ice_acl_entry_prio prio, u8 *keys, u8 *inverts,
+		      struct ice_acl_act_entry *acts, u8 acts_cnt,
+		      u16 *entry_idx);
+int ice_acl_prog_act(struct ice_hw *hw, struct ice_acl_scen *scen,
+		     struct ice_acl_act_entry *acts, u8 acts_cnt,
+		     u16 entry_idx);
+int ice_acl_rem_entry(struct ice_hw *hw, struct ice_acl_scen *scen,
+		      u16 entry_idx);
 
 #endif /* _ICE_ACL_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 04cb3b93daf1..92bd54692d3a 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -3034,8 +3034,10 @@ enum ice_adminq_opc {
 	ice_aqc_opc_update_acl_scen			= 0x0C1B,
 	ice_aqc_opc_program_acl_actpair			= 0x0C1C,
 	ice_aqc_opc_program_acl_prof_extraction		= 0x0C1D,
+	ice_aqc_opc_program_acl_prof_ranges		= 0x0C1E,
 	ice_aqc_opc_program_acl_entry			= 0x0C20,
 	ice_aqc_opc_query_acl_prof			= 0x0C21,
+	ice_aqc_opc_query_acl_prof_ranges		= 0x0C22,
 	ice_aqc_opc_query_acl_scen			= 0x0C23,
 
 	/* Tx queue handling commands/events */
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 53456d48f6ae..fffd03c38d15 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -468,6 +468,8 @@ struct ice_flow_entry {
 	enum ice_flow_priority priority;
 	u16 vsi_handle;
 	u16 entry_sz;
+	/* Entry index in the ACL's scenario */
+	u16 scen_entry_idx;
 	u8 acts_cnt;
 };
 
@@ -535,6 +537,7 @@ ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 		  struct ice_flow_seg_info *segs, u8 segs_cnt,
 		  bool symm, struct ice_flow_prof **prof);
 int ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id);
+u64 ice_flow_find_entry(struct ice_hw *hw, enum ice_block blk, u64 entry_id);
 int
 ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
 			 struct ice_parser_profile *prof, enum ice_block blk);
diff --git a/drivers/net/ethernet/intel/ice/ice_acl.c b/drivers/net/ethernet/intel/ice/ice_acl.c
index 837adbda14e0..3ddb500ea1ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl.c
+++ b/drivers/net/ethernet/intel/ice/ice_acl.c
@@ -156,7 +156,8 @@ static int ice_acl_prof_aq_send(struct ice_hw *hw, u16 opc, u8 prof_id,
 	cmd = libie_aq_raw(&desc);
 	cmd->profile_id = prof_id;
 
-	if (opc == ice_aqc_opc_program_acl_prof_extraction)
+	if (opc == ice_aqc_opc_program_acl_prof_extraction ||
+	    opc == ice_aqc_opc_program_acl_prof_ranges)
 		desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	return ice_aq_send_cmd(hw, &desc, buf, sizeof(*buf), cd);
@@ -318,6 +319,56 @@ int ice_aq_dealloc_acl_cntrs(struct ice_hw *hw, struct ice_acl_cntrs *cntrs,
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
 
+/**
+ * ice_prog_acl_prof_ranges - program ACL profile ranges
+ * @hw: pointer to the HW struct
+ * @prof_id: programmed or updated profile ID
+ * @buf: pointer to input buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Program ACL profile ranges (indirect 0x0C1E)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_prog_acl_prof_ranges(struct ice_hw *hw, u8 prof_id,
+			     struct ice_aqc_acl_profile_ranges *buf,
+			     struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_profile *cmd;
+	struct libie_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc,
+				      ice_aqc_opc_program_acl_prof_ranges);
+	cmd = libie_aq_raw(&desc);
+	cmd->profile_id = prof_id;
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
+	return ice_aq_send_cmd(hw, &desc, buf, sizeof(*buf), cd);
+}
+
+/**
+ * ice_query_acl_prof_ranges - query ACL profile ranges
+ * @hw: pointer to the HW struct
+ * @prof_id: programmed or updated profile ID
+ * @buf: pointer to response buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Query ACL profile ranges (indirect 0x0C22)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_query_acl_prof_ranges(struct ice_hw *hw, u8 prof_id,
+			      struct ice_aqc_acl_profile_ranges *buf,
+			      struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_profile *cmd;
+	struct libie_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_query_acl_prof_ranges);
+	cmd = libie_aq_raw(&desc);
+	cmd->profile_id = prof_id;
+	return ice_aq_send_cmd(hw, &desc, buf, sizeof(*buf), cd);
+}
+
 /**
  * ice_aq_alloc_acl_scen - allocate ACL scenario
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c b/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
index 3ce8e2606b1c..d3126bb8de6e 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
+++ b/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
@@ -6,6 +6,11 @@
 /* Determine the TCAM index of entry 'e' within the ACL table */
 #define ICE_ACL_TBL_TCAM_IDX(e) ((e) / ICE_AQC_ACL_TCAM_DEPTH)
 
+/* Determine the entry index within the TCAM */
+#define ICE_ACL_TBL_TCAM_ENTRY_IDX(e) ((e) % ICE_AQC_ACL_TCAM_DEPTH)
+
+#define ICE_ACL_SCEN_ENTRY_INVAL 0xFFFF
+
 /**
  * ice_acl_init_entry - initialize ACL entry
  * @scen: pointer to the scenario struct
@@ -29,6 +34,51 @@ static void ice_acl_init_entry(struct ice_acl_scen *scen)
 	scen->last_idx[ICE_ACL_PRIO_HIGH] = scen->num_entry / 4 - 1;
 }
 
+/**
+ * ice_acl_scen_assign_entry_idx - find index of an available entry in scenario
+ * @scen: pointer to the scenario struct
+ * @prio: the priority of the flow entry being allocated
+ *
+ * Return: entry index on success, ICE_ACL_SCEN_ENTRY_INVAL on error
+ */
+static u16 ice_acl_scen_assign_entry_idx(struct ice_acl_scen *scen,
+					 enum ice_acl_entry_prio prio)
+{
+	u16 first_idx, last_idx, i;
+	s8 step;
+
+	if (prio >= ICE_ACL_MAX_PRIO)
+		return ICE_ACL_SCEN_ENTRY_INVAL;
+
+	first_idx = scen->first_idx[prio];
+	last_idx = scen->last_idx[prio];
+	step = first_idx <= last_idx ? 1 : -1;
+
+	for (i = first_idx; i != last_idx + step; i += step)
+		if (!test_and_set_bit(i, scen->entry_bitmap))
+			return i;
+
+	return ICE_ACL_SCEN_ENTRY_INVAL;
+}
+
+/**
+ * ice_acl_scen_free_entry_idx - mark an entry as available in a scenario
+ * @scen: pointer to the scenario struct
+ * @idx: the index of the flow entry being de-allocated
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_acl_scen_free_entry_idx(struct ice_acl_scen *scen, u16 idx)
+{
+	if (idx >= scen->num_entry)
+		return -EINVAL;
+
+	if (!test_and_clear_bit(idx, scen->entry_bitmap))
+		return -ENOENT;
+
+	return 0;
+}
+
 /**
  * ice_acl_tbl_calc_end_idx - get end ACL entry index
  * @start: start index of the TCAM entry of this partition
@@ -873,3 +923,205 @@ int ice_acl_destroy_tbl(struct ice_hw *hw)
 
 	return 0;
 }
+
+/**
+ * ice_acl_add_entry - Add a flow entry to ACL scenario
+ * @hw: pointer to the HW struct
+ * @scen: scenario to add the entry to
+ * @prio: priority level of the entry being added
+ * @keys: buffer of the value of the key to be programmed to the ACL entry
+ * @inverts: buffer of the value of the key inverts to be programmed
+ * @acts: pointer to a buffer containing formatted actions
+ * @acts_cnt: indicates the number of actions stored in "acts"
+ * @entry_idx: returned scenario relative index of the added flow entry
+ *
+ * Given an ACL table and a scenario, to add the specified key and key invert
+ * to an available entry in the specified scenario.
+ * The "keys" and "inverts" buffers must be of the size which is the same as
+ * the scenario's width
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_acl_add_entry(struct ice_hw *hw, struct ice_acl_scen *scen,
+		      enum ice_acl_entry_prio prio, u8 *keys, u8 *inverts,
+		      struct ice_acl_act_entry *acts, u8 acts_cnt,
+		      u16 *entry_idx)
+{
+	u8 entry_tcam, num_cscd, offset;
+	struct ice_aqc_acl_data buf = {};
+	int err = 0;
+	u16 idx;
+
+	if (!scen)
+		return -ENOENT;
+
+	*entry_idx = ice_acl_scen_assign_entry_idx(scen, prio);
+	if (*entry_idx >= scen->num_entry) {
+		*entry_idx = 0;
+		return -ENOSPC;
+	}
+
+	/* Determine number of cascaded TCAMs */
+	num_cscd = DIV_ROUND_UP(scen->width, ICE_AQC_ACL_KEY_WIDTH_BYTES);
+
+	entry_tcam = ICE_ACL_TBL_TCAM_IDX(scen->start);
+	idx = ICE_ACL_TBL_TCAM_ENTRY_IDX(scen->start + *entry_idx);
+
+	for (u8 i = 0; i < num_cscd; i++) {
+		/* If the key spans more than one TCAM in the case of cascaded
+		 * TCAMs, the key and key inverts need to be properly split
+		 * among TCAMs. E.g. bytes 0 - 4 go to an index in the first
+		 * TCAM and bytes 5 - 9 go to the same index in the next TCAM,
+		 * etc. If the entry spans more than one TCAM in a cascaded TCAM
+		 * mode, the programming of the entries in the TCAMs must be in
+		 * reversed order - the TCAM entry of the rightmost TCAM should
+		 * be programmed first; the TCAM entry of the leftmost TCAM
+		 * should be programmed last.
+		 */
+		offset = num_cscd - i - 1;
+		memcpy(&buf.entry_key.val,
+		       &keys[offset * sizeof(buf.entry_key.val)],
+		       sizeof(buf.entry_key.val));
+		memcpy(&buf.entry_key_invert.val,
+		       &inverts[offset * sizeof(buf.entry_key_invert.val)],
+		       sizeof(buf.entry_key_invert.val));
+		err = ice_aq_program_acl_entry(hw, entry_tcam + offset, idx,
+					       &buf, NULL);
+		if (err) {
+			ice_debug(hw, ICE_DBG_ACL, "aq program acl entry failed status: %d\n",
+				  err);
+			goto out;
+		}
+	}
+
+	err = ice_acl_prog_act(hw, scen, acts, acts_cnt, *entry_idx);
+
+out:
+	if (err) {
+		ice_acl_rem_entry(hw, scen, *entry_idx);
+		*entry_idx = 0;
+	}
+
+	return err;
+}
+
+/**
+ * ice_acl_prog_act - Program a scenario's action memory
+ * @hw: pointer to the HW struct
+ * @scen: scenario to add the entry to
+ * @acts: pointer to a buffer containing formatted actions
+ * @acts_cnt: indicates the number of actions stored in "acts"
+ * @entry_idx: scenario relative index of the added flow entry
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_acl_prog_act(struct ice_hw *hw, struct ice_acl_scen *scen,
+		     struct ice_acl_act_entry *acts, u8 acts_cnt, u16 entry_idx)
+{
+	u8 entry_tcam, num_cscd, i, actx_idx = 0;
+	struct ice_aqc_actpair act_buf = {};
+	int err = 0;
+	u16 idx;
+
+	if (entry_idx >= scen->num_entry)
+		return -ENOSPC;
+
+	/* Determine number of cascaded TCAMs */
+	num_cscd = DIV_ROUND_UP(scen->width, ICE_AQC_ACL_KEY_WIDTH_BYTES);
+
+	entry_tcam = ICE_ACL_TBL_TCAM_IDX(scen->start);
+	idx = ICE_ACL_TBL_TCAM_ENTRY_IDX(scen->start + entry_idx);
+
+	for_each_set_bit(i, scen->act_mem_bitmap, ICE_AQC_MAX_ACTION_MEMORIES) {
+		struct ice_acl_act_mem *mem = &hw->acl_tbl->act_mems[i];
+
+		if (actx_idx >= acts_cnt)
+			break;
+		if (mem->member_of_tcam >= entry_tcam &&
+		    mem->member_of_tcam < entry_tcam + num_cscd) {
+			memcpy(&act_buf.act[0], &acts[actx_idx],
+			       sizeof(struct ice_acl_act_entry));
+
+			if (++actx_idx < acts_cnt) {
+				memcpy(&act_buf.act[1], &acts[actx_idx],
+				       sizeof(struct ice_acl_act_entry));
+			}
+
+			err = ice_aq_program_actpair(hw, i, idx, &act_buf,
+						     NULL);
+			if (err) {
+				ice_debug(hw, ICE_DBG_ACL, "program actpair failed status: %d\n",
+					  err);
+				break;
+			}
+			actx_idx++;
+		}
+	}
+
+	if (!err && actx_idx < acts_cnt)
+		err = -ENOSPC;
+
+	return err;
+}
+
+/**
+ * ice_acl_rem_entry - Remove a flow entry from an ACL scenario
+ * @hw: pointer to the HW struct
+ * @scen: scenario to remove the entry from
+ * @entry_idx: the scenario-relative index of the flow entry being removed
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_acl_rem_entry(struct ice_hw *hw, struct ice_acl_scen *scen,
+		      u16 entry_idx)
+{
+	struct ice_aqc_actpair act_buf = {};
+	struct ice_aqc_acl_data buf;
+	u8 entry_tcam, num_cscd, i;
+	int err = 0;
+	u16 idx;
+
+	if (!scen)
+		return -ENOENT;
+
+	if (entry_idx >= scen->num_entry)
+		return -ENOSPC;
+
+	if (!test_bit(entry_idx, scen->entry_bitmap))
+		return -ENOENT;
+
+	/* Determine number of cascaded TCAMs */
+	num_cscd = DIV_ROUND_UP(scen->width, ICE_AQC_ACL_KEY_WIDTH_BYTES);
+
+	entry_tcam = ICE_ACL_TBL_TCAM_IDX(scen->start);
+	idx = ICE_ACL_TBL_TCAM_ENTRY_IDX(scen->start + entry_idx);
+
+	/* invalidate the flow entry */
+	memset(&buf, 0, sizeof(buf));
+	for (i = 0; i < num_cscd; i++) {
+		err = ice_aq_program_acl_entry(hw, entry_tcam + i, idx, &buf,
+					       NULL);
+		if (err)
+			ice_debug(hw, ICE_DBG_ACL, "AQ program ACL entry failed status: %d\n",
+				  err);
+	}
+
+	for_each_set_bit(i, scen->act_mem_bitmap, ICE_AQC_MAX_ACTION_MEMORIES) {
+		struct ice_acl_act_mem *mem = &hw->acl_tbl->act_mems[i];
+
+		if (mem->member_of_tcam >= entry_tcam &&
+		    mem->member_of_tcam < entry_tcam + num_cscd) {
+			/* Invalidate allocated action pairs */
+			err = ice_aq_program_actpair(hw, i, idx, &act_buf,
+						     NULL);
+			if (err)
+				ice_debug(hw, ICE_DBG_ACL, "program actpair failed status: %d\n",
+					  err);
+		}
+	}
+
+	if (!err)
+		err = ice_acl_scen_free_entry_idx(scen, entry_idx);
+
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_acl_main.c b/drivers/net/ethernet/intel/ice/ice_acl_main.c
index 9c7a1e1686c3..334fc38cc36a 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_acl_main.c
@@ -231,6 +231,7 @@ int ice_acl_add_rule_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	u64 entry_h = 0;
+	int old_count;
 	int err;
 
 	pf = vsi->back;
@@ -281,13 +282,28 @@ int ice_acl_add_rule_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 		goto free_input;
 	}
 
-	if (!hw_prof->cnt || vsi->idx != hw_prof->vsi_h[hw_prof->cnt - 1]) {
-		hw_prof->vsi_h[hw_prof->cnt] = vsi->idx;
-		hw_prof->entry_h[hw_prof->cnt++][0] = entry_h;
+	old_count = hw_prof->cnt;
+	if (!old_count || vsi->idx != hw_prof->vsi_h[old_count - 1]) {
+		hw_prof->vsi_h[old_count] = vsi->idx;
+		hw_prof->entry_h[old_count][0] = entry_h;
+		hw_prof->cnt++;
 	}
 
+	input->acl_fltr = true;
+
+	mutex_lock(&hw->fdir_fltr_lock);
+	/* input struct is added to the HW filter list */
+	err = ice_ntuple_update_list_entry(pf, input, fsp->location);
+	mutex_unlock(&hw->fdir_fltr_lock);
+	if (err)
+		goto del_entry;
+
 	return 0;
 
+del_entry:
+	hw_prof->cnt = old_count;
+	ice_flow_rem_entry(hw, ICE_BLK_ACL, entry_h);
+
 free_input:
 	kfree(input);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
index 859e69d676e3..99ef9059628a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
@@ -1765,6 +1765,21 @@ void ice_vsi_manage_fdir(struct ice_vsi *vsi, bool ena)
 	mutex_unlock(&hw->fdir_fltr_lock);
 }
 
+/**
+ * ice_del_acl_ethtool - delete an ACL rule entry
+ * @hw: pointer to HW instance
+ * @fltr: filter structure
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_del_acl_ethtool(struct ice_hw *hw, struct ice_ntuple_fltr *fltr)
+{
+	u64 entry;
+
+	entry = ice_flow_find_entry(hw, ICE_BLK_ACL, fltr->fltr_id);
+	return ice_flow_rem_entry(hw, ICE_BLK_ACL, entry);
+}
+
 /**
  * ice_fdir_do_rem_flow - delete flow and possibly add perfect flow
  * @pf: PF structure
@@ -1798,7 +1813,7 @@ ice_fdir_do_rem_flow(struct ice_pf *pf, enum ice_fltr_ptype flow_type)
  *
  * Return: 0 on success and negative on errors
  */
-static int
+int
 ice_ntuple_update_list_entry(struct ice_pf *pf, struct ice_ntuple_fltr *input,
 			     int fltr_idx)
 {
@@ -1817,13 +1832,36 @@ ice_ntuple_update_list_entry(struct ice_pf *pf, struct ice_ntuple_fltr *input,
 
 	old_fltr = ice_fdir_find_fltr_by_idx(hw, fltr_idx);
 	if (old_fltr) {
-		err = ice_fdir_write_all_fltr(pf, old_fltr, false);
-		if (err)
-			return err;
+		if (old_fltr->acl_fltr) {
+			/* ACL filter - if the input buffer is present
+			 * then this is an update and we don't want to
+			 * delete the filter from the HW. We've already
+			 * written the change to the HW at this point, so
+			 * just update the SW structures to make sure
+			 * everything is hunky-dory. If no input then this
+			 * is a delete so we should delete the filter from
+			 * the HW and clean up our SW structures.
+			 */
+			if (!input) {
+				err = ice_del_acl_ethtool(hw, old_fltr);
+				if (err)
+					return err;
+			}
+		} else {
+			/* FD filter */
+			err = ice_fdir_write_all_fltr(pf, old_fltr, false);
+			if (err)
+				return err;
+		}
+
 		ice_fdir_update_cntrs(hw, old_fltr, false);
 		/* update sb-filters count, specific to ring->channel */
 		ice_update_per_q_fltr(vsi, old_fltr->orig_q_index, false);
-		if (!input && !hw->fdir_fltr_cnt[old_fltr->flow_type])
+		/* Also delete the HW filter info if we have just deleted the
+		 * last filter of flow_type.
+		 */
+		if (!old_fltr->acl_fltr && !input &&
+		    !hw->fdir_fltr_cnt[old_fltr->flow_type])
 			/* we just deleted the last filter of flow_type so we
 			 * should also delete the HW filter info.
 			 */
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index e74751ecfbe6..df82cb36a58b 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1743,6 +1743,16 @@ static int ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block blk,
 		return -EINVAL;
 
 	if (blk == ICE_BLK_ACL) {
+		int err;
+
+		if (!entry->prof)
+			return -EINVAL;
+
+		err = ice_acl_rem_entry(hw, entry->prof->cfg.scen,
+					entry->scen_entry_idx);
+		if (err)
+			return err;
+
 		if (entry->acts_cnt && entry->acts)
 			ice_flow_acl_free_act_cntr(hw, entry->acts,
 						   entry->acts_cnt);
@@ -1878,10 +1888,34 @@ ice_flow_rem_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	}
 
 	if (blk == ICE_BLK_ACL) {
+		struct ice_aqc_acl_prof_generic_frmt buf;
+		u8 prof_id = 0;
+
 		/* Disassociate the scenario from the profile for the PF */
 		status = ice_flow_acl_disassoc_scen(hw, prof);
 		if (status)
 			return status;
+
+		status = ice_flow_get_hw_prof(hw, blk, prof->id, &prof_id);
+		if (status)
+			return status;
+
+		status = ice_query_acl_prof(hw, prof_id, &buf, NULL);
+		if (status)
+			return status;
+
+		/* Clear the range-checker if the profile ID is no longer
+		 * used by any PF
+		 */
+		if (!ice_flow_acl_is_prof_in_use(&buf)) {
+			/* Clear the range-checker value for profile ID */
+			struct ice_aqc_acl_profile_ranges query_rng_buf = {};
+
+			status = ice_prog_acl_prof_ranges(hw, prof_id,
+							  &query_rng_buf, NULL);
+			if (status)
+				return status;
+		}
 	}
 
 	/* Remove all hardware profiles associated with this flow profile */
@@ -2213,6 +2247,44 @@ int ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
 	return status;
 }
 
+/**
+ * ice_flow_find_entry - look for a flow entry using its unique ID
+ * @hw: pointer to the HW struct
+ * @blk: classification stage
+ * @entry_id: unique ID to identify this flow entry
+ *
+ * Look for the flow entry with the specified unique ID in all flow profiles of
+ * the specified classification stage.
+ *
+ * Return: flow entry handle if entry found, ICE_FLOW_ENTRY_ID_INVAL otherwise
+ */
+u64 ice_flow_find_entry(struct ice_hw *hw, enum ice_block blk, u64 entry_id)
+{
+	struct ice_flow_entry *found = NULL;
+	struct ice_flow_prof *p;
+
+	mutex_lock(&hw->fl_profs_locks[blk]);
+
+	list_for_each_entry(p, &hw->fl_profs[blk], l_entry) {
+		struct ice_flow_entry *e;
+
+		mutex_lock(&p->entries_lock);
+		list_for_each_entry(e, &p->entries, l_entry)
+			if (e->id == entry_id) {
+				found = e;
+				break;
+			}
+		mutex_unlock(&p->entries_lock);
+
+		if (found)
+			break;
+	}
+
+	mutex_unlock(&hw->fl_profs_locks[blk]);
+
+	return found ? ICE_FLOW_ENTRY_HNDL(found) : ICE_FLOW_ENTRY_HANDLE_INVAL;
+}
+
 /**
  * ice_flow_acl_check_actions - Checks the ACL rule's actions
  * @hw: pointer to the hardware structure
@@ -2556,6 +2628,320 @@ static int ice_flow_acl_frmt_entry(struct ice_hw *hw,
 
 	return err;
 }
+
+/**
+ * ice_flow_acl_find_scen_entry_cond - Find an ACL scenario entry that matches
+ *				       the compared data
+ * @prof: pointer to flow profile
+ * @e: pointer to the comparing flow entry
+ * @do_chg_action: decide if we want to change the ACL action
+ * @do_add_entry: decide if we want to add the new ACL entry
+ * @do_rem_entry: decide if we want to remove the current ACL entry
+ *
+ * Find an ACL scenario entry that matches the compared data. Also figure out:
+ * a) If we want to change the ACL action
+ * b) If we want to add the new ACL entry
+ * c) If we want to remove the current ACL entry
+ *
+ * Return: ACL scenario entry, or NULL if not found
+ */
+static struct ice_flow_entry *
+ice_flow_acl_find_scen_entry_cond(struct ice_flow_prof *prof,
+				  struct ice_flow_entry *e, bool *do_chg_action,
+				  bool *do_add_entry, bool *do_rem_entry)
+{
+	struct ice_flow_entry *p, *return_entry = NULL;
+
+	/* If:
+	 * a) There exists an entry with same matching data but different
+	 *    priority, then remove this existing ACL entry and add the new
+	 *    entry to the ACL scenario
+	 * b) There exists an entry with same matching data, priority, and
+	 *    result action, then do nothing
+	 * c) There exists an entry with same matching data, priority, but
+	 *    different action, then only change the action's entry
+	 * d) Else, add this new entry to the ACL scenario
+	 */
+	*do_chg_action = false;
+	*do_add_entry = true;
+	*do_rem_entry = false;
+	list_for_each_entry(p, &prof->entries, l_entry) {
+		if (memcmp(p->entry, e->entry, p->entry_sz))
+			continue;
+
+		/* Now we have the same matching_data */
+
+		*do_add_entry = false;
+		return_entry = p;
+
+		if (p->priority != e->priority) {
+			/* matching data && !priority */
+			*do_add_entry = true;
+			*do_rem_entry = true;
+			break;
+		}
+
+		/* Now we have matching_data && priority */
+
+		if (p->acts_cnt != e->acts_cnt)
+			*do_chg_action = true;
+		for (int i = 0; i < p->acts_cnt; i++) {
+			if (memcmp(&p->acts[i], &e->acts[i],
+				   sizeof(struct ice_flow_action))) {
+				*do_chg_action = true;
+				break;
+			}
+		}
+
+		/* (do_chg_action = true) means :
+		 *    matching_data && priority && !result_action
+		 * (do_chg_action = false) means :
+		 *    matching_data && priority && result_action
+		 */
+		break;
+	}
+
+	return return_entry;
+}
+
+/**
+ * ice_flow_acl_convert_to_acl_prio - convert flow priority to ACL priority
+ * @p: flow priority
+ *
+ * Return: ACL priority
+ */
+static enum ice_acl_entry_prio
+ice_flow_acl_convert_to_acl_prio(enum ice_flow_priority p)
+{
+	switch (p) {
+	case ICE_FLOW_PRIO_LOW:
+		return ICE_ACL_PRIO_LOW;
+	case ICE_FLOW_PRIO_NORMAL:
+		return ICE_ACL_PRIO_NORMAL;
+	case ICE_FLOW_PRIO_HIGH:
+		return ICE_ACL_PRIO_HIGH;
+	default:
+		return ICE_ACL_PRIO_NORMAL;
+	}
+}
+
+/**
+ * ice_flow_acl_union_rng_chk - Perform union operation between two range-range
+ *				checker buffers
+ * @dst_buf: pointer to destination range checker buffer
+ * @src_buf: pointer to source range checker buffer
+ *
+ * Do the union between dst_buf and src_buf range checker buffer, and save the
+ * result back to dst_buf.
+ *
+ * Return: 0 on success, negative on error
+ */
+static int
+ice_flow_acl_union_rng_chk(struct ice_aqc_acl_profile_ranges *dst_buf,
+			   struct ice_aqc_acl_profile_ranges *src_buf)
+{
+	if (!dst_buf || !src_buf)
+		return -EINVAL;
+
+	for (int i = 0; i < ICE_AQC_ACL_PROF_RANGES_NUM_CFG; i++) {
+		struct ice_acl_rng_data *cfg_data = NULL, *in_data;
+		bool will_populate = false;
+
+		in_data = &src_buf->checker_cfg[i];
+
+		if (!in_data->mask)
+			break;
+
+		for (int j = 0; j < ICE_AQC_ACL_PROF_RANGES_NUM_CFG; j++) {
+			cfg_data = &dst_buf->checker_cfg[j];
+
+			if (!cfg_data->mask ||
+			    !memcmp(cfg_data, in_data,
+				    sizeof(struct ice_acl_rng_data))) {
+				will_populate = true;
+				break;
+			}
+		}
+
+		if (will_populate) {
+			memcpy(cfg_data, in_data,
+			       sizeof(struct ice_acl_rng_data));
+		} else {
+			/* No available slot left to program range checker */
+			return -ENOSPC;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_flow_acl_add_scen_entry_sync - add entry to ACL scenario sync
+ * @hw: pointer to the hardware structure
+ * @prof: pointer to flow profile
+ * @entry: double pointer to the flow entry
+ *
+ * Look at the current added entries in the corresponding ACL scenario and
+ * perform matching logic to see if we want to add/modify/do nothing with this
+ * new entry.
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_flow_acl_add_scen_entry_sync(struct ice_hw *hw,
+					    struct ice_flow_prof *prof,
+					    struct ice_flow_entry **entry)
+{
+	bool do_add_entry, do_rem_entry, do_chg_action, do_chg_rng_chk;
+	struct ice_aqc_acl_profile_ranges query_rng_buf, cfg_rng_buf;
+	struct ice_acl_act_entry *acts = NULL;
+	struct ice_flow_entry *exist;
+	struct ice_flow_entry *e;
+	int err = 0;
+
+	e = *entry;
+
+	do_chg_rng_chk = false;
+	if (e->range_buf) {
+		u8 prof_id = 0;
+
+		err = ice_flow_get_hw_prof(hw, ICE_BLK_ACL, prof->id, &prof_id);
+		if (err)
+			return err;
+
+		/* Query the current range-checker value in FW */
+		err = ice_query_acl_prof_ranges(hw, prof_id, &query_rng_buf,
+						NULL);
+		if (err)
+			return err;
+		memcpy(&cfg_rng_buf, &query_rng_buf,
+		       sizeof(struct ice_aqc_acl_profile_ranges));
+
+		/* Generate the new range-checker value */
+		err = ice_flow_acl_union_rng_chk(&cfg_rng_buf, e->range_buf);
+		if (err)
+			return err;
+
+		/* Reconfigure the range check if the buffer is changed. */
+		do_chg_rng_chk = false;
+		if (memcmp(&query_rng_buf, &cfg_rng_buf,
+			   sizeof(struct ice_aqc_acl_profile_ranges))) {
+			err = ice_prog_acl_prof_ranges(hw, prof_id,
+						       &cfg_rng_buf, NULL);
+			if (err)
+				return err;
+
+			do_chg_rng_chk = true;
+		}
+	}
+
+	/* Figure out if we want to (change the ACL action) and/or
+	 * (Add the new ACL entry) and/or (Remove the current ACL entry)
+	 */
+	exist = ice_flow_acl_find_scen_entry_cond(prof, e, &do_chg_action,
+						  &do_add_entry, &do_rem_entry);
+
+	if (do_rem_entry) {
+		err = ice_flow_rem_entry_sync(hw, ICE_BLK_ACL, exist);
+		if (err)
+			return err;
+	}
+
+	/* Prepare the result action buffer */
+	acts = kzalloc_objs(*acts, e->acts_cnt);
+	if (!acts)
+		return -ENOMEM;
+
+	for (int i = 0; i < e->acts_cnt; i++)
+		memcpy(&acts[i], &e->acts[i].data.acl_act,
+		       sizeof(struct ice_acl_act_entry));
+
+	if (do_add_entry) {
+		enum ice_acl_entry_prio prio;
+		u8 *keys, *inverts;
+		u16 entry_idx;
+
+		keys = (u8 *)e->entry;
+		inverts = keys + (e->entry_sz / 2);
+		prio = ice_flow_acl_convert_to_acl_prio(e->priority);
+
+		err = ice_acl_add_entry(hw, prof->cfg.scen, prio, keys,
+					inverts, acts, e->acts_cnt,
+					&entry_idx);
+		if (err)
+			goto out;
+
+		e->scen_entry_idx = entry_idx;
+		list_add(&e->l_entry, &prof->entries);
+	} else {
+		if (do_chg_action) {
+			/* For the action memory info, update the SW's copy of
+			 * exist entry with e's action memory info
+			 */
+			kfree(exist->acts);
+			exist->acts = kzalloc_objs(*exist->acts, e->acts_cnt);
+			if (!exist->acts) {
+				exist->acts_cnt = 0;
+				err = -ENOMEM;
+				goto out;
+			}
+			exist->acts_cnt = e->acts_cnt;
+
+			memcpy(exist->acts, e->acts,
+			       sizeof(struct ice_flow_action) * e->acts_cnt);
+
+			err = ice_acl_prog_act(hw, prof->cfg.scen, acts,
+					       e->acts_cnt,
+					       exist->scen_entry_idx);
+			if (err)
+				goto out;
+		}
+
+		if (do_chg_rng_chk) {
+			/* In this case, we want to update the range checker
+			 * information of the exist entry
+			 */
+			err = ice_flow_acl_union_rng_chk(exist->range_buf,
+							 e->range_buf);
+			if (err)
+				goto out;
+		}
+
+		/* As we don't add the new entry to our SW DB, deallocate its
+		 * memories, and return the exist entry to the caller
+		 */
+		kfree(e->entry);
+		kfree(e->range_buf);
+		kfree(e->acts);
+		devm_kfree(ice_hw_to_dev(hw), e);
+		*entry = exist;
+	}
+out:
+	kfree(acts);
+
+	return err;
+}
+
+/**
+ * ice_flow_acl_add_scen_entry - Add entry to ACL scenario
+ * @hw: pointer to the hardware structure
+ * @prof: pointer to flow profile
+ * @e: double pointer to the flow entry
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_flow_acl_add_scen_entry(struct ice_hw *hw,
+				       struct ice_flow_prof *prof,
+				       struct ice_flow_entry **e)
+{
+	int err;
+
+	mutex_lock(&prof->entries_lock);
+	err = ice_flow_acl_add_scen_entry_sync(hw, prof, e);
+	mutex_unlock(&prof->entries_lock);
+
+	return err;
+}
+
 /**
  * ice_flow_add_entry - Add a flow entry
  * @hw: pointer to the HW struct
@@ -2624,6 +3010,10 @@ int ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 						 acts_cnt);
 		if (status)
 			goto out;
+
+		status = ice_flow_acl_add_scen_entry(hw, prof, &e);
+		if (status)
+			goto out;
 		break;
 	default:
 		status = -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d11395fdd8b8..32e5af3bd893 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1118,7 +1118,7 @@ static void ice_set_fd_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 	    vsi->type != ICE_VSI_VF && vsi->type != ICE_VSI_CHNL)
 		return;
 
-	val = ICE_AQ_VSI_PROP_FLOW_DIR_VALID;
+	val = ICE_AQ_VSI_PROP_FLOW_DIR_VALID | ICE_AQ_VSI_PROP_ACL_VALID;
 	ctxt->info.valid_sections |= cpu_to_le16(val);
 	dflt_q = 0;
 	dflt_q_group = 0;
@@ -1144,6 +1144,14 @@ static void ice_set_fd_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 	/* priority of the default qindex action */
 	val |= FIELD_PREP(ICE_AQ_VSI_FD_DEF_PRIORITY_M, dflt_q_prio);
 	ctxt->info.fd_report_opt = cpu_to_le16(val);
+
+#define ICE_ACL_RX_PROF_MISS_CNTR	\
+	FIELD_PREP_CONST(ICE_AQ_VSI_ACL_DEF_RX_PROF_M, 2)
+#define ICE_ACL_RX_TBL_MISS_CNTR	\
+	FIELD_PREP_CONST(ICE_AQ_VSI_ACL_DEF_RX_TABLE_M, 3)
+
+	val = ICE_ACL_RX_PROF_MISS_CNTR | ICE_ACL_RX_TBL_MISS_CNTR;
+	ctxt->info.acl_def_act = cpu_to_le16(val);
 }
 
 /**
-- 
2.49.0

