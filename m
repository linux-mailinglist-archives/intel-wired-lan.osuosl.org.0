Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FAA718FCF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 03:01:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38B14614E4;
	Thu,  1 Jun 2023 01:01:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38B14614E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685581274;
	bh=nnYaf6IiSYBkmAcBM4LeBIUxIqlI8uyeSoab2Le19LM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MMwUCGNNBEYGiQUOvk9pYsOOywQvpJJQSLRtigwttDteuYy9gJ7HD/8DzeU0QJ0Vf
	 pWKp4q9wDy/IaRfYogElYDdV6oYDcVDy4XSCz+6tppK7ADoakR5fe6iOlH4bGHPy5T
	 49PRyBBSNzLTnOhIXuAU/utuUoLyiXzGrNC007aO5uq6rhwU2TeHmMUJms54k+ObZ2
	 jySkLmA61iHZg7s99VuKlI5kVOGxWcFeAkyqLnUKGdvVQY5+lkbR95NHgOyQyKmHi4
	 hLHT/yWiwCZRoMaKFRpmWUnpv0jGZBa3NURWvD0YTRwGSErogVOHKJi2Ba3dW+FJRN
	 hTPfXhQkv7XKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i4giVK7R_och; Thu,  1 Jun 2023 01:01:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CF70614B9;
	Thu,  1 Jun 2023 01:01:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CF70614B9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B820F1BF28E
 for <intel-wired-lan@osuosl.org>; Thu,  1 Jun 2023 01:01:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CFF583299
 for <intel-wired-lan@osuosl.org>; Thu,  1 Jun 2023 01:01:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CFF583299
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id veeeK84hhwxJ for <intel-wired-lan@osuosl.org>;
 Thu,  1 Jun 2023 01:01:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51A6183281
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51A6183281
 for <intel-wired-lan@osuosl.org>; Thu,  1 Jun 2023 01:01:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="383679343"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="383679343"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 18:01:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="710278635"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="710278635"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga007.fm.intel.com with ESMTP; 31 May 2023 18:01:01 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu,  1 Jun 2023 08:59:25 +0800
Message-Id: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685581265; x=1717117265;
 h=from:to:cc:subject:date:message-id;
 bh=4e2KXMdeR17YOPXY8nJGQ0DWekewqCAZvUVDGTcFy3Q=;
 b=ZRyW+2NWjirCeHn98YER7fTaynYBwnWgW4QCH40EvILjZ0i3rxVO1L11
 XJGv7jfsLXFyUnoa1rtms2Z87GqAO4P7PESl6Q66PoFhqi3HdLQMt36o1
 JjaP5cF5so3c3sBdzNmUx6oYYeN8H5OPZGOBW5ls62UOquKHkmqLCUdJp
 UfArcB35i1WwI3cVjUS2Hd0gAJscE2oXEtvQGdTTglOGmWJB/GmoYKHL0
 PCYwGaGEhigufzQvvvs9VdKCwU6ytQW6q4Q7K/CQCPUkuqrUb2XWKw7j7
 +he/ayKGYnGadN0dqaGITw9ojtuIpFvFpm5p6gpKOgJdOyLrr9iPUs+7s
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZRyW+2NW
Subject: [Intel-wired-lan] [PATCH iwl-net v3] igc: Add TransmissionOverrun
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
Cc: vladimir.oltean@nxp.com, anthony.l.nguyen@intel.com,
 tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add TransmissionOverrun as per defined by IEEE 802.1Q Bridges.
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

Inspired from enetc_taprio_stats() and enetc_taprio_tc_stats(), now
driver also report the tx_overruns counter per traffic class.

User can get this counter by using below command:
1) ethtool -S <interface> | grep Transmit_overruns
2) tc -s qdisc show dev <interface> root
3) tc -s class show dev <interface>

Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

---
V2 -> V3: Included new infra xstats to report back the counter to qdisc
V1 -> V2: Change per-queue stats. Driver still remains adding the
	  statistic independently.
---
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  4 ++-
 drivers/net/ethernet/intel/igc/igc_main.c    | 38 ++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 10 ++++++
 4 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index cb5751fab03c9..2a13e62b75d60 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -46,6 +46,7 @@ struct igc_tx_queue_stats {
 	u64 bytes;
 	u64 restart_queue;
 	u64 restart_queue2;
+	u64 tx_overruns;
 };
 
 struct igc_rx_queue_stats {
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 0e2cb00622d1a..6a10ae1474fc5 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -112,7 +112,7 @@ static const char igc_gstrings_test[][ETH_GSTRING_LEN] = {
 	(sizeof(igc_gstrings_net_stats) / sizeof(struct igc_stats))
 #define IGC_RX_QUEUE_STATS_LEN \
 	(sizeof(struct igc_rx_queue_stats) / sizeof(u64))
-#define IGC_TX_QUEUE_STATS_LEN 3 /* packets, bytes, restart_queue */
+#define IGC_TX_QUEUE_STATS_LEN 4 /* packets, bytes, restart_queue, tx_overruns */
 #define IGC_QUEUE_STATS_LEN \
 	((((struct igc_adapter *)netdev_priv(netdev))->num_rx_queues * \
 	  IGC_RX_QUEUE_STATS_LEN) + \
@@ -781,6 +781,7 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
 			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
 			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
 			ethtool_sprintf(&p, "tx_queue_%u_restart", i);
+			ethtool_sprintf(&p, "tx_queue_%u_Transmit_overruns", i);
 		}
 		for (i = 0; i < adapter->num_rx_queues; i++) {
 			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
@@ -850,6 +851,7 @@ static void igc_ethtool_get_stats(struct net_device *netdev,
 			restart2  = ring->tx_stats.restart_queue2;
 		} while (u64_stats_fetch_retry(&ring->tx_syncp2, start));
 		data[i + 2] += restart2;
+		data[i + 3] = ring->tx_stats.tx_overruns;
 
 		i += IGC_TX_QUEUE_STATS_LEN;
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index aa9f23b7f0c1a..056925a7bcdd8 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6109,11 +6109,43 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 		ring->start_time = 0;
 		ring->end_time = NSEC_PER_SEC;
 		ring->max_sdu = 0;
+		ring->tx_stats.tx_overruns = 0;
 	}
 
 	return 0;
 }
 
+static void igc_taprio_stats(struct net_device *dev,
+			     struct tc_taprio_qopt_stats *stats)
+{
+	struct igc_adapter *adapter = netdev_priv(dev);
+	u64 tx_overruns = 0;
+	int i;
+
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *tx_ring = adapter->tx_ring[i];
+
+		tx_overruns += tx_ring->tx_stats.tx_overruns;
+	}
+
+	stats->tx_overruns = tx_overruns;
+}
+
+static void igc_taprio_tc_stats(struct net_device *dev,
+				struct tc_taprio_qopt_tc_stats *tc_stats)
+{
+	struct tc_taprio_qopt_stats *stats = &tc_stats->stats;
+	struct igc_adapter *adapter = netdev_priv(dev);
+	struct igc_ring *tx_ring;
+	int tc = tc_stats->tc;
+	int txq;
+
+	txq = dev->tc_to_txq[tc].offset;
+	tx_ring = adapter->tx_ring[txq];
+
+	stats->tx_overruns = tx_ring->tx_stats.tx_overruns;
+}
+
 static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 				 struct tc_taprio_qopt_offload *qopt)
 {
@@ -6130,6 +6162,12 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	case TAPRIO_CMD_DESTROY:
 		adapter->qbv_enable = false;
 		break;
+	case TAPRIO_CMD_STATS:
+		igc_taprio_stats(adapter->netdev, &qopt->stats);
+		return 0;
+	case TAPRIO_CMD_TC_STATS:
+		igc_taprio_tc_stats(adapter->netdev, &qopt->tc_stats);
+		return 0;
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 6b299b83e7ef2..342530d11aae9 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -136,6 +136,16 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		txqctl |= IGC_TXQCTL_STRICT_CYCLE |
 			IGC_TXQCTL_STRICT_END;
 
+		/* If it notices that a frame from a particular queue is still
+		 * being transmitted by MAC, tx_overruns shall be increased.
+		 * But currently driver setting Strict_End bit which indicate
+		 * that packet from the queue can be transmitted only if they
+		 * are expected to be completed before the windows of the
+		 * queue is ended. Thus, this counter will always be zero when
+		 * Strict_End is set.
+		 */
+		ring->tx_stats.tx_overruns  = 0;
+
 		if (ring->launchtime_enable)
 			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
