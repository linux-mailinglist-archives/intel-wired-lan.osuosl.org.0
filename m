Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3A3C757E2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 17:57:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B74038483A;
	Thu, 20 Nov 2025 16:57:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id voCK7qS0_XPD; Thu, 20 Nov 2025 16:57:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2E958481C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763657871;
	bh=2PUcDksR8WKZfjrYGvAAQ4zYD6dzVD+mw2w/D5cS8sY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wOEj5aPkVD7x1w9U/B6EsLQ42I0dQeHGDjlWOyKfD6/6fcYJkPt59NFzHUvUOAmE+
	 DeT1yKQT72GSO7/ZIxZcnHiZXqjc8PMY6TJMbk1WZVsiyvH/Bsk75eGAOdiRfUL9KS
	 Bd3VidLfr31S/7r7XJJoE0E/q0lBdyKqAwUfbHd9Y9k4QloWQ6iarO0mhvqAKPOOrd
	 yWlhdB/DTtZkdAZIQGmanI5HYRakyR48lNOQfhsM8ksamBRQI6l5fgnotv01wLxZsI
	 s3Fu5ZAORZ5JD3hMrXIwk+/AcahuftwS08U7ynZ6bxCvVbCL4gdVisHPZAPzPt6cO3
	 uLTRbJXrdwZYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2E958481C;
	Thu, 20 Nov 2025 16:57:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 14FD037D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EFEE66125B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UDGgjJ2967-H for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 16:28:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 127E961073
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 127E961073
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 127E961073
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:27 +0000 (UTC)
X-CSE-ConnectionGUID: bxs5WCOuSjqmbEv8hXxSFQ==
X-CSE-MsgGUID: amSb4K8UTNqWv32nhuB/lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="69599306"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="69599306"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 08:28:27 -0800
X-CSE-ConnectionGUID: EIRml9c9TsWL+ufx+DrWSQ==
X-CSE-MsgGUID: lPeWA4ULR9ynRkwTKb6bPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="191531295"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa008.jf.intel.com with ESMTP; 20 Nov 2025 08:28:25 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com
Date: Thu, 20 Nov 2025 17:28:10 +0100
Message-ID: <20251120162813.37942-6-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251120162813.37942-1-jakub.slepecki@intel.com>
References: <20251120162813.37942-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 20 Nov 2025 16:57:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763656107; x=1795192107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=blYugHy6Y+vpD16wimuhQ7vAEzDULMbvdxJyg0IihBY=;
 b=facUANTf8Yhz+fZdycTNphGtfA/8gOdL/4frnsDnOGgTzrn/Yrf/LPGk
 E8XLF6nSfmBIVUf4kambiXe1x/QyxJTHuCbq3ASQz0ayyX+p8I5EAQJ4Y
 FvCfWgFWriI7bHrliDpCI9Vp6vna2LkqekVPqNl3HcI+zjHbB20U1RyGS
 +PHhzOY7LDQq1Cwclg/vayWJ99gMF4hMTZqq83Q3ESAClbS40yEKFtlIv
 hR/OffFTIZChse849kltIKnMuDwKQsxWLRGuGE8upmlB0goEs8mcyi7wd
 obsCXzAwxmHn1tws1z0rKLvag4PKbPFXGtieTxqPoHQKX3sSBvetk3Xnt
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=facUANTf
Subject: [Intel-wired-lan] [PATCH iwl-next 5/8] ice: update mac,
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

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c   | 38 ++++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_switch.c |  8 +++--
 drivers/net/ethernet/intel/ice/ice_switch.h |  3 +-
 3 files changed, 37 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0b6175ade40d..661af039bf4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8115,8 +8115,8 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 	struct ice_pf *pf = ice_netdev_to_pf(dev);
 	struct nlattr *attr, *br_spec;
 	struct ice_hw *hw = &pf->hw;
+	int rem, v, rb_err, err = 0;
 	struct ice_sw *pf_sw;
-	int rem, v, err = 0;
 
 	pf_sw = pf->first_sw;
 	/* find the attribute in the netlink message */
@@ -8126,6 +8126,7 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 
 	nla_for_each_nested_type(attr, IFLA_BRIDGE_MODE, br_spec, rem) {
 		__u16 mode = nla_get_u16(attr);
+		u8 old_evb_veb = hw->evb_veb;
 
 		if (mode != BRIDGE_MODE_VEPA && mode != BRIDGE_MODE_VEB)
 			return -EINVAL;
@@ -8147,17 +8148,38 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		/* Update the unicast switch filter rules for the corresponding
 		 * switch of the netdev
 		 */
-		err = ice_update_sw_rule_bridge_mode(hw);
+		err = ice_update_sw_rule_bridge_mode(hw, ICE_SW_LKUP_MAC);
 		if (err) {
-			netdev_err(dev, "switch rule update failed, mode = %d err %d aq_err %s\n",
-				   mode, err,
+			/* evb_veb is expected to be already reverted in error
+			 * path because of the potential rollback.
+			 */
+			hw->evb_veb = old_evb_veb;
+			goto err_without_rollback;
+		}
+		err = ice_update_sw_rule_bridge_mode(hw, ICE_SW_LKUP_MAC_VLAN);
+		if (err) {
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
index 7b63588948fd..b1445dfb1b64 100644
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
index a7dc4bfec3a0..60527475959b 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -360,7 +360,8 @@ int
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

