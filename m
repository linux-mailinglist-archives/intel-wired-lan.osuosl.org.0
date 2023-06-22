Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F1B73A22C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 15:49:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9E5383C78;
	Thu, 22 Jun 2023 13:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9E5383C78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687441758;
	bh=oNdT5JBQ04TzZU6m/3y+kcg0qaYFvbZR/ol68QkFgPM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rmDcEZJWFD6OeCSzqIAmDQibjhdVP7ZPgO2/diE8J0ht3/btBMDyVlpzbmvlNLZZd
	 Bxh+VT4KghhD0sVMuRHVtrKeThLm3MSX/pP812DbJ1bZf5gLL+5eUFeMe7jfHwZoGW
	 kBvFKcKtM0JTvjvK2TR8a4AL7F1ujPq5IuUinc5AMcIjKHOEb7Ch72ynnohLcTdL37
	 yOCQ3yZF3+MPA9luoXBpzNMqYuJveB6LxVw5DTwFMUnTL/OS3dytKGxF6cv9FWyjZe
	 +KEdwm+plYvjH74eKczIlt4yUI2gY1YoracD+NLiKiqBYDb5siBQlkgP5UZfuTpEuk
	 xyIB7y38A4WHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WrkFJxxBpqL7; Thu, 22 Jun 2023 13:49:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AE5B83BBE;
	Thu, 22 Jun 2023 13:49:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AE5B83BBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8066D1BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D23360BE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:49:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D23360BE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fbHP6WwYeSc5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 13:49:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE2DA60C2C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE2DA60C2C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:49:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="390234100"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="390234100"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 06:49:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="804791813"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="804791813"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jun 2023 06:48:58 -0700
Received: from giewont.igk.intel.com (giewont.igk.intel.com [10.211.8.15])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 161293493B;
 Thu, 22 Jun 2023 14:48:58 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Jun 2023 15:35:12 +0200
Message-Id: <20230622133513.28551-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230622133513.28551-1-marcin.szycik@linux.intel.com>
References: <20230622133513.28551-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687441740; x=1718977740;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KoEbaJaJlFkTKNWuKnd6OPQcY1PNUaTLxJoAu2/HF1U=;
 b=cwJQhmIrkq8II+lFGa+OP3I2bWe2Orc+qZACPLgrUK0/0iZ4yQVA72Fu
 +JB0xZOqD9vroeOh9e8/At5mmhEks6QPvr6irMziARSczA3SsCtQQGcAs
 MzV12AarOC9wfth4h40XCqyDlMLCrSR0k+6V3UMwVZPEvCUp3zWmE2j1z
 NCqoOuVzXS4Wogw3mJUvUiMy4YbJ+yGIyl+s3q/Asq26lqvH4oLh5EAjJ
 cqo8EQheXd0cYk98SujrVtJVsGcfYj2SQGaAhLh1uf7PaANHEKLaDDt+c
 U6iR4AnL63iE/LCI9E/vOeUZ4QLZ/a/ObSqfvv9+BtSJKevAQ1fcWzbF1
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cwJQhmIr
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Add direction metadata
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently it is possible to create a filter which breaks TX traffic, e.g.:

tc filter add dev $PF1 ingress protocol ip prio 1 flower ip_proto udp
dst_port $PORT action mirred egress redirect dev $VF1_PR

This adds a rule which might match both TX and RX traffic, and in TX path
the PF will actually receive the traffic, which breaks communication.

To fix this, add a match on direction metadata flag when adding a tc rule.

Because of the way metadata is currently handled, a duplicate lookup word
would appear if VLAN metadata is also added. The lookup would still work
correctly, but one word would be wasted. To prevent it, lookup 0 now always
contains all metadata. When any metadata needs to be added, it is added to
lookup 0 and lookup count is not incremented. This way, two flags residing
in the same word will take up one word, instead of two.

Note: the drop action is also affected, i.e. it will now only work in one
direction.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 .../ethernet/intel/ice/ice_protocol_type.h    |  1 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 11 ++++--
 drivers/net/ethernet/intel/ice/ice_switch.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 34 +++++++++----------
 4 files changed, 28 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index a1543e995fa1..82491f6af6d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -298,6 +298,7 @@ struct ice_nvgre_hdr {
  * M = EVLAN (0x8100) - Outer L2 header has EVLAN (ethernet type 0x8100)
  * N = EVLAN (0x9100) - Outer L2 header has EVLAN (ethernet type 0x9100)
  */
+#define ICE_PKT_FROM_NETWORK	BIT(3)
 #define ICE_PKT_VLAN_STAG	BIT(12)
 #define ICE_PKT_VLAN_ITAG	BIT(13)
 #define ICE_PKT_VLAN_EVLAN	(BIT(14) | BIT(15))
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 87d5ce0c8cb3..28fb175f0fe4 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -6143,14 +6143,21 @@ ice_adv_add_update_vsi_list(struct ice_hw *hw,
 void ice_rule_add_tunnel_metadata(struct ice_adv_lkup_elem *lkup)
 {
 	lkup->type = ICE_HW_METADATA;
-	lkup->m_u.metadata.flags[ICE_PKT_FLAGS_TUNNEL] =
+	lkup->m_u.metadata.flags[ICE_PKT_FLAGS_TUNNEL] |=
 		cpu_to_be16(ICE_PKT_TUNNEL_MASK);
 }
 
+void ice_rule_add_direction_metadata(struct ice_adv_lkup_elem *lkup)
+{
+	lkup->type = ICE_HW_METADATA;
+	lkup->m_u.metadata.flags[ICE_PKT_FLAGS_VLAN] |=
+		cpu_to_be16(ICE_PKT_FROM_NETWORK);
+}
+
 void ice_rule_add_vlan_metadata(struct ice_adv_lkup_elem *lkup)
 {
 	lkup->type = ICE_HW_METADATA;
-	lkup->m_u.metadata.flags[ICE_PKT_FLAGS_VLAN] =
+	lkup->m_u.metadata.flags[ICE_PKT_FLAGS_VLAN] |=
 		cpu_to_be16(ICE_PKT_VLAN_MASK);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index f2ff8fbfe9b6..ee24707071a1 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -361,6 +361,7 @@ int ice_share_res(struct ice_hw *hw, u16 type, u8 shared, u16 res_id);
 
 /* Switch/bridge related commands */
 void ice_rule_add_tunnel_metadata(struct ice_adv_lkup_elem *lkup);
+void ice_rule_add_direction_metadata(struct ice_adv_lkup_elem *lkup);
 void ice_rule_add_vlan_metadata(struct ice_adv_lkup_elem *lkup);
 void ice_rule_add_src_vsi_metadata(struct ice_adv_lkup_elem *lkup);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 6bbf99b5e112..c4a14eaacc5c 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -7,6 +7,8 @@
 #include "ice_lib.h"
 #include "ice_protocol_type.h"
 
+#define ICE_TC_METADATA_LKUP_IDX 0
+
 /**
  * ice_tc_count_lkups - determine lookup count for switch filter
  * @flags: TC-flower flags
@@ -19,7 +21,13 @@ static int
 ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 		   struct ice_tc_flower_fltr *fltr)
 {
-	int lkups_cnt = 0;
+	int lkups_cnt = 1; /* 0th lookup is metadata */
+
+	/* Always add metadata as the 0th lookup. Included elements:
+	 * - Direction flag (always present)
+	 * - ICE_TC_FLWR_FIELD_VLAN_TPID (present if specified)
+	 * - Tunnel flag (present if tunnel)
+	 */
 
 	if (flags & ICE_TC_FLWR_FIELD_TENANT_ID)
 		lkups_cnt++;
@@ -57,10 +65,6 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	if (flags & (ICE_TC_FLWR_FIELD_VLAN | ICE_TC_FLWR_FIELD_VLAN_PRIO))
 		lkups_cnt++;
 
-	/* is VLAN TPID specified */
-	if (flags & ICE_TC_FLWR_FIELD_VLAN_TPID)
-		lkups_cnt++;
-
 	/* is CVLAN specified? */
 	if (flags & (ICE_TC_FLWR_FIELD_CVLAN | ICE_TC_FLWR_FIELD_CVLAN_PRIO))
 		lkups_cnt++;
@@ -87,10 +91,6 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 		     ICE_TC_FLWR_FIELD_SRC_L4_PORT))
 		lkups_cnt++;
 
-	/* matching for tunneled packets in metadata */
-	if (fltr->tunnel_type != TNL_LAST)
-		lkups_cnt++;
-
 	return lkups_cnt;
 }
 
@@ -183,10 +183,9 @@ static u16 ice_check_supported_vlan_tpid(u16 vlan_tpid)
 
 static int
 ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
-			 struct ice_adv_lkup_elem *list)
+			 struct ice_adv_lkup_elem *list, int i)
 {
 	struct ice_tc_flower_lyr_2_4_hdrs *hdr = &fltr->outer_headers;
-	int i = 0;
 
 	if (flags & ICE_TC_FLWR_FIELD_TENANT_ID) {
 		u32 tenant_id;
@@ -351,8 +350,7 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
 	}
 
 	/* always fill matching on tunneled packets in metadata */
-	ice_rule_add_tunnel_metadata(&list[i]);
-	i++;
+	ice_rule_add_tunnel_metadata(&list[ICE_TC_METADATA_LKUP_IDX]);
 
 	return i;
 }
@@ -380,13 +378,16 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 	struct ice_tc_flower_lyr_2_4_hdrs *headers = &tc_fltr->outer_headers;
 	bool inner = false;
 	u16 vlan_tpid = 0;
-	int i = 0;
+	int i = 1; /* 0th lookup is metadata */
 
 	rule_info->vlan_type = vlan_tpid;
 
+	/* Always add direction metadata */
+	ice_rule_add_direction_metadata(&list[ICE_TC_METADATA_LKUP_IDX]);
+
 	rule_info->tun_type = ice_sw_type_from_tunnel(tc_fltr->tunnel_type);
 	if (tc_fltr->tunnel_type != TNL_LAST) {
-		i = ice_tc_fill_tunnel_outer(flags, tc_fltr, list);
+		i = ice_tc_fill_tunnel_outer(flags, tc_fltr, list, i);
 
 		/* PFCP is considered non-tunneled - don't swap headers. */
 		if (tc_fltr->tunnel_type != TNL_PFCP) {
@@ -456,8 +457,7 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 		rule_info->vlan_type =
 				ice_check_supported_vlan_tpid(vlan_tpid);
 
-		ice_rule_add_vlan_metadata(&list[i]);
-		i++;
+		ice_rule_add_vlan_metadata(&list[ICE_TC_METADATA_LKUP_IDX]);
 	}
 
 	if (flags & (ICE_TC_FLWR_FIELD_CVLAN | ICE_TC_FLWR_FIELD_CVLAN_PRIO)) {
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
