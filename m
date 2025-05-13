Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE68AB5342
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 12:55:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48A5540E22;
	Tue, 13 May 2025 10:55:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z5JoHG-nVqjn; Tue, 13 May 2025 10:55:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AF6C40E0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747133754;
	bh=CpWN5nnZz7jRpbxGponiW1ZYxKsGJHG4HLGUuGEaYzU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LPGKb1JH/3Wah7pViL4jT9LxguyeBLFY44yBuL8Hs1YPxtIYVIbeyCdDPWyf5O2eu
	 xSUZ02y+SQUUB73jEUDinLq6e7VhU8LpcvLOcqTMgGLbR11f01ho85NYKoshl3I3+d
	 OB0iH71qvUwGcE9XLEL74X4jIU5bynAE/HzuHw++r143BsexvF6SG9fB7COpJ7eUIg
	 ZtYdnOr5OCv8Iyj+ReDBOXIBNznacuVsP+MWHaTWQi1CnaZeJ1zNgPYzoRYZdY5Iiz
	 3t9cqNNH7QaqXnGq+SLtCZNkqXz3hbY2x4TIvZCXwjpFThncB9nkcP9z1OzFN/ub0j
	 ocRK8Z6O/kYOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AF6C40E0E;
	Tue, 13 May 2025 10:55:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9549D12A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:55:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 860FD40E23
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:55:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cj5E32PMt2Qa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 10:55:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D946040BD1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D946040BD1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D946040BD1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:55:52 +0000 (UTC)
X-CSE-ConnectionGUID: KVt7MJx7S0Gx19Gkx3f8iA==
X-CSE-MsgGUID: k79RVl0WSmS3RuXhsxkgPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="52630670"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="52630670"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 03:55:53 -0700
X-CSE-ConnectionGUID: MyYthPTsQLOSfaqbAMY1eQ==
X-CSE-MsgGUID: YJMLCoLFQa24tJssWaxJRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="138600555"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 03:55:50 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com,
 jacob.e.keller@intel.com, jbrandeburg@cloudflare.com,
 netdev@vger.kernel.org, Michal Kubiak <michal.kubiak@intel.com>
Date: Tue, 13 May 2025 12:55:28 +0200
Message-ID: <20250513105529.241745-3-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250513105529.241745-1-michal.kubiak@intel.com>
References: <20250513105529.241745-1-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747133753; x=1778669753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jEuc8oG1zoj+1FvFFD0JTEeZGZF00r/3x6Ok+rnihfY=;
 b=e6kgcb8T6HXVr6tnrLX5159ThJSodfV7DQq+zKfwI5eKMH8zoryisd3w
 kfHFHwGXH19TvFwmyPdlGYWuJo3BwwoML/TtmiS4fOc7m6Kys2qsCOTz+
 BjJmQTW58vr+wNUbA54zPkB3SR+JR4ouU5wg4DhSCeBh9g0MCDmJPS9UA
 0PsrsxaGX5u8Fmt4ElBkwE9HrP38Pqfc3WEUMVugENzzJ6pZsAAzqsDlb
 WRVKuGvG4PZiv5Z8R7pUbuNBY1GjJkb25HFe7L7UwnCTG56FHjNF0SLLM
 80h8N6LFMUiHY4STi4OVtfBe9fkqBPtZ0Sjno6/KuBYO//fayPNJQr2m9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e6kgcb8T
Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/3] ice: create new Tx
 scheduler nodes for new queues only
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

The current implementation of the Tx scheduler tree attempts
to create nodes for all Tx queues, ignoring the fact that some
queues may already exist in the tree. For example, if the VSI
already has 128 Tx queues and the user requests for 16 new queues,
the Tx scheduler will compute the tree for 272 queues (128 existing
queues + 144 new queues), instead of 144 queues (128 existing queues
and 16 new queues).
Fix that by modifying the node count calculation algorithm to skip
the queues that already exist in the tree.

Fixes: 5513b920a4f7 ("ice: Update Tx scheduler tree for VSI multi-Tx queue support")
Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 6ca13c5dcb14..6524875b34d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -1604,16 +1604,16 @@ ice_sched_get_agg_node(struct ice_port_info *pi, struct ice_sched_node *tc_node,
 /**
  * ice_sched_calc_vsi_child_nodes - calculate number of VSI child nodes
  * @hw: pointer to the HW struct
- * @num_qs: number of queues
+ * @num_new_qs: number of new queues that will be added to the tree
  * @num_nodes: num nodes array
  *
  * This function calculates the number of VSI child nodes based on the
  * number of queues.
  */
 static void
-ice_sched_calc_vsi_child_nodes(struct ice_hw *hw, u16 num_qs, u16 *num_nodes)
+ice_sched_calc_vsi_child_nodes(struct ice_hw *hw, u16 num_new_qs, u16 *num_nodes)
 {
-	u16 num = num_qs;
+	u16 num = num_new_qs;
 	u8 i, qgl, vsil;
 
 	qgl = ice_sched_get_qgrp_layer(hw);
@@ -1863,8 +1863,9 @@ ice_sched_update_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 			return status;
 	}
 
-	if (new_numqs)
-		ice_sched_calc_vsi_child_nodes(hw, new_numqs, new_num_nodes);
+	ice_sched_calc_vsi_child_nodes(hw, new_numqs - prev_numqs,
+				       new_num_nodes);
+
 	/* Keep the max number of queue configuration all the time. Update the
 	 * tree only if number of queues > previous number of queues. This may
 	 * leave some extra nodes in the tree if number of queues < previous
-- 
2.45.2

