Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 029063A38F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jun 2021 02:40:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B51660AB5;
	Fri, 11 Jun 2021 00:40:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VeGe1APFSzgp; Fri, 11 Jun 2021 00:40:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BA2260AAA;
	Fri, 11 Jun 2021 00:40:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 15BAE1C1178
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 81F4E83189
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VfsbpAbecH0Y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jun 2021 00:40:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E094282FCB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:15 +0000 (UTC)
IronPort-SDR: f4472SM+X/vdfo0tfiWkcFqtRNSE7hh1CJFo/q7uaAHTsoL5BavPxFhS+PUAJwPhda530jWsgg
 CywInK72atdg==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205397134"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="205397134"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:40:15 -0700
IronPort-SDR: HMvgHRues4SuDuvZxUxJpK6ft4UjSYsLPlKMTJxiYwFA44Tv0Zx2NUmtiqRyX8E5+xTHqFw/xl
 4xuBNT1IzGhQ==
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="448932908"
Received: from caclark-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.156.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:40:14 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Jun 2021 17:39:21 -0700
Message-Id: <20210611003924.492853-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210611003924.492853-1-vinicius.gomes@intel.com>
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 2/5] igc: Integrate flex
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
 drivers/net/ethernet/intel/igc/igc_main.c    | 192 ++++++++++++++++++-
 4 files changed, 230 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 6016c132d981..54a1779fa53a 100644
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
+	u16 vlan_etype;
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
index f1e128be475c..9abcecc57534 100644
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
@@ -3133,6 +3133,8 @@ static int __maybe_unused igc_write_flex_filter_ll(struct igc_adapter *adapter,
 	int ret;
 	int i;
 
+	netdev_dbg(adapter->netdev, "input->length %d\n", input->length);
+
 	/* Length has to be aligned to 8. Otherwise the filter will fail. Bail
 	 * out early to avoid surprises later.
 	 */
@@ -3213,11 +3215,192 @@ static int __maybe_unused igc_write_flex_filter_ll(struct igc_adapter *adapter,
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
+		u16 etype = cpu_to_be16(filter->etype);
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
@@ -3254,6 +3437,9 @@ static int igc_enable_nfc_rule(struct igc_adapter *adapter,
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
