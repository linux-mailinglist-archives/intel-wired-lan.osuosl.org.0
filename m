Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C62750574
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 13:05:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0AB44107B;
	Wed, 12 Jul 2023 11:05:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0AB44107B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689159916;
	bh=3A8/apiU7mh2yU2pGncrFKO0Sd6zF4vmOGCqr+8EvpE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=StqfS6GgUXJllikUp3zymVXT49XOukbpMugxiTs4L/VAY2VoAJsufUpArxJICQhga
	 w57VOoQ1EZ8WEdLv5pToVUyhOtHHG1spUE28hosjnsIaNYa2u3GqDzm3/MdCgn4jBb
	 KMdCrKTp+7AqQo/o4hPgIeoyn5DPaj7g5cUdZLglJXXRb2elNZXIfPvGb2gZlp/XA3
	 +AXCO0CnIM3NUqihJRW8dL3SXzs/I/Pwa7YE0f47pCpTNsjKhAdOMoH6q+3MmNlQ7t
	 S3l/QOV6lPbJ3y3oJ+Fbj101s8vOieBXliZssB/vp81VdonhTLYhrAWeyYpvbjbmbu
	 UKGYxTGqtNh+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tt6azDxY8Blx; Wed, 12 Jul 2023 11:05:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6931340569;
	Wed, 12 Jul 2023 11:05:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6931340569
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C7E81BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30C8B6115F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30C8B6115F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RBClsT8T8SYV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 11:05:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C153260E44
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C153260E44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="430993760"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="430993760"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 04:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="835093737"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="835093737"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2023 04:04:56 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8A2CB369E7;
 Wed, 12 Jul 2023 12:04:55 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Jul 2023 13:03:26 +0200
Message-Id: <20230712110337.8030-2-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230712110337.8030-1-wojciech.drewek@intel.com>
References: <20230712110337.8030-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689159909; x=1720695909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3f8l4+kv+Ik7Ub08Se0HMJ8shoOFXxrXL9Gm27q5GMM=;
 b=H+LU3lHbx0ijVWQu8IezsEHxrRPqNq34TjqwdUP2EryeC2pJ02ZMAgj9
 u7Q7x/kh4N1Oiw//pfnw7Hio9VeeQjgtm9z/sfontt8y+XYU0SiBad+ck
 K7TR+l0FZXLlE1IlyFB1kxmuOoEe02FprAr6D4A8LhyPjSCFTZfzWp31j
 tSa3KDYxvE66NW6HrA9AH+wLF5TSL8h6DydlYwDidORF+AVxckoNKfu29
 MdIdsfgvdbmFIEwJHQ7bGtsA4Av85U12o9GP79g7+rKH6vaAay01vwVTO
 frhmO9Z49llAGj8nvGhCmeGhMx9ZJyZN0Ei3ys5sGjYBmxUdz5d6VDvwc
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H+LU3lHb
Subject: [Intel-wired-lan] [PATCH iwl-next v6 01/12] ice: Skip adv rules
 removal upon switchdev release
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, vladbu@nvidia.com,
 kuba@kernel.org, simon.horman@corigine.com, dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Advanced rules for ctrl VSI will be removed anyway when the
VSI will cleaned up, no need to do it explicitly.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v5: remove ice_rem_adv_rule_for_vsi since it is unused
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  1 -
 drivers/net/ethernet/intel/ice/ice_switch.c  | 53 --------------------
 drivers/net/ethernet/intel/ice/ice_switch.h  |  1 -
 3 files changed, 55 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index ad0a007b7398..be5b22691f7c 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -503,7 +503,6 @@ static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
 
 	ice_eswitch_napi_disable(pf);
 	ice_eswitch_release_env(pf);
-	ice_rem_adv_rule_for_vsi(&pf->hw, ctrl_vsi->idx);
 	ice_eswitch_release_reprs(pf, ctrl_vsi);
 	ice_vsi_release(ctrl_vsi);
 	ice_repr_rem_from_all_vfs(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 8f84c041ebc1..b9b1aab735f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -6668,59 +6668,6 @@ ice_rem_adv_rule_by_id(struct ice_hw *hw,
 	return -ENOENT;
 }
 
-/**
- * ice_rem_adv_rule_for_vsi - removes existing advanced switch rules for a
- *                            given VSI handle
- * @hw: pointer to the hardware structure
- * @vsi_handle: VSI handle for which we are supposed to remove all the rules.
- *
- * This function is used to remove all the rules for a given VSI and as soon
- * as removing a rule fails, it will return immediately with the error code,
- * else it will return success.
- */
-int ice_rem_adv_rule_for_vsi(struct ice_hw *hw, u16 vsi_handle)
-{
-	struct ice_adv_fltr_mgmt_list_entry *list_itr, *tmp_entry;
-	struct ice_vsi_list_map_info *map_info;
-	struct ice_adv_rule_info rinfo;
-	struct list_head *list_head;
-	struct ice_switch_info *sw;
-	int status;
-	u8 rid;
-
-	sw = hw->switch_info;
-	for (rid = 0; rid < ICE_MAX_NUM_RECIPES; rid++) {
-		if (!sw->recp_list[rid].recp_created)
-			continue;
-		if (!sw->recp_list[rid].adv_rule)
-			continue;
-
-		list_head = &sw->recp_list[rid].filt_rules;
-		list_for_each_entry_safe(list_itr, tmp_entry, list_head,
-					 list_entry) {
-			rinfo = list_itr->rule_info;
-
-			if (rinfo.sw_act.fltr_act == ICE_FWD_TO_VSI_LIST) {
-				map_info = list_itr->vsi_list_info;
-				if (!map_info)
-					continue;
-
-				if (!test_bit(vsi_handle, map_info->vsi_map))
-					continue;
-			} else if (rinfo.sw_act.vsi_handle != vsi_handle) {
-				continue;
-			}
-
-			rinfo.sw_act.vsi_handle = vsi_handle;
-			status = ice_rem_adv_rule(hw, list_itr->lkups,
-						  list_itr->lkups_cnt, &rinfo);
-			if (status)
-				return status;
-		}
-	}
-	return 0;
-}
-
 /**
  * ice_replay_vsi_adv_rule - Replay advanced rule for requested VSI
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 8ca9bfcafab4..b75488ede83f 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -393,7 +393,6 @@ int
 ice_set_vlan_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 			 bool rm_vlan_promisc);
 
-int ice_rem_adv_rule_for_vsi(struct ice_hw *hw, u16 vsi_handle);
 int
 ice_rem_adv_rule_by_id(struct ice_hw *hw,
 		       struct ice_rule_query_data *remove_entry);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
