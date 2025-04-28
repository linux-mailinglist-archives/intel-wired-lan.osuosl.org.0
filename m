Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6974CA9E7ED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 08:03:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF83B40BED;
	Mon, 28 Apr 2025 06:03:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XwdlshGssrQa; Mon, 28 Apr 2025 06:03:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4254840BDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745820224;
	bh=Sp3peayRoKEKZx9EHC/xasQ7aioky8wwPKD6wSOkpEo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hanr0385uUEaLcggvyCDaoMtxWUdhEZosW5y4n2ZN/t7tnX7eTvPaezP6GpeLN0wO
	 tFQ6jfT+YFuHCvmVHRL+HibPvOr+Y/nMcqVeINv787HKy0/xO7ps200GYLNnN43Plq
	 x9pLezvXIwnKavq3Cnn9C+YtMnfVizC70jM3N4/tbLP5p17sBVg8Dr0A/shys2JZJl
	 g0nfT2IR9hugM8SxI/Qc/z9qK057b5VjeMGk3SyjOlf5wdLc0eb6zVRg92hkbEYz/X
	 BUjzB1XDq97ZkJtDE13oYmDAGJL1vwMhPnDIha42kPlI54XXlkPhg3UM91WWYRBRDt
	 2OjPIv/Z/X6Hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4254840BDA;
	Mon, 28 Apr 2025 06:03:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 19B15C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6493660B83
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VvUBTDYBb0fF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 06:03:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7C6BC60B79
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C6BC60B79
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C6BC60B79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:40 +0000 (UTC)
X-CSE-ConnectionGUID: EEPc6wDTRTqBE00M2OI1lw==
X-CSE-MsgGUID: 5qJ4zxsxQryLiewaA80huw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51064639"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51064639"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:03:41 -0700
X-CSE-ConnectionGUID: r/xWXEzaRI+hB3417ii/DQ==
X-CSE-MsgGUID: k9htWCBhTZ247V5aEhM4aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="133340810"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa006.jf.intel.com with ESMTP; 27 Apr 2025 23:03:37 -0700
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 28 Apr 2025 02:02:22 -0400
Message-Id: <20250428060225.1306986-6-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745820221; x=1777356221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VQnq3Tmsjf8tlqRVbsJzTMFjsQ4wkMQZzJiQTsMxEKQ=;
 b=TN319q8o3hH/WvZbaxhxVI4BuyTL/Vge6uLpsVtY5JkrRjTAH8Q3WXS8
 tVKAoaMSa+/sfamPd7M3riPqWcAzDDes3bmrvZBhugsE7Ke0kB04xf2yN
 zgTdTBxPPs/ZF34r3dp4zJylIQrP6qti3FytBiVuaWo2mfKIFmlSn5UWN
 y8PSLB4UrthViYVfVu14IsCWhOqGuBwUPAxXsLp/6v0GK9mUTHrJnkiQN
 RWFtPk3OJLnWbabT7kciaKdYvwDTG4U+IeQHrcOP5Is2JWqdhic8c9Xa8
 YP9wRBLthTOgMeGo5XptDSVMkwdVPAvY5Vs0/+lxNyA9Gc0dtgNAo7L0y
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TN319q8o
Subject: [Intel-wired-lan] [PATCH iwl-next v1 5/8] igc: add private flag to
 reverse TX queue priority in TSN mode
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

By default, igc assigns TX hw queue 0 the highest priority and queue 3
the lowest. This is opposite of most NICs, where TX hw queue 3 has the
highest priority and queue 0 the lowest.

mqprio in igc already uses TX arbitration unconditionally to reverse TX
queue priority when mqprio is enabled. The TX arbitration logic does not
require a private flag, because mqprio was added recently and no known
users depend on the default queue ordering, which differs from the typical
convention.

taprio does not use TX arbitration, so it inherits the default igc TX
queue priority order. This causes tc command inconsistencies when
configuring frame preemption with taprio compared to mqprio in igc.
Other tc command inconsistencies and configuration issues already exist
when using taprio on igc compared to other network controllers. These
issues are described in a later section.

To harmonize TX queue priority behavior between taprio and mqprio, and
to fix these issues without breaking long-standing taprio use cases,
this patch adds a new private flag, called reverse-tsn-txq-prio, to
reverse the TX queue priority. It makes queue 3 the highest and queue 0
the lowest, reusing the TX arbitration logic already used by mqprio.

Users must set the private flag when enabling frame preemption with
taprio to follow the standard convention. Doing so promotes adoption of
the correct priority model for new features while preserving
compatibility with legacy configurations.

This new private flag addresses:

1.  Non-standard socket → tc → TX hw queue mapping for taprio in igc

Without the private flag:
- taprio maps (socket → tc → TX hardware queue) differently on igc
  compared to other network controllers
- On igc, mqprio maps tc differently from taprio, since mqprio already
  uses TX arbitration

The following examples compare taprio configuration on igc and other
network controllers:
a)  On other NICs (TX hw queue 3 is highest priority):
    taprio num_tc 4 map 0 1 2 3 .... \
    queues 1@0 1@1 1@2 1@3

    Mapping translates to:
    socket 0 → tc 0 → queue 0
    socket 3 → tc 3 → queue 3

    This is the normal mapping that respects the standard convention:
    higher socket number → higher tc -> higher priority TX hw queue

b)  On igc (TX hw queue 0 is highest priority by default):
    taprio num_tc 4 map 3 2 1 0 .... \
    queues 1@0 1@1 1@2 1@3

    Mapping translates to:
    socket 0 → tc 3 → queue 3
    socket 3 → tc 0 → queue 0

    This igc tc mapping example is based on Intel's TSN validation test
    case, where a higher socket priority maps to a higher priority queue.
    It respects the mapping:
      higher socket number -> higher priority TX hw queue
    but breaks the expected ordering:
      higher tc -> higher priority TX hw queue
    as defined in [Ref1]. This custom mapping complicates common taprio
    setup across NICs.

2.  Non-standard frame preemption mapping for taprio in igc

Without the private flag:
- Compared to other network controllers, taprio on igc must flip the
  expected fp sequence, since express traffic is expected to map to the
  highest priority queue and preemptible traffic to lower ones
- On igc, frame preemption configuration for mqprio differs from taprio,
  since mqprio already uses TX arbitration

The following examples compare taprio frame preemption configuration on
igc and other network controllers:
a)  On other NICs (TX hw queue 3 is highest priority):
    taprio num_tc 4 map ..... \
    queues 1@0 1@1 1@2 1@3 \
    fp P P P E

    Mapping translates to:
    tc0, tc1, tc2 → preemptible → queue 0, 1, 2
    tc3           → express     → queue 3

    This is the normal mapping that respects the standard convention:
    higher tc -> express traffic -> higher priority TX hw queue
    lower tc  -> preemptible traffic -> lower priority TX hw queue

b)  On igc (TX hw queue 0 is highest priority by default):
    taprio num_tc 4 map ...... \
    queues 1@0 1@1 1@2 1@3 \
    fp E P P P

    Mapping translates to:
    tc0           → express     → queue 0
    tc1, tc2, tc3 → preemptible → queue 1, 2, 3

    This inversion respects the mapping of:
      express traffic -> higher priority TX hw queue
    but breaks the expected ordering:
      higher tc -> express traffic
    as defined in [Ref1] where higher tc indicates higher priority. In
    this case, the lower tc0 is assigned to express traffic. This custom
    mapping further complicates common preemption setup across NICs.

3. LaunchTime + XDP queue priority issue on igc (reported by Siemens)

XDP requires RX and TX to share the same queue. When XDP uses queue 0,
which has the highest TX priority, best-effort packets that do not match
any RX filter also end up on RX queue 0. This is because queue 0 is the
default for packets that do not match any RX filter. This leads to
unexpected interference with real-time applications that process traffic
on queue 0. Reversing the TX queue priority allows assigning XDP to
queue 3 instead, which isolates real-time traffic from best-effort
packets.

Tests were performed on taprio with the following combinations, where
two apps send traffic simultaneously on different queues:

  Private Flag   Traffic Sent By           Traffic Sent By
  ----------------------------------------------------------------
  enabled        iperf3 (queue 3)          iperf3 (queue 0)
  disabled       iperf3 (queue 0)          iperf3 (queue 3)
  enabled        iperf3 (queue 3)          real-time app (queue 0)
  disabled       iperf3 (queue 0)          real-time app (queue 3)
  enabled        real-time app (queue 3)   iperf3 (queue 0)
  disabled       real-time app (queue 0)   iperf3 (queue 3)
  enabled        real-time app (queue 3)   real-time app (queue 0)
  disabled       real-time app (queue 0)   real-time app (queue 3)

Private flag is controlled with:
 ethtool --set-priv-flags enp1s0 reverse-tsn-txq-prio <on|off>

[Ref1]
IEEE 802.1Q clause 8.6.8 Transmission selection:
"For a given Port and traffic class, frames are selected from the
corresponding queue for transmission if and only if:
...
b) For each queue corresponding to a numerically higher value of traffic
class supported by the Port, the operation of the transmission selection
algorithm supported by that queue determines that there is no frame
available for transmission."

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 12 ++++++++++--
 drivers/net/ethernet/intel/igc/igc_main.c    |  3 ++-
 drivers/net/ethernet/intel/igc/igc_tsn.c     |  3 ++-
 4 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 4e44304b0608..684a11df445c 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -395,6 +395,7 @@ extern char igc_driver_name[];
 #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
 #define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
 #define IGC_FLAG_TSN_PREEMPT_ENABLED	BIT(19)
+#define IGC_FLAG_TSN_REVERSE_TXQ_PRIO	BIT(20)
 
 #define IGC_FLAG_TSN_ANY_ENABLED				\
 	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED |	\
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 324a27a5bef9..8e9827e62a86 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -122,9 +122,11 @@ static const char igc_gstrings_test[][ETH_GSTRING_LEN] = {
 #define IGC_STATS_LEN \
 	(IGC_GLOBAL_STATS_LEN + IGC_NETDEV_STATS_LEN + IGC_QUEUE_STATS_LEN)
 
+#define IGC_PRIV_FLAGS_LEGACY_RX		BIT(0)
+#define IGC_PRIV_FLAGS_REVERSE_TSN_TXQ_PRIO	BIT(1)
 static const char igc_priv_flags_strings[][ETH_GSTRING_LEN] = {
-#define IGC_PRIV_FLAGS_LEGACY_RX	BIT(0)
 	"legacy-rx",
+	"reverse-tsn-txq-prio",
 };
 
 #define IGC_PRIV_FLAGS_STR_LEN ARRAY_SIZE(igc_priv_flags_strings)
@@ -1600,6 +1602,9 @@ static u32 igc_ethtool_get_priv_flags(struct net_device *netdev)
 	if (adapter->flags & IGC_FLAG_RX_LEGACY)
 		priv_flags |= IGC_PRIV_FLAGS_LEGACY_RX;
 
+	if (adapter->flags & IGC_FLAG_TSN_REVERSE_TXQ_PRIO)
+		priv_flags |= IGC_PRIV_FLAGS_REVERSE_TSN_TXQ_PRIO;
+
 	return priv_flags;
 }
 
@@ -1608,10 +1613,13 @@ static int igc_ethtool_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	unsigned int flags = adapter->flags;
 
-	flags &= ~IGC_FLAG_RX_LEGACY;
+	flags &= ~(IGC_FLAG_RX_LEGACY | IGC_FLAG_TSN_REVERSE_TXQ_PRIO);
 	if (priv_flags & IGC_PRIV_FLAGS_LEGACY_RX)
 		flags |= IGC_FLAG_RX_LEGACY;
 
+	if (priv_flags & IGC_PRIV_FLAGS_REVERSE_TSN_TXQ_PRIO)
+		flags |= IGC_FLAG_TSN_REVERSE_TXQ_PRIO;
+
 	if (flags != adapter->flags) {
 		adapter->flags = flags;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 1b58811f8cfa..8562565842b1 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6698,7 +6698,8 @@ static int igc_tc_query_caps(struct igc_adapter *adapter,
 	case TC_SETUP_QDISC_TAPRIO: {
 		struct tc_taprio_caps *caps = base->caps;
 
-		caps->broken_mqprio = true;
+		if (!(adapter->flags & IGC_FLAG_TSN_REVERSE_TXQ_PRIO))
+			caps->broken_mqprio = true;
 
 		if (hw->mac.type == igc_i225) {
 			caps->supports_queue_max_sdu = true;
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index e1e1c5c89989..5dc05b42f53f 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -394,7 +394,8 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	if (igc_is_device_id_i226(hw))
 		igc_tsn_set_retx_qbvfullthreshold(adapter);
 
-	if (adapter->strict_priority_enable)
+	if (adapter->strict_priority_enable ||
+	    adapter->flags & IGC_FLAG_TSN_REVERSE_TXQ_PRIO)
 		igc_tsn_tx_arb(adapter, true);
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
-- 
2.34.1

