Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3D351DE9A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 May 2022 20:04:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A7E482CDD;
	Fri,  6 May 2022 18:04:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sfgAAWu6X3hT; Fri,  6 May 2022 18:04:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E09882CC7;
	Fri,  6 May 2022 18:04:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D0DD1BF288
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 18:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 718F740531
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 18:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AqgCElEZ5kvq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 May 2022 18:04:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8529A4041C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 18:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651860261; x=1683396261;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u9o6IlHH4g+PdVehVNz5D1HPC1Oc1bloGLt4cEoHwkc=;
 b=bcDCHQ2R4P37vySwYg/p+b58sR3R6g7Nrg7harJ7PugcLfCR+Amt6hdj
 Oa4GlgwGSIU5rx82JfI7uP6d/0IaqKGZic7rzvDBTgdaZeDxEmMTO+gL2
 xQbDGfdGThuYJATb8X3DVP54ZjcgxReqFhBV2g+QMFRXJxhOeOlTNOlcV
 6FihTqRVTjoFrz711mTUl7iJOCO7+cgoh6DWNha1hTM8LWdTRPK2/tTp6
 EYpYpX+Oa7coktSCyGSE3nUzDW/56QomWcHDf+x6iZD36vNGMLIdIknjR
 4Y8as847zas2iAdjRBp+sIMb42PHCn6oKzz3+FxnfIrQpe/0OXJi5E/mw g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="250545329"
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="250545329"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 11:04:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="695287726"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 11:04:20 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 May 2022 11:04:10 -0700
Message-Id: <20220506180410.309280-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: prevent low-core machines
 crashing on DCB config
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In the case where the driver is loaded on a low-core (< 8) core system,
and then a DCB config applied with the number of traffic classes
greater than the number of queues defined at probe time, there is a
chance to run into a NULL pointer dereference error in the queue
mapping code.

Put in a check and an error message that will stop the NULL pointer
dereference and notify the user that the VSI is in an indeterminate
state.

Fixes: 3a858ba392c3 ("ice: Add support for VSI allocation and deallocation")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c    | 22 ++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  2 ++
 2 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 136d7911adb4..d7b68ec4dde5 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -738,9 +738,14 @@ void ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi)
 		for (q_id = q_base; q_id < (q_base + tx_rings_per_v); q_id++) {
 			struct ice_tx_ring *tx_ring = vsi->tx_rings[q_id];
 
-			tx_ring->q_vector = q_vector;
-			tx_ring->next = q_vector->tx.tx_ring;
-			q_vector->tx.tx_ring = tx_ring;
+			if (tx_ring) {
+				tx_ring->q_vector = q_vector;
+				tx_ring->next = q_vector->tx.tx_ring;
+				q_vector->tx.tx_ring = tx_ring;
+			} else {
+				dev_warn(ice_pf_to_dev(vsi->back), "NULL Tx ring found\n");
+				break;
+			}
 		}
 		tx_rings_rem -= tx_rings_per_v;
 
@@ -755,9 +760,14 @@ void ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi)
 		for (q_id = q_base; q_id < (q_base + rx_rings_per_v); q_id++) {
 			struct ice_rx_ring *rx_ring = vsi->rx_rings[q_id];
 
-			rx_ring->q_vector = q_vector;
-			rx_ring->next = q_vector->rx.rx_ring;
-			q_vector->rx.rx_ring = rx_ring;
+			if (rx_ring) {
+				rx_ring->q_vector = q_vector;
+				rx_ring->next = q_vector->rx.rx_ring;
+				q_vector->rx.rx_ring = rx_ring;
+			} else {
+				dev_warn(ice_pf_to_dev(vsi->back), "NULL Rx ring found\n");
+				break;
+			}
 		}
 		rx_rings_rem -= rx_rings_per_v;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index add90e75f05c..fdae0b8ef525 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -744,6 +744,8 @@ void ice_pf_dcb_recfg(struct ice_pf *pf)
 			continue;
 
 		if (vsi->type == ICE_VSI_PF) {
+			if (ice_dcb_get_num_tc(dcbcfg) > vsi->alloc_txq)
+				dev_warn(ice_pf_to_dev(vsi->back), "More TCs defined than queues/rings allocated.\n");
 			tc_map = ice_dcb_get_ena_tc(dcbcfg);
 
 			/* If DCBX request non-contiguous TC, then configure
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
