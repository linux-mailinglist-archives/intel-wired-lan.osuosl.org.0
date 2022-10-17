Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6206048C9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Oct 2022 16:09:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D4F983EB4;
	Wed, 19 Oct 2022 14:09:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D4F983EB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666188569;
	bh=ciLAHZTfYoac1bsTvDBBFUHAWd9CtCx1AUE8GJa3z7g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0grjwLJyWyEFA7ZSkTff2/tw0IpPO1VcbVZjjdeQaNFKsQQeHbKZdUzJ22hy92yCI
	 KGujePhZXn4tsrGv3QCkUDSy4rozf5bIW+Lkta6+HJlABxzVyYrmuJObCqyJzp6YgP
	 dYGKEhvEMwANu6USUUzX8CyZ5lNaSe4RHzB4i/r36UxLTRdI+d20kPjA7akaxWiLdr
	 OUtoDEVaN8+op2KikqS+Y3lQAxbb3tbIkOpwGDj3yy1roLs0XAqQ4xobdM6oxFMkBZ
	 7NRKBM6UbuYHC5CLRkzxonsCEtFRwT4jCwBHJnp1k0udmJVFNyz3Iz9X32Nzqt+A5y
	 9dqjjlCapxUsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yVqb4Iif3mvW; Wed, 19 Oct 2022 14:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A9578341E;
	Wed, 19 Oct 2022 14:09:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A9578341E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C0E931BF973
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 15:54:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A4E760E71
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 15:54:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A4E760E71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nHsmM8zd9EzH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Oct 2022 15:54:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 971E360BEC
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 971E360BEC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 15:54:53 +0000 (UTC)
Received: by mail-qt1-x82f.google.com with SMTP id r19so7956322qtx.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 08:54:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IQjlnfyYucRYRpxbJg34OLfoX7+qvFxZABW391cSBXg=;
 b=Od88mes5MDcj6UIxthZ+aJ5xqlTlUHwrqbxTJv1NtsT4oRL7pKxBjULc3xjxEjLhmR
 AYksLKBSaVULuABl8bOVbjgB3ebW93Du1Wytyrc0fdcwr/AELCeRjgjKAfQU8RwnXP1J
 aHOsEl1pbbdHRJakCslT4thC4uYIeiYz8ripOixqwRj2e1XiOKTQLIIT3nJEvfsc/MMK
 46B0YdcOzZf20x9M6cWadgYWIczQMrpg/VJx7tZOH9kzvijBFqBukDtyOJa6GWTWr4zn
 0oUzEFfjJzUeg2EwspMWE/x1CN+a/pZ3MBNQ0Vb3kYJwxM7ZVuPpmR3RFXurkqjtCfEi
 lDAA==
X-Gm-Message-State: ACrzQf3PIIrAxkPR8Y65SK3gJFnV/nQ1Jy7o/xRF8gKSg1ekHwUPwy0i
 rRLMA+Iynh+U+n7JOrZXgusUQPRZZjFrsb0t
X-Google-Smtp-Source: AMsMyM6eKdX2LSjA49pdjaRvU9pPWK/fF6WBTe5L1Lat9Z6I3FrKcbU2qN+fK1+eUU1PzgbWl7K1Gw==
X-Received: by 2002:a05:622a:211:b0:38f:562a:b495 with SMTP id
 b17-20020a05622a021100b0038f562ab495mr9413886qtx.669.1666022092223; 
 Mon, 17 Oct 2022 08:54:52 -0700 (PDT)
Received: from kobol.eng.veobot.io ([50.239.151.2])
 by smtp.gmail.com with ESMTPSA id
 f7-20020ac84707000000b003431446588fsm128678qtp.5.2022.10.17.08.54.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Oct 2022 08:54:51 -0700 (PDT)
From: Daniel Willenson <daniel@veobot.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Oct 2022 11:52:59 -0400
Message-Id: <20221017155259.32679-1-daniel@veobot.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 19 Oct 2022 14:09:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=veobot-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=IQjlnfyYucRYRpxbJg34OLfoX7+qvFxZABW391cSBXg=;
 b=U2vdsIvZ5Ku43y3oVIWVCdOOKPP3JpoXWGARrwWOJUw+k8iHfkDFPVrPw/wFUwR1Mq
 /hcpxOmuUi0+0vAdDZ5L2jZmnrdqc3QuKwNhCepyzwzmHaNZ62jZllPOMX9zGr+WQL65
 2V1AU8h2Gkk+ilVJIqeZwGhqN27ji+qsWtXpvwJXGF5Kc48gKYc1MeNbptIt0vs4zI56
 G4VCWJbVz8JK7gNsH4k4KZDvQbJM4N8K3Vs76xLyJrWTmTt0yvqKpCWJinocbyhJKxt2
 aJ8oH8B2pXtlpFnKiof4o5txV2GU7o2J+9mvbJYAoGG109lJkDfeD19halZsC+2d4hgQ
 8+TA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=veobot-com.20210112.gappssmtp.com
 header.i=@veobot-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=U2vdsIvZ
Subject: [Intel-wired-lan] [PATCH 1/1] ixgbe: change MAX_RXD/MAX_TXD based
 on adapter type
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
Cc: Daniel Willenson <daniel@veobot.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Set the length limit for the receive descriptor buffer and transmit
descriptor buffer based on the controller type. The values used are called
out in the controller datasheets as a 'Note:' in the RDLEN and TDLEN
register descriptions.

This allows the user to use ethtool to allocate larger descriptor buffers
in the case where data is received or transmitted too quickly for the
driver to keep up.

Signed-off-by: Daniel Willenson <daniel@veobot.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 10 ++++-
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 44 +++++++++++++++++--
 2 files changed, 48 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 5369a97ff5ec..bc68b8f2176d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -39,7 +39,10 @@
 /* TX/RX descriptor defines */
 #define IXGBE_DEFAULT_TXD		    512
 #define IXGBE_DEFAULT_TX_WORK		    256
-#define IXGBE_MAX_TXD			   4096
+#define IXGBE_MAX_TXD_82598		   4096
+#define IXGBE_MAX_TXD_82599		   8192
+#define IXGBE_MAX_TXD_X540		   8192
+#define IXGBE_MAX_TXD_X550		  32768
 #define IXGBE_MIN_TXD			     64
 
 #if (PAGE_SIZE < 8192)
@@ -47,7 +50,10 @@
 #else
 #define IXGBE_DEFAULT_RXD		    128
 #endif
-#define IXGBE_MAX_RXD			   4096
+#define IXGBE_MAX_RXD_82598		   4096
+#define IXGBE_MAX_RXD_82599		   8192
+#define IXGBE_MAX_RXD_X540		   8192
+#define IXGBE_MAX_RXD_X550		  32768
 #define IXGBE_MIN_RXD			     64
 
 /* flow control */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index e88e3dfac8c2..6f9a668d3667 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1117,6 +1117,42 @@ static void ixgbe_get_drvinfo(struct net_device *netdev,
 	drvinfo->n_priv_flags = IXGBE_PRIV_FLAGS_STR_LEN;
 }
 
+static u32 ixgbe_get_max_rxd(struct ixgbe_adapter *adapter)
+{
+	switch (adapter->hw.mac.type) {
+	case ixgbe_mac_82598EB:
+		return IXGBE_MAX_RXD_82598;
+	case ixgbe_mac_82599EB:
+		return IXGBE_MAX_RXD_82599;
+	case ixgbe_mac_X540:
+		return IXGBE_MAX_RXD_X540;
+	case ixgbe_mac_X550:
+	case ixgbe_mac_X550EM_x:
+	case ixgbe_mac_x550em_a:
+		return IXGBE_MAX_RXD_X550;
+	default:
+		return IXGBE_MAX_RXD_82598;
+	}
+}
+
+static u32 ixgbe_get_max_txd(struct ixgbe_adapter *adapter)
+{
+	switch (adapter->hw.mac.type) {
+	case ixgbe_mac_82598EB:
+		return IXGBE_MAX_TXD_82598;
+	case ixgbe_mac_82599EB:
+		return IXGBE_MAX_TXD_82599;
+	case ixgbe_mac_X540:
+		return IXGBE_MAX_TXD_X540;
+	case ixgbe_mac_X550:
+	case ixgbe_mac_X550EM_x:
+	case ixgbe_mac_x550em_a:
+		return IXGBE_MAX_TXD_X550;
+	default:
+		return IXGBE_MAX_TXD_82598;
+	}
+}
+
 static void ixgbe_get_ringparam(struct net_device *netdev,
 				struct ethtool_ringparam *ring,
 				struct kernel_ethtool_ringparam *kernel_ring,
@@ -1126,8 +1162,8 @@ static void ixgbe_get_ringparam(struct net_device *netdev,
 	struct ixgbe_ring *tx_ring = adapter->tx_ring[0];
 	struct ixgbe_ring *rx_ring = adapter->rx_ring[0];
 
-	ring->rx_max_pending = IXGBE_MAX_RXD;
-	ring->tx_max_pending = IXGBE_MAX_TXD;
+	ring->rx_max_pending = ixgbe_get_max_rxd(adapter);
+	ring->tx_max_pending = ixgbe_get_max_txd(adapter);
 	ring->rx_pending = rx_ring->count;
 	ring->tx_pending = tx_ring->count;
 }
@@ -1146,11 +1182,11 @@ static int ixgbe_set_ringparam(struct net_device *netdev,
 		return -EINVAL;
 
 	new_tx_count = clamp_t(u32, ring->tx_pending,
-			       IXGBE_MIN_TXD, IXGBE_MAX_TXD);
+			       IXGBE_MIN_TXD, ixgbe_get_max_txd(adapter));
 	new_tx_count = ALIGN(new_tx_count, IXGBE_REQ_TX_DESCRIPTOR_MULTIPLE);
 
 	new_rx_count = clamp_t(u32, ring->rx_pending,
-			       IXGBE_MIN_RXD, IXGBE_MAX_RXD);
+			       IXGBE_MIN_RXD, ixgbe_get_max_rxd(adapter));
 	new_rx_count = ALIGN(new_rx_count, IXGBE_REQ_RX_DESCRIPTOR_MULTIPLE);
 
 	if ((new_tx_count == adapter->tx_ring_count) &&
-- 
2.38.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
