Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKOCGZv/DmomEAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 14:50:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 030A85A5243
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 14:50:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CC136176F;
	Thu, 21 May 2026 12:50:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6z-g-CxweiLP; Thu, 21 May 2026 12:50:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94D1361764
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779367826;
	bh=tnThsH5SarvlXlM2jLUWoQ63IHHeng2SA4IcTySLOe8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aLFR8fVgtTL6u2j4WH+SUMZNS8VonJfjCVl9K/3897Q+YPKN3mIk6s2l0qhtoiek1
	 6qSY2o9Zy6z8NmYSwPvJg3VRG7M5h+//ICZPgS/u+ctJxzbtZZZ5XhmS7BhHNJGr4T
	 j67iRTyFGrFnSbGNJ/oUiQkj0It6ZVKkgI2qNz6iZ5E0GLp6QM7l0ENiH2JdAcD9E7
	 AQi2oALSvUineQhEB/ex8cqI2V36EpAzmGPtaHgXv+4S8Po7nKEK6KfMxWUyWCLJOw
	 B5ydsIabDEHMFMSR4u7ZJUxe3YoFkSlxAc5P18Jx5PBNDTTL4s3MwCFOp/K3K4c9ew
	 rBj7oF6oVhVxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94D1361764;
	Thu, 21 May 2026 12:50:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A5BA282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 206DE41F2B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:50:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Aflbl942tygm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2026 12:50:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7BB9441EDE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BB9441EDE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BB9441EDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:50:23 +0000 (UTC)
X-CSE-ConnectionGUID: s9AFHCwdTeWJrFnqKFfYMg==
X-CSE-MsgGUID: JEf2bgs9TqadQCT4abh5+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80013498"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="80013498"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:50:23 -0700
X-CSE-ConnectionGUID: zvsIdmlSSkuolUKkkQq9ig==
X-CSE-MsgGUID: Hln3HVrzT3aS3p8djjlq+w==
X-ExtLoop1: 1
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 21 May 2026 05:50:20 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 6C4AD2877D;
 Thu, 21 May 2026 13:50:18 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Chinh Cao <chinh.t.cao@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 21 May 2026 13:49:52 +0200
Message-ID: <20260521115000.4637-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
References: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779367824; x=1810903824;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=55OYqptykV8xSd3OynMZi9JLa2XFCZTDqlHuV4SqBEI=;
 b=XBvTqzp2ycNiOtpJu2JCKAZoeZiBeCh8wpOFdn6ZWJTowDycEcEbm4eJ
 lBT3ceYMlCof0/8hw4orglBraNE7TY/3RDs9qNQ6jqnvlCzYporn349RF
 CmYqI+WrpZSy30Z/lngV7pj4S+mM/foS+/YRhCkCTRsXLArfXk1/qmKze
 2+hrJXUnGnjAWWJUyunIDuLlq43wvgji2WQnoVkjYrfF1p5yHd36AXTY0
 inTb1Ukfd+4dbBM072wuGigdnax50VHdMcYdgMtb/J2tfTuCMNBYs2UnA
 oEF4nN9UPdJmLgdS6Wy/eyupUFhFZh64Cg2JZhVHedTweF9gPWv7M/DuD
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XBvTqzp2
Subject: [Intel-wired-lan] [PATCH iwl-next v4 02/10] ice: initialize ACL
 table
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 030A85A5243
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Real Valiquette <real.valiquette@intel.com>

E8xx hardware provides a Ternary Classifier block for implementing
functions such as ACL (Access Control List). In this series it's simply
referred to as "ACL".

ACL filtering can be utilized to expand support of ntuple rules by allowing
mask values to be specified for redirect to queue or drop.

Implement support for specifying the 'm' value of ethtool ntuple command
for currently supported fields (src-ip, dst-ip, src-port, and dst-port).

For example:
  ethtool -N eth0 flow-type tcp4 dst-port 8880 m 0x00ff action 10
or
  ethtool -N eth0 flow-type tcp4 src-ip 192.168.0.55 m 0.0.0.255 action -1

At this time the following flow-types support mask values: tcp4, udp4,
sctp4, and ip4.

Begin implementation of ACL filters by setting up structures, AdminQ
commands, and allocation of the ACL table in the hardware.

Co-developed-by: Chinh Cao <chinh.t.cao@intel.com>
Signed-off-by: Chinh Cao <chinh.t.cao@intel.com>
Signed-off-by: Real Valiquette <real.valiquette@intel.com>
Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2:
* Return -ERANGE in one branch in ice_aq_alloc_acl_tbl() to differenciate error
  codes
* Use GENMASK() for ICE_AQ_VSI_ACL_DEF_RX_*_M
* Use plain alloc/kfree for hw->acl_tbl
* Call ice_deinit_acl() unconditionally because ICE_FLAG_FD_ENA can be
  disabled during operation
* ice_acl_init_tbl(): remove first/last variables
* Merge ice_aq_acl_entry() into ice_aq_program_acl_entry() and
  ice_aq_actpair_p_q() into ice_aq_program_actpair() - wrappers with one user
  make no sense
* Rename ICE_AQC_ALLOC_ID_LESS_THAN_4K to more sensible ICE_AQC_ALLOC_ID_4K
* Reorder members of struct ice_acl_tbl to minimize holes
* Remove ICE_AQ_VSI_ACL_DEF_RX_*_S - will be unused after switching to
  FIELD_PREP() in "ice: program ACL entry"
* Replace memset() with = {} in ice_init_acl()
---
 drivers/net/ethernet/intel/ice/Makefile       |   2 +
 drivers/net/ethernet/intel/ice/ice.h          |   3 +
 drivers/net/ethernet/intel/ice/ice_acl.h      | 117 +++++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 208 +++++++++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |   3 +
 drivers/net/ethernet/intel/ice/ice_acl.c      | 136 ++++++++
 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 302 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c     |  49 +++
 8 files changed, 818 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index c310c209bc7d..6afe7be056ba 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -25,6 +25,8 @@ ice-y := ice_main.o	\
 	 ice_vsi_vlan_lib.o \
 	 ice_fdir.o	\
 	 ice_ethtool_ntuple.o \
+	 ice_acl.o	\
+	 ice_acl_ctrl.o	\
 	 ice_vlan_mode.o \
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ea1bddfa739d..3a51a033296c 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -157,6 +157,9 @@
 #define ICE_SWITCH_FLTR_PRIO_VSI	5
 #define ICE_SWITCH_FLTR_PRIO_QGRP	ICE_SWITCH_FLTR_PRIO_VSI
 
+#define ICE_ACL_ENTIRE_SLICE	1
+#define ICE_ACL_HALF_SLICE	2
+
 /* Macro for each VSI in a PF */
 #define ice_for_each_vsi(pf, i) \
 	for ((i) = 0; (i) < (pf)->num_alloc_vsi; (i)++)
diff --git a/drivers/net/ethernet/intel/ice/ice_acl.h b/drivers/net/ethernet/intel/ice/ice_acl.h
new file mode 100644
index 000000000000..bb836f23d65e
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_acl.h
@@ -0,0 +1,117 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2026, Intel Corporation. */
+
+#ifndef _ICE_ACL_H_
+#define _ICE_ACL_H_
+
+#include "ice_common.h"
+
+#define ICE_ACL_TBL_PARAMS_DEP_TBLS_MAX	15
+struct ice_acl_tbl_params {
+	u16 width;	/* Select/match bytes */
+	u16 depth;	/* Number of entries */
+	u16 dep_tbls[ICE_ACL_TBL_PARAMS_DEP_TBLS_MAX];
+	u8 entry_act_pairs;	/* Action pairs per entry */
+	u8 concurr;		/* Concurrent table lookup enable */
+};
+
+#define ICE_ACL_ACT_MEM_ACT_MEM_INVAL	0xff
+struct ice_acl_act_mem {
+	u8 act_mem;
+	u8 member_of_tcam;
+};
+
+struct ice_acl_tbl {
+	/* TCAM configuration */
+	u8 first_tcam;
+	u8 last_tcam;
+	u16 first_entry; /* Index of the first entry in the first TCAM */
+	u16 last_entry; /* Index of the last entry in the last TCAM */
+	u16 id;
+
+	/* List of active scenarios */
+	struct list_head scens;
+
+	struct ice_acl_tbl_params info;
+	struct ice_acl_act_mem act_mems[ICE_AQC_MAX_ACTION_MEMORIES];
+
+	/* Keep track of available 64-entry chunks in TCAMs */
+	DECLARE_BITMAP(avail, ICE_AQC_ACL_ALLOC_UNITS);
+};
+
+enum ice_acl_entry_prio {
+	ICE_ACL_PRIO_LOW = 0,
+	ICE_ACL_PRIO_NORMAL,
+	ICE_ACL_PRIO_HIGH,
+	ICE_ACL_MAX_PRIO
+};
+
+#define ICE_ACL_SCEN_MIN_WIDTH	0x3
+#define ICE_ACL_SCEN_PKT_DIR_IDX_IN_TCAM	0x2
+#define ICE_ACL_SCEN_PID_IDX_IN_TCAM		0x3
+#define ICE_ACL_SCEN_RNG_CHK_IDX_IN_TCAM	0x4
+/* Scenario structure
+ * A scenario is a logical partition within an ACL table. It can span more
+ * than one TCAM in cascade mode to support select/mask key widths larger
+ * than the width of a TCAM. It can also span more than one TCAM in stacked
+ * mode to support larger number of entries than what a TCAM can hold. It is
+ * used to select values from selection bases (field vectors holding extract
+ * protocol header fields) to form lookup keys, and to associate action memory
+ * banks to the TCAMs used.
+ */
+struct ice_acl_scen {
+	struct list_head list_entry;
+	/* If nth bit of act_mem_bitmap is set, then nth action memory will
+	 * participate in this scenario
+	 */
+	DECLARE_BITMAP(act_mem_bitmap, ICE_AQC_MAX_ACTION_MEMORIES);
+	u16 first_idx[ICE_ACL_MAX_PRIO];
+	u16 last_idx[ICE_ACL_MAX_PRIO];
+
+	u16 id;
+	u16 start;	/* Number of entry from the start of the parent table */
+	u16 width;	/* Number of select/mask bytes */
+	u16 num_entry;	/* Number of scenario entry */
+	u16 end;	/* Last addressable entry from start of table */
+	u8 eff_width;	/* Available width in bytes to match */
+	u8 pid_idx;	/* Byte index used to match profile ID */
+	u8 rng_chk_idx;	/* Byte index used to match range checkers result */
+	u8 pkt_dir_idx;	/* Byte index used to match packet direction */
+};
+
+/* Input fields needed to allocate ACL table */
+struct ice_acl_alloc_tbl {
+	/* Table's width in number of bytes matched */
+	u16 width;
+	/* Table's depth in number of entries. */
+	u16 depth;
+	u8 num_dependent_alloc_ids;
+	/* true for concurrent table type */
+	u8 concurr;
+
+	/* Amount of action pairs per table entry. Minimal valid
+	 * value for this field is 1 (e.g. single pair of actions)
+	 */
+	u8 act_pairs_per_entry;
+	union {
+		struct ice_aqc_acl_alloc_table_data data_buf;
+		struct ice_aqc_acl_generic resp_buf;
+	} buf;
+};
+
+int ice_acl_create_tbl(struct ice_hw *hw, struct ice_acl_tbl_params *params);
+int ice_acl_destroy_tbl(struct ice_hw *hw);
+int ice_aq_alloc_acl_tbl(struct ice_hw *hw, struct ice_acl_alloc_tbl *tbl,
+			 struct ice_sq_cd *cd);
+int ice_aq_dealloc_acl_tbl(struct ice_hw *hw, u16 alloc_id,
+			   struct ice_aqc_acl_generic *buf,
+			   struct ice_sq_cd *cd);
+int ice_aq_program_acl_entry(struct ice_hw *hw, u8 tcam_idx, u16 entry_idx,
+			     struct ice_aqc_acl_data *buf,
+			     struct ice_sq_cd *cd);
+int ice_aq_program_actpair(struct ice_hw *hw, u8 act_mem_idx, u16 act_entry_idx,
+			   struct ice_aqc_actpair *buf, struct ice_sq_cd *cd);
+int ice_aq_alloc_acl_scen(struct ice_hw *hw, u16 *scen_id,
+			  struct ice_aqc_acl_scen *buf, struct ice_sq_cd *cd);
+
+#endif /* _ICE_ACL_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 07fc72da347c..87f215f47072 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -303,6 +303,7 @@ struct ice_aqc_vsi_props {
 #define ICE_AQ_VSI_PROP_RXQ_MAP_VALID		BIT(6)
 #define ICE_AQ_VSI_PROP_Q_OPT_VALID		BIT(7)
 #define ICE_AQ_VSI_PROP_OUTER_UP_VALID		BIT(8)
+#define ICE_AQ_VSI_PROP_ACL_VALID		BIT(10)
 #define ICE_AQ_VSI_PROP_FLOW_DIR_VALID		BIT(11)
 #define ICE_AQ_VSI_PROP_PASID_VALID		BIT(12)
 	/* switch section */
@@ -423,8 +424,10 @@ struct ice_aqc_vsi_props {
 	u8 q_opt_reserved[3];
 	/* outer up section */
 	__le32 outer_up_table; /* same structure and defines as ingress tbl */
-	/* section 10 */
-	__le16 sect_10_reserved;
+	/* ACL section */
+	__le16 acl_def_act;
+#define ICE_AQ_VSI_ACL_DEF_RX_PROF_M	GENMASK(3, 0)
+#define ICE_AQ_VSI_ACL_DEF_RX_TABLE_M	GENMASK(7, 4)
 	/* flow director section */
 	__le16 fd_options;
 #define ICE_AQ_VSI_FD_ENABLE			BIT(0)
@@ -1976,6 +1979,199 @@ struct ice_aqc_neigh_dev_req {
 	__le32 addr_low;
 };
 
+/* Allocate ACL table (indirect 0x0C10) */
+#define ICE_AQC_ACL_KEY_WIDTH_BYTES	5
+#define ICE_AQC_ACL_TCAM_DEPTH		512
+#define ICE_ACL_ENTRY_ALLOC_UNIT	64
+#define ICE_AQC_MAX_CONCURRENT_ACL_TBL	15
+#define ICE_AQC_MAX_ACTION_MEMORIES	20
+#define ICE_AQC_ACL_SLICES		16
+#define ICE_AQC_ALLOC_ID_4K		0x1000
+/* The ACL block supports up to 8 actions per a single output. */
+#define ICE_AQC_TBL_MAX_ACTION_PAIRS	4
+
+#define ICE_AQC_MAX_TCAM_ALLOC_UNITS	(ICE_AQC_ACL_TCAM_DEPTH / \
+					 ICE_ACL_ENTRY_ALLOC_UNIT)
+#define ICE_AQC_ACL_ALLOC_UNITS		(ICE_AQC_ACL_SLICES * \
+					 ICE_AQC_MAX_TCAM_ALLOC_UNITS)
+
+struct ice_aqc_acl_alloc_table {
+	__le16 table_width;
+	__le16 table_depth;
+	u8 act_pairs_per_entry;
+	u8 table_type;
+	__le16 reserved;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+#define ICE_AQC_CONCURR_ID_INVALID	0xffff
+/* Allocate ACL table command buffer format */
+struct ice_aqc_acl_alloc_table_data {
+	/* Dependent table AllocIDs. Each word in this 15 word array specifies
+	 * a dependent table AllocID according to the amount specified in the
+	 * "table_type" field. All unused words shall be set to
+	 * ICE_AQC_CONCURR_ID_INVALID
+	 */
+	__le16 alloc_ids[ICE_AQC_MAX_CONCURRENT_ACL_TBL];
+};
+
+/* Deallocate ACL table (indirect 0x0C11) */
+
+/* Following structure is common and used in case of deallocation
+ * of ACL table and action-pair
+ */
+struct ice_aqc_acl_tbl_actpair {
+	__le16 alloc_id;
+	u8 reserved[6];
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+/* This response structure is same in case of alloc/dealloc table,
+ * alloc/dealloc action-pair
+ */
+struct ice_aqc_acl_generic {
+	/* if alloc_id is below 0x1000 then allocation failed due to
+	 * unavailable resources, else this is set by FW to identify
+	 * table allocation
+	 */
+	__le16 alloc_id;
+
+	union {
+		/* to be used only in case of alloc/dealloc table */
+		struct {
+			/* Set to 0xFF for a failed allocation */
+			u8 first_tcam;
+			/* This index shall be set to the value of first_tcam
+			 * for single TCAM block allocation, otherwise set to
+			 * 0xFF for a failed allocation.
+			 */
+			u8 last_tcam;
+		} table;
+		/* reserved in case of alloc/dealloc action-pair */
+		struct {
+			__le16 reserved;
+		} act_pair;
+	} ops;
+
+	/* index of first entry (in both TCAM and action memories),
+	 * otherwise set to 0xFF for a failed allocation
+	 */
+	__le16 first_entry;
+	/* index of last entry (in both TCAM and action memories),
+	 * otherwise set to 0xFF for a failed allocation
+	 */
+	__le16 last_entry;
+
+	/* Each act_mem element specifies the order of the memory
+	 * otherwise 0xFF
+	 */
+	u8 act_mem[ICE_AQC_MAX_ACTION_MEMORIES];
+};
+
+/* Update ACL scenario (direct 0x0C1B)
+ * Query ACL scenario (direct 0x0C23)
+ */
+struct ice_aqc_acl_update_query_scen {
+	__le16 scen_id;
+	u8 reserved[6];
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+#define ICE_AQC_ACL_BYTE_SEL_BASE		0x20
+#define ICE_AQC_ACL_BYTE_SEL_BASE_PID		0x3E
+#define ICE_AQC_ACL_BYTE_SEL_BASE_PKT_DIR	ICE_AQC_ACL_BYTE_SEL_BASE
+#define ICE_AQC_ACL_BYTE_SEL_BASE_RNG_CHK	0x3F
+
+#define ICE_AQC_ACL_ALLOC_SCE_START_CMP		BIT(0)
+#define ICE_AQC_ACL_ALLOC_SCE_START_SET		BIT(1)
+
+#define ICE_AQC_ACL_SCE_ACT_MEM_EN		BIT(7)
+
+/* Input buffer format in case allocate/update ACL scenario and same format
+ * is used for response buffer in case of query ACL scenario.
+ * NOTE: de-allocate ACL scenario is direct command and doesn't require
+ * "buffer", hence no buffer format.
+ */
+struct ice_aqc_acl_scen {
+	struct {
+		/* Byte [x] selection for the TCAM key. This value must be set
+		 * to 0x0 for unused TCAM.
+		 * Only Bit 6..0 is used in each byte and MSB is reserved
+		 */
+		u8 tcam_select[5];
+		/* TCAM Block entry masking. This value should be set to 0x0 for
+		 * unused TCAM
+		 */
+		u8 chnk_msk;
+		/* Bit 0 : masks TCAM entries 0-63
+		 * Bit 1 : masks TCAM entries 64-127
+		 * Bit 2 to 7 : follow the pattern of bit 0 and 1
+		 */
+		u8 start_cmp_set;
+	} tcam_cfg[ICE_AQC_ACL_SLICES];
+
+	/* Each byte, Bit 6..0: action memory association to a TCAM block,
+	 * otherwise it shall be set to 0x0 for disabled memory action.
+	 * Bit 7 (ICE_AQC_ACL_SCE_ACT_MEM_EN): action memory enable for this
+	 * scenario
+	 */
+	u8 act_mem_cfg[ICE_AQC_MAX_ACTION_MEMORIES];
+};
+
+/* Program ACL actionpair (indirect 0x0C1C) */
+struct ice_aqc_acl_actpair {
+	u8 act_mem_index;
+	u8 reserved;
+	/* Entry index in action memory */
+	__le16 act_entry_index;
+	__le32 reserved2;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+/* Input buffer format for program/query action-pair admin command */
+struct ice_acl_act_entry {
+	/* Action priority, values must be between 0..7 */
+	u8 prio;
+	/* Action meta-data identifier. This field should be set to 0x0
+	 * for a NOP action
+	 */
+	u8 mdid;
+	__le16 value;
+};
+
+#define ICE_ACL_NUM_ACT_PER_ACT_PAIR 2
+struct ice_aqc_actpair {
+	struct ice_acl_act_entry act[ICE_ACL_NUM_ACT_PER_ACT_PAIR];
+};
+
+/* Program ACL entry (indirect 0x0C20) */
+struct ice_aqc_acl_entry {
+	u8 tcam_index;
+	u8 reserved;
+	__le16 entry_index;
+	__le32 reserved2;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+/* Input buffer format in case of program ACL entry and response buffer format
+ * in case of query ACL entry
+ */
+struct ice_aqc_acl_data {
+	/* Entry key and entry key invert are 40 bits wide.
+	 * Byte 0..4 : entry key and Byte 5..7 are reserved
+	 * Byte 8..12: entry key invert and Byte 13..15 are reserved
+	 */
+	struct {
+		u8 val[5];
+		u8 reserved[3];
+	} entry_key, entry_key_invert;
+};
+
 /* Add Tx LAN Queues (indirect 0x0C30) */
 struct ice_aqc_add_txqs {
 	u8 num_qgrps;
@@ -2651,6 +2847,14 @@ enum ice_adminq_opc {
 	/* Sideband Control Interface commands */
 	ice_aqc_opc_neighbour_device_request		= 0x0C00,
 
+	/* ACL commands */
+	ice_aqc_opc_alloc_acl_tbl			= 0x0C10,
+	ice_aqc_opc_dealloc_acl_tbl			= 0x0C11,
+	ice_aqc_opc_update_acl_scen			= 0x0C1B,
+	ice_aqc_opc_program_acl_actpair			= 0x0C1C,
+	ice_aqc_opc_program_acl_entry			= 0x0C20,
+	ice_aqc_opc_query_acl_scen			= 0x0C23,
+
 	/* Tx queue handling commands/events */
 	ice_aqc_opc_add_txqs				= 0x0C30,
 	ice_aqc_opc_dis_txqs				= 0x0C31,
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 79cd04bea886..e8eeb54d17c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -54,6 +54,7 @@ static inline u32 ice_round_to_num(u32 N, u32 R)
 #define ICE_DBG_RDMA		BIT_ULL(15)
 #define ICE_DBG_PKG		BIT_ULL(16)
 #define ICE_DBG_RES		BIT_ULL(17)
+#define ICE_DBG_ACL		BIT_ULL(18)
 #define ICE_DBG_PTP		BIT_ULL(19)
 #define ICE_DBG_AQ_MSG		BIT_ULL(24)
 #define ICE_DBG_AQ_DESC		BIT_ULL(25)
@@ -1024,6 +1025,8 @@ struct ice_hw {
 	struct udp_tunnel_nic_shared udp_tunnel_shared;
 	struct udp_tunnel_nic_info udp_tunnel_nic;
 
+	struct ice_acl_tbl *acl_tbl;
+
 	/* dvm boost update information */
 	struct ice_dvm_table dvm_upd;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_acl.c b/drivers/net/ethernet/intel/ice/ice_acl.c
new file mode 100644
index 000000000000..3d963c6071dc
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_acl.c
@@ -0,0 +1,136 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2026, Intel Corporation. */
+
+#include "ice_acl.h"
+
+/**
+ * ice_aq_alloc_acl_tbl - allocate ACL table
+ * @hw: pointer to the HW struct
+ * @tbl: pointer to ice_acl_alloc_tbl struct
+ * @cd: pointer to command details structure or NULL
+ *
+ * Allocate ACL table (indirect 0x0C10)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_aq_alloc_acl_tbl(struct ice_hw *hw, struct ice_acl_alloc_tbl *tbl,
+			 struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_alloc_table *cmd;
+	struct libie_aq_desc desc;
+
+	if (!tbl->act_pairs_per_entry)
+		return -EINVAL;
+
+	if (tbl->act_pairs_per_entry > ICE_AQC_MAX_ACTION_MEMORIES)
+		return -ENOSPC;
+
+	/* If this is concurrent table, then alloc_ids buffer shall be valid and
+	 * contain AllocIDs of dependent tables. 'num_dependent_alloc_ids'
+	 * should be non-zero and within limit.
+	 */
+	if (tbl->concurr) {
+		if (!tbl->num_dependent_alloc_ids)
+			return -EINVAL;
+		if (tbl->num_dependent_alloc_ids >
+		    ICE_AQC_MAX_CONCURRENT_ACL_TBL)
+			return -ERANGE;
+	}
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_alloc_acl_tbl);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
+
+	cmd = libie_aq_raw(&desc);
+	cmd->table_width = cpu_to_le16(tbl->width * BITS_PER_BYTE);
+	cmd->table_depth = cpu_to_le16(tbl->depth);
+	cmd->act_pairs_per_entry = tbl->act_pairs_per_entry;
+	if (tbl->concurr)
+		cmd->table_type = tbl->num_dependent_alloc_ids;
+
+	return ice_aq_send_cmd(hw, &desc, &tbl->buf, sizeof(tbl->buf), cd);
+}
+
+/**
+ * ice_aq_dealloc_acl_tbl - deallocate ACL table
+ * @hw: pointer to the HW struct
+ * @alloc_id: allocation ID of the table being released
+ * @buf: address of indirect data buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Deallocate ACL table (indirect 0x0C11)
+ *
+ * NOTE: This command has no buffer format for command itself but response
+ * format is 'struct ice_aqc_acl_generic', pass ptr to that struct
+ * as 'buf' and its size as 'buf_size'
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_aq_dealloc_acl_tbl(struct ice_hw *hw, u16 alloc_id,
+			   struct ice_aqc_acl_generic *buf,
+			   struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_tbl_actpair *cmd;
+	struct libie_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_dealloc_acl_tbl);
+	cmd = libie_aq_raw(&desc);
+	cmd->alloc_id = cpu_to_le16(alloc_id);
+
+	return ice_aq_send_cmd(hw, &desc, buf, sizeof(*buf), cd);
+}
+
+/**
+ * ice_aq_program_acl_entry - program ACL entry
+ * @hw: pointer to the HW struct
+ * @tcam_idx: Updated TCAM block index
+ * @entry_idx: updated entry index
+ * @buf: address of indirect data buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Program ACL entry (direct 0x0C20)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_aq_program_acl_entry(struct ice_hw *hw, u8 tcam_idx, u16 entry_idx,
+			     struct ice_aqc_acl_data *buf, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_entry *cmd;
+	struct libie_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_program_acl_entry);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
+
+	cmd = libie_aq_raw(&desc);
+	cmd->tcam_index = tcam_idx;
+	cmd->entry_index = cpu_to_le16(entry_idx);
+
+	return ice_aq_send_cmd(hw, &desc, buf, sizeof(*buf), cd);
+}
+
+/**
+ * ice_aq_program_actpair - program ACL action pair
+ * @hw: pointer to the HW struct
+ * @act_mem_idx: action memory index to program/update/query
+ * @act_entry_idx: the entry index in action memory to be programmed/updated
+ * @buf: address of indirect data buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Program action entries (indirect 0x0C1C)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_aq_program_actpair(struct ice_hw *hw, u8 act_mem_idx, u16 act_entry_idx,
+			   struct ice_aqc_actpair *buf, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_acl_actpair *cmd;
+	struct libie_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_program_acl_actpair);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
+
+	cmd = libie_aq_raw(&desc);
+	cmd->act_mem_index = act_mem_idx;
+	cmd->act_entry_index = cpu_to_le16(act_entry_idx);
+
+	return ice_aq_send_cmd(hw, &desc, buf, sizeof(*buf), cd);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c b/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
new file mode 100644
index 000000000000..d821b2c923d5
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
@@ -0,0 +1,302 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2026, Intel Corporation. */
+
+#include "ice_acl.h"
+
+/* Determine the TCAM index of entry 'e' within the ACL table */
+#define ICE_ACL_TBL_TCAM_IDX(e) ((e) / ICE_AQC_ACL_TCAM_DEPTH)
+
+/**
+ * ice_acl_init_tbl - initialize ACL table
+ * @hw: pointer to the hardware structure
+ *
+ * Invalidate TCAM entries and action pairs.
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_acl_init_tbl(struct ice_hw *hw)
+{
+	struct ice_aqc_actpair act_buf = {};
+	struct ice_aqc_acl_data buf = {};
+	struct ice_acl_tbl *tbl;
+	u8 tcam_idx;
+	int err = 0;
+	u16 idx;
+
+	tbl = hw->acl_tbl;
+
+	tcam_idx = tbl->first_tcam;
+	idx = tbl->first_entry;
+	while (tcam_idx < tbl->last_tcam ||
+	       (tcam_idx == tbl->last_tcam && idx <= tbl->last_entry)) {
+		/* Use the same value for entry_key and entry_key_inv since
+		 * we are initializing the fields to 0
+		 */
+		err = ice_aq_program_acl_entry(hw, tcam_idx, idx, &buf, NULL);
+		if (err)
+			return err;
+
+		if (++idx > tbl->last_entry) {
+			tcam_idx++;
+			idx = tbl->first_entry;
+		}
+	}
+
+	for (int i = 0; i < ICE_AQC_MAX_ACTION_MEMORIES; i++) {
+		u16 act_entry_idx;
+
+		if (tbl->act_mems[i].act_mem == ICE_ACL_ACT_MEM_ACT_MEM_INVAL)
+			continue;
+
+		for (act_entry_idx = tbl->first_entry;
+		     act_entry_idx <= tbl->last_entry; act_entry_idx++) {
+			/* Invalidate all allocated action pairs */
+			err = ice_aq_program_actpair(hw, i, act_entry_idx,
+						     &act_buf, NULL);
+			if (err)
+				return err;
+		}
+	}
+
+	return err;
+}
+
+/**
+ * ice_acl_assign_act_mems_to_tcam - assign number of action memories to TCAM
+ * @tbl: pointer to ACL table structure
+ * @cur_tcam: Index of current TCAM. Value = 0 to (ICE_AQC_ACL_SLICES - 1)
+ * @cur_mem_idx: Index of current action memory bank. Value = 0 to
+ *		 (ICE_AQC_MAX_ACTION_MEMORIES - 1)
+ * @num_mem: Number of action memory banks for this TCAM
+ *
+ * Assign "num_mem" valid action memory banks from "curr_mem_idx" to
+ * "curr_tcam" TCAM.
+ */
+static void
+ice_acl_assign_act_mems_to_tcam(struct ice_acl_tbl *tbl, u8 cur_tcam,
+				u8 *cur_mem_idx, u8 num_mem)
+{
+	u8 mem_cnt;
+
+	for (mem_cnt = 0;
+	     *cur_mem_idx < ICE_AQC_MAX_ACTION_MEMORIES && mem_cnt < num_mem;
+	     (*cur_mem_idx)++) {
+		struct ice_acl_act_mem *p_mem = &tbl->act_mems[*cur_mem_idx];
+
+		if (p_mem->act_mem == ICE_ACL_ACT_MEM_ACT_MEM_INVAL)
+			continue;
+
+		p_mem->member_of_tcam = cur_tcam;
+
+		mem_cnt++;
+	}
+}
+
+/**
+ * ice_acl_divide_act_mems_to_tcams - assign action memory banks to TCAMs
+ * @tbl: pointer to ACL table structure
+ *
+ * Figure out how to divide given action memory banks to given TCAMs. This
+ * division is for SW book keeping. In the time when scenario is created,
+ * an action memory bank can be used for different TCAM.
+ *
+ * For example, given that we have 2x2 ACL table with each table entry has
+ * 2 action memory pairs. As the result, we will have 4 TCAMs (T1,T2,T3,T4)
+ * and 4 action memory banks (A1,A2,A3,A4)
+ *	[T1 - T2] { A1 - A2 }
+ *	[T3 - T4] { A3 - A4 }
+ * In the time when we need to create a scenario, for example, 2x1 scenario,
+ * we will use [T3,T4] in a cascaded layout. As it is a requirement that all
+ * action memory banks in a cascaded TCAM's row will need to associate with
+ * the last TCAM. Thus, we will associate action memory banks [A3] and [A4]
+ * for TCAM [T4].
+ * For SW book-keeping purpose, we will keep theoretical maps between TCAM
+ * [Tn] to action memory bank [An].
+ */
+static void ice_acl_divide_act_mems_to_tcams(struct ice_acl_tbl *tbl)
+{
+	u16 num_cscd, stack_level, stack_idx, min_act_mem;
+	u8 tcam_idx = tbl->first_tcam;
+	u16 max_idx_to_get_extra;
+	u8 mem_idx = 0;
+
+	/* Determine number of stacked TCAMs */
+	stack_level = DIV_ROUND_UP(tbl->info.depth, ICE_AQC_ACL_TCAM_DEPTH);
+
+	/* Determine number of cascaded TCAMs */
+	num_cscd = DIV_ROUND_UP(tbl->info.width, ICE_AQC_ACL_KEY_WIDTH_BYTES);
+
+	/* In a line of cascaded TCAM, given the number of action memory
+	 * banks per ACL table entry, we want to fairly divide these action
+	 * memory banks between these TCAMs.
+	 *
+	 * For example, there are 3 TCAMs (TCAM 3,4,5) in a line of
+	 * cascaded TCAM, and there are 7 act_mems for each ACL table entry.
+	 * The result is:
+	 *	[TCAM_3 will have 3 act_mems]
+	 *	[TCAM_4 will have 2 act_mems]
+	 *	[TCAM_5 will have 2 act_mems]
+	 */
+	min_act_mem = tbl->info.entry_act_pairs / num_cscd;
+	max_idx_to_get_extra = tbl->info.entry_act_pairs % num_cscd;
+
+	for (stack_idx = 0; stack_idx < stack_level; stack_idx++) {
+		u16 i;
+
+		for (i = 0; i < num_cscd; i++) {
+			u8 total_act_mem = min_act_mem;
+
+			if (i < max_idx_to_get_extra)
+				total_act_mem++;
+
+			ice_acl_assign_act_mems_to_tcam(tbl, tcam_idx,
+							&mem_idx,
+							total_act_mem);
+
+			tcam_idx++;
+		}
+	}
+}
+
+/**
+ * ice_acl_create_tbl - create ACL table
+ * @hw: pointer to the HW struct
+ * @params: parameters for the table to be created
+ *
+ * Create a LEM table for ACL usage. We are currently starting with some fixed
+ * values for the size of the table, but this will need to grow as more flow
+ * entries are added by the user level.
+ *
+ * Return: 0 on success, negative on error
+ */
+int
+ice_acl_create_tbl(struct ice_hw *hw, struct ice_acl_tbl_params *params)
+{
+	struct ice_acl_alloc_tbl tbl_alloc = {};
+	struct ice_aqc_acl_generic *resp_buf;
+	u16 width, depth, first_e, last_e;
+	struct ice_acl_tbl *tbl;
+	int err;
+
+	if (hw->acl_tbl)
+		return -EEXIST;
+
+	/* round up the width to the next TCAM width boundary. */
+	width = roundup(params->width, (u16)ICE_AQC_ACL_KEY_WIDTH_BYTES);
+	/* depth should be provided in chunk (64 entry) increments */
+	depth = ALIGN(params->depth, ICE_ACL_ENTRY_ALLOC_UNIT);
+
+	if (params->entry_act_pairs < width / ICE_AQC_ACL_KEY_WIDTH_BYTES) {
+		params->entry_act_pairs = width / ICE_AQC_ACL_KEY_WIDTH_BYTES;
+
+		if (params->entry_act_pairs > ICE_AQC_TBL_MAX_ACTION_PAIRS)
+			params->entry_act_pairs = ICE_AQC_TBL_MAX_ACTION_PAIRS;
+	}
+
+	/* Validate that width*depth will not exceed the TCAM limit */
+	if ((DIV_ROUND_UP(depth, ICE_AQC_ACL_TCAM_DEPTH) *
+	     (width / ICE_AQC_ACL_KEY_WIDTH_BYTES)) > ICE_AQC_ACL_SLICES)
+		return -ENOSPC;
+
+	tbl_alloc.width = width;
+	tbl_alloc.depth = depth;
+	tbl_alloc.act_pairs_per_entry = params->entry_act_pairs;
+	tbl_alloc.concurr = params->concurr;
+
+	if (params->concurr) {
+		tbl_alloc.num_dependent_alloc_ids =
+			ICE_AQC_MAX_CONCURRENT_ACL_TBL;
+
+		for (int i = 0; i < ICE_AQC_MAX_CONCURRENT_ACL_TBL; i++)
+			tbl_alloc.buf.data_buf.alloc_ids[i] =
+				cpu_to_le16(params->dep_tbls[i]);
+	}
+
+	err = ice_aq_alloc_acl_tbl(hw, &tbl_alloc, NULL);
+	if (err) {
+		if (le16_to_cpu(tbl_alloc.buf.resp_buf.alloc_id) <
+		    ICE_AQC_ALLOC_ID_4K)
+			dev_err(ice_hw_to_dev(hw), "Alloc ACL table failed. Unavailable resource.\n");
+		else
+			dev_err(ice_hw_to_dev(hw), "AQ allocation of ACL failed with error. status: %d\n",
+				err);
+		return err;
+	}
+
+	tbl = kzalloc_obj(*tbl);
+	if (!tbl)
+		return -ENOMEM;
+
+	resp_buf = &tbl_alloc.buf.resp_buf;
+
+	/* Retrieve information of the allocated table */
+	tbl->id = le16_to_cpu(resp_buf->alloc_id);
+	tbl->first_tcam = resp_buf->ops.table.first_tcam;
+	tbl->last_tcam = resp_buf->ops.table.last_tcam;
+	tbl->first_entry = le16_to_cpu(resp_buf->first_entry);
+	tbl->last_entry = le16_to_cpu(resp_buf->last_entry);
+
+	tbl->info = *params;
+	tbl->info.width = width;
+	tbl->info.depth = depth;
+	hw->acl_tbl = tbl;
+
+	for (int i = 0; i < ICE_AQC_MAX_ACTION_MEMORIES; i++)
+		tbl->act_mems[i].act_mem = resp_buf->act_mem[i];
+
+	/* Figure out which TCAMs that these newly allocated action memories
+	 * belong to.
+	 */
+	ice_acl_divide_act_mems_to_tcams(tbl);
+
+	/* Initialize the resources allocated by invalidating all TCAM entries
+	 * and all the action pairs
+	 */
+	err = ice_acl_init_tbl(hw);
+	if (err) {
+		kfree(tbl);
+		hw->acl_tbl = NULL;
+		ice_debug(hw, ICE_DBG_ACL, "Initialization of TCAM entries failed. status: %d\n",
+			  err);
+		return err;
+	}
+
+	first_e = (tbl->first_tcam * ICE_AQC_MAX_TCAM_ALLOC_UNITS) +
+		(tbl->first_entry / ICE_ACL_ENTRY_ALLOC_UNIT);
+	last_e = (tbl->last_tcam * ICE_AQC_MAX_TCAM_ALLOC_UNITS) +
+		(tbl->last_entry / ICE_ACL_ENTRY_ALLOC_UNIT);
+
+	/* Indicate available entries in the table */
+	bitmap_set(tbl->avail, first_e, last_e - first_e + 1);
+
+	INIT_LIST_HEAD(&tbl->scens);
+
+	return 0;
+}
+
+/**
+ * ice_acl_destroy_tbl - Destroy a previously created LEM table for ACL
+ * @hw: pointer to the HW struct
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_acl_destroy_tbl(struct ice_hw *hw)
+{
+	struct ice_aqc_acl_generic resp_buf;
+	int err;
+
+	if (!hw->acl_tbl)
+		return -ENOENT;
+
+	err = ice_aq_dealloc_acl_tbl(hw, hw->acl_tbl->id, &resp_buf, NULL);
+	if (err) {
+		ice_debug(hw, ICE_DBG_ACL, "AQ de-allocation of ACL failed. status: %d\n",
+			  err);
+		return err;
+	}
+
+	kfree(hw->acl_tbl);
+	hw->acl_tbl = NULL;
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e7083492fdc0..5e80c57e0d06 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -17,6 +17,7 @@
 #include "devlink/port.h"
 #include "ice_sf_eth.h"
 #include "ice_hwmon.h"
+#include "ice_acl.h"
 /* Including ice_trace.h with CREATE_TRACE_POINTS defined will generate the
  * ice tracepoint functions. This must be done exactly once across the
  * ice driver.
@@ -4334,6 +4335,47 @@ static int ice_send_version(struct ice_pf *pf)
 	return ice_aq_send_driver_ver(&pf->hw, &dv, NULL);
 }
 
+/**
+ * ice_init_acl - Initializes the ACL block
+ * @pf: ptr to PF device
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_init_acl(struct ice_pf *pf)
+{
+	struct ice_acl_tbl_params params = {};
+	struct ice_hw *hw = &pf->hw;
+	int divider;
+
+	/* Creates a single ACL table that consist of src_ip(4 byte),
+	 * dest_ip(4 byte), src_port(2 byte) and dst_port(2 byte) for a total
+	 * of 12 bytes (96 bits), hence 120 bit wide keys, i.e. 3 TCAM slices.
+	 * If the given hardware card contains less than 8 PFs (ports) then
+	 * each PF will have its own TCAM slices. For 8 PFs, a given slice will
+	 * be shared by 2 different PFs.
+	 */
+	if (hw->dev_caps.num_funcs < 8)
+		divider = ICE_ACL_ENTIRE_SLICE;
+	else
+		divider = ICE_ACL_HALF_SLICE;
+
+	params.width = ICE_AQC_ACL_KEY_WIDTH_BYTES * 3;
+	params.depth = ICE_AQC_ACL_TCAM_DEPTH / divider;
+	params.entry_act_pairs = 1;
+	params.concurr = false;
+
+	return ice_acl_create_tbl(hw, &params);
+}
+
+/**
+ * ice_deinit_acl - Unroll the initialization of the ACL block
+ * @pf: ptr to PF device
+ */
+static void ice_deinit_acl(struct ice_pf *pf)
+{
+	ice_acl_destroy_tbl(&pf->hw);
+}
+
 /**
  * ice_init_fdir - Initialize flow director VSI and configuration
  * @pf: pointer to the PF instance
@@ -4755,6 +4797,12 @@ static void ice_init_features(struct ice_pf *pf)
 	if (ice_init_fdir(pf))
 		dev_err(dev, "could not initialize flow director\n");
 
+	if (test_bit(ICE_FLAG_FD_ENA, pf->flags)) {
+		/* Note: ACL init failure is non-fatal to load */
+		if (ice_init_acl(pf))
+			dev_err(dev, "Failed to initialize ACL\n");
+	}
+
 	/* Note: DCB init failure is non-fatal to load */
 	if (ice_init_pf_dcb(pf, false)) {
 		clear_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
@@ -4777,6 +4825,7 @@ static void ice_deinit_features(struct ice_pf *pf)
 	ice_deinit_lag(pf);
 	if (test_bit(ICE_FLAG_DCB_CAPABLE, pf->flags))
 		ice_cfg_lldp_mib_change(&pf->hw, false);
+	ice_deinit_acl(pf);
 	ice_deinit_fdir(pf);
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_exit(pf);
-- 
2.49.0

