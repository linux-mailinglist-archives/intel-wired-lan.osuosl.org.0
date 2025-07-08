Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1BEAFBF9C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 02:59:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2128D840C3;
	Tue,  8 Jul 2025 00:59:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fmIfk8ADnC8y; Tue,  8 Jul 2025 00:59:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05707840F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751936343;
	bh=xYVsYhVaGN48CFz9e4bpyYaRhMa9Nxe6hd+2QEvHZ7c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6fy7Cp7Envt2rNM1sYJxKpTwdze2hBPj6XJf/mlwswvBR75/1dJTkeC6TFTneZ8xr
	 Pdt/9R7QhPbmjt1z5dZhksztaiwjTCEpdE4PNgFzmZasBMDCGWl/UXZwO/NLkPg+uJ
	 9lPHpewLBxgCZ4b8WhVIqodNEUZEUGA7unsTCaXjzvyktdZmZRA+yBGli0l76FYWw7
	 vW/zzxYPAzjLcQtEbcwdPisiDnxDX/F+fN47gPnSjWXz3M9lqnUd8D7wVbA0gkifnp
	 KeHB9k0IkU8sgiUnLSvIfGj4Dw8aaLdzQqN7FdXE2vHGc9WIi/m0LenVctlRL08t7f
	 wnIZwPLaNxJxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05707840F3;
	Tue,  8 Jul 2025 00:59:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B7FB15F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F53240290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AIzmZegOIX61 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 00:58:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3DD4140EAF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DD4140EAF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3DD4140EAF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:51 +0000 (UTC)
X-CSE-ConnectionGUID: 8C5xD8vGRjmIRCxf4cWgXQ==
X-CSE-MsgGUID: O3bcUh8YQUuGrjnvIGdmGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54307582"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="54307582"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 17:58:48 -0700
X-CSE-ConnectionGUID: WRIpt3qoR5KffWORg/tTCA==
X-CSE-MsgGUID: rNQcil2NQEC9X2v9QOcY/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="159695508"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa003.jf.intel.com with ESMTP; 07 Jul 2025 17:58:47 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Mon,  7 Jul 2025 17:58:35 -0700
Message-ID: <20250708005837.18510-8-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250708005837.18510-1-pavan.kumar.linga@intel.com>
References: <20250708005837.18510-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751936331; x=1783472331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TvZAaEieA7efi6SgIE4MpAPks+gwBvY/Bsfz31VuDAw=;
 b=E+Ra0eW8K+7v/z/xGcduF3gzKbuqOX2LzVZUqm2PPznOomS1wWPrFBEC
 df1/42tZf17HL7XoCm9Q3AxJqcF+rMjo9U8wGElnKICAwkvgbCjJLphf0
 0YWVo+46p+6X1nW9UTE82Ohr+6yK+AsgDF/VVRE305sEscckmOfSrAJK9
 07bMcrEP9L3GUiD/6g4SPehFLR9NW6pNpxeiKZSueShgfbXBJTZSaiOfB
 pAYGjgUmxoa+7cTGBYVMIV2KSnpi+jfKIkkVy7r4AWOyZ7y9que4U82sT
 EygbhIea3AE1ZbaReTSbB8nCNkwoIrv8HSGkbvUQP8QExi1qp01n7SLyk
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E+Ra0eW8
Subject: [Intel-wired-lan] [PATCH net-next v6 7/9] idpf: generalize send
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

With the previous refactor of passing idpf resource pointer, all of the
virtchnl send message functions do not require full vport structure.
Those functions can be generalized to be able to use for configuring
vport independent queues.

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
index 457fb314926c..301d51f2d965 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -85,7 +85,7 @@ static int idpf_intr_reg_init(struct idpf_vport *vport,
 	if (!reg_vals)
 		return -ENOMEM;
 
-	num_regs = idpf_get_reg_intr_vecs(vport, reg_vals);
+	num_regs = idpf_get_reg_intr_vecs(adapter, reg_vals);
 	if (num_regs < num_vecs) {
 		err = -EINVAL;
 		goto free_reg_vals;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 3898441b7c70..f56ac8f5db18 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -441,7 +441,6 @@ static int __idpf_del_mac_filter(struct idpf_vport_config *vport_config,
 
 /**
  * idpf_del_mac_filter - Delete a MAC filter from the filter list
- * @vport: Main vport structure
  * @np: Netdev private structure
  * @macaddr: The MAC address
  * @async: Don't wait for return message
@@ -449,8 +448,7 @@ static int __idpf_del_mac_filter(struct idpf_vport_config *vport_config,
  * Removes filter from list and if interface is up, tells hardware about the
  * removed filter.
  **/
-static int idpf_del_mac_filter(struct idpf_vport *vport,
-			       struct idpf_netdev_priv *np,
+static int idpf_del_mac_filter(struct idpf_netdev_priv *np,
 			       const u8 *macaddr, bool async)
 {
 	struct idpf_vport_config *vport_config;
@@ -472,7 +470,8 @@ static int idpf_del_mac_filter(struct idpf_vport *vport,
 	if (np->state == __IDPF_VPORT_UP) {
 		int err;
 
-		err = idpf_add_del_mac_filters(vport, np, false, async);
+		err = idpf_add_del_mac_filters(np->adapter, vport_config,
+					       np->vport_id, false, async);
 		if (err)
 			return err;
 	}
@@ -520,7 +519,6 @@ static int __idpf_add_mac_filter(struct idpf_vport_config *vport_config,
 
 /**
  * idpf_add_mac_filter - Add a mac filter to the filter list
- * @vport: Main vport structure
  * @np: Netdev private structure
  * @macaddr: The MAC address
  * @async: Don't wait for return message
@@ -528,8 +526,7 @@ static int __idpf_add_mac_filter(struct idpf_vport_config *vport_config,
  * Returns 0 on success or error on failure. If interface is up, we'll also
  * send the virtchnl message to tell hardware about the filter.
  **/
-static int idpf_add_mac_filter(struct idpf_vport *vport,
-			       struct idpf_netdev_priv *np,
+static int idpf_add_mac_filter(struct idpf_netdev_priv *np,
 			       const u8 *macaddr, bool async)
 {
 	struct idpf_vport_config *vport_config;
@@ -541,7 +538,8 @@ static int idpf_add_mac_filter(struct idpf_vport *vport,
 		return err;
 
 	if (np->state == __IDPF_VPORT_UP)
-		err = idpf_add_del_mac_filters(vport, np, true, async);
+		err = idpf_add_del_mac_filters(np->adapter, vport_config,
+					       np->vport_id, true, async);
 
 	return err;
 }
@@ -589,7 +587,7 @@ static void idpf_restore_mac_filters(struct idpf_vport *vport)
 
 	spin_unlock_bh(&vport_config->mac_filter_list_lock);
 
-	idpf_add_del_mac_filters(vport, netdev_priv(vport->netdev),
+	idpf_add_del_mac_filters(vport->adapter, vport_config, vport->vport_id,
 				 true, false);
 }
 
@@ -613,7 +611,7 @@ static void idpf_remove_mac_filters(struct idpf_vport *vport)
 
 	spin_unlock_bh(&vport_config->mac_filter_list_lock);
 
-	idpf_add_del_mac_filters(vport, netdev_priv(vport->netdev),
+	idpf_add_del_mac_filters(vport->adapter, vport_config, vport->vport_id,
 				 false, false);
 }
 
@@ -655,8 +653,7 @@ static int idpf_init_mac_addr(struct idpf_vport *vport,
 		eth_hw_addr_set(netdev, vport->default_mac_addr);
 		ether_addr_copy(netdev->perm_addr, vport->default_mac_addr);
 
-		return idpf_add_mac_filter(vport, np, vport->default_mac_addr,
-					   false);
+		return idpf_add_mac_filter(np, vport->default_mac_addr, false);
 	}
 
 	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS,
@@ -668,7 +665,7 @@ static int idpf_init_mac_addr(struct idpf_vport *vport,
 	}
 
 	eth_hw_addr_random(netdev);
-	err = idpf_add_mac_filter(vport, np, netdev->dev_addr, false);
+	err = idpf_add_mac_filter(np, netdev->dev_addr, false);
 	if (err)
 		return err;
 
@@ -842,7 +839,9 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
+	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_queue_id_reg_info *chunks;
+	u32 vport_id = vport->vport_id;
 
 	if (np->state <= __IDPF_VPORT_DOWN)
 		return;
@@ -850,18 +849,18 @@ static void idpf_vport_stop(struct idpf_vport *vport)
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
 
@@ -943,7 +942,7 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 	kfree(rss_data->rss_key);
 	rss_data->rss_key = NULL;
 
-	idpf_send_destroy_vport_msg(vport);
+	idpf_send_destroy_vport_msg(adapter, vport->vport_id);
 
 	/* Release all max queues allocated to the adapter's pool */
 	max_q.max_rxq = vport_config->max_q.max_rxq;
@@ -1203,7 +1202,8 @@ void idpf_statistics_task(struct work_struct *work)
 		struct idpf_vport *vport = adapter->vports[i];
 
 		if (vport && !test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
-			idpf_send_get_stats_msg(vport);
+			idpf_send_get_stats_msg(netdev_priv(vport->netdev),
+						&vport->port_stats);
 	}
 
 	queue_delayed_work(adapter->stats_wq, &adapter->stats_task,
@@ -1343,6 +1343,8 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	struct idpf_vport_config *vport_config;
 	struct idpf_queue_id_reg_info *chunks;
 	struct idpf_rss_data *rss_data;
+	u32 vport_id = vport->vport_id;
+	bool rsc_ena;
 	int err;
 
 	if (np->state != __IDPF_VPORT_DOWN)
@@ -1405,14 +1407,16 @@ static int idpf_vport_open(struct idpf_vport *vport)
 
 	idpf_vport_intr_ena(vport, rsrc);
 
-	err = idpf_send_config_queues_msg(vport, rsrc);
+	rsc_ena = idpf_is_feature_ena(vport, NETIF_F_GRO_HW);
+	err = idpf_send_config_queues_msg(adapter, rsrc, vport_id, rsc_ena);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to configure queues for vport %u, %d\n",
 			vport->vport_id, err);
 		goto rxq_deinit;
 	}
 
-	err = idpf_send_map_unmap_queue_vector_msg(vport, rsrc, true);
+	err = idpf_send_map_unmap_queue_vector_msg(adapter, rsrc, vport_id,
+						   true);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to map queue vectors for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1426,7 +1430,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 		goto unmap_queue_vectors;
 	}
 
-	err = idpf_send_enable_vport_msg(vport);
+	err = idpf_send_enable_vport_msg(adapter, vport_id);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to enable vport %u: %d\n",
 			vport->vport_id, err);
@@ -1459,11 +1463,11 @@ static int idpf_vport_open(struct idpf_vport *vport)
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
 rxq_deinit:
 	idpf_xdp_rxq_info_deinit_all(rsrc);
 intr_deinit:
@@ -1885,6 +1889,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_q_vec_rsrc *new_rsrc;
+	u32 vport_id = vport->vport_id;
 	struct idpf_vport *new_vport;
 	int err;
 
@@ -1936,28 +1941,21 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
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
 
@@ -1976,8 +1974,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	return err;
 
 err_reset:
-	idpf_send_add_queues_msg(vport, rsrc->num_txq, rsrc->num_complq,
-				 rsrc->num_rxq, rsrc->num_bufq);
+	idpf_send_add_queues_msg(adapter, vport_config, rsrc, vport_id);
 
 err_open:
 	if (current_state == __IDPF_VPORT_UP)
@@ -2006,7 +2003,7 @@ static int idpf_addr_sync(struct net_device *netdev, const u8 *addr)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 
-	return idpf_add_mac_filter(np->vport, np, addr, true);
+	return idpf_add_mac_filter(np, addr, true);
 }
 
 /**
@@ -2034,7 +2031,7 @@ static int idpf_addr_unsync(struct net_device *netdev, const u8 *addr)
 	if (ether_addr_equal(addr, netdev->dev_addr))
 		return 0;
 
-	idpf_del_mac_filter(np->vport, np, addr, true);
+	idpf_del_mac_filter(np, addr, true);
 
 	return 0;
 }
@@ -2118,14 +2115,15 @@ static void idpf_set_rx_mode(struct net_device *netdev)
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
@@ -2181,8 +2179,13 @@ static int idpf_set_features(struct net_device *netdev,
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
@@ -2344,14 +2347,14 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
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
index f8bc90561754..d538dff78bd9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -4522,13 +4522,15 @@ void idpf_vport_intr_ena(struct idpf_vport *vport, struct idpf_q_vec_rsrc *rsrc)
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
index 574dadc6e190..5b904c232584 100644
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
index d35f0b5a8ce9..8a43ad873f25 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1059,12 +1059,12 @@ idpf_vport_init_queue_reg_chunks(struct idpf_vport_config *vport_config,
 
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
@@ -1072,7 +1072,7 @@ int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
 	u16 num_vchunks, num_vec;
 	int num_regs = 0, i, j;
 
-	chunks = &vport->adapter->req_vec_chunks->vchunks;
+	chunks = &adapter->req_vec_chunks->vchunks;
 	num_vchunks = le16_to_cpu(chunks->num_vchunks);
 
 	for (j = 0; j < num_vchunks; j++) {
@@ -1408,86 +1408,91 @@ int idpf_check_supported_desc_ids(struct idpf_vport *vport)
 
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
@@ -1579,13 +1584,13 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport,
 
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
 
@@ -1601,14 +1606,17 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport,
 
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
@@ -1646,7 +1654,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
 			qi[k].buffer_notif_stride = IDPF_RX_BUF_STRIDE;
 			qi[k].rx_buffer_low_watermark =
 				cpu_to_le16(bufq->rx_buffer_low_watermark);
-			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
+			if (rsc_ena)
 				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
 		}
 
@@ -1685,7 +1693,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
 			}
 			qi[k].rx_buffer_low_watermark =
 				cpu_to_le16(rxq->rx_buffer_low_watermark);
-			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
+			if (rsc_ena)
 				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
 
 			rxq->rx_hbuf_size = sets[0].bufq.rx_hbuf_size;
@@ -1737,13 +1745,13 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
 
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
 
@@ -1760,15 +1768,17 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
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
@@ -1790,7 +1800,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport,
 	if (!eq)
 		return -ENOMEM;
 
-	eq->vport_id = cpu_to_le32(vport->vport_id);
+	eq->vport_id = cpu_to_le32(vport_id);
 	eq->chunks.num_chunks = cpu_to_le16(num_chunks);
 
 	idpf_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks->queue_chunks,
@@ -1798,7 +1808,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport,
 
 	xn_params.send_buf.iov_base = eq;
 	xn_params.send_buf.iov_len = buf_sz;
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 
 	return reply_sz < 0 ? reply_sz : 0;
 }
@@ -1806,15 +1816,17 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport,
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
@@ -1929,11 +1941,11 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport,
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
 
@@ -1958,7 +1970,8 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport,
 int idpf_send_enable_queues_msg(struct idpf_vport *vport,
 				struct idpf_queue_id_reg_info *chunks)
 {
-	return idpf_send_ena_dis_queues_msg(vport, chunks, true);
+	return idpf_send_ena_dis_queues_msg(vport->adapter, chunks,
+					    vport->vport_id, true);
 }
 
 /**
@@ -1976,7 +1989,8 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport,
 {
 	int err;
 
-	err = idpf_send_ena_dis_queues_msg(vport, chunks, false);
+	err = idpf_send_ena_dis_queues_msg(vport->adapter, chunks,
+					   vport->vport_id, false);
 	if (err)
 		return err;
 
@@ -1985,14 +1999,16 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport,
 
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
@@ -2007,7 +2023,7 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport,
 	if (!eq)
 		return -ENOMEM;
 
-	eq->vport_id = cpu_to_le32(vport->vport_id);
+	eq->vport_id = cpu_to_le32(vport_id);
 	eq->chunks.num_chunks = cpu_to_le16(num_chunks);
 
 	idpf_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks->queue_chunks,
@@ -2017,50 +2033,52 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport,
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
 
@@ -2068,13 +2086,11 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
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
@@ -2082,15 +2098,15 @@ int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
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
@@ -2221,24 +2237,24 @@ int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs)
 
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
@@ -2246,7 +2262,7 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
 	xn_params.recv_buf = xn_params.send_buf;
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(np->adapter, &xn_params);
 	if (reply_sz < 0)
 		return reply_sz;
 	if (reply_sz < sizeof(stats_msg))
@@ -2267,7 +2283,7 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
 	netstats->rx_dropped = le64_to_cpu(stats_msg.rx_discards);
 	netstats->tx_dropped = le64_to_cpu(stats_msg.tx_discards);
 
-	vport->port_stats.vport_stats = stats_msg;
+	port_stats->vport_stats = stats_msg;
 
 	spin_unlock_bh(&np->stats_lock);
 
@@ -2276,15 +2292,16 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
 
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
@@ -2298,7 +2315,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport,
 	if (!rl)
 		return -ENOMEM;
 
-	rl->vport_id = cpu_to_le32(vport->vport_id);
+	rl->vport_id = cpu_to_le32(vport_id);
 
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 	xn_params.send_buf.iov_base = rl;
@@ -2318,7 +2335,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport,
 
 		xn_params.vc_op = VIRTCHNL2_OP_SET_RSS_LUT;
 	}
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 	if (reply_sz < 0)
 		return reply_sz;
 	if (!get)
@@ -2351,15 +2368,16 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport,
 
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
@@ -2373,7 +2391,7 @@ int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport,
 	if (!rk)
 		return -ENOMEM;
 
-	rk->vport_id = cpu_to_le32(vport->vport_id);
+	rk->vport_id = cpu_to_le32(vport_id);
 	xn_params.send_buf.iov_base = rk;
 	xn_params.send_buf.iov_len = buf_size;
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
@@ -2393,7 +2411,7 @@ int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport,
 		xn_params.vc_op = VIRTCHNL2_OP_SET_RSS_KEY;
 	}
 
-	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
 	if (reply_sz < 0)
 		return reply_sz;
 	if (!get)
@@ -2699,24 +2717,27 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
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
@@ -3631,22 +3652,21 @@ static int idpf_mac_filter_async_handler(struct idpf_adapter *adapter,
 
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
@@ -3658,7 +3678,6 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 	xn_params.async = async;
 	xn_params.async_handler = idpf_mac_filter_async_handler;
 
-	vport_config = adapter->vport_config[np->vport_idx];
 	spin_lock_bh(&vport_config->mac_filter_list_lock);
 
 	/* Find the number of newly added filters */
@@ -3727,7 +3746,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 			memset(ma_list, 0, buf_size);
 		}
 
-		ma_list->vport_id = cpu_to_le32(np->vport_id);
+		ma_list->vport_id = cpu_to_le32(vport_id);
 		ma_list->num_mac_addr = cpu_to_le16(num_entries);
 		memcpy(ma_list->mac_addr_list, &mac_addr[k], entries_size);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 5f3a278a8fa8..5e3ac5aff635 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -100,7 +100,7 @@ void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter);
 int idpf_vc_core_init(struct idpf_adapter *adapter);
 void idpf_vc_core_deinit(struct idpf_adapter *adapter);
 
-int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
+int idpf_get_reg_intr_vecs(struct idpf_adapter *adapter,
 			   struct idpf_vec_regs *reg_vals);
 int idpf_queue_reg_init(struct idpf_vport *vport,
 			struct idpf_q_vec_rsrc *rsrc,
@@ -123,9 +123,9 @@ int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
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
@@ -133,17 +133,21 @@ int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
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
@@ -152,27 +156,30 @@ int idpf_get_vec_ids(struct idpf_adapter *adapter,
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
 void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr);
 
 #endif /* _IDPF_VIRTCHNL_H_ */
-- 
2.43.0

