Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 466F5A7BAC4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 12:29:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94D36840C8;
	Fri,  4 Apr 2025 10:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vz9hVPcdb10w; Fri,  4 Apr 2025 10:29:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1055083FAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743762589;
	bh=HrOiBpePTt+WdiG1sgrHLmf3bGVtE6EciPsaaB1G1rw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GfAAYjRjEBlqReYe9GNiyJ0Q/kY/nbpOMFAoGLDD9jjh3ONayyaBDfkku5j42LhVw
	 e2YCboUFRUUZVHiNJYB9xLoG6nBvvDuPvtONMbJ1Y0owbN0SmDRRcrZOAvaMo4Z5CW
	 GQedbTWM7Hr+E3bBZgbNtUGWtFJV34RkCSGtARBbkVTAgJvG93OQ5kWB8TDDU3GL9z
	 uKefdTDfzMPoKm/anePF6cLS2csMPSMKnG2ibjMFhI+KAiO5jVXSERjPn3jBwAirmo
	 FJu22fKw7Z8aLfrZSnU55rIeE5lQDjig/VcqSHRZe/rG+mtW9mW/i7t/39+Bc0a3YU
	 dpNhuca8xErfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1055083FAA;
	Fri,  4 Apr 2025 10:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 197BC1F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13E2B40416
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z8e1ZGcQEHzI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 10:29:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6626440B8D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6626440B8D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6626440B8D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:45 +0000 (UTC)
X-CSE-ConnectionGUID: GQpSdjL7S+epzcRJA4rB8A==
X-CSE-MsgGUID: z7ZZ246cQAWGWHs60xg1fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="48992449"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="48992449"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 03:29:45 -0700
X-CSE-ConnectionGUID: rML+yVqVTgOJAsTaXa+o5w==
X-CSE-MsgGUID: j96FCP19TTmVImz1K2SSmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="164485308"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2025 03:29:43 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5B65D33EA8;
 Fri,  4 Apr 2025 11:29:42 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Stanislav Fomichev <sdf@fomichev.me>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Fri,  4 Apr 2025 12:23:20 +0200
Message-Id: <20250404102321.25846-6-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
References: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743762585; x=1775298585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wx+EMMZR5GdLlwsiIxp4lVeOb+0Ai/li5efqYtdtJp0=;
 b=HgU3D37S6/915BeQ6GnHFN8UG88YdzhKxnfImbI2ZMdSWW4wlKI3miLM
 lYpkhxiUdRCvgQ5RivPKa/4vP9zCNEUuaJAr33LTCxj8Du6OGkeVcvTGt
 lRms0eFYgCyIXd8r732J4etmAlSD7dAzdyBwth2euVMNhsxqALj8Z+M9O
 NQmh3oFZfV180CRKk3MCR2IU3yws4BzbsxEhQiI86s4DXYyzuPeMCrXC4
 dLw/VddbrZff073Z20I947NNcxiHAW+madt+CFY2NnDsmxqU7MIISgzQT
 yzvbC+W9Tzxb6a2eAprqsRJUyT1EMmM6zJf7KweUF03frlTJ7oshs0WD8
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HgU3D37S
Subject: [Intel-wired-lan] [PATCH iwl-net 5/6] iavf: sprinkle
 netdev_assert_locked() annotations
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

Lockdep annotations help in general, but here it is extra good, as next
commit will remove crit lock.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  6 ++++++
 drivers/net/ethernet/intel/iavf/iavf_main.c    | 10 ++++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 288bb5b2e72e..03d86fe80ad9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -4,6 +4,8 @@
 #include <linux/bitfield.h>
 #include <linux/uaccess.h>
 
+#include <net/netdev_lock.h>
+
 /* ethtool support for iavf */
 #include "iavf.h"
 
@@ -1259,6 +1261,8 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	int count = 50;
 	int err;
 
+	netdev_assert_locked(adapter->netdev);
+
 	if (!(adapter->flags & IAVF_FLAG_FDIR_ENABLED))
 		return -EOPNOTSUPP;
 
@@ -1440,6 +1444,8 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	u64 hash_flds;
 	u32 hdrs;
 
+	netdev_assert_locked(adapter->netdev);
+
 	if (!ADV_RSS_SUPPORT(adapter))
 		return -EOPNOTSUPP;
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 4b6963ffaba5..bf8c7baf2ab8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1292,6 +1292,8 @@ static void iavf_configure(struct iavf_adapter *adapter)
  **/
 static void iavf_up_complete(struct iavf_adapter *adapter)
 {
+	netdev_assert_locked(adapter->netdev);
+
 	iavf_change_state(adapter, __IAVF_RUNNING);
 	clear_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 
@@ -1417,6 +1419,8 @@ void iavf_down(struct iavf_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
 
+	netdev_assert_locked(netdev);
+
 	if (adapter->state <= __IAVF_DOWN_PENDING)
 		return;
 
@@ -3078,6 +3082,8 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	struct iavf_vlan_filter *fv, *fvtmp;
 	struct iavf_cloud_filter *cf, *cftmp;
 
+	netdev_assert_locked(adapter->netdev);
+
 	adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
 
 	/* We don't use netif_running() because it may be true prior to
@@ -5194,6 +5200,8 @@ iavf_shaper_set(struct net_shaper_binding *binding,
 	struct iavf_ring *tx_ring;
 	int ret = 0;
 
+	netdev_assert_locked(adapter->netdev);
+
 	mutex_lock(&adapter->crit_lock);
 	if (handle->id >= adapter->num_active_queues)
 		goto unlock;
@@ -5222,6 +5230,8 @@ static int iavf_shaper_del(struct net_shaper_binding *binding,
 	struct iavf_adapter *adapter = netdev_priv(binding->netdev);
 	struct iavf_ring *tx_ring;
 
+	netdev_assert_locked(adapter->netdev);
+
 	mutex_lock(&adapter->crit_lock);
 	if (handle->id >= adapter->num_active_queues)
 		goto unlock;
-- 
2.39.3

