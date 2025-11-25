Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 677BFC84000
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 09:35:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 135C3405A6;
	Tue, 25 Nov 2025 08:35:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KrMb1z0_CcUi; Tue, 25 Nov 2025 08:35:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27AC5405FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764059711;
	bh=a7NVzbX50yYp9nWQfpVx53+PLE+i1jUh1o+63ru2eP8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H3ncUnIH7yCYuQMRAH/IuUD8Exwohdwbl2po9RbpsPph2cbS5KgDco3aGTtzHS4X8
	 2kGHStU5tFfyCsy4BVV/kK/TYNievfpBiiG5YlJHq/aZlznJ/a0tAHlu2yGEOB40Af
	 nk9I8YXJylcpcG/VTKBR+ONyW+/J4ItFXDI8FfhSmWWdZ9cmEoEVLA1XxilGljW+6D
	 TBmPEdOSJ53jRkb2HZjTTdeRiC73ZMbLoviZ+U9sskZDWL/YnwNHnSflF+mkXxa6Kt
	 JmZslJAv2jmiMpsjVbRk5MQ7Ah1Ri5RYkg2MyhSk5bG1pTiPUuk+TQXf0DhB5ZTWSn
	 2f2HAzoEhaQ/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27AC5405FA;
	Tue, 25 Nov 2025 08:35:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BF7C535C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B24D340590
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gYrW64PO2wXG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 08:35:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C53AE4051A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C53AE4051A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C53AE4051A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:08 +0000 (UTC)
X-CSE-ConnectionGUID: 6uw9XaMzQoS5Vza+Mj6Qew==
X-CSE-MsgGUID: I9bDpPSiR3GhQnCQfnyLKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76694451"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="76694451"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 00:35:08 -0800
X-CSE-ConnectionGUID: +zCLvLmcS66fbIl3F29HFA==
X-CSE-MsgGUID: pxG76YHFSxWB+dOT9wBuFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="196749931"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa003.jf.intel.com with ESMTP; 25 Nov 2025 00:35:07 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 25 Nov 2025 09:34:52 +0100
Message-ID: <20251125083456.28822-5-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125083456.28822-1-jakub.slepecki@intel.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764059708; x=1795595708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LD1Sq4vuKKU7qYEKwzSby9X/dhqZHZ7greDgzv3gq80=;
 b=icrBi0FN1/SR7j9FX4xqpb292DPbC1WFqlQHp7IVCcBbCcGdVyx7xUAx
 VPpdBOK3tOUeIna+KRN9oKonWwqx0RckTf4Eo7gBydFUnYQ9OsuNoz3H0
 74joVkjjV2vWdaY5vRZlir/zt12F/eb+XtQfODB7yWDsJnF9vvtpuY2ax
 XtNpspaS7qKhEl1JZPXe+EXm69RS9Ren7xAoyaJZHhMAXTLL6wx/fEM2o
 EzFeshaB5T8sOJEivi4GqaU1XWnPUFzB9/adv5Ve6gp0yE3bMi8b8UnlI
 WxFsD4lBHbjKu+i8gEgXL7gJan/I4dHR9we4juvVPueiOJ6rch0e1vZy8
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=icrBi0FN
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/8] ice: allow overriding
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
of a single filter without adding a specialized flag.

Instead of adding a specialized flag to mark special scenario rules,
we add a slightly more generic flag to the lan_en and lb_en themselves
for the ice_fltr.c to request specific destination flags later on, for
example, to override value:

    struct ice_fltr_info fi;
    fi.lb_en = ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED;
    fi.lan_en = ICE_FLTR_INFO_LB_LAN_FORCE_DISABLED;

Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>

---
Dropping reviewed-by from Michał due to changes.

Changes in v2:
  - Use FIELD_GET et al. when handling fi.lb_en and fi.lan_en.
  - Rename /LB_LAN/s/_MASK/_M/ because one of uses would need to break
    line.
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 21 +++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_switch.h |  8 ++++++++
 2 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 04e5d653efce..b3f5cda1571e 100644
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
+	if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_M, fi->lb_en))
+		FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &fi->lb_en, lb_en);
+	if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_M, fi->lan_en))
+		FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &fi->lan_en, lan_en);
 }
 
 /**
@@ -2669,9 +2674,9 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
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
index 671d7a5f359f..b694c131ad58 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -72,6 +72,14 @@ enum ice_src_id {
 	ICE_SRC_ID_LPORT,
 };
 
+#define ICE_FLTR_INFO_LB_LAN_VALUE_M BIT(0)
+#define ICE_FLTR_INFO_LB_LAN_FORCE_M BIT(1)
+#define ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED			 \
+	(FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_VALUE_M, true) |  \
+	 FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_FORCE_M, true))
+#define ICE_FLTR_INFO_LB_LAN_FORCE_DISABLED			 \
+	(FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_FORCE_M, true))
+
 struct ice_fltr_info {
 	/* Look up information: how to look up packet */
 	enum ice_sw_lkup_type lkup_type;
-- 
2.43.0

