Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDAAA2C979
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 17:58:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15EFA41747;
	Fri,  7 Feb 2025 16:58:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wDqegdw9mtax; Fri,  7 Feb 2025 16:58:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE198408C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738947483;
	bh=mGicEKN3UNt2QuxNXVuecrwmLA8dQtnX5VOxV2qaaKQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Gz1k0FuT0Lh8scLVqYC8rL+f1f5flj9bTwd0qYy9vrMXwt2OrAy84pHC/DfTULWMc
	 k0KUo364V0caL4b0+YNZJLkI+ZxK7Ai7h4kakhsia45Gm2e7YKj9HDe1bW7R/jE9q3
	 WylkhzvEZXUTAHtnJzi/7mpPA6bPjoggkEts3tGLhcrvSzkSCKkqUNQS+1OizRMzSS
	 /CM82Rf/WVR8zbhBDerpdO1ugSjl8WKVKBcqYRKB0hzRFZRPK61rNvX9e/HPBXntdU
	 o0IzKbSIUS9Ql9AeoijaOZEjYuwQtN2NU/S4viU8EYa62aqk9iML85gN3VrfM/Dv0B
	 duKzH/SfcMvjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE198408C8;
	Fri,  7 Feb 2025 16:58:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 46F2FE4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 16:58:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 427C2419E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 16:58:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3vdv4Cgt1vOM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 16:58:01 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1CB1C4172A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CB1C4172A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CB1C4172A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 16:58:01 +0000 (UTC)
X-CSE-ConnectionGUID: E07Fs/ScSfm9PQma516/aA==
X-CSE-MsgGUID: gJ2v/bvuRDaQ5LEAsh43KA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39723037"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="39723037"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 08:58:00 -0800
X-CSE-ConnectionGUID: +FrWn++mT/2brjcg/+IjPg==
X-CSE-MsgGUID: g7LdY6GIRRGue3yOCxr/Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="111534632"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa006.jf.intel.com with ESMTP; 07 Feb 2025 08:57:52 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Fri,  7 Feb 2025 11:56:47 -0500
Message-Id: <20250207165649.2245320-8-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250207165649.2245320-1-faizal.abdul.rahim@linux.intel.com>
References: <20250207165649.2245320-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738947482; x=1770483482;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/PyPrmfm+NI2NSJWptGfLBq2pbHuE/FgdlMpKaEXpLM=;
 b=Zrp6lOcvf7Be5fgc4LmK9pVwl/VMIlTuPlXeaiS3j1dfOadlnwX3z6NY
 ShfekJ+11Py6e+euTFVKbDAbySSr7pl9WY1w/uLux8Q8wJxLv/LZBKTbJ
 lyNmV+yYPNCZOI/jZHboCluD/5IZu3U9a90KRVBIWpv2KdXkICiMpdZ/b
 lHGT5ZjmRVrDp7EBCzOklJU3JVNIIPinWUC5Km9S/INK7OB62/Uc0MEJL
 e6BG86y6bVogvfcgsMJyMJTJRH36OMlUboHAy5I7Wk7LXiGDq3fr0uJns
 SsdWh/TejLpW28MuJr4GDfZ67MQPM+3N8zMM4kcon+BNzhbXYlRFNc80D
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zrp6lOcv
Subject: [Intel-wired-lan] [PATCH iwl-next v3 7/9] igc: Add support for
 preemptible traffic class in taprio
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

Set queue as preemptible or express via taprio.
This will eventually set queue-specific preemptible field in TXQCTL
register.

Implement configure_tx(), a callback triggered by mmsv, to set tx_enabled
and update preemptible queue settings. tx_enabled is a new field that
serves as a condition in igc_tsn_enable_offload() before configuring the
preemptible queue. This provides some control over FPE in TX, despite
lacking a dedicated register.

Verified that the correct preemptible hardware queue is set using the
following commands:

a) 1:1 TC-to-Queue Mapping
   $ sudo tc qdisc replace dev enp1s0 parent root handle 100 \
     taprio num_tc 4 map 3 2 1 0 3 3 3 3 3 3 3 3 3 3 3 3 \
     queues 1@0 1@1 1@2 1@3 base-time 0 sched-entry S F 100000 \
     fp E E P P

b) Non-1:1 TC-to-Queue Mapping
   $ sudo tc qdisc replace  dev enp1s0 parent root handle 100 \
     taprio num_tc 3 map 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 2
     queues 2@0 1@2 1@3
     fp E E P

Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  3 +-
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 36 ++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 17 +++++++++
 4 files changed, 56 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 2f3662143589..59e6fca808e4 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -43,6 +43,7 @@ void igc_ethtool_set_ops(struct net_device *);
 struct fpe_t {
 	struct ethtool_mmsv mmsv;
 	u32 tx_min_frag_size;
+	bool tx_enabled;
 };
 
 enum igc_mac_filter_type {
@@ -163,7 +164,7 @@ struct igc_ring {
 	bool launchtime_enable;         /* true if LaunchTime is enabled */
 	ktime_t last_tx_cycle;          /* end of the cycle with a launchtime transmission */
 	ktime_t last_ff_cycle;          /* Last cycle with an active first flag */
-
+	bool preemptible;               /* True if not express */
 	u32 start_time;
 	u32 end_time;
 	u32 max_sdu;
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 038ee89f1e08..208899e67308 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -556,6 +556,7 @@
 #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
 #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
 #define IGC_TXQCTL_STRICT_END		0x00000004
+#define IGC_TXQCTL_PREEMPTIBLE		0x00000008
 #define IGC_TXQCTL_QAV_SEL_MASK		0x000000C0
 #define IGC_TXQCTL_QAV_SEL_CBS0		0x00000080
 #define IGC_TXQCTL_QAV_SEL_CBS1		0x000000C0
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7fe6875d7bf7..f15ac7565fbd 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6258,6 +6258,39 @@ static bool is_base_time_past(ktime_t base_time, const struct timespec64 *now)
 	return timespec64_compare(now, &b) > 0;
 }
 
+static u32 igc_map_tc_to_queue(const struct igc_adapter *adapter,
+			       unsigned long preemptible_tcs)
+{
+	struct net_device *dev = adapter->netdev;
+	u32 i, queue = 0;
+
+	for (i = 0; i < dev->num_tc; i++) {
+		u32 offset, count;
+
+		if (!(preemptible_tcs & BIT(i)))
+			continue;
+
+		offset = dev->tc_to_txq[i].offset;
+		count = dev->tc_to_txq[i].count;
+		queue |= GENMASK(offset + count - 1, offset);
+	}
+
+	return queue;
+}
+
+static void igc_save_preempt_queue(struct igc_adapter *adapter,
+				   const struct tc_mqprio_qopt_offload *mqprio)
+{
+	u32 preemptible_queue = igc_map_tc_to_queue(adapter,
+						    mqprio->preemptible_tcs);
+
+	for (int i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *tx_ring = adapter->tx_ring[i];
+
+		tx_ring->preemptible = preemptible_queue & BIT(i);
+	}
+}
+
 static bool validate_schedule(struct igc_adapter *adapter,
 			      const struct tc_taprio_qopt_offload *qopt)
 {
@@ -6344,6 +6377,7 @@ static int igc_qbv_clear_schedule(struct igc_adapter *adapter)
 		ring->start_time = 0;
 		ring->end_time = NSEC_PER_SEC;
 		ring->max_sdu = 0;
+		ring->preemptible = false;
 	}
 
 	spin_lock_irqsave(&adapter->qbv_tx_lock, flags);
@@ -6500,6 +6534,8 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 			ring->max_sdu = 0;
 	}
 
+	igc_save_preempt_queue(adapter, &qopt->mqprio);
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index d9de2cfb0c17..95193a7e8768 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -122,6 +122,18 @@ static int igc_fpe_xmit_smd_frame(struct igc_adapter *adapter,
 	return err;
 }
 
+static void igc_fpe_configure_tx(struct ethtool_mmsv *mmsv, bool tx_enable)
+{
+	struct fpe_t *fpe = container_of(mmsv, struct fpe_t, mmsv);
+	struct igc_adapter *adapter;
+
+	adapter = container_of(fpe, struct igc_adapter, fpe);
+	adapter->fpe.tx_enabled = tx_enable;
+
+	/* Update config since tx_enabled affects preemptible queue configuration */
+	igc_tsn_offload_apply(adapter);
+}
+
 static void igc_fpe_send_mpacket(struct ethtool_mmsv *mmsv,
 				 enum ethtool_mpacket type)
 {
@@ -143,12 +155,14 @@ static void igc_fpe_send_mpacket(struct ethtool_mmsv *mmsv,
 }
 
 static const struct ethtool_mmsv_ops igc_mmsv_ops = {
+	.configure_tx = igc_fpe_configure_tx,
 	.send_mpacket = igc_fpe_send_mpacket,
 };
 
 void igc_fpe_init(struct igc_adapter *adapter)
 {
 	adapter->fpe.tx_min_frag_size = TX_MIN_FRAG_SIZE;
+	adapter->fpe.tx_enabled = false;
 	ethtool_mmsv_init(&adapter->fpe.mmsv, adapter->netdev, &igc_mmsv_ops);
 }
 
@@ -456,6 +470,9 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		if (ring->launchtime_enable)
 			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
 
+		if (adapter->fpe.tx_enabled && ring->preemptible)
+			txqctl |= IGC_TXQCTL_PREEMPTIBLE;
+
 		/* Skip configuring CBS for Q2 and Q3 */
 		if (i > 1)
 			goto skip_cbs;
-- 
2.34.1

