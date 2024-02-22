Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC9F85F84B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 13:35:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF98141C36;
	Thu, 22 Feb 2024 12:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i5yzwi5YNU3K; Thu, 22 Feb 2024 12:35:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2C4041B41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708605345;
	bh=+DVXiV4dFko8xGhzGz+5v9aDFGYWK0kGSadFM89s88M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XY2AovyPTyNV2KvxGl95tpzyZo02eWV3xZLlt5GlKxA+njmSWRakPeV5vsSyFTjlX
	 S1qurFJDShPh5hFIMZx6GedDK2y6+JsRJR6+p01nhFuqFKZr2GSfkVbBltOGtlsOIq
	 34YtgT1Y/08ImqR7BL4Hf7Qf64aJtxEZ26Dil+sWYepTOwIwMhRFiwc0uPhaJE57yT
	 bh8g5mV/wj92cv0jL5Tcv6NPloeukBqg8jX/5eTj2NVDxsk2z5pwurxCeiybGYbUwj
	 gGjKEj8/XJvU71xeHGXs9r2f//6Yxf8bzuUEXfwKyb9FeDuFgTyJjAb+iwNvdL5maR
	 VXWzew1Ea/HaA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2C4041B41;
	Thu, 22 Feb 2024 12:35:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5BED71BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 12:35:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 54C406060F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 12:35:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TOpaw5maUpd8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 12:35:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8A9066061A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A9066061A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A9066061A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 12:35:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="28267853"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="28267853"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:35:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="10216251"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa005.jf.intel.com with ESMTP; 22 Feb 2024 04:35:37 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 13:39:55 +0100
Message-ID: <20240222123956.2393-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240222123956.2393-1-michal.swiatkowski@linux.intel.com>
References: <20240222123956.2393-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708605339; x=1740141339;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tZALNZCBnFmX5cXJHpLMa1vf4yJteiPE9BYCLjCMEV4=;
 b=g80SNrB0V+sEIL8/UOwcAiDIpXf5dFJoSjQRsGv0EQC9+zSJkeZVI+fN
 a1X36/r3eEI7CiBfGBhI+cipQWchiFexbp/rUmebEhx/ruxWElCChRF9J
 hrAW1dcGmXQxAOdLejPw+e07Pljygms2qKyJcD0gwLuheNiNxj4fkWRWt
 XX0Ct6Yf/5tD+lK6nKUqZhK/a3/w295WZIXCFC0VJftf9VBrpR//oG+kr
 INbnw/J5E1uNjRgF2F/n1/ZvlYpy76eyheEd12x0dZuXXLaXAcP7JSQNg
 c+TF+2XsdoIwIg+XhEKrkkepO+5fKj2PQMpdbJShDeqZhZoqEaG1ONirL
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g80SNrB0
Subject: [Intel-wired-lan] [iwl-next v2 1/2] ice: tc: check src_vsi in case
 of traffic from VF
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
Cc: pmenzel@molgen.mpg.de, wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 sridhar.samudrala@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In case of traffic going from the VF (so ingress for port representor)
source VSI should be consider during packet classification. It is
needed for hardware to not match packets from different ports with
filters added on other port.

It is only for "from VF" traffic, because other traffic direction
doesn't have source VSI.

Set correct ::src_vsi in rule_info to pass it to the hardware filter.

For example this rule should drop only ipv4 packets from eth10, not from
the others VF PRs. It is needed to check source VSI in this case.
$tc filter add dev eth10 ingress protocol ip flower skip_sw action drop

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index b890410a2bc0..49ed5fd7db10 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -28,6 +28,8 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	 * - ICE_TC_FLWR_FIELD_VLAN_TPID (present if specified)
 	 * - Tunnel flag (present if tunnel)
 	 */
+	if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS)
+		lkups_cnt++;
 
 	if (flags & ICE_TC_FLWR_FIELD_TENANT_ID)
 		lkups_cnt++;
@@ -363,6 +365,11 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 	/* Always add direction metadata */
 	ice_rule_add_direction_metadata(&list[ICE_TC_METADATA_LKUP_IDX]);
 
+	if (tc_fltr->direction == ICE_ESWITCH_FLTR_EGRESS) {
+		ice_rule_add_src_vsi_metadata(&list[i]);
+		i++;
+	}
+
 	rule_info->tun_type = ice_sw_type_from_tunnel(tc_fltr->tunnel_type);
 	if (tc_fltr->tunnel_type != TNL_LAST) {
 		i = ice_tc_fill_tunnel_outer(flags, tc_fltr, list, i);
@@ -820,6 +827,7 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 
 	/* specify the cookie as filter_rule_id */
 	rule_info.fltr_rule_id = fltr->cookie;
+	rule_info.src_vsi = vsi->idx;
 
 	ret = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, &rule_added);
 	if (ret == -EEXIST) {
-- 
2.42.0

