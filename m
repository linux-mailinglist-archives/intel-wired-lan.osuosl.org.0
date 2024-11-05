Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 690BB9BD7D0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 22:49:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B36108115C;
	Tue,  5 Nov 2024 21:49:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tHJ6dRSr9kTG; Tue,  5 Nov 2024 21:49:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D357C8115A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730843362;
	bh=wVqxE1aHt5aqkR4cQXeLQcIPLX/d+U8mXei+V81qWrA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=grLjBXPW2W2hLdKthyTUV7TXO1+r6RfoFG55q8CMx3ZlomVVarAxB/9bICyWwMk7r
	 KawBNSoEr8EpkEGgAjgdqVvcpt20rNRTFgcU4vcSh4nzCJkFH2+sqjk3vuIxpwCAqA
	 wVB6QQGTGlRXOYPpV46d0ARru/0kGcfXjv7A3+4IsthYm9OGO4p8sr1JDo50ZhBjZB
	 ZOJCBLnLDWkbytg7zD3HBZokaZo2ntrKxDT9mpLc50Y/nX+CVzHVW9lBYlKJZd/9t1
	 1Olw9tfR+Ni20bSnVeEAQ51Qm5E9saUqL89uDicpszlkuhX6z66QCPc44go7uWBnu9
	 /C8fctj29U2Iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D357C8115A;
	Tue,  5 Nov 2024 21:49:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A1781DE2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 185C44067F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:49:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IiuiA87N9mZj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 21:49:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=tarun.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8637940679
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8637940679
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8637940679
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:49:17 +0000 (UTC)
X-CSE-ConnectionGUID: ja6E8xPDT2alCWeuyZMzhw==
X-CSE-MsgGUID: B7quqQCeRYqjNChhLfpSog==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30735922"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="30735922"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 13:49:16 -0800
X-CSE-ConnectionGUID: Zq9IaYIgREGRyD8n98hH4Q==
X-CSE-MsgGUID: zpMM/4kOQeGLiSj8nEmZvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="85010410"
Received: from coyotepass-34596-p1.jf.intel.com ([10.166.80.48])
 by orviesa008.jf.intel.com with ESMTP; 05 Nov 2024 13:49:03 -0800
From: Tarun K Singh <tarun.k.singh@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue,  5 Nov 2024 13:48:56 -0500
Message-ID: <20241105184859.741473-2-tarun.k.singh@intel.com>
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
 bh=LNyBLsD0ODHmt5t/JMdR70uhaS5r3JHEat46z2yXsec=;
 b=RmX92CLVEzaaW4mKg+wyUcaoDOh+s6ti3CGofm3z1tagJQfxqxM6V/bS
 a2Y6dX9nYZoPu+i8arfggntAgOUQ5n5CTAZpB7hRzJFdBUAXpPBLjilcX
 CZt+gF9Y7i94r8xr+a7bwUlrb7n6Wkc1li6yOep0Tlm8tB/2D0V8Sy95F
 P9za1NHuqksHyAkaOUNcwnvCCBY78bcyk4a0Qj6kZslN1rxn+xufVUYbm
 yn1o8Y4pdDuJemNmfY15HuuYdfPMng7uW03W9jcNELa8PYmMyCmpwRCgM
 SqGFV+QJz436oILlXY0Kk2hZtvkpXzaFois6u26bbAkYMgfPlNGeuj0Mo
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RmX92CLV
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/4] idpf: Change function
 argument
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

Change idpf_vport_ctrl_lock's argument from netdev to adapter.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Tarun K Singh <tarun.k.singh@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        | 16 ++---
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 59 ++++++++++---------
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 39 ++++++------
 3 files changed, 58 insertions(+), 56 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 66544faab710..d87ed50af681 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -788,27 +788,23 @@ static inline u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter)
 
 /**
  * idpf_vport_ctrl_lock - Acquire the vport control lock
- * @netdev: Network interface device structure
+ * @adapter: private data struct
  *
  * This lock should be used by non-datapath code to protect against vport
  * destruction.
  */
-static inline void idpf_vport_ctrl_lock(struct net_device *netdev)
+static inline void idpf_vport_ctrl_lock(struct idpf_adapter *adapter)
 {
-	struct idpf_netdev_priv *np = netdev_priv(netdev);
-
-	mutex_lock(&np->adapter->vport_ctrl_lock);
+	mutex_lock(&adapter->vport_ctrl_lock);
 }
 
 /**
  * idpf_vport_ctrl_unlock - Release the vport control lock
- * @netdev: Network interface device structure
+ * @adapter: private data struct
  */
-static inline void idpf_vport_ctrl_unlock(struct net_device *netdev)
+static inline void idpf_vport_ctrl_unlock(struct idpf_adapter *adapter)
 {
-	struct idpf_netdev_priv *np = netdev_priv(netdev);
-
-	mutex_unlock(&np->adapter->vport_ctrl_lock);
+	mutex_unlock(&adapter->vport_ctrl_lock);
 }
 
 void idpf_statistics_task(struct work_struct *work);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 59b1a1a09996..e5ac3e5a50ce 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -14,22 +14,23 @@
 static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 			  u32 __always_unused *rule_locs)
 {
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXRINGS:
 		cmd->data = vport->num_rxq;
-		idpf_vport_ctrl_unlock(netdev);
+		idpf_vport_ctrl_unlock(adapter);
 
 		return 0;
 	default:
 		break;
 	}
 
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return -EOPNOTSUPP;
 }
@@ -88,9 +89,8 @@ static int idpf_get_rxfh(struct net_device *netdev,
 	int err = 0;
 	u16 i;
 
-	idpf_vport_ctrl_lock(netdev);
-
 	adapter = np->adapter;
+	idpf_vport_ctrl_lock(adapter);
 
 	if (!idpf_is_cap_ena_all(adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS)) {
 		err = -EOPNOTSUPP;
@@ -112,7 +112,7 @@ static int idpf_get_rxfh(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return err;
 }
@@ -131,17 +131,15 @@ static int idpf_set_rxfh(struct net_device *netdev,
 			 struct netlink_ext_ack *extack)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
+	struct idpf_adapter *adapter = np->adapter;
 	struct idpf_rss_data *rss_data;
-	struct idpf_adapter *adapter;
 	struct idpf_vport *vport;
 	int err = 0;
 	u16 lut;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
-	adapter = vport->adapter;
-
 	if (!idpf_is_cap_ena_all(adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS)) {
 		err = -EOPNOTSUPP;
 		goto unlock_mutex;
@@ -168,7 +166,7 @@ static int idpf_set_rxfh(struct net_device *netdev,
 	err = idpf_config_rss(vport);
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return err;
 }
@@ -221,6 +219,7 @@ static void idpf_get_channels(struct net_device *netdev,
 static int idpf_set_channels(struct net_device *netdev,
 			     struct ethtool_channels *ch)
 {
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport_config *vport_config;
 	unsigned int num_req_tx_q;
 	unsigned int num_req_rx_q;
@@ -235,7 +234,7 @@ static int idpf_set_channels(struct net_device *netdev,
 		return -EINVAL;
 	}
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	idx = vport->idx;
@@ -279,7 +278,7 @@ static int idpf_set_channels(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return err;
 }
@@ -299,9 +298,10 @@ static void idpf_get_ringparam(struct net_device *netdev,
 			       struct kernel_ethtool_ringparam *kring,
 			       struct netlink_ext_ack *ext_ack)
 {
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	ring->rx_max_pending = IDPF_MAX_RXQ_DESC;
@@ -311,7 +311,7 @@ static void idpf_get_ringparam(struct net_device *netdev,
 
 	kring->tcp_data_split = idpf_vport_get_hsplit(vport);
 
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 }
 
 /**
@@ -329,13 +329,14 @@ static int idpf_set_ringparam(struct net_device *netdev,
 			      struct kernel_ethtool_ringparam *kring,
 			      struct netlink_ext_ack *ext_ack)
 {
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport_user_config_data *config_data;
 	u32 new_rx_count, new_tx_count;
 	struct idpf_vport *vport;
 	int i, err = 0;
 	u16 idx;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	idx = vport->idx;
@@ -394,7 +395,7 @@ static int idpf_set_ringparam(struct net_device *netdev,
 	err = idpf_initiate_soft_reset(vport, IDPF_SR_Q_DESC_CHANGE);
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return err;
 }
@@ -869,6 +870,7 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 				   u64 *data)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
+	struct idpf_adapter *adapter = np->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_vport *vport;
 	unsigned int total = 0;
@@ -876,11 +878,11 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 	bool is_splitq;
 	u16 qtype;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	if (np->state != __IDPF_VPORT_UP) {
-		idpf_vport_ctrl_unlock(netdev);
+		idpf_vport_ctrl_unlock(adapter);
 
 		return;
 	}
@@ -947,7 +949,7 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 
 	rcu_read_unlock();
 
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 }
 
 /**
@@ -1025,10 +1027,11 @@ static int idpf_get_q_coalesce(struct net_device *netdev,
 			       u32 q_num)
 {
 	const struct idpf_netdev_priv *np = netdev_priv(netdev);
+	struct idpf_adapter *adapter = np->adapter;
 	const struct idpf_vport *vport;
 	int err = 0;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	if (np->state != __IDPF_VPORT_UP)
@@ -1048,7 +1051,7 @@ static int idpf_get_q_coalesce(struct net_device *netdev,
 				      VIRTCHNL2_QUEUE_TYPE_TX);
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return err;
 }
@@ -1200,10 +1203,11 @@ static int idpf_set_coalesce(struct net_device *netdev,
 			     struct netlink_ext_ack *extack)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
+	struct idpf_adapter *adapter = np->adapter;
 	struct idpf_vport *vport;
 	int i, err = 0;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	if (np->state != __IDPF_VPORT_UP)
@@ -1222,7 +1226,7 @@ static int idpf_set_coalesce(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return err;
 }
@@ -1238,22 +1242,23 @@ static int idpf_set_coalesce(struct net_device *netdev,
 static int idpf_set_per_q_coalesce(struct net_device *netdev, u32 q_num,
 				   struct ethtool_coalesce *ec)
 {
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 	int err;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	err = idpf_set_q_coalesce(vport, ec, q_num, false);
 	if (err) {
-		idpf_vport_ctrl_unlock(netdev);
+		idpf_vport_ctrl_unlock(adapter);
 
 		return err;
 	}
 
 	err = idpf_set_q_coalesce(vport, ec, q_num, true);
 
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index b4fbb99bfad2..a870748a8be7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -904,18 +904,18 @@ static void idpf_vport_stop(struct idpf_vport *vport)
  */
 static int idpf_stop(struct net_device *netdev)
 {
-	struct idpf_netdev_priv *np = netdev_priv(netdev);
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 
-	if (test_bit(IDPF_REMOVE_IN_PROG, np->adapter->flags))
+	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
 		return 0;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	idpf_vport_stop(vport);
 
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return 0;
 }
@@ -2098,16 +2098,14 @@ static int idpf_vport_manage_rss_lut(struct idpf_vport *vport)
 static int idpf_set_features(struct net_device *netdev,
 			     netdev_features_t features)
 {
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	netdev_features_t changed = netdev->features ^ features;
-	struct idpf_adapter *adapter;
 	struct idpf_vport *vport;
 	int err = 0;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
-	adapter = vport->adapter;
-
 	if (idpf_is_reset_in_prog(adapter)) {
 		dev_err(&adapter->pdev->dev, "Device is resetting, changing netdev features temporarily unavailable.\n");
 		err = -EBUSY;
@@ -2134,7 +2132,7 @@ static int idpf_set_features(struct net_device *netdev,
 	}
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return err;
 }
@@ -2153,15 +2151,16 @@ static int idpf_set_features(struct net_device *netdev,
  */
 static int idpf_open(struct net_device *netdev)
 {
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 	int err;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	err = idpf_vport_open(vport);
 
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return err;
 }
@@ -2175,17 +2174,18 @@ static int idpf_open(struct net_device *netdev)
  */
 static int idpf_change_mtu(struct net_device *netdev, int new_mtu)
 {
+	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
 	struct idpf_vport *vport;
 	int err;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
 	WRITE_ONCE(netdev->mtu, new_mtu);
 
 	err = idpf_initiate_soft_reset(vport, IDPF_SR_MTU_CHANGE);
 
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return err;
 }
@@ -2261,23 +2261,24 @@ static netdev_features_t idpf_features_check(struct sk_buff *skb,
 static int idpf_set_mac(struct net_device *netdev, void *p)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
+	struct idpf_adapter *adapter = np->adapter;
 	struct idpf_vport_config *vport_config;
 	struct sockaddr *addr = p;
 	struct idpf_vport *vport;
 	int err = 0;
 
-	idpf_vport_ctrl_lock(netdev);
+	idpf_vport_ctrl_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
-	if (!idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
+	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS,
 			     VIRTCHNL2_CAP_MACFILTER)) {
-		dev_info(&vport->adapter->pdev->dev, "Setting MAC address is not supported\n");
+		dev_info(&adapter->pdev->dev, "Setting MAC address is not supported\n");
 		err = -EOPNOTSUPP;
 		goto unlock_mutex;
 	}
 
 	if (!is_valid_ether_addr(addr->sa_data)) {
-		dev_info(&vport->adapter->pdev->dev, "Invalid MAC address: %pM\n",
+		dev_info(&adapter->pdev->dev, "Invalid MAC address: %pM\n",
 			 addr->sa_data);
 		err = -EADDRNOTAVAIL;
 		goto unlock_mutex;
@@ -2286,7 +2287,7 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
 		goto unlock_mutex;
 
-	vport_config = vport->adapter->vport_config[vport->idx];
+	vport_config = adapter->vport_config[vport->idx];
 	err = idpf_add_mac_filter(vport, np, addr->sa_data, false);
 	if (err) {
 		__idpf_del_mac_filter(vport_config, addr->sa_data);
@@ -2300,7 +2301,7 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	eth_hw_addr_set(netdev, addr->sa_data);
 
 unlock_mutex:
-	idpf_vport_ctrl_unlock(netdev);
+	idpf_vport_ctrl_unlock(adapter);
 
 	return err;
 }
-- 
2.46.0

