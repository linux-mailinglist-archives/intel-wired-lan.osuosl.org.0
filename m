Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C99629B3AD3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 20:53:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 720BE810EB;
	Mon, 28 Oct 2024 19:53:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yc28EvQj0KRd; Mon, 28 Oct 2024 19:53:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D54DF810D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730145184;
	bh=qJCsZlWl/zP5hsxo6MH91N223NF/8mWoFtpQR/ZTf4M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AFV9xLaQp9KCnol5JGN6OHt0solQ+SwygEeNZErnXTG+wMrQ2UOLQqcA7D8kSnbNc
	 JxT5/HprUGK5I/meqyD+7zICb1vFCN6ALrFWN7/BPFuPbkqNFDXrJ63fMIh+F/x0GT
	 5LuRdiM985OpxjygXmWlyY3vZIC+jMx57G64v6wPNgf4SFEBrxMgomFTCIqYdnxyvH
	 dtJtdo1PRd8ZfHqeAYW2c78sesAtecar2PG3vdWK12ne/BlqofhOz1U5jmdz/eVxxc
	 r32ofmSNaWJ/XaFVz69Gse5RmQcx1EvE3kVXupZUF8PAOJNglbh1JxLMBV/bsZce6s
	 hr2I4NkHfQ7DA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D54DF810D4;
	Mon, 28 Oct 2024 19:53:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 890F8112A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A90360727
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:53:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YLxyR4O1gi9w for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 19:53:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1029; helo=mail-pj1-x1029.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 37561606ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37561606ED
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 37561606ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:53:01 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 98e67ed59e1d1-2e30db524c2so3535871a91.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 12:53:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730145180; x=1730749980;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qJCsZlWl/zP5hsxo6MH91N223NF/8mWoFtpQR/ZTf4M=;
 b=K2J839bNDH14qo7UABzTYjZ+BXrnwp/U0fZtzEBGdJ6rqLOLp6ahxF1L3akoTmjcQX
 xZ0FGkzoxk/4ZeMJlrGJnqoxKsbueHhxln4e4RGKJsLEKB8MCMJkj3bETkghPFO8o8dR
 WD/jwxWc5GenXC2TNZ50n8Yxia/TIPi7R54PSho5EOjFBz5x5HVWRh7cyqxQ4CWaxWx0
 RajKac+xLdQsiHnbG1aEWtQn2+jQrcVrh1VoRkKCanTEdacrlTt9mhK6IgbcSaMjD7YL
 4cRGu07nyYg11mKtJYwU7DQKIa3SjdKLRBe9sBX+1aOlI5IL281NJkV49p5AwJyrryl2
 tudw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXSUJjpv4P7zENLthS+ngbquiUKBTZcXbS9xZYeiokleGNkKpRmiddWbjFn6McTbffZxRYNH42FjISVOvvZBis=@lists.osuosl.org
X-Gm-Message-State: AOJu0YybRP4UB4JJ2swkhvbuxIr1Ul8ukt5vkPyKSdfPAoDGLnGnmNmI
 CCYKUjlRnAkoGX/H2LymknlCNjl1WxdoJVOCueo5YEflrfjk5XaeX62cIyqSg74=
X-Google-Smtp-Source: AGHT+IFvEzf4JS0St4rHlwXdMbtNoD7xcpTKOJ5GTIWmtXw1xkkpSgq2hbrJdLvDs5Lqms7DFfnTLg==
X-Received: by 2002:a17:90a:a005:b0:2c8:65cf:e820 with SMTP id
 98e67ed59e1d1-2e8f105490dmr10374948a91.2.1730145180392; 
 Mon, 28 Oct 2024 12:53:00 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e8e3771e64sm7695247a91.50.2024.10.28.12.52.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2024 12:52:59 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: vitaly.lifshits@intel.com, jacob.e.keller@intel.com, kurt@linutronix.de,
 vinicius.gomes@intel.com, Joe Damato <jdamato@fastly.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 bpf@vger.kernel.org (open list:XDP (eXpress Data Path))
Date: Mon, 28 Oct 2024 19:52:42 +0000
Message-Id: <20241028195243.52488-3-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241028195243.52488-1-jdamato@fastly.com>
References: <20241028195243.52488-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1730145180; x=1730749980; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qJCsZlWl/zP5hsxo6MH91N223NF/8mWoFtpQR/ZTf4M=;
 b=XTI/Lq0y5zyErvJqeIvJFxLsuATpqvSCBiwm56rXPx5dHP0mttvUu+ZjGIL8aCxqyB
 KgGvQk3Jv00XdJQF0dQeC/AMPMPwg4JJ/Pb/kr0u2qJJSQBB8GNIm0hQyoE2we7KZUjc
 1WjNd4tpdhbczTHMyLWS7UR8axSCPd6ey8eLY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=XTI/Lq0y
Subject: [Intel-wired-lan] [PATCH iwl-next v5 2/2] igc: Link queues to NAPI
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

Link queues to NAPI instances via netdev-genl API so that users can
query this information with netlink. Handle a few cases in the driver:
  1. Link/unlink the NAPIs when XDP is enabled/disabled
  2. Handle IGC_FLAG_QUEUE_PAIRS enabled and disabled

Example output when IGC_FLAG_QUEUE_PAIRS is enabled:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump queue-get --json='{"ifindex": 2}'

[{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
 {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
 {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
 {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
 {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
 {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]

Since IGC_FLAG_QUEUE_PAIRS is enabled, you'll note that the same NAPI ID
is present for both rx and tx queues at the same index, for example
index 0:

{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},

To test IGC_FLAG_QUEUE_PAIRS disabled, a test system was booted using
the grub command line option "maxcpus=2" to force
igc_set_interrupt_capability to disable IGC_FLAG_QUEUE_PAIRS.

Example output when IGC_FLAG_QUEUE_PAIRS is disabled:

$ lscpu | grep "On-line CPU"
On-line CPU(s) list:      0,2

$ ethtool -l enp86s0  | tail -5
Current hardware settings:
RX:		n/a
TX:		n/a
Other:		1
Combined:	2

$ cat /proc/interrupts  | grep enp
 144: [...] enp86s0
 145: [...] enp86s0-rx-0
 146: [...] enp86s0-rx-1
 147: [...] enp86s0-tx-0
 148: [...] enp86s0-tx-1

1 "other" IRQ, and 2 IRQs for each of RX and Tx, so we expect netlink to
report 4 IRQs with unique NAPI IDs:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 2}'
[{'id': 8196, 'ifindex': 2, 'irq': 148},
 {'id': 8195, 'ifindex': 2, 'irq': 147},
 {'id': 8194, 'ifindex': 2, 'irq': 146},
 {'id': 8193, 'ifindex': 2, 'irq': 145}]

Now we examine which queues these NAPIs are associated with, expecting
that since IGC_FLAG_QUEUE_PAIRS is disabled each RX and TX queue will
have its own NAPI instance:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump queue-get --json='{"ifindex": 2}'
[{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
 {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 v5:
   - Rename igc_resume to __igc_do_resume and pass in a boolean
     "need_rtnl" to signal whether or not rtnl should be held before
     caling __igc_open. Call this new function from igc_runtime_resume
     and igc_resume passing in false (for igc_runtime_resume) and true
     (igc_resume), respectively. This is done to avoid reintroducing a
     bug fixed in commit: 6f31d6b: "igc: Refactor runtime power
     management flow" where rtnl is held in runtime_resume causing a
     deadlock.

 v4:
   - Add rtnl_lock/rtnl_unlock in two paths: igc_resume and
     igc_io_error_detected. The code added to the latter is inspired by
     a similar implementation in ixgbe's ixgbe_io_error_detected.

 v3:
   - Replace igc_unset_queue_napi with igc_set_queue_napi(adapater, i,
     NULL), as suggested by Vinicius Costa Gomes
   - Simplify implemention of igc_set_queue_napi as suggested by Kurt
     Kanzenbach, with a tweak to use ring->queue_index

 v2:
   - Update commit message to include tests for IGC_FLAG_QUEUE_PAIRS
     disabled
   - Refactored code to move napi queue mapping and unmapping to helper
     functions igc_set_queue_napi and igc_unset_queue_napi
   - Adjust the code to handle IGC_FLAG_QUEUE_PAIRS disabled
   - Call helpers to map/unmap queues to NAPIs in igc_up, __igc_open,
     igc_xdp_enable_pool, and igc_xdp_disable_pool

 drivers/net/ethernet/intel/igc/igc.h      |  2 +
 drivers/net/ethernet/intel/igc/igc_main.c | 52 ++++++++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 +
 3 files changed, 49 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index eac0f966e0e4..b8111ad9a9a8 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -337,6 +337,8 @@ struct igc_adapter {
 	struct igc_led_classdev *leds;
 };
 
+void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
+			struct napi_struct *napi);
 void igc_up(struct igc_adapter *adapter);
 void igc_down(struct igc_adapter *adapter);
 int igc_open(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7964bbedb16c..051a0cdb1143 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4948,6 +4948,22 @@ static int igc_sw_init(struct igc_adapter *adapter)
 	return 0;
 }
 
+void igc_set_queue_napi(struct igc_adapter *adapter, int vector,
+			struct napi_struct *napi)
+{
+	struct igc_q_vector *q_vector = adapter->q_vector[vector];
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
  * igc_up - Open the interface and prepare it to handle traffic
  * @adapter: board private structure
@@ -4955,6 +4971,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
 void igc_up(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
+	struct napi_struct *napi;
 	int i = 0;
 
 	/* hardware has been reset, we need to reload some things */
@@ -4962,8 +4979,11 @@ void igc_up(struct igc_adapter *adapter)
 
 	clear_bit(__IGC_DOWN, &adapter->state);
 
-	for (i = 0; i < adapter->num_q_vectors; i++)
-		napi_enable(&adapter->q_vector[i]->napi);
+	for (i = 0; i < adapter->num_q_vectors; i++) {
+		napi = &adapter->q_vector[i]->napi;
+		napi_enable(napi);
+		igc_set_queue_napi(adapter, i, napi);
+	}
 
 	if (adapter->msix_entries)
 		igc_configure_msix(adapter);
@@ -5192,6 +5212,7 @@ void igc_down(struct igc_adapter *adapter)
 	for (i = 0; i < adapter->num_q_vectors; i++) {
 		if (adapter->q_vector[i]) {
 			napi_synchronize(&adapter->q_vector[i]->napi);
+			igc_set_queue_napi(adapter, i, NULL);
 			napi_disable(&adapter->q_vector[i]->napi);
 		}
 	}
@@ -6021,6 +6042,7 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct pci_dev *pdev = adapter->pdev;
 	struct igc_hw *hw = &adapter->hw;
+	struct napi_struct *napi;
 	int err = 0;
 	int i = 0;
 
@@ -6056,8 +6078,11 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 
 	clear_bit(__IGC_DOWN, &adapter->state);
 
-	for (i = 0; i < adapter->num_q_vectors; i++)
-		napi_enable(&adapter->q_vector[i]->napi);
+	for (i = 0; i < adapter->num_q_vectors; i++) {
+		napi = &adapter->q_vector[i]->napi;
+		napi_enable(napi);
+		igc_set_queue_napi(adapter, i, napi);
+	}
 
 	/* Clear any pending interrupts. */
 	rd32(IGC_ICR);
@@ -7342,7 +7367,7 @@ static void igc_deliver_wake_packet(struct net_device *netdev)
 	netif_rx(skb);
 }
 
-static int igc_resume(struct device *dev)
+static int __igc_do_resume(struct device *dev, bool need_rtnl)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -7385,7 +7410,11 @@ static int igc_resume(struct device *dev)
 	wr32(IGC_WUS, ~0);
 
 	if (netif_running(netdev)) {
+		if (need_rtnl)
+			rtnl_lock();
 		err = __igc_open(netdev, true);
+		if (need_rtnl)
+			rtnl_unlock();
 		if (!err)
 			netif_device_attach(netdev);
 	}
@@ -7393,9 +7422,14 @@ static int igc_resume(struct device *dev)
 	return err;
 }
 
+static int igc_resume(struct device *dev)
+{
+	return __igc_do_resume(dev, true);
+}
+
 static int igc_runtime_resume(struct device *dev)
 {
-	return igc_resume(dev);
+	return __igc_do_resume(dev, false);
 }
 
 static int igc_suspend(struct device *dev)
@@ -7440,14 +7474,18 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
+	rtnl_lock();
 	netif_device_detach(netdev);
 
-	if (state == pci_channel_io_perm_failure)
+	if (state == pci_channel_io_perm_failure) {
+		rtnl_unlock();
 		return PCI_ERS_RESULT_DISCONNECT;
+	}
 
 	if (netif_running(netdev))
 		igc_down(adapter);
 	pci_disable_device(pdev);
+	rtnl_unlock();
 
 	/* Request a slot reset. */
 	return PCI_ERS_RESULT_NEED_RESET;
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index e27af72aada8..4da633430b80 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -84,6 +84,7 @@ static int igc_xdp_enable_pool(struct igc_adapter *adapter,
 		napi_disable(napi);
 	}
 
+	igc_set_queue_napi(adapter, queue_id, NULL);
 	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
 	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
 
@@ -133,6 +134,7 @@ static int igc_xdp_disable_pool(struct igc_adapter *adapter, u16 queue_id)
 	xsk_pool_dma_unmap(pool, IGC_RX_DMA_ATTR);
 	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
 	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
+	igc_set_queue_napi(adapter, queue_id, napi);
 
 	if (needs_reset) {
 		napi_enable(napi);
-- 
2.25.1

