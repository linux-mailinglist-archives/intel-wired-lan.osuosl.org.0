Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALoiCrfiAWq1lwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 16:07:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 387D950FB7A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 16:07:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF63A416DE;
	Mon, 11 May 2026 14:07:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gQfvVAa8dUsY; Mon, 11 May 2026 14:07:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 124B8416E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778508465;
	bh=digosBPyVnOMBKJhqyCWanHZKQRt8SHPjPPUfIJ082E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9svPDl/30aFScCDtEGXw2t1cyXGvsi0uFMM3Y/1vL1Re70IHROO63BNBMJKst9tWR
	 teRLjZEU5JdxiTpjLEg/Jmws2iKkJKR6atAxlk1zN40n8UqhjN3cx9uxR7FY9MWNVl
	 8zbz50as3fR14uTTaacEsqrT6bUZSoSD5umFAPFDBOu5CqgP23hcBpw27/BWgqVVY4
	 BniJDbarKtXrW4Pau/CsA/497B14946k90xj3DN96sOXjvuZnVTLIyXAYwUmNgT15n
	 /j6/oebjjykbOPzvA+n8I6jzw+vIriZ44CfwK1JDAKb16AxiBVu8e6HaFuGDIBT0Iw
	 485BSRxycCoJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 124B8416E4;
	Mon, 11 May 2026 14:07:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 489F9173
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2ECE9416DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5FvjW8zRIrdB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 14:07:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D04F7416C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D04F7416C0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D04F7416C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 14:07:40 +0000 (UTC)
X-CSE-ConnectionGUID: xaUDnLO9Te+OUJhTEzGCjg==
X-CSE-MsgGUID: FsB1p6r/QCO1d5ja9klOTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="83265232"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="83265232"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 07:07:40 -0700
X-CSE-ConnectionGUID: BD5xulETTzCmA4AcEVzNCg==
X-CSE-MsgGUID: SYxycSb4SoeQgVr+naBMvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="237685837"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 11 May 2026 07:07:35 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D0DE32FC52;
 Mon, 11 May 2026 15:07:33 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Chinh Cao <chinh.t.cao@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 11 May 2026 15:07:06 +0200
Message-ID: <20260511130710.38801-8-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260511130710.38801-1-marcin.szycik@linux.intel.com>
References: <20260511130710.38801-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778508460; x=1810044460;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ftnAl0efKy+Ad/ayxkwRNbkVYFYg+VTPM1OQvu86LK0=;
 b=ncS2ZE6iiwk44bKIhrqJ2uyWpNuQ1hjGy/vIJA0LaIG57vQT2kogIRhK
 9zs+lnfBGm2buvtQUrhl8BmFXAo8NSXGFyue9kGbgO90mbuLQQfGeiAFi
 PJgxBKrPJDKCgj3DGnK4Pqtf7k1z7xwHkvw1FP2VySTZvonvAHo9QMSOz
 gUIYQLEHxGGureLOBtTpVMgGhQPKWYApT/CErNO6AZGNt75p01Nl+0R3P
 zY3OwJdS5g8F17mgsx3zNtosBVxQ0kdXLjutT2yMzvKAW5iliSpW+ZjFU
 oSnraZ01BDBBfilHnhQD0SjJYy03k/jZzqA3XhVQgX+NCQ17F/gLV/kJt
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ncS2ZE6i
Subject: [Intel-wired-lan] [PATCH iwl-next v3 07/10] ice: create ACL entry
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
X-Rspamd-Queue-Id: 387D950FB7A
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
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

From: Real Valiquette <real.valiquette@intel.com>

Create an ACL entry for the mask match data and set the desired action.
Generate and program the associated extraction sequence.

Co-developed-by: Chinh Cao <chinh.t.cao@intel.com>
Signed-off-by: Chinh Cao <chinh.t.cao@intel.com>
Signed-off-by: Real Valiquette <real.valiquette@intel.com>
Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v3:
* ice_acl_add_rule_ethtool(): add a check against illegal values of
  hw_prof->cnt
* ice_flow_acl_check_actions(): check counter action type with
  ice_flow_acl_is_cntr_act(). Previously only ICE_FLOW_ACT_FWD_QUEUE was
  being accepted in the first loop, leading to an error if other counter
  types were used
* ice_flow_acl_frmt_entry(): set err variable when alloc failed to
  return correct status
* ice_flow_acl_frmt_entry(): set range_buf = NULL if !range to avoid
  double free in error path
* ice_flow_acl_frmt_entry_range(): introduce a temporary variable
  (offset_val) to copy data from buffer with offset. Reading it with
  cast would lead to byte swap on big endian
* ice_flow_acl_free_act_cntr(): flip condition in loop to reduce indent
v2:
* Fix invalid profile ID passed to ice_flow_add_entry() in
  ice_acl_add_rule_ethtool()
* Fix uninitialized cntrs.amount field in ice_aq_dealloc_acl_cntrs()
* Make ice_flow_acl_is_prof_in_use() more readable and return bool
* Add ice_flow_acl_is_cntr_act() helper
* Remove prof_id initialization when it's immediately set by
  ice_flow_get_hw_prof() anyway
* Check if src overflows in ice_flow_acl_set_xtrct_seq_fld()
* Adjust error codes in ice_flow_acl_check_actions() to more reasonable
  ones
* Add ICE_RX_PKT_DROP_DROP instead of using a magic number
* Reverse condition to decrease indent level in ice_aq_alloc_acl_cntrs()
* Get rid of useless variable in ice_acl_add_rule_ethtool()
* Use plain alloc and kfree instead of devm_ for ice_ntuple_fltr in
  ice_acl_add_rule_ethtool(), ice_flow_entry::entry and
  ice_flow_entry::range_buf
* Use plain kmemdup and kfree instead of devm_ for ice_flow_entry::acts
* ice_flow_entry members are being deallocated on device unload via
  ice_deinit_fdir -> ice_vsi_manage_fdir -> ice_fdir_rem_flow ->
  ice_fdir_erase_flow_from_hw -> ice_flow_rem_entry ->
  ice_flow_rem_entry_sync
* Add missing entry->range_buf and entry->acts dealloc in
  ice_flow_add_entry() unroll
* Remove redundant checks from ice_flow_acl_frmt_entry() unroll
---
 drivers/net/ethernet/intel/ice/ice.h          |   3 +
 drivers/net/ethernet/intel/ice/ice_acl.h      |  24 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 123 +++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_flow.h     |   9 +-
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_acl.c      | 183 +++++
 drivers/net/ethernet/intel/ice/ice_acl_main.c |  67 +-
 .../ethernet/intel/ice/ice_ethtool_ntuple.c   |  37 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   5 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     | 641 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |   2 +-
 drivers/net/ethernet/intel/ice/virt/fdir.c    |   4 +-
 13 files changed, 1064 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index d10e67d8bf02..9e6643931022 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1025,6 +1025,9 @@ int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
 int ice_del_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
 int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd);
 u32 ice_ntuple_get_max_fltr_cnt(struct ice_hw *hw);
+int ice_ntuple_set_input_set(struct ice_vsi *vsi, enum ice_block blk,
+			     struct ethtool_rx_flow_spec *fsp,
+			     struct ice_ntuple_fltr *input);
 int ice_ntuple_l4_proto_to_port(enum ice_flow_seg_hdr l4_proto,
 				enum ice_flow_field *src_port,
 				enum ice_flow_field *dst_port);
diff --git a/drivers/net/ethernet/intel/ice/ice_acl.h b/drivers/net/ethernet/intel/ice/ice_acl.h
index d4e6f0e25a12..3a4adcf368cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl.h
+++ b/drivers/net/ethernet/intel/ice/ice_acl.h
@@ -99,6 +99,20 @@ struct ice_acl_alloc_tbl {
 	} buf;
 };
 
+/* Input and output params for [de]allocate_acl_counters */
+struct ice_acl_cntrs {
+	u8 amount;
+	u8 type;
+	u8 bank;
+
+	/* first/last:
+	 * Output in case of alloc_acl_counters
+	 * Input in case of deallocate_acl_counters
+	 */
+	u16 first_cntr;
+	u16 last_cntr;
+};
+
 int ice_acl_create_tbl(struct ice_hw *hw, struct ice_acl_tbl_params *params);
 int ice_acl_destroy_tbl(struct ice_hw *hw);
 int ice_acl_create_scen(struct ice_hw *hw, u16 match_width, u16 num_entries,
@@ -113,6 +127,16 @@ int ice_aq_program_acl_entry(struct ice_hw *hw, u8 tcam_idx, u16 entry_idx,
 			     struct ice_sq_cd *cd);
 int ice_aq_program_actpair(struct ice_hw *hw, u8 act_mem_idx, u16 act_entry_idx,
 			   struct ice_aqc_actpair *buf, struct ice_sq_cd *cd);
+int ice_prgm_acl_prof_xtrct(struct ice_hw *hw, u8 prof_id,
+			    struct ice_aqc_acl_prof_generic_frmt *buf,
+			    struct ice_sq_cd *cd);
+int ice_query_acl_prof(struct ice_hw *hw, u8 prof_id,
+		       struct ice_aqc_acl_prof_generic_frmt *buf,
+		       struct ice_sq_cd *cd);
+int ice_aq_alloc_acl_cntrs(struct ice_hw *hw, struct ice_acl_cntrs *cntrs,
+			   struct ice_sq_cd *cd);
+int ice_aq_dealloc_acl_cntrs(struct ice_hw *hw, struct ice_acl_cntrs *cntrs,
+			     struct ice_sq_cd *cd);
 int ice_aq_alloc_acl_scen(struct ice_hw *hw, u16 *scen_id,
 			  struct ice_aqc_acl_scen *buf, struct ice_sq_cd *cd);
 int ice_aq_dealloc_acl_scen(struct ice_hw *hw, u16 scen_id,
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 451e8d882352..04cb3b93daf1 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2152,6 +2152,67 @@ struct ice_aqc_acl_scen {
 	u8 act_mem_cfg[ICE_AQC_MAX_ACTION_MEMORIES];
 };
 
+/* Allocate ACL counters (indirect 0x0C16) */
+struct ice_aqc_acl_alloc_counters {
+	/* Amount of contiguous counters requested. Min value is 1 and
+	 * max value is 255
+	 */
+	u8 counter_amount;
+
+	/* Counter type: 'single counter' which can be configured to count
+	 * either bytes or packets
+	 */
+#define ICE_AQC_ACL_CNT_TYPE_SINGLE	0x0
+
+	/* Counter type: 'counter pair' which counts number of bytes and number
+	 * of packets.
+	 */
+#define ICE_AQC_ACL_CNT_TYPE_DUAL	0x1
+	/* requested counter type, single/dual */
+	u8 counters_type;
+
+	/* counter bank allocation shall be 0-3 for 'byte or packet counter' */
+#define ICE_AQC_ACL_MAX_CNT_SINGLE	0x3
+	/* counter bank allocation shall be 0-1 for 'byte and packet counter
+	 * dual'
+	 */
+#define ICE_AQC_ACL_MAX_CNT_DUAL	0x1
+	/* requested counter bank allocation */
+	u8 bank_alloc;
+
+	u8 reserved;
+
+	union {
+		/* Applicable only in case of command */
+		struct {
+			u8 reserved[12];
+		} cmd;
+		/* Applicable only in case of response */
+#define ICE_AQC_ACL_ALLOC_CNT_INVAL	0xFFFF
+		struct {
+			/* Index of first allocated counter. 0xFFFF in case
+			 * of unsuccessful allocation
+			 */
+			__le16 first_counter;
+			/* Index of last allocated counter. 0xFFFF in case
+			 * of unsuccessful allocation
+			 */
+			__le16 last_counter;
+			u8 rsvd[8];
+		} resp;
+	} ops;
+};
+
+/* De-allocate ACL counters (direct 0x0C17) */
+struct ice_aqc_acl_dealloc_counters {
+	__le16 first_counter;
+	__le16 last_counter;
+	/* single/dual */
+	u8 counters_type;
+	u8 bank_alloc;
+	u8 reserved[10];
+};
+
 /* Program ACL actionpair (indirect 0x0C1C) */
 struct ice_aqc_acl_actpair {
 	u8 act_mem_index;
@@ -2163,6 +2224,8 @@ struct ice_aqc_acl_actpair {
 	__le32 addr_low;
 };
 
+#define ICE_RX_PKT_DROP_DROP 0x1
+
 /* Input buffer format for program/query action-pair admin command */
 struct ice_acl_act_entry {
 	/* Action priority, values must be between 0..7 */
@@ -2179,13 +2242,59 @@ struct ice_aqc_actpair {
 	struct ice_acl_act_entry act[ICE_ACL_NUM_ACT_PER_ACT_PAIR];
 };
 
-/* The first byte of the byte selection base is reserved to keep the
- * first byte of the field vector where the packet direction info is
- * available. Thus we should start at index 1 of the field vector to
- * map its entries to the byte selection base.
- */
+	/* The first byte of the byte selection base is reserved to keep the
+	 * first byte of the field vector where the packet direction info is
+	 * available. Thus we should start at index 1 of the field vector to
+	 * map its entries to the byte selection base.
+	 */
 #define ICE_AQC_ACL_PROF_BYTE_SEL_START_IDX	1
+
 #define ICE_AQC_ACL_PROF_BYTE_SEL_ELEMS		30
+#define ICE_AQC_ACL_PROF_WORD_SEL_ELEMS		32
+#define ICE_AQC_ACL_PROF_DWORD_SEL_ELEMS	15
+#define ICE_AQC_ACL_PROF_PF_SCEN_NUM_ELEMS	8
+
+/* Generic format used to describe either input or response buffer
+ * for admin commands related to ACL profile
+ */
+struct ice_aqc_acl_prof_generic_frmt {
+	/* In each byte:
+	 * Bit 0..5 = Byte selection for the byte selection base from the
+	 * extracted fields (expressed as byte offset in extracted fields).
+	 * Applicable values are 0..63
+	 * Bit 6..7 = Reserved
+	 */
+	u8 byte_selection[ICE_AQC_ACL_PROF_BYTE_SEL_ELEMS];
+	/* In each byte:
+	 * Bit 0..4 = Word selection for the word selection base from the
+	 * extracted fields (expressed as word offset in extracted fields).
+	 * Applicable values are 0..31
+	 * Bit 5..7 = Reserved
+	 */
+	u8 word_selection[ICE_AQC_ACL_PROF_WORD_SEL_ELEMS];
+	/* In each byte:
+	 * Bit 0..3 = Double word selection for the double-word selection base
+	 * from the extracted fields (expressed as double-word offset in
+	 * extracted fields).
+	 * Applicable values are 0..15
+	 * Bit 4..7 = Reserved
+	 */
+	u8 dword_selection[ICE_AQC_ACL_PROF_DWORD_SEL_ELEMS];
+	/* Scenario numbers for individual Physical Function's */
+	u8 pf_scenario_num[ICE_AQC_ACL_PROF_PF_SCEN_NUM_ELEMS];
+};
+
+/* Program ACL profile extraction (indirect 0x0C1D)
+ * Program ACL profile ranges (indirect 0x0C1E)
+ * Query ACL profile (indirect 0x0C21)
+ * Query ACL profile ranges (indirect 0x0C22)
+ */
+struct ice_aqc_acl_profile {
+	u8 profile_id; /* Programmed/Updated profile ID */
+	u8 reserved[7];
+	__le32 addr_high;
+	__le32 addr_low;
+};
 
 /* Input buffer format for program profile extraction admin command and
  * response buffer format for query profile admin command is as defined
@@ -2920,9 +3029,13 @@ enum ice_adminq_opc {
 	ice_aqc_opc_dealloc_acl_tbl			= 0x0C11,
 	ice_aqc_opc_alloc_acl_scen			= 0x0C14,
 	ice_aqc_opc_dealloc_acl_scen			= 0x0C15,
+	ice_aqc_opc_alloc_acl_counters			= 0x0C16,
+	ice_aqc_opc_dealloc_acl_counters		= 0x0C17,
 	ice_aqc_opc_update_acl_scen			= 0x0C1B,
 	ice_aqc_opc_program_acl_actpair			= 0x0C1C,
+	ice_aqc_opc_program_acl_prof_extraction		= 0x0C1D,
 	ice_aqc_opc_program_acl_entry			= 0x0C20,
+	ice_aqc_opc_query_acl_prof			= 0x0C21,
 	ice_aqc_opc_query_acl_scen			= 0x0C23,
 
 	/* Tx queue handling commands/events */
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index ee5d9f9c9d53..edb98afe200b 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -8,6 +8,8 @@
 
 #define ICE_FDIR_REG_SET_SIZE	4
 
+int ice_set_key(u8 *key, u16 size, u8 *val, u8 *upd, u8 *dc, u8 *nm, u16 off,
+		u16 len);
 int
 ice_acquire_change_lock(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_change_lock(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index ff6af6589862..53456d48f6ae 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -452,17 +452,23 @@ struct ice_flow_seg_info {
 	struct ice_flow_seg_fld_raw raws[ICE_FLOW_SEG_RAW_FLD_MAX];
 };
 
+#define ICE_FLOW_ACL_MAX_NUM_ACT	2
 /* This structure describes a flow entry, and is tracked only in this file */
 struct ice_flow_entry {
 	struct list_head l_entry;
 
 	u64 id;
 	struct ice_flow_prof *prof;
+	/* Action list */
+	struct ice_flow_action *acts;
 	/* Flow entry's content */
 	void *entry;
+	/* Range buffer (For ACL only) */
+	struct ice_aqc_acl_profile_ranges *range_buf;
 	enum ice_flow_priority priority;
 	u16 vsi_handle;
 	u16 entry_sz;
+	u8 acts_cnt;
 };
 
 #define ICE_FLOW_ENTRY_HNDL(e)	((u64)(uintptr_t)e)
@@ -535,7 +541,8 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
 int
 ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 		   u64 entry_id, u16 vsi, enum ice_flow_priority prio,
-		   void *data, u64 *entry_h);
+		   void *data, struct ice_flow_action *acts, u8 acts_cnt,
+		   u64 *entry_h);
 int ice_flow_rem_entry(struct ice_hw *hw, enum ice_block blk, u64 entry_h);
 void
 ice_flow_set_fld(struct ice_flow_seg_info *seg, enum ice_flow_field fld,
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 185672c7e17d..7010afb787c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -312,6 +312,8 @@ enum ice_flex_mdid_pkt_flags {
 enum ice_flex_rx_mdid {
 	ICE_RX_MDID_FLOW_ID_LOWER	= 5,
 	ICE_RX_MDID_FLOW_ID_HIGH,
+	ICE_MDID_RX_PKT_DROP		= 8,
+	ICE_MDID_RX_DST_Q		= 12,
 	ICE_RX_MDID_SRC_VSI		= 19,
 	ICE_RX_MDID_HASH_LOW		= 56,
 	ICE_RX_MDID_HASH_HIGH,
@@ -320,6 +322,7 @@ enum ice_flex_rx_mdid {
 /* Rx/Tx Flag64 packet flag bits */
 enum ice_flg64_bits {
 	ICE_FLG_PKT_DSI		= 0,
+	ICE_FLG_PKT_DIR		= 4,
 	ICE_FLG_EVLAN_x8100	= 14,
 	ICE_FLG_EVLAN_x9100,
 	ICE_FLG_VLAN_x8100,
diff --git a/drivers/net/ethernet/intel/ice/ice_acl.c b/drivers/net/ethernet/intel/ice/ice_acl.c
index 81bddac8d0a2..837adbda14e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl.c
+++ b/drivers/net/ethernet/intel/ice/ice_acl.c
@@ -135,6 +135,189 @@ int ice_aq_program_actpair(struct ice_hw *hw, u8 act_mem_idx, u16 act_entry_idx,
 	return ice_aq_send_cmd(hw, &desc, buf, sizeof(*buf), cd);
 }
 
+/**
+ * ice_acl_prof_aq_send - send ACL profile AQ commands
+ * @hw: pointer to the HW struct
+ * @opc: command opcode
+ * @prof_id: profile ID
+ * @buf: ptr to buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_acl_prof_aq_send(struct ice_hw *hw, u16 opc, u8 prof_id,
+				struct ice_aqc_acl_prof_generic_frmt *buf,
+				struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_profile *cmd;
+	struct libie_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, opc);
+	cmd = libie_aq_raw(&desc);
+	cmd->profile_id = prof_id;
+
+	if (opc == ice_aqc_opc_program_acl_prof_extraction)
+		desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
+
+	return ice_aq_send_cmd(hw, &desc, buf, sizeof(*buf), cd);
+}
+
+/**
+ * ice_prgm_acl_prof_xtrct - program ACL profile extraction sequence
+ * @hw: pointer to the HW struct
+ * @prof_id: profile ID
+ * @buf: ptr to buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Program ACL profile extraction (indirect 0x0C1D)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_prgm_acl_prof_xtrct(struct ice_hw *hw, u8 prof_id,
+			    struct ice_aqc_acl_prof_generic_frmt *buf,
+			    struct ice_sq_cd *cd)
+{
+	return ice_acl_prof_aq_send(hw, ice_aqc_opc_program_acl_prof_extraction,
+				    prof_id, buf, cd);
+}
+
+/**
+ * ice_query_acl_prof - query ACL profile
+ * @hw: pointer to the HW struct
+ * @prof_id: profile ID
+ * @buf: ptr to buffer (which will contain response of this command)
+ * @cd: pointer to command details structure or NULL
+ *
+ * Query ACL profile (indirect 0x0C21)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_query_acl_prof(struct ice_hw *hw, u8 prof_id,
+		       struct ice_aqc_acl_prof_generic_frmt *buf,
+		       struct ice_sq_cd *cd)
+{
+	return ice_acl_prof_aq_send(hw, ice_aqc_opc_query_acl_prof, prof_id,
+				    buf, cd);
+}
+
+/**
+ * ice_aq_acl_cntrs_chk_params - Checks ACL counter parameters
+ * @cntrs: ptr to buffer describing input and output params
+ *
+ * This function checks the counter bank range for counter type and returns
+ * success or failure.
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_aq_acl_cntrs_chk_params(struct ice_acl_cntrs *cntrs)
+{
+	int err = 0;
+
+	if (!cntrs->amount)
+		return -EINVAL;
+
+	switch (cntrs->type) {
+	case ICE_AQC_ACL_CNT_TYPE_SINGLE:
+		/* Single counter type - configured to count either bytes
+		 * or packets, the valid values for byte or packet counters
+		 * shall be 0-3.
+		 */
+		if (cntrs->bank > ICE_AQC_ACL_MAX_CNT_SINGLE)
+			err = -EIO;
+		break;
+	case ICE_AQC_ACL_CNT_TYPE_DUAL:
+		/* Pair counter type - counts number of bytes and packets
+		 * The valid values for byte/packet counter duals shall be 0-1
+		 */
+		if (cntrs->bank > ICE_AQC_ACL_MAX_CNT_DUAL)
+			err = -EIO;
+		break;
+	default:
+		err = -EINVAL;
+	}
+
+	return err;
+}
+
+/**
+ * ice_aq_alloc_acl_cntrs - allocate ACL counters
+ * @hw: pointer to the HW struct
+ * @cntrs: ptr to buffer describing input and output params
+ * @cd: pointer to command details structure or NULL
+ *
+ * Allocate ACL counters (indirect 0x0C16). This function attempts to
+ * allocate a contiguous block of counters. In case of failures, caller can
+ * attempt to allocate a smaller chunk. The allocation is considered
+ * unsuccessful if returned counter value is invalid. In this case it returns
+ * an error otherwise success.
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_aq_alloc_acl_cntrs(struct ice_hw *hw, struct ice_acl_cntrs *cntrs,
+			   struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_alloc_counters *cmd;
+	u16 first_cntr, last_cntr;
+	struct libie_aq_desc desc;
+	int err;
+
+	err = ice_aq_acl_cntrs_chk_params(cntrs);
+	if (err)
+		return err;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_alloc_acl_counters);
+	cmd = libie_aq_raw(&desc);
+	cmd->counter_amount = cntrs->amount;
+	cmd->counters_type = cntrs->type;
+	cmd->bank_alloc = cntrs->bank;
+
+	err = ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+	if (err)
+		return err;
+
+	first_cntr = le16_to_cpu(cmd->ops.resp.first_counter);
+	last_cntr = le16_to_cpu(cmd->ops.resp.last_counter);
+
+	if (first_cntr == ICE_AQC_ACL_ALLOC_CNT_INVAL ||
+	    last_cntr == ICE_AQC_ACL_ALLOC_CNT_INVAL)
+		return -EIO;
+
+	cntrs->first_cntr = first_cntr;
+	cntrs->last_cntr = last_cntr;
+
+	return 0;
+}
+
+/**
+ * ice_aq_dealloc_acl_cntrs - deallocate ACL counters
+ * @hw: pointer to the HW struct
+ * @cntrs: ptr to buffer describing input and output params
+ * @cd: pointer to command details structure or NULL
+ *
+ * De-allocate ACL counters (direct 0x0C17)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_aq_dealloc_acl_cntrs(struct ice_hw *hw, struct ice_acl_cntrs *cntrs,
+			     struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_dealloc_counters *cmd;
+	struct libie_aq_desc desc;
+	int err;
+
+	err = ice_aq_acl_cntrs_chk_params(cntrs);
+	if (err)
+		return err;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_dealloc_acl_counters);
+	cmd = libie_aq_raw(&desc);
+	cmd->first_counter = cpu_to_le16(cntrs->first_cntr);
+	cmd->last_counter = cpu_to_le16(cntrs->last_cntr);
+	cmd->counters_type = cntrs->type;
+	cmd->bank_alloc = cntrs->bank;
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+}
+
 /**
  * ice_aq_alloc_acl_scen - allocate ACL scenario
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_acl_main.c b/drivers/net/ethernet/intel/ice/ice_acl_main.c
index 6f40205e27f9..9c7a1e1686c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_acl_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_acl_main.c
@@ -5,6 +5,9 @@
 #include "ice_lib.h"
 #include "ice_acl_main.h"
 
+/* Default ACL Action priority */
+#define ICE_ACL_ACT_PRIO	3
+
 /* Number of action */
 #define ICE_ACL_NUM_ACT		1
 
@@ -219,12 +222,74 @@ static int ice_acl_prof_add_ethtool(struct ice_pf *pf,
  */
 int ice_acl_add_rule_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 {
+	struct ice_flow_action acts[ICE_ACL_NUM_ACT];
 	struct ethtool_rx_flow_spec *fsp;
+	struct ice_fd_hw_prof *hw_prof;
+	struct ice_ntuple_fltr *input;
+	enum ice_fltr_ptype flow;
+	struct device *dev;
 	struct ice_pf *pf;
+	struct ice_hw *hw;
+	u64 entry_h = 0;
+	int err;
 
 	pf = vsi->back;
+	hw = &pf->hw;
+	dev = ice_pf_to_dev(pf);
 
 	fsp = (struct ethtool_rx_flow_spec *)&cmd->fs;
 
-	return ice_acl_prof_add_ethtool(pf, fsp);
+	err = ice_acl_prof_add_ethtool(pf, fsp);
+	if (err)
+		return err;
+
+	/* Add new rule */
+	input = kzalloc_obj(*input);
+	if (!input)
+		return -ENOMEM;
+
+	err = ice_ntuple_set_input_set(vsi, ICE_BLK_ACL, fsp, input);
+	if (err)
+		goto free_input;
+
+	memset(&acts, 0, sizeof(acts));
+	if (fsp->ring_cookie == RX_CLS_FLOW_DISC) {
+		acts[0].type = ICE_FLOW_ACT_DROP;
+		acts[0].data.acl_act.mdid = ICE_MDID_RX_PKT_DROP;
+		acts[0].data.acl_act.prio = ICE_ACL_ACT_PRIO;
+		acts[0].data.acl_act.value = cpu_to_le16(ICE_RX_PKT_DROP_DROP);
+	} else {
+		acts[0].type = ICE_FLOW_ACT_FWD_QUEUE;
+		acts[0].data.acl_act.mdid = ICE_MDID_RX_DST_Q;
+		acts[0].data.acl_act.prio = ICE_ACL_ACT_PRIO;
+		acts[0].data.acl_act.value = cpu_to_le16(input->q_index);
+	}
+
+	flow = ice_ethtool_flow_to_fltr(fsp->flow_type & ~FLOW_EXT);
+	hw_prof = hw->acl_prof[flow];
+
+	if (hw_prof->cnt < 0 || hw_prof->cnt >= ICE_MAX_FDIR_VSI_PER_FILTER) {
+		err = -ERANGE;
+		goto free_input;
+	}
+
+	err = ice_flow_add_entry(hw, ICE_BLK_ACL, hw_prof->prof_id[0],
+				 fsp->location, vsi->idx, ICE_FLOW_PRIO_NORMAL,
+				 input, acts, ICE_ACL_NUM_ACT, &entry_h);
+	if (err) {
+		dev_err(dev, "Could not add flow entry %d\n", flow);
+		goto free_input;
+	}
+
+	if (!hw_prof->cnt || vsi->idx != hw_prof->vsi_h[hw_prof->cnt - 1]) {
+		hw_prof->vsi_h[hw_prof->cnt] = vsi->idx;
+		hw_prof->entry_h[hw_prof->cnt++][0] = entry_h;
+	}
+
+	return 0;
+
+free_input:
+	kfree(input);
+
+	return err;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
index f0e14bac2539..859e69d676e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
@@ -473,7 +473,7 @@ void ice_fdir_replay_flows(struct ice_hw *hw)
 							 prof->vsi_h[0],
 							 prof->vsi_h[j],
 							 prio, prof->fdir_seg,
-							 &entry_h);
+							 NULL, 0, &entry_h);
 				if (err) {
 					dev_err(ice_hw_to_dev(hw), "Could not replay Flow Director, flow type %d\n",
 						flow);
@@ -706,12 +706,12 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 		return err;
 	err = ice_flow_add_entry(hw, ICE_BLK_FD, prof->id, main_vsi->idx,
 				 main_vsi->idx, ICE_FLOW_PRIO_NORMAL,
-				 seg, &entry1_h);
+				 seg, NULL, 0, &entry1_h);
 	if (err)
 		goto err_prof;
 	err = ice_flow_add_entry(hw, ICE_BLK_FD, prof->id, main_vsi->idx,
 				 ctrl_vsi->idx, ICE_FLOW_PRIO_NORMAL,
-				 seg, &entry2_h);
+				 seg, NULL, 0, &entry2_h);
 	if (err)
 		goto err_entry;
 
@@ -735,7 +735,7 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 		vsi_h = main_vsi->tc_map_vsi[idx]->idx;
 		err = ice_flow_add_entry(hw, ICE_BLK_FD, prof->id,
 					 main_vsi->idx, vsi_h,
-					 ICE_FLOW_PRIO_NORMAL, seg,
+					 ICE_FLOW_PRIO_NORMAL, seg, NULL, 0,
 					 &entry1_h);
 		if (err) {
 			dev_err(dev, "Could not add Channel VSI %d to flow group\n",
@@ -1962,28 +1962,36 @@ ice_update_ring_dest_vsi(struct ice_vsi *vsi, u16 *dest_vsi, u32 *ring)
 }
 
 /**
- * ice_ntuple_set_input_set - Set the input set for Flow Director
+ * ice_ntuple_set_input_set - Set the input set for specified block
  * @vsi: pointer to target VSI
+ * @blk: filter block to configure
  * @fsp: pointer to ethtool Rx flow specification
  * @input: filter structure
  *
  * Return: 0 on success, negative on failure
  */
-static int
-ice_ntuple_set_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
-			 struct ice_ntuple_fltr *input)
+int ice_ntuple_set_input_set(struct ice_vsi *vsi, enum ice_block blk,
+			     struct ethtool_rx_flow_spec *fsp,
+			     struct ice_ntuple_fltr *input)
 {
 	s16 q_index = ICE_FDIR_NO_QUEUE_IDX;
+	int flow_type, flow_mask;
 	u16 orig_q_index = 0;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
-	int flow_type;
 	u16 dest_vsi;
 	u8 dest_ctl;
 
 	if (!vsi || !fsp || !input)
 		return -EINVAL;
 
+	if (blk == ICE_BLK_FD)
+		flow_mask = FLOW_EXT;
+	else if (blk == ICE_BLK_ACL)
+		flow_mask = FLOW_MAC_EXT;
+	else
+		return -EINVAL;
+
 	pf = vsi->back;
 	hw = &pf->hw;
 
@@ -1995,7 +2003,8 @@ ice_ntuple_set_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
 		u8 vf = ethtool_get_flow_spec_ring_vf(fsp->ring_cookie);
 
 		if (vf) {
-			dev_err(ice_pf_to_dev(pf), "Failed to add filter. Flow director filters are not supported on VF queues.\n");
+			dev_err(ice_pf_to_dev(pf), "Failed to add filter. %s filters are not supported on VF queues.\n",
+				blk == ICE_BLK_FD ? "Flow Director" : "ACL");
 			return -EINVAL;
 		}
 
@@ -2010,7 +2019,7 @@ ice_ntuple_set_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
 
 	input->fltr_id = fsp->location;
 	input->q_index = q_index;
-	flow_type = fsp->flow_type & ~FLOW_EXT;
+	flow_type = fsp->flow_type & ~flow_mask;
 
 	/* Record the original queue index as specified by user.
 	 * with channel configuration 'q_index' becomes relative
@@ -2064,9 +2073,9 @@ ice_ntuple_set_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
 	case TCP_V6_FLOW:
 	case UDP_V6_FLOW:
 	case SCTP_V6_FLOW:
-		memcpy(input->ip.v6.dst_ip, fsp->h_u.usr_ip6_spec.ip6dst,
+		memcpy(input->ip.v6.dst_ip, fsp->h_u.tcp_ip6_spec.ip6dst,
 		       sizeof(struct in6_addr));
-		memcpy(input->ip.v6.src_ip, fsp->h_u.usr_ip6_spec.ip6src,
+		memcpy(input->ip.v6.src_ip, fsp->h_u.tcp_ip6_spec.ip6src,
 		       sizeof(struct in6_addr));
 		input->ip.v6.dst_port = fsp->h_u.tcp_ip6_spec.pdst;
 		input->ip.v6.src_port = fsp->h_u.tcp_ip6_spec.psrc;
@@ -2184,7 +2193,7 @@ int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	if (!input)
 		return -ENOMEM;
 
-	ret = ice_ntuple_set_input_set(vsi, fsp, input);
+	ret = ice_ntuple_set_input_set(vsi, ICE_BLK_FD, fsp, input);
 	if (ret)
 		goto free_input;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index d255ffcd5c86..92289b97117a 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -235,9 +235,8 @@ static bool ice_bits_max_set(const u8 *mask, u16 size, u16 max)
  *	dc == NULL --> dc mask is all 0's (no don't care bits)
  *	nm == NULL --> nm mask is all 0's (no never match bits)
  */
-static int
-ice_set_key(u8 *key, u16 size, u8 *val, u8 *upd, u8 *dc, u8 *nm, u16 off,
-	    u16 len)
+int ice_set_key(u8 *key, u16 size, u8 *val, u8 *upd, u8 *dc, u8 *nm, u16 off,
+		u16 len)
 {
 	u16 half_size;
 	u16 i;
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index e42367853253..e74751ecfbe6 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1589,22 +1589,170 @@ ice_flow_find_prof_id(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
 	return NULL;
 }
 
+/**
+ * ice_flow_get_hw_prof - return the HW profile for a specific profile ID handle
+ * @hw: pointer to the HW struct
+ * @blk: classification stage
+ * @prof_id: the profile ID handle
+ * @hw_prof_id: pointer to variable to return the HW profile ID
+ *
+ * Return: 0 on success, negative on failure
+ */
+static int ice_flow_get_hw_prof(struct ice_hw *hw, enum ice_block blk,
+				u64 prof_id, u8 *hw_prof_id)
+{
+	struct ice_prof_map *map;
+	int err = -ENOENT;
+
+	mutex_lock(&hw->blk[blk].es.prof_map_lock);
+
+	map = ice_search_prof_id(hw, blk, prof_id);
+	if (map) {
+		*hw_prof_id = map->prof_id;
+		err = 0;
+	}
+
+	mutex_unlock(&hw->blk[blk].es.prof_map_lock);
+
+	return err;
+}
+
+#define ICE_ACL_INVALID_SCEN	0x3f
+
+/**
+ * ice_flow_acl_is_prof_in_use - verify if the profile is associated to any PF
+ * @buf: ACL profile buffer
+ *
+ * Return: true if at least one PF is associated to the given profile
+ */
+static bool
+ice_flow_acl_is_prof_in_use(const struct ice_aqc_acl_prof_generic_frmt *buf)
+{
+	u8 first = buf->pf_scenario_num[0];
+
+	/* If all PF's associated scenarios are all 0 or all
+	 * ICE_ACL_INVALID_SCEN for the given profile, then the profile has not
+	 * been configured yet.
+	 */
+
+	if (first != 0 && first != ICE_ACL_INVALID_SCEN)
+		return true;
+
+	for (int i = 1; i < ICE_AQC_ACL_PROF_PF_SCEN_NUM_ELEMS; i++) {
+		if (buf->pf_scenario_num[i] != first)
+			return true;
+	}
+
+	return false;
+}
+
+/**
+ * ice_flow_acl_is_cntr_act - check if flow action is a counter action
+ * @type: action type
+ *
+ * Return: true if counter action, false otherwise
+ */
+static bool ice_flow_acl_is_cntr_act(enum ice_flow_action_type type)
+{
+	return type == ICE_FLOW_ACT_CNTR_PKT ||
+	       type == ICE_FLOW_ACT_CNTR_BYTES ||
+	       type == ICE_FLOW_ACT_CNTR_PKT_BYTES;
+}
+
+/**
+ * ice_flow_acl_free_act_cntr - Free the ACL rule's actions
+ * @hw: pointer to the hardware structure
+ * @acts: array of actions to be performed on a match
+ * @acts_cnt: number of actions
+ *
+ * Return: 0 on success, negative on failure
+ */
+static int ice_flow_acl_free_act_cntr(struct ice_hw *hw,
+				      struct ice_flow_action *acts, u8 acts_cnt)
+{
+	for (int i = 0; i < acts_cnt; i++) {
+		struct ice_acl_cntrs cntrs = { 0 };
+		int err;
+
+		if (!ice_flow_acl_is_cntr_act(acts[i].type))
+			continue;
+
+		/* amount is unused in the dealloc path but the common
+		 * parameter check routine wants a value set, as zero
+		 * is invalid for the check. Just set it.
+		 */
+		cntrs.amount = 1;
+		cntrs.bank = 0; /* Only bank0 for the moment */
+		cntrs.first_cntr = le16_to_cpu(acts[i].data.acl_act.value);
+		cntrs.last_cntr = le16_to_cpu(acts[i].data.acl_act.value);
+
+		if (acts[i].type == ICE_FLOW_ACT_CNTR_PKT_BYTES)
+			cntrs.type = ICE_AQC_ACL_CNT_TYPE_DUAL;
+		else
+			cntrs.type = ICE_AQC_ACL_CNT_TYPE_SINGLE;
+
+		err = ice_aq_dealloc_acl_cntrs(hw, &cntrs, NULL);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_flow_acl_disassoc_scen - Disassociate the scenario from the profile
+ * @hw: pointer to the hardware structure
+ * @prof: pointer to flow profile
+ *
+ * Disassociate the scenario from the profile for the PF of the VSI.
+ *
+ * Return: 0 on success, negative on failure
+ */
+static int ice_flow_acl_disassoc_scen(struct ice_hw *hw,
+				      struct ice_flow_prof *prof)
+{
+	struct ice_aqc_acl_prof_generic_frmt buf = {};
+	int err = 0;
+	u8 prof_id;
+
+	err = ice_flow_get_hw_prof(hw, ICE_BLK_ACL, prof->id, &prof_id);
+	if (err)
+		return err;
+
+	err = ice_query_acl_prof(hw, prof_id, &buf, NULL);
+	if (err)
+		return err;
+
+	/* Clear scenario for this PF */
+	buf.pf_scenario_num[hw->pf_id] = ICE_ACL_INVALID_SCEN;
+	return ice_prgm_acl_prof_xtrct(hw, prof_id, &buf, NULL);
+}
+
 /**
  * ice_flow_rem_entry_sync - Remove a flow entry
  * @hw: pointer to the HW struct
  * @blk: classification stage
  * @entry: flow entry to be removed
+ *
+ * Return: 0 on success, negative on failure
  */
-static int
-ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block __always_unused blk,
-			struct ice_flow_entry *entry)
+static int ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block blk,
+				   struct ice_flow_entry *entry)
 {
 	if (!entry)
 		return -EINVAL;
 
+	if (blk == ICE_BLK_ACL) {
+		if (entry->acts_cnt && entry->acts)
+			ice_flow_acl_free_act_cntr(hw, entry->acts,
+						   entry->acts_cnt);
+	}
+
 	list_del(&entry->l_entry);
 
-	devm_kfree(ice_hw_to_dev(hw), entry->entry);
+	kfree(entry->entry);
+	kfree(entry->range_buf);
+	kfree(entry->acts);
 	devm_kfree(ice_hw_to_dev(hw), entry);
 
 	return 0;
@@ -1729,6 +1877,13 @@ ice_flow_rem_prof_sync(struct ice_hw *hw, enum ice_block blk,
 		mutex_unlock(&prof->entries_lock);
 	}
 
+	if (blk == ICE_BLK_ACL) {
+		/* Disassociate the scenario from the profile for the PF */
+		status = ice_flow_acl_disassoc_scen(hw, prof);
+		if (status)
+			return status;
+	}
+
 	/* Remove all hardware profiles associated with this flow profile */
 	status = ice_rem_prof(hw, blk, prof->id);
 	if (!status) {
@@ -1741,6 +1896,101 @@ ice_flow_rem_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	return status;
 }
 
+/**
+ * ice_flow_acl_set_xtrct_seq_fld - Populate xtrct seq for single field
+ * @buf: Destination buffer function writes partial xtrct sequence to
+ * @info: Info about field
+ *
+ * Return: 0 on success, negative on failure
+ */
+static int
+ice_flow_acl_set_xtrct_seq_fld(struct ice_aqc_acl_prof_generic_frmt *buf,
+			       struct ice_flow_fld_info *info)
+{
+	u16 src, dst;
+
+	src = info->xtrct.idx * ICE_FLOW_FV_EXTRACT_SZ +
+		info->xtrct.disp / BITS_PER_BYTE;
+	if (src > U8_MAX)
+		return -ERANGE;
+
+	dst = info->entry.val;
+	for (int i = 0; i < info->entry.last; i++)
+		/* HW stores field vector words in LE, convert words back to BE
+		 * so constructed entries will end up in network order
+		 */
+		buf->byte_selection[dst++] = src++ ^ 1;
+
+	return 0;
+}
+
+/**
+ * ice_flow_acl_set_xtrct_seq - Program ACL extraction sequence
+ * @hw: pointer to the hardware structure
+ * @prof: pointer to flow profile
+ *
+ * Return: 0 on success, negative on failure
+ */
+static int ice_flow_acl_set_xtrct_seq(struct ice_hw *hw,
+				      struct ice_flow_prof *prof)
+{
+	struct ice_aqc_acl_prof_generic_frmt buf = {};
+	struct ice_flow_fld_info *info;
+	u8 prof_id = 0;
+	int err;
+
+	err = ice_flow_get_hw_prof(hw, ICE_BLK_ACL, prof->id, &prof_id);
+	if (err)
+		return err;
+
+	err = ice_query_acl_prof(hw, prof_id, &buf, NULL);
+	if (err)
+		return err;
+
+	if (!ice_flow_acl_is_prof_in_use(&buf)) {
+		/* Program the profile dependent configuration. This is done
+		 * only once regardless of the number of PFs using that profile
+		 */
+		memset(&buf, 0, sizeof(buf));
+
+		for (int i = 0; i < prof->segs_cnt; i++) {
+			struct ice_flow_seg_info *seg = &prof->segs[i];
+			u16 j;
+
+			for_each_set_bit(j, (unsigned long *)&seg->match,
+					 ICE_FLOW_FIELD_IDX_MAX) {
+				info = &seg->fields[j];
+
+				if (info->type == ICE_FLOW_FLD_TYPE_RANGE) {
+					buf.word_selection[info->entry.val] =
+						info->xtrct.idx;
+					continue;
+				}
+
+				err = ice_flow_acl_set_xtrct_seq_fld(&buf,
+								     info);
+				if (err)
+					return err;
+			}
+
+			for (j = 0; j < seg->raws_cnt; j++) {
+				info = &seg->raws[j].info;
+				err = ice_flow_acl_set_xtrct_seq_fld(&buf,
+								     info);
+				if (err)
+					return err;
+			}
+		}
+
+		memset(&buf.pf_scenario_num[0], ICE_ACL_INVALID_SCEN,
+		       ICE_AQC_ACL_PROF_PF_SCEN_NUM_ELEMS);
+	}
+
+	/* Update the current PF */
+	buf.pf_scenario_num[hw->pf_id] = (u8)prof->cfg.scen->id;
+	return ice_prgm_acl_prof_xtrct(hw, prof_id, &buf, NULL);
+}
+
 /**
  * ice_flow_assoc_prof - associate a VSI with a flow profile
  * @hw: pointer to the hardware structure
@@ -1758,6 +2008,12 @@ ice_flow_assoc_prof(struct ice_hw *hw, enum ice_block blk,
 	int status = 0;
 
 	if (!test_bit(vsi_handle, prof->vsis)) {
+		if (blk == ICE_BLK_ACL) {
+			status = ice_flow_acl_set_xtrct_seq(hw, prof);
+			if (status)
+				return status;
+		}
+
 		status = ice_add_prof_id_flow(hw, blk,
 					      ice_get_hw_vsi_num(hw,
 								 vsi_handle),
@@ -1957,6 +2213,349 @@ int ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
 	return status;
 }
 
+/**
+ * ice_flow_acl_check_actions - Checks the ACL rule's actions
+ * @hw: pointer to the hardware structure
+ * @acts: array of actions to be performed on a match
+ * @acts_cnt: number of actions
+ * @cnt_alloc: indicates if an ACL counter has been allocated.
+ *
+ * Return: 0 on success, negative on failure
+ */
+static int ice_flow_acl_check_actions(struct ice_hw *hw,
+				      struct ice_flow_action *acts, u8 acts_cnt,
+				      bool *cnt_alloc)
+{
+	DECLARE_BITMAP(dup_check, ICE_AQC_TBL_MAX_ACTION_PAIRS * 2);
+
+	bitmap_zero(dup_check, ICE_AQC_TBL_MAX_ACTION_PAIRS * 2);
+	*cnt_alloc = false;
+
+	if (acts_cnt > ICE_FLOW_ACL_MAX_NUM_ACT)
+		return -ERANGE;
+
+	for (int i = 0; i < acts_cnt; i++) {
+		if (acts[i].type != ICE_FLOW_ACT_NOP &&
+		    acts[i].type != ICE_FLOW_ACT_DROP &&
+		    acts[i].type != ICE_FLOW_ACT_FWD_QUEUE &&
+		    !ice_flow_acl_is_cntr_act(acts[i].type))
+			return -EINVAL;
+
+		/* If the caller want to add two actions of the same type, then
+		 * it is considered invalid configuration.
+		 */
+		if (test_and_set_bit(acts[i].type, dup_check))
+			return -EINVAL;
+	}
+
+	/* Checks if ACL counters are needed. */
+	for (int i = 0; i < acts_cnt; i++) {
+		if (ice_flow_acl_is_cntr_act(acts[i].type)) {
+			struct ice_acl_cntrs cntrs = { 0 };
+			int err;
+
+			cntrs.amount = 1;
+			cntrs.bank = 0; /* Only bank0 for the moment */
+
+			if (acts[i].type == ICE_FLOW_ACT_CNTR_PKT_BYTES)
+				cntrs.type = ICE_AQC_ACL_CNT_TYPE_DUAL;
+			else
+				cntrs.type = ICE_AQC_ACL_CNT_TYPE_SINGLE;
+
+			err = ice_aq_alloc_acl_cntrs(hw, &cntrs, NULL);
+			if (err)
+				return err;
+			/* Counter index within the bank */
+			acts[i].data.acl_act.value =
+						cpu_to_le16(cntrs.first_cntr);
+			*cnt_alloc = true;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_flow_acl_frmt_entry_range - Format an ACL range checker for a given field
+ * @fld: number of the given field
+ * @info: info about field
+ * @range_buf: range checker configuration buffer
+ * @data: pointer to a data buffer containing flow entry's match values/masks
+ * @range: Input/output param indicating which range checkers are being used
+ */
+static void
+ice_flow_acl_frmt_entry_range(u16 fld, struct ice_flow_fld_info *info,
+			      struct ice_aqc_acl_profile_ranges *range_buf,
+			      u8 *data, u8 *range)
+{
+	u16 new_mask, offset_val;
+
+	/* If not specified, default mask is all bits in field */
+	memcpy(&offset_val, data + info->src.mask, sizeof(offset_val));
+	new_mask = (info->src.mask == ICE_FLOW_FLD_OFF_INVAL ?
+		    BIT(ice_flds_info[fld].size) - 1 : offset_val) <<
+		   info->xtrct.disp;
+
+	/* If the mask is 0, then we don't need to worry about this input
+	 * range checker value.
+	 */
+	if (new_mask) {
+		u16 new_high, new_low;
+
+		memcpy(&offset_val, data + info->src.last, sizeof(offset_val));
+		new_high = offset_val << info->xtrct.disp;
+
+		memcpy(&offset_val, data + info->src.val, sizeof(offset_val));
+		new_low = offset_val << info->xtrct.disp;
+
+		u8 range_idx = info->entry.val;
+
+		range_buf->checker_cfg[range_idx].low_boundary =
+			cpu_to_be16(new_low);
+		range_buf->checker_cfg[range_idx].high_boundary =
+			cpu_to_be16(new_high);
+		range_buf->checker_cfg[range_idx].mask = cpu_to_be16(new_mask);
+
+		/* Indicate which range checker is being used */
+		*range |= BIT(range_idx);
+	}
+}
+
+/**
+ * ice_flow_acl_frmt_entry_fld - Partially format ACL entry for a given field
+ * @fld: number of the given field
+ * @info: info about the field
+ * @buf: buffer containing the entry
+ * @dontcare: buffer containing don't care mask for entry
+ * @data: pointer to a data buffer containing flow entry's match values/masks
+ */
+static void ice_flow_acl_frmt_entry_fld(u16 fld, struct ice_flow_fld_info *info,
+					u8 *buf, u8 *dontcare, u8 *data)
+{
+	u16 dst, src, mask, end_disp, tmp_s = 0, tmp_m = 0;
+	bool use_mask = false;
+	u8 disp;
+
+	src = info->src.val;
+	mask = info->src.mask;
+	dst = info->entry.val - ICE_AQC_ACL_PROF_BYTE_SEL_START_IDX;
+	disp = info->xtrct.disp % BITS_PER_BYTE;
+
+	if (mask != ICE_FLOW_FLD_OFF_INVAL)
+		use_mask = true;
+
+	for (u16 i = 0; i < info->entry.last; i++, dst++) {
+		/* Add overflow bits from previous byte */
+		buf[dst] = (tmp_s & 0xff00) >> 8;
+
+		/* If mask is not valid, tmp_m is always zero, so just setting
+		 * dontcare to 0 (no masked bits). If mask is valid, pulls in
+		 * overflow bits of mask from prev byte
+		 */
+		dontcare[dst] = (tmp_m & 0xff00) >> 8;
+
+		/* If there is displacement, last byte will only contain
+		 * displaced data, but there is no more data to read from user
+		 * buffer, so skip so as not to potentially read beyond end of
+		 * user buffer
+		 */
+		if (!disp || i < info->entry.last - 1) {
+			/* Store shifted data to use in next byte */
+			tmp_s = data[src++] << disp;
+
+			/* Add current (shifted) byte */
+			buf[dst] |= tmp_s & 0xff;
+
+			/* Handle mask if valid */
+			if (use_mask) {
+				tmp_m = (~data[mask++] & 0xff) << disp;
+				dontcare[dst] |= tmp_m & 0xff;
+			}
+		}
+	}
+
+	/* Fill in don't care bits at beginning of field */
+	if (disp) {
+		dst = info->entry.val - ICE_AQC_ACL_PROF_BYTE_SEL_START_IDX;
+		for (int i = 0; i < disp; i++)
+			dontcare[dst] |= BIT(i);
+	}
+
+	end_disp = (disp + ice_flds_info[fld].size) % BITS_PER_BYTE;
+
+	/* Fill in don't care bits at end of field */
+	if (end_disp) {
+		dst = info->entry.val - ICE_AQC_ACL_PROF_BYTE_SEL_START_IDX +
+		      info->entry.last - 1;
+		for (int i = end_disp; i < BITS_PER_BYTE; i++)
+			dontcare[dst] |= BIT(i);
+	}
+}
+
+/**
+ * ice_flow_acl_frmt_entry - Format ACL entry
+ * @hw: pointer to the hardware structure
+ * @prof: pointer to flow profile
+ * @e: pointer to the flow entry
+ * @data: pointer to a data buffer containing flow entry's match values/masks
+ * @acts: array of actions to be performed on a match
+ * @acts_cnt: number of actions
+ *
+ * Formats the key (and key_inverse) to be matched from the data passed in,
+ * along with data from the flow profile. This key/key_inverse pair makes up
+ * the 'entry' for an ACL flow entry.
+ *
+ * Return: 0 on success, negative on failure
+ */
+static int ice_flow_acl_frmt_entry(struct ice_hw *hw,
+				   struct ice_flow_prof *prof,
+				   struct ice_flow_entry *e, u8 *data,
+				   struct ice_flow_action *acts, u8 acts_cnt)
+{
+	u8 *buf = NULL, *dontcare = NULL, *key = NULL, range = 0, dir_flag_msk,
+		prof_id;
+	struct ice_aqc_acl_profile_ranges *range_buf = NULL;
+	bool cnt_alloc;
+	u16 buf_sz;
+	int err;
+
+	err = ice_flow_get_hw_prof(hw, ICE_BLK_ACL, prof->id, &prof_id);
+	if (err)
+		return err;
+
+	/* Format the result action */
+
+	err = ice_flow_acl_check_actions(hw, acts, acts_cnt, &cnt_alloc);
+	if (err)
+		return err;
+
+	e->acts = kmemdup(acts, acts_cnt * sizeof(*acts), GFP_KERNEL);
+	if (!e->acts) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	e->acts_cnt = acts_cnt;
+
+	/* Format the matching data */
+	buf_sz = prof->cfg.scen->width;
+	buf = kzalloc_objs(*buf, buf_sz);
+	if (!buf) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	dontcare = kzalloc_objs(*dontcare, buf_sz);
+	if (!dontcare) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	/* 'key' buffer will store both key and key_inverse, so must be twice
+	 * size of buf
+	 */
+	key = kzalloc_objs(*key, buf_sz * 2);
+	if (!key) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	range_buf = kzalloc_obj(*range_buf);
+	if (!range_buf) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	/* Set don't care mask to all 1's to start, will zero out used bytes */
+	memset(dontcare, 0xff, buf_sz);
+
+	for (int i = 0; i < prof->segs_cnt; i++) {
+		struct ice_flow_seg_info *seg = &prof->segs[i];
+		u8 j;
+
+		for_each_set_bit(j, (unsigned long *)&seg->match,
+				 ICE_FLOW_FIELD_IDX_MAX) {
+			struct ice_flow_fld_info *info = &seg->fields[j];
+
+			if (info->type == ICE_FLOW_FLD_TYPE_RANGE)
+				ice_flow_acl_frmt_entry_range(j, info,
+							      range_buf, data,
+							      &range);
+			else
+				ice_flow_acl_frmt_entry_fld(j, info, buf,
+							    dontcare, data);
+		}
+
+		for (j = 0; j < seg->raws_cnt; j++) {
+			struct ice_flow_fld_info *info = &seg->raws[j].info;
+			u16 dst, src, mask, k;
+			bool use_mask = false;
+
+			src = info->src.val;
+			dst = info->entry.val -
+					ICE_AQC_ACL_PROF_BYTE_SEL_START_IDX;
+			mask = info->src.mask;
+
+			if (mask != ICE_FLOW_FLD_OFF_INVAL)
+				use_mask = true;
+
+			for (k = 0; k < info->entry.last; k++, dst++) {
+				buf[dst] = data[src++];
+				if (use_mask)
+					dontcare[dst] = ~data[mask++];
+				else
+					dontcare[dst] = 0;
+			}
+		}
+	}
+
+	buf[prof->cfg.scen->pid_idx] = (u8)prof_id;
+	dontcare[prof->cfg.scen->pid_idx] = 0;
+
+	/* Format the buffer for direction flags */
+	dir_flag_msk = BIT(ICE_FLG_PKT_DIR);
+
+	if (prof->dir == ICE_FLOW_RX)
+		buf[prof->cfg.scen->pkt_dir_idx] = dir_flag_msk;
+
+	if (range) {
+		buf[prof->cfg.scen->rng_chk_idx] = range;
+		/* Mark any unused range checkers as don't care */
+		dontcare[prof->cfg.scen->rng_chk_idx] = ~range;
+		e->range_buf = range_buf;
+	} else {
+		kfree(range_buf);
+		range_buf = NULL;
+	}
+
+	err = ice_set_key(key, buf_sz * 2, buf, NULL, dontcare, NULL, 0,
+			  buf_sz);
+	if (err)
+		goto out;
+
+	e->entry = key;
+	e->entry_sz = buf_sz * 2;
+
+out:
+	kfree(buf);
+	kfree(dontcare);
+
+	if (err) {
+		kfree(key);
+
+		kfree(range_buf);
+		e->range_buf = NULL;
+
+		kfree(e->acts);
+		e->acts = NULL;
+		e->acts_cnt = 0;
+
+		if (cnt_alloc)
+			ice_flow_acl_free_act_cntr(hw, acts, acts_cnt);
+	}
+
+	return err;
+}
 /**
  * ice_flow_add_entry - Add a flow entry
  * @hw: pointer to the HW struct
@@ -1966,17 +2565,23 @@ int ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
  * @vsi_handle: software VSI handle for the flow entry
  * @prio: priority of the flow entry
  * @data: pointer to a data buffer containing flow entry's match values/masks
+ * @acts: array of actions to be performed on a match
+ * @acts_cnt: number of actions
  * @entry_h: pointer to buffer that receives the new flow entry's handle
  */
-int
-ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
-		   u64 entry_id, u16 vsi_handle, enum ice_flow_priority prio,
-		   void *data, u64 *entry_h)
+int ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
+		       u64 entry_id, u16 vsi_handle,
+		       enum ice_flow_priority prio, void *data,
+		       struct ice_flow_action *acts, u8 acts_cnt, u64 *entry_h)
 {
 	struct ice_flow_entry *e = NULL;
 	struct ice_flow_prof *prof;
 	int status;
 
+	/* ACL entries must indicate an action */
+	if (blk == ICE_BLK_ACL && (!acts || !acts_cnt))
+		return -EINVAL;
+
 	/* No flow entry data is expected for RSS */
 	if (!entry_h || (!data && blk != ICE_BLK_RSS))
 		return -EINVAL;
@@ -2013,20 +2618,32 @@ ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 	case ICE_BLK_FD:
 	case ICE_BLK_RSS:
 		break;
+	case ICE_BLK_ACL:
+		/* ACL will handle the entry management */
+		status = ice_flow_acl_frmt_entry(hw, prof, e, (u8 *)data, acts,
+						 acts_cnt);
+		if (status)
+			goto out;
+		break;
 	default:
 		status = -EOPNOTSUPP;
 		goto out;
 	}
 
-	mutex_lock(&prof->entries_lock);
-	list_add(&e->l_entry, &prof->entries);
-	mutex_unlock(&prof->entries_lock);
+	if (blk != ICE_BLK_ACL) {
+		/* ACL will handle the entry management */
+		mutex_lock(&prof->entries_lock);
+		list_add(&e->l_entry, &prof->entries);
+		mutex_unlock(&prof->entries_lock);
+	}
 
 	*entry_h = ICE_FLOW_ENTRY_HNDL(e);
 
 out:
 	if (status && e) {
-		devm_kfree(ice_hw_to_dev(hw), e->entry);
+		kfree(e->entry);
+		kfree(e->range_buf);
+		kfree(e->acts);
 		devm_kfree(ice_hw_to_dev(hw), e);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0f75fad53742..95a18445ec41 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8668,7 +8668,7 @@ static int ice_add_vsi_to_fdir(struct ice_pf *pf, struct ice_vsi *vsi)
 						    prof->prof_id[tun],
 						    prof->vsi_h[0], vsi->idx,
 						    prio, prof->fdir_seg[tun],
-						    &entry_h);
+						    NULL, 0, &entry_h);
 			if (status) {
 				dev_err(dev, "channel VSI idx %d, not able to add to group %d\n",
 					vsi->idx, flow);
diff --git a/drivers/net/ethernet/intel/ice/virt/fdir.c b/drivers/net/ethernet/intel/ice/virt/fdir.c
index f9d91212e0e0..570f413b93b2 100644
--- a/drivers/net/ethernet/intel/ice/virt/fdir.c
+++ b/drivers/net/ethernet/intel/ice/virt/fdir.c
@@ -688,7 +688,7 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
 
 	ret = ice_flow_add_entry(hw, ICE_BLK_FD, prof->id, vf_vsi->idx,
 				 vf_vsi->idx, ICE_FLOW_PRIO_NORMAL,
-				 seg, &entry1_h);
+				 seg, NULL, 0, &entry1_h);
 	if (ret) {
 		dev_dbg(dev, "Could not add flow 0x%x VSI entry for VF %d\n",
 			flow, vf->vf_id);
@@ -697,7 +697,7 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
 
 	ret = ice_flow_add_entry(hw, ICE_BLK_FD, prof->id, vf_vsi->idx,
 				 ctrl_vsi->idx, ICE_FLOW_PRIO_NORMAL,
-				 seg, &entry2_h);
+				 seg, NULL, 0, &entry2_h);
 	if (ret) {
 		dev_dbg(dev,
 			"Could not add flow 0x%x Ctrl VSI entry for VF %d\n",
-- 
2.49.0

