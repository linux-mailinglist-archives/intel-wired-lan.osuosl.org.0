Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 980291D5D58
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:45:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F835890B0;
	Sat, 16 May 2020 00:45:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WAdgQ2OBPEmD; Sat, 16 May 2020 00:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13EC6890CB;
	Sat, 16 May 2020 00:45:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E2F61BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9B5D787F93
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eoUY3fzo5F-c for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:45:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E1BB88018
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:01 +0000 (UTC)
IronPort-SDR: gp1XBP9dP8qMM9FLXuQVF1oZjoitArtvok/LoW6coU+1ET3e2Nl0My6vvjgbgG0ffFWEB0eqe/
 uyjzp/4P/6Rg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:45:00 -0700
IronPort-SDR: fUJjfZZ9VBlFvzl4WyNIShCXiKSrWb9+P5RlQQTI6AcVt9KnbLDLSsIofSPDTthloRxW89P+w2
 Ub9PSXlZgNLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="287960351"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga004.fm.intel.com with ESMTP; 15 May 2020 17:45:00 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:42:20 -0700
Message-Id: <20200516004226.4795-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S44 08/14] ice: Check UMEM FQ size when
 allocating bufs
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

From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>

If a UMEM is present on a queue when an interface/queue pair is being
enabled, the driver will try to prepare the Rx buffers in advance to
improve performance. However, if fill queue is shorter than HW Rx ring,
the driver will report failure after getting the last address from the
fill queue.

This still lets the driver process the packets correctly during the NAPI
poll, but leads to a constant NAPI rescheduling. Not allocating the
buffers in advance would result in a potential performance decrease.

Commit d57d76428ae9 ("xsk: Add API to check for available entries in FQ")
provides an API that lets drivers check the number of addresses that the
fill queue holds.

Notify the user if fill queue is not long enough to prepare all buffers
before packet processing starts, and allocate the buffers during the
NAPI poll. If the fill queue size is sufficient, prepare Rx buffers in
advance.

Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 30 ++++++++++++++++-------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index a964f5055f37..74fdd4296937 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -280,7 +280,9 @@ ice_setup_tx_ctx(struct ice_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf_q)
  */
 int ice_setup_rx_ctx(struct ice_ring *ring)
 {
+	struct device *dev = ice_pf_to_dev(ring->vsi->back);
 	int chain_len = ICE_MAX_CHAINED_RX_BUFS;
+	u16 num_bufs = ICE_DESC_UNUSED(ring);
 	struct ice_vsi *vsi = ring->vsi;
 	u32 rxdid = ICE_RXDID_FLEX_NIC;
 	struct ice_rlan_ctx rlan_ctx;
@@ -323,7 +325,7 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 			if (err)
 				return err;
 
-			dev_info(ice_pf_to_dev(vsi->back), "Registered XDP mem model MEM_TYPE_ZERO_COPY on Rx ring %d\n",
+			dev_info(dev, "Registered XDP mem model MEM_TYPE_ZERO_COPY on Rx ring %d\n",
 				 ring->q_index);
 		} else {
 			ring->zca.free = NULL;
@@ -408,7 +410,7 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	/* Absolute queue number out of 2K needs to be passed */
 	err = ice_write_rxq_ctx(hw, &rlan_ctx, pf_q);
 	if (err) {
-		dev_err(ice_pf_to_dev(vsi->back), "Failed to set LAN Rx queue context for absolute Rx queue %d error: %d\n",
+		dev_err(dev, "Failed to set LAN Rx queue context for absolute Rx queue %d error: %d\n",
 			pf_q, err);
 		return -EIO;
 	}
@@ -426,13 +428,23 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	ring->tail = hw->hw_addr + QRX_TAIL(pf_q);
 	writel(0, ring->tail);
 
-	err = ring->xsk_umem ?
-	      ice_alloc_rx_bufs_slow_zc(ring, ICE_DESC_UNUSED(ring)) :
-	      ice_alloc_rx_bufs(ring, ICE_DESC_UNUSED(ring));
-	if (err)
-		dev_info(ice_pf_to_dev(vsi->back), "Failed allocate some buffers on %sRx ring %d (pf_q %d)\n",
-			 ring->xsk_umem ? "UMEM enabled " : "",
-			 ring->q_index, pf_q);
+	if (ring->xsk_umem) {
+		if (!xsk_umem_has_addrs_rq(ring->xsk_umem, num_bufs)) {
+			dev_warn(dev, "UMEM does not provide enough addresses to fill %d buffers on Rx ring %d\n",
+				 num_bufs, ring->q_index);
+			dev_warn(dev, "Change Rx ring/fill queue size to avoid performance issues\n");
+
+			return 0;
+		}
+
+		err = ice_alloc_rx_bufs_slow_zc(ring, num_bufs);
+		if (err)
+			dev_info(dev, "Failed to allocate some buffers on UMEM enabled Rx ring %d (pf_q %d)\n",
+				 ring->q_index, pf_q);
+		return 0;
+	}
+
+	ice_alloc_rx_bufs(ring, num_bufs);
 
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
