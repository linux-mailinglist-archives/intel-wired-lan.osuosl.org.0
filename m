Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC5FA8B92D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 14:33:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58F646FC24;
	Wed, 16 Apr 2025 12:33:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ipWdyNGLzxtK; Wed, 16 Apr 2025 12:33:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01FF261B26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744806818;
	bh=fbVpDrddQ/2Q6yECKHFG2eJpSMKADHdpLFwp6aEOFls=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3Vi2dRJpNrO6W1HriawdG0NYww+9vQ5e8D7FzZVQ6/hCMvLWeAJK/E4EQSp9oFFMO
	 pT4eoOCRjDA5DAA2solHlqY3mmK4NR2ye00aPa4FmnJ+sBUgKLfnsH33igkjGg8LHP
	 AZB4v2/yn4rLAPrJ4AfSTRSzw2sobDc8D6/XFvXnlROx99qj3SXd49ihHweg8EEqMC
	 DvPE7lQKRBiJDRnM8pM/Zai8d5YR3js40FX3V39jQlp/JIDaknbfxnC18kOuN/I7LG
	 0uC1Q+uSRVMfxU1wI6aZ3re9JfGLtfDpBmRENHClt+Bzdcz3TfI7YruZYQXxYbvSn1
	 xcoprRYYwlKAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01FF261B26;
	Wed, 16 Apr 2025 12:33:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 362FF435
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2771341F36
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:33:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DRZ8yJ4SYGNw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 12:33:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1BC0041EA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BC0041EA6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1BC0041EA6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:33:35 +0000 (UTC)
X-CSE-ConnectionGUID: /P8SYg4YSp2bxFqP4RJn9g==
X-CSE-MsgGUID: 7RVIGNQ7R4ap/RX/ELIZuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46232800"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="46232800"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 05:33:35 -0700
X-CSE-ConnectionGUID: UHDWTNl1Rq+Mnq6J2GJQ/g==
X-CSE-MsgGUID: ILWUKB5mRr+AWZGDTV3RsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="130480244"
Received: from gklab-003-014.igk.intel.com ([10.211.116.96])
 by fmviesa007.fm.intel.com with ESMTP; 16 Apr 2025 05:33:33 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Wed, 16 Apr 2025 14:19:20 +0200
Message-ID: <20250416122142.86176-24-milena.olech@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20250416122142.86176-2-milena.olech@intel.com>
References: <20250416122142.86176-2-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744806815; x=1776342815;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pNSzYfbJYxbziDKB1Fa1CJCpNCxliGlfCl+n0IPYd6o=;
 b=FFiSsLw4BKwlT4R2OPRANgRqSLO0vJTT9pPkp8o974qxkhSX/dZms0uV
 KAK4MVzM5b7vn6/bBJIitMvZgiu5XtSQtu46lJCXQ9JmHjVJnECe8otPg
 9SKPzijDmiZUSWFOfGb5d8hsompN62r2aoj9Le4KT1p/NxyxAEt/Z/Pfp
 0McA8Kn4R3n4+/na0klOVtza2aznP4a8U7Gb+C/MlIlq/ZgC3QS685aBN
 kYY+Y+3is5R8GMDDB6H54CMnsSiyBxlhrAdpqRZ+pSDmnz/qz+GMfpy5Y
 khHtTh7pdO/xIoGLPfDUl5j0dyvJOq0CxO2NM9y4Mdu6NV9Sv03uIKQpV
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FFiSsLw4
Subject: [Intel-wired-lan] [PATCH v12 iwl-next 09/11] idpf: add Tx timestamp
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
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
---
v10 -> v11: use one lock for both free/in-use latches lists, allocate
each latch separately
v7 -> v8: refactor idpf_for_each_vport, change a function that
checks if Tx timestamp for a given vport is enabled
v2 -> v3: revert changes in idpf_for_each_vport, fix minor issues
v1 -> v2: change the idpf_for_each_vport macro

 drivers/net/ethernet/intel/idpf/idpf.h        |  10 ++
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    |  61 +++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  93 ++++++++++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  11 ++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 125 +++++++++++++++++-
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  12 +-
 6 files changed, 308 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index eb80b7f1e912..e1afacc0aa80 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -294,6 +294,7 @@ struct idpf_port_stats {
  * @port_stats: per port csum, header split, and other offload stats
  * @link_up: True if link is up
  * @sw_marker_wq: workqueue for marker packets
+ * @tx_tstamp_caps: Capabilities negotiated for Tx timestamping
  */
 struct idpf_vport {
 	u16 num_txq;
@@ -338,6 +339,8 @@ struct idpf_vport {
 	bool link_up;
 
 	wait_queue_head_t sw_marker_wq;
+
+	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
 };
 
 /**
@@ -482,6 +485,13 @@ struct idpf_vport_config {
 
 struct idpf_vc_xn_manager;
 
+#define idpf_for_each_vport(adapter, iter) \
+	for (struct idpf_vport **__##iter = &(adapter)->vports[0], \
+	     *iter = (adapter)->max_vports ? *__##iter : NULL; \
+	     iter; \
+	     iter = (++__##iter) < &(adapter)->vports[(adapter)->max_vports] ? \
+	     *__##iter : NULL)
+
 /**
  * struct idpf_adapter - Device data struct generated on probe
  * @pdev: PCI device struct given on probe
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index ea6ebd1391e1..f6e65c995509 100644
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
@@ -528,6 +535,57 @@ static int idpf_ptp_create_clock(const struct idpf_adapter *adapter)
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
+	/* Remove list with free latches */
+	spin_lock(&vport->tx_tstamp_caps->latches_lock);
+
+	head = &vport->tx_tstamp_caps->latches_free;
+	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
+		list_del(&ptp_tx_tstamp->list_member);
+		kfree(ptp_tx_tstamp);
+	}
+
+	/* Remove list with latches in use */
+	head = &vport->tx_tstamp_caps->latches_in_use;
+	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
+		list_del(&ptp_tx_tstamp->list_member);
+		kfree(ptp_tx_tstamp);
+	}
+
+	spin_unlock(&vport->tx_tstamp_caps->latches_lock);
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
+	idpf_for_each_vport(adapter, vport) {
+		if (!idpf_ptp_is_vport_tx_tstamp_ena(vport))
+			continue;
+
+		idpf_ptp_release_vport_tstamp(vport);
+	}
+}
+
 /**
  * idpf_ptp_init - Initialize PTP hardware clock support
  * @adapter: Driver specific private structure
@@ -614,6 +672,9 @@ void idpf_ptp_release(struct idpf_adapter *adapter)
 	if (!ptp)
 		return;
 
+	if (ptp->tx_tstamp_access != IDPF_PTP_NONE)
+		idpf_ptp_release_tstamp(adapter);
+
 	if (ptp->clock)
 		ptp_clock_unregister(ptp->clock);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index 8022ed31defd..c670ce872430 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -91,6 +91,68 @@ struct idpf_ptp_secondary_mbx {
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
+ * @latches_lock: the lock to the lists of free/used timestamp indexes
+ * @status_lock: the lock to the status tracker
+ * @latches_free: the list of the free Tx timestamps latches
+ * @latches_in_use: the list of the used Tx timestamps latches
+ * @tx_tstamp_status: Tx tstamp status tracker
+ */
+struct idpf_ptp_vport_tx_tstamp_caps {
+	u32 vport_id;
+	u16 num_entries;
+	u16 tstamp_ns_lo_bit;
+	spinlock_t latches_lock;
+	spinlock_t status_lock;
+	struct list_head latches_free;
+	struct list_head latches_in_use;
+	struct idpf_ptp_tx_tstamp_status tx_tstamp_status[];
+};
+
 /**
  * struct idpf_ptp - PTP parameters
  * @info: structure defining PTP hardware capabilities
@@ -105,6 +167,7 @@ struct idpf_ptp_secondary_mbx {
  * @get_cross_tstamp_access: access type for the cross timestamping
  * @set_dev_clk_time_access: access type for setting the device clock time
  * @adj_dev_clk_time_access: access type for the adjusting the device clock
+ * @tx_tstamp_access: access type for the Tx timestamp value read
  * @rsv: reserved bits
  * @secondary_mbx: parameters for using dedicated PTP mailbox
  * @read_dev_clk_lock: spinlock protecting access to the device clock read
@@ -123,7 +186,8 @@ struct idpf_ptp {
 	enum idpf_ptp_access get_cross_tstamp_access:2;
 	enum idpf_ptp_access set_dev_clk_time_access:2;
 	enum idpf_ptp_access adj_dev_clk_time_access:2;
-	u8 rsv;
+	enum idpf_ptp_access tx_tstamp_access:2;
+	u8 rsv:6;
 	struct idpf_ptp_secondary_mbx secondary_mbx;
 	spinlock_t read_dev_clk_lock;
 };
@@ -152,6 +216,27 @@ struct idpf_ptp_dev_timers {
 	u64 dev_clk_time_ns;
 };
 
+/**
+ * idpf_ptp_is_vport_tx_tstamp_ena - Verify the Tx timestamping enablement for
+ *				     a given vport.
+ * @vport: Virtual port structure
+ *
+ * Tx timestamp capabilities are negotiated with the Control Plane only if the
+ * device clock value can be read, Tx timestamp access type is different than
+ * NONE, and the PTP clock for the adapter is created. When all those conditions
+ * are satisfied, Tx timestamp feature is enabled and tx_tstamp_caps is
+ * allocated and fulfilled.
+ *
+ * Return: true if the Tx timestamping is enabled, false otherwise.
+ */
+static inline bool idpf_ptp_is_vport_tx_tstamp_ena(struct idpf_vport *vport)
+{
+	if (!vport->tx_tstamp_caps)
+		return false;
+	else
+		return true;
+}
+
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 int idpf_ptp_init(struct idpf_adapter *adapter);
 void idpf_ptp_release(struct idpf_adapter *adapter);
@@ -164,6 +249,7 @@ int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
 int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time);
 int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval);
 int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta);
+int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport);
 #else /* CONFIG_PTP_1588_CLOCK */
 static inline int idpf_ptp_init(struct idpf_adapter *adapter)
 {
@@ -212,5 +298,10 @@ static inline int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter,
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
index b7c9c5d84350..9f369bbea0fe 100644
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
@@ -3133,6 +3135,7 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	u16 rx_itr[] = {2, 8, 32, 96, 128};
 	struct idpf_rss_data *rss_data;
 	u16 idx = vport->idx;
+	int err;
 
 	vport_config = adapter->vport_config[idx];
 	rss_data = &vport_config->user_config.rss_data;
@@ -3167,6 +3170,14 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
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
index b8185778cd07..0600b0cc34fc 100644
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
@@ -315,3 +316,125 @@ int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval)
 
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
+	struct virtchnl2_ptp_tx_tstamp_latch_caps tx_tstamp_latch_caps;
+	struct idpf_ptp_vport_tx_tstamp_caps *tstamp_caps;
+	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp, *tmp;
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
+	spin_lock_init(&tstamp_caps->latches_lock);
+	spin_lock_init(&tstamp_caps->status_lock);
+
+	tstamp_caps->tstamp_ns_lo_bit = rcv_tx_tstamp_caps->tstamp_ns_lo_bit;
+
+	for (u16 i = 0; i < tstamp_caps->num_entries; i++) {
+		__le32 offset_l, offset_h;
+
+		ptp_tx_tstamp = kzalloc(sizeof(*ptp_tx_tstamp), GFP_KERNEL);
+		if (!ptp_tx_tstamp) {
+			err = -ENOMEM;
+			goto err_free_ptp_tx_stamp_list;
+		}
+
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
index db9523ef3fa7..11b8f6f05799 100644
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
2.43.5

