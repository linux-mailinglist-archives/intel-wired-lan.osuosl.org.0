Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C927A97123
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Apr 2025 17:37:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71BF740422;
	Tue, 22 Apr 2025 15:37:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UkJXpSkzp1gG; Tue, 22 Apr 2025 15:37:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4FD5405BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745336249;
	bh=CpWN5nnZz7jRpbxGponiW1ZYxKsGJHG4HLGUuGEaYzU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EttCEBL84bLUAXa8ruGDITenPYeXso9/nn2qrU4LR3xiyEfX4PFfCwaOVfu941zTO
	 MOKw3qOSnAjOFREmSUcwBzIJAsQg4g7iHuR21S3YwpQKdcP/8d/ddVP4wY0WstvD5v
	 UBTqYYGbfZHcqUC3eH0C8wadpSydI2tz8n76Wq6jskPUNYmFP1MTrCpVPaO/jAstfm
	 YwyD9Xlc6HeCAqdjTs5jUwbgdeEtLDeLtjdSdzQkQHweoYGDNsj2Pq661u3nwyviOd
	 x1t0dfsdNckYH/f6hw9bu8iomPEDeFrJuVP+xtz8IIrNDBYtyqnePCyqs9FJa0tRaB
	 pgl+8t3y2M8bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4FD5405BD;
	Tue, 22 Apr 2025 15:37:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DC0D01BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 15:37:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE2F381BF4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 15:37:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WU5Az7KxLx0s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Apr 2025 15:37:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 283D4817C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 283D4817C0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 283D4817C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 15:37:27 +0000 (UTC)
X-CSE-ConnectionGUID: EIyRLDniSaW3L0LlXlG/KQ==
X-CSE-MsgGUID: tLrYVPqySwSEWhaBAlVFHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="64312350"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="64312350"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 08:37:21 -0700
X-CSE-ConnectionGUID: k8ICJBLaQiS+uxaTrM2UkA==
X-CSE-MsgGUID: 2yCqT0hoSsain78tEwRHWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="131947828"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 08:37:18 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com,
 jacob.e.keller@intel.com, netdev@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>
Date: Tue, 22 Apr 2025 17:36:58 +0200
Message-Id: <20250422153659.284868-3-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20250422153659.284868-1-michal.kubiak@intel.com>
References: <20250422153659.284868-1-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745336248; x=1776872248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jEuc8oG1zoj+1FvFFD0JTEeZGZF00r/3x6Ok+rnihfY=;
 b=h572z2N3tr1B8Mzfag2sf7licaxHn9BPq7vAQngGjqleAChVljm34its
 BRq+2mmyzaQLCQfcAkGci9KTnP/GzUmA9uLekd5UN61I2wqPwLV9MwQYo
 xs4xUNZMKliMdskYGqwMweUzHm/l+sR1XkrSlRoRKCbI9iKuVG/ma3DyI
 6LYxVBFnGvU2bYTf9o9kdz2pldDXBlRVaOWgn9teeiHHISZD1UXwwGQtJ
 D8d8x+h8AsxIFQGz8tmjzktePBWuOT1JZ0U90FZRveJ0qKpyAbsF+EoB5
 45Ib3VwV7emJb3F5uRu0ouxUe+CMLh8pJNzFrvkhvYzqc8nAWSVkg8X5B
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h572z2N3
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: create new Tx scheduler
 nodes for new queues only
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

