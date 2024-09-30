Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0916598A57F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 15:39:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF9C1404D1;
	Mon, 30 Sep 2024 13:39:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5vmtVTK-phlK; Mon, 30 Sep 2024 13:39:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B6C64056B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727703588;
	bh=YS1HcTE2kEujNghEqOcbbURmvAvsde0cWVMRNQIgdvY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1f5j/lMnjjAk3VOKIVE25XxwDDudfoOQ8xMzmbB1xzLt+G0KeK6XXXUv0Pa2Dt5sj
	 iQchvL5KgdFweRr26JTgLwSuzgva385np9dFbcFUXnh/57xpJ9gBvkeVC3uq5au3g5
	 CFsjlq2j+M+Ebwb8fVXfRkDgMlAeMLBL94R0hZO5Tm9VEtS04Rz2XB6qw261mixEpZ
	 134OkHKC7y5secKqYbW2KzIM92dbgHaJmBj2Ed2+Qt0nZrEu7aQZbuF2Jrsgnvbhh2
	 2kJPrMGKy4RPTMszUh6ukg+qHC/QsOiFlj6S3bsGpGUQ1pPn32Hdb+5Mk9KVnvQJxr
	 FfZv3n6mXFU1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B6C64056B;
	Mon, 30 Sep 2024 13:39:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13B941BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C2F640238
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wW2GymrQSkE5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 13:39:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B6875401B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6875401B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6875401B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:44 +0000 (UTC)
X-CSE-ConnectionGUID: ohY6+SzxRXSoT4Aj9qbiyw==
X-CSE-MsgGUID: Sjt3B+kLTumMUGwWfyxYqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="26601086"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26601086"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 06:39:44 -0700
X-CSE-ConnectionGUID: +/md04YMS0yXxV6TI8bqLg==
X-CSE-MsgGUID: 2kqFHJ+QTgW2RrqYeHubAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="104109712"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 30 Sep 2024 06:39:39 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 03D3028169;
 Mon, 30 Sep 2024 14:39:37 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 30 Sep 2024 15:37:24 +0200
Message-Id: <20240930133724.610512-7-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240930133724.610512-1-przemyslaw.kitszel@intel.com>
References: <20240930133724.610512-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727703585; x=1759239585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JCSvlWIGIEw74emQ4ZNe7qlzrCnW+h6y0sYrUv7Lo4A=;
 b=I1cQI/Sphdlffa0sfInVlyospm1sXAQqt9vqQ5L154Oi8uuLR8q6Fiyt
 V2Qn9S1x2RbgwmLnRj/daDqR0AJj06DsVjP8aoK9HNMhKEDXnNxV/bmDH
 Xa/vX+wEGpvIXOEE6/CuI1ynn2zDOLhOdjFgkQpqa1vOW7gcBa0remvny
 Cjes6rrIhAe9bGOqbGA0HKStbbq7MI8yM3pRHs2pBJBJmtgxUre9/Z7bP
 Nu+O4Oq6i9PnwtAJub7wVbcpqhi388mQelKSHtF7KSjnTzoMUfRSgZXWY
 1VKoIdkR6fD6eV0sozP4G8Cn0WIglHTaWwuvlbV4jKu/dkx3O3FW8Q+te
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I1cQI/Sp
Subject: [Intel-wired-lan] [PATCH 6/7] ice: dump ethtool stats and skb by Tx
 hang devlink health reporter
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Joe Perches <joe@perches.com>, Jakub Kicinski <kuba@kernel.org>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Andy Whitcroft <apw@canonical.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Print the ethtool stats and skb diagnostic information as part of Tx hang
devlink health dump.

Move the declarations of ethtool functions that devlink health uses out
to a new file: ice_ethtool_common.h

To utilize our existing ethtool code in this context, convert it to
non-static.

Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |  2 +
 .../ethernet/intel/ice/ice_ethtool_common.h   | 19 ++++++++++
 .../net/ethernet/intel/ice/devlink/health.c   | 37 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 10 ++---
 4 files changed, 63 insertions(+), 5 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ethtool_common.h

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
index 9acccae38625..fd021d2813f8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.h
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
@@ -4,6 +4,8 @@
 #ifndef _ICE_ETHTOOL_H_
 #define _ICE_ETHTOOL_H_
 
+#include "ice_ethtool_common.h"
+
 struct ice_phy_type_to_ethtool {
 	u64 aq_link_speed;
 	u8 link_mode;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_common.h b/drivers/net/ethernet/intel/ice/ice_ethtool_common.h
new file mode 100644
index 000000000000..0c772056f006
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_common.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2024, Intel Corporation. */
+
+#ifndef _ICE_ETHTOOL_COMMON_H_
+#define _ICE_ETHTOOL_COMMON_H_
+
+/**
+ * DOC: ice_ethtool_common.h
+ *
+ * This header is for ethtool related code that is reused in other places.
+ */
+
+void ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data);
+int ice_get_sset_count(struct net_device *netdev, int sset);
+void ice_get_ethtool_stats(struct net_device *netdev,
+			   struct ethtool_stats __always_unused *stats,
+			   u64 *data);
+
+#endif /* _ICE_ETHTOOL_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
index b8c5a1c372dc..1626c5171152 100644
--- a/drivers/net/ethernet/intel/ice/devlink/health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/health.c
@@ -3,6 +3,7 @@
 
 #include "health.h"
 #include "ice.h"
+#include "ice_ethtool_common.h"
 
 #define ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, obj, name) \
 	devlink_fmsg_put(fmsg, #name, (obj)->name)
@@ -26,6 +27,36 @@ static void ice_devlink_health_report(struct devlink_health_reporter *reporter,
 	devlink_health_report(reporter, msg, priv_ctx);
 }
 
+static void ice_dump_ethtool_stats_to_fmsg(struct devlink_fmsg *fmsg,
+					   struct net_device *netdev)
+{
+	const u32 string_set = ETH_SS_STATS;
+	u64 *stats;
+	u8 *names;
+	int scnt;
+
+	scnt = ice_get_sset_count(netdev, string_set);
+	devlink_fmsg_put(fmsg, "stats-cnt", (u32)scnt);
+	if (scnt <= 0)
+		return;
+
+	names = kcalloc(scnt, ETH_GSTRING_LEN, GFP_KERNEL);
+	stats = kcalloc(scnt, sizeof(*stats), GFP_KERNEL);
+	if (!names || !stats)
+		goto out;
+
+	ice_get_strings(netdev, string_set, names);
+	ice_get_ethtool_stats(netdev, NULL, stats);
+
+	devlink_fmsg_obj_nest_start(fmsg);
+	for (int i = 0; i < scnt; ++i)
+		devlink_fmsg_put(fmsg, &names[i * ETH_GSTRING_LEN], stats[i]);
+	devlink_fmsg_obj_nest_end(fmsg);
+out:
+	kfree(names);
+	kfree(stats);
+}
+
 /**
  * ice_fmsg_put_ptr - put hex value of pointer into fmsg
  *
@@ -57,6 +88,9 @@ static int ice_tx_hang_reporter_dump(struct devlink_health_reporter *reporter,
 				     struct netlink_ext_ack *extack)
 {
 	struct ice_tx_hang_event *event = priv_ctx;
+	struct sk_buff *skb;
+
+	skb = event->tx_ring->tx_buf->skb;
 
 	if (!event)
 		return 0;
@@ -71,8 +105,11 @@ static int ice_tx_hang_reporter_dump(struct devlink_health_reporter *reporter,
 	devlink_fmsg_put(fmsg, "irq-mapping", event->tx_ring->q_vector->name);
 	ice_fmsg_put_ptr(fmsg, "desc-ptr", event->tx_ring->desc);
 	ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)(long)event->tx_ring->dma);
+	ice_fmsg_put_ptr(fmsg, "skb-ptr", skb);
 	devlink_fmsg_binary_pair_put(fmsg, "desc", event->tx_ring->desc,
 				     event->tx_ring->count * sizeof(struct ice_tx_desc));
+	devlink_fmsg_dump_skb(fmsg, skb);
+	ice_dump_ethtool_stats_to_fmsg(fmsg, event->tx_ring->vsi->netdev);
 	devlink_fmsg_obj_nest_end(fmsg);
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 2924ac61300d..85a3b2326e7b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1529,7 +1529,7 @@ __ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data,
 	}
 }
 
-static void ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
+void ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 
@@ -1909,7 +1909,7 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 	return ret;
 }
 
-static int ice_get_sset_count(struct net_device *netdev, int sset)
+int ice_get_sset_count(struct net_device *netdev, int sset)
 {
 	switch (sset) {
 	case ETH_SS_STATS:
@@ -2012,9 +2012,9 @@ __ice_get_ethtool_stats(struct net_device *netdev,
 	}
 }
 
-static void
-ice_get_ethtool_stats(struct net_device *netdev,
-		      struct ethtool_stats __always_unused *stats, u64 *data)
+void ice_get_ethtool_stats(struct net_device *netdev,
+			   struct ethtool_stats __always_unused *stats,
+			   u64 *data)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 
-- 
2.39.3

