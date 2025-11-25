Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C40C863B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 18:36:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23ED140BC6;
	Tue, 25 Nov 2025 17:36:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YYoqtVUClPle; Tue, 25 Nov 2025 17:36:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D08E40BF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764092209;
	bh=HQS0nwWWAG/CNUfs85XQRobRD6rr423KEIXjyvpp3yQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bfIMJtq8f8euBxLyh030GuG++thfejIFRd46MwPbnPrVGsAKCDAWe4Wxl5K6kdOVb
	 LECRm7/n1zUAdW7rmRUMN6jC5j9X2qT/fYGzBA5IzwhM6e40/Kkt6AQq99E6cVDcqH
	 ip6qPhnwENgzXE4GwcvOrQdUSPBh0Fh1NtuFrADPU4J4Gj/XypPoGDpSAFNNhZQHcI
	 yponuMdPQq0SedOXoCBasx4SAz2DXtKWiK9d6mD9ZMmXspSVIYleYIy8sP7aevEWQs
	 uzlw44lHnvfSAPhv2Yf1UIC3w7GFuVBdBVAoMN30XCNki+yXsfLvFi3/x07H0El25O
	 PFnKSMptrUkpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D08E40BF0;
	Tue, 25 Nov 2025 17:36:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 38332359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 17:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A93A60EE1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 17:36:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DSqd0PnHAH3Q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 17:36:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1D710608EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D710608EF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D710608EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 17:36:44 +0000 (UTC)
X-CSE-ConnectionGUID: NpZE1MsWTbSFxPGtLIq7jA==
X-CSE-MsgGUID: FBgh9csmRticLF4tqHeNsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="69979906"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="69979906"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:36:44 -0800
X-CSE-ConnectionGUID: 83E69N6LRfueqL1R3ySKew==
X-CSE-MsgGUID: bf3w1m7bTKqmPJ2OYgTqdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="216040404"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa002.fm.intel.com with ESMTP; 25 Nov 2025 09:36:41 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 25 Nov 2025 18:36:01 +0100
Message-ID: <20251125173603.3834486-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251125173603.3834486-1-aleksander.lobakin@intel.com>
References: <20251125173603.3834486-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764092205; x=1795628205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hiQCTOP4/S5xPr0kEs71P8ohuU8clI3OaBh/kWSlaPc=;
 b=faWoFJw7zoCy5NXrNqr/U+i6tmDHAUSL181gxuF3i/0aUhgBk7icPAjW
 q3sXpMSH1XNkAQ9RH1A6vQSl++S9tWk1lf/Y73F65JMF5TlWwgL14yIag
 BnaMDwWqEWj6dIbIV6H9M1TQLUaySKn1KGyQTYlqeyOSa3tG0EVmIgm/h
 LM2NKkMaQKh2KG9FRkmyydBLsqw9JexmRCkp/rOiDJkG3arJhk9iHX2RB
 9U9c0vUrQSxx5lkm0SMOmc6469ObSk1kQZXPNJ0ws58eudpTlU6/zuoKK
 Cmwa/AolaZYVzdAg5RzwxdeNOqgB0vZlb8F8feRU+b6KtukOsZm+oA4hN
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=faWoFJw7
Subject: [Intel-wired-lan] [PATCH iwl-next 3/5] ice: migrate to netdev ops
 lock
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

Queue management ops unconditionally enable netdev locking. The same
lock is taken by default by several NAPI configuration functions,
such as napi_enable() and netif_napi_set_irq().
Request ops locking in advance and make sure we use the _locked
counterparts of those functions to avoid deadlocks, taking the lock
manually where needed (suspend/resume, queue rebuild and resets).

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.h    |  6 ++-
 drivers/net/ethernet/intel/ice/ice_lib.c    | 56 +++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_main.c   | 49 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_sf_eth.c |  1 +
 drivers/net/ethernet/intel/ice/ice_xsk.c    |  4 +-
 5 files changed, 82 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 2cb1eb98b9da..d9c94c06c657 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -53,9 +53,11 @@ struct ice_vsi *
 ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params);
 
 void ice_vsi_set_napi_queues(struct ice_vsi *vsi);
-void ice_napi_add(struct ice_vsi *vsi);
-
+void ice_vsi_set_napi_queues_locked(struct ice_vsi *vsi);
 void ice_vsi_clear_napi_queues(struct ice_vsi *vsi);
+void ice_vsi_clear_napi_queues_locked(struct ice_vsi *vsi);
+
+void ice_napi_add(struct ice_vsi *vsi);
 
 int ice_vsi_release(struct ice_vsi *vsi);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 15621707fbf8..8f79dd022e91 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2695,7 +2695,7 @@ void ice_vsi_close(struct ice_vsi *vsi)
 	if (!test_and_set_bit(ICE_VSI_DOWN, vsi->state))
 		ice_down(vsi);
 
-	ice_vsi_clear_napi_queues(vsi);
+	ice_vsi_clear_napi_queues_locked(vsi);
 	ice_vsi_free_irq(vsi);
 	ice_vsi_free_tx_rings(vsi);
 	ice_vsi_free_rx_rings(vsi);
@@ -2764,12 +2764,13 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 }
 
 /**
- * ice_vsi_set_napi_queues - associate netdev queues with napi
+ * ice_vsi_set_napi_queues_locked - associate netdev queues with napi
  * @vsi: VSI pointer
  *
  * Associate queue[s] with napi for all vectors.
+ * Must be called only with the netdev_lock taken.
  */
-void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
+void ice_vsi_set_napi_queues_locked(struct ice_vsi *vsi)
 {
 	struct net_device *netdev = vsi->netdev;
 	int q_idx, v_idx;
@@ -2777,7 +2778,6 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 	if (!netdev)
 		return;
 
-	ASSERT_RTNL();
 	ice_for_each_rxq(vsi, q_idx)
 		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX,
 				     &vsi->rx_rings[q_idx]->q_vector->napi);
@@ -2789,17 +2789,37 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 	ice_for_each_q_vector(vsi, v_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
 
-		netif_napi_set_irq(&q_vector->napi, q_vector->irq.virq);
+		netif_napi_set_irq_locked(&q_vector->napi, q_vector->irq.virq);
 	}
 }
 
 /**
- * ice_vsi_clear_napi_queues - dissociate netdev queues from napi
+ * ice_vsi_set_napi_queues - associate VSI queues with NAPIs
  * @vsi: VSI pointer
  *
+ * Version of ice_vsi_set_napi_queues_locked() that takes the netdev_lock,
+ * to use it outside of the net_device_ops context.
+ */
+void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
+{
+	struct net_device *netdev = vsi->netdev;
+
+	if (!netdev)
+		return;
+
+	netdev_lock(netdev);
+	ice_vsi_set_napi_queues_locked(vsi);
+	netdev_unlock(netdev);
+}
+
+/**
+ * ice_vsi_clear_napi_queues_locked - dissociate netdev queues from napi
+ * @vsi: VSI to process
+ *
  * Clear the association between all VSI queues queue[s] and napi.
+ * Must be called only with the netdev_lock taken.
  */
-void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)
+void ice_vsi_clear_napi_queues_locked(struct ice_vsi *vsi)
 {
 	struct net_device *netdev = vsi->netdev;
 	int q_idx, v_idx;
@@ -2807,12 +2827,11 @@ void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)
 	if (!netdev)
 		return;
 
-	ASSERT_RTNL();
 	/* Clear the NAPI's interrupt number */
 	ice_for_each_q_vector(vsi, v_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
 
-		netif_napi_set_irq(&q_vector->napi, -1);
+		netif_napi_set_irq_locked(&q_vector->napi, -1);
 	}
 
 	ice_for_each_txq(vsi, q_idx)
@@ -2822,6 +2841,25 @@ void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)
 		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX, NULL);
 }
 
+/**
+ * ice_vsi_clear_napi_queues - dissociate VSI queues from NAPIs
+ * @vsi: VSI to process
+ *
+ * Version of ice_vsi_clear_napi_queues_locked() that takes the netdev lock,
+ * to use it outside of the net_device_ops context.
+ */
+void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)
+{
+	struct net_device *netdev = vsi->netdev;
+
+	if (!netdev)
+		return;
+
+	netdev_lock(netdev);
+	ice_vsi_clear_napi_queues_locked(vsi);
+	netdev_unlock(netdev);
+}
+
 /**
  * ice_napi_add - register NAPI handler for the VSI
  * @vsi: VSI for which NAPI handler is to be registered
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2533876f1a2f..c0432182b482 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3523,6 +3523,7 @@ static void ice_set_ops(struct ice_vsi *vsi)
 	}
 
 	netdev->netdev_ops = &ice_netdev_ops;
+	netdev->request_ops_lock = true;
 	netdev->udp_tunnel_nic_info = &pf->hw.udp_tunnel_nic;
 	netdev->xdp_metadata_ops = &ice_xdp_md_ops;
 	ice_set_ethtool_ops(netdev);
@@ -5533,16 +5534,17 @@ static int ice_reinit_interrupt_scheme(struct ice_pf *pf)
 
 	/* Remap vectors and rings, after successful re-init interrupts */
 	ice_for_each_vsi(pf, v) {
-		if (!pf->vsi[v])
+		struct ice_vsi *vsi = pf->vsi[v];
+
+		if (!vsi)
 			continue;
 
-		ret = ice_vsi_alloc_q_vectors(pf->vsi[v]);
+		ret = ice_vsi_alloc_q_vectors(vsi);
 		if (ret)
 			goto err_reinit;
-		ice_vsi_map_rings_to_vectors(pf->vsi[v]);
-		rtnl_lock();
-		ice_vsi_set_napi_queues(pf->vsi[v]);
-		rtnl_unlock();
+
+		ice_vsi_map_rings_to_vectors(vsi);
+		ice_vsi_set_napi_queues(vsi);
 	}
 
 	ret = ice_req_irq_msix_misc(pf);
@@ -5555,13 +5557,15 @@ static int ice_reinit_interrupt_scheme(struct ice_pf *pf)
 	return 0;
 
 err_reinit:
-	while (v--)
-		if (pf->vsi[v]) {
-			rtnl_lock();
-			ice_vsi_clear_napi_queues(pf->vsi[v]);
-			rtnl_unlock();
-			ice_vsi_free_q_vectors(pf->vsi[v]);
-		}
+	while (v--) {
+		struct ice_vsi *vsi = pf->vsi[v];
+
+		if (!vsi)
+			continue;
+
+		ice_vsi_clear_napi_queues(vsi);
+		ice_vsi_free_q_vectors(vsi);
+	}
 
 	return ret;
 }
@@ -5623,14 +5627,17 @@ static int ice_suspend(struct device *dev)
 	 * to CPU0.
 	 */
 	ice_free_irq_msix_misc(pf);
+
 	ice_for_each_vsi(pf, v) {
-		if (!pf->vsi[v])
+		struct ice_vsi *vsi = pf->vsi[v];
+
+		if (!vsi)
 			continue;
-		rtnl_lock();
-		ice_vsi_clear_napi_queues(pf->vsi[v]);
-		rtnl_unlock();
-		ice_vsi_free_q_vectors(pf->vsi[v]);
+
+		ice_vsi_clear_napi_queues(vsi);
+		ice_vsi_free_q_vectors(vsi);
 	}
+
 	ice_clear_interrupt_scheme(pf);
 
 	pci_save_state(pdev);
@@ -6760,7 +6767,7 @@ static void ice_napi_enable_all(struct ice_vsi *vsi)
 		ice_init_moderation(q_vector);
 
 		if (q_vector->rx.rx_ring || q_vector->tx.tx_ring)
-			napi_enable(&q_vector->napi);
+			napi_enable_locked(&q_vector->napi);
 	}
 }
 
@@ -7204,7 +7211,7 @@ static void ice_napi_disable_all(struct ice_vsi *vsi)
 		struct ice_q_vector *q_vector = vsi->q_vectors[q_idx];
 
 		if (q_vector->rx.rx_ring || q_vector->tx.tx_ring)
-			napi_disable(&q_vector->napi);
+			napi_disable_locked(&q_vector->napi);
 
 		cancel_work_sync(&q_vector->tx.dim.work);
 		cancel_work_sync(&q_vector->rx.dim.work);
@@ -7504,7 +7511,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
 		if (err)
 			goto err_set_qs;
 
-		ice_vsi_set_napi_queues(vsi);
+		ice_vsi_set_napi_queues_locked(vsi);
 	}
 
 	err = ice_up_complete(vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 1a2c94375ca7..2c3db1b03055 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -58,6 +58,7 @@ static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port,
 	eth_hw_addr_set(netdev, dyn_port->hw_addr);
 	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
 	netdev->netdev_ops = &ice_sf_netdev_ops;
+	netdev->request_ops_lock = true;
 	SET_NETDEV_DEVLINK_PORT(netdev, devlink_port);
 
 	err = register_netdev(netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 989ff1fd9110..4168cd58d4d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -33,9 +33,9 @@ ice_qvec_toggle_napi(struct ice_vsi *vsi, struct ice_q_vector *q_vector,
 		return;
 
 	if (enable)
-		napi_enable(&q_vector->napi);
+		napi_enable_locked(&q_vector->napi);
 	else
-		napi_disable(&q_vector->napi);
+		napi_disable_locked(&q_vector->napi);
 }
 
 /**
-- 
2.51.1

