Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A70313B6DBA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 06:44:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AFA2834E1;
	Tue, 29 Jun 2021 04:44:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MpfqpKmFjkvk; Tue, 29 Jun 2021 04:44:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EF1783486;
	Tue, 29 Jun 2021 04:44:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E2AE61BF30A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB9E76005E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KCtgXDnULHDr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 04:43:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF54E60771
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="207900748"
X-IronPort-AV: E=Sophos;i="5.83,307,1616482800"; d="scan'208";a="207900748"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 21:43:47 -0700
X-IronPort-AV: E=Sophos;i="5.83,307,1616482800"; d="scan'208";a="446881865"
Received: from twilli3-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.12.190])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 21:43:47 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Jun 2021 21:43:31 -0700
Message-Id: <20210629044332.3491232-5-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210629044332.3491232-1-vinicius.gomes@intel.com>
References: <20210629044332.3491232-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v2 4/5] igc: Make flex filter
 more flexible
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kurt Kanzenbach <kurt@linutronix.de>

Currently flex filters are only used for filters containing user data.
However, it makes sense to utilize them also for filters having
multiple conditions, because that's not supported by the driver at the
moment. Add it.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 27 ++++++++++++--------
 drivers/net/ethernet/intel/igc/igc_main.c    | 14 ++++------
 3 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index c21441c8908e..a0ecfe5a4078 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -507,6 +507,7 @@ struct igc_nfc_rule {
 	struct igc_nfc_filter filter;
 	u32 location;
 	u16 action;
+	bool flex;
 };
 
 /* IGC supports a total of 32 NFC rules: 16 MAC address based, 8 VLAN priority
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 5a7b27b2a95c..d3e84416248e 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1222,19 +1222,29 @@ static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
 				fsp->h_u.ether_spec.h_dest);
 	}
 
+	/* VLAN etype matching */
+	if ((fsp->flow_type & FLOW_EXT) && fsp->h_ext.vlan_etype) {
+		rule->filter.vlan_etype = fsp->h_ext.vlan_etype;
+		rule->filter.match_flags |= IGC_FILTER_FLAG_VLAN_ETYPE;
+	}
+
 	/* Check for user defined data */
 	if ((fsp->flow_type & FLOW_EXT) &&
 	    (fsp->h_ext.data[0] || fsp->h_ext.data[1])) {
 		rule->filter.match_flags |= IGC_FILTER_FLAG_USER_DATA;
 		memcpy(rule->filter.user_data, fsp->h_ext.data, sizeof(fsp->h_ext.data));
 		memcpy(rule->filter.user_mask, fsp->m_ext.data, sizeof(fsp->m_ext.data));
-
-		/* VLAN etype matching is only valid using flex filter */
-		if ((fsp->flow_type & FLOW_EXT) && fsp->h_ext.vlan_etype) {
-			rule->filter.vlan_etype = fsp->h_ext.vlan_etype;
-			rule->filter.match_flags |= IGC_FILTER_FLAG_VLAN_ETYPE;
-		}
 	}
+
+	/* When multiple filter options or user data or vlan etype is set, use a
+	 * flex filter.
+	 */
+	if ((rule->filter.match_flags & IGC_FILTER_FLAG_USER_DATA) ||
+	    (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE) ||
+	    (rule->filter.match_flags & (rule->filter.match_flags - 1)))
+		rule->flex = true;
+	else
+		rule->flex = false;
 }
 
 /**
@@ -1264,11 +1274,6 @@ static int igc_ethtool_check_nfc_rule(struct igc_adapter *adapter,
 		return -EINVAL;
 	}
 
-	if (flags & (flags - 1)) {
-		netdev_dbg(dev, "Rule with multiple matches not supported\n");
-		return -EOPNOTSUPP;
-	}
-
 	list_for_each_entry(tmp, &adapter->nfc_rule_list, list) {
 		if (!memcmp(&rule->filter, &tmp->filter,
 			    sizeof(rule->filter)) &&
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ea449c83a952..6dc502b27146 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3389,14 +3389,8 @@ static int igc_enable_nfc_rule(struct igc_adapter *adapter,
 {
 	int err;
 
-	/* Check for user data first: When user data is set, the only option is
-	 * to use a flex filter. When more options are set (ethertype, vlan tci,
-	 * ...) construct a flex filter matching all of that.
-	 */
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_USER_DATA) {
-		err = igc_add_flex_filter(adapter, rule);
-		if (err)
-			return err;
+	if (rule->flex) {
+		return igc_add_flex_filter(adapter, rule);
 	}
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
@@ -3435,8 +3429,10 @@ static int igc_enable_nfc_rule(struct igc_adapter *adapter,
 static void igc_disable_nfc_rule(struct igc_adapter *adapter,
 				 const struct igc_nfc_rule *rule)
 {
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_USER_DATA)
+	if (rule->flex) {
 		igc_del_flex_filter(adapter, rule->filter.flex_index);
+		return;
+	}
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE)
 		igc_del_etype_filter(adapter, rule->filter.etype);
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
