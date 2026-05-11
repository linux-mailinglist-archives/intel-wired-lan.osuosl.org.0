Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MeQA0ahAWpKgwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:28:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABC150ADF3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:28:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8F8E83CEB;
	Mon, 11 May 2026 09:28:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p32s3wdCPTTL; Mon, 11 May 2026 09:28:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 086B983D2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778491711;
	bh=/zhQtoWpZurV2lB7rhcmMeQ0DYqJa3SPKXPFZy4IrZU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M3YoCnDrdaWkqdYFVoYJ/HnuYRSTyjSLpjCbMXZe8oxrNTnrguHiuAU1TUD9MxUDK
	 pQ6VDf8QnTENxcTjb04Uq/T8TjlvUxbWuNAS+w+f2mpii1i4BnEnUQV8bcyWvev2m/
	 jISFhcxza8vs+9/wdwuHa7Rdtmr4VcCJ6mHEb3z7FLouV/5NdJEdZl1Ht7WWu3Ns1R
	 tQffJDNAY/2QBJVchW16TSENoRwZHyqDY4XqPHMz1odOow/e+J5D4Dj2X7LgxEUisD
	 qYIpHsWEwzxWYiSYUJO1DtAbe8aLpH/oWT70lc5dl2sRLKTsfvJgnUHYcN72JU85Cs
	 5+d4I3EBHJ8ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 086B983D2E;
	Mon, 11 May 2026 09:28:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AE5F0272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D922541592
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:28:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OYtCPS1QYE4M for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 09:28:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 21DA640DEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21DA640DEC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21DA640DEC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:28:27 +0000 (UTC)
X-CSE-ConnectionGUID: NHBI/V9ASy6IQGsL88N3PQ==
X-CSE-MsgGUID: qYw9sKjcQiS52d2zAHtT8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="96938070"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="96938070"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:28:26 -0700
X-CSE-ConnectionGUID: l9amFYY2SkqsL1JcPOxRaw==
X-CSE-MsgGUID: XDZ0rKDzTAu5+lEFNfL35Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="234741135"
Received: from gnrd8.igk.intel.com (HELO GNRD8) ([10.123.232.137])
 by fmviesa008.fm.intel.com with ESMTP; 11 May 2026 02:28:26 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 May 2026 09:28:22 +0000
Message-ID: <20260511092824.2522188-2-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260511092824.2522188-1-sergey.temerkhanov@intel.com>
References: <20260511092824.2522188-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778491707; x=1810027707;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jTL/PZSPiQp+85+BGPne5VVQJb0kjCexmQ0YEk+HnAs=;
 b=GibRc/YqKfcqiVVFnc1dzjlSs8V7iGrJPa98X4dCwAI3LaTBD0i4yy9Z
 WcW7SHB0j/GY7LJkurqpOgEuTalzia5fnU3/UWBhdeAZPoWjzzT3knF26
 +mG1a2r7AMXbeh51ZMG/SN39wGURYHw/bygcmgQooVnfRKhkrZnjPE4Dc
 U2ll/DV4eMWwqKY0W2P2F67mKCAP/P8yN71MBsCa2vzIehBuPexUdYftS
 ZM3wX6leUAk5IVs3lH8y8DZwLKI3xXBW8PqQE1oxjr1KVRCZmh6KEE0xX
 szWaFmBnkvboklZGZpMWTgKlr70nEDR3O/b8hitzpG/Abk1AljPH1g6lR
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GibRc/Yq
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/3] ice: Convert ctrl_pf
 pointer in struct ice_adapter to RCU
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
X-Rspamd-Queue-Id: 7ABC150ADF3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-0.999];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,intel.com:mid,osuosl.org:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Use RCU to ensure the consistent state of the control PF global
pointer contained in struct ice_adapter. Enforce RCU usage on
the callers.

Fix a potential invalid pointer return due a TOCTOU issue

Fixes: e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825 devices")

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Tested-by: Frederick Lawler <fred@cloudflare.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 10 +++-
 drivers/net/ethernet/intel/ice/ice_adapter.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 49 ++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  9 ++++
 4 files changed, 59 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 804f5aa8e9f5..2b2787d16c33 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -40,6 +40,7 @@
 #include <linux/cpu_rmap.h>
 #include <linux/dim.h>
 #include <linux/gnss.h>
+#include <linux/rcupdate.h>
 #include <net/pkt_cls.h>
 #include <net/pkt_sched.h>
 #include <net/tc_act/tc_mirred.h>
@@ -1145,14 +1146,19 @@ static inline bool ice_pf_src_tmr_owned(struct ice_pf *pf)
  * ice_get_primary_hw - Get pointer to primary ice_hw structure
  * @pf: pointer to PF structure
  *
+ * The function must be called from an RCU read-side critical section.
+ * hw is embedded in struct ice_pf, so it is protected by the RCU.
+ *
  * Return: A pointer to ice_hw structure with access to timesync
  * register space.
  */
 static inline struct ice_hw *ice_get_primary_hw(struct ice_pf *pf)
 {
-	if (!pf->adapter->ctrl_pf)
+	struct ice_pf *ctrl_pf = rcu_dereference(pf->adapter->ctrl_pf);
+
+	if (!ctrl_pf)
 		return &pf->hw;
 	else
-		return &pf->adapter->ctrl_pf->hw;
+		return &ctrl_pf->hw;
 }
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index e95266c7f20b..349d49d57f11 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -42,7 +42,7 @@ struct ice_adapter {
 	/* For access to GLCOMM_QTX_CNTX_CTL register */
 	spinlock_t txq_ctx_lock;
 
-	struct ice_pf *ctrl_pf;
+	struct ice_pf __rcu *ctrl_pf;
 	struct ice_port_list ports;
 	u64 index;
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 691f05c62d4e..23d9a826f88b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -4,6 +4,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_trace.h"
+#include <linux/rcupdate.h>
 
 static const char ice_pin_names[][64] = {
 	"SDP0",
@@ -54,11 +55,35 @@ static const struct ice_ptp_pin_desc ice_pin_desc_dpll[] = {
 	{  SDP3, {  3, -1 }, { 0, 0 }},
 };
 
+/**
+ * ice_get_ctrl_pf - Get the control PF for a given PF
+ * @pf: The PF pointer to look up at
+ *
+ * The control PF is the PF which owns the PTP clock for the adapter.
+ * Only the control PF is allowed to perform certain operations on the
+ * PTP clock such as adjusting the time or configuring the pins.
+ *
+ * This function must be called from an RCU read-side critical section.
+ *
+ * Return: Pointer to the control PF, or NULL if not found
+ */
 static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf)
 {
-	return !pf->adapter ? NULL : pf->adapter->ctrl_pf;
+	return !pf->adapter ? NULL : rcu_dereference(pf->adapter->ctrl_pf);
 }
 
+/**
+ * ice_get_ctrl_ptp - Get the PTP structure for the control PF
+ * @pf: The PF pointer to look up at
+ *
+ * The control PF is the PF which owns the PTP clock for the adapter.
+ * Only the control PF is allowed to perform certain operations on the
+ * PTP clock such as adjusting the time or configuring the pins.
+ *
+ * This function must be called from an RCU read-side critical section.
+ *
+ * Return: Pointer to the PTP structure of the control PF, or NULL if not found
+ */
 static struct ice_ptp *ice_get_ctrl_ptp(struct ice_pf *pf)
 {
 	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
@@ -207,6 +232,8 @@ u64 ice_ptp_read_src_clk_reg(struct ice_pf *pf,
 	u32 hi, lo, lo2;
 	u8 tmr_idx;
 
+	guard(rcu)();
+
 	if (!ice_is_primary(hw))
 		hw = ice_get_primary_hw(pf);
 
@@ -3074,18 +3101,19 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 static void ice_ptp_setup_adapter(struct ice_pf *pf)
 {
-	pf->adapter->ctrl_pf = pf;
+	rcu_assign_pointer(pf->adapter->ctrl_pf, pf);
 }
 
 static int ice_ptp_setup_pf(struct ice_pf *pf)
 {
-	struct ice_ptp *ctrl_ptp = ice_get_ctrl_ptp(pf);
 	struct ice_ptp *ptp = &pf->ptp;
 
-	if (!ctrl_ptp) {
-		dev_info(ice_pf_to_dev(pf),
-			 "PTP unavailable: no controlling PF\n");
-		return -EOPNOTSUPP;
+	scoped_guard(rcu) {
+		if (!ice_get_ctrl_ptp(pf)) {
+			dev_info(ice_pf_to_dev(pf),
+				 "PTP unavailable: no controlling PF\n");
+			return -EOPNOTSUPP;
+		}
 	}
 
 	if (pf->hw.mac_type == ICE_MAC_UNKNOWN)
@@ -3121,11 +3149,16 @@ static void ice_ptp_cleanup_pf(struct ice_pf *pf)
  */
 int ice_ptp_clock_index(struct ice_pf *pf)
 {
-	struct ice_ptp *ctrl_ptp = ice_get_ctrl_ptp(pf);
+	struct ice_ptp *ctrl_ptp;
 	struct ptp_clock *clock;
 
+	guard(rcu)();
+
+	ctrl_ptp = ice_get_ctrl_ptp(pf);
+
 	if (!ctrl_ptp)
 		return -1;
+
 	clock = ctrl_ptp->clock;
 
 	return clock ? ptp_clock_index(clock) : -1;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index f0b76660a012..30a7096854c2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (C) 2021, Intel Corporation. */
 
+#include <linux/cleanup.h>
 #include <linux/delay.h>
 #include <linux/iopoll.h>
 #include "ice_common.h"
@@ -351,6 +352,8 @@ void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
 	u32 cmd_val = ice_ptp_tmr_cmd_to_src_reg(hw, cmd);
 
+	guard(rcu)();
+
 	if (!ice_is_primary(hw))
 		hw = ice_get_primary_hw(pf);
 
@@ -379,6 +382,8 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
 	if (err)
 		dev_warn(ice_hw_to_dev(hw), "Failed to flush SBQ: %d\n", err);
 
+	guard(rcu)();
+
 	if (!ice_is_primary(hw))
 		hw = ice_get_primary_hw(pf);
 
@@ -1948,6 +1953,8 @@ static int ice_read_phy_and_phc_time_eth56g(struct ice_hw *hw, u8 port,
 		zo = rd32(hw, GLTSYN_SHTIME_0(tmr_idx));
 		lo = rd32(hw, GLTSYN_SHTIME_L(tmr_idx));
 	} else {
+		guard(rcu)();
+
 		zo = rd32(ice_get_primary_hw(pf), GLTSYN_SHTIME_0(tmr_idx));
 		lo = rd32(ice_get_primary_hw(pf), GLTSYN_SHTIME_L(tmr_idx));
 	}
@@ -2117,6 +2124,8 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
 		lo = rd32(hw, GLTSYN_INCVAL_L(tmr_idx));
 		hi = rd32(hw, GLTSYN_INCVAL_H(tmr_idx));
 	} else {
+		guard(rcu)();
+
 		lo = rd32(ice_get_primary_hw(pf), GLTSYN_INCVAL_L(tmr_idx));
 		hi = rd32(ice_get_primary_hw(pf), GLTSYN_INCVAL_H(tmr_idx));
 	}
-- 
2.53.0

