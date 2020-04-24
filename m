Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F10AA1B8068
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A38E720448;
	Fri, 24 Apr 2020 20:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6qJWGZkHnKUW; Fri, 24 Apr 2020 20:17:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 264D72156E;
	Fri, 24 Apr 2020 20:17:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26E2C1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 22D78868BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WKTuAxrnf1QK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 277F4868A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
IronPort-SDR: TFVNB2O/CXHwP+2elRb6Mya5q0WgAEm5fEjIZlNheHObSv+Z1gAa0rrcMubzsePB8vr3k8o4HT
 vjvUV/hRc7nw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:26 -0700
IronPort-SDR: UCr2dySd9tBn1DDNlrvO1navv2qN8uRszplTLAh1KM6YcuYBG09ZxprcY2iLOoL1HNhEvk/Yp7
 hsEYvdI4J8OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474511"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:26 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:13 -0700
Message-Id: <20200424201623.10971-10-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 09/19] igc: Fix 'sw_idx' type in struct
 igc_nfc_rule
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

The 'sw_idx' field from 'struct igc_nfc_rule' is u16 type but it is
assigned an u32 value in igc_ethtool_init_nfc_rule(). This patch changes
'sw_idx' type to u32 so they match. Also, it makes more sense to call
this field 'location' since it holds the NFC rule location.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  2 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index fcc6261d7f67..ae7d48070ee2 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -463,7 +463,7 @@ struct igc_nfc_filter {
 struct igc_nfc_rule {
 	struct hlist_node nfc_node;
 	struct igc_nfc_filter filter;
-	u16 sw_idx;
+	u32 location;
 	u16 action;
 };
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index bdb7c99f66be..93274e75e8c5 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -940,11 +940,11 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 	cmd->data = IGC_MAX_RXNFC_RULES;
 
 	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node) {
-		if (fsp->location <= rule->sw_idx)
+		if (fsp->location <= rule->location)
 			break;
 	}
 
-	if (!rule || fsp->location != rule->sw_idx)
+	if (!rule || fsp->location != rule->location)
 		return -EINVAL;
 
 	if (!rule->filter.match_flags)
@@ -991,7 +991,7 @@ static int igc_ethtool_get_nfc_rules(struct igc_adapter *adapter,
 	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node) {
 		if (cnt == cmd->rule_cnt)
 			return -EMSGSIZE;
-		rule_locs[cnt] = rule->sw_idx;
+		rule_locs[cnt] = rule->location;
 		cnt++;
 	}
 
@@ -1240,7 +1240,7 @@ int igc_disable_nfc_rule(struct igc_adapter *adapter,
 
 static int igc_ethtool_update_nfc_rule(struct igc_adapter *adapter,
 				       struct igc_nfc_rule *input,
-				       u16 sw_idx)
+				       u32 location)
 {
 	struct igc_nfc_rule *rule, *parent;
 	int err = -EINVAL;
@@ -1250,13 +1250,13 @@ static int igc_ethtool_update_nfc_rule(struct igc_adapter *adapter,
 
 	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node) {
 		/* hash found, or no matching entry */
-		if (rule->sw_idx >= sw_idx)
+		if (rule->location >= location)
 			break;
 		parent = rule;
 	}
 
 	/* if there is an old rule occupying our place remove it */
-	if (rule && rule->sw_idx == sw_idx) {
+	if (rule && rule->location == location) {
 		if (!input)
 			err = igc_disable_nfc_rule(adapter, rule);
 
@@ -1289,7 +1289,7 @@ static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
 	INIT_HLIST_NODE(&rule->nfc_node);
 
 	rule->action = fsp->ring_cookie;
-	rule->sw_idx = fsp->location;
+	rule->location = fsp->location;
 
 	if ((fsp->flow_type & FLOW_EXT) && fsp->m_ext.vlan_tci) {
 		rule->filter.vlan_tci = ntohs(fsp->h_ext.vlan_tci);
@@ -1412,7 +1412,7 @@ static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
 	if (err)
 		goto err;
 
-	igc_ethtool_update_nfc_rule(adapter, rule, rule->sw_idx);
+	igc_ethtool_update_nfc_rule(adapter, rule, rule->location);
 
 	spin_unlock(&adapter->nfc_rule_lock);
 	return 0;
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
