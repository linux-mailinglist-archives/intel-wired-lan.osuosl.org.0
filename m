Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AF11D5D54
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:45:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E5A189A2C;
	Sat, 16 May 2020 00:45:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7pudBESBz8RM; Sat, 16 May 2020 00:45:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B9C689A9A;
	Sat, 16 May 2020 00:45:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 457201BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 42CFF8811E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xjo20irTWsNh for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:45:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 04D3587F8B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:00 +0000 (UTC)
IronPort-SDR: 1+obTzD5I2B+AJlBinKrJFW/aTY0LYHtrr4hLZdPsQv2BrTbOjgf+Cds9bprFHj6hp5jSxtoid
 YHqmAbg30GDQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:44:59 -0700
IronPort-SDR: g5oZuk915M3WwE1L4nb7VzE1V1VOTq0TJLaufu3uzm1VNZe5c+PjAwPgUdAthDTeaDJ+6VqMxt
 L4dwnjzPTR+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="287960346"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga004.fm.intel.com with ESMTP; 15 May 2020 17:44:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:42:16 -0700
Message-Id: <20200516004226.4795-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S44 04/14] ice: Add XDP Tx to VSI ring
 stats
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

From: Marta Plantykow <marta.a.plantykow@intel.com>

When XDP Tx program is loaded and packets are sent from
interface, VSI statistics are not updated. This patch adds
packets sent on Tx XDP ring to VSI ring stats.

Signed-off-by: Marta Plantykow <marta.a.plantykow@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 42 ++++++++++++++++++-----
 1 file changed, 33 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 61c7d0b57f02..a74b2ce6956a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4281,6 +4281,33 @@ ice_fetch_u64_stats_per_ring(struct ice_ring *ring, u64 *pkts, u64 *bytes)
 	} while (u64_stats_fetch_retry_irq(&ring->syncp, start));
 }
 
+/**
+ * ice_update_vsi_tx_ring_stats - Update VSI Tx ring stats counters
+ * @vsi: the VSI to be updated
+ * @rings: rings to work on
+ * @count: number of rings
+ */
+static void
+ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi, struct ice_ring **rings,
+			     u16 count)
+{
+	struct rtnl_link_stats64 *vsi_stats = &vsi->net_stats;
+	u16 i;
+
+	for (i = 0; i < count; i++) {
+		struct ice_ring *ring;
+		u64 pkts, bytes;
+
+		ring = READ_ONCE(rings[i]);
+		ice_fetch_u64_stats_per_ring(ring, &pkts, &bytes);
+		vsi_stats->tx_packets += pkts;
+		vsi_stats->tx_bytes += bytes;
+		vsi->tx_restart += ring->tx_stats.restart_q;
+		vsi->tx_busy += ring->tx_stats.tx_busy;
+		vsi->tx_linearize += ring->tx_stats.tx_linearize;
+	}
+}
+
 /**
  * ice_update_vsi_ring_stats - Update VSI stats counters
  * @vsi: the VSI to be updated
@@ -4308,15 +4335,7 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 	rcu_read_lock();
 
 	/* update Tx rings counters */
-	ice_for_each_txq(vsi, i) {
-		ring = READ_ONCE(vsi->tx_rings[i]);
-		ice_fetch_u64_stats_per_ring(ring, &pkts, &bytes);
-		vsi_stats->tx_packets += pkts;
-		vsi_stats->tx_bytes += bytes;
-		vsi->tx_restart += ring->tx_stats.restart_q;
-		vsi->tx_busy += ring->tx_stats.tx_busy;
-		vsi->tx_linearize += ring->tx_stats.tx_linearize;
-	}
+	ice_update_vsi_tx_ring_stats(vsi, vsi->tx_rings, vsi->num_txq);
 
 	/* update Rx rings counters */
 	ice_for_each_rxq(vsi, i) {
@@ -4328,6 +4347,11 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 		vsi->rx_page_failed += ring->rx_stats.alloc_page_failed;
 	}
 
+	/* update XDP Tx rings counters */
+	if (ice_is_xdp_ena_vsi(vsi))
+		ice_update_vsi_tx_ring_stats(vsi, vsi->xdp_rings,
+					     vsi->num_xdp_txq);
+
 	rcu_read_unlock();
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
