Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81146CA4595
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 16:52:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 347A1846B4;
	Thu,  4 Dec 2025 15:52:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uc7-m-34a0dO; Thu,  4 Dec 2025 15:52:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F24F846FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764863526;
	bh=ptgVARKBA4mo80MMMGenHip0LeStPXhttUG+VvMos/c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zZ4yINMt3xm/GIKxsziHU+dqAR25LSgvHU/Y3Vl9iz+QB2uLNrPQ7bEz+Rz/dNi5y
	 L1TJyOuDGMZd5xjSvrI7dEhGlE5LFaGnzlUGBw+BePTn4b7qqVxyrSXYdGT85w3N+I
	 f4zZSx//Z9tXTglJ/s9DlAhSTez+KDuQK2b9CHKZkfnoRrL64Y7bqnlN9Es/hh1Z8m
	 y/IU8AeqvCdR4d4kDSmC4BNt93Fe58IfUSDzkSAaMEGkSm7JsOj+GuiZFauR8LCRsC
	 Gk7gakXsoyT3AGTThY5pOE/XVralhwmlodlELw7RxdUWrSvD8hs7bDlPaQaFe0gjEq
	 JKfM0/NvJyJ9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F24F846FE;
	Thu,  4 Dec 2025 15:52:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 706BFD3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 15:52:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6252061549
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 15:52:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id phKG-XBOrMdC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 15:52:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A1ABC614D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1ABC614D5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A1ABC614D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 15:52:04 +0000 (UTC)
X-CSE-ConnectionGUID: aARsbn4WTNa/soWiDgas0A==
X-CSE-MsgGUID: DfT3xEEPSIaas5VwHTmItg==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="92365162"
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="92365162"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 07:52:04 -0800
X-CSE-ConnectionGUID: ujarOcRDS4G3lmuKhB3dbA==
X-CSE-MsgGUID: uLdY3ruGQOeUew6qxB1+ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="194677297"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa007.fm.intel.com with ESMTP; 04 Dec 2025 07:52:01 -0800
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
Date: Thu,  4 Dec 2025 16:51:33 +0100
Message-ID: <20251204155133.2437621-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764863525; x=1796399525;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aHgkVsO3gsi7K2qAzrJew/v3oAF8iandu5cOkJl4aXE=;
 b=QzwMnKz8MiMGUsOVE6xmM9zGgq49lRRSlh3VZOKDDtui5lfntvegWX1Z
 nagJEh9TfnrUliQZ7ah/zwniKIBM3xGd4ztq2T9JMqY64D1yNcr24EQW+
 rIOJznGhO/jeO1xKJ3PDv20xqMERZhUeWb+B+jTb1AFiZAm3v7G9YRrJH
 4mEbmRnRUl8I4og+YOY8Dx26blG/bjHR2r2GWx/Z73tKfg/DSKifOwuss
 T9tlermzwD0I2hmD4QC2Q2dhY3e1oqh5O6kW7Rloeo1SNi0KDy0W8wo4+
 XxEZOO8DdLYAXRzt5eEGhghpu680qZZ5O+yhL58I12s/ukNjVBT4Yq6ci
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QzwMnKz8
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: add support for
 transmitting unreadable frags
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

Advertise netmem Tx support in ice. The only change needed is to set
ICE_TX_BUF_FRAG conditionally, only when skb_frag_is_net_iov() is
false. Otherwise, the Tx buffer type will be ICE_TX_BUF_EMPTY and
the driver will skip the DMA unmapping operation.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c   |  1 +
 drivers/net/ethernet/intel/ice/ice_sf_eth.c |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx.c   | 17 +++++++++++++----
 3 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 25e9091ca309..66601b1b7fec 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3524,6 +3524,7 @@ static void ice_set_ops(struct ice_vsi *vsi)
 
 	netdev->netdev_ops = &ice_netdev_ops;
 	netdev->queue_mgmt_ops = &ice_queue_mgmt_ops;
+	netdev->netmem_tx = true;
 	netdev->udp_tunnel_nic_info = &pf->hw.udp_tunnel_nic;
 	netdev->xdp_metadata_ops = &ice_xdp_md_ops;
 	ice_set_ethtool_ops(netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 41e1606a8222..51ad13c9d7f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -59,6 +59,7 @@ static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port,
 	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
 	netdev->netdev_ops = &ice_sf_netdev_ops;
 	netdev->queue_mgmt_ops = &ice_queue_mgmt_ops;
+	netdev->netmem_tx = true;
 	SET_NETDEV_DEVLINK_PORT(netdev, devlink_port);
 
 	err = register_netdev(netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index b6f56cb81f93..e8e1acbd5a7d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -113,11 +113,17 @@ ice_prgm_fdir_fltr(struct ice_vsi *vsi, struct ice_fltr_desc *fdir_desc,
 static void
 ice_unmap_and_free_tx_buf(struct ice_tx_ring *ring, struct ice_tx_buf *tx_buf)
 {
-	if (tx_buf->type != ICE_TX_BUF_XDP_TX && dma_unmap_len(tx_buf, len))
+	switch (tx_buf->type) {
+	case ICE_TX_BUF_DUMMY:
+	case ICE_TX_BUF_FRAG:
+	case ICE_TX_BUF_SKB:
+	case ICE_TX_BUF_XDP_XMIT:
 		dma_unmap_page(ring->dev,
 			       dma_unmap_addr(tx_buf, dma),
 			       dma_unmap_len(tx_buf, len),
 			       DMA_TO_DEVICE);
+		break;
+	}
 
 	switch (tx_buf->type) {
 	case ICE_TX_BUF_DUMMY:
@@ -337,12 +343,14 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 			}
 
 			/* unmap any remaining paged data */
-			if (dma_unmap_len(tx_buf, len)) {
+			if (tx_buf->type != ICE_TX_BUF_EMPTY) {
 				dma_unmap_page(tx_ring->dev,
 					       dma_unmap_addr(tx_buf, dma),
 					       dma_unmap_len(tx_buf, len),
 					       DMA_TO_DEVICE);
+
 				dma_unmap_len_set(tx_buf, len, 0);
+				tx_buf->type = ICE_TX_BUF_EMPTY;
 			}
 		}
 		ice_trace(clean_tx_irq_unmap_eop, tx_ring, tx_desc, tx_buf);
@@ -1493,7 +1501,8 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 				       DMA_TO_DEVICE);
 
 		tx_buf = &tx_ring->tx_buf[i];
-		tx_buf->type = ICE_TX_BUF_FRAG;
+		if (!skb_frag_is_net_iov(frag))
+			tx_buf->type = ICE_TX_BUF_FRAG;
 	}
 
 	/* record SW timestamp if HW timestamp is not available */
@@ -2368,7 +2377,7 @@ void ice_clean_ctrl_tx_irq(struct ice_tx_ring *tx_ring)
 		}
 
 		/* unmap the data header */
-		if (dma_unmap_len(tx_buf, len))
+		if (tx_buf->type != ICE_TX_BUF_EMPTY)
 			dma_unmap_single(tx_ring->dev,
 					 dma_unmap_addr(tx_buf, dma),
 					 dma_unmap_len(tx_buf, len),
-- 
2.52.0

