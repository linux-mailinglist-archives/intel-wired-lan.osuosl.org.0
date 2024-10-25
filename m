Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B61999B112C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 23:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C223408AE;
	Fri, 25 Oct 2024 21:02:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OQqsqdOMXPej; Fri, 25 Oct 2024 21:02:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0339F408D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729890122;
	bh=1wc/QZe1hiCCq5FlwaTTiitAUZHpvboWKLlfnwXki6s=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WQAlxb7tBrRHNSGRd2sW1MKFiOYlY8ak+6MN5iYyK3ZuR5acKWU7B/989N5M9ZKUO
	 bFQV0lb8ovwNntd+E7FpzZukc+42VTm1iVHBP4ILpBHgzWTjFB/ywBRXH+GaOnAztS
	 W7iGpCiN7gb0vaT892uvd7/Y7Eg0T4G9/CZJnYVcPMO02nA2AVa+Nhr3OXg6kq8L9K
	 fXboDhVHPvqst4qO/Muq1EKwj4wf74NDC/VcNOy1WrFg1ZvCeAFEIG5Tjhnby/kxe0
	 IbEl6c2kAZJDyS0nZUaRNDNl5pqOeREUDdqNgIHjXjgIhYJiLXsk5flWLKPMSMw7OM
	 u2RdQSGTh0t6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0339F408D4;
	Fri, 25 Oct 2024 21:02:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9991E5C1E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 20:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B28560627
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 20:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U_luPX0ghxLO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2024 20:17:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42b; helo=mail-pf1-x42b.google.com;
 envelope-from=rosenp@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2ED0C600CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2ED0C600CB
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2ED0C600CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 20:17:16 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id
 d2e1a72fcca58-71f5208217dso1599514b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 13:17:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729887436; x=1730492236;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1wc/QZe1hiCCq5FlwaTTiitAUZHpvboWKLlfnwXki6s=;
 b=SMPsY9xpzlSrzSkDgOa2bygrZqFAz68D4YFiGI444/jyJju2YdtOKFDnjNh2iFvw/q
 ACDvQoU9hev58TjcsfdN2kinMeGliOHX5WEucSSva0IP79vUobCynkcUd6lrJD6b/hyj
 BeA+GxFOzthougbPj/gEh5uBZQQhluvSjZx+HKaFdKVCcvHPfhzmmCyK8fxoSMrSmWwZ
 lOaj8e6Ep3OXvqAEOxh9cAg51Xe+5jXwij6/EQpTf03Ur7WEgdpWRcPz2GAmscyXM5bT
 G9LrDhLVlZFm058FD0cuo9YJop0ucp0KUcQZUAYPaV70niiykMe4y0dmdbqPviybH8g6
 BHQg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVF6s4PUK3Rclpb1SFHHFSOIkvhcfzbJsWUcVOY3w8oYQcfJUBKtvxWDd/6h0jUHZ66nkHksN9zQvJprUZ/GE0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyZ+6EcyEGjXQ4y6WYtwHde+kq1wsBkqy9WatWD0Hm3vb3XLWl0
 YkyJpToAfJGBDGPNMhKFdfwWfqlFqSGuVX9oLSL988PiWWd3YfX3
X-Google-Smtp-Source: AGHT+IFy/XpPK5XHbCp3ZcMUxcmsqjAA3atraI3Q40V3KVXnSL7m4jzYB5iT5tJHNZvoUDUcDGUpZw==
X-Received: by 2002:a05:6a00:2e08:b0:71e:6f63:f076 with SMTP id
 d2e1a72fcca58-72062f4e5c7mr902990b3a.5.1729887436038; 
 Fri, 25 Oct 2024 13:17:16 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8200:dab8::a86])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72057a3c228sm1478335b3a.187.2024.10.25.13.17.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2024 13:17:15 -0700 (PDT)
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
Date: Fri, 25 Oct 2024 13:17:13 -0700
Message-ID: <20241025201713.286074-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 25 Oct 2024 21:01:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729887436; x=1730492236; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=1wc/QZe1hiCCq5FlwaTTiitAUZHpvboWKLlfnwXki6s=;
 b=ccjr2sY7krAdHTK0QomAlt5n5oxReP1UVxiI5ynw8ij74EBOA8/ss2+7fmMrBsr/IO
 rY7Jx/p/lDkCglznSb/uMqZW2M0pqib6Et+BMddur6PMx/RILM0UBw4KZ4wH8jF70gqA
 9EhOfzCSe4tLBD8rB2DCz8tYdEY/PJDPr9Zgk5Y3MS9IBqkRPl0ijUxejOCCcuWMNoAC
 pGiJkT8EHdRmknJUUVDtHvW9LWFLiQBwDDfyLgK7vb81L8pdEz/SfoZ8w9OFShNZ+YeP
 t89HENaTn6UEd3dv8TDDnYmXKd+P7giM563jwL5Aj6InafgFpAUE0JqeCTF3zvlNk09A
 m9xA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ccjr2sY7
Subject: [Intel-wired-lan] [PATCHv2 net-next iwl-next] net: intel: use
 ethtool string helpers
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
 v2: add iwl-next tag. use inline int in for loops.
 .../net/ethernet/intel/e1000/e1000_ethtool.c  | 10 ++---
 drivers/net/ethernet/intel/e1000e/ethtool.c   | 14 +++----
 .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 10 ++---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  6 +--
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 37 +++++++++++--------
 drivers/net/ethernet/intel/igb/igb_ethtool.c  | 35 ++++++++++--------
 drivers/net/ethernet/intel/igbvf/ethtool.c    | 10 ++---
 drivers/net/ethernet/intel/igc/igc_ethtool.c  | 36 +++++++++---------
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 32 ++++++++--------
 drivers/net/ethernet/intel/ixgbevf/ethtool.c  | 36 +++++++-----------
 10 files changed, 115 insertions(+), 111 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
index d06d29c6c037..33222fadb3b9 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -1839,18 +1839,18 @@ static void e1000_get_ethtool_stats(struct net_device *netdev,
 static void e1000_get_strings(struct net_device *netdev, u32 stringset,
 			      u8 *data)
 {
-	u8 *p = data;
+	const char *str;
 	int i;
 
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, e1000_gstrings_test, sizeof(e1000_gstrings_test));
+		for (i = 0; i < E1000_TEST_LEN; i++)
+			ethtool_puts(&data, e1000_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
 		for (i = 0; i < E1000_GLOBAL_STATS_LEN; i++) {
-			memcpy(p, e1000_gstrings_stats[i].stat_string,
-			       ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
+			str = e1000_gstrings_stats[i].stat_string;
+			ethtool_puts(&data, str);
 		}
 		/* BUG_ON(p - data != E1000_STATS_LEN * ETH_GSTRING_LEN); */
 		break;
diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 9364bc2b4eb1..ab590b69c14f 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -2075,23 +2075,23 @@ static void e1000_get_ethtool_stats(struct net_device *netdev,
 static void e1000_get_strings(struct net_device __always_unused *netdev,
 			      u32 stringset, u8 *data)
 {
-	u8 *p = data;
+	const char *str;
 	int i;
 
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, e1000_gstrings_test, sizeof(e1000_gstrings_test));
+		for (i = 0; i < E1000_TEST_LEN; i++)
+			ethtool_puts(&data, e1000_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
 		for (i = 0; i < E1000_GLOBAL_STATS_LEN; i++) {
-			memcpy(p, e1000_gstrings_stats[i].stat_string,
-			       ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
+			str = e1000_gstrings_stats[i].stat_string;
+			ethtool_puts(&data, str);
 		}
 		break;
 	case ETH_SS_PRIV_FLAGS:
-		memcpy(data, e1000e_priv_flags_strings,
-		       E1000E_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < E1000E_PRIV_FLAGS_STR_LEN; i++)
+			ethtool_puts(&data, e1000e_priv_flags_strings[i]);
 		break;
 	}
 }
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index 1bc5b6c0b897..fb03bb30154a 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -122,7 +122,7 @@ static const char fm10k_gstrings_test[][ETH_GSTRING_LEN] = {
 	"Mailbox test (on/offline)"
 };
 
-#define FM10K_TEST_LEN (sizeof(fm10k_gstrings_test) / ETH_GSTRING_LEN)
+#define FM10K_TEST_LEN ARRAY_SIZE(fm10k_gstrings_test)
 
 enum fm10k_self_test_types {
 	FM10K_TEST_MBX,
@@ -182,15 +182,15 @@ static void fm10k_get_strings(struct net_device *dev,
 {
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, fm10k_gstrings_test,
-		       FM10K_TEST_LEN * ETH_GSTRING_LEN);
+		for (int i = 0; i < FM10K_TEST_LEN; i++)
+			ethtool_puts(&data, fm10k_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
 		fm10k_get_stat_strings(dev, data);
 		break;
 	case ETH_SS_PRIV_FLAGS:
-		memcpy(data, fm10k_prv_flags,
-		       FM10K_PRV_FLAG_LEN * ETH_GSTRING_LEN);
+		for (int i = 0; i < FM10K_PRV_FLAG_LEN; i++)
+			ethtool_puts(&data, fm10k_prv_flags[i]);
 		break;
 	}
 }
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index f2506511bbff..90fc0c29fbd6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -426,7 +426,7 @@ static const char i40e_gstrings_test[][ETH_GSTRING_LEN] = {
 	"Link test   (on/offline)"
 };
 
-#define I40E_TEST_LEN (sizeof(i40e_gstrings_test) / ETH_GSTRING_LEN)
+#define I40E_TEST_LEN ARRAY_SIZE(i40e_gstrings_test)
 
 struct i40e_priv_flags {
 	char flag_string[ETH_GSTRING_LEN];
@@ -2531,8 +2531,8 @@ static void i40e_get_strings(struct net_device *netdev, u32 stringset,
 {
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, i40e_gstrings_test,
-		       I40E_TEST_LEN * ETH_GSTRING_LEN);
+		for (int i = 0; i < I40E_TEST_LEN; i++)
+			ethtool_puts(&data, i40e_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
 		i40e_get_stat_strings(netdev, data);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 2924ac61300d..62a152be8180 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -83,7 +83,7 @@ static const char ice_gstrings_test[][ETH_GSTRING_LEN] = {
 	"Link test   (on/offline)",
 };
 
-#define ICE_TEST_LEN (sizeof(ice_gstrings_test) / ETH_GSTRING_LEN)
+#define ICE_TEST_LEN ARRAY_SIZE(ice_gstrings_test)
 
 /* These PF_STATs might look like duplicates of some NETDEV_STATs,
  * but they aren't. This device is capable of supporting multiple
@@ -1481,48 +1481,53 @@ static void
 __ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data,
 		  struct ice_vsi *vsi)
 {
+	const char *str;
 	unsigned int i;
-	u8 *p = data;
 
 	switch (stringset) {
 	case ETH_SS_STATS:
-		for (i = 0; i < ICE_VSI_STATS_LEN; i++)
-			ethtool_puts(&p, ice_gstrings_vsi_stats[i].stat_string);
+		for (i = 0; i < ICE_VSI_STATS_LEN; i++) {
+			str = ice_gstrings_vsi_stats[i].stat_string;
+			ethtool_puts(&data, str);
+		}
 
 		if (ice_is_port_repr_netdev(netdev))
 			return;
 
 		ice_for_each_alloc_txq(vsi, i) {
-			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
-			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
+			ethtool_sprintf(&data, "tx_queue_%u_packets", i);
+			ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
 		}
 
 		ice_for_each_alloc_rxq(vsi, i) {
-			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
-			ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
+			ethtool_sprintf(&data, "rx_queue_%u_packets", i);
+			ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
 		}
 
 		if (vsi->type != ICE_VSI_PF)
 			return;
 
-		for (i = 0; i < ICE_PF_STATS_LEN; i++)
-			ethtool_puts(&p, ice_gstrings_pf_stats[i].stat_string);
+		for (i = 0; i < ICE_PF_STATS_LEN; i++) {
+			str = ice_gstrings_pf_stats[i].stat_string;
+			ethtool_puts(&data, str);
+		}
 
 		for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
-			ethtool_sprintf(&p, "tx_priority_%u_xon.nic", i);
-			ethtool_sprintf(&p, "tx_priority_%u_xoff.nic", i);
+			ethtool_sprintf(&data, "tx_priority_%u_xon.nic", i);
+			ethtool_sprintf(&data, "tx_priority_%u_xoff.nic", i);
 		}
 		for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
-			ethtool_sprintf(&p, "rx_priority_%u_xon.nic", i);
-			ethtool_sprintf(&p, "rx_priority_%u_xoff.nic", i);
+			ethtool_sprintf(&data, "rx_priority_%u_xon.nic", i);
+			ethtool_sprintf(&data, "rx_priority_%u_xoff.nic", i);
 		}
 		break;
 	case ETH_SS_TEST:
-		memcpy(data, ice_gstrings_test, ICE_TEST_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < ICE_TEST_LEN; i++)
+			ethtool_puts(&data, ice_gstrings_test[i]);
 		break;
 	case ETH_SS_PRIV_FLAGS:
 		for (i = 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++)
-			ethtool_puts(&p, ice_gstrings_priv_flags[i].name);
+			ethtool_puts(&data, ice_gstrings_priv_flags[i].name);
 		break;
 	default:
 		break;
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index ca6ccbc13954..c4a8712389af 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -123,7 +123,7 @@ static const char igb_gstrings_test[][ETH_GSTRING_LEN] = {
 	[TEST_LOOP] = "Loopback test  (offline)",
 	[TEST_LINK] = "Link test   (on/offline)"
 };
-#define IGB_TEST_LEN (sizeof(igb_gstrings_test) / ETH_GSTRING_LEN)
+#define IGB_TEST_LEN ARRAY_SIZE(igb_gstrings_test)
 
 static const char igb_priv_flags_strings[][ETH_GSTRING_LEN] = {
 #define IGB_PRIV_FLAGS_LEGACY_RX	BIT(0)
@@ -2347,35 +2347,38 @@ static void igb_get_ethtool_stats(struct net_device *netdev,
 static void igb_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 {
 	struct igb_adapter *adapter = netdev_priv(netdev);
-	u8 *p = data;
+	const char *str;
 	int i;
 
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, igb_gstrings_test, sizeof(igb_gstrings_test));
+		for (i = 0; i < IGB_TEST_LEN; i++)
+			ethtool_puts(&data, igb_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
 		for (i = 0; i < IGB_GLOBAL_STATS_LEN; i++)
-			ethtool_puts(&p, igb_gstrings_stats[i].stat_string);
-		for (i = 0; i < IGB_NETDEV_STATS_LEN; i++)
-			ethtool_puts(&p, igb_gstrings_net_stats[i].stat_string);
+			ethtool_puts(&data, igb_gstrings_stats[i].stat_string);
+		for (i = 0; i < IGB_NETDEV_STATS_LEN; i++) {
+			str = igb_gstrings_net_stats[i].stat_string;
+			ethtool_puts(&data, str);
+		}
 		for (i = 0; i < adapter->num_tx_queues; i++) {
-			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
-			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
-			ethtool_sprintf(&p, "tx_queue_%u_restart", i);
+			ethtool_sprintf(&data, "tx_queue_%u_packets", i);
+			ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
+			ethtool_sprintf(&data, "tx_queue_%u_restart", i);
 		}
 		for (i = 0; i < adapter->num_rx_queues; i++) {
-			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
-			ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
-			ethtool_sprintf(&p, "rx_queue_%u_drops", i);
-			ethtool_sprintf(&p, "rx_queue_%u_csum_err", i);
-			ethtool_sprintf(&p, "rx_queue_%u_alloc_failed", i);
+			ethtool_sprintf(&data, "rx_queue_%u_packets", i);
+			ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
+			ethtool_sprintf(&data, "rx_queue_%u_drops", i);
+			ethtool_sprintf(&data, "rx_queue_%u_csum_err", i);
+			ethtool_sprintf(&data, "rx_queue_%u_alloc_failed", i);
 		}
 		/* BUG_ON(p - data != IGB_STATS_LEN * ETH_GSTRING_LEN); */
 		break;
 	case ETH_SS_PRIV_FLAGS:
-		memcpy(data, igb_priv_flags_strings,
-		       IGB_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < IGB_PRIV_FLAGS_STR_LEN; i++)
+			ethtool_puts(&data, igb_priv_flags_strings[i]);
 		break;
 	}
 }
diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c b/drivers/net/ethernet/intel/igbvf/ethtool.c
index 83b97989a6bd..2da95ea66718 100644
--- a/drivers/net/ethernet/intel/igbvf/ethtool.c
+++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
@@ -412,18 +412,18 @@ static int igbvf_get_sset_count(struct net_device *dev, int stringset)
 static void igbvf_get_strings(struct net_device *netdev, u32 stringset,
 			      u8 *data)
 {
-	u8 *p = data;
+	const char *str;
 	int i;
 
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, *igbvf_gstrings_test, sizeof(igbvf_gstrings_test));
+		for (i = 0; i < IGBVF_TEST_LEN; i++)
+			ethtool_puts(&data, igbvf_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
 		for (i = 0; i < IGBVF_GLOBAL_STATS_LEN; i++) {
-			memcpy(p, igbvf_gstrings_stats[i].stat_string,
-			       ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
+			str = igbvf_gstrings_stats[i].stat_string;
+			ethtool_puts(&data, str);
 		}
 		break;
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 5b0c6f433767..7b118fb7097b 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -104,7 +104,7 @@ static const char igc_gstrings_test[][ETH_GSTRING_LEN] = {
 	[TEST_LINK] = "Link test   (on/offline)"
 };
 
-#define IGC_TEST_LEN (sizeof(igc_gstrings_test) / ETH_GSTRING_LEN)
+#define IGC_TEST_LEN ARRAY_SIZE(igc_gstrings_test)
 
 #define IGC_GLOBAL_STATS_LEN	\
 	(sizeof(igc_gstrings_stats) / sizeof(struct igc_stats))
@@ -763,36 +763,38 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
 				    u8 *data)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
-	u8 *p = data;
+	const char *str;
 	int i;
 
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, *igc_gstrings_test,
-		       IGC_TEST_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < IGC_TEST_LEN; i++)
+			ethtool_puts(&data, igc_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
 		for (i = 0; i < IGC_GLOBAL_STATS_LEN; i++)
-			ethtool_puts(&p, igc_gstrings_stats[i].stat_string);
-		for (i = 0; i < IGC_NETDEV_STATS_LEN; i++)
-			ethtool_puts(&p, igc_gstrings_net_stats[i].stat_string);
+			ethtool_puts(&data, igc_gstrings_stats[i].stat_string);
+		for (i = 0; i < IGC_NETDEV_STATS_LEN; i++) {
+			str = igc_gstrings_net_stats[i].stat_string;
+			ethtool_puts(&data, str);
+		}
 		for (i = 0; i < adapter->num_tx_queues; i++) {
-			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
-			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
-			ethtool_sprintf(&p, "tx_queue_%u_restart", i);
+			ethtool_sprintf(&data, "tx_queue_%u_packets", i);
+			ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
+			ethtool_sprintf(&data, "tx_queue_%u_restart", i);
 		}
 		for (i = 0; i < adapter->num_rx_queues; i++) {
-			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
-			ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
-			ethtool_sprintf(&p, "rx_queue_%u_drops", i);
-			ethtool_sprintf(&p, "rx_queue_%u_csum_err", i);
-			ethtool_sprintf(&p, "rx_queue_%u_alloc_failed", i);
+			ethtool_sprintf(&data, "rx_queue_%u_packets", i);
+			ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
+			ethtool_sprintf(&data, "rx_queue_%u_drops", i);
+			ethtool_sprintf(&data, "rx_queue_%u_csum_err", i);
+			ethtool_sprintf(&data, "rx_queue_%u_alloc_failed", i);
 		}
 		/* BUG_ON(p - data != IGC_STATS_LEN * ETH_GSTRING_LEN); */
 		break;
 	case ETH_SS_PRIV_FLAGS:
-		memcpy(data, igc_priv_flags_strings,
-		       IGC_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < IGC_PRIV_FLAGS_STR_LEN; i++)
+			ethtool_puts(&data, igc_priv_flags_strings[i]);
 		break;
 	}
 }
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 9482e0cca8b7..b3b2e38c2ae6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -129,7 +129,7 @@ static const char ixgbe_gstrings_test[][ETH_GSTRING_LEN] = {
 	"Interrupt test (offline)", "Loopback test  (offline)",
 	"Link test   (on/offline)"
 };
-#define IXGBE_TEST_LEN sizeof(ixgbe_gstrings_test) / ETH_GSTRING_LEN
+#define IXGBE_TEST_LEN ARRAY_SIZE(ixgbe_gstrings_test)
 
 static const char ixgbe_priv_flags_strings[][ETH_GSTRING_LEN] = {
 #define IXGBE_PRIV_FLAGS_LEGACY_RX	BIT(0)
@@ -1409,38 +1409,40 @@ static void ixgbe_get_ethtool_stats(struct net_device *netdev,
 static void ixgbe_get_strings(struct net_device *netdev, u32 stringset,
 			      u8 *data)
 {
+	const char *str;
 	unsigned int i;
-	u8 *p = data;
 
 	switch (stringset) {
 	case ETH_SS_TEST:
 		for (i = 0; i < IXGBE_TEST_LEN; i++)
-			ethtool_puts(&p, ixgbe_gstrings_test[i]);
+			ethtool_puts(&data, ixgbe_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
-		for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++)
-			ethtool_puts(&p, ixgbe_gstrings_stats[i].stat_string);
+		for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++) {
+			str = ixgbe_gstrings_stats[i].stat_string;
+			ethtool_puts(&data, str);
+		}
 		for (i = 0; i < netdev->num_tx_queues; i++) {
-			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
-			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
+			ethtool_sprintf(&data, "tx_queue_%u_packets", i);
+			ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
 		}
 		for (i = 0; i < IXGBE_NUM_RX_QUEUES; i++) {
-			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
-			ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
+			ethtool_sprintf(&data, "rx_queue_%u_packets", i);
+			ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
 		}
 		for (i = 0; i < IXGBE_MAX_PACKET_BUFFERS; i++) {
-			ethtool_sprintf(&p, "tx_pb_%u_pxon", i);
-			ethtool_sprintf(&p, "tx_pb_%u_pxoff", i);
+			ethtool_sprintf(&data, "tx_pb_%u_pxon", i);
+			ethtool_sprintf(&data, "tx_pb_%u_pxoff", i);
 		}
 		for (i = 0; i < IXGBE_MAX_PACKET_BUFFERS; i++) {
-			ethtool_sprintf(&p, "rx_pb_%u_pxon", i);
-			ethtool_sprintf(&p, "rx_pb_%u_pxoff", i);
+			ethtool_sprintf(&data, "rx_pb_%u_pxon", i);
+			ethtool_sprintf(&data, "rx_pb_%u_pxoff", i);
 		}
 		/* BUG_ON(p - data != IXGBE_STATS_LEN * ETH_GSTRING_LEN); */
 		break;
 	case ETH_SS_PRIV_FLAGS:
-		memcpy(data, ixgbe_priv_flags_strings,
-		       IXGBE_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < IXGBE_PRIV_FLAGS_STR_LEN; i++)
+			ethtool_puts(&data, ixgbe_priv_flags_strings[i]);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ixgbevf/ethtool.c b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
index 7ac53171b041..f63a9f683e20 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
@@ -70,7 +70,7 @@ static const char ixgbe_gstrings_test[][ETH_GSTRING_LEN] = {
 	"Link test   (on/offline)"
 };
 
-#define IXGBEVF_TEST_LEN (sizeof(ixgbe_gstrings_test) / ETH_GSTRING_LEN)
+#define IXGBEVF_TEST_LEN ARRAY_SIZE(ixgbe_gstrings_test)
 
 static const char ixgbevf_priv_flags_strings[][ETH_GSTRING_LEN] = {
 #define IXGBEVF_PRIV_FLAGS_LEGACY_RX	BIT(0)
@@ -504,43 +504,35 @@ static void ixgbevf_get_strings(struct net_device *netdev, u32 stringset,
 				u8 *data)
 {
 	struct ixgbevf_adapter *adapter = netdev_priv(netdev);
-	char *p = (char *)data;
+	const char *str;
 	int i;
 
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, *ixgbe_gstrings_test,
-		       IXGBEVF_TEST_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < IXGBEVF_TEST_LEN; i++)
+			ethtool_puts(&data, ixgbe_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
 		for (i = 0; i < IXGBEVF_GLOBAL_STATS_LEN; i++) {
-			memcpy(p, ixgbevf_gstrings_stats[i].stat_string,
-			       ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
+			str = ixgbevf_gstrings_stats[i].stat_string;
+			ethtool_puts(&data, str);
 		}
-
 		for (i = 0; i < adapter->num_tx_queues; i++) {
-			sprintf(p, "tx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "tx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_sprintf(&data, "tx_queue_%u_packets", i);
+			ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
 		}
 		for (i = 0; i < adapter->num_xdp_queues; i++) {
-			sprintf(p, "xdp_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "xdp_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_sprintf(&data, "xdp_queue_%u_packets", i);
+			ethtool_sprintf(&data, "xdp_queue_%u_bytes", i);
 		}
 		for (i = 0; i < adapter->num_rx_queues; i++) {
-			sprintf(p, "rx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_sprintf(&data, "rx_queue_%u_packets", i);
+			ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
 		}
 		break;
 	case ETH_SS_PRIV_FLAGS:
-		memcpy(data, ixgbevf_priv_flags_strings,
-		       IXGBEVF_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < IXGBEVF_PRIV_FLAGS_STR_LEN; i++)
+			ethtool_puts(&data, ixgbevf_priv_flags_strings[i]);
 		break;
 	}
 }
-- 
2.47.0

