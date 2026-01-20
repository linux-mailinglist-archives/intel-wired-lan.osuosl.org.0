Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68494D3C5B5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 11:42:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1988C6FC89;
	Tue, 20 Jan 2026 10:42:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9CsgeWt6nRJ; Tue, 20 Jan 2026 10:42:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E5AE6FC8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768905720;
	bh=KdAvKEVAKUuJF5z9M3wqdbWLFtQXBO3N28ahopGEqHs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3vWytU4YNptsF3ojCmfR2Z+zFryV9Mli08uFl80+FLmGAqqViWme+1YmyJRuWOhr2
	 e0USKacfZMf8RU6v1424QV5Sb4sXaZc2+MUylbG3Lr1opSqMSwf427TsKDAmnQDIzl
	 K1K+FxlBs+xZFzQ9LU6ni6CR6UiCRj6U7nIaqj1EhQacl8KhhY0hGImLJWmt+qMMXI
	 8v48JnS3n/NUYKC8GyY9G15a2foAgVuGto9C0incpUWuLf8D7db7slR10GCpJSjii2
	 T8qQLwYGwJRx4KEFy4jRyb8oolEm1iFx2ZHApEUoiWSOYiQF2yiy92pFdpdSHuIAXM
	 +vCELSoFvyW1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E5AE6FC8A;
	Tue, 20 Jan 2026 10:42:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DFF082A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3AB4858BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jqdBJYsUKyI5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 10:41:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CA2DA85857
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA2DA85857
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA2DA85857
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:56 +0000 (UTC)
X-CSE-ConnectionGUID: mXYPQe6DTc+IyzO27G1TaQ==
X-CSE-MsgGUID: +o9PBAsbS+6jWErOfMpybg==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70161747"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70161747"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 02:34:50 -0800
X-CSE-ConnectionGUID: ipVBg8rASC6sTNAfBhD0LA==
X-CSE-MsgGUID: lNdC1XsPSC+zrigQGNbj/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210935856"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jan 2026 02:34:49 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 20 Jan 2026 11:34:35 +0100
Message-ID: <20260120103440.892326-5-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120103440.892326-1-jakub.slepecki@intel.com>
References: <20260120103440.892326-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768905717; x=1800441717;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iC3XdbETtmivl7MiNG080jOCyV8qw/2J329iqKv9uzM=;
 b=kRP2KyWUa4sSHWTFJGD1g8VCjz4xFfd8kLa/fK3Se5irSc4pw7tkYC+2
 67ggfKn/80IxGQZr7lQYySaZ2SNqszKDKXo+BUYgpCcd+SJRZPi5C1SRX
 GFbVEYss9DImPRSdzy1eaVB1Zv6Br4LAS6beoW6vFajwLKmoLE4WGkTex
 axxXNWOe5VvqOkTZ4XKNbEoYVBSo/nwETbFo3+AYl0SpIVSWdvXRcpaV/
 +5Lfy02e3sZzhEjm1cD1JEHD1+9Y5nc3wMm1HUaObqSOiqHpVb55+82rV
 juIeEKi71zaK5KR5RL1W5tnov3fLRQeRKEIer4EdJGdQogvhL8bbgwLXb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kRP2KyWU
Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/8] ice: allow overriding
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

Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
---
I considered a resend or bumping the old thread, because we did not finish
the discussion last time with Aleksandr, but I feel like this version
addresses most if not all of the points that were made.  One exception is
that I did not split the fields, but that was only one of the solutions.
Nonetheless, this should be overall a good starting point for a
discussion.

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

