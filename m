Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6602785F48
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 20:11:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64DF6612E6;
	Wed, 23 Aug 2023 18:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64DF6612E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692814272;
	bh=yItbixx/p0E00YZmAafOExNi+DkXbj6fpZjWS0kOl8c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b7LLt8x7UOUepHmiUmPoejqNttzTcvlWhR1bIdoW2Of9kjRH6900h/Kih0V3Zzli5
	 XULF7kNH4h0sJKXRm7cTs2a0wmvbOeZiPKVVRNinJhuej/1fxGjgNpZsQoEO8hvUjP
	 L/i6OpGTkmxzNLkcgthrrv/ipj0+iOmej3JRIEwjE8LELIcyaJ59w30mgexIpTh+2s
	 qJu1KdoHZsXLvLV64AzBBGEIGdYf3dXKgQwB8odQdZoNQUXv5u6beLXKEXSodO84eV
	 U+SuetOfxZ+8wh3m2klzGsqdjoukElQHDFU1JN9PMYDBeXNkrhUPZ/DdRyq16VE5aQ
	 4HYSICbkfmmkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n2RzutHNwUYD; Wed, 23 Aug 2023 18:11:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1677860B05;
	Wed, 23 Aug 2023 18:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1677860B05
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C014E1BF343
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 972B5417D6
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 972B5417D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XDDn7ZSiXKKD for <intel-wired-lan@osuosl.org>;
 Wed, 23 Aug 2023 18:11:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49EBA417D4
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49EBA417D4
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364412380"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364412380"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:11:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802233673"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802233673"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2023 11:11:01 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4A794333FB;
 Wed, 23 Aug 2023 19:11:00 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 23 Aug 2023 20:06:26 +0200
Message-Id: <20230823180633.2450617-3-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230823180633.2450617-1-pawel.chmielewski@intel.com>
References: <20230823180633.2450617-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692814264; x=1724350264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xgHxKuVI4Okae5GHDjDenD6GLYhZH16wJxvYW6XYQbM=;
 b=dgPfZQO/HsUeFk8MBrvgvHS2uzzgwp8WSdkVoToeE3y8fS1ZXaNp4rK3
 33wDXyQNzIZ0j3v7wfYqLvScpDJKgv3Gysu1mOebabZZ/NKqdjp2WtB0/
 5Bc/704qsS7Uh+Th+j7S4Lw1Is17kKN7D8LTDf6tQp+rmkGo9eKRjedvE
 IkQ+CTfRsMlcwzsad9mpkqSfV74skoPrfZZTfLg2WsCCnOGqiNMbQ+mJU
 mraOCtUTucKbdq1Sl3ltOD2u79GVPyt/SmAPmn4emoNBOPioCDPcwD55q
 SfAJH7vuPNcif9+Rs9K7m02YKilqdqcC7pRxOHUlOwbvi57UFxJg6thLU
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dgPfZQO/
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/8] ethtool: Add forced speed
 to supported link modes maps
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
Cc: netdev@vger.kernel.org, aelior@marvell.com, manishc@marvell.com,
 andrew@lunn.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>

The need to map Ethtool forced speeds to Ethtool supported link modes is
common among drivers. To support this, add a common structure for forced
speed maps and a function to init them.  This is solution was originally
introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
maps on module init") for qede driver.

ethtool_forced_speed_maps_init() should be called during driver init
with an array of struct ethtool_forced_speed_map to populate the mapping.

Definitions for maps themselves are left in the driver code, as the sets
of supported link modes may vary betwen the devices.

The qede driver was compile tested only.

Suggested-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 .../net/ethernet/qlogic/qede/qede_ethtool.c   | 22 +++----------------
 include/linux/ethtool.h                       | 20 +++++++++++++++++
 net/ethtool/ioctl.c                           | 15 +++++++++++++
 3 files changed, 38 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
index 95820cf1cd6c..85fd14b0c7c6 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
@@ -201,14 +201,6 @@ static const char qede_tests_str_arr[QEDE_ETHTOOL_TEST_MAX][ETH_GSTRING_LEN] = {
 
 /* Forced speed capabilities maps */
 
-struct qede_forced_speed_map {
-	u32		speed;
-	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
-
-	const u32	*cap_arr;
-	u32		arr_size;
-};
-
 #define QEDE_FORCED_SPEED_MAP(value)					\
 {									\
 	.speed		= SPEED_##value,				\
@@ -263,7 +255,7 @@ static const u32 qede_forced_speed_100000[] __initconst = {
 	ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
 };
 
-static struct qede_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
+static struct ethtool_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
 	QEDE_FORCED_SPEED_MAP(1000),
 	QEDE_FORCED_SPEED_MAP(10000),
 	QEDE_FORCED_SPEED_MAP(20000),
@@ -275,16 +267,8 @@ static struct qede_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
 
 void __init qede_forced_speed_maps_init(void)
 {
-	struct qede_forced_speed_map *map;
-	u32 i;
-
-	for (i = 0; i < ARRAY_SIZE(qede_forced_speed_maps); i++) {
-		map = qede_forced_speed_maps + i;
-
-		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
-		map->cap_arr = NULL;
-		map->arr_size = 0;
-	}
+	ethtool_forced_speed_maps_init(qede_forced_speed_maps,
+				       ARRAY_SIZE(qede_forced_speed_maps));
 }
 
 /* Ethtool callbacks */
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 62b61527bcc4..3d23a8d78c9b 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -1052,4 +1052,24 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
  * next string.
  */
 extern __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...);
+
+/* Link mode to forced speed capabilities maps */
+struct ethtool_forced_speed_map {
+	u32		speed;
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
+
+	const u32	*cap_arr;
+	u32		arr_size;
+};
+
+/**
+ * ethtool_forced_speed_maps_init
+ * @maps: Pointer to an array of Ethtool forced speed map
+ * @size: Array size
+ *
+ * Initialize an array of Ethtool forced speed map to Ethtool link modes. This
+ * should be called during driver module init.
+ */
+void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
+				   u32 size);
 #endif /* _LINUX_ETHTOOL_H */
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 0b0ce4f81c01..1ba437eff764 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -3388,3 +3388,18 @@ void ethtool_rx_flow_rule_destroy(struct ethtool_rx_flow_rule *flow)
 	kfree(flow);
 }
 EXPORT_SYMBOL(ethtool_rx_flow_rule_destroy);
+
+void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
+				   u32 size)
+{
+	u32 i;
+
+	for (i = 0; i < size; i++) {
+		struct ethtool_forced_speed_map *map = &maps[i];
+
+		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
+		map->cap_arr = NULL;
+		map->arr_size = 0;
+	}
+}
+EXPORT_SYMBOL(ethtool_forced_speed_maps_init);
\ No newline at end of file
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
