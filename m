Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A46449AB90C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 23:53:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F543607A8;
	Tue, 22 Oct 2024 21:53:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tZhIUR17sgeB; Tue, 22 Oct 2024 21:53:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1796D607C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729633988;
	bh=yu/fX3X5EHjeQVvxkbdBwctpaSABzbSE8yyiwWRX/QA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bZLAb7n6V/Ryj1UrRKZY3gGxkg7cfnUHU6BESmnmW1ni8Idamr7uGvUK6UwjYCdUb
	 hTzIImDxKzdcMZiB4uFJWl+SLUTmUCwoAEI/htFaXhsUotU2WExH3j0k9370iFjvSB
	 paEWoUjB4NY6i1e/A6EHTkd5LCOHcjEDp+/9Rn+nkKGAooSR1pbq5kmjv9mMPsZWpG
	 XFXU1AMl8iO1lW1mb76idvRonYq8BTlB9LiovS07kPby3wvueTznURvd8CUrd+O2Km
	 aziLiaBhX0nkhc5QEeefU69G4cMndeAZMd+KuSPWt0iGbHMS+vw+eaYzJTTzaL2JDd
	 AbZqRv+7WKqbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1796D607C7;
	Tue, 22 Oct 2024 21:53:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DFDB4C21
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:53:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E0A5401B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:53:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7e8Ra4LyfQnU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 21:53:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::436; helo=mail-pf1-x436.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F32B401BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F32B401BB
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F32B401BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:53:03 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id
 d2e1a72fcca58-71e93d551a3so4363160b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:53:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729633983; x=1730238783;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yu/fX3X5EHjeQVvxkbdBwctpaSABzbSE8yyiwWRX/QA=;
 b=wb891V/3ms9icXyDixLdL8FC/TGApDxoxHMFC4coqDLKqEYtFBafyv6XuyOplZgLPE
 4sTGnOndhl1N9SomkvMScagsYECp9i+UX0qENcCLNlnM4XgGgPNM9Y8UI84MMZly8OOW
 aHfXO+WNLiB2VOjaoCNEVkapFgOMwiyw3g6uQ5uq1fpk/rrovximMpSbdWdScdnExWpV
 4DcTNasjoQn6g57KApeor2Kldy2eBXfaLo7Z0d46mZVpfCNuBdx1t1arAIqg0gGfwPGJ
 WRXf1jkbD8IoKRLqFujKw1uzyMq3od9k8mDSw+pGCk+DuoVKYaBv59uldM/r7RoDSKzE
 8A1A==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3gXSgFD5spTT0nWlcbwmP8uJ9aoufGOD34ZFq6CWzIZ9JIJOaqMSXj+8e5SRU7cForkISzXMfTIt407m/M00=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzAVFGDxhbFMFJZynBpSfausvivKK3U2hw+HTsJTw/LHPdsKhGv
 AHGZly5sOsOWyDhSUcebheUBYGFEhHxZjbiDWp+1zTQrhfSB01JNzWxP7rbOZ20=
X-Google-Smtp-Source: AGHT+IH4isynMkoiDOybRISeWiy9JT1O/biRUjKmi+P0qbCUFonIWqa8OOZz8Txnn8elOaBsjA6aHQ==
X-Received: by 2002:a05:6a00:4f90:b0:71d:f64d:ec60 with SMTP id
 d2e1a72fcca58-72030babcb0mr922064b3a.7.1729633982713; 
 Tue, 22 Oct 2024 14:53:02 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71ec13d75b9sm5194375b3a.131.2024.10.22.14.53.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 14:53:02 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: jacob.e.keller@intel.com, kurt@linutronix.de, vinicius.gomes@intel.com,
 Joe Damato <jdamato@fastly.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
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
Date: Tue, 22 Oct 2024 21:52:45 +0000
Message-Id: <20241022215246.307821-3-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241022215246.307821-1-jdamato@fastly.com>
References: <20241022215246.307821-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729633983; x=1730238783; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yu/fX3X5EHjeQVvxkbdBwctpaSABzbSE8yyiwWRX/QA=;
 b=dUwh5dLr6wPRJbh82IoGfrz6IBXBRssWw1XkmpnVMElIGkdFlU/kkT+/0L5apTi6xj
 gnyH/46/FBpWBB5LakcmmQRSkgpUcV5HFrWkGkSWSnWxvFP7sC5cszD99zq6Xz9cTJiO
 DxknCR2cEyuIayBfWn5uiJFOdqv6oC5Fem62U=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=dUwh5dLr
Subject: [Intel-wired-lan] [iwl-next v4 2/2] igc: Link queues to NAPI
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
Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
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

 drivers/net/ethernet/intel/igc/igc.h      |  2 ++
 drivers/net/ethernet/intel/igc/igc_main.c | 41 ++++++++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 ++
 3 files changed, 40 insertions(+), 5 deletions(-)

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
index 7964bbedb16c..04aa216ef612 100644
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
@@ -7385,7 +7410,9 @@ static int igc_resume(struct device *dev)
 	wr32(IGC_WUS, ~0);
 
 	if (netif_running(netdev)) {
+		rtnl_lock();
 		err = __igc_open(netdev, true);
+		rtnl_unlock();
 		if (!err)
 			netif_device_attach(netdev);
 	}
@@ -7440,14 +7467,18 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
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

