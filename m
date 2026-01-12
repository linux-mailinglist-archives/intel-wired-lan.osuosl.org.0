Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 821F0D13118
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 15:18:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A318A84EE7;
	Mon, 12 Jan 2026 14:18:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id urbehUs7SmeL; Mon, 12 Jan 2026 14:18:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E74D84ED6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768227529;
	bh=zhzpXOmLQYdINzF+dDnjz0Yqg0kbTeORYHIL8n6ypmE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=93fPrhjtTbOA8QIkjpp+5zLLYiFh0bb8EJjmjr9/0cJyA5CAbIxX/XmHGogmfSAYc
	 NmWMQRs981Ap6fXGDPhjRaK+zpuQ9nHOBRpF6QZ9B46ItR0+KfeF+qFgNP4vF2o0aA
	 TKm4swt1F7ABDkxqVgbuddfJ4qo6ukn7f13gbfj74X7/WoTxdGrJ+Dj2OJNBs8jsf0
	 c0Ia12hVVg6xX0o7SIC1VqXrKHhD8uTCbyPaRkvrqJzoBONcCf5I9TpOliajI0BlEP
	 o0jwiEnX6EL5DSMUUeB+TfXyXzwvO7EfcEunItMJU8KQtzdL36U48eg40cCOkJh6A1
	 0mSYe60LKQ8lA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E74D84ED6;
	Mon, 12 Jan 2026 14:18:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D5FF12E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F7CD6F4F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hKW4EnQG1-bx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 14:18:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8213A6F4F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8213A6F4F6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8213A6F4F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:46 +0000 (UTC)
X-CSE-ConnectionGUID: i6TDYQaLRHqa8OONM8cR3Q==
X-CSE-MsgGUID: 47h3WnZ2RZCTAzJVA1v1qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="73352296"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="73352296"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 06:18:46 -0800
X-CSE-ConnectionGUID: STld3o2fTBmfTl22aDzyBg==
X-CSE-MsgGUID: 3suDrD0wQ3OUzIoB5x8e/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="227355650"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 12 Jan 2026 06:18:45 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 12 Jan 2026 15:01:07 +0100
Message-Id: <20260112140108.1173835-7-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768227526; x=1799763526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dVvvYrj79xK+qLiOmCoLFSe9MUazobjKGxWIwIwTUms=;
 b=jkWp1lixI0p3ioEomfOthjmzbJ8mzjNu9ga1SbuW16Z2QCNta7Eluu4S
 xrMyCA1XInsqM/iZGoM/Us0DJsnfSgE9nWYPVijpALns57xPP41yof6d3
 mgziB0lfuC3TmFvyw/srNujXs042+3agcGqzSIWNN308fZdQ4OkVBckm0
 t42HhtcJOw0SIRYrgSjVHjjhLURbSVHPt/9PWn6lW3B/T7P7GZLwU87+n
 p3LG1BJMN4AGlUamkGIrYVJ+IYh9ur7LxS3J6xDIDPfC/n92MJSzOjjmG
 DS2w7ataWxHV6CrOjBgNrsmrOwmyzQBpPapBgQbHViAOpGG4aDqZRzfeK
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jkWp1lix
Subject: [Intel-wired-lan] [PATCH iwl-next v1 6/7] ixgbe: replace EEE enable
 flag with state enum
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

Change approach from using EEE enabled flag to using newly introduced
enum dedicated to reflect state of the EEE feature.

New enum is required to extend on/off state with new forced off state,
which is set when EEE must be temporarily disabled due to unsupported
conditions, but should be enabled back when possible.

Such scenario happens eg when link comes up with newly negotiated
speed which is not one of the EEE supported link speeds.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h         | 11 ++++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |  4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    |  4 ++--
 3 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 14d275270123..9f52da4ec711 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -324,6 +324,14 @@ enum ixgbe_ring_state_t {
 	__IXGBE_TX_DISABLED,
 };
 
+enum ixgbe_eee_state_t {
+	IXGBE_EEE_DISABLED,	/* EEE explicitly disabled by user */
+	IXGBE_EEE_ENABLED,	/* EEE enabled; for E610 it's default state */
+	IXGBE_EEE_FORCED_DOWN,	/* EEE disabled by link conditions, try to
+				 * restore when possible
+				 */
+};
+
 #define ring_uses_build_skb(ring) \
 	test_bit(__IXGBE_RX_BUILD_SKB_ENABLED, &(ring)->state)
 
@@ -671,7 +679,6 @@ struct ixgbe_adapter {
 #define IXGBE_FLAG2_FW_ASYNC_EVENT		BIT(12)
 #define IXGBE_FLAG2_VLAN_PROMISC		BIT(13)
 #define IXGBE_FLAG2_EEE_CAPABLE			BIT(14)
-#define IXGBE_FLAG2_EEE_ENABLED			BIT(15)
 #define IXGBE_FLAG2_RX_LEGACY			BIT(16)
 #define IXGBE_FLAG2_IPSEC_ENABLED		BIT(17)
 #define IXGBE_FLAG2_VF_IPSEC_ENABLED		BIT(18)
@@ -682,6 +689,8 @@ struct ixgbe_adapter {
 #define IXGBE_FLAG2_API_MISMATCH		BIT(23)
 #define IXGBE_FLAG2_FW_ROLLBACK			BIT(24)
 
+	enum ixgbe_eee_state_t eee_state;
+
 	/* Tx fast path data */
 	int num_tx_queues;
 	u16 tx_itr_setting;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 7a7a58fd065d..24781bbbcf46 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3656,11 +3656,11 @@ static int ixgbe_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 		return ret_val;
 
 	if (edata->eee_enabled) {
-		adapter->flags2 |= IXGBE_FLAG2_EEE_ENABLED;
+		adapter->eee_state = IXGBE_EEE_ENABLED;
 		hw->phy.eee_speeds_advertised =
 					   hw->phy.eee_speeds_supported;
 	} else {
-		adapter->flags2 &= ~IXGBE_FLAG2_EEE_ENABLED;
+		adapter->eee_state = IXGBE_EEE_DISABLED;
 		hw->phy.eee_speeds_advertised = 0;
 	}
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 692b095b5c16..b87d553413cd 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6763,11 +6763,11 @@ static void ixgbe_set_eee_capable(struct ixgbe_adapter *adapter)
 		adapter->flags2 |= IXGBE_FLAG2_EEE_CAPABLE;
 		if (!hw->phy.eee_speeds_advertised)
 			break;
-		adapter->flags2 |= IXGBE_FLAG2_EEE_ENABLED;
+		adapter->eee_state = IXGBE_EEE_ENABLED;
 		break;
 	default:
 		adapter->flags2 &= ~IXGBE_FLAG2_EEE_CAPABLE;
-		adapter->flags2 &= ~IXGBE_FLAG2_EEE_ENABLED;
+		adapter->eee_state = IXGBE_EEE_DISABLED;
 		break;
 	}
 }
-- 
2.31.1

