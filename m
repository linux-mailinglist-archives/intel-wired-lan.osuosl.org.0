Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6AF1B8067
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A15EA88723;
	Fri, 24 Apr 2020 20:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g7Bcw43AZKrn; Fri, 24 Apr 2020 20:17:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1950D8872B;
	Fri, 24 Apr 2020 20:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 137C31BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 104A0868A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n9GGdxYPBqjl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8208868C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
IronPort-SDR: qzGswhDC2KaR/S/3OuvTSX8lOZugtxH0aV2R9r+OJqF+X+xn67Qe3fV4lprSM0M7aUEEDg4IrS
 2ivHeHRt88aQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:28 -0700
IronPort-SDR: GhZcn5qdrOJ1rfcqm8Z1Or4SoErvee5gOIn0Yx8hhtksOmGH68vgqCROPeGiE/bM0v/yXyeLWu
 KD5b9qY9N6WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474518"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:28 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:17 -0700
Message-Id: <20200424201623.10971-14-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 13/19] igc: Fix NFC rules restoration
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When network interface is brought up, the driver re-enables the NFC
rules previously configured. However, this is done in reverse order
the rules were added and hardware filters are configured differently.

For example, consider the following rules:

$ ethtool -N eth0 flow-type ether dst 00:00:00:00:00:AA queue 0
$ ethtool -N eth0 flow-type ether dst 00:00:00:00:00:BB queue 1
$ ethtool -N eth0 flow-type ether dst 00:00:00:00:00:CC queue 2
$ ethtool -N eth0 flow-type ether dst 00:00:00:00:00:DD queue 3

RAL/RAH registers are configure so filter index 1 has address ending
with AA, filter index 2 has address ending in BB, and so on.

If we bring the interface down and up again, RAL/RAH registers are
configured so filter index 1 has address ending in DD, filter index 2
has CC, and so on. IOW, in reverse order we had before bringing the
interface down.

This issue can be fixed by traversing adapter->nfc_rule_list in
backwards when restoring the rules. Since hlist doesn't support
backwards traversal, this patch replaces it by list_head and fixes
igc_restore_nfc_rules() accordingly.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  4 ++--
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 19 ++++++++-----------
 drivers/net/ethernet/intel/igc/igc_main.c    | 16 +++++++++-------
 3 files changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index ae7d48070ee2..76bc3a51ad70 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -191,7 +191,7 @@ struct igc_adapter {
 	 * nfc_rule_lock.
 	 */
 	spinlock_t nfc_rule_lock;
-	struct hlist_head nfc_rule_list;
+	struct list_head nfc_rule_list;
 	unsigned int nfc_rule_count;
 
 	u8 rss_indir_tbl[IGC_RETA_SIZE];
@@ -461,7 +461,7 @@ struct igc_nfc_filter {
 };
 
 struct igc_nfc_rule {
-	struct hlist_node nfc_node;
+	struct list_head list;
 	struct igc_nfc_filter filter;
 	u32 location;
 	u16 action;
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index e975efea4a15..944cad748e61 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -941,7 +941,7 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 
 	spin_lock(&adapter->nfc_rule_lock);
 
-	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node) {
+	list_for_each_entry(rule, &adapter->nfc_rule_list, list) {
 		if (fsp->location <= rule->location)
 			break;
 	}
@@ -997,7 +997,7 @@ static int igc_ethtool_get_nfc_rules(struct igc_adapter *adapter,
 
 	spin_lock(&adapter->nfc_rule_lock);
 
-	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node) {
+	list_for_each_entry(rule, &adapter->nfc_rule_list, list) {
 		if (cnt == cmd->rule_cnt) {
 			spin_unlock(&adapter->nfc_rule_lock);
 			return -EMSGSIZE;
@@ -1261,7 +1261,7 @@ static int igc_ethtool_update_nfc_rule(struct igc_adapter *adapter,
 	parent = NULL;
 	rule = NULL;
 
-	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node) {
+	list_for_each_entry(rule, &adapter->nfc_rule_list, list) {
 		/* hash found, or no matching entry */
 		if (rule->location >= location)
 			break;
@@ -1272,7 +1272,7 @@ static int igc_ethtool_update_nfc_rule(struct igc_adapter *adapter,
 	if (rule && rule->location == location) {
 		err = igc_disable_nfc_rule(adapter, rule);
 
-		hlist_del(&rule->nfc_node);
+		list_del(&rule->list);
 		kfree(rule);
 		adapter->nfc_rule_count--;
 	}
@@ -1283,11 +1283,8 @@ static int igc_ethtool_update_nfc_rule(struct igc_adapter *adapter,
 	if (!input)
 		return err;
 
-	/* add filter to the list */
-	if (parent)
-		hlist_add_behind(&input->nfc_node, &parent->nfc_node);
-	else
-		hlist_add_head(&input->nfc_node, &adapter->nfc_rule_list);
+	list_add(&input->list, parent ? &parent->list :
+					&adapter->nfc_rule_list);
 
 	/* update counts */
 	adapter->nfc_rule_count++;
@@ -1298,7 +1295,7 @@ static int igc_ethtool_update_nfc_rule(struct igc_adapter *adapter,
 static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
 				      const struct ethtool_rx_flow_spec *fsp)
 {
-	INIT_HLIST_NODE(&rule->nfc_node);
+	INIT_LIST_HEAD(&rule->list);
 
 	rule->action = fsp->ring_cookie;
 	rule->location = fsp->location;
@@ -1362,7 +1359,7 @@ static int igc_ethtool_check_nfc_rule(struct igc_adapter *adapter,
 		return -EOPNOTSUPP;
 	}
 
-	hlist_for_each_entry(tmp, &adapter->nfc_rule_list, nfc_node) {
+	list_for_each_entry(tmp, &adapter->nfc_rule_list, list) {
 		if (!memcmp(&rule->filter, &tmp->filter,
 			    sizeof(rule->filter))) {
 			netdev_dbg(dev, "Rule already exists");
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index b0c4206f9c7d..1b554b3a63c2 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2181,7 +2181,7 @@ static void igc_restore_nfc_rules(struct igc_adapter *adapter)
 
 	spin_lock(&adapter->nfc_rule_lock);
 
-	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node)
+	list_for_each_entry_reverse(rule, &adapter->nfc_rule_list, list)
 		igc_enable_nfc_rule(adapter, rule);
 
 	spin_unlock(&adapter->nfc_rule_lock);
@@ -3420,6 +3420,9 @@ static int igc_sw_init(struct igc_adapter *adapter)
 	adapter->min_frame_size = ETH_ZLEN + ETH_FCS_LEN;
 
 	spin_lock_init(&adapter->nfc_rule_lock);
+	INIT_LIST_HEAD(&adapter->nfc_rule_list);
+	adapter->nfc_rule_count = 0;
+
 	spin_lock_init(&adapter->stats64_lock);
 	/* Assume MSI-X interrupts, will be checked during IRQ allocation */
 	adapter->flags |= IGC_FLAG_HAS_MSIX;
@@ -3652,7 +3655,7 @@ static void igc_nfc_rule_exit(struct igc_adapter *adapter)
 
 	spin_lock(&adapter->nfc_rule_lock);
 
-	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node)
+	list_for_each_entry(rule, &adapter->nfc_rule_list, list)
 		igc_disable_nfc_rule(adapter, rule);
 
 	spin_unlock(&adapter->nfc_rule_lock);
@@ -3827,14 +3830,13 @@ static int igc_set_features(struct net_device *netdev,
 		return 0;
 
 	if (!(features & NETIF_F_NTUPLE)) {
-		struct hlist_node *node2;
-		struct igc_nfc_rule *rule;
+		struct igc_nfc_rule *rule, *tmp;
 
 		spin_lock(&adapter->nfc_rule_lock);
-		hlist_for_each_entry_safe(rule, node2,
-					  &adapter->nfc_rule_list, nfc_node) {
+		list_for_each_entry_safe(rule, tmp,
+					 &adapter->nfc_rule_list, list) {
 			igc_disable_nfc_rule(adapter, rule);
-			hlist_del(&rule->nfc_node);
+			list_del(&rule->list);
 			kfree(rule);
 		}
 		spin_unlock(&adapter->nfc_rule_lock);
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
