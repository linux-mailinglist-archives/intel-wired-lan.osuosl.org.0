Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2F58D1D6A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D5C4820D2;
	Tue, 28 May 2024 13:49:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DDWadmcT5EBn; Tue, 28 May 2024 13:49:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 488C081836
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716904182;
	bh=x8sIx0xQQ4p71szza8wtfvUCuheGLtxnC9eZzLHE1Aw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YR8fKoZ/zn4UfxJRS0tJi8ihx2UmIsIlOiAQ2ZozN5jF5xfXDZai9rkNtCTvP5y5c
	 8j6MlToMSx7xV3OjJc+8US/P88BqNF3w0EKArOCGXSOuwV3j+qhybvakNcSpobMzqC
	 lwWAT+1H1dMzhbESpdN+OLfNvegzaLCIaZQZ8bJSpEeGxHRKOrhTUe0aaMyP4qd6+q
	 y8hjNT4xdZpC41c8AR+V38MOLfhwbtjs3zqoQRXpcVRhjeTgmgaubuHG1N66z6dRYi
	 Y2p2twJvLEOePpNdGO7484cjdGzWo16WZieCi18L/SYc0ijgmBK9EmZFedF5iVydE5
	 5BHmfSr/xRwig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 488C081836;
	Tue, 28 May 2024 13:49:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 749D91D2868
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 612ED60784
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C0O2FhAYa0sU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:49:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 802B66077A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 802B66077A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 802B66077A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:38 +0000 (UTC)
X-CSE-ConnectionGUID: 7jd863gFQOqNE00o4Zv3CA==
X-CSE-MsgGUID: gZ3h1Z7CQn6k3r/bIYUnBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13437030"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13437030"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:49:38 -0700
X-CSE-ConnectionGUID: DWC8rK24QkGdZT9Tfx4wTQ==
X-CSE-MsgGUID: AgeWtTT3RyCpxR6SgqCWEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35577437"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 28 May 2024 06:49:35 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:48:40 +0200
Message-ID: <20240528134846.148890-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240528134846.148890-1-aleksander.lobakin@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716904179; x=1748440179;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gZnqF0XHabYYe4ZKOW6AhiGeFoBHQS1SezjFcpmduKI=;
 b=m3/9OC9rc8QZV7LpPZtg8HUBs0bKKdPBMIaju0JcfWJrCwriS5VsUF1H
 h9lPOTt7p9B91S7M1AXGPyBBbvUi+Tvss5vlkY5eGD54MuzQvjzloyXnN
 xvHi4np88mTGpf5tfXePJfNGzA9/WVnsmf7Rl1OUswSOap0hqUHELz26G
 Klr9eyTC+M+BKuQL5LBzIsNFYrELAyiMGpzGUdwR8bi5+8U5ezofN9hkb
 qRQl4JGNDD+15gTSKH+ttBKgEYYzT0HMttgLG45ZpFui5aBrg4+sXGjpP
 Kq0AhPwVjF/idb37nHsqJVA/PWH+L9u11369aeji2VCBrgpe6Aci+Y2lr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m3/9OC9r
Subject: [Intel-wired-lan] [PATCH iwl-next 06/12] idpf: merge singleq and
 splitq &net_device_ops
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
Cc: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It makes no sense to have a second &net_device_ops struct (800 bytes of
rodata) with only one difference in .ndo_start_xmit, which can easily
be just one `if`. This `if` is a drop in the ocean and you won't see
any difference.
Define unified idpf_xmit_start(). The preparation for sending is the
same, just call either idpf_tx_splitq_frame() or idpf_tx_singleq_frame()
depending on the active model to actually map and send the skb.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  9 ++----
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 26 +++-------------
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 31 ++-----------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 17 ++++++----
 4 files changed, 20 insertions(+), 63 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 731e2a73def5..e8a71da62d80 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1204,14 +1204,11 @@ void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
 			   struct idpf_tx_buf *first, u16 ring_idx);
 unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
 					 struct sk_buff *skb);
-bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
-			unsigned int count);
 int idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q, unsigned int size);
 void idpf_tx_timeout(struct net_device *netdev, unsigned int txqueue);
-netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
-				 struct net_device *netdev);
-netdev_tx_t idpf_tx_singleq_start(struct sk_buff *skb,
-				  struct net_device *netdev);
+netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
+				  struct idpf_tx_queue *tx_q);
+netdev_tx_t idpf_tx_start(struct sk_buff *skb, struct net_device *netdev);
 bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rxq,
 				      u16 cleaned_count);
 int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index a8be09a89943..fe91475c7b4c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -4,8 +4,7 @@
 #include "idpf.h"
 #include "idpf_virtchnl.h"
 
-static const struct net_device_ops idpf_netdev_ops_splitq;
-static const struct net_device_ops idpf_netdev_ops_singleq;
+static const struct net_device_ops idpf_netdev_ops;
 
 /**
  * idpf_init_vector_stack - Fill the MSIX vector stack with vector index
@@ -764,10 +763,7 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 	}
 
 	/* assign netdev_ops */
-	if (idpf_is_queue_model_split(vport->txq_model))
-		netdev->netdev_ops = &idpf_netdev_ops_splitq;
-	else
-		netdev->netdev_ops = &idpf_netdev_ops_singleq;
+	netdev->netdev_ops = &idpf_netdev_ops;
 
 	/* setup watchdog timeout value to be 5 second */
 	netdev->watchdog_timeo = 5 * HZ;
@@ -2353,24 +2349,10 @@ void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem)
 	mem->pa = 0;
 }
 
-static const struct net_device_ops idpf_netdev_ops_splitq = {
-	.ndo_open = idpf_open,
-	.ndo_stop = idpf_stop,
-	.ndo_start_xmit = idpf_tx_splitq_start,
-	.ndo_features_check = idpf_features_check,
-	.ndo_set_rx_mode = idpf_set_rx_mode,
-	.ndo_validate_addr = eth_validate_addr,
-	.ndo_set_mac_address = idpf_set_mac,
-	.ndo_change_mtu = idpf_change_mtu,
-	.ndo_get_stats64 = idpf_get_stats64,
-	.ndo_set_features = idpf_set_features,
-	.ndo_tx_timeout = idpf_tx_timeout,
-};
-
-static const struct net_device_ops idpf_netdev_ops_singleq = {
+static const struct net_device_ops idpf_netdev_ops = {
 	.ndo_open = idpf_open,
 	.ndo_stop = idpf_stop,
-	.ndo_start_xmit = idpf_tx_singleq_start,
+	.ndo_start_xmit = idpf_tx_start,
 	.ndo_features_check = idpf_features_check,
 	.ndo_set_rx_mode = idpf_set_rx_mode,
 	.ndo_validate_addr = eth_validate_addr,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index b51f7cd6db01..a3b60a2dfcaa 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -351,8 +351,8 @@ static void idpf_tx_singleq_build_ctx_desc(struct idpf_tx_queue *txq,
  *
  * Returns NETDEV_TX_OK if sent, else an error code
  */
-static netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
-					 struct idpf_tx_queue *tx_q)
+netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
+				  struct idpf_tx_queue *tx_q)
 {
 	struct idpf_tx_offload_params offload = { };
 	struct idpf_tx_buf *first;
@@ -408,33 +408,6 @@ static netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 	return idpf_tx_drop_skb(tx_q, skb);
 }
 
-/**
- * idpf_tx_singleq_start - Selects the right Tx queue to send buffer
- * @skb: send buffer
- * @netdev: network interface device structure
- *
- * Returns NETDEV_TX_OK if sent, else an error code
- */
-netdev_tx_t idpf_tx_singleq_start(struct sk_buff *skb,
-				  struct net_device *netdev)
-{
-	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
-	struct idpf_tx_queue *tx_q;
-
-	tx_q = vport->txqs[skb_get_queue_mapping(skb)];
-
-	/* hardware can't handle really short frames, hardware padding works
-	 * beyond this point
-	 */
-	if (skb_put_padto(skb, IDPF_TX_MIN_PKT_LEN)) {
-		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
-
-		return NETDEV_TX_OK;
-	}
-
-	return idpf_tx_singleq_frame(skb, tx_q);
-}
-
 /**
  * idpf_tx_singleq_clean - Reclaim resources from queue
  * @tx_q: Tx queue to clean
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index f569ea389b04..5dd1b1a9e624 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -4,6 +4,9 @@
 #include "idpf.h"
 #include "idpf_virtchnl.h"
 
+static bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
+			       unsigned int count);
+
 /**
  * idpf_buf_lifo_push - push a buffer pointer onto stack
  * @stack: pointer to stack struct
@@ -2702,8 +2705,8 @@ static bool __idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs)
  * E.g.: a packet with 7 fragments can require 9 DMA transactions; 1 for TSO
  * header, 1 for segment payload, and then 7 for the fragments.
  */
-bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
-			unsigned int count)
+static bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
+			       unsigned int count)
 {
 	if (likely(count < max_bufs))
 		return false;
@@ -2849,14 +2852,13 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 }
 
 /**
- * idpf_tx_splitq_start - Selects the right Tx queue to send buffer
+ * idpf_tx_start - Selects the right Tx queue to send buffer
  * @skb: send buffer
  * @netdev: network interface device structure
  *
  * Returns NETDEV_TX_OK if sent, else an error code
  */
-netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
-				 struct net_device *netdev)
+netdev_tx_t idpf_tx_start(struct sk_buff *skb, struct net_device *netdev)
 {
 	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
 	struct idpf_tx_queue *tx_q;
@@ -2878,7 +2880,10 @@ netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
 		return NETDEV_TX_OK;
 	}
 
-	return idpf_tx_splitq_frame(skb, tx_q);
+	if (idpf_is_queue_model_split(vport->txq_model))
+		return idpf_tx_splitq_frame(skb, tx_q);
+	else
+		return idpf_tx_singleq_frame(skb, tx_q);
 }
 
 /**
-- 
2.45.1

