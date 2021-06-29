Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A013B6DBB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 06:44:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9B3440441;
	Tue, 29 Jun 2021 04:44:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wcTCFp_ITGSP; Tue, 29 Jun 2021 04:44:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA7A14023D;
	Tue, 29 Jun 2021 04:44:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5B8A1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC3D460771
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UfL4EZPXYp2D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 04:43:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE215605FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="207900745"
X-IronPort-AV: E=Sophos;i="5.83,307,1616482800"; d="scan'208";a="207900745"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 21:43:46 -0700
X-IronPort-AV: E=Sophos;i="5.83,307,1616482800"; d="scan'208";a="446881855"
Received: from twilli3-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.12.190])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 21:43:46 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Jun 2021 21:43:29 -0700
Message-Id: <20210629044332.3491232-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210629044332.3491232-1-vinicius.gomes@intel.com>
References: <20210629044332.3491232-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v2 2/5] igc: Integrate flex
 filter into ethtool ops
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

Use the flex filter mechanism to extend the current ethtool filter
operations by intercoperating the user data. This allows to match
eight more bytes within a Ethernet frame in addition to macs, ether
types and vlan.

The matching pattern looks like this:

 * dest_mac [6]
 * src_mac [6]
 * tpid [2]
 * vlan tci [2]
 * ether type [2]
 * user data [8]

This can be used to match Profinet traffic classes by FrameID range.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc.h         |  24 ++-
 drivers/net/ethernet/intel/igc/igc_defines.h |   4 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  20 ++
 drivers/net/ethernet/intel/igc/igc_main.c    | 190 ++++++++++++++++++-
 4 files changed, 228 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 6016c132d981..c21441c8908e 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -478,18 +478,28 @@ struct igc_q_vector {
 };
 
 enum igc_filter_match_flags {
-	IGC_FILTER_FLAG_ETHER_TYPE =	0x1,
-	IGC_FILTER_FLAG_VLAN_TCI   =	0x2,
-	IGC_FILTER_FLAG_SRC_MAC_ADDR =	0x4,
-	IGC_FILTER_FLAG_DST_MAC_ADDR =	0x8,
+	IGC_FILTER_FLAG_ETHER_TYPE =	BIT(0),
+	IGC_FILTER_FLAG_VLAN_TCI   =	BIT(1),
+	IGC_FILTER_FLAG_SRC_MAC_ADDR =	BIT(2),
+	IGC_FILTER_FLAG_DST_MAC_ADDR =	BIT(3),
+	IGC_FILTER_FLAG_USER_DATA =	BIT(4),
+	IGC_FILTER_FLAG_VLAN_ETYPE =	BIT(5),
 };
 
 struct igc_nfc_filter {
 	u8 match_flags;
 	u16 etype;
+	__be16 vlan_etype;
 	u16 vlan_tci;
 	u8 src_addr[ETH_ALEN];
 	u8 dst_addr[ETH_ALEN];
+	u8 user_data[8];
+	u8 user_mask[8];
+	u8 flex_index;
+	u8 rx_queue;
+	u8 prio;
+	u8 immediate_irq;
+	u8 drop;
 };
 
 struct igc_nfc_rule {
@@ -499,10 +509,10 @@ struct igc_nfc_rule {
 	u16 action;
 };
 
-/* IGC supports a total of 32 NFC rules: 16 MAC address based,, 8 VLAN priority
- * based, and 8 ethertype based.
+/* IGC supports a total of 32 NFC rules: 16 MAC address based, 8 VLAN priority
+ * based, 8 ethertype based and 32 Flex filter based rules.
  */
-#define IGC_MAX_RXNFC_RULES		32
+#define IGC_MAX_RXNFC_RULES		64
 
 struct igc_flex_filter {
 	u8 index;
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 0a29d9eca634..7bdd0b1abf20 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -32,6 +32,8 @@
 #define IGC_WUFC_FLX6		BIT(22)	   /* Flexible Filter 6 Enable */
 #define IGC_WUFC_FLX7		BIT(23)	   /* Flexible Filter 7 Enable */
 
+#define IGC_WUFC_FILTER_MASK GENMASK(23, 14)
+
 #define IGC_CTRL_ADVD3WUC	0x00100000  /* D3 WUC */
 
 /* Wake Up Status */
@@ -81,6 +83,8 @@
 #define IGC_WUFC_EXT_FLX30	BIT(30)	/* Flexible Filter 30 Enable */
 #define IGC_WUFC_EXT_FLX31	BIT(31)	/* Flexible Filter 31 Enable */
 
+#define IGC_WUFC_EXT_FILTER_MASK GENMASK(31, 8)
+
 /* Physical Func Reset Done Indication */
 #define IGC_CTRL_EXT_LINK_MODE_MASK	0x00C00000
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index fa4171860623..3d46eff87638 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -979,6 +979,12 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 		eth_broadcast_addr(fsp->m_u.ether_spec.h_source);
 	}
 
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_USER_DATA) {
+		fsp->flow_type |= FLOW_EXT;
+		memcpy(fsp->h_ext.data, rule->filter.user_data, sizeof(fsp->h_ext.data));
+		memcpy(fsp->m_ext.data, rule->filter.user_mask, sizeof(fsp->m_ext.data));
+	}
+
 	mutex_unlock(&adapter->nfc_rule_lock);
 	return 0;
 
@@ -1215,6 +1221,20 @@ static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
 		ether_addr_copy(rule->filter.dst_addr,
 				fsp->h_u.ether_spec.h_dest);
 	}
+
+	/* Check for user defined data */
+	if ((fsp->flow_type & FLOW_EXT) &&
+	    (fsp->h_ext.data[0] || fsp->h_ext.data[1])) {
+		rule->filter.match_flags |= IGC_FILTER_FLAG_USER_DATA;
+		memcpy(rule->filter.user_data, fsp->h_ext.data, sizeof(fsp->h_ext.data));
+		memcpy(rule->filter.user_mask, fsp->m_ext.data, sizeof(fsp->m_ext.data));
+
+		/* VLAN etype matching is only valid using flex filter */
+		if ((fsp->flow_type & FLOW_EXT) && fsp->h_ext.vlan_etype) {
+			rule->filter.vlan_etype = fsp->h_ext.vlan_etype;
+			rule->filter.match_flags |= IGC_FILTER_FLAG_VLAN_ETYPE;
+		}
+	}
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0dfd3857810b..ea449c83a952 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3120,8 +3120,8 @@ static int igc_flex_filter_select(struct igc_adapter *adapter,
 	return 0;
 }
 
-static int __maybe_unused igc_write_flex_filter_ll(struct igc_adapter *adapter,
-						   struct igc_flex_filter *input)
+static int igc_write_flex_filter_ll(struct igc_adapter *adapter,
+				    struct igc_flex_filter *input)
 {
 	struct device *dev = &adapter->pdev->dev;
 	struct igc_hw *hw = &adapter->hw;
@@ -3213,11 +3213,192 @@ static int __maybe_unused igc_write_flex_filter_ll(struct igc_adapter *adapter,
 	return 0;
 }
 
+static void igc_flex_filter_add_field(struct igc_flex_filter *flex,
+				      const void *src, unsigned int offset,
+				      size_t len, const void *mask)
+{
+	int i;
+
+	/* data */
+	memcpy(&flex->data[offset], src, len);
+
+	/* mask */
+	for (i = 0; i < len; ++i) {
+		const unsigned int idx = i + offset;
+		const u8 *ptr = mask;
+
+		if (mask) {
+			if (ptr[i] & 0xff)
+				flex->mask[idx / 8] |= BIT(idx % 8);
+
+			continue;
+		}
+
+		flex->mask[idx / 8] |= BIT(idx % 8);
+	}
+}
+
+static int igc_find_avail_flex_filter_slot(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 wufc, wufc_ext;
+	int i;
+
+	wufc = rd32(IGC_WUFC);
+	wufc_ext = rd32(IGC_WUFC_EXT);
+
+	for (i = 0; i < MAX_FLEX_FILTER; i++) {
+		if (i < 8) {
+			if (!(wufc & (IGC_WUFC_FLX0 << i)))
+				return i;
+		} else {
+			if (!(wufc_ext & (IGC_WUFC_EXT_FLX8 << (i - 8))))
+				return i;
+		}
+	}
+
+	return -ENOSPC;
+}
+
+static bool igc_flex_filter_in_use(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 wufc, wufc_ext;
+
+	wufc = rd32(IGC_WUFC);
+	wufc_ext = rd32(IGC_WUFC_EXT);
+
+	if (wufc & IGC_WUFC_FILTER_MASK)
+		return true;
+
+	if (wufc_ext & IGC_WUFC_EXT_FILTER_MASK)
+		return true;
+
+	return false;
+}
+
+static int igc_add_flex_filter(struct igc_adapter *adapter,
+			       struct igc_nfc_rule *rule)
+{
+	struct igc_flex_filter flex = { };
+	struct igc_nfc_filter *filter = &rule->filter;
+	unsigned int eth_offset, user_offset;
+	int ret, index;
+	bool vlan;
+
+	index = igc_find_avail_flex_filter_slot(adapter);
+	if (index < 0)
+		return -ENOSPC;
+
+	/* Construct the flex filter:
+	 *  -> dest_mac [6]
+	 *  -> src_mac [6]
+	 *  -> tpid [2]
+	 *  -> vlan tci [2]
+	 *  -> ether type [2]
+	 *  -> user data [8]
+	 *  -> = 26 bytes => 32 length
+	 */
+	flex.index    = index;
+	flex.length   = 32;
+	flex.rx_queue = rule->action;
+
+	vlan = rule->filter.vlan_tci || rule->filter.vlan_etype;
+	eth_offset = vlan ? 16 : 12;
+	user_offset = vlan ? 18 : 14;
+
+	/* Add destination MAC  */
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
+		igc_flex_filter_add_field(&flex, &filter->dst_addr, 0,
+					  ETH_ALEN, NULL);
+
+	/* Add source MAC */
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
+		igc_flex_filter_add_field(&flex, &filter->src_addr, 6,
+					  ETH_ALEN, NULL);
+
+	/* Add VLAN etype */
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE)
+		igc_flex_filter_add_field(&flex, &filter->vlan_etype, 12,
+					  sizeof(filter->vlan_etype),
+					  NULL);
+
+	/* Add VLAN TCI */
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI)
+		igc_flex_filter_add_field(&flex, &filter->vlan_tci, 14,
+					  sizeof(filter->vlan_tci), NULL);
+
+	/* Add Ether type */
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
+		__be16 etype = cpu_to_be16(filter->etype);
+
+		igc_flex_filter_add_field(&flex, &etype, eth_offset,
+					  sizeof(etype), NULL);
+	}
+
+	/* Add user data */
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_USER_DATA)
+		igc_flex_filter_add_field(&flex, &filter->user_data,
+					  user_offset,
+					  sizeof(filter->user_data),
+					  filter->user_mask);
+
+	/* Add it down to the hardware and enable it. */
+	ret = igc_write_flex_filter_ll(adapter, &flex);
+	if (ret)
+		return ret;
+
+	filter->flex_index = index;
+
+	return 0;
+}
+
+static void igc_del_flex_filter(struct igc_adapter *adapter,
+				u16 reg_index)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 wufc;
+
+	/* Just disable the filter. The filter table itself is kept
+	 * intact. Another flex_filter_add() should override the "old" data
+	 * then.
+	 */
+	if (reg_index > 8) {
+		u32 wufc_ext = rd32(IGC_WUFC_EXT);
+
+		wufc_ext &= ~(IGC_WUFC_EXT_FLX8 << (reg_index - 8));
+		wr32(IGC_WUFC_EXT, wufc_ext);
+	} else {
+		wufc = rd32(IGC_WUFC);
+
+		wufc &= ~(IGC_WUFC_FLX0 << reg_index);
+		wr32(IGC_WUFC, wufc);
+	}
+
+	if (igc_flex_filter_in_use(adapter))
+		return;
+
+	/* No filters are in use, we may disable flex filters */
+	wufc = rd32(IGC_WUFC);
+	wufc &= ~IGC_WUFC_FLEX_HQ;
+	wr32(IGC_WUFC, wufc);
+}
+
 static int igc_enable_nfc_rule(struct igc_adapter *adapter,
-			       const struct igc_nfc_rule *rule)
+			       struct igc_nfc_rule *rule)
 {
 	int err;
 
+	/* Check for user data first: When user data is set, the only option is
+	 * to use a flex filter. When more options are set (ethertype, vlan tci,
+	 * ...) construct a flex filter matching all of that.
+	 */
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_USER_DATA) {
+		err = igc_add_flex_filter(adapter, rule);
+		if (err)
+			return err;
+	}
+
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
 		err = igc_add_etype_filter(adapter, rule->filter.etype,
 					   rule->action);
@@ -3254,6 +3435,9 @@ static int igc_enable_nfc_rule(struct igc_adapter *adapter,
 static void igc_disable_nfc_rule(struct igc_adapter *adapter,
 				 const struct igc_nfc_rule *rule)
 {
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_USER_DATA)
+		igc_del_flex_filter(adapter, rule->filter.flex_index);
+
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE)
 		igc_del_etype_filter(adapter, rule->filter.etype);
 
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
