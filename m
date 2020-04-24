Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9101B8063
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E229887FEA;
	Fri, 24 Apr 2020 20:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xAb5MibAaxCt; Fri, 24 Apr 2020 20:17:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 73A4687FD1;
	Fri, 24 Apr 2020 20:17:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BDE101BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BA53786BA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5W2pcpmhSAcU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 42257868C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
IronPort-SDR: aiwywdPN/KP3JYGqyOBl5Rb4wB48BQMHdfhQlWkjk7qbaPCNdg1Tudj2ywtIk3FEsNis+QpVLq
 Q/v9KTplGmLw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:27 -0700
IronPort-SDR: nnCDQnp47gU/Z5gaEq4fc0Ang0IZ74K5ErWZ29KNayt38J7r+YoT73s50lpeGr7BsI0m66uObe
 b9JgXTtMhfWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474512"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:26 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:14 -0700
Message-Id: <20200424201623.10971-11-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 10/19] igc: Fix locking issue when
 retrieving NFC rules
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

Access to NFC rules stored in adapter->nfc_rule_list is protect by
adapter->nfc_rule_lock. The functions igc_ethtool_get_nfc_rule()
and igc_ethtool_get_nfc_rules() are missing to hold the lock while
accessing rule objects.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 93274e75e8c5..38ac61c04e5c 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -939,16 +939,18 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 
 	cmd->data = IGC_MAX_RXNFC_RULES;
 
+	spin_lock(&adapter->nfc_rule_lock);
+
 	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node) {
 		if (fsp->location <= rule->location)
 			break;
 	}
 
 	if (!rule || fsp->location != rule->location)
-		return -EINVAL;
+		goto out;
 
 	if (!rule->filter.match_flags)
-		return -EINVAL;
+		goto out;
 
 	fsp->flow_type = ETHER_FLOW;
 	fsp->ring_cookie = rule->action;
@@ -976,7 +978,12 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 		eth_broadcast_addr(fsp->m_u.ether_spec.h_source);
 	}
 
+	spin_unlock(&adapter->nfc_rule_lock);
 	return 0;
+
+out:
+	spin_unlock(&adapter->nfc_rule_lock);
+	return -EINVAL;
 }
 
 static int igc_ethtool_get_nfc_rules(struct igc_adapter *adapter,
@@ -988,13 +995,19 @@ static int igc_ethtool_get_nfc_rules(struct igc_adapter *adapter,
 
 	cmd->data = IGC_MAX_RXNFC_RULES;
 
+	spin_lock(&adapter->nfc_rule_lock);
+
 	hlist_for_each_entry(rule, &adapter->nfc_rule_list, nfc_node) {
-		if (cnt == cmd->rule_cnt)
+		if (cnt == cmd->rule_cnt) {
+			spin_unlock(&adapter->nfc_rule_lock);
 			return -EMSGSIZE;
+		}
 		rule_locs[cnt] = rule->location;
 		cnt++;
 	}
 
+	spin_unlock(&adapter->nfc_rule_lock);
+
 	cmd->rule_cnt = cnt;
 
 	return 0;
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
