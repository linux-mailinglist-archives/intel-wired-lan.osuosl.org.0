Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B422DD9D4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Dec 2020 21:24:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AADB6879DC;
	Thu, 17 Dec 2020 20:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x8yKfGmkEGXY; Thu, 17 Dec 2020 20:24:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29D29879E7;
	Thu, 17 Dec 2020 20:24:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BDA141BF418
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B8F4087831
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6tEILzQZeRHh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Dec 2020 20:24:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CFBF487825
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:30 +0000 (UTC)
IronPort-SDR: H7T3+JJpUzUyJ2FdYnd2MO4yxV2wlkqZ6zXOBgw+uILVJ315EE+2F9XEjqyr3gPKzQ91HMiNe2
 NWrFX6SxDV6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="155130688"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="155130688"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:30 -0800
IronPort-SDR: aRXNM6T+CBYM0HmotkTJfOk1Ju4Fdfw9v/tqaZBGNoWprWhvN6jEZ+gYAW+G8voX66rPlYA8/c
 WGdTT64B/GUQ==
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="413611943"
Received: from ogmeshki-mobl.amr.corp.intel.com ([10.212.162.252])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:30 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Dec 2020 12:24:10 -0800
Message-Id: <20201217202415.77891-6-andre.guedes@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201217202415.77891-1-andre.guedes@intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 05/10] igc: Introduce igc_update_rx_stats()
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

In preparation for AF_XDP zero-copy support, this patch encapsulates the
code that updates the driver RX stats so it can be reused in the zero-copy
path.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 1870ca37d650..e5cdebbe5637 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2118,6 +2118,20 @@ static void igc_finalize_xdp(struct igc_adapter *adapter, int status)
 		xdp_do_flush();
 }
 
+static void igc_update_rx_stats(struct igc_q_vector *q_vector,
+				unsigned int packets, unsigned int bytes)
+{
+	struct igc_ring *ring = q_vector->rx.ring;
+
+	u64_stats_update_begin(&ring->rx_syncp);
+	ring->rx_stats.packets += packets;
+	ring->rx_stats.bytes += bytes;
+	u64_stats_update_end(&ring->rx_syncp);
+
+	q_vector->rx.total_packets += packets;
+	q_vector->rx.total_bytes += bytes;
+}
+
 static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 {
 	unsigned int total_bytes = 0, total_packets = 0;
@@ -2241,12 +2255,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	/* place incomplete frames back on ring for completion */
 	rx_ring->skb = skb;
 
-	u64_stats_update_begin(&rx_ring->rx_syncp);
-	rx_ring->rx_stats.packets += total_packets;
-	rx_ring->rx_stats.bytes += total_bytes;
-	u64_stats_update_end(&rx_ring->rx_syncp);
-	q_vector->rx.total_packets += total_packets;
-	q_vector->rx.total_bytes += total_bytes;
+	igc_update_rx_stats(q_vector, total_packets, total_bytes);
 
 	if (cleaned_count)
 		igc_alloc_rx_buffers(rx_ring, cleaned_count);
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
