Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7572F9F78D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2024 10:48:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F488844FE;
	Thu, 19 Dec 2024 09:48:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ksTL39vnocjd; Thu, 19 Dec 2024 09:48:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BEF584508
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734601681;
	bh=5X97oZLIE/bdHtohWuDn5FjluvFrSeT28TF1VXnZswY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IZ9khPHyXEgv+L3e/E4vJ00s6BpA13xfOrjvgsLRgNN8Q8uTIaI9DlMspAw0YkVdK
	 p5jzNACTUfitnYbFjwueNhr+kZHMhtRGXIi4cDCNSkhd8iu4aGaSdlXwklMAbSm2SN
	 I5v5ydhmJoG0JYy8WYysc5hB4upmDs+Kn1DvXPgc1Vi6TTVUlgQShl+gij6WORIzir
	 4abqpFEKO/3kMC1YGkQAqdl8788BJs73OUJMIRwfTXVJWmq+clskiElYKaNEusxbfE
	 TdIeGDv4VzKmnp+PvD3/C1yUhY16n/kwM8VTb21uayjYPmZKuVNR//+ztDheNwH+2+
	 0qAexnHQ5hA9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BEF584508;
	Thu, 19 Dec 2024 09:48:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0990E6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:47:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DDABA408A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:47:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t9tg5ryz4I2u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Dec 2024 09:47:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 55FEA4069C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55FEA4069C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55FEA4069C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:47:57 +0000 (UTC)
X-CSE-ConnectionGUID: 71R/gqcfRIu8AgvotfOS6g==
X-CSE-MsgGUID: E667O6UvTNOgUzall0+gWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="45702672"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="45702672"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 01:47:57 -0800
X-CSE-ConnectionGUID: lV5mTo2ySxuR39S7kdf+AQ==
X-CSE-MsgGUID: g2mwQFDoRL6xXWAnR/gLIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98207098"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa006.jf.intel.com with ESMTP; 19 Dec 2024 01:47:54 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Thu, 19 Dec 2024 10:44:16 +0100
Message-Id: <20241219094411.110082-8-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20241219094411.110082-1-milena.olech@intel.com>
References: <20241219094411.110082-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734601677; x=1766137677;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pqMlDvthid8upw5hsE2L+bbV3/KcsR8NM9iCIqNNLmk=;
 b=W7+GW6UjOtIId/P//U4jDuRgeahW6Laq0rD3vfPUOuBOdCIseDjM0wpi
 VHn/Q28ubN1NESgPO1UUGiBppz35IHOEPisgsehvNkujSlSPjU6runxtq
 p9DNm9kgD4xSmow3LNFERfq1eD1fg4K9LB/s1cZ9jQu7QpPpQ9wZ3Ldvn
 7Hw7TddVnooKonFYnOTHFpWjVelRbW69Guhi6Ssm6R+wKeMflAomeM0J9
 o/DF6vGltxRlR6CPw1iHpkjVLQ2AqcYHau1Ay2A74BjzgWjfiYXbHV6In
 m/VelSgJ1QcH38/9ZPiGoQbl/hc2yn5c8T2v7WSZzW+FFbNfgbyGHemcr
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W7+GW6Uj
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 07/10] idpf: add Tx timestamp
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

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
---
v2 -> v3: revert changes in idpf_for_each_vport, fix minor issues
v1 -> v2: change the idpf_for_each_vport macro

 drivers/net/ethernet/intel/idpf/idpf.h        |   9 ++
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    |  64 +++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  96 ++++++++++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  11 ++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 128 +++++++++++++++++-
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  12 +-
 6 files changed, 316 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 1607e9641b23..90cadbcaabbc 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -292,6 +292,7 @@ struct idpf_port_stats {
  * @port_stats: per port csum, header split, and other offload stats
  * @link_up: True if link is up
  * @sw_marker_wq: workqueue for marker packets
+ * @tx_tstamp_caps: Capabilities negotiated for Tx timestamping
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
index 54b7ccb16da0..04e2b3b258f6 100644
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
index e7ccdcbdbd47..642e875a5798 100644
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
+ * struct idpf_ptp_tx_tstamp - Parameters for Tx timestamping
+ * @list_member: the list member structure
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
  * @rsv: reserved bits
  * @secondary_mbx: parameters for using dedicated PTP mailbox
  */
@@ -113,7 +178,8 @@ struct idpf_ptp {
 	enum idpf_ptp_access get_cross_tstamp_access:2;
 	enum idpf_ptp_access set_dev_clk_time_access:2;
 	enum idpf_ptp_access adj_dev_clk_time_access:2;
-	u8 rsv;
+	enum idpf_ptp_access tx_tstamp_access:2;
+	u8 rsv:6;
 	struct idpf_ptp_secondary_mbx secondary_mbx;
 };
 
@@ -141,6 +207,28 @@ struct idpf_ptp_dev_timers {
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
@@ -153,6 +241,7 @@ int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
 int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time);
 int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval);
 int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta);
+int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport);
 #else /* CONFIG_PTP_1588_CLOCK */
 static inline int idpf_ptp_init(struct idpf_adapter *adapter)
 {
@@ -201,5 +290,10 @@ static inline int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter,
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
index 3b6667cea03e..ad2135a9ca48 100644
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
+	      cpu_to_le16(VIRTCHNL2_VPORT_UPLINK_PORT)))
+		return;
+
+	err = idpf_ptp_get_vport_tstamps_caps(vport);
+	if (err)
+		pci_dbg(vport->adapter->pdev, "Tx timestamping not supported\n");
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
index 5f39889d8f27..de741910b79f 100644
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
+		__le32 offset_l, offset_h;
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
index 44a5ee84ed60..07235f1b4c5c 100644
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
@@ -587,7 +595,7 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_reg_chunks);
  * @max_mtu: Max MTU. CP populates this field on response.
  * @vport_id: Vport id. CP populates this field on response.
  * @default_mac_addr: Default MAC address.
- * @pad: Padding.
+ * @vport_flags: See enum virtchnl2_vport_flags.
  * @rx_desc_ids: See VIRTCHNL2_RX_DESC_IDS definitions.
  * @tx_desc_ids: See VIRTCHNL2_TX_DESC_IDS definitions.
  * @pad1: Padding.
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

