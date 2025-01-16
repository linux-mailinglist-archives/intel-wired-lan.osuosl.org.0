Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0343A13B5F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 14:55:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 672DA419E1;
	Thu, 16 Jan 2025 13:55:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sxcTVWolD0Ei; Thu, 16 Jan 2025 13:55:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D6B7419E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737035747;
	bh=SnbkWZVumUTUfqe6Wqt5k7IFE3E2XZri/W0cEXszss8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bpdTYbidfn7kEc3ba400zV7Zp/aiobUDbx5hUDCBJ/OTKEPl3qsuaC1zTpMm8QdSh
	 MV1EPTTOOSpoy3lAdjKJzz1yzDcb4L5jKYqa/MyDJeVIU38q6FYlf3vd6CIkM9D0+9
	 YR1s6vQYbX2nYjmg1n2KJqkSSpKEV7TpcBu3V7XE1VLdLvp1IYLrBQXAau6/z5lmCn
	 a04U6ZvIS2rez7CsPY+za0M17pDRHFFMzD6QyNsnPKgob3Z4Dxf9a66RROQoXe007F
	 PWyl3J4DS1wJA1QeZJsRn3G9GzuCUSeE0PGBvjaZWwWufrOXIJLyghWMM5F+SPpur4
	 RpAKbrUHyFvSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D6B7419E7;
	Thu, 16 Jan 2025 13:55:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BF7CC94B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 13:55:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9FFB54018B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 13:55:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sxjn7P58CuLi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 13:55:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C257840187
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C257840187
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C257840187
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 13:55:42 +0000 (UTC)
X-CSE-ConnectionGUID: 67UuwTs5SM+BOFXTNbE8SQ==
X-CSE-MsgGUID: CQstqnssQvG7O/HETXmGVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="48815287"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="48815287"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 05:55:41 -0800
X-CSE-ConnectionGUID: IbfPlEN5TOOoTx3QiO4huA==
X-CSE-MsgGUID: x6VAw3bRTHGGOCc+1gI+jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="142769881"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.48])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 05:55:38 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Thu, 16 Jan 2025 06:55:30 -0700
Message-ID: <20250116135530.94562-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737035742; x=1768571742;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j8OIq66lVwHLNAiZpaavtl9Qcru3dp2btV8QWQ4UWgQ=;
 b=UZ21wQ03hA5ZIahNIUDIDdKHL8K2+qnrgvSdHcFs5fY2nnC+M0cWnPq1
 /UWP6RcGCOaldFWSld85f1k3pD3SmFe8FNCfx7/Kx1E4+piyi50NyB+x1
 Z2+81R2pPi8XO2hRlDH3ln4bZ32dy3XhR1XujsmQ0ZP8vdSxIZrC6FbPK
 Au5tpS3CrMdjHnNvqJDXPEeignbsHEyJ/gg/nsobvfDixJjq3zIEfSzRZ
 vXc2zKKG14TYqjTUaFC/KwrWzVVSs7yDnryxjL4oQEX71BeXZwlDqcI6n
 7BZ+u4hq4SaH8v7uEnuynUvu6AyRdK3VO2UbhhUMrvZ+ENZT2ppKbeCxv
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UZ21wQ03
Subject: [Intel-wired-lan] [PATCH iwl-next] idpf: modify vport_cfg_lock to
 be per-vport
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

The vport config lock protects the vports queues and config data. These
mainly change in soft reset path. Since there is no dependency across
vports, there is no need for this lock to be global.

Move the lock to be per-vport and allow one vport to reset without
locking the rest of the vports.

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
depends on iwl series:
https://patchwork.ozlabs.org/project/intel-wired-lan/list/?series=431435
---
 drivers/net/ethernet/intel/idpf/idpf.h        | 16 ++---
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 58 +++++++++----------
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 31 +++++-----
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  2 -
 4 files changed, 50 insertions(+), 57 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 34dbdc7d6c88..3fcf4072c9ec 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -290,6 +290,7 @@ struct idpf_port_stats {
  * @port_stats: per port csum, header split, and other offload stats
  * @link_up: True if link is up
  * @sw_marker_wq: workqueue for marker packets
+ * @vport_cfg_lock: Lock to protect access to vports during alloc/dealloc/reset
  */
 struct idpf_vport {
 	u16 num_txq;
@@ -334,6 +335,7 @@ struct idpf_vport {
 	bool link_up;
 
 	wait_queue_head_t sw_marker_wq;
+	struct mutex vport_cfg_lock;
 };
 
 /**
@@ -527,7 +529,6 @@ struct idpf_vc_xn_manager;
  * @req_tx_splitq: TX split or single queue model to request
  * @req_rx_splitq: RX split or single queue model to request
  * @vport_init_lock: Lock to protect vport init, re-init, and deinit flow
- * @vport_cfg_lock: Lock to protect the vport config flow
  * @vector_lock: Lock to protect vector distribution
  * @queue_lock: Lock to protect queue distribution
  * @vc_buf_lock: Lock to protect virtchnl buffer
@@ -585,7 +586,6 @@ struct idpf_adapter {
 	bool req_rx_splitq;
 
 	struct mutex vport_init_lock;
-	struct mutex vport_cfg_lock;
 	struct mutex vector_lock;
 	struct mutex queue_lock;
 	struct mutex vc_buf_lock;
@@ -812,23 +812,23 @@ static inline void idpf_vport_init_unlock(struct idpf_adapter *adapter)
 
 /**
  * idpf_vport_cfg_lock - Acquire the vport config lock
- * @adapter: private data struct
+ * @vport: private data struct
  *
  * This lock should be used by non-datapath code to protect against vport
  * destruction.
  */
-static inline void idpf_vport_cfg_lock(struct idpf_adapter *adapter)
+static inline void idpf_vport_cfg_lock(struct idpf_vport *vport)
 {
-	mutex_lock(&adapter->vport_cfg_lock);
+	mutex_lock(&vport->vport_cfg_lock);
 }
 
 /**
  * idpf_vport_cfg_unlock - Release the vport config lock
- * @adapter: private data struct
+ * @vport: private data struct
  */
-static inline void idpf_vport_cfg_unlock(struct idpf_adapter *adapter)
+static inline void idpf_vport_cfg_unlock(struct idpf_vport *vport)
 {
-	mutex_unlock(&adapter->vport_cfg_lock);
+	mutex_unlock(&vport->vport_cfg_lock);
 }
 
 void idpf_statistics_task(struct work_struct *work);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index b3ed1d9a80ae..d2b9b15cfd75 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -14,23 +14,22 @@
 static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 			  u32 __always_unused *rule_locs)
 {
-	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXRINGS:
 		cmd->data = vport->num_rxq;
-		idpf_vport_cfg_unlock(adapter);
+		idpf_vport_cfg_unlock(vport);
 
 		return 0;
 	default:
 		break;
 	}
 
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return -EOPNOTSUPP;
 }
@@ -86,11 +85,13 @@ static int idpf_get_rxfh(struct net_device *netdev,
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_rss_data *rss_data;
 	struct idpf_adapter *adapter;
+	struct idpf_vport *vport;
 	int err = 0;
 	u16 i;
 
 	adapter = np->adapter;
-	idpf_vport_cfg_lock(adapter);
+	vport = np->vport;
+	idpf_vport_cfg_lock(vport);
 
 	if (!idpf_is_cap_ena_all(adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS)) {
 		err = -EOPNOTSUPP;
@@ -112,7 +113,7 @@ static int idpf_get_rxfh(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return err;
 }
@@ -137,8 +138,8 @@ static int idpf_set_rxfh(struct net_device *netdev,
 	int err = 0;
 	u16 lut;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	if (!idpf_is_cap_ena_all(adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS)) {
 		err = -EOPNOTSUPP;
@@ -166,7 +167,7 @@ static int idpf_set_rxfh(struct net_device *netdev,
 	err = idpf_config_rss(vport);
 
 unlock_mutex:
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return err;
 }
@@ -219,7 +220,6 @@ static void idpf_get_channels(struct net_device *netdev,
 static int idpf_set_channels(struct net_device *netdev,
 			     struct ethtool_channels *ch)
 {
-	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport_config *vport_config;
 	unsigned int num_req_tx_q;
 	unsigned int num_req_rx_q;
@@ -234,8 +234,8 @@ static int idpf_set_channels(struct net_device *netdev,
 		return -EINVAL;
 	}
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	idx = vport->idx;
 	vport_config = vport->adapter->vport_config[idx];
@@ -278,7 +278,7 @@ static int idpf_set_channels(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return err;
 }
@@ -298,11 +298,10 @@ static void idpf_get_ringparam(struct net_device *netdev,
 			       struct kernel_ethtool_ringparam *kring,
 			       struct netlink_ext_ack *ext_ack)
 {
-	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	ring->rx_max_pending = IDPF_MAX_RXQ_DESC;
 	ring->tx_max_pending = IDPF_MAX_TXQ_DESC;
@@ -311,7 +310,7 @@ static void idpf_get_ringparam(struct net_device *netdev,
 
 	kring->tcp_data_split = idpf_vport_get_hsplit(vport);
 
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 }
 
 /**
@@ -329,15 +328,14 @@ static int idpf_set_ringparam(struct net_device *netdev,
 			      struct kernel_ethtool_ringparam *kring,
 			      struct netlink_ext_ack *ext_ack)
 {
-	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport_user_config_data *config_data;
 	u32 new_rx_count, new_tx_count;
 	struct idpf_vport *vport;
 	int i, err = 0;
 	u16 idx;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	idx = vport->idx;
 
@@ -395,7 +393,7 @@ static int idpf_set_ringparam(struct net_device *netdev,
 	err = idpf_initiate_soft_reset(vport, IDPF_SR_Q_DESC_CHANGE);
 
 unlock_mutex:
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return err;
 }
@@ -870,7 +868,6 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 				   u64 *data)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
-	struct idpf_adapter *adapter = np->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_vport *vport;
 	unsigned int total = 0;
@@ -878,11 +875,11 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 	bool is_splitq;
 	u16 qtype;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	if (np->state != __IDPF_VPORT_UP) {
-		idpf_vport_cfg_unlock(adapter);
+		idpf_vport_cfg_unlock(vport);
 
 		return;
 	}
@@ -949,7 +946,7 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 
 	rcu_read_unlock();
 
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 }
 
 /**
@@ -1027,12 +1024,11 @@ static int idpf_get_q_coalesce(struct net_device *netdev,
 			       u32 q_num)
 {
 	const struct idpf_netdev_priv *np = netdev_priv(netdev);
-	struct idpf_adapter *adapter = np->adapter;
-	const struct idpf_vport *vport;
+	struct idpf_vport *vport;
 	int err = 0;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	if (np->state != __IDPF_VPORT_UP)
 		goto unlock_mutex;
@@ -1051,7 +1047,7 @@ static int idpf_get_q_coalesce(struct net_device *netdev,
 				      VIRTCHNL2_QUEUE_TYPE_TX);
 
 unlock_mutex:
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return err;
 }
@@ -1203,12 +1199,11 @@ static int idpf_set_coalesce(struct net_device *netdev,
 			     struct netlink_ext_ack *extack)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
-	struct idpf_adapter *adapter = np->adapter;
 	struct idpf_vport *vport;
 	int i, err = 0;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	if (np->state != __IDPF_VPORT_UP)
 		goto unlock_mutex;
@@ -1226,7 +1221,7 @@ static int idpf_set_coalesce(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return err;
 }
@@ -1242,23 +1237,22 @@ static int idpf_set_coalesce(struct net_device *netdev,
 static int idpf_set_per_q_coalesce(struct net_device *netdev, u32 q_num,
 				   struct ethtool_coalesce *ec)
 {
-	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 	int err;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	err = idpf_set_q_coalesce(vport, ec, q_num, false);
 	if (err) {
-		idpf_vport_cfg_unlock(adapter);
+		idpf_vport_cfg_unlock(vport);
 
 		return err;
 	}
 
 	err = idpf_set_q_coalesce(vport, ec, q_num, true);
 
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 931d0f988c95..83a27bec15ab 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -910,12 +910,12 @@ static int idpf_stop(struct net_device *netdev)
 	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
 		return 0;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	idpf_vport_stop(vport);
 
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return 0;
 }
@@ -1001,9 +1001,9 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 
 	idpf_deinit_mac_addr(vport);
 
-	idpf_vport_cfg_lock(adapter);
+	idpf_vport_cfg_lock(vport);
 	idpf_vport_stop(vport);
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
 		idpf_decfg_netdev(vport);
@@ -1016,6 +1016,7 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 		np->vport = NULL;
 	}
 
+	mutex_destroy(&vport->vport_cfg_lock);
 	idpf_vport_rel(vport);
 
 	adapter->vports[i] = NULL;
@@ -1156,6 +1157,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	adapter->vports[idx] = vport;
 	adapter->vport_ids[idx] = idpf_get_vport_id(vport);
 
+	mutex_init(&vport->vport_cfg_lock);
 	adapter->num_alloc_vports++;
 	/* prepare adapter->next_vport for next use */
 	adapter->next_vport = idpf_get_free_slot(adapter);
@@ -1526,9 +1528,9 @@ void idpf_init_task(struct work_struct *work)
 	np = netdev_priv(vport->netdev);
 	np->state = __IDPF_VPORT_DOWN;
 	if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED, vport_config->flags)) {
-		idpf_vport_cfg_lock(adapter);
+		idpf_vport_cfg_lock(vport);
 		idpf_vport_open(vport);
-		idpf_vport_cfg_unlock(adapter);
+		idpf_vport_cfg_unlock(vport);
 	}
 
 	/* Spawn and return 'idpf_init_task' work queue until all the
@@ -2131,8 +2133,8 @@ static int idpf_set_features(struct net_device *netdev,
 	struct idpf_vport *vport;
 	int err = 0;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	if (idpf_is_reset_in_prog(adapter)) {
 		dev_err(&adapter->pdev->dev, "Device is resetting, changing netdev features temporarily unavailable.\n");
@@ -2160,7 +2162,7 @@ static int idpf_set_features(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return err;
 }
@@ -2186,12 +2188,12 @@ static int idpf_open(struct net_device *netdev)
 	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
 		return 0;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	err = idpf_vport_open(vport);
 
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return err;
 }
@@ -2205,18 +2207,17 @@ static int idpf_open(struct net_device *netdev)
  */
 static int idpf_change_mtu(struct net_device *netdev, int new_mtu)
 {
-	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 	int err;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	WRITE_ONCE(netdev->mtu, new_mtu);
 
 	err = idpf_initiate_soft_reset(vport, IDPF_SR_MTU_CHANGE);
 
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return err;
 }
@@ -2298,8 +2299,8 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	struct idpf_vport *vport;
 	int err = 0;
 
-	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
+	idpf_vport_cfg_lock(vport);
 
 	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS,
 			     VIRTCHNL2_CAP_MACFILTER)) {
@@ -2332,7 +2333,7 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	eth_hw_addr_set(netdev, addr->sa_data);
 
 unlock_mutex:
-	idpf_vport_cfg_unlock(adapter);
+	idpf_vport_cfg_unlock(vport);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index da1e3525719f..0864afe047ab 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -80,7 +80,6 @@ static void idpf_remove(struct pci_dev *pdev)
 	adapter->vcxn_mngr = NULL;
 
 	mutex_destroy(&adapter->vport_init_lock);
-	mutex_destroy(&adapter->vport_cfg_lock);
 	mutex_destroy(&adapter->vector_lock);
 	mutex_destroy(&adapter->queue_lock);
 	mutex_destroy(&adapter->vc_buf_lock);
@@ -145,7 +144,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	adapter->req_rx_splitq = true;
 
 	mutex_init(&adapter->vport_init_lock);
-	mutex_init(&adapter->vport_cfg_lock);
 	mutex_init(&adapter->vector_lock);
 	mutex_init(&adapter->queue_lock);
 	mutex_init(&adapter->vc_buf_lock);
-- 
2.43.0

