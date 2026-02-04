Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMvKI2tpg2kbmgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C2BE947D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88DA26109B;
	Wed,  4 Feb 2026 15:44:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iTFpN0Bvf_IO; Wed,  4 Feb 2026 15:44:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9FBC61054
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770219874;
	bh=kNSPUkMn+4jd2EtoaMs0Jl1E0LSfQYPIgtw85UsoAQ0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1gBM8+6S6xA46BMJhTTJUWIFf/1ju7eE1Qf44HIg4YiVx1BYYBNlEY+2YDk/4I07M
	 vO/WjgJgIKyJdFekQvaZTRaNI9EqeMPDwcfPrukRFmuNaEpvqvUq60JCIDyfuJoEnT
	 1tC7ygWKPOsvmIqHkqbw08xpmMUMyagWRqFq9QDN6FLGI36MLHHRSgSCln5LLcngwL
	 OKS4ANhzQGwownSX5lGDidGOv81TxP1ro+GhOii9rwoLrm/8Np7oDmXbQ4Mj6u8CAp
	 xW5Ps+j06V8uVkyg/0Ndz6ANHBf1cwZoVwFVpYG5qkE8wV3qlSVgw2+UF39T/iVS9q
	 5wq48if3yp0DQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9FBC61054;
	Wed,  4 Feb 2026 15:44:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F647F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8019480B3F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jPvAbDoj0F7c for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 15:44:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 484F380A79
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 484F380A79
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 484F380A79
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:28 +0000 (UTC)
X-CSE-ConnectionGUID: Qg6jo6xeQme0OwRNmIk6rA==
X-CSE-MsgGUID: LaMve96lTcqQ3JgN+a51JA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="88987095"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="88987095"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 07:44:28 -0800
X-CSE-ConnectionGUID: yBmta7mfQ8+a1p3dhQUvbA==
X-CSE-MsgGUID: +nldAG6bQ7Cu9jKtAMF2nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="209494121"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa010.jf.intel.com with ESMTP; 04 Feb 2026 07:44:26 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed,  4 Feb 2026 16:44:14 +0100
Message-ID: <20260204154418.1285309-4-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204154418.1285309-1-jakub.slepecki@intel.com>
References: <20260204154418.1285309-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770219868; x=1801755868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jlx1HM4WhK92C63jv0PewtEGzcL37nDTi+iriH0kgzk=;
 b=aHcPivog6DkbdZVRUsMKPFsEvsUj8O4TkpCI278ljLOBTC3XPvujT4u8
 5znGPm1SfgNPxSKEORRwGs0ZnHcjiLHLiOW8H6fu3X+jOVpAJzbfXZ86H
 85nZRI1Gi5z1lfbno9nqdoRf+RHRI3c461LgY0YOTT8/+V0vtdMbn8fDq
 rdUhu99h6/mrbM5KdM5yJeUACGpAXFhbRQ7zYo1jcqsarlpmF8kefZ7ue
 pRAbttuk+Eqaei2V8nS47Ikms2sm1vBrMHNRAn/oDb+1GFYpBrOcdGQTr
 LEU9tLxNciNAglRg7CNV85rYJZg8JLWGpXVsupxxQmbcOm9DbOtNWNsGG
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aHcPivog
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/7] ice: allow overriding
 lan_en, lb_en in switch
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakub.slepecki@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 60C2BE947D
X-Rspamd-Action: no action

Currently, lan_en and lb_en are determined based on switching mode,
destination MAC, and the lookup type, action type and flags of the rule
in question.  This gives little to no options for the user (such as
ice_fltr.c) to enforce rules to behave in a specific way.

Such functionality is needed to work with pairs of rules, for example,
when handling MAC forward to LAN together with MAC,VLAN forward to
loopback rules pair.  This case could not be easily deduced in a context
of a single filter without adding some guessing logic or a specialized
flag.

Add a slightly more generic flag to the lan_en and lb_en themselves
for the ice_fltr.c to request specific destination flags later on,
for example, to override both values:

    struct ice_fltr_info fi;
    fi.lb_en = ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED;
    fi.lan_en = ICE_FLTR_INFO_LB_LAN_FORCE_DISABLED;

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
---
Added R-B from Aleksandr as we talked live and he reviewed the changes.

No changes in v4.

Changes in v3:
  - LB_LAN masks and values no longer rely on boolean promotion.
  - ice_fill_sw_info() deals with u8 the entire time instead of building
    building lb_en and lan_en values at the end from booleans.

Changes in v2:
  - Use FIELD_GET et al. when handling fi.lb_en and fi.lan_en.
  - Rename /LB_LAN/s/_MASK/_M/ because one of uses would need to break
    line
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 25 +++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_switch.h | 19 +++++++++++++---
 2 files changed, 32 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 04e5d653efce..3caccd798220 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2534,12 +2534,14 @@ int ice_get_initial_sw_cfg(struct ice_hw *hw)
  *
  * This helper function populates the lb_en and lan_en elements of the provided
  * ice_fltr_info struct using the switch's type and characteristics of the
- * switch rule being configured.
+ * switch rule being configured.  Elements are updated only if their FORCE bit
+ * is not set.
  */
 static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
 {
-	fi->lb_en = false;
-	fi->lan_en = false;
+	u8 lan_en = fi->lan_en;
+	u8 lb_en = fi->lb_en;
+
 	if ((fi->flag & ICE_FLTR_TX) &&
 	    (fi->fltr_act == ICE_FWD_TO_VSI ||
 	     fi->fltr_act == ICE_FWD_TO_VSI_LIST ||
@@ -2549,7 +2551,7 @@ static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
 		 * packets to the internal switch that will be dropped.
 		 */
 		if (fi->lkup_type != ICE_SW_LKUP_VLAN)
-			fi->lb_en = true;
+			FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &lb_en, 1);
 
 		/* Set lan_en to TRUE if
 		 * 1. The switch is a VEB AND
@@ -2578,14 +2580,19 @@ static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
 			     !is_unicast_ether_addr(fi->l_data.mac.mac_addr)) ||
 			    (fi->lkup_type == ICE_SW_LKUP_MAC_VLAN &&
 			     !is_unicast_ether_addr(fi->l_data.mac.mac_addr)))
-				fi->lan_en = true;
+				FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M,
+					     &lan_en, 1);
 		} else {
-			fi->lan_en = true;
+			FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &lan_en, 1);
 		}
 	}
 
 	if (fi->flag & ICE_FLTR_TX_ONLY)
-		fi->lan_en = false;
+		FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &lan_en, 0);
+	if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_M, lb_en))
+		fi->lb_en = lb_en;
+	if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_M, lan_en))
+		fi->lan_en = lan_en;
 }
 
 /**
@@ -2669,9 +2676,9 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 		return;
 	}
 
-	if (f_info->lb_en)
+	if (FIELD_GET(ICE_FLTR_INFO_LB_LAN_VALUE_M, f_info->lb_en))
 		act |= ICE_SINGLE_ACT_LB_ENABLE;
-	if (f_info->lan_en)
+	if (FIELD_GET(ICE_FLTR_INFO_LB_LAN_VALUE_M, f_info->lan_en))
 		act |= ICE_SINGLE_ACT_LAN_ENABLE;
 
 	switch (f_info->lkup_type) {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 671d7a5f359f..137eae878ab1 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -72,6 +72,14 @@ enum ice_src_id {
 	ICE_SRC_ID_LPORT,
 };
 
+#define ICE_FLTR_INFO_LB_LAN_VALUE_M BIT(0)
+#define ICE_FLTR_INFO_LB_LAN_FORCE_M BIT(1)
+#define ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED			 \
+	(FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_VALUE_M, 1) |  \
+	 FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_FORCE_M, 1))
+#define ICE_FLTR_INFO_LB_LAN_FORCE_DISABLED			 \
+	(FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_FORCE_M, 1))
+
 struct ice_fltr_info {
 	/* Look up information: how to look up packet */
 	enum ice_sw_lkup_type lkup_type;
@@ -131,9 +139,14 @@ struct ice_fltr_info {
 	 */
 	u8 qgrp_size;
 
-	/* Rule creations populate these indicators basing on the switch type */
-	u8 lb_en;	/* Indicate if packet can be looped back */
-	u8 lan_en;	/* Indicate if packet can be forwarded to the uplink */
+	/* Following members have two bits: VALUE and FORCE.  Rule creation will
+	 * populate VALUE bit of these members based on switch type, but only if
+	 * their FORCE bit is not set.
+	 *
+	 * See ICE_FLTR_INFO_LB_LAN_VALUE_M and ICE_FLTR_INFO_LB_LAN_FORCE_M.
+	 */
+	u8 lb_en;	/* VALUE bit: packet can be looped back */
+	u8 lan_en;	/* VALUE bit: packet can be forwarded to the uplink */
 };
 
 struct ice_update_recipe_lkup_idx_params {
-- 
2.43.0

