Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4128E9F78D5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2024 10:48:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4A4D614AE;
	Thu, 19 Dec 2024 09:48:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UJYhzPIlBQe7; Thu, 19 Dec 2024 09:48:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53C2F612E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734601704;
	bh=SHEmAzmTNVdmgcdhsnJOa7sO8FhPZdvFRe4L5OQFWJI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rJsVmTCsU2PDWH6kJnroU8tRR9syz7qqBBp2lhEnhOhNF7UvXvJ00s+ZmIQkBJcSQ
	 /fJsAPVSzp5pdjGn2qBi1ymZCvBxKI5xcaJZ6F+bRJ3VKDPwaPXd5cuw4PEpjcAYVJ
	 mFSi+8bssiltix9s1C9Unn/DGP63/ErkpOGu2SLfUaIR/8+9bqrwxCgT1G3Ah5XvWu
	 2AlEZYWpteTEkdlZIymXXJ5H4miA6j5KZCKgkkaJ4y5v61DDTNdDPiuIYwKypNxugL
	 ylgfxh09scweNrE20LfDRT0KzWzq0NKRheuumf0WOySLii0vBA+aeC2brju+JZdhnk
	 qdCF9vGI6u9gA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53C2F612E3;
	Thu, 19 Dec 2024 09:48:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D77E1E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:48:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF08C4145A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:48:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eTJgWzGLeYct for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Dec 2024 09:48:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 19A9E41455
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19A9E41455
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19A9E41455
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:48:20 +0000 (UTC)
X-CSE-ConnectionGUID: JgeYQDQqTIaOVROF6SkA/g==
X-CSE-MsgGUID: f3qBZdv4SaCKRQ6srDzZTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="45702705"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="45702705"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 01:48:20 -0800
X-CSE-ConnectionGUID: bMLUTfomTx+bph0M3D6N/w==
X-CSE-MsgGUID: bW3sFBF5QDCyWU/MTwodjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98207220"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa006.jf.intel.com with ESMTP; 19 Dec 2024 01:48:17 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Josh Hay <joshua.a.hay@intel.com>
Date: Thu, 19 Dec 2024 10:44:18 +0100
Message-Id: <20241219094411.110082-9-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20241219094411.110082-1-milena.olech@intel.com>
References: <20241219094411.110082-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734601700; x=1766137700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aVskCYTNw/5q7MlJo5HR8OtsWMKT49zaINCSSApX+CQ=;
 b=eVs+uY1p3gl6AWWvzKnicRkpSgeQAnP5R1OUYWGTHcBW9mLrFCE4Mf28
 qcjTaesfBhAEMVl+i4IDLZ04KTIkCB0YxIMGNKA3Od/8MR7myQjt38jgG
 BEvHVPJMaAvOkEAwe3bPp3c9CbIB6/JYkk+R811NBsBYacxLS1G8fldvQ
 GYfjXjJJhvhT/mtQSfOov7RJ8P3SmMd0EZHyOg3n1fed85ymrBDGcawLQ
 XkxgQeEhWnYzsRTOXaEJeABDkoD38ArFx1kVzAGy+1bgFpE1wWkmHlG+d
 BXeaiMAcdTWWuupULJSIOlOK9z6rH8wfLtBxcLAasFIgArzIiJvF8UztL
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eVs+uY1p
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 08/10] idpf: add Tx timestamp
 flows
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

Add functions to request Tx timestamp for the PTP packets, read the Tx
timestamp when the completion tag for that packet is being received,
extend the Tx timestamp value and set the supported timestamping modes.

Tx timestamp is requested for the PTP packets by setting a TSYN bit and
index value in the Tx context descriptor. The driver assumption is that
the Tx timestamp value is ready to be read when the completion tag is
received. Then the driver schedules delayed work and the Tx timestamp
value read is requested through virtchnl message. At the end, the Tx
timestamp value is extended to 64-bit and provided back to the skb.

Co-developed-by: Josh Hay <joshua.a.hay@intel.com>
Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
---
v2 -> v3: change get_timestamp_filter function name, split stats
into vport-based and tx queue-based
v1 -> v2: add timestamping stats, use ndo_hwtamp_get/ndo_hwstamp_set

 drivers/net/ethernet/intel/idpf/idpf.h        |  20 ++
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  69 ++++-
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  13 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  47 ++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 236 +++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  52 ++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 139 ++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  11 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |   6 +-
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 235 +++++++++++++++++
 10 files changed, 814 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 90cadbcaabbc..7e6c45681875 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -246,9 +246,23 @@ struct idpf_port_stats {
 	u64_stats_t tx_busy;
 	u64_stats_t tx_drops;
 	u64_stats_t tx_dma_map_errs;
+	u64_stats_t tx_hwtstamp_skipped;
 	struct virtchnl2_vport_stats vport_stats;
 };
 
+/**
+ * struct idpf_tx_tstamp_stats - Tx timestamp statistics
+ * @tx_hwtstamp_lock: Lock to protect Tx tstamp stats
+ * @tx_hwtstamp_discarded: Number of Tx skbs discarded due to cached PHC time
+ *			   being too old to correctly extend timestamp
+ * @tx_hwtstamp_flushed: Number of Tx skbs flushed due to interface closed
+ */
+struct idpf_tx_tstamp_stats {
+	struct mutex tx_hwtstamp_lock;
+	u32 tx_hwtstamp_discarded;
+	u32 tx_hwtstamp_flushed;
+};
+
 /**
  * struct idpf_vport - Handle for netdevices and queue resources
  * @num_txq: Number of allocated TX queues
@@ -293,6 +307,9 @@ struct idpf_port_stats {
  * @link_up: True if link is up
  * @sw_marker_wq: workqueue for marker packets
  * @tx_tstamp_caps: Capabilities negotiated for Tx timestamping
+ * @tstamp_config: The Tx tstamp config
+ * @tstamp_task: Tx timestamping task
+ * @tstamp_stats: Tx timestamping statistics
  */
 struct idpf_vport {
 	u16 num_txq;
@@ -339,6 +356,9 @@ struct idpf_vport {
 	wait_queue_head_t sw_marker_wq;
 
 	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
+	struct kernel_hwtstamp_config tstamp_config;
+	struct work_struct tstamp_task;
+	struct idpf_tx_tstamp_stats tstamp_stats;
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index b3ed1d9a80ae..f411e164b9db 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2023 Intel Corporation */
 
 #include "idpf.h"
+#include "idpf_ptp.h"
 
 /**
  * idpf_get_rxnfc - command to get RX flow classification rules
@@ -480,6 +481,9 @@ static const struct idpf_stats idpf_gstrings_port_stats[] = {
 	IDPF_PORT_STAT("tx-unicast_pkts", port_stats.vport_stats.tx_unicast),
 	IDPF_PORT_STAT("tx-multicast_pkts", port_stats.vport_stats.tx_multicast),
 	IDPF_PORT_STAT("tx-broadcast_pkts", port_stats.vport_stats.tx_broadcast),
+	IDPF_PORT_STAT("tx-hwtstamp_skipped", port_stats.tx_hwtstamp_skipped),
+	IDPF_PORT_STAT("tx-hwtstamp_flushed", tstamp_stats.tx_hwtstamp_flushed),
+	IDPF_PORT_STAT("tx-hwtstamp_discarded", tstamp_stats.tx_hwtstamp_discarded),
 };
 
 #define IDPF_PORT_STATS_LEN ARRAY_SIZE(idpf_gstrings_port_stats)
@@ -781,6 +785,7 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 	u64_stats_set(&pstats->tx_busy, 0);
 	u64_stats_set(&pstats->tx_drops, 0);
 	u64_stats_set(&pstats->tx_dma_map_errs, 0);
+	u64_stats_set(&pstats->tx_hwtstamp_skipped, 0);
 	u64_stats_update_end(&pstats->stats_sync);
 
 	for (i = 0; i < vport->num_rxq_grp; i++) {
@@ -829,7 +834,7 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
 
 		for (j = 0; j < txq_grp->num_txq; j++) {
-			u64 linearize, qbusy, skb_drops, dma_map_errs;
+			u64 linearize, qbusy, skb_drops, dma_map_errs, tstamp;
 			struct idpf_tx_queue *txq = txq_grp->txqs[j];
 			struct idpf_tx_queue_stats *stats;
 			unsigned int start;
@@ -845,6 +850,7 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 				qbusy = u64_stats_read(&stats->q_busy);
 				skb_drops = u64_stats_read(&stats->skb_drops);
 				dma_map_errs = u64_stats_read(&stats->dma_map_errs);
+				tstamp = u64_stats_read(&stats->tstamp_skipped);
 			} while (u64_stats_fetch_retry(&txq->stats_sync, start));
 
 			u64_stats_update_begin(&pstats->stats_sync);
@@ -852,6 +858,7 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 			u64_stats_add(&pstats->tx_busy, qbusy);
 			u64_stats_add(&pstats->tx_drops, skb_drops);
 			u64_stats_add(&pstats->tx_dma_map_errs, dma_map_errs);
+			u64_stats_add(&pstats->tx_hwtstamp_skipped, tstamp);
 			u64_stats_update_end(&pstats->stats_sync);
 		}
 	}
@@ -1317,6 +1324,65 @@ static int idpf_get_link_ksettings(struct net_device *netdev,
 	return 0;
 }
 
+/**
+ * idpf_get_timestamp_filters - Get the supported timestamping mode
+ * @vport: Virtual port structure
+ * @info: ethtool timestamping info structure
+ *
+ * Get the Tx/Rx timestamp filters.
+ */
+static void idpf_get_timestamp_filters(const struct idpf_vport *vport,
+				       struct kernel_ethtool_ts_info *info)
+{
+	if (!vport->tx_tstamp_caps ||
+	    vport->adapter->ptp->tx_tstamp_access == IDPF_PTP_NONE)
+		return;
+
+	info->so_timestamping = SOF_TIMESTAMPING_TX_SOFTWARE |
+				SOF_TIMESTAMPING_TX_HARDWARE |
+				SOF_TIMESTAMPING_RX_HARDWARE |
+				SOF_TIMESTAMPING_RAW_HARDWARE;
+
+	info->tx_types = BIT(HWTSTAMP_TX_OFF) | BIT(HWTSTAMP_TX_ON);
+}
+
+/**
+ * idpf_get_ts_info - Get device PHC association
+ * @netdev: network interface device structure
+ * @info: ethtool timestamping info structure
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int idpf_get_ts_info(struct net_device *netdev,
+			    struct kernel_ethtool_ts_info *info)
+{
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
+	struct idpf_vport *vport;
+	int err = 0;
+
+	idpf_vport_cfg_lock(adapter);
+	vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport->adapter->ptp) {
+		err = -EOPNOTSUPP;
+		goto unlock;
+	}
+
+	if (idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_PTP) &&
+	    vport->adapter->ptp->clock) {
+		info->phc_index = ptp_clock_index(vport->adapter->ptp->clock);
+		idpf_get_timestamp_filters(vport, info);
+	} else {
+		pci_dbg(vport->adapter->pdev, "PTP clock not detected\n");
+		err = ethtool_op_get_ts_info(netdev, info);
+	}
+
+unlock:
+	idpf_vport_cfg_unlock(adapter);
+
+	return err;
+}
+
 static const struct ethtool_ops idpf_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE,
@@ -1341,6 +1407,7 @@ static const struct ethtool_ops idpf_ethtool_ops = {
 	.get_ringparam		= idpf_get_ringparam,
 	.set_ringparam		= idpf_set_ringparam,
 	.get_link_ksettings	= idpf_get_link_ksettings,
+	.get_ts_info		= idpf_get_ts_info,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
index 8c7f8ef8f1a1..7492d1713243 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
@@ -282,7 +282,18 @@ struct idpf_flex_tx_tso_ctx_qw {
 	u8 flex;
 };
 
-struct idpf_flex_tx_ctx_desc {
+union idpf_flex_tx_ctx_desc {
+	/* DTYPE = IDPF_TX_DESC_DTYPE_CTX (0x01) */
+	struct {
+		__le64 qw0;
+#define IDPF_TX_CTX_L2TAG2_M	GENMASK_ULL(47, 32)
+		__le64 qw1;
+#define IDPF_TX_CTX_DTYPE_M	GENMASK_ULL(3, 0)
+#define IDPF_TX_CTX_CMD_M	GENMASK_ULL(15, 4)
+#define IDPF_TX_CTX_TSYN_REG_M	GENMASK_ULL(47, 30)
+#define IDPF_TX_CTX_MSS_M	GENMASK_ULL(50, 63)
+	} tsyn;
+
 	/* DTYPE = IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX (0x05) */
 	struct {
 		struct idpf_flex_tx_tso_ctx_qw qw0;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 931d0f988c95..8c755ba113ea 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -3,6 +3,7 @@
 
 #include "idpf.h"
 #include "idpf_virtchnl.h"
+#include "idpf_ptp.h"
 
 static const struct net_device_ops idpf_netdev_ops;
 
@@ -2371,6 +2372,50 @@ void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem)
 	mem->pa = 0;
 }
 
+static int idpf_hwtstamp_set(struct net_device *netdev,
+			     struct kernel_hwtstamp_config *config,
+			     struct netlink_ext_ack *extack)
+{
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
+	struct idpf_vport *vport;
+	int err;
+
+	idpf_vport_cfg_lock(adapter);
+	vport = idpf_netdev_to_vport(netdev);
+
+	if (!idpf_ptp_get_vport_tstamp_capability(vport)) {
+		idpf_vport_cfg_unlock(adapter);
+		return -EOPNOTSUPP;
+	}
+
+	err = idpf_ptp_set_timestamp_mode(vport, config);
+
+	idpf_vport_cfg_unlock(adapter);
+
+	return err;
+}
+
+static int idpf_hwtstamp_get(struct net_device *netdev,
+			     struct kernel_hwtstamp_config *config)
+{
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
+	struct idpf_vport *vport;
+
+	idpf_vport_cfg_lock(adapter);
+	vport = idpf_netdev_to_vport(netdev);
+
+	if (!idpf_ptp_get_vport_tstamp_capability(vport)) {
+		idpf_vport_cfg_unlock(adapter);
+		return -EOPNOTSUPP;
+	}
+
+	*config = vport->tstamp_config;
+
+	idpf_vport_cfg_unlock(adapter);
+
+	return 0;
+}
+
 static const struct net_device_ops idpf_netdev_ops = {
 	.ndo_open = idpf_open,
 	.ndo_stop = idpf_stop,
@@ -2383,4 +2428,6 @@ static const struct net_device_ops idpf_netdev_ops = {
 	.ndo_get_stats64 = idpf_get_stats64,
 	.ndo_set_features = idpf_set_features,
 	.ndo_tx_timeout = idpf_tx_timeout,
+	.ndo_hwtstamp_get = idpf_hwtstamp_get,
+	.ndo_hwtstamp_set = idpf_hwtstamp_set,
 };
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index 04e2b3b258f6..56920db8bec9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -317,6 +317,37 @@ static int idpf_ptp_gettimex64(struct ptp_clock_info *info,
 	return 0;
 }
 
+/**
+ * idpf_ptp_update_cached_phctime - Update the cached PHC time values
+ * @adapter: Driver specific private structure
+ *
+ * This function updates the system time values which are cached in the adapter
+ * structure.
+ *
+ * This function must be called periodically to ensure that the cached value
+ * is never more than 2 seconds old.
+ *
+ * Return 0 on success, negative otherwise.
+ */
+static int idpf_ptp_update_cached_phctime(struct idpf_adapter *adapter)
+{
+	u64 systime;
+	int err;
+
+	err = idpf_ptp_read_src_clk_reg(adapter, &systime, NULL);
+	if (err)
+		return -EACCES;
+
+	/* Update the cached PHC time stored in the adapter structure.
+	 * These values are used to extend Tx timestamp values to 64 bit
+	 * expected by the stack.
+	 */
+	WRITE_ONCE(adapter->ptp->cached_phc_time, systime);
+	WRITE_ONCE(adapter->ptp->cached_phc_jiffies, jiffies);
+
+	return 0;
+}
+
 /**
  * idpf_ptp_settime64 - Set the time of the clock
  * @info: the driver's PTP info structure
@@ -347,6 +378,11 @@ static int idpf_ptp_settime64(struct ptp_clock_info *info,
 		return err;
 	}
 
+	err = idpf_ptp_update_cached_phctime(adapter);
+	if (err)
+		pci_warn(adapter->pdev,
+			 "Unable to immediately update cached PHC time\n");
+
 	return 0;
 }
 
@@ -402,6 +438,11 @@ static int idpf_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 		return err;
 	}
 
+	err = idpf_ptp_update_cached_phctime(adapter);
+	if (err)
+		pci_warn(adapter->pdev,
+			 "Unable to immediately update cached PHC time\n");
+
 	return 0;
 }
 
@@ -465,6 +506,162 @@ static int idpf_ptp_gpio_enable(struct ptp_clock_info *info,
 	return -EOPNOTSUPP;
 }
 
+/**
+ * idpf_ptp_tstamp_extend_32b_to_64b - Convert a 32b nanoseconds Tx timestamp
+ *				       to 64b.
+ * @cached_phc_time: recently cached copy of PHC time
+ * @in_timestamp: Ingress/egress 32b nanoseconds timestamp value
+ *
+ * Hardware captures timestamps which contain only 32 bits of nominal
+ * nanoseconds, as opposed to the 64bit timestamps that the stack expects.
+ *
+ * Return: Tx timestamp value extended to 64 bits based on cached PHC time.
+ */
+u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_timestamp)
+{
+	u32 delta, phc_lo;
+	u64 ns;
+
+	phc_lo = lower_32_bits(cached_phc_time);
+	delta = in_timestamp - phc_lo;
+
+	if (delta > S32_MAX) {
+		delta = phc_lo - in_timestamp;
+		ns = cached_phc_time - delta;
+	} else {
+		ns = cached_phc_time + delta;
+	}
+
+	return ns;
+}
+
+/**
+ * idpf_ptp_extend_ts - Convert a 40b timestamp to 64b nanoseconds
+ * @vport: Virtual port structure
+ * @in_tstamp: Ingress/egress timestamp value
+ *
+ * It is assumed that the caller verifies the timestamp is valid prior to
+ * calling this function.
+ *
+ * Extract the 32bit nominal nanoseconds and extend them. Use the cached PHC
+ * time stored in the device private PTP structure as the basis for timestamp
+ * extension.
+ *
+ * Return: Tx timestamp value extended to 64 bits.
+ */
+u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp)
+{
+	struct idpf_ptp *ptp = vport->adapter->ptp;
+	unsigned long discard_time;
+
+	discard_time = ptp->cached_phc_jiffies + 2 * HZ;
+
+	if (time_is_before_jiffies(discard_time)) {
+		mutex_lock(&vport->tstamp_stats.tx_hwtstamp_lock);
+		vport->tstamp_stats.tx_hwtstamp_discarded++;
+		mutex_unlock(&vport->tstamp_stats.tx_hwtstamp_lock);
+
+		return 0;
+	}
+
+	return idpf_ptp_tstamp_extend_32b_to_64b(ptp->cached_phc_time,
+						 lower_32_bits(in_tstamp));
+}
+
+/**
+ * idpf_ptp_request_ts - Request an available Tx timestamp index
+ * @tx_q: Transmit queue on which the Tx timestamp is requested
+ * @skb: The SKB to associate with this timestamp request
+ * @idx: Index of the Tx timestamp latch
+ *
+ * Request tx timestamp index negotiated during PTP init that will be set into
+ * Tx descriptor.
+ *
+ * Return: 0 and the index that can be provided to Tx descriptor on success,
+ * -errno otherwise.
+ */
+int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
+			u32 *idx)
+{
+	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
+	struct list_head *head;
+
+	head = &tx_q->cached_tstamp_caps->latches_free;
+	if (list_empty(head))
+		return -ENOBUFS;
+
+	/* Get the index from the free latches list */
+	spin_lock_bh(&tx_q->cached_tstamp_caps->lock_free);
+	ptp_tx_tstamp = list_first_entry(head, struct idpf_ptp_tx_tstamp,
+					 list_member);
+	list_del(&ptp_tx_tstamp->list_member);
+	spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_free);
+
+	ptp_tx_tstamp->skb = skb_get(skb);
+	skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
+
+	/* Move the element to the used latches list */
+	spin_lock_bh(&tx_q->cached_tstamp_caps->lock_in_use);
+	list_add(&ptp_tx_tstamp->list_member,
+		 &tx_q->cached_tstamp_caps->latches_in_use);
+	spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_in_use);
+
+	*idx = ptp_tx_tstamp->idx;
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_set_timestamp_mode - Setup driver for requested timestamp mode
+ * @vport: Virtual port structure
+ * @config: Hwtstamp settings requested or saved
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
+				struct kernel_hwtstamp_config *config)
+{
+	switch (config->tx_type) {
+	case HWTSTAMP_TX_OFF:
+	case HWTSTAMP_TX_ON:
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	vport->tstamp_config.tx_type = config->tx_type;
+
+	return 0;
+}
+
+/**
+ * idpf_tstamp_task - Delayed task to handle Tx tstamps
+ * @work: work_struct handle
+ */
+void idpf_tstamp_task(struct work_struct *work)
+{
+	struct idpf_vport *vport;
+
+	vport = container_of(work, struct idpf_vport, tstamp_task);
+
+	idpf_ptp_get_tx_tstamp(vport);
+}
+
+/**
+ * idpf_ptp_do_aux_work - Do PTP periodic work
+ * @info: Driver's PTP info structure
+ *
+ * Return: Number of jiffies to periodic work.
+ */
+static long idpf_ptp_do_aux_work(struct ptp_clock_info *info)
+{
+	struct idpf_adapter *adapter = idpf_ptp_info_to_adapter(info);
+
+	idpf_ptp_update_cached_phctime(adapter);
+
+	return msecs_to_jiffies(500);
+}
+
 /**
  * idpf_ptp_set_caps - Set PTP capabilities
  * @adapter: Driver specific private structure
@@ -486,6 +683,7 @@ static void idpf_ptp_set_caps(const struct idpf_adapter *adapter)
 	info->adjtime = idpf_ptp_adjtime;
 	info->verify = idpf_ptp_verify_pin;
 	info->enable = idpf_ptp_gpio_enable;
+	info->do_aux_work = idpf_ptp_do_aux_work;
 
 #if IS_ENABLED(CONFIG_ARM_ARCH_TIMER)
 	info->getcrosststamp = idpf_ptp_get_crosststamp;
@@ -540,6 +738,8 @@ static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
 	if (!idpf_ptp_get_vport_tstamp_capability(vport))
 		return;
 
+	cancel_work_sync(&vport->tstamp_task);
+
 	/* Remove list with free latches */
 	spin_lock(&vport->tx_tstamp_caps->lock_free);
 
@@ -552,16 +752,21 @@ static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
 	spin_unlock(&vport->tx_tstamp_caps->lock_free);
 
 	/* Remove list with latches in use */
+	mutex_lock(&vport->tstamp_stats.tx_hwtstamp_lock);
 	spin_lock(&vport->tx_tstamp_caps->lock_in_use);
 
 	head = &vport->tx_tstamp_caps->latches_in_use;
 	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
+		vport->tstamp_stats.tx_hwtstamp_flushed++;
 		list_del(&ptp_tx_tstamp->list_member);
 		kfree(ptp_tx_tstamp);
 	}
 
 	spin_unlock(&vport->tx_tstamp_caps->lock_in_use);
 
+	mutex_unlock(&vport->tstamp_stats.tx_hwtstamp_lock);
+	mutex_destroy(&vport->tstamp_stats.tx_hwtstamp_lock);
+
 	kfree(vport->tx_tstamp_caps);
 	vport->tx_tstamp_caps = NULL;
 }
@@ -578,6 +783,27 @@ static void idpf_ptp_release_tstamp(struct idpf_adapter *adapter)
 		idpf_ptp_release_vport_tstamp(vport);
 }
 
+/**
+ * idpf_ptp_get_txq_tstamp_capability - Verify the timestamping capability
+ *					for a given tx queue.
+ * @txq: Transmit queue
+ *
+ * Since performing timestamp flows requires reading the device clock value and
+ * the support in the Control Plane, the function checks both factors and
+ * summarizes the support for the timestamping.
+ *
+ * Return: true if the timestamping is supported, false otherwise.
+ */
+bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq)
+{
+	if (!txq || !txq->cached_tstamp_caps)
+		return false;
+	else if (txq->cached_tstamp_caps->access)
+		return true;
+	else
+		return false;
+}
+
 /**
  * idpf_ptp_init - Initialize PTP hardware clock support
  * @adapter: Driver specific private structure
@@ -618,6 +844,8 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
 	if (err)
 		goto free_ptp;
 
+	ptp_schedule_worker(adapter->ptp->clock, 0);
+
 	/* Write the default increment time value if the clock adjustments
 	 * are enabled.
 	 */
@@ -641,6 +869,7 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
 	return 0;
 
 remove_clock:
+	ptp_cancel_worker_sync(adapter->ptp->clock);
 	ptp_clock_unregister(adapter->ptp->clock);
 	adapter->ptp->clock = NULL;
 
@@ -662,11 +891,14 @@ void idpf_ptp_release(struct idpf_adapter *adapter)
 	if (!ptp)
 		return;
 
-	if (ptp->tx_tstamp_access != IDPF_PTP_NONE)
+	if (ptp->tx_tstamp_access != IDPF_PTP_NONE &&
+	    ptp->get_dev_clk_time_access != IDPF_PTP_NONE)
 		idpf_ptp_release_tstamp(adapter);
 
-	if (ptp->clock)
+	if (ptp->clock) {
+		ptp_cancel_worker_sync(adapter->ptp->clock);
 		ptp_clock_unregister(ptp->clock);
+	}
 
 	kfree(ptp);
 	adapter->ptp = NULL;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index 642e875a5798..55e61cf5ddb0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -131,6 +131,7 @@ struct idpf_ptp_tx_tstamp {
  * @lock_in_use: the lock to the used latches list
  * @lock_free: the lock to free the latches list
  * @lock_status: the lock to the status tracker
+ * @access: indicates an access to Tx timestamp
  * @latches_free: the list of the free Tx timestamps latches
  * @latches_in_use: the list of the used Tx timestamps latches
  * @tx_tstamp_status: Tx tstamp status tracker
@@ -142,6 +143,7 @@ struct idpf_ptp_vport_tx_tstamp_caps {
 	spinlock_t lock_in_use;
 	spinlock_t lock_free;
 	spinlock_t lock_status;
+	bool access:1;
 	struct list_head latches_free;
 	struct list_head latches_in_use;
 	struct idpf_ptp_tx_tstamp_status tx_tstamp_status[];
@@ -155,6 +157,8 @@ struct idpf_ptp_vport_tx_tstamp_caps {
  * @base_incval: base increment value of the PTP clock
  * @max_adj: maximum adjustment of the PTP clock
  * @cmd: HW specific command masks
+ * @cached_phc_time: a cached copy of the PHC time for timestamp extension
+ * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
  * @dev_clk_regs: the set of registers to access the device clock
  * @caps: PTP capabilities negotiated with the Control Plane
  * @get_dev_clk_time_access: access type for getting the device clock time
@@ -172,6 +176,8 @@ struct idpf_ptp {
 	u64 base_incval;
 	u64 max_adj;
 	struct idpf_ptp_cmd cmd;
+	u64 cached_phc_time;
+	unsigned long cached_phc_jiffies;
 	struct idpf_ptp_dev_clk_regs dev_clk_regs;
 	u32 caps;
 	enum idpf_ptp_access get_dev_clk_time_access:2;
@@ -181,6 +187,7 @@ struct idpf_ptp {
 	enum idpf_ptp_access tx_tstamp_access:2;
 	u8 rsv:6;
 	struct idpf_ptp_secondary_mbx secondary_mbx;
+
 };
 
 /**
@@ -234,6 +241,7 @@ int idpf_ptp_init(struct idpf_adapter *adapter);
 void idpf_ptp_release(struct idpf_adapter *adapter);
 int idpf_ptp_get_caps(struct idpf_adapter *adapter);
 void idpf_ptp_get_features_access(const struct idpf_adapter *adapter);
+bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq);
 int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
 			      struct idpf_ptp_dev_timers *dev_clk_time);
 int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
@@ -242,6 +250,14 @@ int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time);
 int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval);
 int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta);
 int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport);
+int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport);
+int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
+				struct kernel_hwtstamp_config *config);
+u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp);
+u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_timestamp);
+int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
+			u32 *idx);
+void idpf_tstamp_task(struct work_struct *work);
 #else /* CONFIG_PTP_1588_CLOCK */
 static inline int idpf_ptp_init(struct idpf_adapter *adapter)
 {
@@ -258,6 +274,12 @@ static inline int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 static inline void
 idpf_ptp_get_features_access(const struct idpf_adapter *adapter) { }
 
+static inline bool
+idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq)
+{
+	return false;
+}
+
 static inline int
 idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
 			  struct idpf_ptp_dev_timers *dev_clk_time)
@@ -295,5 +317,35 @@ static inline int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
 	return -EOPNOTSUPP;
 }
 
+static inline int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int
+idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
+			    struct kernel_hwtstamp_config *config)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u32 in_tstamp)
+{
+	return 0;
+}
+
+static inline u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time,
+						    u32 in_timestamp)
+{
+	return 0;
+}
+
+static inline int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q,
+				      struct sk_buff *skb, u32 *idx)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline void idpf_tstamp_task(struct work_struct *work) { }
 #endif /* CONFIG_PTP_1588_CLOCK */
 #endif /* _IDPF_PTP_H */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 942f9a4eb0c2..8773683af96a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -5,6 +5,7 @@
 #include <net/libeth/tx.h>
 
 #include "idpf.h"
+#include "idpf_ptp.h"
 #include "idpf_virtchnl.h"
 
 struct idpf_tx_stash {
@@ -1107,6 +1108,8 @@ void idpf_vport_queues_rel(struct idpf_vport *vport)
  */
 static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
 {
+	struct idpf_ptp_vport_tx_tstamp_caps *caps = vport->tx_tstamp_caps;
+	struct work_struct *tstamp_task = &vport->tstamp_task;
 	int i, j, k = 0;
 
 	vport->txqs = kcalloc(vport->num_txq, sizeof(*vport->txqs),
@@ -1121,6 +1124,12 @@ static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
 		for (j = 0; j < tx_grp->num_txq; j++, k++) {
 			vport->txqs[k] = tx_grp->txqs[j];
 			vport->txqs[k]->idx = k;
+
+			if (!caps)
+				continue;
+
+			vport->txqs[k]->cached_tstamp_caps = caps;
+			vport->txqs[k]->tstamp_task = tstamp_task;
 		}
 	}
 
@@ -1654,6 +1663,40 @@ static void idpf_tx_handle_sw_marker(struct idpf_tx_queue *tx_q)
 	wake_up(&vport->sw_marker_wq);
 }
 
+/**
+ * idpf_tx_read_tstamp - schedule a work to read Tx timestamp value
+ * @txq: queue to read the timestamp from
+ * @skb: socket buffer to provide Tx timestamp value
+ *
+ * Schedule a work to read Tx timestamp value generated once the packet is
+ * transmitted.
+ */
+static void idpf_tx_read_tstamp(struct idpf_tx_queue *txq, struct sk_buff *skb)
+{
+	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
+	struct idpf_ptp_tx_tstamp_status *tx_tstamp_status;
+
+	tx_tstamp_caps = txq->cached_tstamp_caps;
+	spin_lock_bh(&tx_tstamp_caps->lock_status);
+
+	for (u32 i = 0; i < tx_tstamp_caps->num_entries; i++) {
+		tx_tstamp_status = &tx_tstamp_caps->tx_tstamp_status[i];
+		if (tx_tstamp_status->state != IDPF_PTP_FREE)
+			continue;
+
+		tx_tstamp_status->skb = skb;
+		tx_tstamp_status->state = IDPF_PTP_REQUEST;
+
+		/* Fetch timestamp from completion descriptor through
+		 * virtchnl msg to report to stack.
+		 */
+		queue_work(system_unbound_wq, txq->tstamp_task);
+		break;
+	}
+
+	spin_unlock_bh(&tx_tstamp_caps->lock_status);
+}
+
 /**
  * idpf_tx_clean_stashed_bufs - clean bufs that were stored for
  * out of order completions
@@ -1682,6 +1725,11 @@ static void idpf_tx_clean_stashed_bufs(struct idpf_tx_queue *txq,
 			continue;
 
 		hash_del(&stash->hlist);
+
+		if (stash->buf.type == LIBETH_SQE_SKB &&
+		    (skb_shinfo(stash->buf.skb)->tx_flags & SKBTX_IN_PROGRESS))
+			idpf_tx_read_tstamp(txq, stash->buf.skb);
+
 		libeth_tx_complete(&stash->buf, &cp);
 
 		/* Push shadow buf back onto stack */
@@ -1876,8 +1924,12 @@ static bool idpf_tx_clean_buf_ring(struct idpf_tx_queue *txq, u16 compl_tag,
 		     idpf_tx_buf_compl_tag(tx_buf) != compl_tag))
 		return false;
 
-	if (tx_buf->type == LIBETH_SQE_SKB)
+	if (tx_buf->type == LIBETH_SQE_SKB) {
+		if (skb_shinfo(tx_buf->skb)->tx_flags & SKBTX_IN_PROGRESS)
+			idpf_tx_read_tstamp(txq, tx_buf->skb);
+
 		libeth_tx_complete(tx_buf, &cp);
+	}
 
 	idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
 
@@ -2296,7 +2348,7 @@ void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
 		 * descriptor. Reset that here.
 		 */
 		tx_desc = &txq->flex_tx[idx];
-		memset(tx_desc, 0, sizeof(struct idpf_flex_tx_ctx_desc));
+		memset(tx_desc, 0, sizeof(*tx_desc));
 		if (idx == 0)
 			idx = txq->desc_count;
 		idx--;
@@ -2699,10 +2751,10 @@ static bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
  * Since the TX buffer rings mimics the descriptor ring, update the tx buffer
  * ring entry to reflect that this index is a context descriptor
  */
-static struct idpf_flex_tx_ctx_desc *
+static union idpf_flex_tx_ctx_desc *
 idpf_tx_splitq_get_ctx_desc(struct idpf_tx_queue *txq)
 {
-	struct idpf_flex_tx_ctx_desc *desc;
+	union idpf_flex_tx_ctx_desc *desc;
 	int i = txq->next_to_use;
 
 	txq->tx_buf[i].type = LIBETH_SQE_CTX;
@@ -2732,6 +2784,73 @@ netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queue *tx_q, struct sk_buff *skb)
 	return NETDEV_TX_OK;
 }
 
+#if (IS_ENABLED(CONFIG_PTP_1588_CLOCK))
+/**
+ * idpf_tx_tstamp - set up context descriptor for hardware timestamp
+ * @tx_q: queue to send buffer on
+ * @skb: pointer to the SKB we're sending
+ * @off: pointer to the offload struct
+ *
+ * Return: Positive index number on success, negative otherwise.
+ */
+static int idpf_tx_tstamp(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
+			  struct idpf_tx_offload_params *off)
+{
+	int err, idx;
+
+	/* only timestamp the outbound packet if the user has requested it */
+	if (likely(!(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)))
+		return -1;
+
+	if (!idpf_ptp_get_txq_tstamp_capability(tx_q))
+		return -1;
+
+	/* Tx timestamps cannot be sampled when doing TSO */
+	if (off->tx_flags & IDPF_TX_FLAGS_TSO)
+		return -1;
+
+	/* Grab an open timestamp slot */
+	err = idpf_ptp_request_ts(tx_q, skb, &idx);
+	if (err) {
+		u64_stats_update_begin(&tx_q->stats_sync);
+		u64_stats_inc(&tx_q->q_stats.tstamp_skipped);
+		u64_stats_update_end(&tx_q->stats_sync);
+
+		return -1;
+	}
+
+	off->tx_flags |= IDPF_TX_FLAGS_TSYN;
+
+	return idx;
+}
+
+/**
+ * idpf_tx_set_tstamp_desc - Set the Tx descriptor fields needed to generate
+ *			     PHY Tx timestamp
+ * @ctx_desc: Context descriptor
+ * @idx: Index of the Tx timestamp latch
+ */
+static void idpf_tx_set_tstamp_desc(union idpf_flex_tx_ctx_desc *ctx_desc,
+				    u32 idx)
+{
+	ctx_desc->tsyn.qw1 = le64_encode_bits(IDPF_TX_DESC_DTYPE_CTX,
+					      IDPF_TX_CTX_DTYPE_M) |
+			     le64_encode_bits(IDPF_TX_CTX_DESC_TSYN,
+					      IDPF_TX_CTX_CMD_M) |
+			     le64_encode_bits(idx, IDPF_TX_CTX_TSYN_REG_M);
+}
+#else /* CONFIG_PTP_1588_CLOCK */
+static int idpf_tx_tstamp(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
+			  struct idpf_tx_offload_params *off)
+{
+	return -1;
+}
+
+static void idpf_tx_set_tstamp_desc(union idpf_flex_tx_ctx_desc *ctx_desc,
+				    u32 idx)
+{ }
+#endif /* CONFIG_PTP_1588_CLOCK */
+
 /**
  * idpf_tx_splitq_frame - Sends buffer on Tx ring using flex descriptors
  * @skb: send buffer
@@ -2743,9 +2862,10 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 					struct idpf_tx_queue *tx_q)
 {
 	struct idpf_tx_splitq_params tx_params = { };
+	union idpf_flex_tx_ctx_desc *ctx_desc;
 	struct idpf_tx_buf *first;
 	unsigned int count;
-	int tso;
+	int tso, idx;
 
 	count = idpf_tx_desc_count_required(tx_q, skb);
 	if (unlikely(!count))
@@ -2765,8 +2885,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 
 	if (tso) {
 		/* If tso is needed, set up context desc */
-		struct idpf_flex_tx_ctx_desc *ctx_desc =
-			idpf_tx_splitq_get_ctx_desc(tx_q);
+		ctx_desc = idpf_tx_splitq_get_ctx_desc(tx_q);
 
 		ctx_desc->tso.qw1.cmd_dtype =
 				cpu_to_le16(IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX |
@@ -2784,6 +2903,12 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 		u64_stats_update_end(&tx_q->stats_sync);
 	}
 
+	idx = idpf_tx_tstamp(tx_q, skb, &tx_params.offload);
+	if (idx != -1) {
+		ctx_desc = idpf_tx_splitq_get_ctx_desc(tx_q);
+		idpf_tx_set_tstamp_desc(ctx_desc, idx);
+	}
+
 	/* record the location of the first descriptor for this packet */
 	first = &tx_q->tx_buf[tx_q->next_to_use];
 	first->skb = skb;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index cd9a20c9cc7f..418a99d5c4e3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -142,6 +142,7 @@ do {								\
 #define IDPF_TX_FLAGS_IPV4		BIT(1)
 #define IDPF_TX_FLAGS_IPV6		BIT(2)
 #define IDPF_TX_FLAGS_TUNNEL		BIT(3)
+#define IDPF_TX_FLAGS_TSYN		BIT(4)
 
 union idpf_tx_flex_desc {
 	struct idpf_flex_tx_desc q; /* queue based scheduling */
@@ -445,6 +446,7 @@ struct idpf_tx_queue_stats {
 	u64_stats_t q_busy;
 	u64_stats_t skb_drops;
 	u64_stats_t dma_map_errs;
+	u64_stats_t tstamp_skipped;
 };
 
 #define IDPF_ITR_DYNAMIC	1
@@ -619,6 +621,8 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  * @compl_tag_bufid_m: Completion tag buffer id mask
  * @compl_tag_cur_gen: Used to keep track of current completion tag generation
  * @compl_tag_gen_max: To determine when compl_tag_cur_gen should be reset
+ * @cached_tstamp_caps: Tx timestamp capabilities negotiated with the CP
+ * @tstamp_task: Work that handles Tx timestamp read
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_tx_queue_stats
  * @q_id: Queue id
@@ -632,7 +636,7 @@ struct idpf_tx_queue {
 		struct idpf_base_tx_desc *base_tx;
 		struct idpf_base_tx_ctx_desc *base_ctx;
 		union idpf_tx_flex_desc *flex_tx;
-		struct idpf_flex_tx_ctx_desc *flex_ctx;
+		union idpf_flex_tx_ctx_desc *flex_ctx;
 
 		void *desc_ring;
 	};
@@ -668,6 +672,9 @@ struct idpf_tx_queue {
 	u16 compl_tag_cur_gen;
 	u16 compl_tag_gen_max;
 
+	struct idpf_ptp_vport_tx_tstamp_caps *cached_tstamp_caps;
+	struct work_struct *tstamp_task;
+
 	struct u64_stats_sync stats_sync;
 	struct idpf_tx_queue_stats q_stats;
 	__cacheline_group_end_aligned(read_write);
@@ -681,7 +688,7 @@ struct idpf_tx_queue {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
-			    88 + sizeof(struct u64_stats_sync),
+			    112 + sizeof(struct u64_stats_sync),
 			    24);
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index ad2135a9ca48..12e7e80b090e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3163,8 +3163,12 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 		return;
 
 	err = idpf_ptp_get_vport_tstamps_caps(vport);
-	if (err)
+	if (err) {
 		pci_dbg(vport->adapter->pdev, "Tx timestamping not supported\n");
+		return;
+	}
+
+	INIT_WORK(&vport->tstamp_task, idpf_tstamp_task);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index de741910b79f..efdc9adc2f99 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -382,7 +382,9 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
 		goto get_tstamp_caps_out;
 	}
 
+	tstamp_caps->access = true;
 	tstamp_caps->num_entries = num_latches;
+
 	INIT_LIST_HEAD(&tstamp_caps->latches_in_use);
 	INIT_LIST_HEAD(&tstamp_caps->latches_free);
 
@@ -425,6 +427,9 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
 	vport->tx_tstamp_caps = tstamp_caps;
 	kfree(rcv_tx_tstamp_caps);
 
+	/* Init mutex to protect tstamp statistics */
+	mutex_init(&vport->tstamp_stats.tx_hwtstamp_lock);
+
 	return 0;
 
 err_free_ptp_tx_stamp_list:
@@ -440,3 +445,233 @@ int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
 
 	return err;
 }
+
+/**
+ * idpf_ptp_update_tstamp_tracker - Update the Tx timestamp tracker based on
+ *				    the skb compatibility.
+ * @caps: Tx timestamp capabilities that monitor the latch status
+ * @skb: skb for which the tstamp value is returned through virtchnl message
+ * @current_state: Current state of the Tx timestamp latch
+ * @expected_state: Expected state of the Tx timestamp latch
+ *
+ * Find a proper skb tracker for which the Tx timestamp is received and change
+ * the state to expected value.
+ *
+ * Return: true if the tracker has been found and updated, false otherwise.
+ */
+static bool
+idpf_ptp_update_tstamp_tracker(struct idpf_ptp_vport_tx_tstamp_caps *caps,
+			       struct sk_buff *skb,
+			       enum idpf_ptp_tx_tstamp_state current_state,
+			       enum idpf_ptp_tx_tstamp_state expected_state)
+{
+	bool updated = false;
+
+	spin_lock(&caps->lock_status);
+	for (u16 i = 0; i < caps->num_entries; i++) {
+		struct idpf_ptp_tx_tstamp_status *status;
+
+		status = &caps->tx_tstamp_status[i];
+
+		if (skb == status->skb && status->state == current_state) {
+			status->state = expected_state;
+			updated = true;
+			break;
+		}
+	}
+	spin_unlock(&caps->lock_status);
+
+	return updated;
+}
+
+/**
+ * idpf_ptp_get_tstamp_value - Get the Tx timestamp value and provide it
+ *			       back to the skb.
+ * @vport: Virtual port structure
+ * @tstamp_latch: Tx timestamp latch structure fulfilled by the Control Plane
+ * @ptp_tx_tstamp: Tx timestamp latch to add to the free list
+ *
+ * Read the value of the Tx timestamp for a given latch received from the
+ * Control Plane, extend it to 64 bit and provide back to the skb.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int
+idpf_ptp_get_tstamp_value(struct idpf_vport *vport,
+			  struct virtchnl2_ptp_tx_tstamp_latch *tstamp_latch,
+			  struct idpf_ptp_tx_tstamp *ptp_tx_tstamp)
+{
+	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
+	struct skb_shared_hwtstamps shhwtstamps;
+	bool state_upd = false;
+	u8 tstamp_ns_lo_bit;
+	u64 tstamp;
+
+	tx_tstamp_caps = vport->tx_tstamp_caps;
+	tstamp_ns_lo_bit = tx_tstamp_caps->tstamp_ns_lo_bit;
+
+	ptp_tx_tstamp->tstamp = le64_to_cpu(tstamp_latch->tstamp);
+	ptp_tx_tstamp->tstamp >>= tstamp_ns_lo_bit;
+
+	state_upd = idpf_ptp_update_tstamp_tracker(tx_tstamp_caps,
+						   ptp_tx_tstamp->skb,
+						   IDPF_PTP_READ_VALUE,
+						   IDPF_PTP_FREE);
+	if (!state_upd)
+		return -EINVAL;
+
+	tstamp = idpf_ptp_extend_ts(vport, ptp_tx_tstamp->tstamp);
+	shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
+	skb_tstamp_tx(ptp_tx_tstamp->skb, &shhwtstamps);
+	consume_skb(ptp_tx_tstamp->skb);
+
+	spin_lock(&tx_tstamp_caps->lock_free);
+	list_add(&ptp_tx_tstamp->list_member,
+		 &tx_tstamp_caps->latches_free);
+	spin_unlock(&tx_tstamp_caps->lock_free);
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_get_tx_tstamp_async_handler - Async callback for getting Tx tstamps
+ * @adapter: Driver specific private structure
+ * @xn: transaction for message
+ * @ctlq_msg: received message
+ *
+ * Read the tstamps Tx tstamp values from a received message and put them
+ * directly to the skb. The number of timestamps to read is specified by
+ * the virtchnl message.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int
+idpf_ptp_get_tx_tstamp_async_handler(struct idpf_adapter *adapter,
+				     struct idpf_vc_xn *xn,
+				     const struct idpf_ctlq_msg *ctlq_msg)
+{
+	struct virtchnl2_ptp_get_vport_tx_tstamp_latches *recv_tx_tstamp_msg;
+	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
+	struct virtchnl2_ptp_tx_tstamp_latch tstamp_latch;
+	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
+	struct idpf_vport *tstamp_vport = NULL;
+	struct list_head *head;
+	u16 num_latches;
+	u32 vport_id;
+	int err;
+
+	recv_tx_tstamp_msg = ctlq_msg->ctx.indirect.payload->va;
+	vport_id = le32_to_cpu(recv_tx_tstamp_msg->vport_id);
+
+	idpf_for_each_vport(adapter, vport) {
+		if (!vport)
+			continue;
+
+		if (vport->vport_id == vport_id) {
+			tstamp_vport = vport;
+			break;
+		}
+	}
+
+	if (!tstamp_vport || !tstamp_vport->tx_tstamp_caps)
+		return -EINVAL;
+
+	tx_tstamp_caps = tstamp_vport->tx_tstamp_caps;
+	num_latches = le16_to_cpu(recv_tx_tstamp_msg->num_latches);
+
+	head = &tx_tstamp_caps->latches_in_use;
+	spin_lock(&tx_tstamp_caps->lock_in_use);
+
+	for (u16 i = 0; i < num_latches; i++) {
+		tstamp_latch = recv_tx_tstamp_msg->tstamp_latches[i];
+
+		if (!tstamp_latch.valid)
+			continue;
+
+		if (list_empty(head)) {
+			err = -ENOBUFS;
+			goto unlock;
+		}
+
+		list_for_each_entry(ptp_tx_tstamp, head, list_member) {
+			if (tstamp_latch.index == ptp_tx_tstamp->idx) {
+				list_del(&ptp_tx_tstamp->list_member);
+				err = idpf_ptp_get_tstamp_value(tstamp_vport,
+								&tstamp_latch,
+								ptp_tx_tstamp);
+				if (err)
+					goto unlock;
+
+				break;
+			}
+		}
+	}
+
+unlock:
+	spin_unlock(&tx_tstamp_caps->lock_in_use);
+
+	return err;
+}
+
+/**
+ * idpf_ptp_get_tx_tstamp - Send virtchnl get Tx timestamp latches message
+ * @vport: Virtual port structure
+ *
+ * Send virtchnl get Tx tstamp message to read the value of the HW timestamp.
+ * The message contains a list of indexes set in the Tx descriptors.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
+{
+	struct virtchnl2_ptp_get_vport_tx_tstamp_latches *send_tx_tstamp_msg;
+	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
+	struct idpf_vc_xn_params xn_params = {
+		.vc_op = VIRTCHNL2_OP_PTP_GET_VPORT_TX_TSTAMP,
+		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+		.async = true,
+		.async_handler = idpf_ptp_get_tx_tstamp_async_handler,
+	};
+	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
+	int reply_sz, size, msg_size;
+	struct list_head *head;
+	bool state_upd;
+	u16 id = 0;
+
+	tx_tstamp_caps = vport->tx_tstamp_caps;
+	head = &tx_tstamp_caps->latches_in_use;
+
+	size = struct_size(send_tx_tstamp_msg, tstamp_latches,
+			   tx_tstamp_caps->num_entries);
+	send_tx_tstamp_msg = kzalloc(size, GFP_KERNEL);
+	if (!send_tx_tstamp_msg)
+		return -ENOMEM;
+
+	spin_lock(&tx_tstamp_caps->lock_in_use);
+	list_for_each_entry(ptp_tx_tstamp, head, list_member) {
+		u8 idx;
+
+		state_upd = idpf_ptp_update_tstamp_tracker(tx_tstamp_caps,
+							   ptp_tx_tstamp->skb,
+							   IDPF_PTP_REQUEST,
+							   IDPF_PTP_READ_VALUE);
+		if (!state_upd)
+			continue;
+
+		idx = ptp_tx_tstamp->idx;
+		send_tx_tstamp_msg->tstamp_latches[id].index = idx;
+		id++;
+	}
+	spin_unlock(&tx_tstamp_caps->lock_in_use);
+
+	msg_size = struct_size(send_tx_tstamp_msg, tstamp_latches, id);
+	send_tx_tstamp_msg->vport_id = cpu_to_le32(vport->vport_id);
+	send_tx_tstamp_msg->num_latches = cpu_to_le16(id);
+	xn_params.send_buf.iov_base = send_tx_tstamp_msg;
+	xn_params.send_buf.iov_len = msg_size;
+
+	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	kfree(send_tx_tstamp_msg);
+
+	return min(reply_sz, 0);
+}
-- 
2.31.1

