Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53749ABC1F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 17:15:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8345860E58;
	Mon, 19 May 2025 15:15:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kDhicRmi2aMB; Mon, 19 May 2025 15:15:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D66660BE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747667740;
	bh=zNv3CGp/ko6uKyu7FqN8cuLyTkpdgXuyvQjLyFnHC18=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ArAwVlTdNo+qrxQU2mw78mSxRWnlPAJv72ytcweSntYT0n1E/8mehireXnvjV6JDA
	 ZFpEuCkqXaqdXpAOGGYSx/2Sb90Me/yxm9ayY4tdunAj+J09Nw3AuNiKhAwTRbaKdm
	 UdfaJO9BdQaYYaAqijS2evX0sFHhj6nq0xwUpcrnEEPZtME0+nJbxsHbJU+57oLSch
	 T9ayENh/iL8XLyNw0vZGfZVwsUvJDyplBrVukNaptWP1w5BeFaUk95bSgU0859FlDO
	 faiHQLFSdafB6n1DYbQnJ99Bq7Jl1ZVaK5CEMNyb7E4yiLNPkDCNb/Z4Vewpugo7og
	 6JVw6Uej0xX8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D66660BE2;
	Mon, 19 May 2025 15:15:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D6AA7E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C7ED981DE6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MzYRdwLoAj_U for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 07:20:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B710680DF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B710680DF0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B710680DF0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:57 +0000 (UTC)
X-CSE-ConnectionGUID: khz68eOtTj+7yNugjMazxQ==
X-CSE-MsgGUID: tviP5iaPROuDsq3O1B2/qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="72030758"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="72030758"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:20:57 -0700
X-CSE-ConnectionGUID: lWlpJpZURleKFKlse+u7Wg==
X-CSE-MsgGUID: x+u6Fm20T6+nDEVi5mj87A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139798849"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa007.jf.intel.com with ESMTP; 19 May 2025 00:20:54 -0700
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 19 May 2025 03:19:09 -0400
Message-Id: <20250519071911.2748406-6-faizal.abdul.rahim@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 19 May 2025 15:15:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747639258; x=1779175258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6ck3YUiz2YGXoAXpyad54bTmorPPosW/xsbYLVcjNEQ=;
 b=I30jnEqKkqVuFgsL/3BEWyapOdftECkJon5iZo+cVyPgn82OYxJZ/ZV6
 LSx1+q0fQR6CG9x986MAlkm5qHXT3LDidw+mGPChV1yf/QcP5Ly7oq2m3
 F+9nIhrOd0hlb5tzmarbOJ5R3e+z42loQGyDkdQ18gXzFHzcmonCG+5Tk
 jIi4GfLwlGcJrkkIj3XwbV0/EE1olkSP3mJWw3u8bS5jFyBWsBmXdpIme
 VZ3FFhmSylEprNC512SzWY8okZKOAeavmq2MuGRRD7YkWrl984njUtJRX
 cYRBMOzOJlDjF1MBPMlLHqb2tER30lG/ef0a5djWdj5ADB0oHngmfIl/m
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I30jnEqK
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/7] igc: add private flag to
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

From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

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

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 12 ++++++++++--
 drivers/net/ethernet/intel/igc/igc_main.c    |  3 ++-
 drivers/net/ethernet/intel/igc/igc_tsn.c     |  3 ++-
 4 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index daab06fc3f80..023ff8a5b285 100644
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
index 3fc1eded9605..054b7390cb4b 100644
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
index 1033d64fc0e8..c1cb0e666469 100644
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
index 78a4a9cf5f96..43151ab4c1b7 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -398,7 +398,8 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	if (igc_is_device_id_i226(hw))
 		igc_tsn_set_retx_qbvfullthreshold(adapter);
 
-	if (adapter->strict_priority_enable)
+	if (adapter->strict_priority_enable ||
+	    adapter->flags & IGC_FLAG_TSN_REVERSE_TXQ_PRIO)
 		igc_tsn_tx_arb(adapter, true);
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
-- 
2.34.1

