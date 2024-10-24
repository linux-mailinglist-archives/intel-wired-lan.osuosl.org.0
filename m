Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 728B19B112A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 23:02:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B06A981FD2;
	Fri, 25 Oct 2024 21:02:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t7dpO_BhriSI; Fri, 25 Oct 2024 21:02:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07A8881F00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729890121;
	bh=n0M5qg+opbMnajsYEiFgs7dkzouioWHNOMwmoWUb8C8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=v+FhWzXvVA3pAMezSgAwhYa43Y6+LemexZbrVcZOx8kFp5tLc771nKHYPTkrACg3N
	 bSJ8yZZEKcDxSLSCnk8MdZOpCpom3iByE2/1nTJ0eLGMl+NzCNoWthJeS9vRi278RK
	 785gMD1dCEZAY1axwGDuwPpYJ8lwMSPAMqaytpwBzbBL9jNDH4jkt1KcpPM494WN9p
	 M/S6ZmwVwNPvXuIdDeiNZ3XqZFVwYLZUCLk8224sSa2D+6JIbptxQgDeIjegSt0+1s
	 WAW53p5oDQQirjdtVf6pPkPOD1OM7R+Q2Hmus+q2Za6ZeLKNC55wI0UiPL5OPQuo5z
	 QlqKufic3cTRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07A8881F00;
	Fri, 25 Oct 2024 21:02:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 327234960
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 19:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 13C8E40B87
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 19:56:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WaowprSkcwOy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 19:56:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52f; helo=mail-pg1-x52f.google.com;
 envelope-from=rosenp@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 433E640B9F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 433E640B9F
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 433E640B9F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 19:56:50 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id
 41be03b00d2f7-7db238d07b3so877726a12.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:56:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729799809; x=1730404609;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=n0M5qg+opbMnajsYEiFgs7dkzouioWHNOMwmoWUb8C8=;
 b=YE93afzRSm0rZbLMwy8q2vUsepKJ9Gv+M/bSxFAtNZCozTEzlzU0fUu/evnYiB905L
 7+XCEMAjR8AnrRw9uOdovSUTRtb1uPdlQgUgS4+v+HjW005uMA/w5Iyd/KuRikYC+3lD
 L4BzTKJFp11bzAL1LgpB89N87so1LN+tbkDPoB0PpexOQZI8CXFse2ECWwoJjT6NjpYF
 0FolOIupsPooppU6SpgPM1qUeiRYXzrHfZYD2MWl+i7ZoElJRg7AjGErZuu5YCaGZFAT
 FRrANXJgvqghzDq/5/9Rx85vm0CZQpHaZz+XW6BUFgbvZjW3E06C6qy578rGrtrbeZCp
 jCZg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWujNgYuH1jnqtOdTx7Vwgm6nHrDJy+Hp/jmwpiM7BtRKcBrVSL26eGXwkV2O/LA4aDHZcJRWPrxRE+YjstOgE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyL+5tWlfdGtEHZomfTtoOjEDp8a+r5HUREHvF+cbq+6Jj88/tt
 8ojqCCqtaWp0sw8L/EEggAc1jUdZXAmFnjJoA4Ys9Fe710Ut8VsS
X-Google-Smtp-Source: AGHT+IHdZCwLUfzW3pSUTEPCLeUJMGfDJgXFJED02bnL4dznZxTGoq56+zS5WaDb1pVoSATrJgcwpg==
X-Received: by 2002:a05:6a20:b418:b0:1d2:e888:fcd1 with SMTP id
 adf61e73a8af0-1d989cc9341mr3458237637.33.1729799809359; 
 Thu, 24 Oct 2024 12:56:49 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8200:dab8::a86])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71ec13ea1f3sm8601300b3a.147.2024.10.24.12.56.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2024 12:56:49 -0700 (PDT)
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
Date: Thu, 24 Oct 2024 12:56:47 -0700
Message-ID: <20241024195647.176614-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 25 Oct 2024 21:01:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729799809; x=1730404609; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=n0M5qg+opbMnajsYEiFgs7dkzouioWHNOMwmoWUb8C8=;
 b=g+iBpUzozLF44LxoWbKe1JXlOBWi39Ip3wrLrlbebtAvxGtC+CPUWm9A4yE+oWZROE
 CU33iqHrXp7NEoABtJpy0mnGHhi11gZr8FSkgsVNpwkYxUHpMuavncJg0YFFmkhj7ODD
 sYwJtnZNtd2NG6JM80J4nx/lV/HrpNxewFzEFIAwiYdS7Grp7SsVAZUgAjk/akWz4cdB
 X5WCmhTGOqSSGV0zIRfOpyyl/2nSiEFTU3Nk1PYEbYlMDd7H/drFz5sKJsVkMH8spqH1
 sHhEMv4uXO9rANXS4sPJ1pvDYVqGji3KZcoHVickjIrN0nZpUMSK6zRAxW8BBPxAKwXK
 tcWw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=g+iBpUzo
Subject: [Intel-wired-lan] [PATCH net-next] net: intel: use ethtool string
 helpers
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
 .../net/ethernet/intel/e1000/e1000_ethtool.c  | 10 ++---
 drivers/net/ethernet/intel/e1000e/ethtool.c   | 14 +++----
 .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 12 +++---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  8 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 37 +++++++++++--------
 drivers/net/ethernet/intel/igb/igb_ethtool.c  | 35 ++++++++++--------
 drivers/net/ethernet/intel/igbvf/ethtool.c    | 10 ++---
 drivers/net/ethernet/intel/igc/igc_ethtool.c  | 36 +++++++++---------
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 32 ++++++++--------
 drivers/net/ethernet/intel/ixgbevf/ethtool.c  | 36 +++++++-----------
 10 files changed, 119 insertions(+), 111 deletions(-)

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
index 1bc5b6c0b897..b86fb1be78df 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -122,7 +122,7 @@ static const char fm10k_gstrings_test[][ETH_GSTRING_LEN] = {
 	"Mailbox test (on/offline)"
 };
 
-#define FM10K_TEST_LEN (sizeof(fm10k_gstrings_test) / ETH_GSTRING_LEN)
+#define FM10K_TEST_LEN ARRAY_SIZE(fm10k_gstrings_test)
 
 enum fm10k_self_test_types {
 	FM10K_TEST_MBX,
@@ -180,17 +180,19 @@ static void fm10k_get_stat_strings(struct net_device *dev, u8 *data)
 static void fm10k_get_strings(struct net_device *dev,
 			      u32 stringset, u8 *data)
 {
+	int i;
+
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, fm10k_gstrings_test,
-		       FM10K_TEST_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < FM10K_TEST_LEN; i++)
+			ethtool_puts(&data, fm10k_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
 		fm10k_get_stat_strings(dev, data);
 		break;
 	case ETH_SS_PRIV_FLAGS:
-		memcpy(data, fm10k_prv_flags,
-		       FM10K_PRV_FLAG_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < FM10K_PRV_FLAG_LEN; i++)
+			ethtool_puts(&data, fm10k_prv_flags[i]);
 		break;
 	}
 }
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index f2506511bbff..ee63ef7ae393 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -426,7 +426,7 @@ static const char i40e_gstrings_test[][ETH_GSTRING_LEN] = {
 	"Link test   (on/offline)"
 };
 
-#define I40E_TEST_LEN (sizeof(i40e_gstrings_test) / ETH_GSTRING_LEN)
+#define I40E_TEST_LEN ARRAY_SIZE(i40e_gstrings_test)
 
 struct i40e_priv_flags {
 	char flag_string[ETH_GSTRING_LEN];
@@ -2529,10 +2529,12 @@ static void i40e_get_priv_flag_strings(struct net_device *netdev, u8 *data)
 static void i40e_get_strings(struct net_device *netdev, u32 stringset,
 			     u8 *data)
 {
+	int i;
+
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, i40e_gstrings_test,
-		       I40E_TEST_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < I40E_TEST_LEN; i++)
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

