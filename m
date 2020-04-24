Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7848A1B806E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2788F87FD3;
	Fri, 24 Apr 2020 20:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r-9fwkTTtyTm; Fri, 24 Apr 2020 20:17:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A06DD88012;
	Fri, 24 Apr 2020 20:17:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C4671BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 392F787FEF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yc7gu90QfhrG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1FD7E87F94
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:30 +0000 (UTC)
IronPort-SDR: wsgiBNqVvQ8Y6sJHcj/LpIBORVgOSWryOo5AI9Hg6m551oCLp1sKGbbDGF0NmfwmbM5LpULYBq
 nKgIhBJn5pCA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:30 -0700
IronPort-SDR: x0ERnLCgk6e9CB0KzLzXfMvAz6xN9at2mYRjE2htCRen+HWH96W8RWJxH/7vaJ2ERpa050GWal
 XdYDmouYfR5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474527"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:29 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:22 -0700
Message-Id: <20200424201623.10971-19-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 18/19] igc: Change adapter->nfc_rule_lock
 to mutex
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

This patch changes adapter->nfc_rule_lock type from spin_lock to mutex
so we avoid unnecessary busy waiting on lock contention.

A closer look at the execution context of NFC rule API users shows that
all of them run in process context. The API users are: ethtool ops,
igc_configure(), called when interface is brought up by user or reset
workequeue thread, igc_down(), called when interface is brought down,
and igc_remove(), called when driver is unloaded.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
Note that checkpatch.pl reports an issue with this patch. The issue is a false
positive. There is a comment right above that line referring to the lock.

Here is the report:

CHECK: struct mutex definition without comment
#31: FILE: drivers/net/ethernet/intel/igc/igc.h:193:
+       struct mutex nfc_rule_lock;
---
 drivers/net/ethernet/intel/igc/igc.h         |  2 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 24 ++++++++++----------
 drivers/net/ethernet/intel/igc/igc_main.c    | 14 ++++++------
 3 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index a484b328268b..14f9edaaaf83 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -190,7 +190,7 @@ struct igc_adapter {
 	/* Any access to elements in nfc_rule_list is protected by the
 	 * nfc_rule_lock.
 	 */
-	spinlock_t nfc_rule_lock;
+	struct mutex nfc_rule_lock;
 	struct list_head nfc_rule_list;
 	unsigned int nfc_rule_count;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 32bc77af71dd..db42dc046403 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -939,7 +939,7 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 
 	cmd->data = IGC_MAX_RXNFC_RULES;
 
-	spin_lock(&adapter->nfc_rule_lock);
+	mutex_lock(&adapter->nfc_rule_lock);
 
 	rule = igc_get_nfc_rule(adapter, fsp->location);
 	if (!rule)
@@ -971,11 +971,11 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 		eth_broadcast_addr(fsp->m_u.ether_spec.h_source);
 	}
 
-	spin_unlock(&adapter->nfc_rule_lock);
+	mutex_unlock(&adapter->nfc_rule_lock);
 	return 0;
 
 out:
-	spin_unlock(&adapter->nfc_rule_lock);
+	mutex_unlock(&adapter->nfc_rule_lock);
 	return -EINVAL;
 }
 
@@ -988,18 +988,18 @@ static int igc_ethtool_get_nfc_rules(struct igc_adapter *adapter,
 
 	cmd->data = IGC_MAX_RXNFC_RULES;
 
-	spin_lock(&adapter->nfc_rule_lock);
+	mutex_lock(&adapter->nfc_rule_lock);
 
 	list_for_each_entry(rule, &adapter->nfc_rule_list, list) {
 		if (cnt == cmd->rule_cnt) {
-			spin_unlock(&adapter->nfc_rule_lock);
+			mutex_unlock(&adapter->nfc_rule_lock);
 			return -EMSGSIZE;
 		}
 		rule_locs[cnt] = rule->location;
 		cnt++;
 	}
 
-	spin_unlock(&adapter->nfc_rule_lock);
+	mutex_unlock(&adapter->nfc_rule_lock);
 
 	cmd->rule_cnt = cnt;
 
@@ -1303,7 +1303,7 @@ static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
 
 	igc_ethtool_init_nfc_rule(rule, fsp);
 
-	spin_lock(&adapter->nfc_rule_lock);
+	mutex_lock(&adapter->nfc_rule_lock);
 
 	err = igc_ethtool_check_nfc_rule(adapter, rule);
 	if (err)
@@ -1317,11 +1317,11 @@ static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
 	if (err)
 		goto err;
 
-	spin_unlock(&adapter->nfc_rule_lock);
+	mutex_unlock(&adapter->nfc_rule_lock);
 	return 0;
 
 err:
-	spin_unlock(&adapter->nfc_rule_lock);
+	mutex_unlock(&adapter->nfc_rule_lock);
 	kfree(rule);
 	return err;
 }
@@ -1333,17 +1333,17 @@ static int igc_ethtool_del_nfc_rule(struct igc_adapter *adapter,
 		(struct ethtool_rx_flow_spec *)&cmd->fs;
 	struct igc_nfc_rule *rule;
 
-	spin_lock(&adapter->nfc_rule_lock);
+	mutex_lock(&adapter->nfc_rule_lock);
 
 	rule = igc_get_nfc_rule(adapter, fsp->location);
 	if (!rule) {
-		spin_unlock(&adapter->nfc_rule_lock);
+		mutex_unlock(&adapter->nfc_rule_lock);
 		return -EINVAL;
 	}
 
 	igc_del_nfc_rule(adapter, rule);
 
-	spin_unlock(&adapter->nfc_rule_lock);
+	mutex_unlock(&adapter->nfc_rule_lock);
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 134523064fe9..38327d9ec385 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2540,12 +2540,12 @@ static void igc_flush_nfc_rules(struct igc_adapter *adapter)
 {
 	struct igc_nfc_rule *rule, *tmp;
 
-	spin_lock(&adapter->nfc_rule_lock);
+	mutex_lock(&adapter->nfc_rule_lock);
 
 	list_for_each_entry_safe(rule, tmp, &adapter->nfc_rule_list, list)
 		igc_del_nfc_rule(adapter, rule);
 
-	spin_unlock(&adapter->nfc_rule_lock);
+	mutex_unlock(&adapter->nfc_rule_lock);
 }
 
 /**
@@ -2584,24 +2584,24 @@ static void igc_restore_nfc_rules(struct igc_adapter *adapter)
 {
 	struct igc_nfc_rule *rule;
 
-	spin_lock(&adapter->nfc_rule_lock);
+	mutex_lock(&adapter->nfc_rule_lock);
 
 	list_for_each_entry_reverse(rule, &adapter->nfc_rule_list, list)
 		igc_enable_nfc_rule(adapter, rule);
 
-	spin_unlock(&adapter->nfc_rule_lock);
+	mutex_unlock(&adapter->nfc_rule_lock);
 }
 
 static void igc_nfc_rule_exit(struct igc_adapter *adapter)
 {
 	struct igc_nfc_rule *rule;
 
-	spin_lock(&adapter->nfc_rule_lock);
+	mutex_lock(&adapter->nfc_rule_lock);
 
 	list_for_each_entry(rule, &adapter->nfc_rule_list, list)
 		igc_disable_nfc_rule(adapter, rule);
 
-	spin_unlock(&adapter->nfc_rule_lock);
+	mutex_unlock(&adapter->nfc_rule_lock);
 }
 
 static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
@@ -3574,7 +3574,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
 				VLAN_HLEN;
 	adapter->min_frame_size = ETH_ZLEN + ETH_FCS_LEN;
 
-	spin_lock_init(&adapter->nfc_rule_lock);
+	mutex_init(&adapter->nfc_rule_lock);
 	INIT_LIST_HEAD(&adapter->nfc_rule_list);
 	adapter->nfc_rule_count = 0;
 
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
