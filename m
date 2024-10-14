Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3E899D903
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 23:30:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED5FF80FFD;
	Mon, 14 Oct 2024 21:30:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9UfPhEp17rBx; Mon, 14 Oct 2024 21:30:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D314E81016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728941432;
	bh=dxBNgDQSRaL2/P8dfGFD2/KEAzLTmWIcgHceYmhcd5M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ylc15TbnTEri5HrYhxf6qllk6bE+g0AFBn0IcQmogqY6xocxYRSszghZVZKbKqHH/
	 DaVSJ/pyplfFbn/VWxLY8/DQ7dY/HTBQJDzrErtD7q5JvUQh5UCiNTO5kxFlFX7yHd
	 lu2UVDj3h9zNTHGnA/Zcu7VbFpSs5wSQ/P/wwoAbbU7bYfpf8ifUTxPQWOjt/4cJrL
	 6XK9xMo69WDaXw6BxWQLjzYUGesTShUr7mJgcPcWZQMo56bFAylYL0uHs9Vqyx2NPU
	 nPfqikLXza0YQc3HvkJxwZuEmODiegcNggfguYQou1WQqLUNbaKKNxO+AKBywTRIO5
	 RHI/EjyfQNIbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D314E81016;
	Mon, 14 Oct 2024 21:30:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8D581BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 21:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A77B3402F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 21:30:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bREh40d1LRzy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 21:30:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::635; helo=mail-pl1-x635.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6B02B402A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B02B402A8
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6B02B402A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 21:30:29 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-20c8b557f91so36539375ad.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 14:30:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728941429; x=1729546229;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dxBNgDQSRaL2/P8dfGFD2/KEAzLTmWIcgHceYmhcd5M=;
 b=kWUOCTlRW7wsEx33a2LqeYvGW3fAxguKIUhfjDhL9CN96z1WqifVzSzeb4C07M7ntT
 ijZvyfeNkw/NAh5eda4UBaW/rMYmUN6lBX3txK3O0ZukAMDIHmuZs6kbaFhNVeSQjWMH
 TAfTvVogS094w1fkisMCHY+7eBBXoTK/ncY3Swip7Pj7o2IiYRzVxSQIoefLcNMT7RHG
 kdnMifQgoO5V7j0Fquao29PyO+dhp6CQDpX+TiVVOG2zWxXGoazvdnczZ+V21+ZeNB5l
 QZmnqNNAHO4Y5HwQtsV7KQZSITDSjbiiyG5dhuRQkuTWO3LhZeeoIte4Pr5g2OratHOc
 178A==
X-Forwarded-Encrypted: i=1;
 AJvYcCV+lzuUuSNn/1c1x6nj+4ZPNy1rlbjaBDtxtpNaS5SStmPYHNTGl2Xr0qfzkVIsXFmb3RF7ptJBMXO1p4SvW70=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxi0K6ymGTP65TEY9NfrFv2Yl4eucvAIIsg3+Lcn/7u4bjpTmhA
 +ZCNkzDtWzFYvKZgAI1RHqXVwctYj4mBMuL6XYvVDwl3KTSo0+nY53/4iTIWctM=
X-Google-Smtp-Source: AGHT+IEJ4EHb+6N4tM/cFT7ywxQyXS0Ymc9p28zp/vemtOEVMEZrWwOWyx9KSPAvB0H6a840B8DZ5w==
X-Received: by 2002:a17:902:da8e:b0:20c:d2e4:dc33 with SMTP id
 d9443c01a7336-20cd2e4ddc4mr129518515ad.14.1728941428656; 
 Mon, 14 Oct 2024 14:30:28 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20c8bc1a54esm70197495ad.73.2024.10.14.14.30.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2024 14:30:28 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Mon, 14 Oct 2024 21:30:11 +0000
Message-Id: <20241014213012.187976-3-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241014213012.187976-1-jdamato@fastly.com>
References: <20241014213012.187976-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1728941429; x=1729546229; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dxBNgDQSRaL2/P8dfGFD2/KEAzLTmWIcgHceYmhcd5M=;
 b=g+6j7FL+Kqj0HU+A7MsGCs2RONaqR5G4GA+j/Q3miN4PBUbtKIhu7dkRPWvgG1p3BV
 iEtjI7vk0rhN1Uu8n3VHnUdWZ5fuqpcd0gQA0AazzeoSR6gcvcYDnYmkqnB7v/WpMNkH
 xfBn4756t2NTYYBjWTns6ZTiKFGBtZFgPV9X8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=g+6j7FL+
Subject: [Intel-wired-lan] [RFC net-next v2 2/2] igc: Link queues to NAPI
 instances
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, vinicius.gomes@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, kurt@linutronix.de,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "open list:XDP eXpress Data Path" <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
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
 v2:
   - Update commit message to include tests for IGC_FLAG_QUEUE_PAIRS
     disabled
   - Refactored code to move napi queue mapping and unmapping to helper
     functions igc_set_queue_napi and igc_unset_queue_napi
   - Adjust the code to handle IGC_FLAG_QUEUE_PAIRS disabled
   - Call helpers to map/unmap queues to NAPIs in igc_up, __igc_open,
     igc_xdp_enable_pool, and igc_xdp_disable_pool

 drivers/net/ethernet/intel/igc/igc.h      |  3 ++
 drivers/net/ethernet/intel/igc/igc_main.c | 58 +++++++++++++++++++++--
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 +
 3 files changed, 59 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index eac0f966e0e4..7b1c9ea60056 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -337,6 +337,9 @@ struct igc_adapter {
 	struct igc_led_classdev *leds;
 };
 
+void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
+			struct napi_struct *napi);
+void igc_unset_queue_napi(struct igc_adapter *adapter, int q_idx);
 void igc_up(struct igc_adapter *adapter);
 void igc_down(struct igc_adapter *adapter);
 int igc_open(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7964bbedb16c..59c00acfa0ed 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4948,6 +4948,47 @@ static int igc_sw_init(struct igc_adapter *adapter)
 	return 0;
 }
 
+void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
+			struct napi_struct *napi)
+{
+	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {
+		netif_queue_set_napi(adapter->netdev, q_idx,
+				     NETDEV_QUEUE_TYPE_RX, napi);
+		netif_queue_set_napi(adapter->netdev, q_idx,
+				     NETDEV_QUEUE_TYPE_TX, napi);
+	} else {
+		if (q_idx < adapter->num_rx_queues) {
+			netif_queue_set_napi(adapter->netdev, q_idx,
+					     NETDEV_QUEUE_TYPE_RX, napi);
+		} else {
+			q_idx -= adapter->num_rx_queues;
+			netif_queue_set_napi(adapter->netdev, q_idx,
+					     NETDEV_QUEUE_TYPE_TX, napi);
+		}
+	}
+}
+
+void igc_unset_queue_napi(struct igc_adapter *adapter, int q_idx)
+{
+	struct net_device *netdev = adapter->netdev;
+
+	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {
+		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX,
+				     NULL);
+		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_TX,
+				     NULL);
+	} else {
+		if (q_idx < adapter->num_rx_queues) {
+			netif_queue_set_napi(adapter->netdev, q_idx,
+					     NETDEV_QUEUE_TYPE_RX, NULL);
+		} else {
+			q_idx -= adapter->num_rx_queues;
+			netif_queue_set_napi(adapter->netdev, q_idx,
+					     NETDEV_QUEUE_TYPE_TX, NULL);
+		}
+	}
+}
+
 /**
  * igc_up - Open the interface and prepare it to handle traffic
  * @adapter: board private structure
@@ -4955,6 +4996,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
 void igc_up(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
+	struct napi_struct *napi;
 	int i = 0;
 
 	/* hardware has been reset, we need to reload some things */
@@ -4962,8 +5004,11 @@ void igc_up(struct igc_adapter *adapter)
 
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
@@ -5192,6 +5237,7 @@ void igc_down(struct igc_adapter *adapter)
 	for (i = 0; i < adapter->num_q_vectors; i++) {
 		if (adapter->q_vector[i]) {
 			napi_synchronize(&adapter->q_vector[i]->napi);
+			igc_unset_queue_napi(adapter, i);
 			napi_disable(&adapter->q_vector[i]->napi);
 		}
 	}
@@ -6021,6 +6067,7 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct pci_dev *pdev = adapter->pdev;
 	struct igc_hw *hw = &adapter->hw;
+	struct napi_struct *napi;
 	int err = 0;
 	int i = 0;
 
@@ -6056,8 +6103,11 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 
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
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index e27af72aada8..886f04b8c394 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -84,6 +84,7 @@ static int igc_xdp_enable_pool(struct igc_adapter *adapter,
 		napi_disable(napi);
 	}
 
+	igc_unset_queue_napi(adapter, queue_id);
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

