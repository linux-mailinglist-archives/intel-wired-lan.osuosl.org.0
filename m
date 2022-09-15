Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 373CE5B9A9D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Sep 2022 14:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9CDC418E6;
	Thu, 15 Sep 2022 12:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9CDC418E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663244478;
	bh=knYkJOJJdQhCfhPxR+VOc8bQ9LLn4RE05+O7vAkPGcI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TUxRMUSlie51c/gUi8nzLMgjj6PiGXWH2klllxbgu+uRPqQi9eDbNM3F6hqslgwWI
	 0glUgJ0lsEymlqBlGALKvuUGY+elRe/fMIJt0xbtqMmhWQhtTKOuazKrwcWZQKXEo4
	 TVS6i9gTfAXHrN8qzNtF0jcUCG9oi8mA+gvoLTdRqh9M2DDFlIGtDGsNq7pRAvvPc8
	 jNeTLqdXZAYqVYK9+3m2fmpyDjVQhbiimPbFhhcw1RF5Dc7f2fd2hUpgnv/46cJSeC
	 UxjyWvFa6UOTzzVwk9SUFagAXiZvZ/GoQvLefd1MlnJsFok/v513pasiYABBDN8+vb
	 yLLuOoaR1F2qg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7z4IAWnTgLms; Thu, 15 Sep 2022 12:21:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15151402CE;
	Thu, 15 Sep 2022 12:21:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15151402CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79E851BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 12:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5EF54402CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 12:21:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EF54402CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lyAD4AYkKTv4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Sep 2022 12:21:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 081FC4195B
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 081FC4195B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 12:21:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="298692571"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="298692571"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 05:20:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="759619446"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmsmga001.fm.intel.com with ESMTP; 15 Sep 2022 05:20:54 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Sep 2022 14:14:34 +0200
Message-Id: <20220915121433.15561-1-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663244468; x=1694780468;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+x3SGFChhmVQ7nu+7mVtbYYIJL4KZ2n4RQfyGCmnzm4=;
 b=OuM8Q0IV5AM4qcExm6tL0vq7avGqTHCUpOLq5NSTm+Z0JeQpASbgne9/
 V4Ze5EZ27iHJn+lQsLwLF61xf+/yGAKkztIFlqKhYZf6xq18DbC3hX7v5
 yAS+pBuWxtlXzjkTKVQgQKKEr81Gv656Se70dVW8AwMAdrG75TDS6oO9U
 6jK7zFMZbIsCzELdBLo3NAls260/tV2l7JvvF8kbmmcq4rIiK8TuObZIr
 ghFn/FrFGM4oLtI4caIwb/tKHJMmfb59fsX86SqiTQuqlj7ZZVls8O3Ck
 /5LfQ7IrD8po1k5gChpT/Vv6F23NV3EWbue/pjLWchWYiu4CGrfMYWyd5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OuM8Q0IV
Subject: [Intel-wired-lan] [PATCH net-next] ice: Add support for VLAN
 priority filters in switchdev
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enable support for adding TC rules that filter on the VLAN priority
in switchdev mode.

VLAN priority are the first 3 bits of 16b switch field vector word
which contain also vlan id value within its last 12 bits.
When getting vlan priority value from tc match.key it
has to be shifted first to proper bits positions (by VLAN_PRIO_SHIFT)
and then can be added to the joint 'vlan' field in ice_vlan_hdr
in lookup element.

The mask of lookup changes accordingly.
0x0FFF - when only vlan id is added in filter
0xE000 - when only vlan priority is added in filter
0xEFFF - when both these values are specified

Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>

---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 73 ++++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |  4 +-
 2 files changed, 60 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 42df686e0215..e359e7548e70 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -51,11 +51,11 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 		lkups_cnt++;
 
 	/* is VLAN specified? */
-	if (flags & ICE_TC_FLWR_FIELD_VLAN)
+	if (flags & (ICE_TC_FLWR_FIELD_VLAN | ICE_TC_FLWR_FIELD_VLAN_PRIO))
 		lkups_cnt++;
 
 	/* is CVLAN specified? */
-	if (flags & ICE_TC_FLWR_FIELD_CVLAN)
+	if (flags & (ICE_TC_FLWR_FIELD_CVLAN | ICE_TC_FLWR_FIELD_CVLAN_PRIO))
 		lkups_cnt++;
 
 	/* are PPPoE options specified? */
@@ -385,7 +385,7 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 	}
 
 	/* copy VLAN info */
-	if (flags & ICE_TC_FLWR_FIELD_VLAN) {
+	if (flags & (ICE_TC_FLWR_FIELD_VLAN | ICE_TC_FLWR_FIELD_VLAN_PRIO)) {
 		vlan_tpid = be16_to_cpu(headers->vlan_hdr.vlan_tpid);
 		rule_info->vlan_type =
 				ice_check_supported_vlan_tpid(vlan_tpid);
@@ -394,15 +394,45 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 			list[i].type = ICE_VLAN_EX;
 		else
 			list[i].type = ICE_VLAN_OFOS;
-		list[i].h_u.vlan_hdr.vlan = headers->vlan_hdr.vlan_id;
-		list[i].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
+
+		if (flags & ICE_TC_FLWR_FIELD_VLAN) {
+			list[i].h_u.vlan_hdr.vlan = headers->vlan_hdr.vlan_id;
+			list[i].m_u.vlan_hdr.vlan = cpu_to_be16(0x0FFF);
+		}
+
+		if (flags & ICE_TC_FLWR_FIELD_VLAN_PRIO) {
+			if (flags & ICE_TC_FLWR_FIELD_VLAN) {
+				list[i].m_u.vlan_hdr.vlan = cpu_to_be16(0xEFFF);
+			} else {
+				list[i].m_u.vlan_hdr.vlan = cpu_to_be16(0xE000);
+				list[i].h_u.vlan_hdr.vlan = 0;
+			}
+			list[i].h_u.vlan_hdr.vlan |=
+				headers->vlan_hdr.vlan_prio;
+		}
+
 		i++;
 	}
 
-	if (flags & ICE_TC_FLWR_FIELD_CVLAN) {
+	if (flags & (ICE_TC_FLWR_FIELD_CVLAN | ICE_TC_FLWR_FIELD_CVLAN_PRIO)) {
 		list[i].type = ICE_VLAN_IN;
-		list[i].h_u.vlan_hdr.vlan = headers->cvlan_hdr.vlan_id;
-		list[i].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
+
+		if (flags & ICE_TC_FLWR_FIELD_CVLAN) {
+			list[i].h_u.vlan_hdr.vlan = headers->cvlan_hdr.vlan_id;
+			list[i].m_u.vlan_hdr.vlan = cpu_to_be16(0x0FFF);
+		}
+
+		if (flags & ICE_TC_FLWR_FIELD_CVLAN_PRIO) {
+			if (flags & ICE_TC_FLWR_FIELD_CVLAN) {
+				list[i].m_u.vlan_hdr.vlan = cpu_to_be16(0xEFFF);
+			} else {
+				list[i].m_u.vlan_hdr.vlan = cpu_to_be16(0xE000);
+				list[i].h_u.vlan_hdr.vlan = 0;
+			}
+			list[i].h_u.vlan_hdr.vlan |=
+				headers->cvlan_hdr.vlan_prio;
+		}
+
 		i++;
 	}
 
@@ -1264,16 +1294,22 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		if (match.mask->vlan_id) {
 			if (match.mask->vlan_id == VLAN_VID_MASK) {
 				fltr->flags |= ICE_TC_FLWR_FIELD_VLAN;
+				headers->vlan_hdr.vlan_id =
+					cpu_to_be16(match.key->vlan_id &
+						    VLAN_VID_MASK);
 			} else {
 				NL_SET_ERR_MSG_MOD(fltr->extack, "Bad VLAN mask");
 				return -EINVAL;
 			}
 		}
 
-		headers->vlan_hdr.vlan_id =
-				cpu_to_be16(match.key->vlan_id & VLAN_VID_MASK);
-		if (match.mask->vlan_priority)
-			headers->vlan_hdr.vlan_prio = match.key->vlan_priority;
+		if (match.mask->vlan_priority) {
+			fltr->flags |= ICE_TC_FLWR_FIELD_VLAN_PRIO;
+			headers->vlan_hdr.vlan_prio =
+				cpu_to_be16((match.key->vlan_priority <<
+					     VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK);
+		}
+
 		if (match.mask->vlan_tpid)
 			headers->vlan_hdr.vlan_tpid = match.key->vlan_tpid;
 	}
@@ -1291,6 +1327,9 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		if (match.mask->vlan_id) {
 			if (match.mask->vlan_id == VLAN_VID_MASK) {
 				fltr->flags |= ICE_TC_FLWR_FIELD_CVLAN;
+				headers->cvlan_hdr.vlan_id =
+					cpu_to_be16(match.key->vlan_id &
+						    VLAN_VID_MASK);
 			} else {
 				NL_SET_ERR_MSG_MOD(fltr->extack,
 						   "Bad CVLAN mask");
@@ -1298,10 +1337,12 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 			}
 		}
 
-		headers->cvlan_hdr.vlan_id =
-				cpu_to_be16(match.key->vlan_id & VLAN_VID_MASK);
-		if (match.mask->vlan_priority)
-			headers->cvlan_hdr.vlan_prio = match.key->vlan_priority;
+		if (match.mask->vlan_priority) {
+			fltr->flags |= ICE_TC_FLWR_FIELD_CVLAN_PRIO;
+			headers->cvlan_hdr.vlan_prio =
+				cpu_to_be16((match.key->vlan_priority <<
+					     VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK);
+		}
 	}
 
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PPPOE)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index f397ed02606d..adf4d4c45f33 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -30,6 +30,8 @@
 #define ICE_TC_FLWR_FIELD_IP_TTL		BIT(23)
 #define ICE_TC_FLWR_FIELD_ENC_IP_TOS		BIT(24)
 #define ICE_TC_FLWR_FIELD_ENC_IP_TTL		BIT(25)
+#define ICE_TC_FLWR_FIELD_VLAN_PRIO		BIT(26)
+#define ICE_TC_FLWR_FIELD_CVLAN_PRIO		BIT(27)
 
 #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
 
@@ -48,7 +50,7 @@ struct ice_tc_flower_action {
 
 struct ice_tc_vlan_hdr {
 	__be16 vlan_id; /* Only last 12 bits valid */
-	u16 vlan_prio; /* Only last 3 bits valid (valid values: 0..7) */
+	__be16 vlan_prio; /* Only last 3 bits valid (valid values: 0..7) */
 	__be16 vlan_tpid;
 };
 
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
