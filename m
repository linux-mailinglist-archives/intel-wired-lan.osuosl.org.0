Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D07BE98AAD6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 19:13:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79D5281053;
	Mon, 30 Sep 2024 17:13:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZhW9V2UP4JyY; Mon, 30 Sep 2024 17:13:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA0E78105B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727716431;
	bh=IPUm6eje2Kvy3MAxOTLFjWIkhuhnGj+3QjJ2qyMtpaA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Gszf1yw22jvqT8lotg+8wb834h91bz0g1OLXKWLaDzEdy8tKOVsBTMY8/pFkuEbq
	 NYdUB+VDI7vtM53JXojMKVjL99gQ+FDhwRfMon/MDEZGx2zL8IOPl3rlrib6xNNZ9b
	 SmeODaatTXHqEWuA7DrLDNsdjTWp40niTfUW6FXKRAQyj0996sDeny7g0cUQb6dLl7
	 DyrZI9fCeSm4GOmOJjp5gP7NKQVJdyW6xENAR+e1f1MfTS7Pp0YT9KfARhQWCQ+MZD
	 XtumzRf7hN+Sq7dt448wHe9++lp/jR7USqIn8nT4K+IP7wrXmBzb/dfzqMoD6U/LGq
	 4qowG9dY4Sgzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA0E78105B;
	Mon, 30 Sep 2024 17:13:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E8EB1BF290
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 17:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1662606BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 17:13:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UnkVo0svEVyr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 17:13:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::631; helo=mail-pl1-x631.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2DD5E60624
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DD5E60624
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DD5E60624
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 17:13:46 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-20b9b35c7c7so6010515ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 10:13:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727716425; x=1728321225;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IPUm6eje2Kvy3MAxOTLFjWIkhuhnGj+3QjJ2qyMtpaA=;
 b=NdKDKpHdbpSh+pPtlcRsc522Vi92onDci6Ku+PMffnz5BrTLIhZK26fQu2XqV/Xdle
 uudcXibpP2oNwo0MYZtg3+dfMzNqhlE30DCP8Qn0mYIb4+NJu8uL5u7xSdouwctc95z4
 SgO8hZPw6khTRTMlrf9/kX/LS1bC7MSuDazt9Qn/oqyM9dvdgwauxlhYDwLfBu1EUOql
 LWwqCGOADFvZFuRQSdbZtQT0HzSYo162r1M3EDmjUIkzDMa3vSg6gbbsL4yvle2gI9VV
 JyO9wtJUhDIDMXq8VByRDJg3M6lzp4tjKH8MDnKEIH69flW7irSeG6OTA1vo/LwEmLTZ
 d0Ww==
X-Forwarded-Encrypted: i=1;
 AJvYcCVf193jRzKPU7jh8mTchLjeOyTPK+DFebbV+X1768iKVAG+1ifV24WIM+6tDhb3/N4JVxnKoHxmRcvKlh7f4gw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzTS/vAP1TIDIKoX+mrgzeE0SBW4Z+qsQs1cLkBDC32MXvJTbXS
 dNUY/IdqquAhfCRutfdOcjr6u+2rUSIXFiBycEXvQJMKphMmAI48t+QTEdZhWq0=
X-Google-Smtp-Source: AGHT+IF3215cZjc1t27AvJmRsUf9qrcGNxs33koPNcRKrDRfVAz8AEkAj2Xp12L+lnK7vjo12L7FCg==
X-Received: by 2002:a17:90a:6982:b0:2bd:7e38:798e with SMTP id
 98e67ed59e1d1-2e0b8ec8c9dmr13624875a91.28.1727716425530; 
 Mon, 30 Sep 2024 10:13:45 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e0b6e15976sm8188364a91.41.2024.09.30.10.13.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2024 10:13:45 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Mon, 30 Sep 2024 17:12:31 +0000
Message-Id: <20240930171232.1668-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240930171232.1668-1-jdamato@fastly.com>
References: <20240930171232.1668-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727716425; x=1728321225; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IPUm6eje2Kvy3MAxOTLFjWIkhuhnGj+3QjJ2qyMtpaA=;
 b=EFT2fpNO2a3fAv0LvetAreFtPPsPK3BFnVzeXv4wgrrXtJztOYRrcQ1umffJz3PRmi
 yz7oXAk2Vq9hZ5zvrhyZwyGyON5nODj1ZSFBXj9pgI5iDHwS36GLUF+uKtWxQUc8n7Tt
 Fn0c4gv64aAvJpgMiJ5xnSIfnOA/WclU8N0nc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=EFT2fpNO
Subject: [Intel-wired-lan] [net-next v3 1/2] e1000e: Link NAPI instances to
 queues and IRQs
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

Add support for netdev-genl, allowing users to query IRQ, NAPI, and queue
information.

After this patch is applied, note the IRQs assigned to my NIC:

$ cat /proc/interrupts | grep ens | cut -f1 --delimiter=':'
 50
 51
 52

While e1000e allocates 3 IRQs (RX, TX, and other), it looks like e1000e
only has a single NAPI, so I've associated the NAPI with the RX IRQ (50
on my system, seen above).

Note the output from the cli:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                       --dump napi-get --json='{"ifindex": 2}'
[{'id': 145, 'ifindex': 2, 'irq': 50}]

This device supports only 1 rx and 1 tx queue. so querying that:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                       --dump queue-get --json='{"ifindex": 2}'
[{'id': 0, 'ifindex': 2, 'napi-id': 145, 'type': 'rx'},
 {'id': 0, 'ifindex': 2, 'napi-id': 145, 'type': 'tx'}]

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index f103249b12fa..b527642c3a82 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -4613,6 +4613,7 @@ int e1000e_open(struct net_device *netdev)
 	struct e1000_hw *hw = &adapter->hw;
 	struct pci_dev *pdev = adapter->pdev;
 	int err;
+	int irq;
 
 	/* disallow open during test */
 	if (test_bit(__E1000_TESTING, &adapter->state))
@@ -4676,7 +4677,15 @@ int e1000e_open(struct net_device *netdev)
 	/* From here on the code is the same as e1000e_up() */
 	clear_bit(__E1000_DOWN, &adapter->state);
 
+	if (adapter->int_mode == E1000E_INT_MODE_MSIX)
+		irq = adapter->msix_entries[0].vector;
+	else
+		irq = adapter->pdev->irq;
+
+	netif_napi_set_irq(&adapter->napi, irq);
 	napi_enable(&adapter->napi);
+	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_RX, &adapter->napi);
+	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_TX, &adapter->napi);
 
 	e1000_irq_enable(adapter);
 
@@ -4735,6 +4744,8 @@ int e1000e_close(struct net_device *netdev)
 		netdev_info(netdev, "NIC Link is Down\n");
 	}
 
+	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_RX, NULL);
+	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_TX, NULL);
 	napi_disable(&adapter->napi);
 
 	e1000e_free_tx_resources(adapter->tx_ring);
-- 
2.34.1

