Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 873F36DD23F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Apr 2023 07:56:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E6CC4177C;
	Tue, 11 Apr 2023 05:56:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E6CC4177C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681192613;
	bh=y8isQwE1WL+KqYsUQg5Syf+OarDMqpQ1o/oBHBnlyUo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VmyjgaNghJypvTJTxmwr2DoGlvFGEcmK/iuuJYp7woVYdfgiOhJw/Cj+wA3ZqEZOY
	 GySzhVk6uwt4FJExNPEHqeujgqucov5ST8DR2TEsWCREn+3MmOj6GJzGxifIu9+90I
	 tHQbn1RkIWoVu7I+e4iAXlUBUupHykOKD24sJ5m3fvk5781kvV1l0JKPOffvRfbI1j
	 SELxUXXp+hYTrnw+/qII7TnRvxOhQ7RWvr0rpLW2VeoBByLnrLHBfXxOxeh8T3fnwY
	 xT0Fb1YpR6Hjn+oqxDFXUs0SSxzWfbL2GQg/L17BdOfy+1ZbPQR5T6u8lin9vn7+t6
	 0t3G/gFLXgQPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sOYdcE6qjBi1; Tue, 11 Apr 2023 05:56:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 991FE40944;
	Tue, 11 Apr 2023 05:56:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 991FE40944
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A81541C3BAC
 for <intel-wired-lan@osuosl.org>; Tue, 11 Apr 2023 05:56:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7FC56403F9
 for <intel-wired-lan@osuosl.org>; Tue, 11 Apr 2023 05:56:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FC56403F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nu0HUXzQ-xPR for <intel-wired-lan@osuosl.org>;
 Tue, 11 Apr 2023 05:56:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAB2A403B7
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AAB2A403B7
 for <intel-wired-lan@osuosl.org>; Tue, 11 Apr 2023 05:56:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="346203005"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="346203005"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 22:56:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="665864184"
X-IronPort-AV: E=Sophos;i="5.98,335,1673942400"; d="scan'208";a="665864184"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga006.jf.intel.com with ESMTP; 10 Apr 2023 22:56:37 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Tue, 11 Apr 2023 13:55:43 +0800
Message-Id: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681192605; x=1712728605;
 h=from:to:cc:subject:date:message-id;
 bh=pY4l/aFB5C5WcT4deBe4ePgcyyAf+AbVJUy8jsdEDxc=;
 b=nImCIPwFpMJ8o3VmjZ3EmVGngFQsD8LM0hZiijScDOTeYYznzGtrFRpc
 k2248m4NVPftKu4Duvj3ocDAc7WhaHdt4BVDU+VglawduHlRBBuWemhOM
 ytrQSbFV2WzemMTIalzP88r4tVMRPeg/f1+F0iePEsT22LG0lluQ/MTKf
 8JIH+NURa1hS2aaObLPn03PX9Up8OyKXBYPxZfq7esD0A/c80kZqXh2nI
 1z3jBFC3QP8rL6a7KW7Xk2d6g7TiHZwOVewuQK2U6x2f6NccdC3sFU9/H
 HWfD585YSCl84sD/PtPzsnMXD+f3wQ4Y/ikWdHM+qjFCqNTqvKf5lUE+k
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nImCIPwF
Subject: [Intel-wired-lan] [PATCH net-next v2] igc: Add TransmissionOverrun
 counter
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
Cc: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add TransmissionOverrun as defined by IEEE Std 802.1Q.
TransmissionOverrun counter shall be incremented if the implementation
detects that a frame from a given queue is still being transmitted by
the MAC when that gate-close event for that queue occurs.

This counter is utilised by the Certification conformance test to
inform the user application whether any packets are currently being
transmitted on a particular queue during a gate-close event.

Intel Discrete I225/I226 have a mechanism to not transmit a packets if
the gate open time is insufficient for the packet transmission by setting
the Strict_End bit. Thus, it is expected for this counter to be always
zero at this moment.

Drivers are now adding the statistics independently because different
hardware controllers may support different hardware queues.

User can get this counter by using below command:
"ethtool -S <interface> | grep TransmissionOverrun"

Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

---
V1 -> V2: Change per-queue stats. Driver still remains adding the
	  statistic independently.
---
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  4 +++-
 drivers/net/ethernet/intel/igc/igc_main.c    |  1 +
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 10 ++++++++++
 4 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 34aebf00a5123..a3edae4ef9de8 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -45,6 +45,7 @@ struct igc_tx_queue_stats {
 	u64 bytes;
 	u64 restart_queue;
 	u64 restart_queue2;
+	u64 transmission_overrun;
 };
 
 struct igc_rx_queue_stats {
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 0e2cb00622d1a..3ab2555d674e1 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -112,7 +112,7 @@ static const char igc_gstrings_test[][ETH_GSTRING_LEN] = {
 	(sizeof(igc_gstrings_net_stats) / sizeof(struct igc_stats))
 #define IGC_RX_QUEUE_STATS_LEN \
 	(sizeof(struct igc_rx_queue_stats) / sizeof(u64))
-#define IGC_TX_QUEUE_STATS_LEN 3 /* packets, bytes, restart_queue */
+#define IGC_TX_QUEUE_STATS_LEN 4 /* packets, bytes, restart_queue, transmission_overrun */
 #define IGC_QUEUE_STATS_LEN \
 	((((struct igc_adapter *)netdev_priv(netdev))->num_rx_queues * \
 	  IGC_RX_QUEUE_STATS_LEN) + \
@@ -781,6 +781,7 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
 			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
 			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
 			ethtool_sprintf(&p, "tx_queue_%u_restart", i);
+			ethtool_sprintf(&p, "tx_queue_%u_TransmissionOverrun", i);
 		}
 		for (i = 0; i < adapter->num_rx_queues; i++) {
 			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
@@ -850,6 +851,7 @@ static void igc_ethtool_get_stats(struct net_device *netdev,
 			restart2  = ring->tx_stats.restart_queue2;
 		} while (u64_stats_fetch_retry(&ring->tx_syncp2, start));
 		data[i + 2] += restart2;
+		data[i + 3] = ring->tx_stats.transmission_overrun;
 
 		i += IGC_TX_QUEUE_STATS_LEN;
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ba49728be919a..d252f2ad8e700 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6051,6 +6051,7 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 		ring->start_time = 0;
 		ring->end_time = NSEC_PER_SEC;
 		ring->max_sdu = 0;
+		ring->tx_stats.transmission_overrun = 0;
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 94a2b0dfb54d4..b9c07fb7e6aa5 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -136,6 +136,16 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		txqctl |= IGC_TXQCTL_STRICT_CYCLE |
 			IGC_TXQCTL_STRICT_END;
 
+		/* If it notices that a frame from a particular queue is still
+		 * being transmitted by MAC, TransmissionOverrun shall be
+		 * increased. But currently driver setting Strict_End bit
+		 * which indicate that packet from the queue can be transmitted
+		 * only if they are expected to be completed before the windows
+		 * of the queue is ended. Thus, this counter will always be zero
+		 * when Strict_End is set.
+		 */
+		ring->tx_stats.transmission_overrun = 0;
+
 		if (ring->launchtime_enable)
 			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
