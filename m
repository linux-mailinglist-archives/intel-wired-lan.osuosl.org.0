Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F991B8066
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2CDBB868BC;
	Fri, 24 Apr 2020 20:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k6KCWYM8Gp_w; Fri, 24 Apr 2020 20:17:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ACF3886C7A;
	Fri, 24 Apr 2020 20:17:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A7F81BF9C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0750686BF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AXtAiAh4xzlL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5C9D4868BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
IronPort-SDR: qJyKxzeb2CU5zCHr9L+wD1Kcg6Afy0uwFvZJF8/3nA/4ic8oJ1o/RDxxtzLiOoOCXxcBpQxVCb
 rJLG/aUVUbgg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:26 -0700
IronPort-SDR: pG+g8zMGKdGoOWNwJzVkkLW4yYtVSqP4KBsd5NBWVJK8riGWELM+GzmMYiEbVz3tMiZM/Ipdmn
 LVVFdvsxMyYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474506"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:25 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:10 -0700
Message-Id: <20200424201623.10971-7-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 06/19] igc: Align terms used in NFC
 support code
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

The Network Flow Classification (NFC) support code from IGC driver uses
terms such as 'rule', 'filter', 'entry', 'input' interchangeably when
referring to NFC rules, making it harder to follow the code. This patch
renames IGC's internal APIs, structs, and variables so we stick with the
term 'rule' since this is the term used in ethtool APIs. It also removes
some not applicable comments along the way. No functionality is changed
by this patch.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  29 ++--
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 160 +++++++++----------
 drivers/net/ethernet/intel/igc/igc_main.c    |  42 ++---
 3 files changed, 114 insertions(+), 117 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 359ac40908f6..7124ba254b89 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -187,12 +187,12 @@ struct igc_adapter {
 	u32 rss_queues;
 	u32 rss_indir_tbl_init;
 
-	/* RX network flow classification support */
-	struct hlist_head nfc_filter_list;
-	unsigned int nfc_filter_count;
-
-	/* lock for RX network flow classification filter */
-	spinlock_t nfc_lock;
+	/* Any access to elements in nfc_rule_list is protected by the
+	 * nfc_rule_lock.
+	 */
+	spinlock_t nfc_rule_lock;
+	struct hlist_head nfc_rule_list;
+	unsigned int nfc_rule_count;
 
 	u8 rss_indir_tbl[IGC_RETA_SIZE];
 
@@ -453,7 +453,7 @@ enum igc_filter_match_flags {
 };
 
 /* RX network flow classification data structure */
-struct igc_nfc_input {
+struct igc_nfc_filter {
 	/* Byte layout in order, all values with MSB first:
 	 * match_flags - 1 byte
 	 * etype - 2 bytes
@@ -466,14 +466,14 @@ struct igc_nfc_input {
 	u8 dst_addr[ETH_ALEN];
 };
 
-struct igc_nfc_filter {
+struct igc_nfc_rule {
 	struct hlist_node nfc_node;
-	struct igc_nfc_input filter;
+	struct igc_nfc_filter filter;
 	u16 sw_idx;
 	u16 action;
 };
 
-#define IGC_MAX_RXNFC_FILTERS		16
+#define IGC_MAX_RXNFC_RULES		16
 
 /* igc_desc_unused - calculate if we have unused descriptors */
 static inline u16 igc_desc_unused(const struct igc_ring *ring)
@@ -549,12 +549,11 @@ static inline s32 igc_read_phy_reg(struct igc_hw *hw, u32 offset, u16 *data)
 	return 0;
 }
 
-/* forward declaration */
 void igc_reinit_locked(struct igc_adapter *);
-int igc_add_filter(struct igc_adapter *adapter,
-		   struct igc_nfc_filter *input);
-int igc_erase_filter(struct igc_adapter *adapter,
-		     struct igc_nfc_filter *input);
+int igc_enable_nfc_rule(struct igc_adapter *adapter,
+			const struct igc_nfc_rule *rule);
+int igc_disable_nfc_rule(struct igc_adapter *adapter,
+			 const struct igc_nfc_rule *rule);
 
 void igc_ptp_init(struct igc_adapter *adapter);
 void igc_ptp_reset(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 4ee040607c0b..46599ee7f0b9 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -931,16 +931,15 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
 }
 
 #define ETHER_TYPE_FULL_MASK ((__force __be16)~0)
-static int igc_ethtool_get_nfc_entry(struct igc_adapter *adapter,
-				     struct ethtool_rxnfc *cmd)
+static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
+				    struct ethtool_rxnfc *cmd)
 {
 	struct ethtool_rx_flow_spec *fsp = &cmd->fs;
-	struct igc_nfc_filter *rule = NULL;
+	struct igc_nfc_rule *rule = NULL;
 
-	/* report total rule count */
-	cmd->data = IGC_MAX_RXNFC_FILTERS;
+	cmd->data = IGC_MAX_RXNFC_RULES;
 
-	hlist_for_each_entry(rule, &adapter->nfc_filter_list, nfc_node) {
+	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node) {
 		if (fsp->location <= rule->sw_idx)
 			break;
 	}
@@ -980,17 +979,16 @@ static int igc_ethtool_get_nfc_entry(struct igc_adapter *adapter,
 	return 0;
 }
 
-static int igc_ethtool_get_nfc_all(struct igc_adapter *adapter,
-				   struct ethtool_rxnfc *cmd,
-				   u32 *rule_locs)
+static int igc_ethtool_get_nfc_rules(struct igc_adapter *adapter,
+				     struct ethtool_rxnfc *cmd,
+				     u32 *rule_locs)
 {
-	struct igc_nfc_filter *rule;
+	struct igc_nfc_rule *rule;
 	int cnt = 0;
 
-	/* report total rule count */
-	cmd->data = IGC_MAX_RXNFC_FILTERS;
+	cmd->data = IGC_MAX_RXNFC_RULES;
 
-	hlist_for_each_entry(rule, &adapter->nfc_filter_list, nfc_node) {
+	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node) {
 		if (cnt == cmd->rule_cnt)
 			return -EMSGSIZE;
 		rule_locs[cnt] = rule->sw_idx;
@@ -1062,12 +1060,12 @@ static int igc_ethtool_get_rxnfc(struct net_device *dev,
 		cmd->data = adapter->num_rx_queues;
 		return 0;
 	case ETHTOOL_GRXCLSRLCNT:
-		cmd->rule_cnt = adapter->nfc_filter_count;
+		cmd->rule_cnt = adapter->nfc_rule_count;
 		return 0;
 	case ETHTOOL_GRXCLSRULE:
-		return igc_ethtool_get_nfc_entry(adapter, cmd);
+		return igc_ethtool_get_nfc_rule(adapter, cmd);
 	case ETHTOOL_GRXCLSRLALL:
-		return igc_ethtool_get_nfc_all(adapter, cmd, rule_locs);
+		return igc_ethtool_get_nfc_rules(adapter, cmd, rule_locs);
 	case ETHTOOL_GRXFH:
 		return igc_ethtool_get_rss_hash_opts(adapter, cmd);
 	default:
@@ -1179,38 +1177,37 @@ static int igc_ethtool_set_rss_hash_opt(struct igc_adapter *adapter,
 	return 0;
 }
 
-int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
+int igc_enable_nfc_rule(struct igc_adapter *adapter,
+			const struct igc_nfc_rule *rule)
 {
 	int err = -EINVAL;
 
-	if (input->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
-		u16 etype = ntohs(input->filter.etype);
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
+		u16 etype = ntohs(rule->filter.etype);
 
-		err = igc_add_etype_filter(adapter, etype, input->action);
+		err = igc_add_etype_filter(adapter, etype, rule->action);
 		if (err)
 			return err;
 	}
 
-	if (input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
 		err = igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_SRC,
-					 input->filter.src_addr,
-					 input->action);
+					 rule->filter.src_addr, rule->action);
 		if (err)
 			return err;
 	}
 
-	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR) {
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR) {
 		err = igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST,
-					 input->filter.dst_addr,
-					 input->action);
+					 rule->filter.dst_addr, rule->action);
 		if (err)
 			return err;
 	}
 
-	if (input->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
-		int prio = (ntohs(input->filter.vlan_tci) & VLAN_PRIO_MASK)
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
+		int prio = (ntohs(rule->filter.vlan_tci) & VLAN_PRIO_MASK)
 				>> VLAN_PRIO_SHIFT;
-		err = igc_add_vlan_prio_filter(adapter, prio, input->action);
+		err = igc_add_vlan_prio_filter(adapter, prio, rule->action);
 		if (err)
 			return err;
 	}
@@ -1218,42 +1215,43 @@ int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 	return 0;
 }
 
-int igc_erase_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
+int igc_disable_nfc_rule(struct igc_adapter *adapter,
+			 const struct igc_nfc_rule *rule)
 {
-	if (input->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
-		u16 etype = ntohs(input->filter.etype);
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
+		u16 etype = ntohs(rule->filter.etype);
 
 		igc_del_etype_filter(adapter, etype);
 	}
 
-	if (input->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
-		int prio = (ntohs(input->filter.vlan_tci) & VLAN_PRIO_MASK)
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
+		int prio = (ntohs(rule->filter.vlan_tci) & VLAN_PRIO_MASK)
 				>> VLAN_PRIO_SHIFT;
 		igc_del_vlan_prio_filter(adapter, prio);
 	}
 
-	if (input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
 		igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_SRC,
-				   input->filter.src_addr);
+				   rule->filter.src_addr);
 
-	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
 		igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST,
-				   input->filter.dst_addr);
+				   rule->filter.dst_addr);
 
 	return 0;
 }
 
-static int igc_ethtool_update_nfc_entry(struct igc_adapter *adapter,
-					struct igc_nfc_filter *input,
-					u16 sw_idx)
+static int igc_ethtool_update_nfc_rule(struct igc_adapter *adapter,
+				       struct igc_nfc_rule *input,
+				       u16 sw_idx)
 {
-	struct igc_nfc_filter *rule, *parent;
+	struct igc_nfc_rule *rule, *parent;
 	int err = -EINVAL;
 
 	parent = NULL;
 	rule = NULL;
 
-	hlist_for_each_entry(rule, &adapter->nfc_filter_list, nfc_node) {
+	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node) {
 		/* hash found, or no matching entry */
 		if (rule->sw_idx >= sw_idx)
 			break;
@@ -1263,11 +1261,11 @@ static int igc_ethtool_update_nfc_entry(struct igc_adapter *adapter,
 	/* if there is an old rule occupying our place remove it */
 	if (rule && rule->sw_idx == sw_idx) {
 		if (!input)
-			err = igc_erase_filter(adapter, rule);
+			err = igc_disable_nfc_rule(adapter, rule);
 
 		hlist_del(&rule->nfc_node);
 		kfree(rule);
-		adapter->nfc_filter_count--;
+		adapter->nfc_rule_count--;
 	}
 
 	/* If no input this was a delete, err should be 0 if a rule was
@@ -1283,21 +1281,21 @@ static int igc_ethtool_update_nfc_entry(struct igc_adapter *adapter,
 	if (parent)
 		hlist_add_behind(&input->nfc_node, &parent->nfc_node);
 	else
-		hlist_add_head(&input->nfc_node, &adapter->nfc_filter_list);
+		hlist_add_head(&input->nfc_node, &adapter->nfc_rule_list);
 
 	/* update counts */
-	adapter->nfc_filter_count++;
+	adapter->nfc_rule_count++;
 
 	return 0;
 }
 
-static int igc_ethtool_add_nfc_entry(struct igc_adapter *adapter,
-				     struct ethtool_rxnfc *cmd)
+static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
+				    struct ethtool_rxnfc *cmd)
 {
 	struct net_device *netdev = adapter->netdev;
 	struct ethtool_rx_flow_spec *fsp =
 		(struct ethtool_rx_flow_spec *)&cmd->fs;
-	struct igc_nfc_filter *input, *rule;
+	struct igc_nfc_rule *rule, *tmp;
 	int err = 0;
 
 	if (!(netdev->hw_features & NETIF_F_NTUPLE))
@@ -1314,7 +1312,7 @@ static int igc_ethtool_add_nfc_entry(struct igc_adapter *adapter,
 	}
 
 	/* Don't allow indexes to exist outside of available space */
-	if (fsp->location >= IGC_MAX_RXNFC_FILTERS) {
+	if (fsp->location >= IGC_MAX_RXNFC_RULES) {
 		netdev_err(netdev, "Location out of range");
 		return -EINVAL;
 	}
@@ -1322,32 +1320,32 @@ static int igc_ethtool_add_nfc_entry(struct igc_adapter *adapter,
 	if ((fsp->flow_type & ~FLOW_EXT) != ETHER_FLOW)
 		return -EINVAL;
 
-	input = kzalloc(sizeof(*input), GFP_KERNEL);
-	if (!input)
+	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
+	if (!rule)
 		return -ENOMEM;
 
 	if (fsp->m_u.ether_spec.h_proto == ETHER_TYPE_FULL_MASK) {
-		input->filter.etype = fsp->h_u.ether_spec.h_proto;
-		input->filter.match_flags = IGC_FILTER_FLAG_ETHER_TYPE;
+		rule->filter.etype = fsp->h_u.ether_spec.h_proto;
+		rule->filter.match_flags = IGC_FILTER_FLAG_ETHER_TYPE;
 	}
 
 	/* Both source and destination address filters only support the full
 	 * mask.
 	 */
 	if (is_broadcast_ether_addr(fsp->m_u.ether_spec.h_source)) {
-		input->filter.match_flags |= IGC_FILTER_FLAG_SRC_MAC_ADDR;
-		ether_addr_copy(input->filter.src_addr,
+		rule->filter.match_flags |= IGC_FILTER_FLAG_SRC_MAC_ADDR;
+		ether_addr_copy(rule->filter.src_addr,
 				fsp->h_u.ether_spec.h_source);
 	}
 
 	if (is_broadcast_ether_addr(fsp->m_u.ether_spec.h_dest)) {
-		input->filter.match_flags |= IGC_FILTER_FLAG_DST_MAC_ADDR;
-		ether_addr_copy(input->filter.dst_addr,
+		rule->filter.match_flags |= IGC_FILTER_FLAG_DST_MAC_ADDR;
+		ether_addr_copy(rule->filter.dst_addr,
 				fsp->h_u.ether_spec.h_dest);
 	}
 
-	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR &&
-	    input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR &&
+	    rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
 		netdev_dbg(netdev, "Filters with both dst and src are not supported");
 		err = -EOPNOTSUPP;
 		goto err_out;
@@ -1359,18 +1357,18 @@ static int igc_ethtool_add_nfc_entry(struct igc_adapter *adapter,
 			err = -EOPNOTSUPP;
 			goto err_out;
 		}
-		input->filter.vlan_tci = fsp->h_ext.vlan_tci;
-		input->filter.match_flags |= IGC_FILTER_FLAG_VLAN_TCI;
+		rule->filter.vlan_tci = fsp->h_ext.vlan_tci;
+		rule->filter.match_flags |= IGC_FILTER_FLAG_VLAN_TCI;
 	}
 
-	input->action = fsp->ring_cookie;
-	input->sw_idx = fsp->location;
+	rule->action = fsp->ring_cookie;
+	rule->sw_idx = fsp->location;
 
-	spin_lock(&adapter->nfc_lock);
+	spin_lock(&adapter->nfc_rule_lock);
 
-	hlist_for_each_entry(rule, &adapter->nfc_filter_list, nfc_node) {
-		if (!memcmp(&input->filter, &rule->filter,
-			    sizeof(input->filter))) {
+	hlist_for_each_entry(tmp, &adapter->nfc_rule_list, nfc_node) {
+		if (!memcmp(&rule->filter, &tmp->filter,
+			    sizeof(rule->filter))) {
 			err = -EEXIST;
 			netdev_err(netdev,
 				   "ethtool: this filter is already set");
@@ -1378,32 +1376,32 @@ static int igc_ethtool_add_nfc_entry(struct igc_adapter *adapter,
 		}
 	}
 
-	err = igc_add_filter(adapter, input);
+	err = igc_enable_nfc_rule(adapter, rule);
 	if (err)
 		goto err_out_w_lock;
 
-	igc_ethtool_update_nfc_entry(adapter, input, input->sw_idx);
+	igc_ethtool_update_nfc_rule(adapter, rule, rule->sw_idx);
 
-	spin_unlock(&adapter->nfc_lock);
+	spin_unlock(&adapter->nfc_rule_lock);
 	return 0;
 
 err_out_w_lock:
-	spin_unlock(&adapter->nfc_lock);
+	spin_unlock(&adapter->nfc_rule_lock);
 err_out:
-	kfree(input);
+	kfree(rule);
 	return err;
 }
 
-static int igc_ethtool_del_nfc_entry(struct igc_adapter *adapter,
-				     struct ethtool_rxnfc *cmd)
+static int igc_ethtool_del_nfc_rule(struct igc_adapter *adapter,
+				    struct ethtool_rxnfc *cmd)
 {
 	struct ethtool_rx_flow_spec *fsp =
 		(struct ethtool_rx_flow_spec *)&cmd->fs;
 	int err;
 
-	spin_lock(&adapter->nfc_lock);
-	err = igc_ethtool_update_nfc_entry(adapter, NULL, fsp->location);
-	spin_unlock(&adapter->nfc_lock);
+	spin_lock(&adapter->nfc_rule_lock);
+	err = igc_ethtool_update_nfc_rule(adapter, NULL, fsp->location);
+	spin_unlock(&adapter->nfc_rule_lock);
 
 	return err;
 }
@@ -1417,9 +1415,9 @@ static int igc_ethtool_set_rxnfc(struct net_device *dev,
 	case ETHTOOL_SRXFH:
 		return igc_ethtool_set_rss_hash_opt(adapter, cmd);
 	case ETHTOOL_SRXCLSRLINS:
-		return igc_ethtool_add_nfc_entry(adapter, cmd);
+		return igc_ethtool_add_nfc_rule(adapter, cmd);
 	case ETHTOOL_SRXCLSRLDEL:
-		return igc_ethtool_del_nfc_entry(adapter, cmd);
+		return igc_ethtool_del_nfc_rule(adapter, cmd);
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ecdc0548f24e..7d9a2da4feee 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2175,16 +2175,16 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 	return !!budget;
 }
 
-static void igc_nfc_filter_restore(struct igc_adapter *adapter)
+static void igc_restore_nfc_rules(struct igc_adapter *adapter)
 {
-	struct igc_nfc_filter *rule;
+	struct igc_nfc_rule *rule;
 
-	spin_lock(&adapter->nfc_lock);
+	spin_lock(&adapter->nfc_rule_lock);
 
-	hlist_for_each_entry(rule, &adapter->nfc_filter_list, nfc_node)
-		igc_add_filter(adapter, rule);
+	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node)
+		igc_enable_nfc_rule(adapter, rule);
 
-	spin_unlock(&adapter->nfc_lock);
+	spin_unlock(&adapter->nfc_rule_lock);
 }
 
 static int igc_find_mac_filter(struct igc_adapter *adapter,
@@ -2538,7 +2538,7 @@ static void igc_configure(struct igc_adapter *adapter)
 	igc_setup_rctl(adapter);
 
 	igc_set_default_mac_filter(adapter);
-	igc_nfc_filter_restore(adapter);
+	igc_restore_nfc_rules(adapter);
 
 	igc_configure_tx(adapter);
 	igc_configure_rx(adapter);
@@ -3425,7 +3425,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
 				VLAN_HLEN;
 	adapter->min_frame_size = ETH_ZLEN + ETH_FCS_LEN;
 
-	spin_lock_init(&adapter->nfc_lock);
+	spin_lock_init(&adapter->nfc_rule_lock);
 	spin_lock_init(&adapter->stats64_lock);
 	/* Assume MSI-X interrupts, will be checked during IRQ allocation */
 	adapter->flags |= IGC_FLAG_HAS_MSIX;
@@ -3652,16 +3652,16 @@ void igc_update_stats(struct igc_adapter *adapter)
 	adapter->stats.mgpdc += rd32(IGC_MGTPDC);
 }
 
-static void igc_nfc_filter_exit(struct igc_adapter *adapter)
+static void igc_nfc_rule_exit(struct igc_adapter *adapter)
 {
-	struct igc_nfc_filter *rule;
+	struct igc_nfc_rule *rule;
 
-	spin_lock(&adapter->nfc_lock);
+	spin_lock(&adapter->nfc_rule_lock);
 
-	hlist_for_each_entry(rule, &adapter->nfc_filter_list, nfc_node)
-		igc_erase_filter(adapter, rule);
+	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node)
+		igc_disable_nfc_rule(adapter, rule);
 
-	spin_unlock(&adapter->nfc_lock);
+	spin_unlock(&adapter->nfc_rule_lock);
 }
 
 /**
@@ -3682,7 +3682,7 @@ void igc_down(struct igc_adapter *adapter)
 	wr32(IGC_RCTL, rctl & ~IGC_RCTL_EN);
 	/* flush and sleep below */
 
-	igc_nfc_filter_exit(adapter);
+	igc_nfc_rule_exit(adapter);
 
 	/* set trans_start so we don't get spurious watchdogs during reset */
 	netif_trans_update(netdev);
@@ -3834,17 +3834,17 @@ static int igc_set_features(struct net_device *netdev,
 
 	if (!(features & NETIF_F_NTUPLE)) {
 		struct hlist_node *node2;
-		struct igc_nfc_filter *rule;
+		struct igc_nfc_rule *rule;
 
-		spin_lock(&adapter->nfc_lock);
+		spin_lock(&adapter->nfc_rule_lock);
 		hlist_for_each_entry_safe(rule, node2,
-					  &adapter->nfc_filter_list, nfc_node) {
-			igc_erase_filter(adapter, rule);
+					  &adapter->nfc_rule_list, nfc_node) {
+			igc_disable_nfc_rule(adapter, rule);
 			hlist_del(&rule->nfc_node);
 			kfree(rule);
 		}
-		spin_unlock(&adapter->nfc_lock);
-		adapter->nfc_filter_count = 0;
+		spin_unlock(&adapter->nfc_rule_lock);
+		adapter->nfc_rule_count = 0;
 	}
 
 	netdev->features = features;
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
