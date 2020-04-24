Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 552A61B8070
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0AEE620448;
	Fri, 24 Apr 2020 20:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2aproRPt52yX; Fri, 24 Apr 2020 20:17:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9B8C822859;
	Fri, 24 Apr 2020 20:17:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 304D21BF9C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2D27B868A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JFygBYAS0LBk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E05CE86BA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
IronPort-SDR: rud4VtJEu4mf6vQRS8XUSlFP+zRW7mh1OsN9Z2vyn6UUgexSvh+NDSZDAKM9h68WfZl6MJZWRJ
 XAVP1xNLBxFw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:28 -0700
IronPort-SDR: L5P+LlqYNzgNHU/h8NEazdaePqKG6rjVP6Lyldb8+KHtpg9iP66vS3y+UtCOQCTQCIeRevC3rr
 zkFdktifFITA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474520"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:28 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:18 -0700
Message-Id: <20200424201623.10971-15-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 14/19] igc: Refactor
 igc_ethtool_update_nfc_rule()
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

Current implementation of igc_ethtool_update_nfc_rule() is a bit
convoluted since it handles too many things: rule lookup, deletion
and addition. This patch breaks it into three functions so we simplify
the code and improve code reuse.

Code related to rule lookup is refactored out to a new function called
igc_get_nfc_rule().

Code related to rule addition is refactored out to a new function called
igc_add_nfc_rule(). This function enables the rule in hardware and adds
it to the adapter's list.

Code related to rule deletion is refactored out to a new function called
igc_del_nfc_rule(). This function disables the rule in hardware, removes
it from adapter's list, and deletes it.

As a byproduct of this refactoring, igc_enable_nfc_rule() and
igc_disable_nfc_rule() are moved to igc_main.c since they are not used
in igc_ethtool.c anymore, and igc_restore_nfc_rules() and igc_nfc_rule_
exit() are moved around to avoid forward declaration.

Also, since this patch already touches igc_ethtool_get_nfc_rule(), it
takes the opportunity to remove the 'match_flags' check. Empty flags
are not allowed to be added so no need to check that.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  18 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 138 ++-----------
 drivers/net/ethernet/intel/igc/igc_main.c    | 205 ++++++++++++++++---
 3 files changed, 195 insertions(+), 166 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 76bc3a51ad70..a484b328268b 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -232,16 +232,6 @@ void igc_write_rss_indir_tbl(struct igc_adapter *adapter);
 bool igc_has_link(struct igc_adapter *adapter);
 void igc_reset(struct igc_adapter *adapter);
 int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx);
-int igc_add_mac_filter(struct igc_adapter *adapter,
-		       enum igc_mac_filter_type type, const u8 *addr,
-		       int queue);
-int igc_del_mac_filter(struct igc_adapter *adapter,
-		       enum igc_mac_filter_type type, const u8 *addr);
-int igc_add_vlan_prio_filter(struct igc_adapter *adapter, int prio,
-			     int queue);
-void igc_del_vlan_prio_filter(struct igc_adapter *adapter, int prio);
-int igc_add_etype_filter(struct igc_adapter *adapter, u16 etype, int queue);
-int igc_del_etype_filter(struct igc_adapter *adapter, u16 etype);
 void igc_update_stats(struct igc_adapter *adapter);
 
 /* igc_dump declarations */
@@ -544,10 +534,10 @@ static inline s32 igc_read_phy_reg(struct igc_hw *hw, u32 offset, u16 *data)
 }
 
 void igc_reinit_locked(struct igc_adapter *);
-int igc_enable_nfc_rule(struct igc_adapter *adapter,
-			const struct igc_nfc_rule *rule);
-int igc_disable_nfc_rule(struct igc_adapter *adapter,
-			 const struct igc_nfc_rule *rule);
+struct igc_nfc_rule *igc_get_nfc_rule(struct igc_adapter *adapter,
+				      u32 location);
+int igc_add_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule);
+void igc_del_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule);
 
 void igc_ptp_init(struct igc_adapter *adapter);
 void igc_ptp_reset(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 944cad748e61..de9ab3c8179a 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -941,15 +941,8 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 
 	spin_lock(&adapter->nfc_rule_lock);
 
-	list_for_each_entry(rule, &adapter->nfc_rule_list, list) {
-		if (fsp->location <= rule->location)
-			break;
-	}
-
-	if (!rule || fsp->location != rule->location)
-		goto out;
-
-	if (!rule->filter.match_flags)
+	rule = igc_get_nfc_rule(adapter, fsp->location);
+	if (!rule)
 		goto out;
 
 	fsp->flow_type = ETHER_FLOW;
@@ -1190,108 +1183,6 @@ static int igc_ethtool_set_rss_hash_opt(struct igc_adapter *adapter,
 	return 0;
 }
 
-int igc_enable_nfc_rule(struct igc_adapter *adapter,
-			const struct igc_nfc_rule *rule)
-{
-	int err = -EINVAL;
-
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
-		err = igc_add_etype_filter(adapter, rule->filter.etype,
-					   rule->action);
-		if (err)
-			return err;
-	}
-
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
-		err = igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_SRC,
-					 rule->filter.src_addr, rule->action);
-		if (err)
-			return err;
-	}
-
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR) {
-		err = igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST,
-					 rule->filter.dst_addr, rule->action);
-		if (err)
-			return err;
-	}
-
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
-		int prio = (rule->filter.vlan_tci & VLAN_PRIO_MASK)
-				>> VLAN_PRIO_SHIFT;
-
-		err = igc_add_vlan_prio_filter(adapter, prio, rule->action);
-		if (err)
-			return err;
-	}
-
-	return 0;
-}
-
-int igc_disable_nfc_rule(struct igc_adapter *adapter,
-			 const struct igc_nfc_rule *rule)
-{
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE)
-		igc_del_etype_filter(adapter, rule->filter.etype);
-
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
-		int prio = (rule->filter.vlan_tci & VLAN_PRIO_MASK)
-				>> VLAN_PRIO_SHIFT;
-		igc_del_vlan_prio_filter(adapter, prio);
-	}
-
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
-		igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_SRC,
-				   rule->filter.src_addr);
-
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
-		igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST,
-				   rule->filter.dst_addr);
-
-	return 0;
-}
-
-static int igc_ethtool_update_nfc_rule(struct igc_adapter *adapter,
-				       struct igc_nfc_rule *input,
-				       u32 location)
-{
-	struct igc_nfc_rule *rule, *parent;
-	int err = -EINVAL;
-
-	parent = NULL;
-	rule = NULL;
-
-	list_for_each_entry(rule, &adapter->nfc_rule_list, list) {
-		/* hash found, or no matching entry */
-		if (rule->location >= location)
-			break;
-		parent = rule;
-	}
-
-	/* if there is an old rule occupying our place remove it */
-	if (rule && rule->location == location) {
-		err = igc_disable_nfc_rule(adapter, rule);
-
-		list_del(&rule->list);
-		kfree(rule);
-		adapter->nfc_rule_count--;
-	}
-
-	/* If no input this was a delete, err should be 0 if a rule was
-	 * successfully found and removed from the list else -EINVAL
-	 */
-	if (!input)
-		return err;
-
-	list_add(&input->list, parent ? &parent->list :
-					&adapter->nfc_rule_list);
-
-	/* update counts */
-	adapter->nfc_rule_count++;
-
-	return 0;
-}
-
 static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
 				      const struct ethtool_rx_flow_spec *fsp)
 {
@@ -1376,7 +1267,7 @@ static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
 	struct net_device *netdev = adapter->netdev;
 	struct ethtool_rx_flow_spec *fsp =
 		(struct ethtool_rx_flow_spec *)&cmd->fs;
-	struct igc_nfc_rule *rule;
+	struct igc_nfc_rule *rule, *old_rule;
 	int err;
 
 	if (!(netdev->hw_features & NETIF_F_NTUPLE)) {
@@ -1417,12 +1308,14 @@ static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
 	if (err)
 		goto err;
 
-	err = igc_enable_nfc_rule(adapter, rule);
+	old_rule = igc_get_nfc_rule(adapter, fsp->location);
+	if (old_rule)
+		igc_del_nfc_rule(adapter, old_rule);
+
+	err = igc_add_nfc_rule(adapter, rule);
 	if (err)
 		goto err;
 
-	igc_ethtool_update_nfc_rule(adapter, rule, rule->location);
-
 	spin_unlock(&adapter->nfc_rule_lock);
 	return 0;
 
@@ -1437,13 +1330,20 @@ static int igc_ethtool_del_nfc_rule(struct igc_adapter *adapter,
 {
 	struct ethtool_rx_flow_spec *fsp =
 		(struct ethtool_rx_flow_spec *)&cmd->fs;
-	int err;
+	struct igc_nfc_rule *rule;
 
 	spin_lock(&adapter->nfc_rule_lock);
-	err = igc_ethtool_update_nfc_rule(adapter, NULL, fsp->location);
-	spin_unlock(&adapter->nfc_rule_lock);
 
-	return err;
+	rule = igc_get_nfc_rule(adapter, fsp->location);
+	if (!rule) {
+		spin_unlock(&adapter->nfc_rule_lock);
+		return -EINVAL;
+	}
+
+	igc_del_nfc_rule(adapter, rule);
+
+	spin_unlock(&adapter->nfc_rule_lock);
+	return 0;
 }
 
 static int igc_ethtool_set_rxnfc(struct net_device *dev,
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 1b554b3a63c2..e09d74331257 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2175,18 +2175,6 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 	return !!budget;
 }
 
-static void igc_restore_nfc_rules(struct igc_adapter *adapter)
-{
-	struct igc_nfc_rule *rule;
-
-	spin_lock(&adapter->nfc_rule_lock);
-
-	list_for_each_entry_reverse(rule, &adapter->nfc_rule_list, list)
-		igc_enable_nfc_rule(adapter, rule);
-
-	spin_unlock(&adapter->nfc_rule_lock);
-}
-
 static int igc_find_mac_filter(struct igc_adapter *adapter,
 			       enum igc_mac_filter_type type, const u8 *addr)
 {
@@ -2243,9 +2231,9 @@ static int igc_get_avail_mac_filter_slot(struct igc_adapter *adapter)
  *
  * Return: 0 in case of success, negative errno code otherwise.
  */
-int igc_add_mac_filter(struct igc_adapter *adapter,
-		       enum igc_mac_filter_type type, const u8 *addr,
-		       int queue)
+static int igc_add_mac_filter(struct igc_adapter *adapter,
+			      enum igc_mac_filter_type type, const u8 *addr,
+			      int queue)
 {
 	struct net_device *dev = adapter->netdev;
 	int index;
@@ -2275,8 +2263,8 @@ int igc_add_mac_filter(struct igc_adapter *adapter,
  *
  * Return: 0 in case of success, negative errno code otherwise.
  */
-int igc_del_mac_filter(struct igc_adapter *adapter,
-		       enum igc_mac_filter_type type, const u8 *addr)
+static int igc_del_mac_filter(struct igc_adapter *adapter,
+			      enum igc_mac_filter_type type, const u8 *addr)
 {
 	struct net_device *dev = adapter->netdev;
 	int index;
@@ -2313,7 +2301,8 @@ int igc_del_mac_filter(struct igc_adapter *adapter,
  *
  * Return: 0 in case of success, negative errno code otherwise.
  */
-int igc_add_vlan_prio_filter(struct igc_adapter *adapter, int prio, int queue)
+static int igc_add_vlan_prio_filter(struct igc_adapter *adapter, int prio,
+				    int queue)
 {
 	struct net_device *dev = adapter->netdev;
 	struct igc_hw *hw = &adapter->hw;
@@ -2341,7 +2330,7 @@ int igc_add_vlan_prio_filter(struct igc_adapter *adapter, int prio, int queue)
  * @adapter: Pointer to adapter where the filter should be deleted from.
  * @prio: VLAN priority value.
  */
-void igc_del_vlan_prio_filter(struct igc_adapter *adapter, int prio)
+static void igc_del_vlan_prio_filter(struct igc_adapter *adapter, int prio)
 {
 	struct igc_hw *hw = &adapter->hw;
 	u32 vlanpqf;
@@ -2382,7 +2371,8 @@ static int igc_get_avail_etype_filter_slot(struct igc_adapter *adapter)
  *
  * Return: 0 in case of success, negative errno code otherwise.
  */
-int igc_add_etype_filter(struct igc_adapter *adapter, u16 etype, int queue)
+static int igc_add_etype_filter(struct igc_adapter *adapter, u16 etype,
+				int queue)
 {
 	struct igc_hw *hw = &adapter->hw;
 	int index;
@@ -2434,7 +2424,7 @@ static int igc_find_etype_filter(struct igc_adapter *adapter, u16 etype)
  *
  * Return: 0 in case of success, negative errno code otherwise.
  */
-int igc_del_etype_filter(struct igc_adapter *adapter, u16 etype)
+static int igc_del_etype_filter(struct igc_adapter *adapter, u16 etype)
 {
 	struct igc_hw *hw = &adapter->hw;
 	int index;
@@ -2450,6 +2440,167 @@ int igc_del_etype_filter(struct igc_adapter *adapter, u16 etype)
 	return 0;
 }
 
+static int igc_enable_nfc_rule(struct igc_adapter *adapter,
+			       const struct igc_nfc_rule *rule)
+{
+	int err;
+
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
+		err = igc_add_etype_filter(adapter, rule->filter.etype,
+					   rule->action);
+		if (err)
+			return err;
+	}
+
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
+		err = igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_SRC,
+					 rule->filter.src_addr, rule->action);
+		if (err)
+			return err;
+	}
+
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR) {
+		err = igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST,
+					 rule->filter.dst_addr, rule->action);
+		if (err)
+			return err;
+	}
+
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
+		int prio = (rule->filter.vlan_tci & VLAN_PRIO_MASK)
+				>> VLAN_PRIO_SHIFT;
+
+		err = igc_add_vlan_prio_filter(adapter, prio, rule->action);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static int igc_disable_nfc_rule(struct igc_adapter *adapter,
+				const struct igc_nfc_rule *rule)
+{
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE)
+		igc_del_etype_filter(adapter, rule->filter.etype);
+
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
+		int prio = (rule->filter.vlan_tci & VLAN_PRIO_MASK)
+				>> VLAN_PRIO_SHIFT;
+
+		igc_del_vlan_prio_filter(adapter, prio);
+	}
+
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
+		igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_SRC,
+				   rule->filter.src_addr);
+
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
+		igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST,
+				   rule->filter.dst_addr);
+
+	return 0;
+}
+
+/**
+ * igc_get_nfc_rule() - Get NFC rule.
+ * @adapter: Pointer to adapter.
+ * @location: Rule location.
+ *
+ * Context: Expects adapter->nfc_rule_lock to be held by caller.
+ *
+ * Return: Pointer to NFC rule at @location. If not found, NULL.
+ */
+struct igc_nfc_rule *igc_get_nfc_rule(struct igc_adapter *adapter,
+				      u32 location)
+{
+	struct igc_nfc_rule *rule;
+
+	list_for_each_entry(rule, &adapter->nfc_rule_list, list) {
+		if (rule->location == location)
+			return rule;
+		if (rule->location > location)
+			break;
+	}
+
+	return NULL;
+}
+
+/**
+ * igc_del_nfc_rule() - Delete NFC rule.
+ * @adapter: Pointer to adapter.
+ * @rule: Pointer to rule to be deleted.
+ *
+ * Disable NFC rule in hardware and delete it from adapter.
+ *
+ * Context: Expects adapter->nfc_rule_lock to be held by caller.
+ */
+void igc_del_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule)
+{
+	igc_disable_nfc_rule(adapter, rule);
+
+	list_del(&rule->list);
+	adapter->nfc_rule_count--;
+
+	kfree(rule);
+}
+
+/**
+ * igc_add_nfc_rule() - Add NFC rule.
+ * @adapter: Pointer to adapter.
+ * @rule: Pointer to rule to be added.
+ *
+ * Enable NFC rule in hardware and add it to adapter.
+ *
+ * Context: Expects adapter->nfc_rule_lock to be held by caller.
+ *
+ * Return: 0 on success, negative errno on failure.
+ */
+int igc_add_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule)
+{
+	struct igc_nfc_rule *pred, *cur;
+	int err;
+
+	err = igc_enable_nfc_rule(adapter, rule);
+	if (err)
+		return err;
+
+	pred = NULL;
+	list_for_each_entry(cur, &adapter->nfc_rule_list, list) {
+		if (cur->location >= rule->location)
+			break;
+		pred = cur;
+	}
+
+	list_add(&rule->list, pred ? &pred->list : &adapter->nfc_rule_list);
+	adapter->nfc_rule_count++;
+	return 0;
+}
+
+static void igc_restore_nfc_rules(struct igc_adapter *adapter)
+{
+	struct igc_nfc_rule *rule;
+
+	spin_lock(&adapter->nfc_rule_lock);
+
+	list_for_each_entry_reverse(rule, &adapter->nfc_rule_list, list)
+		igc_enable_nfc_rule(adapter, rule);
+
+	spin_unlock(&adapter->nfc_rule_lock);
+}
+
+static void igc_nfc_rule_exit(struct igc_adapter *adapter)
+{
+	struct igc_nfc_rule *rule;
+
+	spin_lock(&adapter->nfc_rule_lock);
+
+	list_for_each_entry(rule, &adapter->nfc_rule_list, list)
+		igc_disable_nfc_rule(adapter, rule);
+
+	spin_unlock(&adapter->nfc_rule_lock);
+}
+
 static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
@@ -3649,18 +3800,6 @@ void igc_update_stats(struct igc_adapter *adapter)
 	adapter->stats.mgpdc += rd32(IGC_MGTPDC);
 }
 
-static void igc_nfc_rule_exit(struct igc_adapter *adapter)
-{
-	struct igc_nfc_rule *rule;
-
-	spin_lock(&adapter->nfc_rule_lock);
-
-	list_for_each_entry(rule, &adapter->nfc_rule_list, list)
-		igc_disable_nfc_rule(adapter, rule);
-
-	spin_unlock(&adapter->nfc_rule_lock);
-}
-
 /**
  * igc_down - Close the interface
  * @adapter: board private structure
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
