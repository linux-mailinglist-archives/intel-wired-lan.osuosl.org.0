Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 748C23A38F2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jun 2021 02:40:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BE4B60AB5;
	Fri, 11 Jun 2021 00:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YYXz8W7gEVVc; Fri, 11 Jun 2021 00:40:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F41F60AAA;
	Fri, 11 Jun 2021 00:40:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 057101C1178
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C46A830B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6w3YCaQqplb6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jun 2021 00:40:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B573383189
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:16 +0000 (UTC)
IronPort-SDR: 9k0Ct1tBuQim5SZyQHwSSXm63JcHV+qDjxGz3/+N2tah7LV4xV34DNBHvUczQavBmhd23c9hny
 Hny2izEeSgHw==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205397143"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="205397143"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:40:16 -0700
IronPort-SDR: 6+i0KuQ26yirgK5elB9ZjB//YokrXcjfwVZ63BXNysj8AhknxxuGhbIC1T1fRzsUGKvsN85t/X
 sRuJplZI9GBA==
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="448932918"
Received: from caclark-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.156.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:40:15 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Jun 2021 17:39:23 -0700
Message-Id: <20210611003924.492853-5-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210611003924.492853-1-vinicius.gomes@intel.com>
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 4/5] igc: Make flex filter
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
index 54a1779fa53a..5710e5420b40 100644
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
index 9abcecc57534..ac558a6defe7 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3391,14 +3391,8 @@ static int igc_enable_nfc_rule(struct igc_adapter *adapter,
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
@@ -3437,8 +3431,10 @@ static int igc_enable_nfc_rule(struct igc_adapter *adapter,
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
