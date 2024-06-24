Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 215E7915058
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2024 16:44:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C01C480E01;
	Mon, 24 Jun 2024 14:44:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nVHlwClRSYG1; Mon, 24 Jun 2024 14:44:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A123C80DEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719240250;
	bh=5PGD70Am+eAzAVcUCNCNDYnEz+l8m7XvZ5Mi8LvuDT0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PmMZSfby0scd5FCM4K6KTmgwtKRGEE+yArFmzJ0vDm1rJ5I2yaf2QpYWXv9G85n1k
	 OqnYuNIrficEHKBlpLz2u+cqeSrIBtoQ0edfLXnE11WPdtBR+T1A6IQaIKhfNXdo+3
	 QY5VXc2TNECbGkCAuC9JNo/N9kjKsLb82ohamkrPTUrl5/HGmqiR5KMTWZr3irk6yq
	 mNOcUNH2TKqZrfdeBYRnMaCR3FZnzPnJW+6ZI0t4+OIyl4I2eO6Lw1Lc+mHoaa5Y6t
	 7jINETfICNuBCHxvDOJT44BrC7uWN1xnpdS4X2dPHFrlrgzL5SxL6cYVdZG9b4+1Gl
	 vSe+7Qn+d+yzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A123C80DEB;
	Mon, 24 Jun 2024 14:44:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C24DA1BF591
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:44:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4540608C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:44:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D14D1B5IYn2Z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2024 14:44:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4040608F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4040608F4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4040608F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:44:04 +0000 (UTC)
X-CSE-ConnectionGUID: stZPyCDlTTq1yqVEMtm4ZQ==
X-CSE-MsgGUID: r7ioymhyQGmfYYzTszer/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16040495"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16040495"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 07:44:04 -0700
X-CSE-ConnectionGUID: EdIdt4u8STeh7/HJA1onHQ==
X-CSE-MsgGUID: RLNaCpDkRgiInDJq/NUd/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="44022101"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 24 Jun 2024 07:44:03 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D3EC527BC1;
 Mon, 24 Jun 2024 15:43:50 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jun 2024 16:45:30 +0200
Message-ID: <20240624144530.690545-8-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240624144530.690545-1-marcin.szycik@linux.intel.com>
References: <20240624144530.690545-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719240245; x=1750776245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8wlWxjQnGwgEhExXtTwTijuUSggtdci5MekL1Up+5JQ=;
 b=IKzpYF1VuWkxF3asgf7z5HY8uWGHhCRyG5TNi57hfvEb2wvwB3q27pf2
 RENDZD91R93IC5R4gMK+mAkUpyGJg+0xXB78kbpNgkS/r8YEqUxuPI1iV
 KTbaDe4IZM7KZMBqLbU1EQCqbWdI5tXIbqK5iTWbEGFofhVuQKClJD07+
 bIZBzxB8bPRWSpDUONHwVyvRCWsydVMnA840XyRvS4Syf2tC9NZDYQ6kf
 MMnEMgMEAkpMPC24w7fx/9+WxJEPxeaml5gE4C7K1vPoVwpI/rL1ulRLh
 rIusP6TrAD3Po4iqnH3ddJjG6EaeaSfTXlamGkkiAAGsbkOwxxEae+p3M
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IKzpYF1V
Subject: [Intel-wired-lan] [PATCH iwl-next v2 7/7] ice: Add tracepoint for
 adding and removing switch rules
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
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Track the number of rules and recipes added to switch. Add a tracepoint to
ice_aq_sw_rules(), which shows both rule and recipe count. This information
can be helpful when designing a set of rules to program to the hardware, as
it shows where the practical limit is. Actual limits are known (64 recipes,
32k rules), but it's hard to translate these values to how many rules the
*user* can actually create, because of extra metadata being implicitly
added, and recipe/rule chaining. Chaining combines several recipes/rules to
create a larger recipe/rule, so one large rule added by the user might
actually consume multiple rules from hardware perspective.

Rule counter is simply incremented/decremented in ice_aq_sw_rules(), since
all rules are added or removed via it.

Counting recipes is harder, as recipes can't be removed (only overwritten).
Recipes added via ice_aq_add_recipe() could end up being unused, when
there is an error in later stages of rule creation. Instead, track the
allocation and freeing of recipes, which should reflect the actual usage of
recipes (if something fails after recipe(s) were created, caller should
free them). Also, a number of recipes are loaded from NVM by default -
initialize the recipe counter with the number of these recipes on switch
initialization.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  3 +++
 drivers/net/ethernet/intel/ice/ice_switch.c | 22 +++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_trace.h  | 18 +++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_type.h   |  2 ++
 4 files changed, 43 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 6abd1b3796ab..009716a12a26 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -934,6 +934,9 @@ static int ice_init_fltr_mgmt_struct(struct ice_hw *hw)
 	INIT_LIST_HEAD(&sw->vsi_list_map_head);
 	sw->prof_res_bm_init = 0;
 
+	/* Initialize recipe count with default recipes read from NVM */
+	sw->recp_cnt = ICE_SW_LKUP_LAST;
+
 	status = ice_init_def_sw_recp(hw);
 	if (status) {
 		devm_kfree(ice_hw_to_dev(hw), hw->switch_info);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 27828cdfe085..3caafcdc301f 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3,6 +3,7 @@
 
 #include "ice_lib.h"
 #include "ice_switch.h"
+#include "ice_trace.h"
 
 #define ICE_ETH_DA_OFFSET		0
 #define ICE_ETH_ETHTYPE_OFFSET		12
@@ -1961,6 +1962,15 @@ ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
 	    hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT)
 		status = -ENOENT;
 
+	if (!status) {
+		if (opc == ice_aqc_opc_add_sw_rules)
+			hw->switch_info->rule_cnt += num_rules;
+		else if (opc == ice_aqc_opc_remove_sw_rules)
+			hw->switch_info->rule_cnt -= num_rules;
+	}
+
+	trace_ice_aq_sw_rules(hw->switch_info);
+
 	return status;
 }
 
@@ -2181,8 +2191,10 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 	sw_buf->res_type = cpu_to_le16(res_type);
 	status = ice_aq_alloc_free_res(hw, sw_buf, buf_len,
 				       ice_aqc_opc_alloc_res);
-	if (!status)
+	if (!status) {
 		*rid = le16_to_cpu(sw_buf->elem[0].e.sw_resp);
+		hw->switch_info->recp_cnt++;
+	}
 
 	return status;
 }
@@ -2196,7 +2208,13 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
  */
 static int ice_free_recipe_res(struct ice_hw *hw, u16 rid)
 {
-	return ice_free_hw_res(hw, ICE_AQC_RES_TYPE_RECIPE, 1, &rid);
+	int status;
+
+	status = ice_free_hw_res(hw, ICE_AQC_RES_TYPE_RECIPE, 1, &rid);
+	if (!status)
+		hw->switch_info->recp_cnt--;
+
+	return status;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_trace.h b/drivers/net/ethernet/intel/ice/ice_trace.h
index 244cddd2a9ea..07aab6e130cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_trace.h
+++ b/drivers/net/ethernet/intel/ice/ice_trace.h
@@ -330,6 +330,24 @@ DEFINE_EVENT(ice_esw_br_port_template,
 	     TP_ARGS(port)
 );
 
+DECLARE_EVENT_CLASS(ice_switch_stats_template,
+		    TP_PROTO(struct ice_switch_info *sw_info),
+		    TP_ARGS(sw_info),
+		    TP_STRUCT__entry(__field(u16, rule_cnt)
+				     __field(u8, recp_cnt)),
+		    TP_fast_assign(__entry->rule_cnt = sw_info->rule_cnt;
+				   __entry->recp_cnt = sw_info->recp_cnt;),
+		    TP_printk("rules=%u recipes=%u",
+			      __entry->rule_cnt,
+			      __entry->recp_cnt)
+);
+
+DEFINE_EVENT(ice_switch_stats_template,
+	     ice_aq_sw_rules,
+	     TP_PROTO(struct ice_switch_info *sw_info),
+	     TP_ARGS(sw_info)
+);
+
 /* End tracepoints */
 
 #endif /* _ICE_TRACE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index c330a436d11a..b6bc2de53b0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -764,6 +764,8 @@ struct ice_switch_info {
 	struct ice_sw_recipe *recp_list;
 	u16 prof_res_bm_init;
 	u16 max_used_prof_index;
+	u16 rule_cnt;
+	u8 recp_cnt;
 
 	DECLARE_BITMAP(prof_res_bm[ICE_MAX_NUM_PROFILES], ICE_MAX_FV_WORDS);
 };
-- 
2.45.0

