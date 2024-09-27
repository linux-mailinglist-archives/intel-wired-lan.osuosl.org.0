Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B73988523
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2024 14:41:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60BD1424E2;
	Fri, 27 Sep 2024 12:41:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1QYYojDPrhfF; Fri, 27 Sep 2024 12:41:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5861641DD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727440872;
	bh=pnarfaYo2MIrZtKCD2fwqu+EYfmKXTYnu2ILTZHh/h4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mDZm1is5Cx8FauiTJPqQpKxXizNORgGsS0FQ9Mdj8hBZZuN9JoKsUMJRVLKkaXeq0
	 08srjAPp8zZzF9qp/4YyDIJ9RzZ3S7Ce2I1Cl2ZSjon8Whg2xV+v2qOcrDxAdOF1yU
	 gTGBlxi4PPf5Pe0HNnzMrhEY4Zr6LVfCV3W+PcIsKUCBkUxggi4Zbsof6hRqYPcTRv
	 UX+eFLn5U2cYVpF8/V5BcFgMLTWcbL5tUmg6hGPW9q8AKMfzQnICxxvWterJcuc9YV
	 cOzxrTeSV6/Y1RhQ3R2bOboMoHpmIh3IAW8PVBu5++eU/Xl4urxqdU41rrTJU8Gu8P
	 K1lCBGQ/SA1Sg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5861641DD6;
	Fri, 27 Sep 2024 12:41:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9C541BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 12:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D83B0614D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 12:41:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TIqAQyTEEYuf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2024 12:41:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8ADCC605C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8ADCC605C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8ADCC605C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2024 12:41:08 +0000 (UTC)
X-CSE-ConnectionGUID: 95nvioRBT6iayD6mHUPS2Q==
X-CSE-MsgGUID: aD00EJcBTFiyvvClbh45pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26385762"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26385762"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 05:40:45 -0700
X-CSE-ConnectionGUID: 8eMsemkkSNaHZM7mKKn3hQ==
X-CSE-MsgGUID: yidCo77+QXqMI9eb6wcyJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="76902945"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 27 Sep 2024 05:40:43 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3E9EF28195;
 Fri, 27 Sep 2024 13:40:42 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 27 Sep 2024 14:38:01 +0200
Message-Id: <20240927123801.14853-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727440869; x=1758976869;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r1Lr7tvYMwtc8w3SfFcWa0W0NlqvWIvdww5MJWGf+50=;
 b=I4v15Stll790w4//q3HREMISIjMegXvjeCixgi6HBFPSlfDhw7HwYMFi
 o6aLzgV4s9jNjX3qhhOeRWTUm/pujyNUU83c/jdSjRLEH2s3Ibo7YjQpu
 Z7/Dw7BpuSWqF4ajE6595LjCy1OFfGPa11fb6MV5SUnS2hCdYEtY3uLrm
 1915edhzjGvnK0sxcCluDlTI7qHy4PYF+GwugciqgyJXhEeRJMXRx1m+x
 lNftxNxmGcwAOSHso5++0Cs2C+7hqJadSwUH8TJfy16+Iz5oxhMjBDMTs
 yxv64SXNq9eHF10T5ia3z3eDjK8Ha+forEYIC6Di5AlAMiomR9nIkPNsP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I4v15Stl
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Flush FDB entries before
 reset
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
Cc: anthony.l.nguyen@intel.com, marcin.szycik@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Triggering the reset while in switchdev mode causes
errors[1]. Rules are already removed by this time
because switch content is flushed in case of the reset.
This means that rules were deleted from HW but SW
still thinks they exist so when we get
SWITCHDEV_FDB_DEL_TO_DEVICE notification we try to
delete not existing rule.

We can avoid these errors by clearing the rules
early in the reset flow before they are removed from HW.
Switchdev API will get notified that the rule was removed
so we won't get SWITCHDEV_FDB_DEL_TO_DEVICE notification.
Remove unnecessary ice_clear_sw_switch_recipes.

[1]
ice 0000:01:00.0: Failed to delete FDB forward rule, err: -2
ice 0000:01:00.0: Failed to delete FDB guard rule, err: -2

Fixes: 7c945a1a8e5f ("ice: Switchdev FDB events support")
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: extend commit msg, add NULL pointer check
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   |  5 +++-
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 24 +++----------------
 3 files changed, 8 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index f5aceb32bf4d..cccb7ddf61c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -582,10 +582,13 @@ ice_eswitch_br_switchdev_event(struct notifier_block *nb,
 	return NOTIFY_DONE;
 }
 
-static void ice_eswitch_br_fdb_flush(struct ice_esw_br *bridge)
+void ice_eswitch_br_fdb_flush(struct ice_esw_br *bridge)
 {
 	struct ice_esw_br_fdb_entry *entry, *tmp;
 
+	if (!bridge)
+		return;
+
 	list_for_each_entry_safe(entry, tmp, &bridge->fdb_list, list)
 		ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge, entry);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
index c15c7344d7f8..66a2c804338f 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
@@ -117,5 +117,6 @@ void
 ice_eswitch_br_offloads_deinit(struct ice_pf *pf);
 int
 ice_eswitch_br_offloads_init(struct ice_pf *pf);
+void ice_eswitch_br_fdb_flush(struct ice_esw_br *bridge);
 
 #endif /* _ICE_ESWITCH_BR_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c7db88b517da..dcd4c8204753 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -519,25 +519,6 @@ static void ice_pf_dis_all_vsi(struct ice_pf *pf, bool locked)
 		pf->vf_agg_node[node].num_vsis = 0;
 }
 
-/**
- * ice_clear_sw_switch_recipes - clear switch recipes
- * @pf: board private structure
- *
- * Mark switch recipes as not created in sw structures. There are cases where
- * rules (especially advanced rules) need to be restored, either re-read from
- * hardware or added again. For example after the reset. 'recp_created' flag
- * prevents from doing that and need to be cleared upfront.
- */
-static void ice_clear_sw_switch_recipes(struct ice_pf *pf)
-{
-	struct ice_sw_recipe *recp;
-	u8 i;
-
-	recp = pf->hw.switch_info->recp_list;
-	for (i = 0; i < ICE_MAX_NUM_RECIPES; i++)
-		recp[i].recp_created = false;
-}
-
 /**
  * ice_prepare_for_reset - prep for reset
  * @pf: board private structure
@@ -574,8 +555,9 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	mutex_unlock(&pf->vfs.table_lock);
 
 	if (ice_is_eswitch_mode_switchdev(pf)) {
-		if (reset_type != ICE_RESET_PFR)
-			ice_clear_sw_switch_recipes(pf);
+		rtnl_lock();
+		ice_eswitch_br_fdb_flush(pf->eswitch.br_offloads->bridge);
+		rtnl_unlock();
 	}
 
 	/* release ADQ specific HW and SW resources */
-- 
2.39.3

