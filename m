Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5223C84006
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 09:35:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F07FB6102F;
	Tue, 25 Nov 2025 08:35:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1QDHfUUm9Jfn; Tue, 25 Nov 2025 08:35:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03E6560FC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764059713;
	bh=DjV+UcO/Fzv9Jw5GhEog0yyAmK5WW+iMMyxyRC7Tf6k=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m1BJDAx8e31I+helcVXtzHxK/v4SP1gKxIjJDQ3FErRuojpP2PHA8dZX94IeNOKxk
	 0/UuvvDohIl136vEqmjh4yC0gJdmVVJr2OPjD/Fo8suyNSQoINYsJQAqjDvLTQ2Gze
	 nG0d+RuxgCTm7dBh2Z9kiQ7ZN1oCcgVldMSOVNKSv4fuq95IO4jDRjXI2mqUDlGoLb
	 GXynzcnsjtPlE8M9BvZgh69zuye51bXwNxIIOLOJTcjHC/ipWDLPyMO7AXEuOxiTa+
	 3S8MUJWJLTUwvklNj0YOgPx9aXO6ieOMtHuOuvzO/+0GDRLJrh84MeeWUCgJTOlRVm
	 xQOmCwUzio+2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03E6560FC0;
	Tue, 25 Nov 2025 08:35:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 209BE35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0764C4059B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y5F7mW8gKIp5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 08:35:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0C365405C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C365405C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C365405C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:10 +0000 (UTC)
X-CSE-ConnectionGUID: wLe/G77LSZek+hmSmkrigg==
X-CSE-MsgGUID: /XniaeaIStO0lgynd7nXcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76694454"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="76694454"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 00:35:10 -0800
X-CSE-ConnectionGUID: Fy1uzKRWT86ueoohf65P3A==
X-CSE-MsgGUID: fJ5AkLtpSMqJXvwsArGDyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="196749935"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa003.jf.intel.com with ESMTP; 25 Nov 2025 00:35:09 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 25 Nov 2025 09:34:53 +0100
Message-ID: <20251125083456.28822-6-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125083456.28822-1-jakub.slepecki@intel.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764059711; x=1795595711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rfktUNSHXyzPN3pzMsTX6vARAezK2hbtDU6Cz49p+Ro=;
 b=REhWepgAqkZCxrjSkRB9Fl1aBf/xBkq0c7DOLv0nzKpAY1zeQ+pPtGk/
 VkobyceYY2xWz0PqcbaQ/ZVPfvm9whL2qHDVNgdI9rkCc8RJNHKj+TRaZ
 Fjg3Z1t1UZAtRusIm03lQ5Ltrua0HxnMESuonbZDwKGEPT+pT0SoQ+h/Q
 L5OVRFoXDPJq+cdqw56xD4Pln3wjCSVOI/wp/kvrlP6JKoSDn3jbbPfJF
 I0qTVwl2gQUyUifYxjo1rYlLWciQgul7U/cdvOpKp7XXWEPVbvrjB2yNk
 nnC67MQ7gZJQ1HBKfMz164hwf3V9Gk0xOgFFNKJ6tAqk25GlYYx0hCwQZ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=REhWepgA
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/8] ice: update mac,
 vlan rules when toggling between VEB and VEPA
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When changing into VEPA mode MAC rules are modified to forward all traffic
to the wire instead of allowing some packets to go into the loopback.
MAC,VLAN rules may and will also be used to forward loopback traffic
in VEB, so when we switch to VEPA, we want them to behave similarly to
MAC-only rules.

ice_vsi_update_bridge_mode() will now attempt a rollback of switch
filters in case an update fails.  If the rollback also fails, we will
now return the rollback error instead of the initial error.

Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>

---
Testing hints:
  MAC,VLAN rules are created only if entire series is applied.
  The easiest way to test that rules were adjusted is to run traffic
  and observe what packets are sent to LAN.  VEPA is expected to behave
  same as before the series.  VEB is expected to (a) behave like VEPA
  if loopback traffic would cross VLANs, or (b) behave as before.
  Traffic from/to external hosts is expected to remain unchanged.

Dropping reviewed-by Michał due to changes.

Changes in v2:
  - Close open parenthesis in ice_vsi_update_bridge_mode() description.
  - Explain returns in ice_vsi_update_bridge_mode().
---
 drivers/net/ethernet/intel/ice/ice_main.c   | 48 +++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_switch.c |  8 ++--
 drivers/net/ethernet/intel/ice/ice_switch.h |  3 +-
 3 files changed, 46 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0b6175ade40d..921ed2b6c0aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8104,8 +8104,16 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
  *
  * Sets the bridge mode (VEB/VEPA) of the switch to which the netdev (VSI) is
  * hooked up to. Iterates through the PF VSI list and sets the loopback mode (if
- * not already set for all VSIs connected to this switch. And also update the
+ * not already set for all VSIs connected to this switch). And also update the
  * unicast switch filter rules for the corresponding switch of the netdev.
+ *
+ * Return:
+ * * %0 if mode was set, propagated to VSIs, and changes to filters were all
+ *   successful,
+ * * %-EINVAL if requested netlink attributes or bridge mode were invalid,
+ * * otherwise an error from VSI update, filter rollback, or filter update is
+ *   forwarded. This may include %-EINVAL. See ice_vsi_update_bridge_mode() and
+ *   ice_update_sw_rule_bridge_mode().
  */
 static int
 ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
@@ -8115,8 +8123,8 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 	struct ice_pf *pf = ice_netdev_to_pf(dev);
 	struct nlattr *attr, *br_spec;
 	struct ice_hw *hw = &pf->hw;
+	int rem, v, rb_err, err = 0;
 	struct ice_sw *pf_sw;
-	int rem, v, err = 0;
 
 	pf_sw = pf->first_sw;
 	/* find the attribute in the netlink message */
@@ -8126,6 +8134,7 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 
 	nla_for_each_nested_type(attr, IFLA_BRIDGE_MODE, br_spec, rem) {
 		__u16 mode = nla_get_u16(attr);
+		u8 old_evb_veb = hw->evb_veb;
 
 		if (mode != BRIDGE_MODE_VEPA && mode != BRIDGE_MODE_VEB)
 			return -EINVAL;
@@ -8147,17 +8156,38 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		/* Update the unicast switch filter rules for the corresponding
 		 * switch of the netdev
 		 */
-		err = ice_update_sw_rule_bridge_mode(hw);
+		err = ice_update_sw_rule_bridge_mode(hw, ICE_SW_LKUP_MAC);
+		if (err) {
+			/* evb_veb is expected to be already reverted in error
+			 * path because of the potential rollback.
+			 */
+			hw->evb_veb = old_evb_veb;
+			goto err_without_rollback;
+		}
+		err = ice_update_sw_rule_bridge_mode(hw, ICE_SW_LKUP_MAC_VLAN);
 		if (err) {
-			netdev_err(dev, "switch rule update failed, mode = %d err %d aq_err %s\n",
-				   mode, err,
+			/* ice_update_sw_rule_bridge_mode looks this up, so we
+			 * must revert it before attempting a rollback.
+			 */
+			hw->evb_veb = old_evb_veb;
+			goto err_rollback_mac;
+		}
+		pf_sw->bridge_mode = mode;
+		continue;
+
+err_rollback_mac:
+		rb_err = ice_update_sw_rule_bridge_mode(hw, ICE_SW_LKUP_MAC);
+		if (rb_err) {
+			netdev_err(dev, "switch rule update failed, mode = %d err %d; rollback failed, err %d aq_err %s\n",
+				   mode, err, rb_err,
 				   libie_aq_str(hw->adminq.sq_last_status));
-			/* revert hw->evb_veb */
-			hw->evb_veb = (pf_sw->bridge_mode == BRIDGE_MODE_VEB);
-			return err;
+			return rb_err;
 		}
 
-		pf_sw->bridge_mode = mode;
+err_without_rollback:
+		netdev_err(dev, "switch rule update failed, mode = %d err %d aq_err %s\n",
+			   mode, err, libie_aq_str(hw->adminq.sq_last_status));
+		return err;
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index b3f5cda1571e..e0ff9a0882d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3065,10 +3065,12 @@ ice_update_pkt_fwd_rule(struct ice_hw *hw, struct ice_fltr_info *f_info)
 /**
  * ice_update_sw_rule_bridge_mode
  * @hw: pointer to the HW struct
+ * @lkup: recipe/lookup type to update
  *
  * Updates unicast switch filter rules based on VEB/VEPA mode
  */
-int ice_update_sw_rule_bridge_mode(struct ice_hw *hw)
+int ice_update_sw_rule_bridge_mode(struct ice_hw *hw,
+				   enum ice_sw_lkup_type lkup)
 {
 	struct ice_switch_info *sw = hw->switch_info;
 	struct ice_fltr_mgmt_list_entry *fm_entry;
@@ -3076,8 +3078,8 @@ int ice_update_sw_rule_bridge_mode(struct ice_hw *hw)
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
 	int status = 0;
 
-	rule_lock = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rule_lock;
-	rule_head = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rules;
+	rule_lock = &sw->recp_list[lkup].filt_rule_lock;
+	rule_head = &sw->recp_list[lkup].filt_rules;
 
 	mutex_lock(rule_lock);
 	list_for_each_entry(fm_entry, rule_head, list_entry) {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index b694c131ad58..f1917e15b26c 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -361,7 +361,8 @@ int
 ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		 u16 lkups_cnt, struct ice_adv_rule_info *rinfo,
 		 struct ice_rule_query_data *added_entry);
-int ice_update_sw_rule_bridge_mode(struct ice_hw *hw);
+int ice_update_sw_rule_bridge_mode(struct ice_hw *hw,
+				   enum ice_sw_lkup_type lkup);
 int ice_add_vlan(struct ice_hw *hw, struct list_head *m_list);
 int ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list);
 int ice_add_mac(struct ice_hw *hw, struct list_head *m_lst);
-- 
2.43.0

