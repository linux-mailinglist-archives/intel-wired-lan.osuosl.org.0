Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E5F959ED1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:37:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A4C8409F4;
	Wed, 21 Aug 2024 13:37:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uDq4hkDap8eW; Wed, 21 Aug 2024 13:37:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 818A24011A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724247467;
	bh=YIVApmte78YcNSwTqLPde3ojAQToo1VbBGW5c4m/UTk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=npveHfkpc2lv/ERMmx1LcZhfSumPOFhThMce8y/q7YENahIy8phpmihINw6sJsHB9
	 4McXmN701PXn/9T5t1T9W6R6v5TcPbicRK/0Hn7AlRlrkHxpcTL8jJA4ihcB/XIzZM
	 osddf0+lQx3TprOOW8G/8SP13L9L3plqkHgbhHiACXcQyWwUKvtSF1MagezjMmRvx/
	 Aa/Pg8CojzB56aOgEzGrfdQwFaN1pDDgxZ7kqqDg1wZJgoMqmzx2VcmokVWg+RaNl+
	 oH08tWHriGAp4UqFVH71AwXcmyYau5gtAngH6SoUVmw+16VkYKeCQFsC3zg1DxBXIx
	 p/4sQ0AQs13bA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 818A24011A;
	Wed, 21 Aug 2024 13:37:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62F1D1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 50A9860747
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QfPon2M1r1cZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:37:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 544C96072D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 544C96072D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 544C96072D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:42 +0000 (UTC)
X-CSE-ConnectionGUID: QB0aYruiTNC2GvSrQvLlqg==
X-CSE-MsgGUID: JfCQEk4QSAG1+tPLvLCwSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="45131500"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="45131500"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:37:40 -0700
X-CSE-ConnectionGUID: 4q48cYtRQLOV/dce3Je44w==
X-CSE-MsgGUID: CLZM7ciGSEytKBwPPRCSZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61071294"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 21 Aug 2024 06:37:36 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BAB842878C;
 Wed, 21 Aug 2024 14:37:33 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Jiri Pirko <jiri@resnulli.us>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 21 Aug 2024 15:37:13 +0200
Message-Id: <20240821133714.61417-6-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
References: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724247462; x=1755783462;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mFPXl/q79lOeWvFuLlYuGgUCK3FfoNFy+V5ehUucfeE=;
 b=D48jXomtJn6NVb/6bq7+560SrFeEmMqycL3jVM/IbZF8pEcVpMPYyzmQ
 N7XN9pyI/eypmsboziE+6U0tpV6gX+U21mqTr4XtTp8NuumZnIjW9va01
 K5G3Sq81DUNCqiFEfPT7NQXHpll3vBjKNuuo//B9rQQVC7XT1SMmWzWe+
 WlpVJjI/ik8m9EbfnIskidfQSI1WF/5JWlkqR/mkzJ6n+2U455yyGo8mZ
 4NummhbDWhE/HEa64/PCYMjStElryt63UlMYk4qNLzpR5Y2r+1reUlIiO
 oLjwzoCZT6Z1FO2xVppNW+fwUsJx8x/4JE+x26xrSILgXycJEXoJ4Zoyt
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D48jXomt
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/6] ice: dump ethtool stats
 and skb by Tx hang devlink health reporter
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
Cc: lukas.bulwahn@gmail.com, willemb@google.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, dwaipayanray1@gmail.com,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Igor Bagnucki <igor.bagnucki@intel.com>, joe@perches.com,
 Eric Dumazet <edumazet@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Simon Horman <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 apw@canonical.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 akpm@linux-foundation.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
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
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |  2 +
 .../ethernet/intel/ice/ice_ethtool_common.h   | 19 ++++++++++
 .../intel/ice/devlink/devlink_health.c        | 37 +++++++++++++++++++
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
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_health.c b/drivers/net/ethernet/intel/ice/devlink/devlink_health.c
index 193dd4d00578..086042260235 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_health.c
@@ -3,6 +3,7 @@
 
 #include "devlink_health.h"
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
index 143c8b9e58fe..8c6bc94a0ed3 100644
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

