Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B5A98FAA7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 01:39:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2ACF61053;
	Thu,  3 Oct 2024 23:39:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1LEDb2FpNIO5; Thu,  3 Oct 2024 23:39:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16B416070F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727998749;
	bh=WhYp0DiSsQbpO6IwfgRG0/juZs6Inw4x8enD4rVfZ6Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BRCcdw3etYJwsiZ/8aUIXTJVfxdlt/eZfTBhCo0n60xL4XdXZ/emELNjq39ZuVEA7
	 AChtwITO6BEkvXLEvxDCXWeUtQ6m9IgnF9G8J2cJmKfJJ9+UnX3xehTbKrTQRCVuui
	 +oaLXS9T0WAVdhmO0jzoWbxodeqE56FQUf9vDd6exom0//JwvF2OeJ0ZGFBx7wcDqQ
	 r+GWV8uDVQSdLgzoxb1ui4LV4n8PJWJJO+tTnLMlYkTlK77B9ypNKA4DrzTjr9/gsW
	 f9aeLGMa3pi0XU1urbE7w+OJDOYlU6NcWnmFSwp3G5nNXVU6tB7M1l7TjJGuHEg21r
	 /KAGyNgnHQFyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16B416070F;
	Thu,  3 Oct 2024 23:39:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8DAEC1BF370
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:39:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C5ED60F74
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:39:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vjnmmQNaVMnX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 23:39:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C09BD6070F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C09BD6070F
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C09BD6070F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 23:39:05 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-20b78ee6298so9589765ad.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Oct 2024 16:39:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727998745; x=1728603545;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WhYp0DiSsQbpO6IwfgRG0/juZs6Inw4x8enD4rVfZ6Y=;
 b=u7mRUG+sHWxP5OQA4mL9Au3mFqPd1IyOnXGnQsv8h7HA3VLncmhz6/vrk7ZCpx7UAh
 bE2zfhZkZ3CWU5CT1T2VjcV/uG/g+Vk65EniWb8UHazx39hn0KES4uWeoLYADKVF46rk
 IyfRlLm36WGJ0TF6teCtq4DWxPfo0czJuBKfadtxXAH5qeDs109dZ6KqTI7cLKDTBwoR
 KRiT7qj6B4aKs3BoAn8+SUVE7yPGfC7ymWiUFBOVbh34vy2QZ38QPHTvc9HDrsSWV5xB
 3ivOzYxjNwOb32GMxcR4D9jNj9v1tg9hjV6EBzx6XrUuV69hY3FTbfpIClbgY1PThT0S
 5gzg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUnOjZHSizmyThsFG1LS5S3HavxM8toXUca8ffJ1HjP7kQ3keCfMQuYOl5uGtP0nElLPCxVkcrYIw93/BvZlqE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxyyhNq6rWDbEpb1mgc1N5x101UKxDzpN0stt4fHWStkpjAqUN4
 g4Hcrz0JmX4LRe4JiNLtR1Ix2pEB4lKaH535zdcU9Vg/TUZKLqOHHtwHt1EepGc=
X-Google-Smtp-Source: AGHT+IGTpJ2+WaujujgDrlAgiMjkPmANHMw7/ysggq4USb76kJULVyruSiv/pbcSPf0FW7LJGb0RPw==
X-Received: by 2002:a17:903:2a85:b0:206:ae39:9f4 with SMTP id
 d9443c01a7336-20bfdfc6ff8mr15955935ad.20.1727998745106; 
 Thu, 03 Oct 2024 16:39:05 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20beef8ec6bsm13960705ad.158.2024.10.03.16.39.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2024 16:39:04 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Thu,  3 Oct 2024 23:38:49 +0000
Message-Id: <20241003233850.199495-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241003233850.199495-1-jdamato@fastly.com>
References: <20241003233850.199495-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727998745; x=1728603545; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WhYp0DiSsQbpO6IwfgRG0/juZs6Inw4x8enD4rVfZ6Y=;
 b=Lq3tIWtV+G0eZ1y1DiDOsrcpsdtJfRcGk2JF5JsmbML0uy14DKHqgSnjMw1RfEgns7
 aSxWTpkL0QOwFAHFw3SDWl9oURzKuiFwxd14q5jUM187UkFxvy4ZZEJT79CYnFq3HSxI
 Oytcpk2+c9qCNpIS/p7Ri3EtjnmBvEj1cHjUk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=Lq3tIWtV
Subject: [Intel-wired-lan] [RFC net-next 1/2] igc: Link IRQs to NAPI
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

Link IRQs to NAPI instances via netdev-genl API so that users can query
this information with netlink.

Compare the output of /proc/interrupts (noting that IRQ 144 is the
"other" IRQ which does not appear to have a NAPI instance):

$ cat /proc/interrupts | grep enp86s0 | cut --delimiter=":" -f1
 144
 145
 146
 147
 148

The output from netlink shows the mapping of NAPI IDs to IRQs (again
noting that 144 is absent as it is the "other" IRQ):

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 2}'

[{'id': 8196, 'ifindex': 2, 'irq': 148},
 {'id': 8195, 'ifindex': 2, 'irq': 147},
 {'id': 8194, 'ifindex': 2, 'irq': 146},
 {'id': 8193, 'ifindex': 2, 'irq': 145}]

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index eac0f966e0e4..e757ba53f165 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -593,6 +593,7 @@ struct igc_q_vector {
 
 	struct rcu_head rcu;    /* to avoid race with update stats on free */
 	char name[IFNAMSIZ + 9];
+	int irq;
 
 	/* for dynamic allocation of rings associated with this q_vector */
 	struct igc_ring ring[] ____cacheline_internodealigned_in_smp;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 6e70bca15db1..7964bbedb16c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5576,6 +5576,9 @@ static int igc_request_msix(struct igc_adapter *adapter)
 				  q_vector);
 		if (err)
 			goto err_free;
+
+		netif_napi_set_irq(&q_vector->napi,
+				   adapter->msix_entries[vector].vector);
 	}
 
 	igc_configure_msix(adapter);
-- 
2.25.1

