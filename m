Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F539864D7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 18:31:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2CE384A3F;
	Wed, 25 Sep 2024 16:31:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UsjZnFdswj-a; Wed, 25 Sep 2024 16:31:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E88FC849DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727281862;
	bh=SPn7NyA8EvFtDI+rj2RU3nMqRoNcoHgRdtft+sybg/g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TjOQdm6mxyYPoCstTH4Sw30/co305IMpujWbtWOaoV11ed/+P+VZGQ85KpBbbHQe2
	 /lWLSp8mVdye8hU4an5fo8jhjLfGv7qMnGfGCyLIB5wmiw+z5CIVt4BgLItwFkpqlP
	 eM5hIaWu299CiyStPqyYOdf/eoQekIIPkhTTXlqwVIAXErMOj5kpaVcQY9UDEs4zst
	 roEnGqc/bBHzkaEGqIv2BBrxExvluW+pdbOTH0W1LbpTB7zo3CKBtVwU/qYstPHaHJ
	 QwSKc3184tjNJQMGfAQ1LdI9UWPToetMKb5xWFS+msnLSxjM2KOFj8Al9Ogl888U4r
	 KX9G55XhkDwEw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E88FC849DC;
	Wed, 25 Sep 2024 16:31:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5ADC51BF35D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A7CF84A2D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:30:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OiyOxtT3Uz8C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 16:30:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8A60B846BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A60B846BE
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A60B846BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:30:58 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-20570b42f24so77734255ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 09:30:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727281858; x=1727886658;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SPn7NyA8EvFtDI+rj2RU3nMqRoNcoHgRdtft+sybg/g=;
 b=bkmQpHJjjqAt1qExj8RO3OgLJpBhNISqQr+J6ozyqJG0+xxWTMCCaWy4ttkqTgeYLt
 s8S3Jk84H/Ea4n59JOlhI9UkJULbvhbL/DYm2ltdGBjU/wW4jum4u9SKMrwzuRzWW98g
 B8y7608Rz7C6fiBXlV8keNSdAp+pUxWQoctb74DU7Q/mpvRP3+bmws6+LFYHOg7hs4he
 VJG5wg1w2TXL+AUADTajdMCbyL2U5gYp4p58hKgul5G0AOARPtJbPkPbt5WAx7wX7JO3
 UwZTC60X6LKem5kgVolKwG34ooj5CgvQO4fXAhUAp84FzPZAhUixEupZkNuTt8SuCaW1
 2BBQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHVVGinNG7+f4MekNyyQdaUGs3MTGktYi75+VoyKWTuHXn28kWXpsksRPNQXK7f+dlmJ5V6mnMVHoGQTzk4rI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyTVNjeplIGBP61QjJq0ml1WpirAHpuD1jZ1VCctDkRtP5zDMwi
 wJvs1FNIXIZY+umOJydiGkNKaZkTD7sXg8AJvuqVo5xdnb1JqogdggNFCV7toAM=
X-Google-Smtp-Source: AGHT+IEM3gPUtOxfd/W3Jnyzn6mZZ8mH6XO7SpWmV1e4jRBezuatggwjJ5DEzXqm0y0ZQlMXfIHvmg==
X-Received: by 2002:a17:902:ecc8:b0:206:ac11:f3bb with SMTP id
 d9443c01a7336-20afc5ee705mr34902965ad.47.1727281857892; 
 Wed, 25 Sep 2024 09:30:57 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20af16e0702sm26345585ad.28.2024.09.25.09.30.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2024 09:30:57 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Sep 2024 16:29:36 +0000
Message-Id: <20240925162937.2218-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240925162937.2218-1-jdamato@fastly.com>
References: <20240925162937.2218-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727281858; x=1727886658; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SPn7NyA8EvFtDI+rj2RU3nMqRoNcoHgRdtft+sybg/g=;
 b=Gxo3FMvVaHBk9I1kP12aRu/QppSpO07jehusd4IPuSIukREJZgNnlyuQxUuYlIZNkX
 EPzQ3XatS0YPA/csLmth303r74Q6k8QTS060jLR2uSEzvf0V5sF1w0NRdibXkt+outk5
 bdXgLn1vNRgZ1Y1ooSN+2jpdBFDdO1eXlzpJE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=Gxo3FMvV
Subject: [Intel-wired-lan] [RFC v2 net-next 1/2] e1000e: link NAPI instances
 to queues and IRQs
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

Make e1000e compatible with the newly added netdev-genl APIs.

$ cat /proc/interrupts | grep ens | cut -f1 --delimiter=':'
 50
 51
 52

While e1000e allocates 3 IRQs (RX, TX, and other), it looks like e1000e
only has a single NAPI, so I've associated the NAPI with the RX IRQ (50
on my system, seen above):

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                       --dump napi-get --json='{"ifindex": 2}'
[{'id': 145, 'ifindex': 2, 'irq': 50}]

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

