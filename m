Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E25A205367
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2020 15:28:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E653203A8;
	Tue, 23 Jun 2020 13:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WoQDNuRSiyLh; Tue, 23 Jun 2020 13:28:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CDC71265D6;
	Tue, 23 Jun 2020 13:28:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4CDF1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 13:28:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A0609203F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 13:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PUDDb-VOAKaV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2020 13:28:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id D0C64203A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 13:28:22 +0000 (UTC)
IronPort-SDR: CaAGHnkr0cSZqeetUYDy+N/KEw6gufn40U0jRGrqDDOIMzM1ahBcAxPWiu4ox3qPP+iqA/H1GJ
 O1CTQE8sqdrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="141557626"
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="141557626"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 06:28:22 -0700
IronPort-SDR: QJLDUjkHmStGYv7ei7GHX1u2inzn3Gjc1jwsOpniE5hHZksWhXxeOyA0xMk5IQsIgbYuZnatPB
 TQNQDQPk0riQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="263336534"
Received: from silpixa00399839.ir.intel.com (HELO localhost.localdomain)
 ([10.237.222.8])
 by fmsmga007.fm.intel.com with ESMTP; 23 Jun 2020 06:28:21 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jun 2020 13:06:57 +0000
Message-Id: <20200623130657.5668-3-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200623130657.5668-1-ciara.loftus@intel.com>
References: <20200623130657.5668-1-ciara.loftus@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 3/3] i40e: introduce new dump
 desc xdp command
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
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Interfaces already exist for dumping rx and tx descriptor information.
Introduce another for doing the same for xdp descriptors.

Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
v1 -> v2:
 - Fix variable name in description of dump_desc function

 .../net/ethernet/intel/i40e/i40e_debugfs.c    | 59 +++++++++++++++----
 1 file changed, 48 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 1c8285fce33f..0afae8e5a3cc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -10,6 +10,12 @@
 
 static struct dentry *i40e_dbg_root;
 
+enum ring_type {
+	RING_TYPE_RX,
+	RING_TYPE_TX,
+	RING_TYPE_XDP
+};
+
 /**
  * i40e_dbg_find_vsi - searches for the vsi with the given seid
  * @pf: the PF structure to search for the vsi
@@ -530,11 +536,12 @@ static void i40e_dbg_dump_aq_desc(struct i40e_pf *pf)
  * @ring_id: ring id entered by user
  * @desc_n: descriptor number entered by user
  * @pf: the i40e_pf created in command write
- * @is_rx_ring: true if rx, false if tx
+ * @type: enum describing whether ring is RX, TX or XDP
  **/
 static void i40e_dbg_dump_desc(int cnt, int vsi_seid, int ring_id, int desc_n,
-			       struct i40e_pf *pf, bool is_rx_ring)
+			       struct i40e_pf *pf, enum ring_type type)
 {
+	bool is_rx_ring = type == RING_TYPE_RX;
 	struct i40e_tx_desc *txd;
 	union i40e_rx_desc *rxd;
 	struct i40e_ring *ring;
@@ -546,6 +553,10 @@ static void i40e_dbg_dump_desc(int cnt, int vsi_seid, int ring_id, int desc_n,
 		dev_info(&pf->pdev->dev, "vsi %d not found\n", vsi_seid);
 		return;
 	}
+	if (type == RING_TYPE_XDP && !i40e_enabled_xdp_vsi(vsi)) {
+		dev_info(&pf->pdev->dev, "xdp not enabled on vsi %d\n", vsi_seid);
+		return;
+	}
 	if (ring_id >= vsi->num_queue_pairs || ring_id < 0) {
 		dev_info(&pf->pdev->dev, "ring %d not found\n", ring_id);
 		return;
@@ -557,15 +568,32 @@ static void i40e_dbg_dump_desc(int cnt, int vsi_seid, int ring_id, int desc_n,
 		return;
 	}
 
-	ring = kmemdup(is_rx_ring
-		       ? vsi->rx_rings[ring_id] : vsi->tx_rings[ring_id],
-		       sizeof(*ring), GFP_KERNEL);
+	switch (type) {
+	case RING_TYPE_RX:
+		ring = kmemdup(vsi->rx_rings[ring_id], sizeof(*ring), GFP_KERNEL);
+		break;
+	case RING_TYPE_TX:
+		ring = kmemdup(vsi->tx_rings[ring_id], sizeof(*ring), GFP_KERNEL);
+		break;
+	case RING_TYPE_XDP:
+		ring = kmemdup(vsi->xdp_rings[ring_id], sizeof(*ring), GFP_KERNEL);
+		break;
+	}
 	if (!ring)
 		return;
 
 	if (cnt == 2) {
-		dev_info(&pf->pdev->dev, "vsi = %02i %s ring = %02i\n",
-			 vsi_seid, is_rx_ring ? "rx" : "tx", ring_id);
+		switch (type) {
+		case RING_TYPE_RX:
+			dev_info(&pf->pdev->dev, "vsi = %02i rx ring = %02i\n", vsi_seid, ring_id);
+			break;
+		case RING_TYPE_TX:
+			dev_info(&pf->pdev->dev, "vsi = %02i tx ring = %02i\n", vsi_seid, ring_id);
+			break;
+		case RING_TYPE_XDP:
+			dev_info(&pf->pdev->dev, "vsi = %02i xdp ring = %02i\n", vsi_seid, ring_id);
+			break;
+		}
 		for (i = 0; i < ring->count; i++) {
 			if (!is_rx_ring) {
 				txd = I40E_TX_DESC(ring, i);
@@ -603,7 +631,7 @@ static void i40e_dbg_dump_desc(int cnt, int vsi_seid, int ring_id, int desc_n,
 				 rxd->read.rsvd1, rxd->read.rsvd2);
 		}
 	} else {
-		dev_info(&pf->pdev->dev, "dump desc rx/tx <vsi_seid> <ring_id> [<desc_n>]\n");
+		dev_info(&pf->pdev->dev, "dump desc rx/tx/xdp <vsi_seid> <ring_id> [<desc_n>]\n");
 	}
 
 out:
@@ -961,13 +989,19 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 				cnt = sscanf(&cmd_buf[12], "%i %i %i",
 					     &vsi_seid, &ring_id, &desc_n);
 				i40e_dbg_dump_desc(cnt, vsi_seid, ring_id,
-						   desc_n, pf, true);
+						   desc_n, pf, RING_TYPE_RX);
 			} else if (strncmp(&cmd_buf[10], "tx", 2)
 					== 0) {
 				cnt = sscanf(&cmd_buf[12], "%i %i %i",
 					     &vsi_seid, &ring_id, &desc_n);
 				i40e_dbg_dump_desc(cnt, vsi_seid, ring_id,
-						   desc_n, pf, false);
+						   desc_n, pf, RING_TYPE_TX);
+			} else if (strncmp(&cmd_buf[10], "xdp", 3)
+					== 0) {
+				cnt = sscanf(&cmd_buf[13], "%i %i %i",
+					     &vsi_seid, &ring_id, &desc_n);
+				i40e_dbg_dump_desc(cnt, vsi_seid, ring_id,
+						   desc_n, pf, RING_TYPE_XDP);
 			} else if (strncmp(&cmd_buf[10], "aq", 2) == 0) {
 				i40e_dbg_dump_aq_desc(pf);
 			} else {
@@ -975,6 +1009,8 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 					 "dump desc tx <vsi_seid> <ring_id> [<desc_n>]\n");
 				dev_info(&pf->pdev->dev,
 					 "dump desc rx <vsi_seid> <ring_id> [<desc_n>]\n");
+				dev_info(&pf->pdev->dev,
+					 "dump desc xdp <vsi_seid> <ring_id> [<desc_n>]\n");
 				dev_info(&pf->pdev->dev, "dump desc aq\n");
 			}
 		} else if (strncmp(&cmd_buf[5], "reset stats", 11) == 0) {
@@ -1145,7 +1181,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 			buff = NULL;
 		} else {
 			dev_info(&pf->pdev->dev,
-				 "dump desc tx <vsi_seid> <ring_id> [<desc_n>], dump desc rx <vsi_seid> <ring_id> [<desc_n>],\n");
+				 "dump desc tx <vsi_seid> <ring_id> [<desc_n>], dump desc rx <vsi_seid> <ring_id> [<desc_n>], dump desc xdp <vsi_seid> <ring_id> [<desc_n>],\n");
 			dev_info(&pf->pdev->dev, "dump switch\n");
 			dev_info(&pf->pdev->dev, "dump vsi [seid]\n");
 			dev_info(&pf->pdev->dev, "dump reset stats\n");
@@ -1561,6 +1597,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 		dev_info(&pf->pdev->dev, "  dump vsi [seid]\n");
 		dev_info(&pf->pdev->dev, "  dump desc tx <vsi_seid> <ring_id> [<desc_n>]\n");
 		dev_info(&pf->pdev->dev, "  dump desc rx <vsi_seid> <ring_id> [<desc_n>]\n");
+		dev_info(&pf->pdev->dev, "  dump desc xdp <vsi_seid> <ring_id> [<desc_n>]\n");
 		dev_info(&pf->pdev->dev, "  dump desc aq\n");
 		dev_info(&pf->pdev->dev, "  dump reset stats\n");
 		dev_info(&pf->pdev->dev, "  dump debug fwdata <cluster_id> <table_id> <index>\n");
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
