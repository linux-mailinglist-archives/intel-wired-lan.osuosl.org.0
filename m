Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F66B753A2A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 13:50:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42D604220D;
	Fri, 14 Jul 2023 11:50:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42D604220D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689335456;
	bh=/fZTjMDOjavI77gL2fn54hgAbWWXX99AVWfTbcT6ZWQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zwVfL2eRaxOVk+dWdmaxO4cT8oFm1VQeEX+RnUDSY9mmk48pQN+mVHSM1ZmrwRbMT
	 6AhWRv8jMlAoUck4kYQPFR+HL/T8wDV2JkJFSbFGV55pI48Ve7m0TFZ1e1FQ03a5Xb
	 UNJQEOtB4/ybfKMOtQ6f1NGyLjTSR5LEwpkzCCXjz2VvYK8GTtOGicjI45bp8jyUOZ
	 DMk6zZWicbdiAnFsfh4vGv7cEzBJsrR+bkGnZJCyVyGSOvpQ9NO1fLb68pyroIzZmU
	 mBQUYmmRod4Wo5xVw4a4111cz15RM3kUZ3xQw8vGAelbseyoR1BUSemvVGaBisMnOl
	 EaEvpcZprBDsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sDy1mMQRs1kR; Fri, 14 Jul 2023 11:50:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A24FD4220B;
	Fri, 14 Jul 2023 11:50:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A24FD4220B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C4A11BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 11:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64F3A841D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 11:50:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64F3A841D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cogYmIg1MvLj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jul 2023 11:50:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40B0E83C12
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 40B0E83C12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 11:50:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="369004077"
X-IronPort-AV: E=Sophos;i="6.01,205,1684825200"; d="scan'208";a="369004077"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 04:50:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="722375530"
X-IronPort-AV: E=Sophos;i="6.01,205,1684825200"; d="scan'208";a="722375530"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga002.jf.intel.com with ESMTP; 14 Jul 2023 04:50:32 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5764C35804;
 Fri, 14 Jul 2023 12:50:31 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jul 2023 07:47:21 -0400
Message-Id: <20230714114721.335526-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689335448; x=1720871448;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O1F3TFTkGCUGmeShW0f4E1sxlThzJHkxTAUFXviFs/s=;
 b=D0FATQ6D3aCuBiM/YWeOmnu/P7jhZyLOL84dID5cSWXq33qdg/sJE3fv
 MocJiL/0t/n+/t27Y1octdh0rCNPP0pHtIIBdhaU/aE9lgdDGcKVxgsLf
 Sm2tFI/37oE7MT6INtUaVWatRbx9uZwdNu0HJBPVAjCkjEa4jNL3oawsZ
 KSNSAot7picL7c3mF7jQeWw/lrliVIV9tOIeMhvma9mhzzoeR9SEX61bX
 a65NRb7LHuxG4ByjF96GeBUEvUvfWGRJ7eskJ3sHF49X7tIMUs5IxIhCK
 rcdrerR1w+faVVEyU09uHeHI2zaMHemw/L6Q9UHyVU5/QPHvkqJog9qE/
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D0FATQ6D
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Reset stats on queues num
 change
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Reset VSI stats on queues number change.

Commit 288ecf491b16 ("ice: Accumulate ring statistics over reset")
implemented functionality for interface statistics to persist over reset,
but it left stats persisting over queue count reconfiguration.

Following scenario is fixed here:
 # Observe statistics for Tx/Rx queues
ethtool -S ethX
 # change number of queues
ethtool -L ethX combined 10
 # Observe statistics for Tx/Rx queues (after reset)
ethtool -S ethX

Ben has left a note where to place the VSI stats reset,
what made this fix much easier to do.

Note that newly allocated structs (case of num_txq > prev_txq) don't
need zeroing.

Fixes: 288ecf491b16 ("ice: Accumulate ring statistics over reset")
Suggested-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 33 ++++++++++++++++++++----
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 00e3afd507a4..09942bdea25d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3130,13 +3130,15 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 }
 
 /**
- * ice_vsi_realloc_stat_arrays - Frees unused stat structures
+ * ice_vsi_adjust_stat_arrays - Adjust VSI stat structures
  * @vsi: VSI pointer
  * @prev_txq: Number of Tx rings before ring reallocation
  * @prev_rxq: Number of Rx rings before ring reallocation
+ *
+ * Zero stat structures before reuse, free redundant ones.
  */
 static void
-ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi, int prev_txq, int prev_rxq)
+ice_vsi_adjust_stat_arrays(struct ice_vsi *vsi, int prev_txq, int prev_rxq)
 {
 	struct ice_vsi_stats *vsi_stat;
 	struct ice_pf *pf = vsi->back;
@@ -3149,7 +3151,17 @@ ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi, int prev_txq, int prev_rxq)
 
 	vsi_stat = pf->vsi_stats[vsi->idx];
 
-	if (vsi->num_txq < prev_txq) {
+	if (vsi->num_txq != prev_txq) {
+		/* first, reset structs that we will reuse */
+		int reuse_q_cnt = min_t(int, vsi->num_txq, prev_txq);
+
+		for (i = 0; i < reuse_q_cnt; i++) {
+			struct ice_ring_stats *rs = vsi_stat->tx_ring_stats[i];
+
+			if (rs)
+				memset(rs, 0, sizeof(*rs));
+		}
+		/* second, free redundant ones */
 		for (i = vsi->num_txq; i < prev_txq; i++) {
 			if (vsi_stat->tx_ring_stats[i]) {
 				kfree_rcu(vsi_stat->tx_ring_stats[i], rcu);
@@ -3158,7 +3170,16 @@ ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi, int prev_txq, int prev_rxq)
 		}
 	}
 
-	if (vsi->num_rxq < prev_rxq) {
+	/* apply very same logic as for tx */
+	if (vsi->num_rxq != prev_rxq) {
+		int reuse_q_cnt = min_t(int, vsi->num_rxq, prev_rxq);
+
+		for (i = 0; i < reuse_q_cnt; i++) {
+			struct ice_ring_stats *rs = vsi_stat->rx_ring_stats[i];
+
+			if (rs)
+				memset(rs, 0, sizeof(*rs));
+		}
 		for (i = vsi->num_rxq; i < prev_rxq; i++) {
 			if (vsi_stat->rx_ring_stats[i]) {
 				kfree_rcu(vsi_stat->rx_ring_stats[i], rcu);
@@ -3222,7 +3243,9 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 		return ice_schedule_reset(pf, ICE_RESET_PFR);
 	}
 
-	ice_vsi_realloc_stat_arrays(vsi, prev_txq, prev_rxq);
+	ice_vsi_adjust_stat_arrays(vsi, prev_txq, prev_rxq);
+	if (vsi->num_txq != prev_txq || vsi->num_rxq != prev_rxq)
+		vsi->stat_offsets_loaded = false;
 
 	ice_vsi_rebuild_set_coalesce(vsi, coalesce, prev_num_q_vectors);
 	kfree(coalesce);

base-commit: 9d23aac8a85f69239e585c8656c6fdb21be65695
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
