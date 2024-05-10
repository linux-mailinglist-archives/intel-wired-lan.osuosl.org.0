Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B258C27B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 17:27:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01AB0845F1;
	Fri, 10 May 2024 15:27:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i-JXTj9iGpY2; Fri, 10 May 2024 15:27:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 946DB845F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715354863;
	bh=ihBCWMTgOJbRFD5GiPN1ct3ZSLCmQ6e7PDFDc8/DzMk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z15r2w6AaEgwpg9T08Fb7uj3T5Sd3XCuve55r7RP9sRw+Go+oe1Kt6/+9mrQrFdht
	 Yd2lSsUc6HvhCBMjgxLluHQEWf0nQRouygRdWK+OeUp2ccfLz0SE+VqIn8oLZdQoNH
	 p24rUBsQVxP9SjSTPCcxLYXaU6LejcE9I9AKxxIzntgZZ7fW7W8Oksh9X7jbaT1udY
	 dbDWFkkTQ+03ZUEXwntK0ReXb25pb8YPeH81QGBWYoe++l+kNE/jDQ4UaCFpnu7sR+
	 MabVbYqvkwlkor7oTHJB0vkavLfCuHg8oP70AFLMn+m7r2aWyT3dFrl0+gHcVvDczH
	 0pvCd6Jv73x3w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 946DB845F6;
	Fri, 10 May 2024 15:27:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4222F1BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DF374244A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V2O1GfphE4bT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 15:27:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D8E0A42048
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8E0A42048
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8E0A42048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:37 +0000 (UTC)
X-CSE-ConnectionGUID: rmumGCk3RYOhZLVH3d2CrQ==
X-CSE-MsgGUID: /dM4XSsUTlKMgJmva8Ztvg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15152616"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15152616"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:27:38 -0700
X-CSE-ConnectionGUID: ZUMWnBRuQjmXIhXkicuANA==
X-CSE-MsgGUID: 0FdBlTKTSASh8tjNm6WxSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="30208273"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 10 May 2024 08:27:35 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 May 2024 17:26:14 +0200
Message-ID: <20240510152620.2227312-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354858; x=1746890858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4E8x16GtYqW9ZgGDgsswEilQ5kdpYMVqNd0tVHyXroI=;
 b=jOPs+OKIiWWXi436BR/Zx9WOGOUC9owStbRDLnn6G7K0tTr6XMHLjeJ8
 V7ehFNWg+HYDk4oljYXqns9k4mwnPFlbF67DdcwLebYoGXwHGdrsO8MlM
 EEVzSfEip4Eu1iDs4NcyluWD5pC+v1QEp/ChtuqcJ1v6wj6iyYa/gifjW
 DsC5TEIxDnuWybe66aWhMc49pf41GBIk2kiYk8VpllVUp5SNPdfjZXZ/7
 w8AN6vT93zArps94RwyYmJvFMS14t1Gk/XikXF6AtfmoC+DqsDZgfaXSD
 YM6jqhmyQoPzLCY0z4+2k17PX+nyM5KnMEqhULN7zT5GI1zAhDh891cWH
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jOPs+OKI
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 06/12] idpf: merge singleq
 and splitq &net_device_ops
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
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It makes no sense to have a second &net_device_ops struct (800 bytes of
rodata) with only one difference in .ndo_start_xmit, which can easily
be just one `if`. This `if` is a drop in the ocean and you won't see
any difference.
Define unified idpf_xmit_start(). The preparation for sending is the
same, just call either idpf_tx_splitq_frame() or idpf_tx_singleq_frame()
depending on the active model to actually map and send the skb.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  7 ++---
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 26 +++-------------
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 31 ++-----------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 10 +++---
 4 files changed, 15 insertions(+), 59 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 0192d33744ff..015aba5abb3c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1190,10 +1190,9 @@ bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
 			unsigned int count);
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
index 500754795cc8..4aa5ee781bd7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2849,14 +2849,13 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
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
@@ -2878,7 +2877,10 @@ netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
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
2.45.0

