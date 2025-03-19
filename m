Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84586A68988
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 11:26:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 286368146D;
	Wed, 19 Mar 2025 10:26:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QAAX_4Q1D76d; Wed, 19 Mar 2025 10:26:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D0E581470
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742380015;
	bh=QwnxYQpo55bl7av0RxzWWNuI7xN+6Fs6sOckb0gHB3I=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zAhq65rcrvd6ZAUO/4XTfiPi3BLeOVDxN/ijYzlYTibJtPWGoRVsjun9aiA1cMhc/
	 kyPU+BxPg2KjNGJBowD2+3vhBXScSembK6h5JXjLmipiHM8L1gW5aWd3fcA2+SF38p
	 wQiY+9fmBnBlkm7thyW6ruTQTZclM1fiZN6oS/nUm5qdMGx5eQgATYfkSBLpRAQnMs
	 dVno5wA3l9jSITxo2fI20tL9rZLc1exUJX/Pmp96MwxtLmpMs36Mf+ZDFAoeZ41IQ8
	 CfnhZrrYu3qGDxDCNlMnY+7IgmjxqOGGWsdk8QgsnWK1YRipOz4ARRwlfqCiHIEM8I
	 fprpr2jbU9pag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D0E581470;
	Wed, 19 Mar 2025 10:26:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 63B09CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5FD96608DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YNsDSewiGZQt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 10:26:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 34238600CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34238600CA
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 34238600CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:50 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Wed, 19 Mar 2025 11:26:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-igb_irq-v3-2-b9ee902143dd@linutronix.de>
References: <20250319-igb_irq-v3-0-b9ee902143dd@linutronix.de>
In-Reply-To: <20250319-igb_irq-v3-0-b9ee902143dd@linutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5680; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=1vqoQlywhZPsl+VmtbqoH2X1ya01NGSNUs3Vu/zAUY8=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBn2pvlZPCzeUkFIZ4RYoE5JYwg+twe2mrh1qYnS
 uo2XCRfXHGJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ9qb5QAKCRDBk9HyqkZz
 ggRSD/965rznYfw6mk+jxpYQg+kW8kGRWK99axdGBWTxKryYIhree7PDyl+Nf0NanMC+4IlrQlV
 soima/gmWUqS9wvjANGBnIlZxBXZpoThNU3dGyvOtVKqVpAFH12jtbzs+YAcj+shDmrk6s12bqa
 s3sveIfSzLsjr1sAT+dFvhXSlMmc2wXc/VAqi3pIST4cUA68SdLGQUdVIdWOk9ega5kaHBg7bE/
 sMQgzCPQbUXuLR6NX8TclAmScCLJu5qpWfE75HYTOgpQloP3o482LdcTSuKoMAPQcBJc3i6Fory
 zXWTK1MLYpEvdledWqr8dhe68v2hP1c5yUcw4XTPprvf7ePsvh78RmVKFh7POqla/fB3vQq96DY
 0fq9b3YSDbk82zD7HPXkazlayPG0ocHQ8m7LVY4sWj0gKo6eKQ4ygnzGgcupHd+uRuS/JmLxSaV
 RR54UjHLuo6iBmLsdXZ6aDshx2doMl03OG1PFFcJB9oWLIHEephQldckuy5xVt2b6rw1Ir98icX
 YGsWaLD+hPXH3bOMUJk1rWp/l6pd7OsTEOUVmSUDW6wt6/JdGHDjFeuNvR0ukL9kCbHjrOd1ysB
 qBm0iI2QeJ5u8zEhLNsihNzbbn6tqoIpd0NBvHOLAhdw6p8MbWzez9UF5JzqouYC6BzNx3ozHqO
 J8qO2A8Z7xmP5ug==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1742380008;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QwnxYQpo55bl7av0RxzWWNuI7xN+6Fs6sOckb0gHB3I=;
 b=ErHZQB2SEiqfJ92WptqrUYH3vxfhf5m+UmHoXXrG/3OjZzB85w2lY6GtwrIpsmXiamSRQN
 XytqTdaL+XD1ojeTAsPpQRUKP+roDehmto3kwc6D9TZoQME0wW7AjzKh8OCToiWLM1LR/u
 DiMmn3afgdA51sohe55Qdv/0hea1o7C8atqAHbhGHbvG0oOk+JY7R/Kv1xkq6Dm6wJLzH6
 168zJgrE5kqJuT5Bg/NqQNjrqOqd5qkZaA02axvocqDg/egWnCEZVvFb88KqVbI4nE1Qk2
 E3Bxvj66WAvroGvzTrrLh7xK0cxBFPP3OkvGDl++b+/lpEFvNYouF4cz4YZRwQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1742380008;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QwnxYQpo55bl7av0RxzWWNuI7xN+6Fs6sOckb0gHB3I=;
 b=EY3FibrAixlzfIA6nhLYqz5hUikXtw61bqSPgI/lcUAe55BkatKocJ9nzxTW7hC8lyGs2L
 W399qQQ0fpQ+r3Bw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=ErHZQB2S; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=EY3FibrA
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/4] igb: Link queues to NAPI
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
 2 files changed, 40 insertions(+), 5 deletions(-)

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
 

-- 
2.39.5

