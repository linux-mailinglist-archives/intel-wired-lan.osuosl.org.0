Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F255781893
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 11:47:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1AA560D4F;
	Sat, 19 Aug 2023 09:47:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1AA560D4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692438437;
	bh=yM7dI/XOciDYzoNdsY55Y+75AjvVkea8E6L2Pkrj7Jc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=T7EIkaEKYkqBT1J8TGVmBqY6x2VnB0DsmYlnltwimU3E5chYC7/PK4Vx2ds0Pjp95
	 cbTR1RxX0neqAkXM49HaAS4AXWClhOc4ewNJFlYJ6VROTIlqWejoriD1vOINpGYoQD
	 1SJjSk+8tf+p5sFLGJPUKqBJpkchhldQMZrx+9vzUIu1+L5PEBaZkjk18D7yAcgKju
	 sUtDoCQGMVyPi05ftAK4pH/3u7e8vmJ6U4gCMGoU+xNlukKXQLnhs0c88fB9AKGDN4
	 IJLgoOnIzP+z1NW4naduqKCwID+/TWDuh5W0XPQPhKRt/ewmD8nXYdGTWvQg2fFTyA
	 HmJphBqv7HvuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6keRhxoWeVhD; Sat, 19 Aug 2023 09:47:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 671FE607FE;
	Sat, 19 Aug 2023 09:47:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 671FE607FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A0BB1BF306
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:47:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DFA1B41DD5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:47:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFA1B41DD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EbBoJClNzmVq for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Aug 2023 09:47:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6190D41DD4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:47:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6190D41DD4
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="459641097"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="459641097"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2023 02:47:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="800719379"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="800719379"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by fmsmga008.fm.intel.com with ESMTP; 19 Aug 2023 02:47:07 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 19 Aug 2023 02:39:41 -0700
Message-Id: <20230819093941.15163-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692438430; x=1723974430;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lwYiVxcmKpuCofKbhZQM/f+edCMMthkqE79Fl1YTomc=;
 b=dScwb2fOCliLZl4g++Szs5ox775mu6FfHx0uOosiJxQhY0lYvQGqt4CM
 wGwMpKxcoIGvfF+AmNlcb2nomXfQn4l1JLon9y0nvxcQC20Pb1HWKch87
 j28zZUod+5aVfBt4ylC2uVLgvt8l0jQ+rNVMGvtVQXjrCYU51Zj8nJXc5
 +HKZ03mHziPJFo8e3ZjM4M0k1HtZj9W7OqDWN7ye3bqVKAVb3+6k5ZKxx
 7CImjkIyf4CuLugLZ8rsRfbc8SQraVufGsK3bKOCPLT3VQ1s4OcvZXw+x
 4ZAWPMYeLXVfquOGBL5kJHE6/E/UajcmKqxvxICx4BSg+qFcW2A/ogQ2+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dScwb2fO
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced speed
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The need to map Ethtool forced speeds to  Ethtool supported link modes is
common among drivers. To support this move the supported link modes maps
implementation from the qede driver. This is an efficient solution
introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
maps on module init") for qede driver.

ethtool_forced_speed_maps_init() should be called during driver init
with an array of struct ethtool_forced_speed_map to populate the
mapping. The macro ETHTOOL_FORCED_SPEED_MAP is a helper to initialized
the struct ethtool_forced_speed_map.

The qede driver was compile tested only.

Suggested-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
v2: move qede Ethtool speed to link modes mapping to be shared by other
drivers (Andrew)
---
 .../net/ethernet/qlogic/qede/qede_ethtool.c   | 92 +++----------------
 include/linux/ethtool.h                       | 74 +++++++++++++++
 net/ethtool/ioctl.c                           | 15 +++
 3 files changed, 100 insertions(+), 81 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
index 95820cf1cd6c..a01acd48f7eb 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
@@ -201,90 +201,20 @@ static const char qede_tests_str_arr[QEDE_ETHTOOL_TEST_MAX][ETH_GSTRING_LEN] = {
 
 /* Forced speed capabilities maps */
 
-struct qede_forced_speed_map {
-	u32		speed;
-	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
-
-	const u32	*cap_arr;
-	u32		arr_size;
-};
-
-#define QEDE_FORCED_SPEED_MAP(value)					\
-{									\
-	.speed		= SPEED_##value,				\
-	.cap_arr	= qede_forced_speed_##value,			\
-	.arr_size	= ARRAY_SIZE(qede_forced_speed_##value),	\
-}
-
-static const u32 qede_forced_speed_1000[] __initconst = {
-	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
-	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
-	ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
-};
-
-static const u32 qede_forced_speed_10000[] __initconst = {
-	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
-	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
-	ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
-	ETHTOOL_LINK_MODE_10000baseR_FEC_BIT,
-	ETHTOOL_LINK_MODE_10000baseCR_Full_BIT,
-	ETHTOOL_LINK_MODE_10000baseSR_Full_BIT,
-	ETHTOOL_LINK_MODE_10000baseLR_Full_BIT,
-	ETHTOOL_LINK_MODE_10000baseLRM_Full_BIT,
-};
-
-static const u32 qede_forced_speed_20000[] __initconst = {
-	ETHTOOL_LINK_MODE_20000baseKR2_Full_BIT,
-};
-
-static const u32 qede_forced_speed_25000[] __initconst = {
-	ETHTOOL_LINK_MODE_25000baseKR_Full_BIT,
-	ETHTOOL_LINK_MODE_25000baseCR_Full_BIT,
-	ETHTOOL_LINK_MODE_25000baseSR_Full_BIT,
-};
-
-static const u32 qede_forced_speed_40000[] __initconst = {
-	ETHTOOL_LINK_MODE_40000baseLR4_Full_BIT,
-	ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT,
-	ETHTOOL_LINK_MODE_40000baseCR4_Full_BIT,
-	ETHTOOL_LINK_MODE_40000baseSR4_Full_BIT,
-};
-
-static const u32 qede_forced_speed_50000[] __initconst = {
-	ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT,
-	ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT,
-	ETHTOOL_LINK_MODE_50000baseSR2_Full_BIT,
-};
-
-static const u32 qede_forced_speed_100000[] __initconst = {
-	ETHTOOL_LINK_MODE_100000baseKR4_Full_BIT,
-	ETHTOOL_LINK_MODE_100000baseSR4_Full_BIT,
-	ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT,
-	ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
-};
-
-static struct qede_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
-	QEDE_FORCED_SPEED_MAP(1000),
-	QEDE_FORCED_SPEED_MAP(10000),
-	QEDE_FORCED_SPEED_MAP(20000),
-	QEDE_FORCED_SPEED_MAP(25000),
-	QEDE_FORCED_SPEED_MAP(40000),
-	QEDE_FORCED_SPEED_MAP(50000),
-	QEDE_FORCED_SPEED_MAP(100000),
+struct ethtool_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
+	ETHTOOL_FORCED_SPEED_MAP(1000),
+	ETHTOOL_FORCED_SPEED_MAP(10000),
+	ETHTOOL_FORCED_SPEED_MAP(20000),
+	ETHTOOL_FORCED_SPEED_MAP(25000),
+	ETHTOOL_FORCED_SPEED_MAP(40000),
+	ETHTOOL_FORCED_SPEED_MAP(50000),
+	ETHTOOL_FORCED_SPEED_MAP(100000),
 };
 
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
@@ -564,8 +494,8 @@ static int qede_set_link_ksettings(struct net_device *dev,
 				   const struct ethtool_link_ksettings *cmd)
 {
 	const struct ethtool_link_settings *base = &cmd->base;
+	const struct ethtool_forced_speed_map *map;
 	struct qede_dev *edev = netdev_priv(dev);
-	const struct qede_forced_speed_map *map;
 	struct qed_link_output current_link;
 	struct qed_link_params params;
 	u32 i;
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 62b61527bcc4..245fd4a8d85b 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -1052,4 +1052,78 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
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
+#define ETHTOOL_FORCED_SPEED_MAP(value)					\
+{									\
+	.speed		= SPEED_##value,				\
+	.cap_arr	= ethtool_forced_speed_##value,			\
+	.arr_size	= ARRAY_SIZE(ethtool_forced_speed_##value),	\
+}
+
+static const u32 ethtool_forced_speed_1000[] __initconst = {
+	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
+	ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_10000[] __initconst = {
+	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseR_FEC_BIT,
+	ETHTOOL_LINK_MODE_10000baseCR_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseSR_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseLR_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseLRM_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_20000[] __initconst = {
+	ETHTOOL_LINK_MODE_20000baseKR2_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_25000[] __initconst = {
+	ETHTOOL_LINK_MODE_25000baseKR_Full_BIT,
+	ETHTOOL_LINK_MODE_25000baseCR_Full_BIT,
+	ETHTOOL_LINK_MODE_25000baseSR_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_40000[] __initconst = {
+	ETHTOOL_LINK_MODE_40000baseLR4_Full_BIT,
+	ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT,
+	ETHTOOL_LINK_MODE_40000baseCR4_Full_BIT,
+	ETHTOOL_LINK_MODE_40000baseSR4_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_50000[] __initconst = {
+	ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT,
+	ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT,
+	ETHTOOL_LINK_MODE_50000baseSR2_Full_BIT,
+};
+
+static const u32 ethtool_forced_speed_100000[] __initconst = {
+	ETHTOOL_LINK_MODE_100000baseKR4_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseSR4_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
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
+				    u32 size);
 #endif /* _LINUX_ETHTOOL_H */
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 0b0ce4f81c01..ac1fdd636bc1 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -3388,3 +3388,18 @@ void ethtool_rx_flow_rule_destroy(struct ethtool_rx_flow_rule *flow)
 	kfree(flow);
 }
 EXPORT_SYMBOL(ethtool_rx_flow_rule_destroy);
+
+void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
+				    u32 size)
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
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
