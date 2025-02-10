Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98616A2E7A6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 10:29:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DDD2581F12;
	Mon, 10 Feb 2025 09:29:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ljaz98e6eQXf; Mon, 10 Feb 2025 09:29:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FC1F81F03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739179765;
	bh=CTueP0CB24DUI+7ynpx3qPFeZE3/S9ux0KKHBNbMtDo=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0L6jQ3LrO4G4oYqZCAEGHgNsvEdYJCBsh/giFqOdoSYg1Wwh2nzX4Hl9Lf93WHmXP
	 OoRyJ0RjTtx3Icq5a/X/AJQm01dqF3wcTfXCx+7doPLNhciCpHCNLvCZZdU3phDeiv
	 sC5aerlcJfjLu79P0rb/+HUA7dRRCOSoI8/ZhtfvJ1zZLrKZ5phufjwbvUPRRd8V/A
	 WOvAiYAEvoAQtkfpQMPTRdGZB8+nR/rfpV3mM0bMclXEZLZCZ85I1JWJtDK+w1La/x
	 q1njnIWs8m2ayL0Icg7qyeZXpz/p6zRz8EsjdVU5f4zbXJelwnwx0GU4R0paw63bUn
	 uyDiUCllmYFkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FC1F81F03;
	Mon, 10 Feb 2025 09:29:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 91235C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 09:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8022181EE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 09:29:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sreq0utIUDYg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 09:29:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 56BA081EE5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56BA081EE5
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 56BA081EE5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 09:29:22 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 10 Feb 2025 10:19:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-igb_irq-v1-2-bde078cdb9df@linutronix.de>
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
In-Reply-To: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Joe Damato <jdamato@fastly.com>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=5606; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=GkL9JSy5P6ljwAKvYg4VCY34kYgT09FHVA/8EkZR1fA=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnqcSp4w62jUSR7lSpkUzz8ZWq7LAKJnexE7C/6
 kWn3wZlrYCJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ6nEqQAKCRDBk9HyqkZz
 gr4QEACT4DKCoC8+wj6OEqHagA0VxAvb+8Ca5Wil53Rw3eCK9zBIfwETQTdBnWqZIiS59Rr4lET
 T95tBl5GiVB2ilO80RdAcfhGLsZN/OmbO1mdFSQNXHMNh2m4bLvATWNhxkf7VfS5ft4BaYVJMFt
 1qJCB3WX2GR3VL9KAmdLQ6YPo2/P3PnWOit9lyO9MAzNt5RW+++Z8r+Dh0YLWhawr8L3D7FOPSy
 gFDYp6LapEkSuJOXne8LI1OLrY429gNHcVQcghSU2kLFz3BD0ToZQx01fXdjV/ymSCZbrlzBSSE
 spigMWKa/07pRBJ9JJ42tYvkcs+hV1FOfjbFNNVitXFA5nhx75gg+Bk3MttiO2DhCy0vOGcAkQj
 Jnf8/sZ3JyBRO6r99sMfO5yg6liQgeRjVAi1aSw2iVpkZqM6b7RSReRojmHGwQaOWjKbxGtzRqi
 reYUMQ7RV81QKXFq1hOifjWGig5CYy+BblSyZJWeM7wsPhBvqHiHgpaQhIoBqRIt6MPvCpOzWQl
 gqnrLVhmnSNWKcfpIAASJ/Pr8sDlhDRHWzDusl9yQZpRTX8c/3WGuYv53Y/IuBx7hfI0pN4e3SO
 3RgWd1KBmUPSyd/ipSPPL4TKVGbeFAwDRbAjSOHX/qaQThzz8xqf9z5nI0oBeixandk4F2Hth5i
 nRYIzzZVd41dfkw==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739179179;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CTueP0CB24DUI+7ynpx3qPFeZE3/S9ux0KKHBNbMtDo=;
 b=cZTPujqFUX3zOt8Zs/a1SFUO5wSwABMLv+Pid2EtFA2FKAVb+Tog+h/QrnXc9ED0LR5x1R
 mRJTxo2bFmQ1ucUnNw8v0AP6bRtMviBw6RShlCWNE/Raw9o8uo35NNVLzmbU/U5W7GjSX9
 RBEYDDV7wNS42K7frWrxqa0XIjjvI/gB7ZNzFIS40ec6d8mbMHTWDPoJJ1twZuePEEXH/H
 3f3mTclHJPYNcfsT2/TCASknF8jJaaDRfblasr2g4No5F/aQPFXQSi+MbeA2wJ3nTflKww
 QnxF/iD8SwdKjoDOrRLZTPtKLJxGZwFZca9d6musAS2ELsnid2QpZieRLgVBpw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739179179;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CTueP0CB24DUI+7ynpx3qPFeZE3/S9ux0KKHBNbMtDo=;
 b=dKnLQ76z5LE2wa6aSUOwyQuaai4rhvwzTcrfrL+Z21nwREE+8FGYaCHDIxOEn2fbwgODZl
 Rg76lFmr5NmaHmCw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=cZTPujqF; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=dKnLQ76z
Subject: [Intel-wired-lan] [PATCH 2/3] igb: Link queues to NAPI instances
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

While at __igb_open() use RCT coding style.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb.h      |  2 ++
 drivers/net/ethernet/intel/igb/igb_main.c | 35 ++++++++++++++++++++++++++-----
 drivers/net/ethernet/intel/igb/igb_xsk.c  |  2 ++
 3 files changed, 34 insertions(+), 5 deletions(-)

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
index d4128d19cc08f62f95682069bb5ed9b8bbbf10cb..8e964484f4c9854e4e3e0b4f3e8785fe93bd1207 100644
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

