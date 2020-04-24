Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E9D1B8062
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9557868C9;
	Fri, 24 Apr 2020 20:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 72d7Tpl9AKbU; Fri, 24 Apr 2020 20:17:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C80A86B59;
	Fri, 24 Apr 2020 20:17:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB6141BF9C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B279E86B59
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zh844B2ZICuX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F1387868C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
IronPort-SDR: Th0tszmc3hYS0yzlPGDGYF2/yfwzo0QsJ54w1hUL8EsJCuSnjiQDny7G3dT0YSzqz/0IoD9dIt
 6yeCS/IXxaJw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:26 -0700
IronPort-SDR: G1jvgECB+GOj/nQJbnHDvqpuLm3I6+JF2EUprSIwrl5k+GxxDuuzBFrZL0d08B91cxa737vr6N
 O7NKG/pYJLhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474510"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:26 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:12 -0700
Message-Id: <20200424201623.10971-9-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 08/19] igc: Refactor
 igc_ethtool_add_nfc_rule()
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

Current implementation of igc_ethtool_add_nfc_rule() is quite long and a
bit convoluted so this patch does a code refactoring to improve the
code.

Code related to NFC rule object initialization is refactored out to the
local helper function igc_ethtool_init_nfc_rule(). Likewise, code
related to NFC rule validation is refactored out to another local
helper, igc_ethtool_is_nfc_rule_valid().

RX_CLS_FLOW_DISC check is removed since it is redundant. The macro is
defined as the max value fsp->ring_cookie can have, so checking if
fsp->ring_cookie >= adapter->num_rx_queues is already sufficient.

Finally, some log messages are improved or added, and obvious comments
are removed.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 150 ++++++++++++-------
 1 file changed, 92 insertions(+), 58 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index f9518aa1375b..bdb7c99f66be 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1271,9 +1271,6 @@ static int igc_ethtool_update_nfc_rule(struct igc_adapter *adapter,
 	if (!input)
 		return err;
 
-	/* initialize node */
-	INIT_HLIST_NODE(&input->nfc_node);
-
 	/* add filter to the list */
 	if (parent)
 		hlist_add_behind(&input->nfc_node, &parent->nfc_node);
@@ -1286,41 +1283,19 @@ static int igc_ethtool_update_nfc_rule(struct igc_adapter *adapter,
 	return 0;
 }
 
-static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
-				    struct ethtool_rxnfc *cmd)
+static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
+				      const struct ethtool_rx_flow_spec *fsp)
 {
-	struct net_device *netdev = adapter->netdev;
-	struct ethtool_rx_flow_spec *fsp =
-		(struct ethtool_rx_flow_spec *)&cmd->fs;
-	struct igc_nfc_rule *rule, *tmp;
-	int err = 0;
-
-	if (!(netdev->hw_features & NETIF_F_NTUPLE))
-		return -EOPNOTSUPP;
+	INIT_HLIST_NODE(&rule->nfc_node);
 
-	/* Don't allow programming if the action is a queue greater than
-	 * the number of online Rx queues.
-	 */
-	if (fsp->ring_cookie == RX_CLS_FLOW_DISC ||
-	    fsp->ring_cookie >= adapter->num_rx_queues) {
-		netdev_err(netdev,
-			   "ethtool -N: The specified action is invalid");
-		return -EINVAL;
-	}
+	rule->action = fsp->ring_cookie;
+	rule->sw_idx = fsp->location;
 
-	/* Don't allow indexes to exist outside of available space */
-	if (fsp->location >= IGC_MAX_RXNFC_RULES) {
-		netdev_err(netdev, "Location out of range");
-		return -EINVAL;
+	if ((fsp->flow_type & FLOW_EXT) && fsp->m_ext.vlan_tci) {
+		rule->filter.vlan_tci = ntohs(fsp->h_ext.vlan_tci);
+		rule->filter.match_flags |= IGC_FILTER_FLAG_VLAN_TCI;
 	}
 
-	if ((fsp->flow_type & ~FLOW_EXT) != ETHER_FLOW)
-		return -EINVAL;
-
-	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
-	if (!rule)
-		return -ENOMEM;
-
 	if (fsp->m_u.ether_spec.h_proto == ETHER_TYPE_FULL_MASK) {
 		rule->filter.etype = ntohs(fsp->h_u.ether_spec.h_proto);
 		rule->filter.match_flags = IGC_FILTER_FLAG_ETHER_TYPE;
@@ -1340,51 +1315,110 @@ static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
 		ether_addr_copy(rule->filter.dst_addr,
 				fsp->h_u.ether_spec.h_dest);
 	}
+}
 
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR &&
-	    rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
-		netdev_dbg(netdev, "Filters with both dst and src are not supported");
-		err = -EOPNOTSUPP;
-		goto err_out;
-	}
+/**
+ * igc_ethtool_check_nfc_rule() - Check if NFC rule is valid.
+ * @adapter: Pointer to adapter.
+ * @rule: Rule under evaluation.
+ *
+ * Rules with both destination and source MAC addresses are considered invalid
+ * since the driver doesn't support them.
+ *
+ * Also, if there is already another rule with the same filter, @rule is
+ * considered invalid.
+ *
+ * Context: Expects adapter->nfc_rule_lock to be held by caller.
+ *
+ * Return: 0 in case of success, negative errno code otherwise.
+ */
+static int igc_ethtool_check_nfc_rule(struct igc_adapter *adapter,
+				      struct igc_nfc_rule *rule)
+{
+	struct net_device *dev = adapter->netdev;
+	u8 flags = rule->filter.match_flags;
+	struct igc_nfc_rule *tmp;
 
-	if ((fsp->flow_type & FLOW_EXT) && fsp->m_ext.vlan_tci) {
-		if (fsp->m_ext.vlan_tci != htons(VLAN_PRIO_MASK)) {
-			netdev_dbg(netdev, "VLAN mask not supported");
-			err = -EOPNOTSUPP;
-			goto err_out;
-		}
-		rule->filter.vlan_tci = ntohs(fsp->h_ext.vlan_tci);
-		rule->filter.match_flags |= IGC_FILTER_FLAG_VLAN_TCI;
+	if (!flags) {
+		netdev_dbg(dev, "Rule with no match");
+		return -EINVAL;
 	}
 
-	rule->action = fsp->ring_cookie;
-	rule->sw_idx = fsp->location;
-
-	spin_lock(&adapter->nfc_rule_lock);
+	if (flags & IGC_FILTER_FLAG_DST_MAC_ADDR &&
+	    flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
+		netdev_dbg(dev, "Filters with both dst and src are not supported");
+		return -EOPNOTSUPP;
+	}
 
 	hlist_for_each_entry(tmp, &adapter->nfc_rule_list, nfc_node) {
 		if (!memcmp(&rule->filter, &tmp->filter,
 			    sizeof(rule->filter))) {
-			err = -EEXIST;
-			netdev_err(netdev,
-				   "ethtool: this filter is already set");
-			goto err_out_w_lock;
+			netdev_dbg(dev, "Rule already exists");
+			return -EEXIST;
 		}
 	}
 
+	return 0;
+}
+
+static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
+				    struct ethtool_rxnfc *cmd)
+{
+	struct net_device *netdev = adapter->netdev;
+	struct ethtool_rx_flow_spec *fsp =
+		(struct ethtool_rx_flow_spec *)&cmd->fs;
+	struct igc_nfc_rule *rule;
+	int err;
+
+	if (!(netdev->hw_features & NETIF_F_NTUPLE)) {
+		netdev_dbg(netdev, "N-tuple filters disabled");
+		return -EOPNOTSUPP;
+	}
+
+	if ((fsp->flow_type & ~FLOW_EXT) != ETHER_FLOW) {
+		netdev_dbg(netdev, "Only ethernet flow type is supported");
+		return -EOPNOTSUPP;
+	}
+
+	if ((fsp->flow_type & FLOW_EXT) &&
+	    fsp->m_ext.vlan_tci != htons(VLAN_PRIO_MASK)) {
+		netdev_dbg(netdev, "VLAN mask not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (fsp->ring_cookie >= adapter->num_rx_queues) {
+		netdev_dbg(netdev, "Invalid action");
+		return -EINVAL;
+	}
+
+	if (fsp->location >= IGC_MAX_RXNFC_RULES) {
+		netdev_dbg(netdev, "Invalid location");
+		return -EINVAL;
+	}
+
+	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
+	if (!rule)
+		return -ENOMEM;
+
+	igc_ethtool_init_nfc_rule(rule, fsp);
+
+	spin_lock(&adapter->nfc_rule_lock);
+
+	err = igc_ethtool_check_nfc_rule(adapter, rule);
+	if (err)
+		goto err;
+
 	err = igc_enable_nfc_rule(adapter, rule);
 	if (err)
-		goto err_out_w_lock;
+		goto err;
 
 	igc_ethtool_update_nfc_rule(adapter, rule, rule->sw_idx);
 
 	spin_unlock(&adapter->nfc_rule_lock);
 	return 0;
 
-err_out_w_lock:
+err:
 	spin_unlock(&adapter->nfc_rule_lock);
-err_out:
 	kfree(rule);
 	return err;
 }
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
