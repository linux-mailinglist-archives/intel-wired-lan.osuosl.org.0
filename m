Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 582D198AAD7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 19:13:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67FEF8107F;
	Mon, 30 Sep 2024 17:13:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G6IbSSbndcZr; Mon, 30 Sep 2024 17:13:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF6618108A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727716432;
	bh=TJ1HUt9ENykPQZXpYaQgVfbtM27YTqGTHhgABDKn1/k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9hLC1sIc2ktYbmMPiRL6jWxSd+OPXYtAAyQ60ufHZXYQKtLaiO1aqCiAWbWNPd9wc
	 wS3+nujJtbvxTNCV2CNvb2YGVHoPfqaEx9NjSdPOS1wKS76LgvvawVWsFKfjFU+4UF
	 3okKsxR4iuVF2v/gj4zmTo8fZZIlYJMnfVa6jscZDAo3YOR09ybNrU7ur4OOeI3WLH
	 smgkRhUFvahB1BUj98lbPfK85F+HRffYrDL/88fLoolPWdtJGwOcqtjx8vke0MJIHm
	 vxLf+qmgQ2Ih8yPUJVk2bQB8OT5+ve9kC/EBzecGThLFyD920Dbs8XX8nMjXC78pQw
	 XNR/o6SCTTjfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF6618108A;
	Mon, 30 Sep 2024 17:13:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A99161BF290
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 17:13:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9610080E9F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 17:13:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h-yWX_oRhlak for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 17:13:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1035; helo=mail-pj1-x1035.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CC7A581025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC7A581025
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC7A581025
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 17:13:47 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-2e109539aedso1372339a91.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 10:13:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727716427; x=1728321227;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TJ1HUt9ENykPQZXpYaQgVfbtM27YTqGTHhgABDKn1/k=;
 b=qfn6KH7BP6S15jm32YPkRMIZttl6L6vLlEViVSSGfetiRXsXtD7nrBj23PZPfqB6gE
 jOhRRjKP4M8wJBZp397IqdIqznxBgz4moGdrRVaaJ9oqjfdDKMJI2j/lfWKREUAhCtBd
 BknoFZN68Mg++g1B7I9nl06SBBhBuF+9VHAs8Ku18q6jZ1RXpdygqeJpPUgErNkYNg7n
 tMoI0s8Bel55NEUJPobUbQOx4rmTVYyQT+DDWb8v/nC/yaRx/Cj1KNCiJKn9hWsQ99rt
 InbDEVrXXjoqUX3AK04ppqcW9GKht0iBsAo0zd9BIiiG4bqy07xPoB7FPfuYFAiafv6U
 Z1TQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXtUOkqg9z/qSFYR/P2i8eRw8igWbvQ1bGxgI/3dfb2cxaTEs3dn7nr9StB+uSonjHZHmfseelsh15gf8gDoK0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyuQP2uZhUr+PuyF04Ga61/fg3LAJ1t14YyJLxMf0qoCzgyxQP7
 1aT+JLoStIEyBPJJRjTWzTXs5sJXAXbD8if4ynUvW5T3cdd1Btxmy2NeFhmoRoU=
X-Google-Smtp-Source: AGHT+IGLGN5zg7ydYpQJLz1NT2ZzACaDI+w3M4axykF9rqv6YOBBltCrn9UGFtfPniilSXVjpTnvtA==
X-Received: by 2002:a17:90a:3486:b0:2d8:89ad:a67e with SMTP id
 98e67ed59e1d1-2e0b88903famr16567956a91.1.1727716427128; 
 Mon, 30 Sep 2024 10:13:47 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e0b6e15976sm8188364a91.41.2024.09.30.10.13.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2024 10:13:46 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Mon, 30 Sep 2024 17:12:32 +0000
Message-Id: <20240930171232.1668-3-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240930171232.1668-1-jdamato@fastly.com>
References: <20240930171232.1668-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727716427; x=1728321227; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TJ1HUt9ENykPQZXpYaQgVfbtM27YTqGTHhgABDKn1/k=;
 b=UTHovC/0B72u2KUEYdeQKYFHZOWwnMkLJYTqKwbkYoRf6rMekiwTXrq6MIodTHa4I5
 xK+ad4CjFTAXJV7h4zrefjB8lfkpu3MSZexamdnf+/t+WW4pD6Zec9c75bNqdORXpBDx
 /ihh5kggRn0E/PF3x+sbGWi5WeHO3EjWe3sTI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=UTHovC/0
Subject: [Intel-wired-lan] [net-next v3 2/2] e1000: Link NAPI instances to
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

After this patch is applied, note the IRQ assigned to my NIC:

$ cat /proc/interrupts | grep enp0s8 | cut -f1 --delimiter=':'
 18

Note the output from the cli:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 2}'
[{'id': 513, 'ifindex': 2, 'irq': 18}]

This device supports only 1 rx and 1 tx queue, so querying that:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump queue-get --json='{"ifindex": 2}'
[{'id': 0, 'ifindex': 2, 'napi-id': 513, 'type': 'rx'},
 {'id': 0, 'ifindex': 2, 'napi-id': 513, 'type': 'tx'}]

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index ab7ae418d294..4de9b156b2be 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -513,6 +513,8 @@ void e1000_down(struct e1000_adapter *adapter)
 	 */
 	netif_carrier_off(netdev);
 
+	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_RX, NULL);
+	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_TX, NULL);
 	napi_disable(&adapter->napi);
 
 	e1000_irq_disable(adapter);
@@ -1392,7 +1394,10 @@ int e1000_open(struct net_device *netdev)
 	/* From here on the code is the same as e1000_up() */
 	clear_bit(__E1000_DOWN, &adapter->flags);
 
+	netif_napi_set_irq(&adapter->napi, adapter->pdev->irq);
 	napi_enable(&adapter->napi);
+	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_RX, &adapter->napi);
+	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_TX, &adapter->napi);
 
 	e1000_irq_enable(adapter);
 
-- 
2.34.1

