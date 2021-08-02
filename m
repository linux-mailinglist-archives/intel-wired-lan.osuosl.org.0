Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEB03DDBEF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Aug 2021 17:08:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 64168403D9;
	Mon,  2 Aug 2021 15:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1X7hCi4owQ15; Mon,  2 Aug 2021 15:08:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 143B940015;
	Mon,  2 Aug 2021 15:08:29 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C2C51BF35C
 for <intel-wired-lan@osuosl.org>; Mon,  2 Aug 2021 15:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A70D403D3
 for <intel-wired-lan@osuosl.org>; Mon,  2 Aug 2021 15:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j2lhMeiuamtV for <intel-wired-lan@osuosl.org>;
 Mon,  2 Aug 2021 15:07:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A0EB40015
 for <intel-wired-lan@osuosl.org>; Mon,  2 Aug 2021 15:07:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="213505742"
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="213505742"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 08:07:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="510254355"
Received: from inlubt0152.iind.intel.com ([10.67.198.206])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Aug 2021 08:07:16 -0700
From: aravindhan.gunasekaran@intel.com
To: intel-wired-lan@osuosl.org
Date: Mon,  2 Aug 2021 20:37:10 +0530
Message-Id: <1627916831-10144-3-git-send-email-aravindhan.gunasekaran@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1627916831-10144-1-git-send-email-aravindhan.gunasekaran@intel.com>
References: <1627916831-10144-1-git-send-email-aravindhan.gunasekaran@intel.com>
X-Mailman-Approved-At: Mon, 02 Aug 2021 15:08:17 +0000
Subject: [Intel-wired-lan] [PATCH next-queue v1 2/3] igc: Simplify TSN flags
 handling
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
Cc: velmurugan.chenniyappan@intel.com, aravindhan.gunasekaran@intel.com,
 mallikarjuna.chilakala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Separates the procedure done during reset from applying a
configuration, knowing when the code is executing allow us to separate
the better what changes the hardware state from what changes only the
driver state.

Introduces a flag for bookkeeping the driver state of TSN features.
When Qav and frame-preemption is also implemented this flag makes it easier
to keep track on whether a TSN feature driver state is enabled or not
though controller state changes, say, during a reset.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  2 +
 drivers/net/ethernet/intel/igc/igc_main.c |  2 +-
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 65 ++++++++++++++++++-------------
 drivers/net/ethernet/intel/igc/igc_tsn.h  |  1 +
 4 files changed, 43 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index a0ecfe5..58488ba 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -290,6 +290,8 @@ extern char igc_driver_name[];
 #define IGC_FLAG_RX_LEGACY		BIT(16)
 #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
 
+#define IGC_FLAG_TSN_ANY_ENABLED	IGC_FLAG_TSN_QBV_ENABLED
+
 #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
 #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5184885..bd7066c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -118,7 +118,7 @@ void igc_reset(struct igc_adapter *adapter)
 	igc_ptp_reset(adapter);
 
 	/* Re-enable TSN offloading, where applicable. */
-	igc_tsn_offload_apply(adapter);
+	igc_tsn_reset(adapter);
 
 	igc_get_phy_info(hw);
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 5bcdf75..2935d57 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -18,8 +18,21 @@ static bool is_any_launchtime(struct igc_adapter *adapter)
 	return false;
 }
 
+static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
+{
+	unsigned int new_flags = adapter->flags & ~IGC_FLAG_TSN_ANY_ENABLED;
+
+	if (adapter->base_time)
+		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
+
+	if (is_any_launchtime(adapter))
+		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
+
+	return new_flags;
+}
+
 /* Returns the TSN specific registers to their default values after
- * TSN offloading is disabled.
+ * the adapter is reset.
  */
 static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 {
@@ -27,11 +40,6 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	u32 tqavctrl;
 	int i;
 
-	if (!(adapter->flags & IGC_FLAG_TSN_QBV_ENABLED))
-		return 0;
-
-	adapter->cycle_time = 0;
-
 	wr32(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_DEFAULT);
 
@@ -62,9 +70,6 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	ktime_t base_time, systim;
 	int i;
 
-	if (adapter->flags & IGC_FLAG_TSN_QBV_ENABLED)
-		return 0;
-
 	cycle = adapter->cycle_time;
 	base_time = adapter->base_time;
 
@@ -119,33 +124,41 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	wr32(IGC_BASET_H, baset_h);
 	wr32(IGC_BASET_L, baset_l);
 
-	adapter->flags |= IGC_FLAG_TSN_QBV_ENABLED;
-
 	return 0;
 }
 
-int igc_tsn_offload_apply(struct igc_adapter *adapter)
+int igc_tsn_reset(struct igc_adapter *adapter)
 {
-	bool is_any_enabled = adapter->base_time || is_any_launchtime(adapter);
+	unsigned int new_flags;
+	int err = 0;
 
-	if (!(adapter->flags & IGC_FLAG_TSN_QBV_ENABLED) && !is_any_enabled)
-		return 0;
+	new_flags = igc_tsn_new_flags(adapter);
+
+	if (!(new_flags & IGC_FLAG_TSN_ANY_ENABLED))
+		return igc_tsn_disable_offload(adapter);
+
+	err = igc_tsn_enable_offload(adapter);
+	if (err < 0)
+		return err;
 
-	if (!is_any_enabled) {
-		int err = igc_tsn_disable_offload(adapter);
+	adapter->flags = new_flags;
 
-		if (err < 0)
-			return err;
+	return err;
+}
 
-		/* The BASET registers aren't cleared when writing
-		 * into them, force a reset if the interface is
-		 * running.
-		 */
-		if (netif_running(adapter->netdev))
-			schedule_work(&adapter->reset_task);
+int igc_tsn_offload_apply(struct igc_adapter *adapter)
+{
+	int err;
 
+	if (netif_running(adapter->netdev)) {
+		schedule_work(&adapter->reset_task);
 		return 0;
 	}
 
-	return igc_tsn_enable_offload(adapter);
+	err = igc_tsn_enable_offload(adapter);
+	if (err < 0)
+		return err;
+
+	adapter->flags = igc_tsn_new_flags(adapter);
+	return 0;
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index f76bc86..1512307 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -5,5 +5,6 @@
 #define _IGC_TSN_H_
 
 int igc_tsn_offload_apply(struct igc_adapter *adapter);
+int igc_tsn_reset(struct igc_adapter *adapter);
 
 #endif /* _IGC_BASE_H */
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
