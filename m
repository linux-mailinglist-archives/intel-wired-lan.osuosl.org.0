Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E92E15CD54
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2020 22:32:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 12BDA8757D;
	Thu, 13 Feb 2020 21:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8SLYcHVeYYa8; Thu, 13 Feb 2020 21:32:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A40D8733E;
	Thu, 13 Feb 2020 21:32:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39E821BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 374D321561
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mIz38oB98g4L for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2020 21:31:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 20826203F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227382411"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 13 Feb 2020 13:31:51 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Feb 2020 13:31:22 -0800
Message-Id: <20200213213129.34023-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
References: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S39 v2 08/15] ice: Support XDP UMEM wake
 up mechanism
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

Add support for a new AF_XDP feature that has already been introduced in
upstreamed Intel NIC drivers. If a user space application signals that
it might sleep using the new bind flag XDP_USE_NEED_WAKEUP, the driver
will then set this flag if it has no more buffers on the NIC Rx ring and
yield to the application. For Tx, it will set the flag if it has no
outstanding Tx completion interrupts and return to the application.

Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 55d994f2d71e..3fd31ad73e0e 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -937,6 +937,15 @@ int ice_clean_rx_irq_zc(struct ice_ring *rx_ring, int budget)
 	ice_finalize_xdp_rx(rx_ring, xdp_xmit);
 	ice_update_rx_ring_stats(rx_ring, total_rx_packets, total_rx_bytes);
 
+	if (xsk_umem_uses_need_wakeup(rx_ring->xsk_umem)) {
+		if (failure || rx_ring->next_to_clean == rx_ring->next_to_use)
+			xsk_set_rx_need_wakeup(rx_ring->xsk_umem);
+		else
+			xsk_clear_rx_need_wakeup(rx_ring->xsk_umem);
+
+		return (int)total_rx_packets;
+	}
+
 	return failure ? budget : (int)total_rx_packets;
 }
 
@@ -988,6 +997,8 @@ static bool ice_xmit_zc(struct ice_ring *xdp_ring, int budget)
 	if (tx_desc) {
 		ice_xdp_ring_update_tail(xdp_ring);
 		xsk_umem_consume_tx_done(xdp_ring->xsk_umem);
+		if (xsk_umem_uses_need_wakeup(xdp_ring->xsk_umem))
+			xsk_clear_tx_need_wakeup(xdp_ring->xsk_umem);
 	}
 
 	return budget > 0 && work_done;
@@ -1063,6 +1074,13 @@ bool ice_clean_tx_irq_zc(struct ice_ring *xdp_ring, int budget)
 	if (xsk_frames)
 		xsk_umem_complete_tx(xdp_ring->xsk_umem, xsk_frames);
 
+	if (xsk_umem_uses_need_wakeup(xdp_ring->xsk_umem)) {
+		if (xdp_ring->next_to_clean == xdp_ring->next_to_use)
+			xsk_set_tx_need_wakeup(xdp_ring->xsk_umem);
+		else
+			xsk_clear_tx_need_wakeup(xdp_ring->xsk_umem);
+	}
+
 	ice_update_tx_ring_stats(xdp_ring, total_packets, total_bytes);
 	xmit_done = ice_xmit_zc(xdp_ring, ICE_DFLT_IRQ_WORK);
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
