Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0115F93B1C7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 15:40:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1A8E608CB;
	Wed, 24 Jul 2024 13:40:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rw73zlxxxhpW; Wed, 24 Jul 2024 13:40:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A439F608E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721828455;
	bh=kEcIf+vgRG6BThnznYfoo3eh4Rybadp2wF2IyBLFoZY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=38xHzJ+jIOedjQb/b8YuFZgsCNJAH+rNfo/dl3vPkCd3hZQjxEsJFZMBiEMkAK5WU
	 gcp4QiT5RaCnDrCVI6ERpnoLLDrbrMDIAFNtk4wUH7ZINqEv5KNipReU9VVNXUticU
	 gP7D6MPMkYnD3A5RWdHLdH8kk+dFG18dG5IBf2C7fD79kzUayK+wqm6MrNs8mBP4BE
	 Dn8FaOmfI82n39LBGOCBuE2OYf+stDi25XyUFeA8+qy7xCKDYE86caTTLb1j+NHJs3
	 bCRKiXUx8wNEkDF3RaylpnJ6xyr509ArObklKuh+ZbekWd9MWY0bZAUqR2PfjKyVRP
	 rzB7MgOnqhoig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A439F608E0;
	Wed, 24 Jul 2024 13:40:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C9271BF982
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46AA681312
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qGMRyVKXv6UD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 13:40:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 54E9681319
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54E9681319
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54E9681319
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:52 +0000 (UTC)
X-CSE-ConnectionGUID: ua746wXkSViH6Af9xIr45Q==
X-CSE-MsgGUID: KWWZ1bhDRsujxIAVFKhbtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19469398"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19469398"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 06:40:52 -0700
X-CSE-ConnectionGUID: 5Wvo4E6OSBSepv5zfWDn3A==
X-CSE-MsgGUID: FkMY7tQeSLOee0112W9Z6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52615665"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa009.jf.intel.com with ESMTP; 24 Jul 2024 06:40:49 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 15:40:24 +0200
Message-ID: <20240724134024.2182959-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
References: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721828452; x=1753364452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rsgxUZRTvl1cNNXgw08umMqld3Xw6cnIB2s9pqul3jY=;
 b=ZIbZ+vUQpdv/mvur0DrzVzwl8gAMb1zxha66lqS6uHAfM8IggUqQGfji
 hq/m8m4KXg+axbQeU6WuB/gYywueU3UZc/HEL3HAK9kJBM3L0qoV39OyG
 nuyDQuxRlivTeHn2A7cbIIA3uIzEJkaLyr1huXdJeP62r2mmgHVnspH0A
 aimB2iSYz7cUZKMk3j45F5Bhcq/jp1ntWQLPrYPNWunyuiRZMI2ZdHI4Z
 TFOJDhn23KBUJJce/iDOhrqaL0vmliqMW24sUI+oCcIeUx+13UInzEZVQ
 bzlXtiprTr+/FlQWdILOyiinPjX8dnfV2iivZ536l7QS4k6FUQuRjaUTv
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZIbZ+vUQ
Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] idpf: fix UAFs when
 destroying the queues
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The second tagged commit started sometimes (very rarely, but possible)
throwing WARNs from
net/core/page_pool.c:page_pool_disable_direct_recycling().
Turned out idpf frees interrupt vectors with embedded NAPIs *before*
freeing the queues making page_pools' NAPI pointers lead to freed
memory before these pools are destroyed by libeth.
It's not clear whether there are other accesses to the freed vectors
when destroying the queues, but anyway, we usually free queue/interrupt
vectors only when the queues are destroyed and the NAPIs are guaranteed
to not be referenced anywhere.

Invert the allocation and freeing logic making queue/interrupt vectors
be allocated first and freed last. Vectors don't require queues to be
present, so this is safe. Additionally, this change allows to remove
that useless queue->q_vector pointer cleanup, as vectors are still
valid when freeing the queues (+ both are freed within one function,
so it's not clear why nullify the pointers at all).

Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
Fixes: 90912f9f4f2d ("idpf: convert header split mode to libeth + napi_build_skb()")
Reported-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c  | 24 ++++++++++-----------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 24 +--------------------
 2 files changed, 13 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 10b884dd3475..0b6c8fd5bc90 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -900,8 +900,8 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 
 	vport->link_up = false;
 	idpf_vport_intr_deinit(vport);
-	idpf_vport_intr_rel(vport);
 	idpf_vport_queues_rel(vport);
+	idpf_vport_intr_rel(vport);
 	np->state = __IDPF_VPORT_DOWN;
 }
 
@@ -1349,43 +1349,43 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	/* we do not allow interface up just yet */
 	netif_carrier_off(vport->netdev);
 
-	err = idpf_vport_queues_alloc(vport);
-	if (err)
-		return err;
-
 	err = idpf_vport_intr_alloc(vport);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to allocate interrupts for vport %u: %d\n",
 			vport->vport_id, err);
-		goto queues_rel;
+		return err;
 	}
 
+	err = idpf_vport_queues_alloc(vport);
+	if (err)
+		goto intr_rel;
+
 	err = idpf_vport_queue_ids_init(vport);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize queue ids for vport %u: %d\n",
 			vport->vport_id, err);
-		goto intr_rel;
+		goto queues_rel;
 	}
 
 	err = idpf_vport_intr_init(vport);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize interrupts for vport %u: %d\n",
 			vport->vport_id, err);
-		goto intr_rel;
+		goto queues_rel;
 	}
 
 	err = idpf_rx_bufs_init_all(vport);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize RX buffers for vport %u: %d\n",
 			vport->vport_id, err);
-		goto intr_rel;
+		goto queues_rel;
 	}
 
 	err = idpf_queue_reg_init(vport);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize queue registers for vport %u: %d\n",
 			vport->vport_id, err);
-		goto intr_rel;
+		goto queues_rel;
 	}
 
 	idpf_rx_init_buf_tail(vport);
@@ -1452,10 +1452,10 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
 intr_deinit:
 	idpf_vport_intr_deinit(vport);
-intr_rel:
-	idpf_vport_intr_rel(vport);
 queues_rel:
 	idpf_vport_queues_rel(vport);
+intr_rel:
+	idpf_vport_intr_rel(vport);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index a2f9f252694a..585c3dadd9bf 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3576,9 +3576,7 @@ static void idpf_vport_intr_napi_dis_all(struct idpf_vport *vport)
  */
 void idpf_vport_intr_rel(struct idpf_vport *vport)
 {
-	int i, j, v_idx;
-
-	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
+	for (u32 v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
 		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
 
 		kfree(q_vector->complq);
@@ -3593,26 +3591,6 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 		free_cpumask_var(q_vector->affinity_mask);
 	}
 
-	/* Clean up the mapping of queues to vectors */
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
-
-		if (idpf_is_queue_model_split(vport->rxq_model))
-			for (j = 0; j < rx_qgrp->splitq.num_rxq_sets; j++)
-				rx_qgrp->splitq.rxq_sets[j]->rxq.q_vector = NULL;
-		else
-			for (j = 0; j < rx_qgrp->singleq.num_rxq; j++)
-				rx_qgrp->singleq.rxqs[j]->q_vector = NULL;
-	}
-
-	if (idpf_is_queue_model_split(vport->txq_model))
-		for (i = 0; i < vport->num_txq_grp; i++)
-			vport->txq_grps[i].complq->q_vector = NULL;
-	else
-		for (i = 0; i < vport->num_txq_grp; i++)
-			for (j = 0; j < vport->txq_grps[i].num_txq; j++)
-				vport->txq_grps[i].txqs[j]->q_vector = NULL;
-
 	kfree(vport->q_vectors);
 	vport->q_vectors = NULL;
 }
-- 
2.45.2

