Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 922D6C757DE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 17:57:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C94936F4D7;
	Thu, 20 Nov 2025 16:57:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n3NXXSyrVzUT; Thu, 20 Nov 2025 16:57:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 443D36F4D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763657871;
	bh=x/41R/chT8RwXp8a8UbPl7qjX+1FE80LsYpPN4lU8Vc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xsAEKeW6Utc42hYV4kiNxX0U4gFD6ApR6+DEPDUDLGYqD4DyhtSUYpDLZSfIwWotT
	 FmLLIooDv7lKD4yyS7NCvJSg7Ag1t1Jr4IjvG2mMRQVAS6W6vQ7o026mw6/BTkzZNJ
	 0EHzU9A5tmItJl/VRPjDS8183AaSWzqnWRrGoErMlSdNAenHyVDzO4SFDEhdM6I+Q+
	 /P3NIB7NZwWO0Uvu4pO60JyxQQQPf0hbxsinFfWotopOrI20SxvWhjiwcolccOOUv+
	 TwA4XPCzo42I6ofP0VxPSm9w9ATQr+vDvqGvXplm2yBpS3d6FI92K1qnjidEPR+dfY
	 ukY3LOjvu59dA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 443D36F4D3;
	Thu, 20 Nov 2025 16:57:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E6B0137F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D96CD6125B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SxYvPwZN7WFn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 16:28:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DED2E61073
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DED2E61073
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DED2E61073
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:24 +0000 (UTC)
X-CSE-ConnectionGUID: tvSLb8abTiSmKIc1gG8DpQ==
X-CSE-MsgGUID: gvKUk2MVRjS43sL3tmhywA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="69599300"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="69599300"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 08:28:24 -0800
X-CSE-ConnectionGUID: cFh5Fch8RdyJNL8o3Q64BQ==
X-CSE-MsgGUID: jPuNL+t7QCOBlBJxb7w92Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="191531292"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa008.jf.intel.com with ESMTP; 20 Nov 2025 08:28:23 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com
Date: Thu, 20 Nov 2025 17:28:09 +0100
Message-ID: <20251120162813.37942-5-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251120162813.37942-1-jakub.slepecki@intel.com>
References: <20251120162813.37942-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 20 Nov 2025 16:57:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763656105; x=1795192105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o05JNdB6D1vyiu/R+lX09CjA8bn5afRbx6R7I34pziA=;
 b=JANfrB1NNMPFrpc9psg6om9igVJDpLPZe0SUJF1/KYiLP93byWTRw45H
 MUYqQP2ZKEpJdCaCOl60IPazGiZHFSiavy5OSSupjlBTxrJxEYx60kHWI
 uKHtr926waUhjCVUCSRedHEYYuJqKB28SI15MIWX9FlE7JjNbQRWwFqgo
 raHjPQ4zR7HPX8mr+UCktIwICtdoZpMUiSx3e8TxcYRTjpkbM8aqryhO9
 MkbkgydF/epS5qSVOeD16oXTptFpXnl9If2aY3tnIWPN/zy7eqalt+3va
 xPlksZn8K7tx0LJwYc3lux6mqaXhX+tUuzDTf/htjxfTBtEDdEfmMUMw4
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JANfrB1N
Subject: [Intel-wired-lan] [PATCH iwl-next 4/8] ice: allow overriding lan_en,
 lb_en in switch
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
of a single filter without adding a specialized flag.

Instead of adding a specialized flag to mark special scenario rules,
we add a slightly more generic flag to the lan_en and lb_en themselves
for the ice_fltr.c to request specific destination flags later on, for
example, to override value:

    struct ice_fltr_info fi;
    fi.lb_en = ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED;
    fi.lan_en = ICE_FLTR_INFO_LB_LAN_FORCE_DISABLED;

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 21 +++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_switch.h |  7 +++++++
 2 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 04e5d653efce..7b63588948fd 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2538,8 +2538,9 @@ int ice_get_initial_sw_cfg(struct ice_hw *hw)
  */
 static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
 {
-	fi->lb_en = false;
-	fi->lan_en = false;
+	bool lan_en = false;
+	bool lb_en = false;
+
 	if ((fi->flag & ICE_FLTR_TX) &&
 	    (fi->fltr_act == ICE_FWD_TO_VSI ||
 	     fi->fltr_act == ICE_FWD_TO_VSI_LIST ||
@@ -2549,7 +2550,7 @@ static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
 		 * packets to the internal switch that will be dropped.
 		 */
 		if (fi->lkup_type != ICE_SW_LKUP_VLAN)
-			fi->lb_en = true;
+			lb_en = true;
 
 		/* Set lan_en to TRUE if
 		 * 1. The switch is a VEB AND
@@ -2578,14 +2579,18 @@ static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
 			     !is_unicast_ether_addr(fi->l_data.mac.mac_addr)) ||
 			    (fi->lkup_type == ICE_SW_LKUP_MAC_VLAN &&
 			     !is_unicast_ether_addr(fi->l_data.mac.mac_addr)))
-				fi->lan_en = true;
+				lan_en = true;
 		} else {
-			fi->lan_en = true;
+			lan_en = true;
 		}
 	}
 
 	if (fi->flag & ICE_FLTR_TX_ONLY)
-		fi->lan_en = false;
+		lan_en = false;
+	if (!(fi->lb_en & ICE_FLTR_INFO_LB_LAN_FORCE_MASK))
+		fi->lb_en = lb_en;
+	if (!(fi->lan_en & ICE_FLTR_INFO_LB_LAN_FORCE_MASK))
+		fi->lan_en = lan_en;
 }
 
 /**
@@ -2669,9 +2674,9 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 		return;
 	}
 
-	if (f_info->lb_en)
+	if (f_info->lb_en & ICE_FLTR_INFO_LB_LAN_VALUE_MASK)
 		act |= ICE_SINGLE_ACT_LB_ENABLE;
-	if (f_info->lan_en)
+	if (f_info->lan_en & ICE_FLTR_INFO_LB_LAN_VALUE_MASK)
 		act |= ICE_SINGLE_ACT_LAN_ENABLE;
 
 	switch (f_info->lkup_type) {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 671d7a5f359f..a7dc4bfec3a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -72,6 +72,13 @@ enum ice_src_id {
 	ICE_SRC_ID_LPORT,
 };
 
+#define ICE_FLTR_INFO_LB_LAN_VALUE_MASK BIT(0)
+#define ICE_FLTR_INFO_LB_LAN_FORCE_MASK BIT(1)
+#define ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED	\
+	(ICE_FLTR_INFO_LB_LAN_VALUE_MASK |	\
+	 ICE_FLTR_INFO_LB_LAN_FORCE_MASK)
+#define ICE_FLTR_INFO_LB_LAN_FORCE_DISABLED ICE_FLTR_INFO_LB_LAN_FORCE_MASK
+
 struct ice_fltr_info {
 	/* Look up information: how to look up packet */
 	enum ice_sw_lkup_type lkup_type;
-- 
2.43.0

