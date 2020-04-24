Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E89F41B806A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 999D686B89;
	Fri, 24 Apr 2020 20:17:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Agbm4GKw2SHq; Fri, 24 Apr 2020 20:17:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0352786BF7;
	Fri, 24 Apr 2020 20:17:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82DC01BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E38C87FCC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fw8feYW3Difg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 804DB87FEA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
IronPort-SDR: a052hZaPiZxAAHebYHCd0mHJvAAHnCyVUHhBXRtxQHzJtmuVqpPsVZd+J3nq4K1FHGbMhLelum
 eTti8C2vFPvw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:28 -0700
IronPort-SDR: 83t1QgCc8hTmTpFWXZnOYcC5WVaJkaEXN3S5LmvTtdJ+JKnLnQ0DiMtizpm+4HDQuvtSPbjHx2
 1P+SkmfgGHtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474522"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:28 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:19 -0700
Message-Id: <20200424201623.10971-16-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 15/19] igc: Fix NFC rules leak when driver
 is unloaded
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

If we have RFC rules in adapter->nfc_rule_list when the IGC driver
is unloaded, all rules are leaked. This patch fixes the issue by
introducing the helper igc_flush_nfc_rules() and calling it in
igc_remove(). It also updates igc_set_features() so is reuses the
new helper instead of re-implementing it.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 29 +++++++++++++----------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index e09d74331257..64e372f38c6b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2545,6 +2545,18 @@ void igc_del_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule)
 	kfree(rule);
 }
 
+static void igc_flush_nfc_rules(struct igc_adapter *adapter)
+{
+	struct igc_nfc_rule *rule, *tmp;
+
+	spin_lock(&adapter->nfc_rule_lock);
+
+	list_for_each_entry_safe(rule, tmp, &adapter->nfc_rule_list, list)
+		igc_del_nfc_rule(adapter, rule);
+
+	spin_unlock(&adapter->nfc_rule_lock);
+}
+
 /**
  * igc_add_nfc_rule() - Add NFC rule.
  * @adapter: Pointer to adapter.
@@ -3968,19 +3980,8 @@ static int igc_set_features(struct net_device *netdev,
 	if (!(changed & (NETIF_F_RXALL | NETIF_F_NTUPLE)))
 		return 0;
 
-	if (!(features & NETIF_F_NTUPLE)) {
-		struct igc_nfc_rule *rule, *tmp;
-
-		spin_lock(&adapter->nfc_rule_lock);
-		list_for_each_entry_safe(rule, tmp,
-					 &adapter->nfc_rule_list, list) {
-			igc_disable_nfc_rule(adapter, rule);
-			list_del(&rule->list);
-			kfree(rule);
-		}
-		spin_unlock(&adapter->nfc_rule_lock);
-		adapter->nfc_rule_count = 0;
-	}
+	if (!(features & NETIF_F_NTUPLE))
+		igc_flush_nfc_rules(adapter);
 
 	netdev->features = features;
 
@@ -5250,6 +5251,8 @@ static void igc_remove(struct pci_dev *pdev)
 
 	pm_runtime_get_noresume(&pdev->dev);
 
+	igc_flush_nfc_rules(adapter);
+
 	igc_ptp_stop(adapter);
 
 	set_bit(__IGC_DOWN, &adapter->state);
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
