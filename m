Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A12E6B29D90
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 11:23:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C27D241B99;
	Mon, 18 Aug 2025 09:23:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SvRa37CwAhx5; Mon, 18 Aug 2025 09:23:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF5B441C64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755508983;
	bh=c0RWzAPIEJpJ1I3fefcBfV8jE9ltBAtuN5MfbwsGPNw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mtGLTW56x2MagGIT0mPNg5JeJ/EsRYrXQfKLDMUkBuWI59Kpp5xOtclcSbHt8zUSt
	 hd5Mf+FBzxJu7sv37PHt5akUqN36avkI3JyEmKZrnTHYTj+gRSwsf9wbf6rC0a0T2J
	 qTQFqx/ZWwHU145kU6cfXrUDP6F0To3UvF6P5IcE+tdokx510Sr3hA7eBp+kyEzTrO
	 ENaK6eYIBq2QJFCs9H0xAgVEkVwlSjepTNaMap7j6z1f9s68D1S0DEw7o9DpQoIGtQ
	 psh0vDtR6jxUZsojWZn8TH61ssw5Qu/oLHqy01wfWPnax1K6FGsZsIw7idVhRWSWqa
	 NQI4nKknVTCVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF5B441C64;
	Mon, 18 Aug 2025 09:23:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 372B1E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 09:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 293E861B30
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 09:23:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Au_65O6hKvtE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 09:23:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5A25161B26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A25161B26
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A25161B26
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 09:23:00 +0000 (UTC)
X-CSE-ConnectionGUID: 0XBSXMhcQe2v/4EsFESv1A==
X-CSE-MsgGUID: G7pBeFMORq+vLDdS7Gn+5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="75179348"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="75179348"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 02:22:56 -0700
X-CSE-ConnectionGUID: eO7TREEJRgOMmQ2pfaJstQ==
X-CSE-MsgGUID: s5Ux3tzDR1OWQlYH4lQ0gg==
X-ExtLoop1: 1
Received: from host59.igk.intel.com ([10.123.220.59])
 by fmviesa003.fm.intel.com with ESMTP; 18 Aug 2025 02:22:54 -0700
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 18 Aug 2025 07:20:27 -0400
Message-ID: <20250818112027.31222-1-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755508981; x=1787044981;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/LuIP8J01iC3FFoBg+YOO1Bc4xsgg9BJzDuEs645eDk=;
 b=EPuRw6xk9si3adjQNih8a2M8y7AM8nSxwsNbnFOQwGiedt8WkTV3neqh
 t4eRni47eynatZXusVFHawuTm60AQZyzdBpKq0p3XuClnpMBv9teU9FVZ
 /kk1yMTvXH2YWzmA29GTbsTnmonj2g31cm15P1vVUMlZiC3H7C40mc1hr
 jFnZ8k+50QmP/FIFMBCCcnD/Iwm/SKYplchmDDHEwAwWrBkUvm8au6lXx
 ltMK3ojXe7pZr6xl9Ggc6stwJUYu/no/3AZeP252Q2+7Z0imHpkdDToLQ
 mX1eiOju+6ql94HVU3mX7M1Isx7lC8NL+e2oPxz6fcS5w1kR3AGEtrctm
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EPuRw6xk
Subject: [Intel-wired-lan] [PATCH iwl-next] idpf: add HW timestamping
 statistics
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

From: Milena Olech <milena.olech@intel.com>

Add HW timestamping statistics support - through implementing get_ts_stats.
Timestamp statistics include correctly timestamped packets, discarded,
skipped and flushed during PTP release.

Most of the stats are collected per vport, only requests skipped due to
lack of free latch index are collected per Tx queue.

Signed-off-by: Milena Olech <milena.olech@intel.com>
Co-developed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Reviewed-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        | 17 +++++++
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 51 +++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 11 +++-
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  4 ++
 4 files changed, 82 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index f4c0eaf9bde3..5951ede8c7ea 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -256,6 +256,21 @@ enum idpf_vport_flags {
 	IDPF_VPORT_FLAGS_NBITS,
 };
 
+/**
+ * struct idpf_tstamp_stats - Tx timestamp statistics
+ * @stats_sync: See struct u64_stats_sync
+ * @packets: Number of packets successfully timestamped by the hardware
+ * @discarded: Number of Tx skbs discarded due to cached PHC
+ *	       being too old to correctly extend timestamp
+ * @flushed: Number of Tx skbs flushed due to interface closed
+ */
+struct idpf_tstamp_stats {
+	struct u64_stats_sync stats_sync;
+	u64_stats_t packets;
+	u64_stats_t discarded;
+	u64_stats_t flushed;
+};
+
 struct idpf_port_stats {
 	struct u64_stats_sync stats_sync;
 	u64_stats_t rx_hw_csum_err;
@@ -322,6 +337,7 @@ struct idpf_fsteer_fltr {
  * @tx_tstamp_caps: Capabilities negotiated for Tx timestamping
  * @tstamp_config: The Tx tstamp config
  * @tstamp_task: Tx timestamping task
+ * @tstamp_stats: Tx timestamping statistics
  */
 struct idpf_vport {
 	u16 num_txq;
@@ -372,6 +388,7 @@ struct idpf_vport {
 	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
 	struct kernel_hwtstamp_config tstamp_config;
 	struct work_struct tstamp_task;
+	struct idpf_tstamp_stats tstamp_stats;
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 0eb812ac19c2..d56a4157ad5f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -1685,6 +1685,56 @@ static int idpf_get_ts_info(struct net_device *netdev,
 	return err;
 }
 
+/**
+ * idpf_get_ts_stats - Collect HW tstamping statistics
+ * @netdev: network interface device structure
+ * @ts_stats: HW timestamping stats structure
+ *
+ * Collect HW timestamping statistics including successfully timestamped
+ * packets, discarded due to illegal values, flushed during releasing PTP and
+ * skipped due to lack of the free index.
+ */
+static void idpf_get_ts_stats(struct net_device *netdev,
+			      struct ethtool_ts_stats *ts_stats)
+{
+	struct idpf_vport *vport;
+	unsigned int start;
+
+	idpf_vport_ctrl_lock(netdev);
+	vport = idpf_netdev_to_vport(netdev);
+	do {
+		start = u64_stats_fetch_begin(&vport->tstamp_stats.stats_sync);
+		ts_stats->pkts = u64_stats_read(&vport->tstamp_stats.packets);
+		ts_stats->lost = u64_stats_read(&vport->tstamp_stats.flushed);
+		ts_stats->err = u64_stats_read(&vport->tstamp_stats.discarded);
+	} while (u64_stats_fetch_retry(&vport->tstamp_stats.stats_sync, start));
+
+	for (u16 i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
+
+		for (u16 j = 0; j < txq_grp->num_txq; j++) {
+			struct idpf_tx_queue *txq = txq_grp->txqs[j];
+			struct idpf_tx_queue_stats *stats;
+			u64 ts;
+
+			if (!txq)
+				continue;
+
+			stats = &txq->q_stats;
+			do {
+				start = u64_stats_fetch_begin(&txq->stats_sync);
+
+				ts = u64_stats_read(&stats->tstamp_skipped);
+			} while (u64_stats_fetch_retry(&txq->stats_sync,
+						       start));
+
+			ts_stats->lost += ts;
+		}
+	}
+
+	idpf_vport_ctrl_unlock(netdev);
+}
+
 static const struct ethtool_ops idpf_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE,
@@ -1711,6 +1761,7 @@ static const struct ethtool_ops idpf_ethtool_ops = {
 	.set_ringparam		= idpf_set_ringparam,
 	.get_link_ksettings	= idpf_get_link_ksettings,
 	.get_ts_info		= idpf_get_ts_info,
+	.get_ts_stats		= idpf_get_ts_stats,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index ee21f2ff0cad..142823af1f9e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -618,8 +618,13 @@ u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp)
 
 	discard_time = ptp->cached_phc_jiffies + 2 * HZ;
 
-	if (time_is_before_jiffies(discard_time))
+	if (time_is_before_jiffies(discard_time)) {
+		u64_stats_update_begin(&vport->tstamp_stats.stats_sync);
+		u64_stats_inc(&vport->tstamp_stats.discarded);
+		u64_stats_update_end(&vport->tstamp_stats.stats_sync);
+
 		return 0;
+	}
 
 	return idpf_ptp_tstamp_extend_32b_to_64b(ptp->cached_phc_time,
 						 lower_32_bits(in_tstamp));
@@ -853,10 +858,14 @@ static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
 
 	/* Remove list with latches in use */
 	head = &vport->tx_tstamp_caps->latches_in_use;
+	u64_stats_update_begin(&vport->tstamp_stats.stats_sync);
 	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
+		u64_stats_inc(&vport->tstamp_stats.flushed);
+
 		list_del(&ptp_tx_tstamp->list_member);
 		kfree(ptp_tx_tstamp);
 	}
+	u64_stats_update_end(&vport->tstamp_stats.stats_sync);
 
 	spin_unlock_bh(&vport->tx_tstamp_caps->latches_lock);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index 4f1fb0cefe51..8a2e0f8c5e36 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -521,6 +521,10 @@ idpf_ptp_get_tstamp_value(struct idpf_vport *vport,
 	list_add(&ptp_tx_tstamp->list_member,
 		 &tx_tstamp_caps->latches_free);
 
+	u64_stats_update_begin(&vport->tstamp_stats.stats_sync);
+	u64_stats_inc(&vport->tstamp_stats.packets);
+	u64_stats_update_end(&vport->tstamp_stats.stats_sync);
+
 	return 0;
 }
 

base-commit: 94f1d1440652b6145cbaa026f376ae4e7fb95843
-- 
2.42.0

