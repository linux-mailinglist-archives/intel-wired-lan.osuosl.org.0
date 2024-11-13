Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6F49C78A5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2024 17:22:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E138401BE;
	Wed, 13 Nov 2024 16:21:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xmr_9ZT086ay; Wed, 13 Nov 2024 16:21:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECE10406C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731514888;
	bh=6pOV4yIA1HUeZNAEo0BxZuZqmIMzyRyQi46/QOc3FgI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dZK2c1t+uTKb7302yVPyBEJSkjpK0Fk6dJ1FIV9nXtE802qQPuUzWUKsNG3aKo0RH
	 xRur8vHbQsu/n48XysMekjWNvtb1lhD2hY3OEDYSrl7Wj3N1qh/eNMOQsjlD+cWRKS
	 A02zsxeMM0Vo3JjrADax9Y1R53Q9KHZB6AkvYCMCWx4KVrJxkdQKYJCIoE95rKV4WI
	 Z8oDcaSEA6eRH5uMXelZ9XFQXh+Vl90wh23pLQDUqhiXJUmQ/DmTu6xKFLzc3DHtjJ
	 +F53AzIJIvDWPGNOF0/RRU3Hpp/WFtuunjzDtgcBujftlIZY7alaF3W6GK8ZCNwPtl
	 DIaQU5nZLOs5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECE10406C1;
	Wed, 13 Nov 2024 16:21:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 186A3E2E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 15:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0707881119
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 15:49:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2zlZ7BZH5Y6G for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2024 15:49:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B01D881116
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B01D881116
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B01D881116
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 15:49:09 +0000 (UTC)
X-CSE-ConnectionGUID: gK+69ChURP69YU3fvHRtmQ==
X-CSE-MsgGUID: AvCLkLr9Tl2gVaDXtWAYOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="48919032"
X-IronPort-AV: E=Sophos;i="6.12,151,1728975600"; d="scan'208";a="48919032"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 07:49:09 -0800
X-CSE-ConnectionGUID: juMq24bvTOSK5NJ6gbWhZQ==
X-CSE-MsgGUID: uDGckmwjQtes19ZilWfcNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,151,1728975600"; d="scan'208";a="92869332"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa005.jf.intel.com with ESMTP; 13 Nov 2024 07:49:06 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 13 Nov 2024 16:46:19 +0100
Message-Id: <20241113154616.2493297-8-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20241113154616.2493297-1-milena.olech@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 13 Nov 2024 16:21:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731512949; x=1763048949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3sFBMEOEWzhT3mxq6WzqNvphf2g3Q+7m5XC9PWn/3YA=;
 b=mYxW9wY/NVt2lZ099TPINxYiypSCuLbpX4ygdb53RQkKEkpgi3997E6Y
 fpE1e8x4O6w7/yO6IyuS6CeceXMQmgsv1P9VEAzXycmFR+5m2OZZHciLK
 1wOzwXtUgx7fq8LAGdsxvveQPTCxzVnO7K1DX/hp8Tikr4ibMbd8j8Qmt
 OaPXiPf1S3hGuqW3XaxGswlCJzdgImN90gT0cy1iOKmB5XwkvWkowCkum
 7B6bFxLnnwWcM196j+0MOrJuQDcy7I2bJaaFYKTWE5CjAr8WZ3CaFLarP
 FLnlhaA5Iz8jSuqTVfBzYic3GVhSRx3qz40UVa/Ij9UoqkPnXerOwmYJL
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mYxW9wY/
Subject: [Intel-wired-lan] [PATCH iwl-net 07/10] idpf: add Tx timestamp
 capabilities negotiation
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

Tx timestamp capabilities are negotiated for the uplink Vport.
Driver receives information about the number of available Tx timestamp
latches, the size of Tx timestamp value and the set of indexes used
for Tx timestamping.

Add function to get the Tx timestamp capabilities and parse the uplink
vport flag.

Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   9 ++
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    |  64 +++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  94 +++++++++++++
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  11 ++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 128 +++++++++++++++++-
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  10 +-
 6 files changed, 314 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index d5d5064d313b..1135be31b97c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -292,6 +292,7 @@ struct idpf_port_stats {
  * @port_stats: per port csum, header split, and other offload stats
  * @link_up: True if link is up
  * @sw_marker_wq: workqueue for marker packets
+ * @tx_tstamp_caps: The capabilities negotiated for Tx timestamping
  */
 struct idpf_vport {
 	u16 num_txq;
@@ -336,6 +337,8 @@ struct idpf_vport {
 	bool link_up;
 
 	wait_queue_head_t sw_marker_wq;
+
+	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
 };
 
 /**
@@ -480,6 +483,12 @@ struct idpf_vport_config {
 
 struct idpf_vc_xn_manager;
 
+#define idpf_for_each_vport(adapter, iter) \
+	for (struct idpf_vport **__##iter = &(adapter)->vports[0], \
+	     *iter = *__##iter; \
+	     __##iter < &(adapter)->vports[(adapter)->num_alloc_vports]; \
+	     iter = *(++__##iter))
+
 /**
  * struct idpf_adapter - Device data struct generated on probe
  * @pdev: PCI device struct given on probe
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index b5011fa9b9bb..997528176b0f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -62,6 +62,13 @@ void idpf_ptp_get_features_access(const struct idpf_adapter *adapter)
 	ptp->adj_dev_clk_time_access = idpf_ptp_get_access(adapter,
 							   direct,
 							   mailbox);
+
+	/* Tx timestamping */
+	direct = VIRTCHNL2_CAP_PTP_TX_TSTAMPS;
+	mailbox = VIRTCHNL2_CAP_PTP_TX_TSTAMPS_MB;
+	ptp->tx_tstamp_access = idpf_ptp_get_access(adapter,
+						    direct,
+						    mailbox);
 }
 
 /**
@@ -517,6 +524,60 @@ static int idpf_ptp_create_clock(const struct idpf_adapter *adapter)
 	return 0;
 }
 
+/**
+ * idpf_ptp_release_vport_tstamp - Release the Tx timestamps trakcers for a
+ *				   given vport.
+ * @vport: Virtual port structure
+ *
+ * Remove the queues and delete lists that tracks Tx timestamp entries for a
+ * given vport.
+ */
+static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
+{
+	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp, *tmp;
+	struct list_head *head;
+
+	if (!idpf_ptp_get_vport_tstamp_capability(vport))
+		return;
+
+	/* Remove list with free latches */
+	spin_lock(&vport->tx_tstamp_caps->lock_free);
+
+	head = &vport->tx_tstamp_caps->latches_free;
+	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
+		list_del(&ptp_tx_tstamp->list_member);
+		kfree(ptp_tx_tstamp);
+	}
+
+	spin_unlock(&vport->tx_tstamp_caps->lock_free);
+
+	/* Remove list with latches in use */
+	spin_lock(&vport->tx_tstamp_caps->lock_in_use);
+
+	head = &vport->tx_tstamp_caps->latches_in_use;
+	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
+		list_del(&ptp_tx_tstamp->list_member);
+		kfree(ptp_tx_tstamp);
+	}
+
+	spin_unlock(&vport->tx_tstamp_caps->lock_in_use);
+
+	kfree(vport->tx_tstamp_caps);
+	vport->tx_tstamp_caps = NULL;
+}
+
+/**
+ * idpf_ptp_release_tstamp - Release the Tx timestamps trackers
+ * @adapter: Driver specific private structure
+ *
+ * Remove the queues and delete lists that tracks Tx timestamp entries.
+ */
+static void idpf_ptp_release_tstamp(struct idpf_adapter *adapter)
+{
+	idpf_for_each_vport(adapter, vport)
+		idpf_ptp_release_vport_tstamp(vport);
+}
+
 /**
  * idpf_ptp_init - Initialize PTP hardware clock support
  * @adapter: Driver specific private structure
@@ -601,6 +662,9 @@ void idpf_ptp_release(struct idpf_adapter *adapter)
 	if (!ptp)
 		return;
 
+	if (ptp->tx_tstamp_access != IDPF_PTP_NONE)
+		idpf_ptp_release_tstamp(adapter);
+
 	if (ptp->clock)
 		ptp_clock_unregister(ptp->clock);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index 3c79aa145165..2d45b008d8cb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -83,6 +83,70 @@ struct idpf_ptp_secondary_mbx {
 	bool valid:1;
 };
 
+/**
+ * enum idpf_ptp_tx_tstamp_state - Tx timestamp states
+ * @IDPF_PTP_FREE: Tx timestamp index free to use
+ * @IDPF_PTP_REQUEST: Tx timestamp index set to the Tx descriptor
+ * @IDPF_PTP_READ_VALUE: Tx timestamp value ready to be read
+ */
+enum idpf_ptp_tx_tstamp_state {
+	IDPF_PTP_FREE,
+	IDPF_PTP_REQUEST,
+	IDPF_PTP_READ_VALUE,
+};
+
+/**
+ * struct idpf_ptp_tx_tstamp_status - Parameters to track Tx timestamp
+ * @skb: the pointer to the SKB that received the completion tag
+ * @state: the state of the Tx timestamp
+ */
+struct idpf_ptp_tx_tstamp_status {
+	struct sk_buff *skb;
+	enum idpf_ptp_tx_tstamp_state state;
+};
+
+/**
+ * struct idpf_ptp_tx_tstamp - Parametrs for Tx timestamping
+ * @list_member: the list member strutcure
+ * @tx_latch_reg_offset_l: Tx tstamp latch low register offset
+ * @tx_latch_reg_offset_h: Tx tstamp latch high register offset
+ * @skb: the pointer to the SKB for this timestamp request
+ * @tstamp: the Tx tstamp value
+ * @idx: the index of the Tx tstamp
+ */
+struct idpf_ptp_tx_tstamp {
+	struct list_head list_member;
+	u32 tx_latch_reg_offset_l;
+	u32 tx_latch_reg_offset_h;
+	struct sk_buff *skb;
+	u64 tstamp;
+	u32 idx;
+};
+
+/**
+ * struct idpf_ptp_vport_tx_tstamp_caps - Tx timestamp capabilities
+ * @vport_id: the vport id
+ * @num_entries: the number of negotiated Tx timestamp entries
+ * @tstamp_ns_lo_bit: first bit for nanosecond part of the timestamp
+ * @lock_in_use: the lock to the used latches list
+ * @lock_free: the lock to free the latches list
+ * @lock_status: the lock to the status tracker
+ * @latches_free: the list of the free Tx timestamps latches
+ * @latches_in_use: the list of the used Tx timestamps latches
+ * @tx_tstamp_status: Tx tstamp status tracker
+ */
+struct idpf_ptp_vport_tx_tstamp_caps {
+	u32 vport_id;
+	u16 num_entries;
+	u16 tstamp_ns_lo_bit;
+	spinlock_t lock_in_use;
+	spinlock_t lock_free;
+	spinlock_t lock_status;
+	struct list_head latches_free;
+	struct list_head latches_in_use;
+	struct idpf_ptp_tx_tstamp_status tx_tstamp_status[];
+};
+
 /**
  * struct idpf_ptp - PTP parameters
  * @info: structure defining PTP hardware capabilities
@@ -97,6 +161,7 @@ struct idpf_ptp_secondary_mbx {
  * @get_cross_tstamp_access: access type for the cross timestamping
  * @set_dev_clk_time_access: access type for setting the device clock time
  * @adj_dev_clk_time_access: access type for the adjusting the device clock
+ * @tx_tstamp_access: access type for the Tx timestamp value read
  * @secondary_mbx: parameters for using dedicated PTP mailbox
  */
 struct idpf_ptp {
@@ -112,6 +177,7 @@ struct idpf_ptp {
 	enum idpf_ptp_access get_cross_tstamp_access:16;
 	enum idpf_ptp_access set_dev_clk_time_access:16;
 	enum idpf_ptp_access adj_dev_clk_time_access:16;
+	enum idpf_ptp_access tx_tstamp_access:16;
 	struct idpf_ptp_secondary_mbx secondary_mbx;
 };
 
@@ -137,6 +203,28 @@ struct idpf_ptp_dev_timers {
 	u64 dev_clk_time_ns;
 };
 
+/**
+ * idpf_ptp_get_vport_tstamp_capability - Verify the timestamping capability
+ *					  for a given vport.
+ * @vport: Virtual port structure
+ *
+ * Since performing timestamp flows requires reading the device clock value and
+ * the support in the Control Plane, the function checks both factors and
+ * summarizes the support for the timestamping.
+ *
+ * Return: true if the timestamping is supported, false otherwise.
+ */
+static inline bool idpf_ptp_get_vport_tstamp_capability(struct idpf_vport *vport)
+{
+	if (!vport || !vport->adapter->ptp || !vport->tx_tstamp_caps)
+		return false;
+	else if (vport->adapter->ptp->tx_tstamp_access != IDPF_PTP_NONE &&
+		 vport->adapter->ptp->get_dev_clk_time_access != IDPF_PTP_NONE)
+		return true;
+	else
+		return false;
+}
+
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 int idpf_ptp_init(struct idpf_adapter *adapter);
 void idpf_ptp_release(struct idpf_adapter *adapter);
@@ -149,6 +237,7 @@ int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
 int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time);
 int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval);
 int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta);
+int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport);
 #else /* CONFIG_PTP_1588_CLOCK */
 static inline int idpf_ptp_init(struct idpf_adapter *adpater)
 {
@@ -197,5 +286,10 @@ static inline int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter,
 	return -EOPNOTSUPP;
 }
 
+static inline int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
+{
+	return -EOPNOTSUPP;
+}
+
 #endif /* CONFIG_PTP_1588_CLOCK */
 #endif /* _IDPF_PTP_H */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 3b6667cea03e..a60d4e87869d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -169,6 +169,8 @@ static bool idpf_ptp_is_mb_msg(u32 op)
 	case VIRTCHNL2_OP_PTP_SET_DEV_CLK_TIME:
 	case VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_FINE:
 	case VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_TIME:
+	case VIRTCHNL2_OP_PTP_GET_VPORT_TX_TSTAMP_CAPS:
+	case VIRTCHNL2_OP_PTP_GET_VPORT_TX_TSTAMP:
 		return true;
 	default:
 		return false;
@@ -3120,6 +3122,7 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	u16 rx_itr[] = {2, 8, 32, 96, 128};
 	struct idpf_rss_data *rss_data;
 	u16 idx = vport->idx;
+	int err;
 
 	vport_config = adapter->vport_config[idx];
 	rss_data = &vport_config->user_config.rss_data;
@@ -3154,6 +3157,14 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	idpf_vport_alloc_vec_indexes(vport);
 
 	vport->crc_enable = adapter->crc_enable;
+
+	if (!(vport_msg->vport_flags &
+	      le16_to_cpu(VIRTCHNL2_VPORT_UPLINK_PORT)))
+		return;
+
+	err = idpf_ptp_get_vport_tstamps_caps(vport);
+	if (err)
+		pci_dbg(vport->adapter->pdev, "Tx timestamping not supported\n");
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index 5f39889d8f27..c4b9127f0457 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
@@ -22,7 +22,8 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
 				    VIRTCHNL2_CAP_PTP_GET_CROSS_TIME |
 				    VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB |
 				    VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME_MB |
-				    VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK_MB)
+				    VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK_MB |
+				    VIRTCHNL2_CAP_PTP_TX_TSTAMPS_MB)
 	};
 	struct idpf_vc_xn_params xn_params = {
 		.vc_op = VIRTCHNL2_OP_PTP_GET_CAPS,
@@ -314,3 +315,128 @@ int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval)
 
 	return 0;
 }
+
+/**
+ * idpf_ptp_get_vport_tstamps_caps - Send virtchnl to get tstamps caps for vport
+ * @vport: Virtual port structure
+ *
+ * Send virtchnl get vport tstamps caps message to receive the set of tstamp
+ * capabilities per vport.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)
+{
+	struct virtchnl2_ptp_get_vport_tx_tstamp_caps send_tx_tstamp_caps;
+	struct virtchnl2_ptp_get_vport_tx_tstamp_caps *rcv_tx_tstamp_caps;
+	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp, *ptp_tx_tstamps, *tmp;
+	struct virtchnl2_ptp_tx_tstamp_latch_caps tx_tstamp_latch_caps;
+	struct idpf_ptp_vport_tx_tstamp_caps *tstamp_caps;
+	struct idpf_vc_xn_params xn_params = {
+		.vc_op = VIRTCHNL2_OP_PTP_GET_VPORT_TX_TSTAMP_CAPS,
+		.send_buf.iov_base = &send_tx_tstamp_caps,
+		.send_buf.iov_len = sizeof(send_tx_tstamp_caps),
+		.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN,
+		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
+	};
+	enum idpf_ptp_access tstamp_access, get_dev_clk_access;
+	struct idpf_ptp *ptp = vport->adapter->ptp;
+	struct list_head *head;
+	int err = 0, reply_sz;
+	u16 num_latches;
+	u32 size;
+
+	if (!ptp)
+		return -EOPNOTSUPP;
+
+	tstamp_access = ptp->tx_tstamp_access;
+	get_dev_clk_access = ptp->get_dev_clk_time_access;
+	if (tstamp_access == IDPF_PTP_NONE ||
+	    get_dev_clk_access == IDPF_PTP_NONE)
+		return -EOPNOTSUPP;
+
+	rcv_tx_tstamp_caps = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
+	if (!rcv_tx_tstamp_caps)
+		return -ENOMEM;
+
+	send_tx_tstamp_caps.vport_id = cpu_to_le32(vport->vport_id);
+	xn_params.recv_buf.iov_base = rcv_tx_tstamp_caps;
+
+	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	if (reply_sz < 0) {
+		err = reply_sz;
+		goto get_tstamp_caps_out;
+	}
+
+	num_latches = le16_to_cpu(rcv_tx_tstamp_caps->num_latches);
+	size = struct_size(rcv_tx_tstamp_caps, tstamp_latches, num_latches);
+	if (reply_sz != size) {
+		err = -EIO;
+		goto get_tstamp_caps_out;
+	}
+
+	size = struct_size(tstamp_caps, tx_tstamp_status, num_latches);
+	tstamp_caps = kzalloc(size, GFP_KERNEL);
+	if (!tstamp_caps) {
+		err = -ENOMEM;
+		goto get_tstamp_caps_out;
+	}
+
+	tstamp_caps->num_entries = num_latches;
+	INIT_LIST_HEAD(&tstamp_caps->latches_in_use);
+	INIT_LIST_HEAD(&tstamp_caps->latches_free);
+
+	spin_lock_init(&tstamp_caps->lock_free);
+	spin_lock_init(&tstamp_caps->lock_in_use);
+	spin_lock_init(&tstamp_caps->lock_status);
+
+	tstamp_caps->tstamp_ns_lo_bit = rcv_tx_tstamp_caps->tstamp_ns_lo_bit;
+
+	ptp_tx_tstamps = kcalloc(tstamp_caps->num_entries,
+				 sizeof(*ptp_tx_tstamp), GFP_KERNEL);
+	if (!ptp_tx_tstamps) {
+		err = -ENOMEM;
+		goto err_free_ptp_tx_stamp_list;
+	}
+
+	for (u16 i = 0; i < tstamp_caps->num_entries; i++) {
+		u32 offset_l, offset_h;
+
+		ptp_tx_tstamp = ptp_tx_tstamps + i;
+		tx_tstamp_latch_caps = rcv_tx_tstamp_caps->tstamp_latches[i];
+
+		if (tstamp_access != IDPF_PTP_DIRECT)
+			goto skip_offsets;
+
+		offset_l = tx_tstamp_latch_caps.tx_latch_reg_offset_l;
+		offset_h = tx_tstamp_latch_caps.tx_latch_reg_offset_h;
+		ptp_tx_tstamp->tx_latch_reg_offset_l = le32_to_cpu(offset_l);
+		ptp_tx_tstamp->tx_latch_reg_offset_h = le32_to_cpu(offset_h);
+
+skip_offsets:
+		ptp_tx_tstamp->idx = tx_tstamp_latch_caps.index;
+
+		list_add(&ptp_tx_tstamp->list_member,
+			 &tstamp_caps->latches_free);
+
+		tstamp_caps->tx_tstamp_status[i].state = IDPF_PTP_FREE;
+	}
+
+	vport->tx_tstamp_caps = tstamp_caps;
+	kfree(rcv_tx_tstamp_caps);
+
+	return 0;
+
+err_free_ptp_tx_stamp_list:
+	head = &tstamp_caps->latches_free;
+	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
+		list_del(&ptp_tx_tstamp->list_member);
+		kfree(ptp_tx_tstamp);
+	}
+
+	kfree(tstamp_caps);
+get_tstamp_caps_out:
+	kfree(rcv_tx_tstamp_caps);
+
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 7b09f4ed99b1..c3142ad76433 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -569,6 +569,14 @@ struct virtchnl2_queue_reg_chunks {
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_reg_chunks);
 
+/**
+ * enum virtchnl2_vport_flags - Vport flags that indicate vport capabilities.
+ * @VIRTCHNL2_VPORT_UPLINK_PORT: Representatives of underlying physical ports
+ */
+enum virtchnl2_vport_flags {
+	VIRTCHNL2_VPORT_UPLINK_PORT	= BIT(0),
+};
+
 /**
  * struct virtchnl2_create_vport - Create vport config info.
  * @vport_type: See enum virtchnl2_vport_type.
@@ -620,7 +628,7 @@ struct virtchnl2_create_vport {
 	__le16 max_mtu;
 	__le32 vport_id;
 	u8 default_mac_addr[ETH_ALEN];
-	__le16 pad;
+	__le16 vport_flags;
 	__le64 rx_desc_ids;
 	__le64 tx_desc_ids;
 	u8 pad1[72];
-- 
2.31.1

