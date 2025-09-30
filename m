Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0390BAE9C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 23:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BCF982F03;
	Tue, 30 Sep 2025 21:24:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id abW0fDYQTnmK; Tue, 30 Sep 2025 21:24:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FC5B82DDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759267446;
	bh=ztrubVNazqPn2m45LIf0tFfaCXklXk1o/7oqsaPzf+s=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qP/cg5+Jmo36qdb64TWcDU+9+BZspp+M4zBDHGRErP3/mvjJYKwv9cnoc3Y8/AQ8n
	 alMJDNAyVXM79e7u/501boJIPmCEWElbn8hrh45mAhwbf9Y+00jMX8BdO0hjKdQ/sx
	 dq63M80Cs6OoaqUAp3VWrb0l6T1ib9ZxQnlTX9pjlSwk2IbOK6QhvTJoH19rFpL9BL
	 F0y8R+Ixv3KAnAiulO+ytfUV/cXRvTLwY31aBlPY8YMOoG/GKvRGWbQczFro2W3uiW
	 VV9io/xCZJitJJfGA0lEWz2sY6DgLpOwIJDUMy37VUNqVJt9DGqTMDZTDFnrkIvg+F
	 C1PiozQUPri2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FC5B82DDE;
	Tue, 30 Sep 2025 21:24:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C94C11000
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 21:24:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE4E840F4D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 21:24:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sP4OWAn5L0mP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Sep 2025 21:24:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7A55F40F79
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A55F40F79
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A55F40F79
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 21:24:02 +0000 (UTC)
X-CSE-ConnectionGUID: r76D1+XCRqGBx1fTcSHQOA==
X-CSE-MsgGUID: iyaxXvz4TvyBUmSCJpIVuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65358359"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65358359"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 14:24:01 -0700
X-CSE-ConnectionGUID: sLG7EM4MQFWlAX/DC4768A==
X-CSE-MsgGUID: QdscNH3DTRiOxQDnBShw1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,305,1751266800"; d="scan'208";a="209336184"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by orviesa002.jf.intel.com with ESMTP; 30 Sep 2025 14:24:02 -0700
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: sreedevi.joshi@intel.com,
	intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 30 Sep 2025 16:23:51 -0500
Message-Id: <20250930212352.2263907-2-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250930212352.2263907-1-sreedevi.joshi@intel.com>
References: <20250930212352.2263907-1-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759267441; x=1790803441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rqncZq68hccibekHgdYcRpnmE66mPzb8PKoc1oLB2qU=;
 b=TmKnYvEEw26HogtI7lvMpQIiAOj1RB0U/VheVXTHMnAKKY2OP2XarEEJ
 J9+72/s9+PABbItu8RKXKkSTOKzHDkdqfS4lIDVoWXmRDgy70OuZJ0/Q6
 WKWgiwFxULauaXaqtEIjcGAfE2q97N5iI8UEQPid1NMx0Cbp6bEnO7P9L
 U5IpFQPaSXG2AYvkPNNTmdl4lIBv446x7D/69FlQBmtjSIkZJBzljQNZJ
 4iRS73FVjareQCfVlM2oL30LpmdphEws45T/V2JXH3qsai86ZWpGbOtHs
 qSzh5PChao7ZkNv+zGzQjkZAtjTekABVtCYmsv4YvBsM03sIOlYbIdlZX
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TmKnYvEE
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 1/2] idpf: fix memory leak of
 flow steer list on rmmod
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

The flow steering list maintains entries that are added and removed as
ethtool creates and deletes flow steering rules. Module removal with active
entries causes memory leak as the list is not properly cleaned up.

Prevent this by iterating through the remaining entries in the list and
freeing the associated memory during module removal. Add a spinlock
(flow_steer_list_lock) to protect the list access from multiple threads.

Fixes: ada3e24b84a0 ("idpf: add flow steering support")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  2 ++
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 15 ++++++++--
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 28 ++++++++++++++++++-
 3 files changed, 42 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index cfbf3a716f34..4f4cf21e3c46 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -525,6 +525,7 @@ struct idpf_vector_lifo {
  * @max_q: Maximum possible queues
  * @req_qs_chunks: Queue chunk data for requested queues
  * @mac_filter_list_lock: Lock to protect mac filters
+ * @flow_steer_list_lock: Lock to protect fsteer filters
  * @flags: See enum idpf_vport_config_flags
  */
 struct idpf_vport_config {
@@ -532,6 +533,7 @@ struct idpf_vport_config {
 	struct idpf_vport_max_q max_q;
 	struct virtchnl2_add_queues *req_qs_chunks;
 	spinlock_t mac_filter_list_lock;
+	spinlock_t flow_steer_list_lock;
 	DECLARE_BITMAP(flags, IDPF_VPORT_CONFIG_FLAGS_NBITS);
 };
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index f84e247399a7..1352f18b60b0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -18,6 +18,7 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_vport_user_config_data *user_config;
+	struct idpf_vport_config *vport_config;
 	struct idpf_fsteer_fltr *f;
 	struct idpf_vport *vport;
 	unsigned int cnt = 0;
@@ -25,7 +26,8 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
-	user_config = &np->adapter->vport_config[np->vport_idx]->user_config;
+	vport_config = np->adapter->vport_config[np->vport_idx];
+	user_config = &vport_config->user_config;
 
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXRINGS:
@@ -37,15 +39,18 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 		break;
 	case ETHTOOL_GRXCLSRULE:
 		err = -EINVAL;
+		spin_lock_bh(&vport_config->flow_steer_list_lock);
 		list_for_each_entry(f, &user_config->flow_steer_list, list)
 			if (f->loc == cmd->fs.location) {
 				cmd->fs.ring_cookie = f->q_index;
 				err = 0;
 				break;
 			}
+		spin_unlock_bh(&vport_config->flow_steer_list_lock);
 		break;
 	case ETHTOOL_GRXCLSRLALL:
 		cmd->data = idpf_fsteer_max_rules(vport);
+		spin_lock_bh(&vport_config->flow_steer_list_lock);
 		list_for_each_entry(f, &user_config->flow_steer_list, list) {
 			if (cnt == cmd->rule_cnt) {
 				err = -EMSGSIZE;
@@ -56,6 +61,7 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 		}
 		if (!err)
 			cmd->rule_cnt = user_config->num_fsteer_fltrs;
+		spin_unlock_bh(&vport_config->flow_steer_list_lock);
 		break;
 	default:
 		break;
@@ -224,6 +230,7 @@ static int idpf_add_flow_steer(struct net_device *netdev,
 
 	fltr->loc = fsp->location;
 	fltr->q_index = q_index;
+	spin_lock_bh(&vport_config->flow_steer_list_lock);
 	list_for_each_entry(f, &user_config->flow_steer_list, list) {
 		if (f->loc >= fltr->loc)
 			break;
@@ -234,6 +241,7 @@ static int idpf_add_flow_steer(struct net_device *netdev,
 		 list_add(&fltr->list, &user_config->flow_steer_list);
 
 	user_config->num_fsteer_fltrs++;
+	spin_unlock_bh(&vport_config->flow_steer_list_lock);
 
 out:
 	kfree(rule);
@@ -286,17 +294,20 @@ static int idpf_del_flow_steer(struct net_device *netdev,
 		goto out;
 	}
 
+	spin_lock_bh(&vport_config->flow_steer_list_lock);
 	list_for_each_entry_safe(f, iter,
 				 &user_config->flow_steer_list, list) {
 		if (f->loc == fsp->location) {
 			list_del(&f->list);
 			kfree(f);
 			user_config->num_fsteer_fltrs--;
-			goto out;
+			goto out_unlock;
 		}
 	}
 	err = -EINVAL;
 
+out_unlock:
+	spin_unlock_bh(&vport_config->flow_steer_list_lock);
 out:
 	kfree(rule);
 	return err;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 01ab42fa23f9..72685f8b48f7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -440,6 +440,29 @@ int idpf_intr_req(struct idpf_adapter *adapter)
 	return err;
 }
 
+/**
+ * idpf_del_all_flow_steer_filters - Delete all flow steer filters in list
+ * @vport: main vport struct
+ *
+ * Takes flow_steer_list_lock spinlock.  Deletes all filters
+ */
+static void idpf_del_all_flow_steer_filters(struct idpf_vport *vport)
+{
+	struct idpf_vport_config *vport_config;
+	struct idpf_fsteer_fltr *f, *ftmp;
+
+	vport_config = vport->adapter->vport_config[vport->idx];
+
+	spin_lock_bh(&vport_config->flow_steer_list_lock);
+	list_for_each_entry_safe(f, ftmp, &vport_config->user_config.flow_steer_list,
+				 list) {
+		list_del(&f->list);
+		kfree(f);
+	}
+	vport_config->user_config.num_fsteer_fltrs = 0;
+	spin_unlock_bh(&vport_config->flow_steer_list_lock);
+}
+
 /**
  * idpf_find_mac_filter - Search filter list for specific mac filter
  * @vconfig: Vport config structure
@@ -1031,8 +1054,10 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 
 	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
 		idpf_decfg_netdev(vport);
-	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
+	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags)) {
 		idpf_del_all_mac_filters(vport);
+		idpf_del_all_flow_steer_filters(vport);
+	}
 
 	if (adapter->netdevs[i]) {
 		struct idpf_netdev_priv *np = netdev_priv(adapter->netdevs[i]);
@@ -1549,6 +1574,7 @@ void idpf_init_task(struct work_struct *work)
 	init_waitqueue_head(&vport->sw_marker_wq);
 
 	spin_lock_init(&vport_config->mac_filter_list_lock);
+	spin_lock_init(&vport_config->flow_steer_list_lock);
 
 	INIT_LIST_HEAD(&vport_config->user_config.mac_filter_list);
 	INIT_LIST_HEAD(&vport_config->user_config.flow_steer_list);
-- 
2.25.1

