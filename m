Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 723E598FAA9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 01:39:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19C3B60F77;
	Thu,  3 Oct 2024 23:39:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YXgBjweCR0Wm; Thu,  3 Oct 2024 23:39:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DBCE61084
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727998751;
	bh=ZpDtgFKpiW6n7Ug+1YSP06l0kr3SHis2120480WaYUs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PiLotgLt0Dd6PUW1yeQcFoZc2dbMy8vq3XXIKXHuq7MUQf5OzYWNSDUjKv3Jl4Vq3
	 qken0G0z25BKautlRF4Ecy2oY0rTq1c0gQAnwdQNm99FDvPJhJiP0johQXdKJSur/s
	 6r7a1UEV2n6IPU9ROy95qspk3ru/ISjOUQW8kIWlE6SzDfqJ/iqGuwN0Mv1ZwLJ4wo
	 BLlq/daedd78q0X1ivtOsdZK4n8D0UHPwpSYdXeWA3CpgNMvFwC9JQr5V8PA7OJSnV
	 M+Q9VgAw6rm/8JQN/KI59UowyTjwYXvLH8PYdXzI+tc1uhpis2PBHqLjGzAIfQUAgo
	 JDLey5pNZESEg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DBCE61084;
	Thu,  3 Oct 2024 23:39:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A7821BF370
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 48DD460637
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:39:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kPmWkGlu54dP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 23:39:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62c; helo=mail-pl1-x62c.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7962F6070F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7962F6070F
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7962F6070F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:39:07 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-20ba9f3824fso12298745ad.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Oct 2024 16:39:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727998746; x=1728603546;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZpDtgFKpiW6n7Ug+1YSP06l0kr3SHis2120480WaYUs=;
 b=uUXioRzUUBQMk1OyVBT0eG+pWBvbjbZ0xC1RRNsUZh18655b57xjaCz6GrpTvI/+rr
 IfQ1vqyv0byQ1VC+oF/NBawDil1vYmo76u3UvxqJjOzx8e9BZt67ioAmuUJhdy205SLj
 PmY3FAtxWh4UWRV4IA61r/m0eaFZkPHLPD2hOU4ZPiAFowr6dHmISuRYGuuMM2LZ+e5q
 4kLrAjID1q2l1RJjLIC410p4Sgg0EtMn4SP+CCO5MS36PJsC0qCRihD+ML+MAunfSi3r
 Go0WMHfGkHQRCellrUtQrvinNrLvCJbPiJsHXyhfYTpr6eHFkXnu3nunGABfCjhfRpc7
 bV6A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWZmS+tyExwwyUuVGnWAKMkpMIsrp1hl5FD17UmQoK1FAWHpMN5udhbyCNdYY9gmfmDQAu3ThOfQoK0E4UsVMw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwdtRA6d72/sU+TX8LSqZBn7wn3f6CJY+NleFbjIPZyI23p4cLg
 VhVEOCISvJ8rS1RsuTZZOdpjtDu+yILMc1FRt7DC/Ak5r6xr+/3TnRVSCTJDCSo=
X-Google-Smtp-Source: AGHT+IEscOgAVx/0YG9i/MINtF9xq0NivswWkuBxhiN50OJBwJky40grr6JNhThn+Z2xOj8C0ihYvQ==
X-Received: by 2002:a17:902:e742:b0:20b:b7b2:b6f4 with SMTP id
 d9443c01a7336-20bfea5417fmr10500325ad.47.1727998746571; 
 Thu, 03 Oct 2024 16:39:06 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20beef8ec6bsm13960705ad.158.2024.10.03.16.39.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2024 16:39:06 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Thu,  3 Oct 2024 23:38:50 +0000
Message-Id: <20241003233850.199495-3-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241003233850.199495-1-jdamato@fastly.com>
References: <20241003233850.199495-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727998746; x=1728603546; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZpDtgFKpiW6n7Ug+1YSP06l0kr3SHis2120480WaYUs=;
 b=o9i/GXpA0FjeGN2+heI2ytXEDTYCSX2+uhRhCBFCLSuH1rddOn1fG5xaX3axiqP0dY
 Jlg6nOWsWxgrr16fp4K3Pk1g2e4IQ6CU7uG2YxEEkSxsddIDeziOYgHDp6Z+KuG4217K
 5AzIAX0vmwEAgLWe6UWJOYRHegQrD4s3kmd6E=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=o9i/GXpA
Subject: [Intel-wired-lan] [RFC net-next 2/2] igc: Link queues to NAPI
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Link queues to NAPI instances via netdev-genl API so that users can
query this information with netlink:

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

Since igc uses only combined queues, you'll note that the same NAPI ID
is present for both rx and tx queues at the same index, for example
index 0:

{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 30 ++++++++++++++++++++---
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7964bbedb16c..b3bd5bf29fa7 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4955,6 +4955,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
 void igc_up(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
+	struct napi_struct *napi;
 	int i = 0;
 
 	/* hardware has been reset, we need to reload some things */
@@ -4962,8 +4963,17 @@ void igc_up(struct igc_adapter *adapter)
 
 	clear_bit(__IGC_DOWN, &adapter->state);
 
-	for (i = 0; i < adapter->num_q_vectors; i++)
-		napi_enable(&adapter->q_vector[i]->napi);
+	for (i = 0; i < adapter->num_q_vectors; i++) {
+		napi = &adapter->q_vector[i]->napi;
+		napi_enable(napi);
+		/* igc only supports combined queues, so link each NAPI to both
+		 * TX and RX
+		 */
+		netif_queue_set_napi(adapter->netdev, i, NETDEV_QUEUE_TYPE_RX,
+				     napi);
+		netif_queue_set_napi(adapter->netdev, i, NETDEV_QUEUE_TYPE_TX,
+				     napi);
+	}
 
 	if (adapter->msix_entries)
 		igc_configure_msix(adapter);
@@ -5192,6 +5202,10 @@ void igc_down(struct igc_adapter *adapter)
 	for (i = 0; i < adapter->num_q_vectors; i++) {
 		if (adapter->q_vector[i]) {
 			napi_synchronize(&adapter->q_vector[i]->napi);
+			netif_queue_set_napi(netdev, i, NETDEV_QUEUE_TYPE_RX,
+					     NULL);
+			netif_queue_set_napi(netdev, i, NETDEV_QUEUE_TYPE_TX,
+					     NULL);
 			napi_disable(&adapter->q_vector[i]->napi);
 		}
 	}
@@ -6021,6 +6035,7 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct pci_dev *pdev = adapter->pdev;
 	struct igc_hw *hw = &adapter->hw;
+	struct napi_struct *napi;
 	int err = 0;
 	int i = 0;
 
@@ -6056,8 +6071,15 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 
 	clear_bit(__IGC_DOWN, &adapter->state);
 
-	for (i = 0; i < adapter->num_q_vectors; i++)
-		napi_enable(&adapter->q_vector[i]->napi);
+	for (i = 0; i < adapter->num_q_vectors; i++) {
+		napi = &adapter->q_vector[i]->napi;
+		napi_enable(napi);
+		/* igc only supports combined queues, so link each NAPI to both
+		 * TX and RX
+		 */
+		netif_queue_set_napi(netdev, i, NETDEV_QUEUE_TYPE_RX, napi);
+		netif_queue_set_napi(netdev, i, NETDEV_QUEUE_TYPE_TX, napi);
+	}
 
 	/* Clear any pending interrupts. */
 	rd32(IGC_ICR);
-- 
2.25.1

