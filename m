Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7EA9864D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 18:31:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB3AE84A55;
	Wed, 25 Sep 2024 16:31:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CYeZ7_gjR5b9; Wed, 25 Sep 2024 16:31:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3825F84A64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727281864;
	bh=zqS3WLQRtJuGZ7n5fqIngVYCyukIdr8Yi9XEikosZZs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kKPM+0zuWSdhwE0OtiHMZ1uZAFyULVyXSZ7ATqevfwDfl0BZRW95oaB475mfiN6rd
	 lBUZJIMrwTa8mpPQgfUO9A1VW33VY2RO77HWPF1FCs+OZpOT4cPi2jRtFAJbZv0pdi
	 GB01ZUNLZPoV6udgFIijD6iaUD5msQod8vX+dPQrFDIVozb6rKwarw1By0GnfFcwNy
	 b04Dym/fev/dURmHGe+1K4vEhs37CpRuCVKEYUWnz+qsZex7qNbZVP4TQN8/5nSMlk
	 ERQcW5SjUNt9aOGj5D0e8ZlyO2p8KQjYN5dFPT9+U51y0U+CqBWmJfHeZQGSoKjqEy
	 nTzlaa5gaP8WQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3825F84A64;
	Wed, 25 Sep 2024 16:31:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BAFE1BF35D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 256B3846BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2tGWYm8ZlZGT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 16:31:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52e; helo=mail-pg1-x52e.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 717DC84A34
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 717DC84A34
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 717DC84A34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:31:00 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id
 41be03b00d2f7-7d916b6a73aso6830a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 09:31:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727281860; x=1727886660;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zqS3WLQRtJuGZ7n5fqIngVYCyukIdr8Yi9XEikosZZs=;
 b=DjdqnfN+/9mQNBmJ+bSmOPJSgs6YNG/C+4qfv7KwxnL+OJS8Rzj6/MsuIbFa//1CYz
 ypSrOmW5en2kQn8CReCCey2ROdY8YgLUZZVUW7MEbpjXUe84Aeb96KMuho1RhTTxeMRW
 xPz+y8kTT+aGYej7sHEea+hvOmCmvzhZ2Fe8rd6qVD+g/Ry9SlXOj/bVRE4TtoZ12NUV
 +yKof4FnyP0TZc4PcAHcPLfT89u2OK90y0OrwIyvEr3o8NmLqE8L4/owP/fpPDxzFy1g
 AxgJz1wYiQ00IlBnKuPFN1t+A0h+EAKk2jcvBnV33G9w+D9AGU+HZaujExbK/Tf8kUt+
 Pt/A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWzlFLX9/uubdvZ3itanPZhLj9ubnVlaw3J2Xz8Y1IHwgTbYLXdIcV8z5pRFg2PImK0wPxLD2vDwlU7owvcYiw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxGtZ69806VcOlb3qGdgJ1+0AKmywKB8JyPYdrYaW5ENNntwmft
 LZKQ2kBhtrX6QzuCMRCzdOKh13uxkaAiYNdnTHqSLT8An/yWndnSFsBt/tEYI5g=
X-Google-Smtp-Source: AGHT+IHkq6o5Ld2ygnxmPUAmwe4I6gQIsnCBKwiUvvIUWibnJ6eGpMuDVKGGABQBnTR8IJWaW9URVQ==
X-Received: by 2002:a05:6a20:d526:b0:1c4:dfa7:d3b9 with SMTP id
 adf61e73a8af0-1d4d4b08946mr4079299637.28.1727281859597; 
 Wed, 25 Sep 2024 09:30:59 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20af16e0702sm26345585ad.28.2024.09.25.09.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2024 09:30:59 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Sep 2024 16:29:37 +0000
Message-Id: <20240925162937.2218-3-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240925162937.2218-1-jdamato@fastly.com>
References: <20240925162937.2218-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727281860; x=1727886660; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zqS3WLQRtJuGZ7n5fqIngVYCyukIdr8Yi9XEikosZZs=;
 b=eLQsB6mR+tAtMXL4wA2zaaWLoSe83KKcphfoJsOaGT1Uvb+XYh/rAdn4q13H0HYwwm
 U6SgykYuYtbRo9XBzpRUNbinOop8N2ThIV75+wHB0idacSRL7sf3wOMUWJvGJO38dXLq
 VUKcOhYWJAok1Y1qQY0mlRyZ3XpDjJlq+LSf0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=eLQsB6mR
Subject: [Intel-wired-lan] [RFC v2 net-next 2/2] e1000: Link IRQs and queues
 to NAPIs
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

Add support for netdev-genl, allowing users to query IRQ, NAPI, and
queue information.

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

