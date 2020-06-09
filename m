Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BB31F3CCE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 15:40:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4DE9620468;
	Tue,  9 Jun 2020 13:40:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zDUFTBUjxzb4; Tue,  9 Jun 2020 13:40:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B0EEA2226B;
	Tue,  9 Jun 2020 13:40:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60ABA1BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 13:40:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5CA9320468
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 13:40:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gfEWhFEyPs2g for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jun 2020 13:40:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 726EE20378
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 13:40:50 +0000 (UTC)
IronPort-SDR: OvWCwcIBpr8qk0dsciVV83WswZ4jHzFqDNpcfPgeuU7P5pgIxpVzJz2wViCH9g1B+FjEi2hab1
 Snq3zWH2CPQA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 06:40:49 -0700
IronPort-SDR: ECVqyDBtTLe+m4htIZcsDLANRgIAyAN6h2NxYDwRiGAwljoEWYmcT36CjszigxgqFE9SSwqVs0
 Cv7OHMzLnxew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,492,1583222400"; d="scan'208";a="295837449"
Received: from silpixa00399839.ir.intel.com (HELO localhost.localdomain)
 ([10.237.222.8])
 by fmsmga004.fm.intel.com with ESMTP; 09 Jun 2020 06:40:48 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Jun 2020 13:19:44 +0000
Message-Id: <20200609131945.18373-2-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200609131945.18373-1-ciara.loftus@intel.com>
References: <20200609131945.18373-1-ciara.loftus@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 2/3] i40e: protect ring accesses with
 READ- and WRITE_ONCE
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
Cc: netdev@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

READ_ONCE should be used when reading rings prior to accessing the
statistics pointer. Introduce this as well as the corresponding WRITE_ONCE
usage when allocating and freeing the rings, to ensure protected access.

Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 29 ++++++++++++++-------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 5d807c8004f8..56ecd6c3f236 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -439,11 +439,15 @@ static void i40e_get_netdev_stats_struct(struct net_device *netdev,
 		i40e_get_netdev_stats_struct_tx(ring, stats);
 
 		if (i40e_enabled_xdp_vsi(vsi)) {
-			ring++;
+			ring = READ_ONCE(vsi->xdp_rings[i]);
+			if (!ring)
+				continue;
 			i40e_get_netdev_stats_struct_tx(ring, stats);
 		}
 
-		ring++;
+		ring = READ_ONCE(vsi->rx_rings[i]);
+		if (!ring)
+			continue;
 		do {
 			start   = u64_stats_fetch_begin_irq(&ring->syncp);
 			packets = ring->stats.packets;
@@ -787,6 +791,8 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	for (q = 0; q < vsi->num_queue_pairs; q++) {
 		/* locate Tx ring */
 		p = READ_ONCE(vsi->tx_rings[q]);
+		if (!p)
+			continue;
 
 		do {
 			start = u64_stats_fetch_begin_irq(&p->syncp);
@@ -800,8 +806,11 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 		tx_linearize += p->tx_stats.tx_linearize;
 		tx_force_wb += p->tx_stats.tx_force_wb;
 
-		/* Rx queue is part of the same block as Tx queue */
-		p = &p[1];
+		/* locate Rx ring */
+		p = READ_ONCE(vsi->rx_rings[q]);
+		if (!p)
+			continue;
+
 		do {
 			start = u64_stats_fetch_begin_irq(&p->syncp);
 			packets = p->stats.packets;
@@ -10824,10 +10833,10 @@ static void i40e_vsi_clear_rings(struct i40e_vsi *vsi)
 	if (vsi->tx_rings && vsi->tx_rings[0]) {
 		for (i = 0; i < vsi->alloc_queue_pairs; i++) {
 			kfree_rcu(vsi->tx_rings[i], rcu);
-			vsi->tx_rings[i] = NULL;
-			vsi->rx_rings[i] = NULL;
+			WRITE_ONCE(vsi->tx_rings[i], NULL);
+			WRITE_ONCE(vsi->rx_rings[i], NULL);
 			if (vsi->xdp_rings)
-				vsi->xdp_rings[i] = NULL;
+				WRITE_ONCE(vsi->xdp_rings[i], NULL);
 		}
 	}
 }
@@ -10861,7 +10870,7 @@ static int i40e_alloc_rings(struct i40e_vsi *vsi)
 		if (vsi->back->hw_features & I40E_HW_WB_ON_ITR_CAPABLE)
 			ring->flags = I40E_TXR_FLAGS_WB_ON_ITR;
 		ring->itr_setting = pf->tx_itr_default;
-		vsi->tx_rings[i] = ring++;
+		WRITE_ONCE(vsi->tx_rings[i], ring++);
 
 		if (!i40e_enabled_xdp_vsi(vsi))
 			goto setup_rx;
@@ -10879,7 +10888,7 @@ static int i40e_alloc_rings(struct i40e_vsi *vsi)
 			ring->flags = I40E_TXR_FLAGS_WB_ON_ITR;
 		set_ring_xdp(ring);
 		ring->itr_setting = pf->tx_itr_default;
-		vsi->xdp_rings[i] = ring++;
+		WRITE_ONCE(vsi->xdp_rings[i], ring++);
 
 setup_rx:
 		ring->queue_index = i;
@@ -10892,7 +10901,7 @@ static int i40e_alloc_rings(struct i40e_vsi *vsi)
 		ring->size = 0;
 		ring->dcb_tc = 0;
 		ring->itr_setting = pf->rx_itr_default;
-		vsi->rx_rings[i] = ring;
+		WRITE_ONCE(vsi->rx_rings[i], ring);
 	}
 
 	return 0;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
