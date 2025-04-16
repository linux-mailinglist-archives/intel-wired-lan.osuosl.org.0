Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5101CA90DAE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 23:19:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E88A607C8;
	Wed, 16 Apr 2025 21:19:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fVJMqB1BRqEz; Wed, 16 Apr 2025 21:19:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39EFF607A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744838359;
	bh=pbw2JYW74ZEVuWBrVKcYKXRJB+PohD5kzgwvLU14yAY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DTVDnw9UcqkYdu0LweYuNYlOXAaFItCl76y9zXwymsxLV8Kkr7qS3Vu1kcXptoVR5
	 OVN0kSI8jp9w1SvKbbsDOv13jZ0k84X582Mj3K7DLSBXjQi9kcwLLq8vYuIJIMSi8O
	 ujPpCmFNEZLpuHfYd6iDjQWctUPU3h9F5tOECseMN7uMXg65uwVYvqJJxkK8JsDxDi
	 upgx2AHf/8MBnC5SO2Tw/oQrTAxa2fi0nEgBFLecp6bUigF73ri3voIYy6Fk202Qpa
	 +4UqWfKCRJ17a7QZijHbSVXb3Yu3L6hPlP8DiHGlQtEsVYVaR+RXvAwQCKmgl+/HKu
	 LDJhd6yZNwOgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39EFF607A2;
	Wed, 16 Apr 2025 21:19:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DA761159
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0588D413E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AaMO__QacwCJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 21:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F284412E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F284412E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F284412E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:02 +0000 (UTC)
X-CSE-ConnectionGUID: Xo0ngF3yRuyFLmU5+OWN8A==
X-CSE-MsgGUID: Mh58dDqWR5qQnvR7v56SFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46496245"
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="46496245"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 14:19:01 -0700
X-CSE-ConnectionGUID: +RzSlWm+QlGeu5w7Y2kg4A==
X-CSE-MsgGUID: 9nAv74O9QGSTrFn886l5vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="130909767"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa008.fm.intel.com with ESMTP; 16 Apr 2025 14:19:01 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Wed, 16 Apr 2025 14:18:19 -0700
Message-ID: <20250416211821.444076-8-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250416211821.444076-1-pavan.kumar.linga@intel.com>
References: <20250416211821.444076-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744838342; x=1776374342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qYA/EZmTaLdDgRUkFeWve6XFhRYs7HVxDue0nn8Vr7o=;
 b=cR/2gjWx1yi+VwUXjdNpmKjMUwaVWxErKJ9KRPLggj7WeF7s/YtAW/LB
 EG9wrMfLNSh8W/TMzxLr3cjPESPSSGgrHn8y1doWyxK6KxciOC0U0Wfl4
 M8aZ9Bnbb005IU9uISEYbZTLoVM5WyX7E/yn03Dc168/lssXxs13iQTNL
 93BXbLnbR3eFDRxjzoUippKpZoBzDnATSVbsNd4QS8LFssNNbIzSKBTJz
 m6qTk1X1psCHpnRce3FURROlT+R58b4E3udh6dzHwFgoiy0UWsmorlS2I
 igwiMG0JU/3/RPLbKdqQKPkDTVOyMZFJ83R7Ed5M6T6djI8Sm+Zih5K2r
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cR/2gjWx
Subject: [Intel-wired-lan] [PATCH iwl-next 7/9] idpf: generalize send
 virtchnl message API
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

With the previous refactor of passing idpf resource pointer,
all of the virtchnl send message functions do not require
full vport structure. Those functions can be generalized to be
able to use for configuring vport independent queues.

Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   2 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  93 ++++----
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |   6 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 217 ++++++++++--------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  47 ++--
 6 files changed, 199 insertions(+), 168 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 45272bd9e472..7b8db260781a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -84,7 +84,7 @@ static int idpf_intr_reg_init(struct idpf_vport *vport,
 	if (!reg_vals)
 		return -ENOMEM;
 
-	num_regs = idpf_get_reg_intr_vecs(vport, reg_vals);
+	num_regs = idpf_get_reg_intr_vecs(adapter, reg_vals);
 	if (num_regs < num_vecs) {
 		err = -EINVAL;
 		goto free_reg_vals;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index e60ef8a94eb2..d676b2eb567b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -439,7 +439,6 @@ static int __idpf_del_mac_filter(struct idpf_vport_config *vport_config,
 
 /**
  * idpf_del_mac_filter - Delete a MAC filter from the filter list
- * @vport: Main vport structure
  * @np: Netdev private structure
  * @macaddr: The MAC address
  * @async: Don't wait for return message
@@ -447,8 +446,7 @@ static int __idpf_del_mac_filter(struct idpf_vport_config *vport_config,
  * Removes filter from list and if interface is up, tells hardware about the
  * removed filter.
  **/
-static int idpf_del_mac_filter(struct idpf_vport *vport,
-			       struct idpf_netdev_priv *np,
+static int idpf_del_mac_filter(struct idpf_netdev_priv *np,
 			       const u8 *macaddr, bool async)
 {
 	struct idpf_vport_config *vport_config;
@@ -470,7 +468,8 @@ static int idpf_del_mac_filter(struct idpf_vport *vport,
 	if (np->state == __IDPF_VPORT_UP) {
 		int err;
 
-		err = idpf_add_del_mac_filters(vport, np, false, async);
+		err = idpf_add_del_mac_filters(np->adapter, vport_config,
+					       np->vport_id, false, async);
 		if (err)
 			return err;
 	}
@@ -518,7 +517,6 @@ static int __idpf_add_mac_filter(struct idpf_vport_config *vport_config,
 
 /**
  * idpf_add_mac_filter - Add a mac filter to the filter list
- * @vport: Main vport structure
  * @np: Netdev private structure
  * @macaddr: The MAC address
  * @async: Don't wait for return message
@@ -526,8 +524,7 @@ static int __idpf_add_mac_filter(struct idpf_vport_config *vport_config,
  * Returns 0 on success or error on failure. If interface is up, we'll also
  * send the virtchnl message to tell hardware about the filter.
  **/
-static int idpf_add_mac_filter(struct idpf_vport *vport,
-			       struct idpf_netdev_priv *np,
+static int idpf_add_mac_filter(struct idpf_netdev_priv *np,
 			       const u8 *macaddr, bool async)
 {
 	struct idpf_vport_config *vport_config;
@@ -539,7 +536,8 @@ static int idpf_add_mac_filter(struct idpf_vport *vport,
 		return err;
 
 	if (np->state == __IDPF_VPORT_UP)
-		err = idpf_add_del_mac_filters(vport, np, true, async);
+		err = idpf_add_del_mac_filters(np->adapter, vport_config,
+					       np->vport_id, true, async);
 
 	return err;
 }
@@ -587,7 +585,7 @@ static void idpf_restore_mac_filters(struct idpf_vport *vport)
 
 	spin_unlock_bh(&vport_config->mac_filter_list_lock);
 
-	idpf_add_del_mac_filters(vport, netdev_priv(vport->netdev),
+	idpf_add_del_mac_filters(vport->adapter, vport_config, vport->vport_id,
 				 true, false);
 }
 
@@ -611,7 +609,7 @@ static void idpf_remove_mac_filters(struct idpf_vport *vport)
 
 	spin_unlock_bh(&vport_config->mac_filter_list_lock);
 
-	idpf_add_del_mac_filters(vport, netdev_priv(vport->netdev),
+	idpf_add_del_mac_filters(vport->adapter, vport_config, vport->vport_id,
 				 false, false);
 }
 
@@ -653,8 +651,7 @@ static int idpf_init_mac_addr(struct idpf_vport *vport,
 		eth_hw_addr_set(netdev, vport->default_mac_addr);
 		ether_addr_copy(netdev->perm_addr, vport->default_mac_addr);
 
-		return idpf_add_mac_filter(vport, np, vport->default_mac_addr,
-					   false);
+		return idpf_add_mac_filter(np, vport->default_mac_addr, false);
 	}
 
 	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS,
@@ -666,7 +663,7 @@ static int idpf_init_mac_addr(struct idpf_vport *vport,
 	}
 
 	eth_hw_addr_random(netdev);
-	err = idpf_add_mac_filter(vport, np, netdev->dev_addr, false);
+	err = idpf_add_mac_filter(np, netdev->dev_addr, false);
 	if (err)
 		return err;
 
@@ -834,7 +831,9 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
+	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_queue_id_reg_info *chunks;
+	u32 vport_id = vport->vport_id;
 
 	if (np->state <= __IDPF_VPORT_DOWN)
 		return;
@@ -842,18 +841,18 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 	netif_carrier_off(vport->netdev);
 	netif_tx_disable(vport->netdev);
 
-	chunks = &vport->adapter->vport_config[vport->idx]->qid_reg_info;
+	chunks = &adapter->vport_config[vport->idx]->qid_reg_info;
 
-	idpf_send_disable_vport_msg(vport);
+	idpf_send_disable_vport_msg(adapter, vport_id);
 	idpf_send_disable_queues_msg(vport, rsrc, chunks);
-	idpf_send_map_unmap_queue_vector_msg(vport, rsrc, false);
+	idpf_send_map_unmap_queue_vector_msg(adapter, rsrc, vport_id, false);
 	/* Normally we ask for queues in create_vport, but if the number of
 	 * initially requested queues have changed, for example via ethtool
 	 * set channels, we do delete queues and then add the queues back
 	 * instead of deleting and reallocating the vport.
 	 */
 	if (test_and_clear_bit(IDPF_VPORT_DEL_QUEUES, vport->flags))
-		idpf_send_delete_queues_msg(vport, chunks);
+		idpf_send_delete_queues_msg(adapter, chunks, vport_id);
 
 	idpf_remove_features(vport);
 
@@ -934,7 +933,7 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 	kfree(rss_data->rss_key);
 	rss_data->rss_key = NULL;
 
-	idpf_send_destroy_vport_msg(vport);
+	idpf_send_destroy_vport_msg(adapter, vport->vport_id);
 
 	/* Release all max queues allocated to the adapter's pool */
 	max_q.max_rxq = vport_config->max_q.max_rxq;
@@ -1177,7 +1176,8 @@ void idpf_statistics_task(struct work_struct *work)
 		struct idpf_vport *vport = adapter->vports[i];
 
 		if (vport && !test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
-			idpf_send_get_stats_msg(vport);
+			idpf_send_get_stats_msg(netdev_priv(vport->netdev),
+						&vport->port_stats);
 	}
 
 	queue_delayed_work(adapter->stats_wq, &adapter->stats_task,
@@ -1318,6 +1318,8 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	struct idpf_vport_config *vport_config;
 	struct idpf_queue_id_reg_info *chunks;
 	struct idpf_rss_data *rss_data;
+	u32 vport_id = vport->vport_id;
+	bool rsc_ena;
 	int err;
 
 	if (np->state != __IDPF_VPORT_DOWN)
@@ -1371,14 +1373,16 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	idpf_rx_init_buf_tail(rsrc);
 	idpf_vport_intr_ena(vport, rsrc);
 
-	err = idpf_send_config_queues_msg(vport, rsrc);
+	rsc_ena = idpf_is_feature_ena(vport, NETIF_F_GRO_HW);
+	err = idpf_send_config_queues_msg(adapter, rsrc, vport_id, rsc_ena);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to configure queues for vport %u, %d\n",
 			vport->vport_id, err);
 		goto intr_deinit;
 	}
 
-	err = idpf_send_map_unmap_queue_vector_msg(vport, rsrc, true);
+	err = idpf_send_map_unmap_queue_vector_msg(adapter, rsrc, vport_id,
+						   true);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to map queue vectors for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1392,7 +1396,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 		goto unmap_queue_vectors;
 	}
 
-	err = idpf_send_enable_vport_msg(vport);
+	err = idpf_send_enable_vport_msg(adapter, vport_id);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to enable vport %u: %d\n",
 			vport->vport_id, err);
@@ -1425,11 +1429,11 @@ static int idpf_vport_open(struct idpf_vport *vport)
 deinit_rss:
 	idpf_deinit_rss(rss_data);
 disable_vport:
-	idpf_send_disable_vport_msg(vport);
+	idpf_send_disable_vport_msg(adapter, vport_id);
 disable_queues:
 	idpf_send_disable_queues_msg(vport, rsrc, chunks);
 unmap_queue_vectors:
-	idpf_send_map_unmap_queue_vector_msg(vport, rsrc, false);
+	idpf_send_map_unmap_queue_vector_msg(adapter, rsrc, vport_id, false);
 intr_deinit:
 	idpf_vport_intr_deinit(vport, rsrc);
 queues_rel:
@@ -1842,6 +1846,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_q_vec_rsrc *new_rsrc;
+	u32 vport_id = vport->vport_id;
 	struct idpf_vport *new_vport;
 	int err;
 
@@ -1893,28 +1898,21 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	vport_config = adapter->vport_config[vport->idx];
 
 	if (current_state <= __IDPF_VPORT_DOWN) {
-		idpf_send_delete_queues_msg(vport, &vport_config->qid_reg_info);
+		idpf_send_delete_queues_msg(adapter, &vport_config->qid_reg_info,
+					    vport_id);
 	} else {
 		set_bit(IDPF_VPORT_DEL_QUEUES, vport->flags);
 		idpf_vport_stop(vport);
 	}
 
 	idpf_deinit_rss(&vport_config->user_config.rss_data);
-	/* We're passing in vport here because we need its wait_queue
-	 * to send a message and it should be getting all the vport
-	 * config data out of the adapter but we need to be careful not
-	 * to add code to add_queues to change the vport config within
-	 * vport itself as it will be wiped with a memcpy later.
-	 */
-	err = idpf_send_add_queues_msg(vport, new_rsrc->num_txq,
-				       new_rsrc->num_complq,
-				       new_rsrc->num_rxq,
-				       new_rsrc->num_bufq);
+	err = idpf_send_add_queues_msg(adapter, vport_config, new_rsrc,
+				       vport_id);
 	if (err)
 		goto err_reset;
 
-	/* Same comment as above regarding avoiding copying the wait_queues and
-	 * mutexes applies here. We do not want to mess with those if possible.
+	/* Avoid copying the wait_queues and mutexes. We do not want to mess
+	 * with those if possible.
 	 */
 	memcpy(vport, new_vport, offsetof(struct idpf_vport, link_up));
 
@@ -1933,8 +1931,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	return err;
 
 err_reset:
-	idpf_send_add_queues_msg(vport, rsrc->num_txq, rsrc->num_complq,
-				 rsrc->num_rxq, rsrc->num_bufq);
+	idpf_send_add_queues_msg(adapter, vport_config, rsrc, vport_id);
 
 err_open:
 	if (current_state == __IDPF_VPORT_UP)
@@ -1963,7 +1960,7 @@ static int idpf_addr_sync(struct net_device *netdev, const u8 *addr)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 
-	return idpf_add_mac_filter(np->vport, np, addr, true);
+	return idpf_add_mac_filter(np, addr, true);
 }
 
 /**
@@ -1991,7 +1988,7 @@ static int idpf_addr_unsync(struct net_device *netdev, const u8 *addr)
 	if (ether_addr_equal(addr, netdev->dev_addr))
 		return 0;
 
-	idpf_del_mac_filter(np->vport, np, addr, true);
+	idpf_del_mac_filter(np, addr, true);
 
 	return 0;
 }
@@ -2075,14 +2072,15 @@ static void idpf_set_rx_mode(struct net_device *netdev)
  */
 static int idpf_vport_manage_rss_lut(struct idpf_vport *vport)
 {
-	bool ena = idpf_is_feature_ena(vport, NETIF_F_RXHASH);
 	struct idpf_rss_data *rss_data;
 	u16 idx = vport->idx;
 	int lut_size;
+	bool ena;
 
 	rss_data = &vport->adapter->vport_config[idx]->user_config.rss_data;
 	lut_size = rss_data->rss_lut_size * sizeof(u32);
 
+	ena = idpf_is_feature_ena(vport, NETIF_F_RXHASH);
 	if (ena) {
 		/* This will contain the default or user configured LUT */
 		memcpy(rss_data->rss_lut, rss_data->cached_lut, lut_size);
@@ -2138,8 +2136,13 @@ static int idpf_set_features(struct net_device *netdev,
 	}
 
 	if (changed & NETIF_F_LOOPBACK) {
+		bool loopback_ena;
+
 		netdev->features ^= NETIF_F_LOOPBACK;
-		err = idpf_send_ena_dis_loopback_msg(vport);
+		loopback_ena = idpf_is_feature_ena(vport, NETIF_F_LOOPBACK);
+
+		err = idpf_send_ena_dis_loopback_msg(adapter, vport->vport_id,
+						     loopback_ena);
 	}
 
 unlock_mutex:
@@ -2301,14 +2304,14 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 		goto unlock_mutex;
 
 	vport_config = vport->adapter->vport_config[vport->idx];
-	err = idpf_add_mac_filter(vport, np, addr->sa_data, false);
+	err = idpf_add_mac_filter(np, addr->sa_data, false);
 	if (err) {
 		__idpf_del_mac_filter(vport_config, addr->sa_data);
 		goto unlock_mutex;
 	}
 
 	if (is_valid_ether_addr(vport->default_mac_addr))
-		idpf_del_mac_filter(vport, np, vport->default_mac_addr, false);
+		idpf_del_mac_filter(np, vport->default_mac_addr, false);
 
 	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
 	eth_hw_addr_set(netdev, addr->sa_data);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 6841b9d6f719..2dd614df97ce 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -4334,13 +4334,15 @@ void idpf_vport_intr_ena(struct idpf_vport *vport, struct idpf_q_vec_rsrc *rsrc)
  */
 int idpf_config_rss(struct idpf_vport *vport, struct idpf_rss_data *rss_data)
 {
+	struct idpf_adapter *adapter = vport->adapter;
+	u32 vport_id = vport->vport_id;
 	int err;
 
-	err = idpf_send_get_set_rss_key_msg(vport, rss_data, false);
+	err = idpf_send_get_set_rss_key_msg(adapter, rss_data, vport_id, false);
 	if (err)
 		return err;
 
-	return idpf_send_get_set_rss_lut_msg(vport, rss_data, false);
+	return idpf_send_get_set_rss_lut_msg(adapter, rss_data, vport_id, false);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index 61d6f774e2f6..0bb07bcb974b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -84,7 +84,7 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport,
 	if (!reg_vals)
 		return -ENOMEM;
 
-	num_regs = idpf_get_reg_intr_vecs(vport, reg_vals);
+	num_regs = idpf_get_reg_intr_vecs(adapter, reg_vals);
 	if (num_regs < num_vecs) {
 		err = -EINVAL;
 		goto free_reg_vals;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 76479adce10d..d7775e517e98 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1056,12 +1056,12 @@ idpf_vport_init_queue_reg_chunks(struct idpf_vport_config *vport_config,
 
 /**
  * idpf_get_reg_intr_vecs - Get vector queue register offset
- * @vport: virtual port structure
+ * @adapter: adapter structure to get the vector chunks
  * @reg_vals: Register offsets to store in
  *
  * Returns number of registers that got populated
  */
-int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
+int idpf_get_reg_intr_vecs(struct idpf_adapter *adapter,
 			   struct idpf_vec_regs *reg_vals)
 {
 	struct virtchnl2_vector_chunks *chunks;
@@ -1069,7 +1069,7 @@ int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
 	u16 num_vchunks, num_vec;
 	int num_regs = 0, i, j;
 
-	chunks = &vport->adapter->req_vec_chunks->vchunks;
+	chunks = &adapter->req_vec_chunks->vchunks;
 	num_vchunks = le16_to_cpu(chunks->num_vchunks);
 
 	for (j = 0; j < num_vchunks; j++) {
@@ -1405,86 +1405,91 @@ int idpf_check_supported_desc_ids(struct idpf_vport *vport)
 
 /**
  * idpf_send_destroy_vport_msg - Send virtchnl destroy vport message
- * @vport: virtual port data structure
+ * @adapter: adapter pointer used to send virtchnl message
+ * @vport_id: vport identifier used while preparing the virtchnl message
  *
  * Send virtchnl destroy vport message.  Returns 0 on success, negative on
  * failure.
  */
-int idpf_send_destroy_vport_msg(struct idpf_vport *vport)
+int idpf_send_destroy_vport_msg(struct idpf_adapter *adapter, u32 vport_id)
 {
 	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_vport v_id;
 	ssize_t reply_sz;
 
-	v_id.vport_id = cpu_to_le32(vport->vport_id);
+	v_id.vport_id = cpu_to_le32(vport_id);
 
 	xn_params.vc_op = VIRTCHNL2_OP_DESTROY_VPORT;
 	xn_params.send_buf.iov_base = &v_id;
 	xn_params.send_buf.iov_len = sizeof(v_id);
 	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 
 	return reply_sz < 0 ? reply_sz : 0;
 }
 
 /**
  * idpf_send_enable_vport_msg - Send virtchnl enable vport message
- * @vport: virtual port data structure
+ * @adapter: adapter pointer used to send virtchnl message
+ * @vport_id: vport identifier used while preparing the virtchnl message
  *
  * Send enable vport virtchnl message.  Returns 0 on success, negative on
  * failure.
  */
-int idpf_send_enable_vport_msg(struct idpf_vport *vport)
+int idpf_send_enable_vport_msg(struct idpf_adapter *adapter, u32 vport_id)
 {
 	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_vport v_id;
 	ssize_t reply_sz;
 
-	v_id.vport_id = cpu_to_le32(vport->vport_id);
+	v_id.vport_id = cpu_to_le32(vport_id);
 
 	xn_params.vc_op = VIRTCHNL2_OP_ENABLE_VPORT;
 	xn_params.send_buf.iov_base = &v_id;
 	xn_params.send_buf.iov_len = sizeof(v_id);
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 
 	return reply_sz < 0 ? reply_sz : 0;
 }
 
 /**
  * idpf_send_disable_vport_msg - Send virtchnl disable vport message
- * @vport: virtual port data structure
+ * @adapter: adapter pointer used to send virtchnl message
+ * @vport_id: vport identifier used while preparing the virtchnl message
  *
  * Send disable vport virtchnl message.  Returns 0 on success, negative on
  * failure.
  */
-int idpf_send_disable_vport_msg(struct idpf_vport *vport)
+int idpf_send_disable_vport_msg(struct idpf_adapter *adapter, u32 vport_id)
 {
 	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_vport v_id;
 	ssize_t reply_sz;
 
-	v_id.vport_id = cpu_to_le32(vport->vport_id);
+	v_id.vport_id = cpu_to_le32(vport_id);
 
 	xn_params.vc_op = VIRTCHNL2_OP_DISABLE_VPORT;
 	xn_params.send_buf.iov_base = &v_id;
 	xn_params.send_buf.iov_len = sizeof(v_id);
 	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 
 	return reply_sz < 0 ? reply_sz : 0;
 }
 
 /**
  * idpf_send_config_tx_queues_msg - Send virtchnl config tx queues message
- * @vport: virtual port data structure
+ * @adapter: adapter pointer used to send virtchnl message
  * @rsrc: pointer to queue and vector resources
+ * @vport_id: vport identifier used while preparing the virtchnl message
  *
  * Send config tx queues virtchnl message. Returns 0 on success, negative on
  * failure.
  */
-static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport,
-					  struct idpf_q_vec_rsrc *rsrc)
+static int idpf_send_config_tx_queues_msg(struct idpf_adapter *adapter,
+					  struct idpf_q_vec_rsrc *rsrc,
+					  u32 vport_id)
 {
 	struct virtchnl2_config_tx_queues *ctq __free(kfree) = NULL;
 	struct virtchnl2_txq_info *qi __free(kfree) = NULL;
@@ -1576,13 +1581,13 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport,
 
 	for (u16 i = 0, k = 0; i < num_msgs; i++) {
 		memset(ctq, 0, buf_sz);
-		ctq->vport_id = cpu_to_le32(vport->vport_id);
+		ctq->vport_id = cpu_to_le32(vport_id);
 		ctq->num_qinfo = cpu_to_le16(num_chunks);
 		memcpy(ctq->qinfo, &qi[k], chunk_sz * num_chunks);
 
 		xn_params.send_buf.iov_base = ctq;
 		xn_params.send_buf.iov_len = buf_sz;
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+		reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 		if (reply_sz < 0)
 			return reply_sz;
 
@@ -1598,14 +1603,17 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport,
 
 /**
  * idpf_send_config_rx_queues_msg - Send virtchnl config rx queues message
- * @vport: virtual port data structure
+ * @adapter: adapter pointer used to send virtchnl message
  * @rsrc: pointer to queue and vector resources
+ * @vport_id: vport identifier used while preparing the virtchnl message
+ * @rsc_ena: flag to check if RSC feature is enabled
  *
  * Send config rx queues virtchnl message.  Returns 0 on success, negative on
  * failure.
  */
-static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
-					  struct idpf_q_vec_rsrc *rsrc)
+static int idpf_send_config_rx_queues_msg(struct idpf_adapter *adapter,
+					  struct idpf_q_vec_rsrc *rsrc,
+					  u32 vport_id, bool rsc_ena)
 {
 	struct virtchnl2_config_rx_queues *crq __free(kfree) = NULL;
 	struct virtchnl2_rxq_info *qi __free(kfree) = NULL;
@@ -1643,7 +1651,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
 			qi[k].buffer_notif_stride = IDPF_RX_BUF_STRIDE;
 			qi[k].rx_buffer_low_watermark =
 				cpu_to_le16(bufq->rx_buffer_low_watermark);
-			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
+			if (rsc_ena)
 				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
 		}
 
@@ -1679,7 +1687,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
 			}
 			qi[k].rx_buffer_low_watermark =
 				cpu_to_le16(rxq->rx_buffer_low_watermark);
-			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
+			if (rsc_ena)
 				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
 
 			rxq->rx_hbuf_size = sets[0].bufq.rx_hbuf_size;
@@ -1729,13 +1737,13 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
 
 	for (u16 i = 0, k = 0; i < num_msgs; i++) {
 		memset(crq, 0, buf_sz);
-		crq->vport_id = cpu_to_le32(vport->vport_id);
+		crq->vport_id = cpu_to_le32(vport_id);
 		crq->num_qinfo = cpu_to_le16(num_chunks);
 		memcpy(crq->qinfo, &qi[k], chunk_sz * num_chunks);
 
 		xn_params.send_buf.iov_base = crq;
 		xn_params.send_buf.iov_len = buf_sz;
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+		reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 		if (reply_sz < 0)
 			return reply_sz;
 
@@ -1752,15 +1760,17 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
 /**
  * idpf_send_ena_dis_queues_msg - Send virtchnl enable or disable
  * queues message
- * @vport: virtual port data structure
+ * @adapter: adapter pointer used to send virtchnl message
  * @chunks: queue register info
+ * @vport_id: vport identifier used while preparing the virtchnl message
  * @ena: if true enable, false disable
  *
  * Send enable or disable queues virtchnl message. Returns 0 on success,
  * negative on failure.
  */
-static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport,
+static int idpf_send_ena_dis_queues_msg(struct idpf_adapter *adapter,
 					struct idpf_queue_id_reg_info *chunks,
+					u32 vport_id,
 					bool ena)
 {
 	struct virtchnl2_del_ena_dis_queues *eq __free(kfree) = NULL;
@@ -1782,7 +1792,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport,
 	if (!eq)
 		return -ENOMEM;
 
-	eq->vport_id = cpu_to_le32(vport->vport_id);
+	eq->vport_id = cpu_to_le32(vport_id);
 	eq->chunks.num_chunks = cpu_to_le16(num_chunks);
 
 	idpf_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks->queue_chunks,
@@ -1790,7 +1800,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport,
 
 	xn_params.send_buf.iov_base = eq;
 	xn_params.send_buf.iov_len = buf_sz;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 
 	return reply_sz < 0 ? reply_sz : 0;
 }
@@ -1798,15 +1808,17 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport,
 /**
  * idpf_send_map_unmap_queue_vector_msg - Send virtchnl map or unmap queue
  * vector message
- * @vport: virtual port data structure
+ * @adapter: adapter pointer used to send virtchnl message
  * @rsrc: pointer to queue and vector resources
+ * @vport_id: vport identifier used while preparing the virtchnl message
  * @map: true for map and false for unmap
  *
  * Send map or unmap queue vector virtchnl message.  Returns 0 on success,
  * negative on failure.
  */
-int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport,
+int idpf_send_map_unmap_queue_vector_msg(struct idpf_adapter *adapter,
 					 struct idpf_q_vec_rsrc *rsrc,
+					 u32 vport_id,
 					 bool map)
 {
 	struct virtchnl2_queue_vector_maps *vqvm __free(kfree) = NULL;
@@ -1907,11 +1919,11 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport,
 		memset(vqvm, 0, buf_sz);
 		xn_params.send_buf.iov_base = vqvm;
 		xn_params.send_buf.iov_len = buf_sz;
-		vqvm->vport_id = cpu_to_le32(vport->vport_id);
+		vqvm->vport_id = cpu_to_le32(vport_id);
 		vqvm->num_qv_maps = cpu_to_le16(num_chunks);
 		memcpy(vqvm->qv_maps, &vqv[k], chunk_sz * num_chunks);
 
-		reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+		reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 		if (reply_sz < 0)
 			return reply_sz;
 
@@ -1936,7 +1948,8 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport,
 int idpf_send_enable_queues_msg(struct idpf_vport *vport,
 				struct idpf_queue_id_reg_info *chunks)
 {
-	return idpf_send_ena_dis_queues_msg(vport, chunks, true);
+	return idpf_send_ena_dis_queues_msg(vport->adapter, chunks,
+					    vport->vport_id, true);
 }
 
 /**
@@ -1954,7 +1967,8 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport,
 {
 	int err;
 
-	err = idpf_send_ena_dis_queues_msg(vport, chunks, false);
+	err = idpf_send_ena_dis_queues_msg(vport->adapter, chunks,
+					   vport->vport_id, false);
 	if (err)
 		return err;
 
@@ -1975,14 +1989,16 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport,
 
 /**
  * idpf_send_delete_queues_msg - send delete queues virtchnl message
- * @vport: virtual port private data structure
+ * @adapter: adapter pointer used to send virtchnl message
  * @chunks: queue ids received over mailbox
+ * @vport_id: vport identifier used while preparing the virtchnl message
  *
  * Will send delete queues virtchnl message. Return 0 on success, negative on
  * failure.
  */
-int idpf_send_delete_queues_msg(struct idpf_vport *vport,
-				struct idpf_queue_id_reg_info *chunks)
+int idpf_send_delete_queues_msg(struct idpf_adapter *adapter,
+				struct idpf_queue_id_reg_info *chunks,
+				u32 vport_id)
 {
 	struct virtchnl2_del_ena_dis_queues *eq __free(kfree) = NULL;
 	struct idpf_vc_xn_params xn_params = {};
@@ -1997,7 +2013,7 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport,
 	if (!eq)
 		return -ENOMEM;
 
-	eq->vport_id = cpu_to_le32(vport->vport_id);
+	eq->vport_id = cpu_to_le32(vport_id);
 	eq->chunks.num_chunks = cpu_to_le16(num_chunks);
 
 	idpf_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks->queue_chunks,
@@ -2007,50 +2023,52 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport,
 	xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
 	xn_params.send_buf.iov_base = eq;
 	xn_params.send_buf.iov_len = buf_size;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 
 	return reply_sz < 0 ? reply_sz : 0;
 }
 
 /**
  * idpf_send_config_queues_msg - Send config queues virtchnl message
- * @vport: Virtual port private data structure
+ * @adapter: adapter pointer used to send virtchnl message
  * @rsrc: pointer to queue and vector resources
+ * @vport_id: vport identifier used while preparing the virtchnl message
+ * @rsc_ena: flag to check if RSC feature is enabled
  *
  * Will send config queues virtchnl message. Returns 0 on success, negative on
  * failure.
  */
-int idpf_send_config_queues_msg(struct idpf_vport *vport,
-				struct idpf_q_vec_rsrc *rsrc)
+int idpf_send_config_queues_msg(struct idpf_adapter *adapter,
+				struct idpf_q_vec_rsrc *rsrc,
+				u32 vport_id, bool rsc_ena)
 {
 	int err;
 
-	err = idpf_send_config_tx_queues_msg(vport, rsrc);
+	err = idpf_send_config_tx_queues_msg(adapter, rsrc, vport_id);
 	if (err)
 		return err;
 
-	return idpf_send_config_rx_queues_msg(vport, rsrc);
+	return idpf_send_config_rx_queues_msg(adapter, rsrc, vport_id, rsc_ena);
 }
 
 /**
  * idpf_send_add_queues_msg - Send virtchnl add queues message
- * @vport: Virtual port private data structure
- * @num_tx_q: number of transmit queues
- * @num_complq: number of transmit completion queues
- * @num_rx_q: number of receive queues
- * @num_rx_bufq: number of receive buffer queues
+ * @adapter: adapter pointer used to send virtchnl message
+ * @vport_config: vport persistent structure to store the queue chunk info
+ * @rsrc: pointer to queue and vector resources
+ * @vport_id: vport identifier used while preparing the virtchnl message
  *
  * Returns 0 on success, negative on failure. vport _MUST_ be const here as
  * we should not change any fields within vport itself in this function.
  */
-int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
-			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq)
+int idpf_send_add_queues_msg(struct idpf_adapter *adapter,
+			     struct idpf_vport_config *vport_config,
+			     struct idpf_q_vec_rsrc *rsrc,
+			     u32 vport_id)
 {
 	struct virtchnl2_add_queues *vc_msg __free(kfree) = NULL;
 	struct idpf_vc_xn_params xn_params = {};
-	struct idpf_vport_config *vport_config;
 	struct virtchnl2_add_queues aq = {};
-	u16 vport_idx = vport->idx;
 	ssize_t reply_sz;
 	int size;
 
@@ -2058,13 +2076,11 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 	if (!vc_msg)
 		return -ENOMEM;
 
-	vport_config = vport->adapter->vport_config[vport_idx];
-
-	aq.vport_id = cpu_to_le32(vport->vport_id);
-	aq.num_tx_q = cpu_to_le16(num_tx_q);
-	aq.num_tx_complq = cpu_to_le16(num_complq);
-	aq.num_rx_q = cpu_to_le16(num_rx_q);
-	aq.num_rx_bufq = cpu_to_le16(num_rx_bufq);
+	aq.vport_id = cpu_to_le32(vport_id);
+	aq.num_tx_q = cpu_to_le16(rsrc->num_txq);
+	aq.num_tx_complq = cpu_to_le16(rsrc->num_complq);
+	aq.num_rx_q = cpu_to_le16(rsrc->num_rxq);
+	aq.num_rx_bufq = cpu_to_le16(rsrc->num_bufq);
 
 	xn_params.vc_op = VIRTCHNL2_OP_ADD_QUEUES;
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
@@ -2072,15 +2088,15 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
 	xn_params.send_buf.iov_len = sizeof(aq);
 	xn_params.recv_buf.iov_base = vc_msg;
 	xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 	if (reply_sz < 0)
 		return reply_sz;
 
 	/* compare vc_msg num queues with vport num queues */
-	if (le16_to_cpu(vc_msg->num_tx_q) != num_tx_q ||
-	    le16_to_cpu(vc_msg->num_rx_q) != num_rx_q ||
-	    le16_to_cpu(vc_msg->num_tx_complq) != num_complq ||
-	    le16_to_cpu(vc_msg->num_rx_bufq) != num_rx_bufq)
+	if (le16_to_cpu(vc_msg->num_tx_q) != rsrc->num_txq ||
+	    le16_to_cpu(vc_msg->num_rx_q) != rsrc->num_rxq ||
+	    le16_to_cpu(vc_msg->num_tx_complq) != rsrc->num_complq ||
+	    le16_to_cpu(vc_msg->num_rx_bufq) != rsrc->num_bufq)
 		return -EINVAL;
 
 	size = struct_size(vc_msg, chunks.chunks,
@@ -2211,24 +2227,24 @@ int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs)
 
 /**
  * idpf_send_get_stats_msg - Send virtchnl get statistics message
- * @vport: vport to get stats for
+ * @np: netdev private structure
+ * @port_stats: structure to store the vport statistics
  *
  * Returns 0 on success, negative on failure.
  */
-int idpf_send_get_stats_msg(struct idpf_vport *vport)
+int idpf_send_get_stats_msg(struct idpf_netdev_priv *np,
+			    struct idpf_port_stats *port_stats)
 {
-	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct rtnl_link_stats64 *netstats = &np->netstats;
 	struct virtchnl2_vport_stats stats_msg = {};
 	struct idpf_vc_xn_params xn_params = {};
 	ssize_t reply_sz;
 
-
 	/* Don't send get_stats message if the link is down */
 	if (np->state <= __IDPF_VPORT_DOWN)
 		return 0;
 
-	stats_msg.vport_id = cpu_to_le32(vport->vport_id);
+	stats_msg.vport_id = cpu_to_le32(np->vport_id);
 
 	xn_params.vc_op = VIRTCHNL2_OP_GET_STATS;
 	xn_params.send_buf.iov_base = &stats_msg;
@@ -2236,7 +2252,7 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
 	xn_params.recv_buf = xn_params.send_buf;
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(np->adapter, &xn_params);
 	if (reply_sz < 0)
 		return reply_sz;
 	if (reply_sz < sizeof(stats_msg))
@@ -2257,7 +2273,7 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
 	netstats->rx_dropped = le64_to_cpu(stats_msg.rx_discards);
 	netstats->tx_dropped = le64_to_cpu(stats_msg.tx_discards);
 
-	vport->port_stats.vport_stats = stats_msg;
+	port_stats->vport_stats = stats_msg;
 
 	spin_unlock_bh(&np->stats_lock);
 
@@ -2266,15 +2282,16 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
 
 /**
  * idpf_send_get_set_rss_lut_msg - Send virtchnl get or set RSS lut message
- * @vport: virtual port data structure
+ * @adapter: adapter pointer used to send virtchnl message
  * @rss_data: pointer to RSS key and lut info
+ * @vport_id: vport identifier used while preparing the virtchnl message
  * @get: flag to set or get RSS look up table
  *
  * Returns 0 on success, negative on failure.
  */
-int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport,
+int idpf_send_get_set_rss_lut_msg(struct idpf_adapter *adapter,
 				  struct idpf_rss_data *rss_data,
-				  bool get)
+				  u32 vport_id, bool get)
 {
 	struct virtchnl2_rss_lut *recv_rl __free(kfree) = NULL;
 	struct virtchnl2_rss_lut *rl __free(kfree) = NULL;
@@ -2288,7 +2305,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport,
 	if (!rl)
 		return -ENOMEM;
 
-	rl->vport_id = cpu_to_le32(vport->vport_id);
+	rl->vport_id = cpu_to_le32(vport_id);
 
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 	xn_params.send_buf.iov_base = rl;
@@ -2308,7 +2325,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport,
 
 		xn_params.vc_op = VIRTCHNL2_OP_SET_RSS_LUT;
 	}
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 	if (reply_sz < 0)
 		return reply_sz;
 	if (!get)
@@ -2341,15 +2358,16 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport,
 
 /**
  * idpf_send_get_set_rss_key_msg - Send virtchnl get or set RSS key message
- * @vport: virtual port data structure
+ * @adapter: adapter pointer used to send virtchnl message
  * @rss_data: pointer to RSS key and lut info
+ * @vport_id: vport identifier used while preparing the virtchnl message
  * @get: flag to set or get RSS look up table
  *
  * Returns 0 on success, negative on failure
  */
-int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport,
+int idpf_send_get_set_rss_key_msg(struct idpf_adapter *adapter,
 				  struct idpf_rss_data *rss_data,
-				  bool get)
+				  u32 vport_id, bool get)
 {
 	struct virtchnl2_rss_key *recv_rk __free(kfree) = NULL;
 	struct virtchnl2_rss_key *rk __free(kfree) = NULL;
@@ -2363,7 +2381,7 @@ int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport,
 	if (!rk)
 		return -ENOMEM;
 
-	rk->vport_id = cpu_to_le32(vport->vport_id);
+	rk->vport_id = cpu_to_le32(vport_id);
 	xn_params.send_buf.iov_base = rk;
 	xn_params.send_buf.iov_len = buf_size;
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
@@ -2383,7 +2401,7 @@ int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport,
 		xn_params.vc_op = VIRTCHNL2_OP_SET_RSS_KEY;
 	}
 
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 	if (reply_sz < 0)
 		return reply_sz;
 	if (!get)
@@ -2689,24 +2707,27 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 /**
  * idpf_send_ena_dis_loopback_msg - Send virtchnl enable/disable loopback
  *				    message
- * @vport: virtual port data structure
+ * @adapter: adapter pointer used to send virtchnl message
+ * @vport_id: vport identifier used while preparing the virtchnl message
+ * @loopback_ena: flag to enable or disable loopback
  *
  * Returns 0 on success, negative on failure.
  */
-int idpf_send_ena_dis_loopback_msg(struct idpf_vport *vport)
+int idpf_send_ena_dis_loopback_msg(struct idpf_adapter *adapter, u32 vport_id,
+				   bool loopback_ena)
 {
 	struct idpf_vc_xn_params xn_params = {};
 	struct virtchnl2_loopback loopback;
 	ssize_t reply_sz;
 
-	loopback.vport_id = cpu_to_le32(vport->vport_id);
-	loopback.enable = idpf_is_feature_ena(vport, NETIF_F_LOOPBACK);
+	loopback.vport_id = cpu_to_le32(vport_id);
+	loopback.enable = loopback_ena;
 
 	xn_params.vc_op = VIRTCHNL2_OP_LOOPBACK;
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 	xn_params.send_buf.iov_base = &loopback;
 	xn_params.send_buf.iov_len = sizeof(loopback);
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 
 	return reply_sz < 0 ? reply_sz : 0;
 }
@@ -3522,22 +3543,21 @@ static int idpf_mac_filter_async_handler(struct idpf_adapter *adapter,
 
 /**
  * idpf_add_del_mac_filters - Add/del mac filters
- * @vport: Virtual port data structure
- * @np: Netdev private structure
+ * @adapter: adapter pointer used to send virtchnl message
+ * @vport_config: persistent vport structure to get the MAC filter list
+ * @vport_id: vport identifier used while preparing the virtchnl message
  * @add: Add or delete flag
  * @async: Don't wait for return message
  *
  * Returns 0 on success, error on failure.
  **/
-int idpf_add_del_mac_filters(struct idpf_vport *vport,
-			     struct idpf_netdev_priv *np,
-			     bool add, bool async)
+int idpf_add_del_mac_filters(struct idpf_adapter *adapter,
+			     struct idpf_vport_config *vport_config,
+			     u32 vport_id, bool add, bool async)
 {
 	struct virtchnl2_mac_addr_list *ma_list __free(kfree) = NULL;
 	struct virtchnl2_mac_addr *mac_addr __free(kfree) = NULL;
-	struct idpf_adapter *adapter = np->adapter;
 	struct idpf_vc_xn_params xn_params = {};
-	struct idpf_vport_config *vport_config;
 	u32 num_msgs, total_filters = 0;
 	struct idpf_mac_filter *f;
 	ssize_t reply_sz;
@@ -3549,7 +3569,6 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 	xn_params.async = async;
 	xn_params.async_handler = idpf_mac_filter_async_handler;
 
-	vport_config = adapter->vport_config[np->vport_idx];
 	spin_lock_bh(&vport_config->mac_filter_list_lock);
 
 	/* Find the number of newly added filters */
@@ -3618,7 +3637,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 			memset(ma_list, 0, buf_size);
 		}
 
-		ma_list->vport_id = cpu_to_le32(np->vport_id);
+		ma_list->vport_id = cpu_to_le32(vport_id);
 		ma_list->num_mac_addr = cpu_to_le16(num_entries);
 		memcpy(ma_list->mac_addr_list, &mac_addr[k], entries_size);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 959c93e8be82..1158faeb5701 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -16,7 +16,7 @@ void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter);
 int idpf_vc_core_init(struct idpf_adapter *adapter);
 void idpf_vc_core_deinit(struct idpf_adapter *adapter);
 
-int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
+int idpf_get_reg_intr_vecs(struct idpf_adapter *adapter,
 			   struct idpf_vec_regs *reg_vals);
 int idpf_queue_reg_init(struct idpf_vport *vport,
 			struct idpf_q_vec_rsrc *rsrc,
@@ -33,9 +33,9 @@ int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
 u32 idpf_get_vport_id(struct idpf_vport *vport);
 int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 			       struct idpf_vport_max_q *max_q);
-int idpf_send_destroy_vport_msg(struct idpf_vport *vport);
-int idpf_send_enable_vport_msg(struct idpf_vport *vport);
-int idpf_send_disable_vport_msg(struct idpf_vport *vport);
+int idpf_send_destroy_vport_msg(struct idpf_adapter *adapter, u32 vport_id);
+int idpf_send_enable_vport_msg(struct idpf_adapter *adapter, u32 vport_id);
+int idpf_send_disable_vport_msg(struct idpf_adapter *adapter, u32 vport_id);
 
 int idpf_vport_adjust_qs(struct idpf_vport *vport,
 			 struct idpf_q_vec_rsrc *rsrc);
@@ -43,17 +43,21 @@ int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
 			    struct idpf_vport_max_q *max_q);
 void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
 			       struct idpf_vport_max_q *max_q);
-int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
-			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq);
-int idpf_send_delete_queues_msg(struct idpf_vport *vport,
-				struct idpf_queue_id_reg_info *chunks);
+int idpf_send_add_queues_msg(struct idpf_adapter *adapter,
+			     struct idpf_vport_config *vport_config,
+			     struct idpf_q_vec_rsrc *rsrc,
+			     u32 vport_id);
+int idpf_send_delete_queues_msg(struct idpf_adapter *adapter,
+				struct idpf_queue_id_reg_info *chunks,
+				u32 vport_id);
 int idpf_send_enable_queues_msg(struct idpf_vport *vport,
 				struct idpf_queue_id_reg_info *chunks);
 int idpf_send_disable_queues_msg(struct idpf_vport *vport,
 				 struct idpf_q_vec_rsrc *rsrc,
 				 struct idpf_queue_id_reg_info *chunks);
-int idpf_send_config_queues_msg(struct idpf_vport *vport,
-				struct idpf_q_vec_rsrc *rsrc);
+int idpf_send_config_queues_msg(struct idpf_adapter *adapter,
+				struct idpf_q_vec_rsrc *rsrc,
+				u32 vport_id, bool rsc_ena);
 
 int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport,
 				 struct idpf_q_vec_rsrc *rsrc);
@@ -62,26 +66,29 @@ int idpf_get_vec_ids(struct idpf_adapter *adapter,
 		     struct virtchnl2_vector_chunks *chunks);
 int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors);
 int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter);
-int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport,
+int idpf_send_map_unmap_queue_vector_msg(struct idpf_adapter *adapter,
 					 struct idpf_q_vec_rsrc *rsrc,
+					 u32 vport_id,
 					 bool map);
 
-int idpf_add_del_mac_filters(struct idpf_vport *vport,
-			     struct idpf_netdev_priv *np,
-			     bool add, bool async);
+int idpf_add_del_mac_filters(struct idpf_adapter *adapter,
+			     struct idpf_vport_config *vport_config,
+			     u32 vport_id, bool add, bool async);
 int idpf_set_promiscuous(struct idpf_adapter *adapter,
 			 struct idpf_vport_user_config_data *config_data,
 			 u32 vport_id);
 int idpf_check_supported_desc_ids(struct idpf_vport *vport);
 int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport);
-int idpf_send_ena_dis_loopback_msg(struct idpf_vport *vport);
-int idpf_send_get_stats_msg(struct idpf_vport *vport);
+int idpf_send_ena_dis_loopback_msg(struct idpf_adapter *adapter, u32 vport_id,
+				   bool loopback_ena);
+int idpf_send_get_stats_msg(struct idpf_netdev_priv *np,
+			    struct idpf_port_stats *port_stats);
 int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs);
-int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport,
+int idpf_send_get_set_rss_key_msg(struct idpf_adapter *adapter,
 				  struct idpf_rss_data *rss_data,
-				  bool get);
-int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport,
+				  u32 vport_id, bool get);
+int idpf_send_get_set_rss_lut_msg(struct idpf_adapter *adapter,
 				  struct idpf_rss_data *rss_data,
-				  bool get);
+				  u32 vport_id, bool get);
 
 #endif /* _IDPF_VIRTCHNL_H_ */
-- 
2.43.0

