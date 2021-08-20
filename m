Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9FF3F2A21
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 12:31:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC629613DF;
	Fri, 20 Aug 2021 10:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qtdXzYjcsTIu; Fri, 20 Aug 2021 10:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66A22613E3;
	Fri, 20 Aug 2021 10:31:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0EBF1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 10:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F3E5613AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 10:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3b8sHM3mu_8N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 10:31:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8BD760669
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 10:31:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="197007480"
X-IronPort-AV: E=Sophos;i="5.84,337,1620716400"; d="scan'208";a="197007480"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 03:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,337,1620716400"; d="scan'208";a="490414973"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga008.fm.intel.com with ESMTP; 20 Aug 2021 03:31:18 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Aug 2021 10:30:25 +0000
Message-Id: <20210820103025.9816-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor parameters
 name in i40e_print_input_set
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
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change function parameter old/new in i40e_print_input_set.
To avoid UT compilation problem with old/new name
added suffix 'input' to the name of parameters.

Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 35 ++++++++++---------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 2c9e4eeb7270..addf7543a48a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -4054,49 +4054,50 @@ static u64 i40e_pit_index_to_mask(int pit_index)
 /**
  * i40e_print_input_set - Show changes between two input sets
  * @vsi: the vsi being configured
- * @old: the old input set
- * @new: the new input set
+ * @old_input: the old input set
+ * @new_input: the new input set
  *
  * Print the difference between old and new input sets by showing which series
  * of words are toggled on or off. Only displays the bits we actually support
  * changing.
  **/
-static void i40e_print_input_set(struct i40e_vsi *vsi, u64 old, u64 new)
+static void i40e_print_input_set(struct i40e_vsi *vsi, u64 old_input,
+				 u64 new_input)
 {
 	struct i40e_pf *pf = vsi->back;
 	bool old_value, new_value;
 	int i;
 
-	old_value = !!(old & I40E_L3_SRC_MASK);
-	new_value = !!(new & I40E_L3_SRC_MASK);
+	old_value = !!(old_input & I40E_L3_SRC_MASK);
+	new_value = !!(new_input & I40E_L3_SRC_MASK);
 	if (old_value != new_value)
 		netif_info(pf, drv, vsi->netdev, "L3 source address: %s -> %s\n",
 			   old_value ? "ON" : "OFF",
 			   new_value ? "ON" : "OFF");
 
-	old_value = !!(old & I40E_L3_DST_MASK);
-	new_value = !!(new & I40E_L3_DST_MASK);
+	old_value = !!(old_input & I40E_L3_DST_MASK);
+	new_value = !!(new_input & I40E_L3_DST_MASK);
 	if (old_value != new_value)
 		netif_info(pf, drv, vsi->netdev, "L3 destination address: %s -> %s\n",
 			   old_value ? "ON" : "OFF",
 			   new_value ? "ON" : "OFF");
 
-	old_value = !!(old & I40E_L4_SRC_MASK);
-	new_value = !!(new & I40E_L4_SRC_MASK);
+	old_value = !!(old_input & I40E_L4_SRC_MASK);
+	new_value = !!(new_input & I40E_L4_SRC_MASK);
 	if (old_value != new_value)
 		netif_info(pf, drv, vsi->netdev, "L4 source port: %s -> %s\n",
 			   old_value ? "ON" : "OFF",
 			   new_value ? "ON" : "OFF");
 
-	old_value = !!(old & I40E_L4_DST_MASK);
-	new_value = !!(new & I40E_L4_DST_MASK);
+	old_value = !!(old_input & I40E_L4_DST_MASK);
+	new_value = !!(new_input & I40E_L4_DST_MASK);
 	if (old_value != new_value)
 		netif_info(pf, drv, vsi->netdev, "L4 destination port: %s -> %s\n",
 			   old_value ? "ON" : "OFF",
 			   new_value ? "ON" : "OFF");
 
-	old_value = !!(old & I40E_VERIFY_TAG_MASK);
-	new_value = !!(new & I40E_VERIFY_TAG_MASK);
+	old_value = !!(old_input & I40E_VERIFY_TAG_MASK);
+	new_value = !!(new_input & I40E_VERIFY_TAG_MASK);
 	if (old_value != new_value)
 		netif_info(pf, drv, vsi->netdev, "SCTP verification tag: %s -> %s\n",
 			   old_value ? "ON" : "OFF",
@@ -4106,8 +4107,8 @@ static void i40e_print_input_set(struct i40e_vsi *vsi, u64 old, u64 new)
 	for (i = 0; i < I40E_FLEX_INDEX_ENTRIES; i++) {
 		u64 flex_mask = i40e_pit_index_to_mask(i);
 
-		old_value = !!(old & flex_mask);
-		new_value = !!(new & flex_mask);
+		old_value = !!(old_input & flex_mask);
+		new_value = !!(new_input & flex_mask);
 		if (old_value != new_value)
 			netif_info(pf, drv, vsi->netdev, "FLEX index %d: %s -> %s\n",
 				   i,
@@ -4116,9 +4117,9 @@ static void i40e_print_input_set(struct i40e_vsi *vsi, u64 old, u64 new)
 	}
 
 	netif_info(pf, drv, vsi->netdev, "  Current input set: %0llx\n",
-		   old);
+		   old_input);
 	netif_info(pf, drv, vsi->netdev, "Requested input set: %0llx\n",
-		   new);
+		   new_input);
 }
 
 /**
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
