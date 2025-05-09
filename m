Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4DBAB0F6C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 11:43:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C329D60ABA;
	Fri,  9 May 2025 09:43:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d1ekEoKVwGpp; Fri,  9 May 2025 09:43:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2047260B7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746783789;
	bh=CpWN5nnZz7jRpbxGponiW1ZYxKsGJHG4HLGUuGEaYzU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C73moCUgDICqPcKc58TGrT7MHU+YBTXYHefLe9zkN+0ElUlU0FuSo+rIh3Ej0d5KJ
	 NjMqgoKMAoWPFAvH5kxkTkYEbTgKQhaOFpMez9wOJxmc66ldjXliKEKmjWlkfRrFKu
	 VTTh2hl7Ndo3yogf2cJ9Wp10tQIIWn2zKoXD36Cnm5T5cOgvJbLl2rVjmWvioN9xr4
	 RZR3TmJQOQE8d9L4f2IqdPRA7+pdxhBxjrs4UuCV1cMiviWaVyBrM1xa9Alol3Nysq
	 HFu2jkrARaNyPucs491FbfAO/4mWvzVcCZP/+AOm2qu++E/DSwQYRaoS2NC0a7Ymjb
	 EzstEgTNR60ag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2047260B7C;
	Fri,  9 May 2025 09:43:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D9C41A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 09:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0AAC060A9D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 09:43:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0GwZ5gI5A-oz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 09:43:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3443B60818
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3443B60818
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3443B60818
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 09:43:06 +0000 (UTC)
X-CSE-ConnectionGUID: Cdz1qKjzSiys8x4quCBofQ==
X-CSE-MsgGUID: tYQwgUDVRcORHeSpBf0YKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="73985815"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="73985815"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 02:43:06 -0700
X-CSE-ConnectionGUID: ncLQPM5gRxCtkHp9FtUrOQ==
X-CSE-MsgGUID: eNCRjWFgSTSRydL3xRRamg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="136266716"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 02:43:03 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com,
 jacob.e.keller@intel.com, jbrandeburg@cloudflare.com,
 netdev@vger.kernel.org, Michal Kubiak <michal.kubiak@intel.com>
Date: Fri,  9 May 2025 11:42:32 +0200
Message-ID: <20250509094233.197245-3-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250509094233.197245-1-michal.kubiak@intel.com>
References: <20250509094233.197245-1-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746783786; x=1778319786;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jEuc8oG1zoj+1FvFFD0JTEeZGZF00r/3x6Ok+rnihfY=;
 b=M73VLmeSfJQkbVYt3lBhnPNfbs3pD1izS1sKoHMXSzdj2D5FupGLC95Q
 WSrW+3+KNjtmx6kziGUpECR79LduAZTx8Oe58sZgp1Yw+n1gOHgMZOgku
 nXZp03RjEPda5P9zhll3nT1aMFKBEXHk2Cho3htq6UbTVW+nx1cg51s4Q
 ofj1bB9UtXuLx+Z5kODm+DEHI6P1Y557BAQ52q/JEHMTyUvCUnqI7zaXX
 TqBk1LceUpfzRzrJclV0+jjNQPI8TS0CHMZARaBvQKA3KtAmO1VpbsaeP
 oxB/lAPqrowiRXLX5qYxmW8Prv/3/CdZK2BuOLh1GUQRc6OTMZ6kb/CGa
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M73VLmeS
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/3] ice: create new Tx
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

