Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CA554A270
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jun 2022 01:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 712B18271D;
	Mon, 13 Jun 2022 23:08:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKGl991yDSWe; Mon, 13 Jun 2022 23:08:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46DF1826FF;
	Mon, 13 Jun 2022 23:08:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4765A1BF255
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 23:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3149E400FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 23:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gnaMqpHuQNZk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jun 2022 23:07:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EFF57400D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 23:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655161676; x=1686697676;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ysoi0kOQrLG26c8hHHgQSLme/EPL63JWVzUydgvnE/k=;
 b=UsPr2s+ho4T3pBeXDG03856US1+LcFxHu1MOiZRUOF8xzr58hbukWk/Q
 PfKUopmAN9zJcHSF/8Tl+DJ7h6QGknpKcqNL2yHXq1Cuzne2h/1COiPj5
 ZygmX3E5CBKjsNU18eEj2rmR2WyZOFZvwXpVlkWwD1vXLhYq11wmXfhsR
 cuJjd/wUZUQMz/d52li8vWneRXqhvDcxd+4YeWTHD4dCsJjhvDWSIwsOH
 UgHnpv5a2USr2ABLg0ghHmGvBudgHDHiDiI8nEDCLT8BEQ5MWmKew+9BW
 CsUkYE5WKRwuqJxX7jtWr+jiS9b6Z50nqdwbu83h0HeB54URpAnWYN6fQ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="340107921"
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="340107921"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 16:07:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="673548301"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.166.28.101])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jun 2022 16:07:54 -0700
From: Jun Zhang <xuejun.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jun 2022 19:07:42 -0400
Message-Id: <20220613230742.3979180-1-xuejun.zhang@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3] iavf: Disallow changing
 rx/tx-frames and rx/tx-frames-irq
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Remove from supported_coalesce_params ETHTOOL_COALESCE_MAX_FRAMES
and ETHTOOL_COALESCE_MAX_FRAMES_IRQ. As tx-frames-irq allowed
user to change budget for iavf_clean_tx_irq, remove work_limit
and use define for budget.

Without this patch there would be possiblity to change rx/tx-frames
and rx/tx-frames-irq, which for rx/tx-frames did nothing, while for
rx/tx-frames-irq it changed rx/tx-frames and only changed budget
for cleaning NAPI poll.

Fixes: fbb7ddfef253 ("i40evf: core ethtool functionality")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
---
v2: Change author to Przemyslaw Patynowski
v3: Omit Requirment Statement & Add Fixes Tag @ Commit Message
---
 drivers/net/ethernet/intel/iavf/iavf.h         |  1 -
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 10 ----------
 drivers/net/ethernet/intel/iavf/iavf_main.c    |  1 -
 drivers/net/ethernet/intel/iavf/iavf_txrx.c    |  2 +-
 4 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index fda1198d2c00..07143a94159d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -64,7 +64,6 @@ struct iavf_vsi {
 	u16 id;
 	DECLARE_BITMAP(state, __IAVF_VSI_STATE_SIZE__);
 	int base_vector;
-	u16 work_limit;
 	u16 qs_handle;
 	void *priv;     /* client driver data reference. */
 };
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 3bb56714beb0..e535d4c3da49 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -692,12 +692,8 @@ static int __iavf_get_coalesce(struct net_device *netdev,
 			       struct ethtool_coalesce *ec, int queue)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
-	struct iavf_vsi *vsi = &adapter->vsi;
 	struct iavf_ring *rx_ring, *tx_ring;
 
-	ec->tx_max_coalesced_frames = vsi->work_limit;
-	ec->rx_max_coalesced_frames = vsi->work_limit;
-
 	/* Rx and Tx usecs per queue value. If user doesn't specify the
 	 * queue, return queue 0's value to represent.
 	 */
@@ -825,12 +821,8 @@ static int __iavf_set_coalesce(struct net_device *netdev,
 			       struct ethtool_coalesce *ec, int queue)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
-	struct iavf_vsi *vsi = &adapter->vsi;
 	int i;
 
-	if (ec->tx_max_coalesced_frames_irq || ec->rx_max_coalesced_frames_irq)
-		vsi->work_limit = ec->tx_max_coalesced_frames_irq;
-
 	if (ec->rx_coalesce_usecs == 0) {
 		if (ec->use_adaptive_rx_coalesce)
 			netif_info(adapter, drv, netdev, "rx-usecs=0, need to disable adaptive-rx for a complete disable\n");
@@ -1969,8 +1961,6 @@ static int iavf_set_rxfh(struct net_device *netdev, const u32 *indir,
 
 static const struct ethtool_ops iavf_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
-				     ETHTOOL_COALESCE_MAX_FRAMES |
-				     ETHTOOL_COALESCE_MAX_FRAMES_IRQ |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE,
 	.get_drvinfo		= iavf_get_drvinfo,
 	.get_link		= ethtool_op_get_link,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 57c51a15bcbc..3c621607bc46 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2327,7 +2327,6 @@ int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter)
 
 	adapter->vsi.back = adapter;
 	adapter->vsi.base_vector = 1;
-	adapter->vsi.work_limit = IAVF_DEFAULT_IRQ_WORK;
 	vsi->netdev = adapter->netdev;
 	vsi->qs_handle = adapter->vsi_res->qset_handle;
 	if (adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 978f651c6b09..7bf8c25dc824 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -194,7 +194,7 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 	struct iavf_tx_buffer *tx_buf;
 	struct iavf_tx_desc *tx_desc;
 	unsigned int total_bytes = 0, total_packets = 0;
-	unsigned int budget = vsi->work_limit;
+	unsigned int budget = IAVF_DEFAULT_IRQ_WORK;
 
 	tx_buf = &tx_ring->tx_bi[i];
 	tx_desc = IAVF_TX_DESC(tx_ring, i);
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
