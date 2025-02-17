Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3345EA381BB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 12:31:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0E1E81F8C;
	Mon, 17 Feb 2025 11:31:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IUaTc0X5OpTT; Mon, 17 Feb 2025 11:31:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4C4381F8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739791898;
	bh=yF5RDYaCzF53kAz3Wp6QOwEE2b6TMJ3qzTe/sJpAsgA=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oq4ilMC5O17FRA8eF8qegwMzYHsPWfmQVt6UQsOeZpJk7Fp5vlLblGTIN6E1wz1TM
	 OzjIC+io5nMiYZpDmDimg0y1059RfBP8NdvZvrWD+nwbGTuihchzhcHBK/sEveJYyT
	 By684yktbuwzb5eSKg2ImU0tIZGCthUEOwoWK8yqQ9ZnHYbb+g1bCSS2OQVk9hVayz
	 U0Go/voh8TIk8odyT2F9y/LsWewepfGH148/eZu8XJ97i8qPyZtbcp3HYiz5FVD0F3
	 6mtJjvAjoYbPapJ9/nxQw7LvKa7BRubHo2uLPhXdcs+s+0p8dHCJuFc7dZDu+BGIz3
	 +hIK40UeVinfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4C4381F8D;
	Mon, 17 Feb 2025 11:31:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EFED1C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E09AF40116
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dtiC9_axNut6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 11:31:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 52744400A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52744400A8
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 52744400A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:33 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 17 Feb 2025 12:31:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-igb_irq-v2-2-4cb502049ac2@linutronix.de>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
In-Reply-To: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Joe Damato <jdamato@fastly.com>, 
 Gerhard Engleder <gerhard@engleder-embedded.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=6618; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=QU29MF4XC+8uN+OhP0LP+yNMgx20VjDV5A87D7lxYXM=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnsx4PDTwMZ6GVdKmS0aNNUHScpirLApoWJiX9x
 aY+DtA/k3+JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ7MeDwAKCRDBk9HyqkZz
 glVPD/9sasZSs6vZSG48uIpfqK6wyJ6gmRSdwYU15/dVZcFtULSIHHgTl7s+v9jeddl2995Hg8N
 qBoowyuj9g6a+p2QyRobqCQpKhtY7j70LwGE7/Miz7/f5RUIjl2UwRGluOkIPYj+iYFYmKIwzXc
 dSFodscj/XSXwPdNNO0s1Z0h+7P1s2vkxYHd5gikZ7jexk0/W+T5kuccXFKQUyaaglx8NqwH7z1
 tg9D54m71B+Bwz4FxXmub4896xORnBUmtGu98R0p+fDLW6EQyHIM66hN3SEyvzLI8Qbw8mnErGl
 63uYcgnruDldowS1kZui8c9IFnQ9FhjlzQq+9jN7bpwP/mxCts018a3l/dzV7Crd33iNdRe55bX
 DG5/HM5lSY0dZKXfOra9vwOCieNM35EyUvrHbhxYu+P8dJ0egg1P0mg76BqePS3LDBQ2Ax2Gxrl
 Sre60gs7zJ+1PGtAJyXWrCE9P48Qdj/s+60IPfTLrdYvu6ATJ1HDrOM6pqZvJpXy158Pv0rL4Ua
 ERB3JtVQg02V0chudJUyNXQSe2fItYiIxssciZLEa+3EsHv6m8C+2AZr6zhrd5ln0X8Uqaw1ecD
 nnYbu94mB0BGnPVxtch6AMg37z2mI/zMIm+2wGONSHM3b2/9Q1Vzvx4q80uxq0vSqN0OIEH2wUQ
 quUOBlXBt97cHpQ==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739791890;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yF5RDYaCzF53kAz3Wp6QOwEE2b6TMJ3qzTe/sJpAsgA=;
 b=AurV8WNxYeYLAq4HGty4engjIYgfowmKap7UYxBKgtKCcuKtHsi6VBWkJxbvljJkVM5V1f
 YIwyslWCkzFkaRD3PdRkVkI0ViiAwLN0hlDp0GP+BISXVZMO4tx3eWl/0918Qi5GAR3d52
 Fn1rt1P3xnoMdtZU09WWZW6hKKW40aT70bV8EQ0r3Fn1KQIA0J+wBWr4Y7zUmO8Hb+hl9k
 KL6r4lrVq0uf9uZh61SJuaFMKxOWvUm6R6FZf+uCvBDd7hXkAr/2pJIYjnCJQok8XIWHYv
 JsI0PlvWVnkffn03ybGme3wp6AJZ+0thtCAy7N8/aEde9LO+V37UhEUN8ykiQw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739791890;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yF5RDYaCzF53kAz3Wp6QOwEE2b6TMJ3qzTe/sJpAsgA=;
 b=ypTCdvtxkIN2pNjTIGBP6+vgTanqyl0kKwav4kLsJeCBXzzgiJ/13MyBIvqdqEH1jgz/UG
 5ZWRHzd38aLcqpCg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=AurV8WNx; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=ypTCdvtx
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/4] igb: Link queues to NAPI
 instances
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

Link queues to NAPI instances via netdev-genl API. This is required to use
XDP/ZC busy polling. See commit 5ef44b3cb43b ("xsk: Bring back busy polling
support") for details.

This also allows users to query the info with netlink:

|$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
|                               --dump queue-get --json='{"ifindex": 2}'
|[{'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'rx'},
| {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'rx'},
| {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'rx'},
| {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'rx'},
| {'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'tx'},
| {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'tx'},
| {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'tx'},
| {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'tx'}]

Add rtnl locking to PCI error handlers, because netif_queue_set_napi()
requires the lock held.

While at __igb_open() use RCT coding style.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb.h      |  2 ++
 drivers/net/ethernet/intel/igb/igb_main.c | 43 +++++++++++++++++++++++++++----
 drivers/net/ethernet/intel/igb/igb_xsk.c  |  2 ++
 3 files changed, 42 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 02f340280d20a6f7e32bbd3dfcbb9c1c7b4c6662..79eca385a751bfdafdf384928b6cc1b350b22560 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -722,6 +722,8 @@ enum igb_boards {
 
 extern char igb_driver_name[];
 
+void igb_set_queue_napi(struct igb_adapter *adapter, int q_idx,
+			struct napi_struct *napi);
 int igb_xmit_xdp_ring(struct igb_adapter *adapter,
 		      struct igb_ring *ring,
 		      struct xdp_frame *xdpf);
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index d4128d19cc08f62f95682069bb5ed9b8bbbf10cb..6870803a42455aa1d31f39beb027cf282064388f 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2099,6 +2099,22 @@ static void igb_check_swap_media(struct igb_adapter *adapter)
 	wr32(E1000_CTRL_EXT, ctrl_ext);
 }
 
+void igb_set_queue_napi(struct igb_adapter *adapter, int vector,
+			struct napi_struct *napi)
+{
+	struct igb_q_vector *q_vector = adapter->q_vector[vector];
+
+	if (q_vector->rx.ring)
+		netif_queue_set_napi(adapter->netdev,
+				     q_vector->rx.ring->queue_index,
+				     NETDEV_QUEUE_TYPE_RX, napi);
+
+	if (q_vector->tx.ring)
+		netif_queue_set_napi(adapter->netdev,
+				     q_vector->tx.ring->queue_index,
+				     NETDEV_QUEUE_TYPE_TX, napi);
+}
+
 /**
  *  igb_up - Open the interface and prepare it to handle traffic
  *  @adapter: board private structure
@@ -2106,6 +2122,7 @@ static void igb_check_swap_media(struct igb_adapter *adapter)
 int igb_up(struct igb_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
+	struct napi_struct *napi;
 	int i;
 
 	/* hardware has been reset, we need to reload some things */
@@ -2113,8 +2130,11 @@ int igb_up(struct igb_adapter *adapter)
 
 	clear_bit(__IGB_DOWN, &adapter->state);
 
-	for (i = 0; i < adapter->num_q_vectors; i++)
-		napi_enable(&(adapter->q_vector[i]->napi));
+	for (i = 0; i < adapter->num_q_vectors; i++) {
+		napi = &adapter->q_vector[i]->napi;
+		napi_enable(napi);
+		igb_set_queue_napi(adapter, i, napi);
+	}
 
 	if (adapter->flags & IGB_FLAG_HAS_MSIX)
 		igb_configure_msix(adapter);
@@ -2184,6 +2204,7 @@ void igb_down(struct igb_adapter *adapter)
 	for (i = 0; i < adapter->num_q_vectors; i++) {
 		if (adapter->q_vector[i]) {
 			napi_synchronize(&adapter->q_vector[i]->napi);
+			igb_set_queue_napi(adapter, i, NULL);
 			napi_disable(&adapter->q_vector[i]->napi);
 		}
 	}
@@ -4116,8 +4137,9 @@ static int igb_sw_init(struct igb_adapter *adapter)
 static int __igb_open(struct net_device *netdev, bool resuming)
 {
 	struct igb_adapter *adapter = netdev_priv(netdev);
-	struct e1000_hw *hw = &adapter->hw;
 	struct pci_dev *pdev = adapter->pdev;
+	struct e1000_hw *hw = &adapter->hw;
+	struct napi_struct *napi;
 	int err;
 	int i;
 
@@ -4169,8 +4191,11 @@ static int __igb_open(struct net_device *netdev, bool resuming)
 	/* From here on the code is the same as igb_up() */
 	clear_bit(__IGB_DOWN, &adapter->state);
 
-	for (i = 0; i < adapter->num_q_vectors; i++)
-		napi_enable(&(adapter->q_vector[i]->napi));
+	for (i = 0; i < adapter->num_q_vectors; i++) {
+		napi = &adapter->q_vector[i]->napi;
+		napi_enable(napi);
+		igb_set_queue_napi(adapter, i, napi);
+	}
 
 	/* Clear any pending interrupts. */
 	rd32(E1000_TSICR);
@@ -9677,8 +9702,11 @@ static pci_ers_result_t igb_io_error_detected(struct pci_dev *pdev,
 	if (state == pci_channel_io_perm_failure)
 		return PCI_ERS_RESULT_DISCONNECT;
 
+	rtnl_lock();
 	if (netif_running(netdev))
 		igb_down(adapter);
+	rtnl_unlock();
+
 	pci_disable_device(pdev);
 
 	/* Request a slot reset. */
@@ -9737,16 +9765,21 @@ static void igb_io_resume(struct pci_dev *pdev)
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igb_adapter *adapter = netdev_priv(netdev);
 
+	rtnl_lock();
 	if (netif_running(netdev)) {
 		if (!test_bit(__IGB_DOWN, &adapter->state)) {
 			dev_dbg(&pdev->dev, "Resuming from non-fatal error, do nothing.\n");
+			rtnl_unlock();
 			return;
 		}
+
 		if (igb_up(adapter)) {
 			dev_err(&pdev->dev, "igb_up failed after reset\n");
+			rtnl_unlock();
 			return;
 		}
 	}
+	rtnl_unlock();
 
 	netif_device_attach(netdev);
 
diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 157d43787fa0b55a74714f69e9e7903b695fcf0a..a5ad090dfe94b6afc8194fe39d28cdd51c7067b0 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -45,6 +45,7 @@ static void igb_txrx_ring_disable(struct igb_adapter *adapter, u16 qid)
 	synchronize_net();
 
 	/* Rx/Tx share the same napi context. */
+	igb_set_queue_napi(adapter, qid, NULL);
 	napi_disable(&rx_ring->q_vector->napi);
 
 	igb_clean_tx_ring(tx_ring);
@@ -78,6 +79,7 @@ static void igb_txrx_ring_enable(struct igb_adapter *adapter, u16 qid)
 
 	/* Rx/Tx share the same napi context. */
 	napi_enable(&rx_ring->q_vector->napi);
+	igb_set_queue_napi(adapter, qid, &rx_ring->q_vector->napi);
 }
 
 struct xsk_buff_pool *igb_xsk_pool(struct igb_adapter *adapter,

-- 
2.39.5

