Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 570B4853AF5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 20:31:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 990EE60E1D;
	Tue, 13 Feb 2024 19:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jyj-se372egA; Tue, 13 Feb 2024 19:31:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8020C60E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707852688;
	bh=h2obgJbsgNYWowqeRPcglL0vL9RmLnYCr94H1eK7CZM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tCeVZNYHhB6yuQlqYW8TmhzRkEFwrfFxPO5jM7jfyFMmRvQqTGNOIqfRl3G7Dr3AT
	 KRuVDdrE82VeRAVTInY0Q5/JM+eKA8G1DefZqHdZRZe/3N7kpn5aaqRjyIuKMArJv3
	 RvvHuJ/aTd0dOr562Uv4gL8m/Drf8yLkD+y3QXYBfCFXdu7FwhGgLsopcEp8Im8My/
	 9uMlslzXgsFX8Le2YOMEqFJXnlHQjJs97h34g1S8y6YUpRUWneiae8dvgw315E3XcH
	 IPndLZaZTn/qfdoIipFCDHkf2A2kUipGC115alJorxgGIf5Y3K6CWIjd2xlO2M/Mvs
	 VjpMNp6G59BKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8020C60E0B;
	Tue, 13 Feb 2024 19:31:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 202DF1BF977
 for <intel-wired-lan@osuosl.org>; Tue, 13 Feb 2024 19:31:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B5908224F
 for <intel-wired-lan@osuosl.org>; Tue, 13 Feb 2024 19:31:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6MCuyy2wQOST for <intel-wired-lan@osuosl.org>;
 Tue, 13 Feb 2024 19:31:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=amritha.nambiar@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0A07F82237
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A07F82237
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A07F82237
 for <intel-wired-lan@osuosl.org>; Tue, 13 Feb 2024 19:31:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="24350298"
X-IronPort-AV: E=Sophos;i="6.06,158,1705392000"; d="scan'208";a="24350298"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 11:31:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,158,1705392000"; 
   d="scan'208";a="3019894"
Received: from anambiarhost.jf.intel.com ([10.166.29.163])
 by orviesa010.jf.intel.com with ESMTP; 13 Feb 2024 11:31:21 -0800
From: Amritha Nambiar <amritha.nambiar@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 13 Feb 2024 11:48:50 -0800
Message-ID: <170785373072.3325.9129916579186572531.stgit@anambiarhost.jf.intel.com>
User-Agent: StGit/unknown-version
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707852686; x=1739388686;
 h=subject:from:to:cc:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JJIlTxfySUYf1MIHW+4tv/+DNYOdyyIi9+ZEwtZ8m6U=;
 b=RKxApBvFAyhECN4iY0pkKfQXWs7/mH/HUCvJuTSGrAJa46wGizIMPFQX
 bVked2gnGsMykneYuxoLjw0xfG3c+u673VTEbcOa/GPC24SdKT+RfSQDO
 zsfhGwfXwMu9aj/HTFlOW/b/Cz+j4mZJPqPZhe6wDGFrxvaubmAPqPvom
 iGoXKwxuCvDo+2NRBevR86IBSGyKHBoqA47e4EsxS4pTWsZ6vHSjZD237
 AavH21VOaaXR3dn357DEFcn1SfE3mVWljWXBOeAcfl758ugIljLj6xzix
 JICr9RylA11cV6csUVBu8XuJvtkowoI49t62/kU/59K8BxeuR3mx+Azyj
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RKxApBvF
Subject: [Intel-wired-lan] [net PATCH] ice: Fix ASSERT_RTNL() warning during
 certain scenarios
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: sridhar.samudrala@intel.com, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com, amritha.nambiar@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 91fdbce7e8d6 ("ice: Add support in the driver for associating
queue with napi") invoked the netif_queue_set_napi() call. This
kernel function requires to be called with rtnl_lock taken,
otherwise ASSERT_RTNL() warning will be triggered. ice_vsi_rebuild()
initiating this call is under rntl_lock when the rebuild is in
response to configuration changes from external interfaces (such as
tc, ethtool etc. which holds the lock). But, the VSI rebuild
generated from service tasks and resets (PFR/CORER/GLOBR) is not
under rtnl lock protection. Handle these cases as well to hold lock
before the kernel call (by setting the 'locked' boolean to false).

netif_queue_set_napi() is also used to clear previously set napi
in the q_vector unroll flow. Handle this for locked/lockless execution
paths.

Fixes: 91fdbce7e8d6 ("ice: Add support in the driver for associating queue with napi")
Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c |   10 +--
 drivers/net/ethernet/intel/ice/ice_lib.c  |   86 +++++++++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_lib.h  |   10 +++
 drivers/net/ethernet/intel/ice/ice_main.c |    3 +
 4 files changed, 83 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 79485c944c9d..662fc395edcc 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -190,15 +190,13 @@ static void ice_free_q_vector(struct ice_vsi *vsi, int v_idx)
 	q_vector = vsi->q_vectors[v_idx];
 
 	ice_for_each_tx_ring(tx_ring, q_vector->tx) {
-		if (vsi->netdev)
-			netif_queue_set_napi(vsi->netdev, tx_ring->q_index,
-					     NETDEV_QUEUE_TYPE_TX, NULL);
+		ice_queue_set_napi(vsi, tx_ring->q_index, NETDEV_QUEUE_TYPE_TX,
+				   NULL);
 		tx_ring->q_vector = NULL;
 	}
 	ice_for_each_rx_ring(rx_ring, q_vector->rx) {
-		if (vsi->netdev)
-			netif_queue_set_napi(vsi->netdev, rx_ring->q_index,
-					     NETDEV_QUEUE_TYPE_RX, NULL);
+		ice_queue_set_napi(vsi, rx_ring->q_index, NETDEV_QUEUE_TYPE_RX,
+				   NULL);
 		rx_ring->q_vector = NULL;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 718cb8df7853..e81b563e34a3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2251,7 +2251,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 		ice_vsi_map_rings_to_vectors(vsi);
 
 		/* Associate q_vector rings to napi */
-		ice_vsi_set_napi_queues(vsi, true);
+		ice_vsi_set_napi_queues(vsi);
 
 		vsi->stat_offsets_loaded = false;
 
@@ -2728,19 +2728,19 @@ void ice_vsi_dis_irq(struct ice_vsi *vsi)
 }
 
 /**
- * ice_queue_set_napi - Set the napi instance for the queue
+ * __ice_queue_set_napi - Set the napi instance for the queue
  * @dev: device to which NAPI and queue belong
  * @queue_index: Index of queue
  * @type: queue type as RX or TX
  * @napi: NAPI context
  * @locked: is the rtnl_lock already held
  *
- * Set the napi instance for the queue
+ * Set the napi instance for the queue. Caller indicates the lock status.
  */
 static void
-ice_queue_set_napi(struct net_device *dev, unsigned int queue_index,
-		   enum netdev_queue_type type, struct napi_struct *napi,
-		   bool locked)
+__ice_queue_set_napi(struct net_device *dev, unsigned int queue_index,
+		     enum netdev_queue_type type, struct napi_struct *napi,
+		     bool locked)
 {
 	if (!locked)
 		rtnl_lock();
@@ -2750,26 +2750,79 @@ ice_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 }
 
 /**
- * ice_q_vector_set_napi_queues - Map queue[s] associated with the napi
+ * ice_queue_set_napi - Set the napi instance for the queue
+ * @vsi: VSI being configured
+ * @queue_index: Index of queue
+ * @type: queue type as RX or TX
+ * @napi: NAPI context
+ *
+ * Set the napi instance for the queue. The rtnl lock state is derived from the
+ * execution path.
+ */
+void
+ice_queue_set_napi(struct ice_vsi *vsi, unsigned int queue_index,
+		   enum netdev_queue_type type, struct napi_struct *napi)
+{
+	struct ice_pf *pf = vsi->back;
+
+	if (!vsi->netdev)
+		return;
+
+	if (current_work() == &pf->serv_task ||
+	    test_bit(ICE_PREPARED_FOR_RESET, pf->state) ||
+	    test_bit(ICE_DOWN, pf->state) ||
+	    test_bit(ICE_SUSPENDED, pf->state))
+		__ice_queue_set_napi(vsi->netdev, queue_index, type, napi,
+				     false);
+	else
+		__ice_queue_set_napi(vsi->netdev, queue_index, type, napi,
+				     true);
+}
+
+/**
+ * __ice_q_vector_set_napi_queues - Map queue[s] associated with the napi
  * @q_vector: q_vector pointer
  * @locked: is the rtnl_lock already held
  *
+ * Associate the q_vector napi with all the queue[s] on the vector.
+ * Caller indicates the lock status.
+ */
+void __ice_q_vector_set_napi_queues(struct ice_q_vector *q_vector, bool locked)
+{
+	struct ice_rx_ring *rx_ring;
+	struct ice_tx_ring *tx_ring;
+
+	ice_for_each_rx_ring(rx_ring, q_vector->rx)
+		__ice_queue_set_napi(q_vector->vsi->netdev, rx_ring->q_index,
+				     NETDEV_QUEUE_TYPE_RX, &q_vector->napi,
+				     locked);
+
+	ice_for_each_tx_ring(tx_ring, q_vector->tx)
+		__ice_queue_set_napi(q_vector->vsi->netdev, tx_ring->q_index,
+				     NETDEV_QUEUE_TYPE_TX, &q_vector->napi,
+				     locked);
+	/* Also set the interrupt number for the NAPI */
+	netif_napi_set_irq(&q_vector->napi, q_vector->irq.virq);
+}
+
+/**
+ * ice_q_vector_set_napi_queues - Map queue[s] associated with the napi
+ * @q_vector: q_vector pointer
+ *
  * Associate the q_vector napi with all the queue[s] on the vector
  */
-void ice_q_vector_set_napi_queues(struct ice_q_vector *q_vector, bool locked)
+void ice_q_vector_set_napi_queues(struct ice_q_vector *q_vector)
 {
 	struct ice_rx_ring *rx_ring;
 	struct ice_tx_ring *tx_ring;
 
 	ice_for_each_rx_ring(rx_ring, q_vector->rx)
-		ice_queue_set_napi(q_vector->vsi->netdev, rx_ring->q_index,
-				   NETDEV_QUEUE_TYPE_RX, &q_vector->napi,
-				   locked);
+		ice_queue_set_napi(q_vector->vsi, rx_ring->q_index,
+				   NETDEV_QUEUE_TYPE_RX, &q_vector->napi);
 
 	ice_for_each_tx_ring(tx_ring, q_vector->tx)
-		ice_queue_set_napi(q_vector->vsi->netdev, tx_ring->q_index,
-				   NETDEV_QUEUE_TYPE_TX, &q_vector->napi,
-				   locked);
+		ice_queue_set_napi(q_vector->vsi, tx_ring->q_index,
+				   NETDEV_QUEUE_TYPE_TX, &q_vector->napi);
 	/* Also set the interrupt number for the NAPI */
 	netif_napi_set_irq(&q_vector->napi, q_vector->irq.virq);
 }
@@ -2777,11 +2830,10 @@ void ice_q_vector_set_napi_queues(struct ice_q_vector *q_vector, bool locked)
 /**
  * ice_vsi_set_napi_queues
  * @vsi: VSI pointer
- * @locked: is the rtnl_lock already held
  *
  * Associate queue[s] with napi for all vectors
  */
-void ice_vsi_set_napi_queues(struct ice_vsi *vsi, bool locked)
+void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 {
 	int i;
 
@@ -2789,7 +2841,7 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi, bool locked)
 		return;
 
 	ice_for_each_q_vector(vsi, i)
-		ice_q_vector_set_napi_queues(vsi->q_vectors[i], locked);
+		ice_q_vector_set_napi_queues(vsi->q_vectors[i]);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 0c77d581416a..b5a1ed7cc4b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -81,9 +81,15 @@ void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc);
 struct ice_vsi *
 ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params);
 
-void ice_q_vector_set_napi_queues(struct ice_q_vector *q_vector, bool locked);
+void
+ice_queue_set_napi(struct ice_vsi *vsi, unsigned int queue_index,
+		   enum netdev_queue_type type, struct napi_struct *napi);
+
+void __ice_q_vector_set_napi_queues(struct ice_q_vector *q_vector, bool locked);
+
+void ice_q_vector_set_napi_queues(struct ice_q_vector *q_vector);
 
-void ice_vsi_set_napi_queues(struct ice_vsi *vsi, bool locked);
+void ice_vsi_set_napi_queues(struct ice_vsi *vsi);
 
 int ice_vsi_release(struct ice_vsi *vsi);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 824732f16112..0dbbda218ec5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3497,7 +3497,7 @@ static void ice_napi_add(struct ice_vsi *vsi)
 	ice_for_each_q_vector(vsi, v_idx) {
 		netif_napi_add(vsi->netdev, &vsi->q_vectors[v_idx]->napi,
 			       ice_napi_poll);
-		ice_q_vector_set_napi_queues(vsi->q_vectors[v_idx], false);
+		__ice_q_vector_set_napi_queues(vsi->q_vectors[v_idx], false);
 	}
 }
 
@@ -5383,6 +5383,7 @@ static int ice_reinit_interrupt_scheme(struct ice_pf *pf)
 		if (ret)
 			goto err_reinit;
 		ice_vsi_map_rings_to_vectors(pf->vsi[v]);
+		ice_vsi_set_napi_queues(pf->vsi[v]);
 	}
 
 	ret = ice_req_irq_msix_misc(pf);

