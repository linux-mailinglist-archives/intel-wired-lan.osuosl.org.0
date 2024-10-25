Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4C39B112D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 23:02:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E61EB81F08;
	Fri, 25 Oct 2024 21:02:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gv7rQO4Bducd; Fri, 25 Oct 2024 21:02:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4AB180E16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729890123;
	bh=DiRKckurhPWkCGNfkaki5CjKpIpQ+Zr7q+X6BI+ME7w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OJueN6PcsGR8hzI1RhOsq8VxkAHnBUDSGq3TocobMBn9FXp1y5E2QEio7saXANMzQ
	 LRfiqfPqCyvRou9wrPBwnD3W+VfxN30I35peD26roMLwH0fWVPOokTLs0Qmm1z/gas
	 dyTh/yHNxWQlsvDGEo3g09QfQ+EV6Uffftv8dbuaPu0cqHvEavZ+JEwpp14NgDZWC/
	 J2PgmKsVecIY4zQSsH4+evglajB5nwC3su3dgBaEdtgfcErbXtO1/FUTE0ausZboI5
	 rOolAeXJjl34vC4Ld9BgG+SjUznbDtvcSnWD4m2x1vVjglDbsD0ehfCskmMaqtTjKe
	 hHgvLZhaX0+6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4AB180E16;
	Fri, 25 Oct 2024 21:02:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0CE015C1E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 20:38:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA6B440226
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 20:38:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X_7lJC02RWBO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2024 20:38:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:4860:4864:20::2c; helo=mail-oa1-x2c.google.com;
 envelope-from=rosenp@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 58DC24015A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58DC24015A
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com
 [IPv6:2001:4860:4864:20::2c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 58DC24015A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 20:38:01 +0000 (UTC)
Received: by mail-oa1-x2c.google.com with SMTP id
 586e51a60fabf-2886e2b878dso1279091fac.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 13:38:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729888680; x=1730493480;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=DiRKckurhPWkCGNfkaki5CjKpIpQ+Zr7q+X6BI+ME7w=;
 b=eb62Wsgv3ZwYd6KnRwVJ/9t9s59kkc9jvMN9uHuxSLjdsYOLZvxf3kwCiYmtfbs6p7
 yS5JcMUpkh7cAXrWfEkANH6d2oKhgxnYWvucpmwPzXl0rea34YXCDDKtciKiBIS8vXWL
 JflkQiw91D44kO8FmSKou8vJcuBpCj1BvtJ4lMXzt+EEV6XafEKnLhAPFfOztte2nUF4
 gZ0q/ePcAeUGv9a5m7ctQicUwc9JKvwEIwe4fbwrcdAUbRzleDdvA1hAWQW5BT+3szJk
 qysV9dLH9dpIWtYsXalgfiVDsPcQmqvY7VpgWKs1MDmIuZ54JkqUWeGeqb1fNj6yrdW5
 v8oA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHbNG1UYGfA3INTx2dbtz4qm9Mm1rlnMPF6Qn70RENNkBAGpGrPeQUARtN2wf0s+oWSxymOIO+PYPphzsxk9o=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyDJ5ZXAfeU9S/O84925FG8eYsvU6UFWuXDqpVj1cOsNolOiJ66
 AmtP1EpRYbcCGbBLkZznOJkFZbg1qdMRieoUeBa6ivK9CYe82v2w
X-Google-Smtp-Source: AGHT+IE/9+ynlQjsvIsRSN+zl2CJTvofFlhQ/hUpBpG1TuFOfIPZil6tbtmyI3QlR60woUGfWtAfaA==
X-Received: by 2002:a05:6870:6488:b0:288:361b:c1ad with SMTP id
 586e51a60fabf-29051ddc9c7mr724549fac.46.1729888680103; 
 Fri, 25 Oct 2024 13:38:00 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8200:dab8::a86])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7edc867995csm1494851a12.22.2024.10.25.13.37.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2024 13:37:59 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
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
 bpf@vger.kernel.org (open list:XDP (eXpress Data
 Path):Keyword:(?:\b|_)xdp(?:\b|_))
Date: Fri, 25 Oct 2024 13:37:57 -0700
Message-ID: <20241025203757.288367-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 25 Oct 2024 21:01:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729888680; x=1730493480; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=DiRKckurhPWkCGNfkaki5CjKpIpQ+Zr7q+X6BI+ME7w=;
 b=Tvu/2naFbq/NtounDIB0rn/3JQ4ToFwgAzikZjgwD+kU9qnxKG8KC27zoBqn3xFvBj
 6ob4GyTczdBtSGY8TSE7V9jzYmyAt2fziMbzWxFzoFNAz4C3NzvwxvhCpn9EnXJZCjlH
 rRIaZ1AtUpxM6I/3lMs/0aawmM4tz7AKZSq692+0w4cYR9UmHWlLVCFaGiEJXHPGJPEg
 xsC3v8o5DvRnX9+Gkrlc5JmgCNmqRjnq9tFlMIoWX212An26IQb2JNF3VY719X4tueON
 SzR1zY/H1O4eFgl4ek2cjY1tBqOQhvBoHClDdibH7rX4F+9teMAqDAjNjCyIUgc/2vna
 n+bw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Tvu/2naF
Subject: [Intel-wired-lan] [PATCHv2 net-next] net: freescale: use ethtool
 string helpers
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

The latter is the preferred way to copy ethtool strings.

Avoids manually incrementing the pointer. Cleans up the code quite well.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: fix wrong variable in for loop
 .../ethernet/freescale/dpaa/dpaa_ethtool.c    | 40 ++++++-------------
 .../ethernet/freescale/dpaa2/dpaa2-ethtool.c  | 15 +++----
 .../net/ethernet/freescale/dpaa2/dpaa2-mac.c  |  9 ++---
 .../net/ethernet/freescale/dpaa2/dpaa2-mac.h  |  2 +-
 .../freescale/dpaa2/dpaa2-switch-ethtool.c    |  9 ++---
 .../ethernet/freescale/enetc/enetc_ethtool.c  | 35 +++++-----------
 .../net/ethernet/freescale/gianfar_ethtool.c  |  8 ++--
 .../net/ethernet/freescale/ucc_geth_ethtool.c | 21 +++++-----
 8 files changed, 51 insertions(+), 88 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_ethtool.c b/drivers/net/ethernet/freescale/dpaa/dpaa_ethtool.c
index b0060cf96090..9986f6e1f587 100644
--- a/drivers/net/ethernet/freescale/dpaa/dpaa_ethtool.c
+++ b/drivers/net/ethernet/freescale/dpaa/dpaa_ethtool.c
@@ -243,38 +243,24 @@ static void dpaa_get_ethtool_stats(struct net_device *net_dev,
 static void dpaa_get_strings(struct net_device *net_dev, u32 stringset,
 			     u8 *data)
 {
-	unsigned int i, j, num_cpus, size;
-	char string_cpu[ETH_GSTRING_LEN];
-	u8 *strings;
+	unsigned int i, j, num_cpus;
 
-	memset(string_cpu, 0, sizeof(string_cpu));
-	strings   = data;
-	num_cpus  = num_online_cpus();
-	size      = DPAA_STATS_GLOBAL_LEN * ETH_GSTRING_LEN;
+	num_cpus = num_online_cpus();
 
 	for (i = 0; i < DPAA_STATS_PERCPU_LEN; i++) {
-		for (j = 0; j < num_cpus; j++) {
-			snprintf(string_cpu, ETH_GSTRING_LEN, "%s [CPU %d]",
-				 dpaa_stats_percpu[i], j);
-			memcpy(strings, string_cpu, ETH_GSTRING_LEN);
-			strings += ETH_GSTRING_LEN;
-		}
-		snprintf(string_cpu, ETH_GSTRING_LEN, "%s [TOTAL]",
-			 dpaa_stats_percpu[i]);
-		memcpy(strings, string_cpu, ETH_GSTRING_LEN);
-		strings += ETH_GSTRING_LEN;
-	}
-	for (j = 0; j < num_cpus; j++) {
-		snprintf(string_cpu, ETH_GSTRING_LEN,
-			 "bpool [CPU %d]", j);
-		memcpy(strings, string_cpu, ETH_GSTRING_LEN);
-		strings += ETH_GSTRING_LEN;
+		for (j = 0; j < num_cpus; j++)
+			ethtool_sprintf(&data, "%s [CPU %d]",
+					dpaa_stats_percpu[i], j);
+
+		ethtool_sprintf(&data, "%s [TOTAL]", dpaa_stats_percpu[i]);
 	}
-	snprintf(string_cpu, ETH_GSTRING_LEN, "bpool [TOTAL]");
-	memcpy(strings, string_cpu, ETH_GSTRING_LEN);
-	strings += ETH_GSTRING_LEN;
+	for (i = 0; i < num_cpus; i++)
+		ethtool_sprintf(&data, "bpool [CPU %d]", i);
+
+	ethtool_puts(&data, "bpool [TOTAL]");
 
-	memcpy(strings, dpaa_stats_global, size);
+	for (i = 0; i < DPAA_STATS_GLOBAL_LEN; i++)
+		ethtool_puts(&data, dpaa_stats_global[i]);
 }
 
 static int dpaa_get_hash_opts(struct net_device *dev,
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c
index 7f476519b7ad..74ef77cb7078 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-ethtool.c
@@ -217,20 +217,15 @@ static int dpaa2_eth_set_pauseparam(struct net_device *net_dev,
 static void dpaa2_eth_get_strings(struct net_device *netdev, u32 stringset,
 				  u8 *data)
 {
-	u8 *p = data;
 	int i;
 
 	switch (stringset) {
 	case ETH_SS_STATS:
-		for (i = 0; i < DPAA2_ETH_NUM_STATS; i++) {
-			strscpy(p, dpaa2_ethtool_stats[i], ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
-		for (i = 0; i < DPAA2_ETH_NUM_EXTRA_STATS; i++) {
-			strscpy(p, dpaa2_ethtool_extras[i], ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
-		dpaa2_mac_get_strings(p);
+		for (i = 0; i < DPAA2_ETH_NUM_STATS; i++)
+			ethtool_puts(&data, dpaa2_ethtool_stats[i]);
+		for (i = 0; i < DPAA2_ETH_NUM_EXTRA_STATS; i++)
+			ethtool_puts(&data, dpaa2_ethtool_extras[i]);
+		dpaa2_mac_get_strings(&data);
 		break;
 	}
 }
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
index a69bb22c37ea..422ce13a7c94 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
@@ -558,15 +558,12 @@ int dpaa2_mac_get_sset_count(void)
 	return DPAA2_MAC_NUM_STATS;
 }
 
-void dpaa2_mac_get_strings(u8 *data)
+void dpaa2_mac_get_strings(u8 **data)
 {
-	u8 *p = data;
 	int i;
 
-	for (i = 0; i < DPAA2_MAC_NUM_STATS; i++) {
-		strscpy(p, dpaa2_mac_ethtool_stats[i], ETH_GSTRING_LEN);
-		p += ETH_GSTRING_LEN;
-	}
+	for (i = 0; i < DPAA2_MAC_NUM_STATS; i++)
+		ethtool_puts(data, dpaa2_mac_ethtool_stats[i]);
 }
 
 void dpaa2_mac_get_ethtool_stats(struct dpaa2_mac *mac, u64 *data)
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.h b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.h
index c1ec9efd413a..53f8d106d11e 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.h
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.h
@@ -49,7 +49,7 @@ void dpaa2_mac_disconnect(struct dpaa2_mac *mac);
 
 int dpaa2_mac_get_sset_count(void);
 
-void dpaa2_mac_get_strings(u8 *data);
+void dpaa2_mac_get_strings(u8 **data);
 
 void dpaa2_mac_get_ethtool_stats(struct dpaa2_mac *mac, u64 *data);
 
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c
index 6bc1988be311..a888f6e6e9b0 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c
@@ -170,17 +170,16 @@ dpaa2_switch_ethtool_get_sset_count(struct net_device *netdev, int sset)
 static void dpaa2_switch_ethtool_get_strings(struct net_device *netdev,
 					     u32 stringset, u8 *data)
 {
-	u8 *p = data;
+	const char *str;
 	int i;
 
 	switch (stringset) {
 	case ETH_SS_STATS:
 		for (i = 0; i < DPAA2_SWITCH_NUM_COUNTERS; i++) {
-			memcpy(p, dpaa2_switch_ethtool_counters[i].name,
-			       ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
+			str = dpaa2_switch_ethtool_counters[i].name;
+			ethtool_puts(&data, str);
 		}
-		dpaa2_mac_get_strings(p);
+		dpaa2_mac_get_strings(&data);
 		break;
 	}
 }
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c b/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
index 2563eb8ac7b6..e1745b89362d 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
@@ -247,38 +247,25 @@ static int enetc_get_sset_count(struct net_device *ndev, int sset)
 static void enetc_get_strings(struct net_device *ndev, u32 stringset, u8 *data)
 {
 	struct enetc_ndev_priv *priv = netdev_priv(ndev);
-	u8 *p = data;
 	int i, j;
 
 	switch (stringset) {
 	case ETH_SS_STATS:
-		for (i = 0; i < ARRAY_SIZE(enetc_si_counters); i++) {
-			strscpy(p, enetc_si_counters[i].name, ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
-		for (i = 0; i < priv->num_tx_rings; i++) {
-			for (j = 0; j < ARRAY_SIZE(tx_ring_stats); j++) {
-				snprintf(p, ETH_GSTRING_LEN, tx_ring_stats[j],
-					 i);
-				p += ETH_GSTRING_LEN;
-			}
-		}
-		for (i = 0; i < priv->num_rx_rings; i++) {
-			for (j = 0; j < ARRAY_SIZE(rx_ring_stats); j++) {
-				snprintf(p, ETH_GSTRING_LEN, rx_ring_stats[j],
-					 i);
-				p += ETH_GSTRING_LEN;
-			}
-		}
+		for (i = 0; i < ARRAY_SIZE(enetc_si_counters); i++)
+			ethtool_puts(&data, enetc_si_counters[i].name);
+		for (i = 0; i < priv->num_tx_rings; i++)
+			for (j = 0; j < ARRAY_SIZE(tx_ring_stats); j++)
+				ethtool_sprintf(&data, tx_ring_stats[j], i);
+		for (i = 0; i < priv->num_rx_rings; i++)
+			for (j = 0; j < ARRAY_SIZE(rx_ring_stats); j++)
+				ethtool_sprintf(&data, rx_ring_stats[j], i);
 
 		if (!enetc_si_is_pf(priv->si))
 			break;
 
-		for (i = 0; i < ARRAY_SIZE(enetc_port_counters); i++) {
-			strscpy(p, enetc_port_counters[i].name,
-				ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < ARRAY_SIZE(enetc_port_counters); i++)
+			ethtool_puts(&data, enetc_port_counters[i].name);
+
 		break;
 	}
 }
diff --git a/drivers/net/ethernet/freescale/gianfar_ethtool.c b/drivers/net/ethernet/freescale/gianfar_ethtool.c
index a99b95c4bcfb..781d92e703cb 100644
--- a/drivers/net/ethernet/freescale/gianfar_ethtool.c
+++ b/drivers/net/ethernet/freescale/gianfar_ethtool.c
@@ -115,12 +115,14 @@ static const char stat_gstrings[][ETH_GSTRING_LEN] = {
 static void gfar_gstrings(struct net_device *dev, u32 stringset, u8 * buf)
 {
 	struct gfar_private *priv = netdev_priv(dev);
+	int i;
 
 	if (priv->device_flags & FSL_GIANFAR_DEV_HAS_RMON)
-		memcpy(buf, stat_gstrings, GFAR_STATS_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < GFAR_STATS_LEN; i++)
+			ethtool_puts(&buf, stat_gstrings[i]);
 	else
-		memcpy(buf, stat_gstrings,
-		       GFAR_EXTRA_STATS_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < GFAR_EXTRA_STATS_LEN; i++)
+			ethtool_puts(&buf, stat_gstrings[i]);
 }
 
 /* Fill in an array of 64-bit statistics from various sources.
diff --git a/drivers/net/ethernet/freescale/ucc_geth_ethtool.c b/drivers/net/ethernet/freescale/ucc_geth_ethtool.c
index 601beb93d3b3..699f346faf5c 100644
--- a/drivers/net/ethernet/freescale/ucc_geth_ethtool.c
+++ b/drivers/net/ethernet/freescale/ucc_geth_ethtool.c
@@ -287,20 +287,17 @@ static void uec_get_strings(struct net_device *netdev, u32 stringset, u8 *buf)
 {
 	struct ucc_geth_private *ugeth = netdev_priv(netdev);
 	u32 stats_mode = ugeth->ug_info->statisticsMode;
+	int i;
 
-	if (stats_mode & UCC_GETH_STATISTICS_GATHERING_MODE_HARDWARE) {
-		memcpy(buf, hw_stat_gstrings, UEC_HW_STATS_LEN *
-			       	ETH_GSTRING_LEN);
-		buf += UEC_HW_STATS_LEN * ETH_GSTRING_LEN;
-	}
-	if (stats_mode & UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_TX) {
-		memcpy(buf, tx_fw_stat_gstrings, UEC_TX_FW_STATS_LEN *
-			       	ETH_GSTRING_LEN);
-		buf += UEC_TX_FW_STATS_LEN * ETH_GSTRING_LEN;
-	}
+	if (stats_mode & UCC_GETH_STATISTICS_GATHERING_MODE_HARDWARE)
+		for (i = 0; i < UEC_HW_STATS_LEN; i++)
+			ethtool_puts(&buf, hw_stat_gstrings[i]);
+	if (stats_mode & UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_TX)
+		for (i = 0; i < UEC_TX_FW_STATS_LEN; i++)
+			ethtool_puts(&buf, tx_fw_stat_gstrings[i]);
 	if (stats_mode & UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_RX)
-		memcpy(buf, rx_fw_stat_gstrings, UEC_RX_FW_STATS_LEN *
-			       	ETH_GSTRING_LEN);
+		for (i = 0; i < UEC_RX_FW_STATS_LEN; i++)
+			ethtool_puts(&buf, rx_fw_stat_gstrings[i]);
 }
 
 static void uec_get_ethtool_stats(struct net_device *netdev,
-- 
2.47.0

