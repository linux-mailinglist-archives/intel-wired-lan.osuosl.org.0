Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB4D9A445F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 19:14:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DCAC60B6B;
	Fri, 18 Oct 2024 17:14:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DkEBM0zj1UHZ; Fri, 18 Oct 2024 17:14:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8709460732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729271651;
	bh=4bB7GKiKjrs56WpSf5KFX3Q1SGNDmUOvqqDaUgWFtQs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=86PmRj4+9xD0I4ziF+gfP6u5P+pYvwFXpIGfG+PRE0tKMpSktF8uFgOvSCgzTSq3X
	 4pqcjgaIa1i+a4DWWndlv9e8/FMgDlxa7MciIvmdw2lDkQpDlj7ma/GpmKcxARxrVu
	 4fyDATR8CqliUlfDxKk5gs49CWfoVHWWjzEnu2Z1s68T8GM8QP1X5uaEiWRlhsSDZG
	 SHVbzhOd0r+7ppZoSThvM/Xh5ogHce9CZqq6JpZW7W750PAbUzqCJnNeDOMeU2Vtiw
	 U/3dt61U02V2NiwLQWW3F4z0+QG43CfojNcHWcv2BI/dT9duOINdF4zvnodLqeUQNA
	 76F8UCZfwl1dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8709460732;
	Fri, 18 Oct 2024 17:14:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 95CED2073
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 17:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 770F86066B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 17:14:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fd7kAQsleZZA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 17:14:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B7D5E6060B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7D5E6060B
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B7D5E6060B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 17:14:07 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-20c8b557f91so25481155ad.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 10:14:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729271647; x=1729876447;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4bB7GKiKjrs56WpSf5KFX3Q1SGNDmUOvqqDaUgWFtQs=;
 b=fr8SsY69EIt9OwbfXQK7ZBgPKL5zwtgM5zdocZm9+lkZYylEgDzisjv4E1gVPKnvmn
 i9rqgmBcAkN/wjLO9SB0WV0iY2oW471xuSTJ2ks3Dju77I9bNH9/adzpsScljmkbFa7e
 IL4H/2Z1C/ru1AH7/SdzMSPcjpFSZl3GYC1QSr3Pm18dajKe5cgcr98cchimlkb7Ug85
 bK9K6gUB7gPwG3EVBFhCfBreMwtACXAnELoPiiozuFmzkGlhMlyuFBtvtar0+mYVM24i
 M7xJI5Yy+GeHSi3Igi1CcO8GgOY/GTDCk6C1rDr0WWmXx0ooXUIIx0+zbCmnO1AxycKI
 6pgg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVXZBpjx7O0ZVcGc6QrUAFXSX6EVF92o5ocJyzcD8cBX/hl5w2kKIU/dxYGdUnJdhJZDc402ZXyJ/6eZurCLcM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxqCTsUeSUqZKXnHfNQc5R+cqmr6No7CWkpZCDgxLczLXNS7t6C
 V+4pebGfVyquBiTs7d/ui3xAy1upd3ZOuG05VrQeHPFlftk5wEPFk4713IoNcUk=
X-Google-Smtp-Source: AGHT+IFCWKoisVtc7X03EHzO+83itiW9WT1uyE+v7mtQuTkGZD4rTpCGFn7kmp6n/+EACxPFBSN+Og==
X-Received: by 2002:a17:903:234b:b0:20c:fa0b:5297 with SMTP id
 d9443c01a7336-20e5a78e147mr39948375ad.26.1729271646935; 
 Fri, 18 Oct 2024 10:14:06 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20e5a71ecd2sm15000255ad.29.2024.10.18.10.14.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2024 10:14:06 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: kurt@linutronix.de, vinicius.gomes@intel.com,
 Joe Damato <jdamato@fastly.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Fri, 18 Oct 2024 17:13:42 +0000
Message-Id: <20241018171343.314835-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241018171343.314835-1-jdamato@fastly.com>
References: <20241018171343.314835-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729271647; x=1729876447; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4bB7GKiKjrs56WpSf5KFX3Q1SGNDmUOvqqDaUgWFtQs=;
 b=iHg6rtvCNacKSv3MJDfwLWKk4JAnlClwvGhdg4UALcum9m+TwMvXfCe+Q1nVzKNrlu
 u/ssmBbWB0oYqpvqVk8+94Y5YqKqXPdIJxa4E/C+DbFIF6Jp0y1GRYtqsk1BjpKNlPP/
 wH8lFP0I+lp1PuA1jt+XYTMKa2/6FoaH4tyhg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=iHg6rtvC
Subject: [Intel-wired-lan] [net-next v3 1/2] igc: Link IRQs to NAPI instances
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

Link IRQs to NAPI instances via netdev-genl API so that users can query
this information with netlink.

Compare the output of /proc/interrupts (noting that IRQ 144 is the
"other" IRQ which does not appear to have a NAPI instance):

$ cat /proc/interrupts | grep enp86s0 | cut --delimiter=":" -f1
 128
 129
 130
 131
 132

The output from netlink shows the mapping of NAPI IDs to IRQs (again
noting that 144 is absent as it is the "other" IRQ):

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 2}'

[{'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8196,
  'ifindex': 2,
  'irq': 132},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8195,
  'ifindex': 2,
  'irq': 131},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8194,
  'ifindex': 2,
  'irq': 130},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8193,
  'ifindex': 2,
  'irq': 129}]

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 v2:
   - Line wrap at 80 characters

 drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
 1 file changed, 3 insertions(+)

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

