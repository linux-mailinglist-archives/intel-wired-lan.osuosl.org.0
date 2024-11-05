Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F9E9BD7D4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 22:49:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C1B18117A;
	Tue,  5 Nov 2024 21:49:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M-sndvQl-N4q; Tue,  5 Nov 2024 21:49:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 108888116B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730843366;
	bh=7vSOklN+QPk5aD5Sxbgtq5tjMM+w1TqENRYrT0juU4A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R0oBkIvle6Owz1tT2CfediBCsO2ivOTIzqSxFnOM1ozMUPJMKDAz3ia7l9Wf3KUxQ
	 HoMrTRKammMRvggvrFraTOJ93QW4ngKSX4nB4bkYgUM4fvmM0CbjimhKdGjm7cZzfa
	 tFnXPPbnnaLf3KjLmjytcxiZ4KAjagXSoCmpdquF2RbXKcqQmf4CyQtFEuqFuXFwmT
	 wT859avOTjyTCsod64wPDCBs8KFLtXOvI071+k1FUx9w+N28R3FE0OQ9aI1QDhkzVN
	 rEDzKUbuHxEdQmJ5JOnLOnfdQXT35Se5WbN2Qk5MLnCEgPqemF5U8TcSW61Z/Iwp/9
	 Gc8gP8R3MZF5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 108888116B;
	Tue,  5 Nov 2024 21:49:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 06C29B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 954784067B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:49:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yys-aYGTEoh4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 21:49:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=tarun.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D320740683
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D320740683
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D320740683
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:49:17 +0000 (UTC)
X-CSE-ConnectionGUID: mJHbJUBQSsO6FOtufIpLxw==
X-CSE-MsgGUID: EJdAKUPASqa/rsMTv2OPhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30735924"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="30735924"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 13:49:16 -0800
X-CSE-ConnectionGUID: 23Rl6e5HRgSRE/Xx1pSwgg==
X-CSE-MsgGUID: ENh/6zA8RoeyqQBS8K5QWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="85010416"
Received: from coyotepass-34596-p1.jf.intel.com ([10.166.80.48])
 by orviesa008.jf.intel.com with ESMTP; 05 Nov 2024 13:49:04 -0800
From: Tarun K Singh <tarun.k.singh@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue,  5 Nov 2024 13:48:57 -0500
Message-ID: <20241105184859.741473-3-tarun.k.singh@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241105184859.741473-1-tarun.k.singh@intel.com>
References: <20241105184859.741473-1-tarun.k.singh@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730843358; x=1762379358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SqivNwsZCDrv+Qryo7XrCbD1oc37ghHHBjHvf3JsNiM=;
 b=VKH2WkP0UDBH3+lHecyoZo7GdMDwHTKbEPR3vZX+NgO9DJsNTqnlSwKM
 jAklZxfZz1hHTh0JWSMsiLEqH+XL99MgdUHOdQ11OBlgOFbRMhgM2DAp7
 x4aRmT0tqRQp3Pcvci5WeiDAel18hRHjtzBzQrfoVj12QCuxJ6JfRW8VF
 pxKslo7o8qMzL2cSZVDpRbj0kaMWDYuocVE8EK4VkE1uMzycM5ZeS+Nm+
 vmVeZfbGpoKYygHeZ0e6yVngTyou+HXCgb4yhZYmoLyflvPwr1l3CVJIa
 f+dFYYVkGdgaEU0rr+02dTp/iuq5ttRzesREHIsyt/1kL1NWdiV2jVGM1
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VKH2WkP0
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/4] idpf: rename
 vport_ctrl_lock
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

Rename 'vport_ctrl_lock' to 'vport_cfg_lock'. Rename related
functions name for lock and unlock.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Tarun K Singh <tarun.k.singh@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        | 16 +++----
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 46 +++++++++----------
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 24 +++++-----
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  4 +-
 4 files changed, 45 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index d87ed50af681..8dea2dd784af 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -526,7 +526,7 @@ struct idpf_vc_xn_manager;
  * @crc_enable: Enable CRC insertion offload
  * @req_tx_splitq: TX split or single queue model to request
  * @req_rx_splitq: RX split or single queue model to request
- * @vport_ctrl_lock: Lock to protect the vport control flow
+ * @vport_cfg_lock: Lock to protect the vport config flow
  * @vector_lock: Lock to protect vector distribution
  * @queue_lock: Lock to protect queue distribution
  * @vc_buf_lock: Lock to protect virtchnl buffer
@@ -583,7 +583,7 @@ struct idpf_adapter {
 	bool req_tx_splitq;
 	bool req_rx_splitq;
 
-	struct mutex vport_ctrl_lock;
+	struct mutex vport_cfg_lock;
 	struct mutex vector_lock;
 	struct mutex queue_lock;
 	struct mutex vc_buf_lock;
@@ -787,24 +787,24 @@ static inline u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter)
 }
 
 /**
- * idpf_vport_ctrl_lock - Acquire the vport control lock
+ * idpf_vport_cfg_lock - Acquire the vport config lock
  * @adapter: private data struct
  *
  * This lock should be used by non-datapath code to protect against vport
  * destruction.
  */
-static inline void idpf_vport_ctrl_lock(struct idpf_adapter *adapter)
+static inline void idpf_vport_cfg_lock(struct idpf_adapter *adapter)
 {
-	mutex_lock(&adapter->vport_ctrl_lock);
+	mutex_lock(&adapter->vport_cfg_lock);
 }
 
 /**
- * idpf_vport_ctrl_unlock - Release the vport control lock
+ * idpf_vport_cfg_unlock - Release the vport config lock
  * @adapter: private data struct
  */
-static inline void idpf_vport_ctrl_unlock(struct idpf_adapter *adapter)
+static inline void idpf_vport_cfg_unlock(struct idpf_adapter *adapter)
 {
-	mutex_unlock(&adapter->vport_ctrl_lock);
+	mutex_unlock(&adapter->vport_cfg_lock);
 }
 
 void idpf_statistics_task(struct work_struct *work);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index e5ac3e5a50ce..b3ed1d9a80ae 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -17,20 +17,20 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXRINGS:
 		cmd->data = vport->num_rxq;
-		idpf_vport_ctrl_unlock(adapter);
+		idpf_vport_cfg_unlock(adapter);
 
 		return 0;
 	default:
 		break;
 	}
 
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return -EOPNOTSUPP;
 }
@@ -90,7 +90,7 @@ static int idpf_get_rxfh(struct net_device *netdev,
 	u16 i;
 
 	adapter = np->adapter;
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 
 	if (!idpf_is_cap_ena_all(adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS)) {
 		err = -EOPNOTSUPP;
@@ -112,7 +112,7 @@ static int idpf_get_rxfh(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return err;
 }
@@ -137,7 +137,7 @@ static int idpf_set_rxfh(struct net_device *netdev,
 	int err = 0;
 	u16 lut;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	if (!idpf_is_cap_ena_all(adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS)) {
@@ -166,7 +166,7 @@ static int idpf_set_rxfh(struct net_device *netdev,
 	err = idpf_config_rss(vport);
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return err;
 }
@@ -234,7 +234,7 @@ static int idpf_set_channels(struct net_device *netdev,
 		return -EINVAL;
 	}
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	idx = vport->idx;
@@ -278,7 +278,7 @@ static int idpf_set_channels(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return err;
 }
@@ -301,7 +301,7 @@ static void idpf_get_ringparam(struct net_device *netdev,
 	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	ring->rx_max_pending = IDPF_MAX_RXQ_DESC;
@@ -311,7 +311,7 @@ static void idpf_get_ringparam(struct net_device *netdev,
 
 	kring->tcp_data_split = idpf_vport_get_hsplit(vport);
 
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 }
 
 /**
@@ -336,7 +336,7 @@ static int idpf_set_ringparam(struct net_device *netdev,
 	int i, err = 0;
 	u16 idx;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	idx = vport->idx;
@@ -395,7 +395,7 @@ static int idpf_set_ringparam(struct net_device *netdev,
 	err = idpf_initiate_soft_reset(vport, IDPF_SR_Q_DESC_CHANGE);
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return err;
 }
@@ -878,11 +878,11 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 	bool is_splitq;
 	u16 qtype;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	if (np->state != __IDPF_VPORT_UP) {
-		idpf_vport_ctrl_unlock(adapter);
+		idpf_vport_cfg_unlock(adapter);
 
 		return;
 	}
@@ -949,7 +949,7 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 
 	rcu_read_unlock();
 
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 }
 
 /**
@@ -1031,7 +1031,7 @@ static int idpf_get_q_coalesce(struct net_device *netdev,
 	const struct idpf_vport *vport;
 	int err = 0;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	if (np->state != __IDPF_VPORT_UP)
@@ -1051,7 +1051,7 @@ static int idpf_get_q_coalesce(struct net_device *netdev,
 				      VIRTCHNL2_QUEUE_TYPE_TX);
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return err;
 }
@@ -1207,7 +1207,7 @@ static int idpf_set_coalesce(struct net_device *netdev,
 	struct idpf_vport *vport;
 	int i, err = 0;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	if (np->state != __IDPF_VPORT_UP)
@@ -1226,7 +1226,7 @@ static int idpf_set_coalesce(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return err;
 }
@@ -1246,19 +1246,19 @@ static int idpf_set_per_q_coalesce(struct net_device *netdev, u32 q_num,
 	struct idpf_vport *vport;
 	int err;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	err = idpf_set_q_coalesce(vport, ec, q_num, false);
 	if (err) {
-		idpf_vport_ctrl_unlock(adapter);
+		idpf_vport_cfg_unlock(adapter);
 
 		return err;
 	}
 
 	err = idpf_set_q_coalesce(vport, ec, q_num, true);
 
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index a870748a8be7..778dc71fbf4a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -910,12 +910,12 @@ static int idpf_stop(struct net_device *netdev)
 	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
 		return 0;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	idpf_vport_stop(vport);
 
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return 0;
 }
@@ -1733,7 +1733,7 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 	int err;
 	u16 i;
 
-	mutex_lock(&adapter->vport_ctrl_lock);
+	mutex_lock(&adapter->vport_cfg_lock);
 
 	dev_info(dev, "Device HW Reset initiated\n");
 
@@ -1798,7 +1798,7 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 		msleep(100);
 
 unlock_mutex:
-	mutex_unlock(&adapter->vport_ctrl_lock);
+	mutex_unlock(&adapter->vport_cfg_lock);
 
 	return err;
 }
@@ -2103,7 +2103,7 @@ static int idpf_set_features(struct net_device *netdev,
 	struct idpf_vport *vport;
 	int err = 0;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	if (idpf_is_reset_in_prog(adapter)) {
@@ -2132,7 +2132,7 @@ static int idpf_set_features(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return err;
 }
@@ -2155,12 +2155,12 @@ static int idpf_open(struct net_device *netdev)
 	struct idpf_vport *vport;
 	int err;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	err = idpf_vport_open(vport);
 
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return err;
 }
@@ -2178,14 +2178,14 @@ static int idpf_change_mtu(struct net_device *netdev, int new_mtu)
 	struct idpf_vport *vport;
 	int err;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	WRITE_ONCE(netdev->mtu, new_mtu);
 
 	err = idpf_initiate_soft_reset(vport, IDPF_SR_MTU_CHANGE);
 
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return err;
 }
@@ -2267,7 +2267,7 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	struct idpf_vport *vport;
 	int err = 0;
 
-	idpf_vport_ctrl_lock(adapter);
+	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS,
@@ -2301,7 +2301,7 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	eth_hw_addr_set(netdev, addr->sa_data);
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(adapter);
+	idpf_vport_cfg_unlock(adapter);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index db476b3314c8..0522b3a6f42c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -72,7 +72,7 @@ static void idpf_remove(struct pci_dev *pdev)
 	kfree(adapter->vcxn_mngr);
 	adapter->vcxn_mngr = NULL;
 
-	mutex_destroy(&adapter->vport_ctrl_lock);
+	mutex_destroy(&adapter->vport_cfg_lock);
 	mutex_destroy(&adapter->vector_lock);
 	mutex_destroy(&adapter->queue_lock);
 	mutex_destroy(&adapter->vc_buf_lock);
@@ -229,7 +229,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_cfg_hw;
 	}
 
-	mutex_init(&adapter->vport_ctrl_lock);
+	mutex_init(&adapter->vport_cfg_lock);
 	mutex_init(&adapter->vector_lock);
 	mutex_init(&adapter->queue_lock);
 	mutex_init(&adapter->vc_buf_lock);
-- 
2.46.0

