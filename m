Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BA1D3C5B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 11:42:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC012858C1;
	Tue, 20 Jan 2026 10:42:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qspxy4Z5hj3O; Tue, 20 Jan 2026 10:42:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CFB785857
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768905722;
	bh=b8iTeiJpfwn1B02KJ+a9sKfVYI1NcGQUH+3iLmkkOZw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X9NO0wqm/W1JM6ceujX0Uf1ccfjCDJb890unb9KUjR3Di+jRUn6Fe6ugNcaPdARYb
	 gnssoGDHmrHZ1DRaB5rj2vZaHVgGTcbsrxktPKi1hhSH4hHZblaaNwA9Vvn6TsC/Y6
	 HfnMP4L2kUaZGQk3Umm7Jgog1Flg61u8hFudRIAN6sc/5mu3Igzc7EFv/VOU9v/BJm
	 kBzDR29EPLKNh6mlP0GulxERfiDJMxS5j9ePOHEj1iRz4iDWQy21n2gXKzYrOdYIeY
	 D6BnFf8PKjvAqzQE9YXY+ZzbvO0fdV+j52yY2593vN9VS7TTRlF2z4GocGaHtpQ6dz
	 VVprL2wrKJeMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CFB785857;
	Tue, 20 Jan 2026 10:42:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E82CA160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2A9685857
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M1hUYRSN0rGY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 10:41:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D5D1E8587E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5D1E8587E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5D1E8587E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:58 +0000 (UTC)
X-CSE-ConnectionGUID: S9ERnqCYTySLfoIiwc+55g==
X-CSE-MsgGUID: Png5e5gpSzyWB1rpBCex0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70161751"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70161751"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 02:34:52 -0800
X-CSE-ConnectionGUID: MJ7YMCojQBuS26sLDqT3KA==
X-CSE-MsgGUID: SsQNjIDISziwqr3UjNXIaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210935866"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jan 2026 02:34:51 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 20 Jan 2026 11:34:36 +0100
Message-ID: <20260120103440.892326-6-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120103440.892326-1-jakub.slepecki@intel.com>
References: <20260120103440.892326-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768905719; x=1800441719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fHx6D75nNH7UK7zPn0EFhSdI4CnOvj2IIm7MiYdVpPI=;
 b=SKxpKHgzedkxvscv/kW9O7vZaWkuVYHdMH8qC8x2XLCnxVk71BXsa4HZ
 Hn45WJz3b/DIhkX5MH4iI3hBr2w0YVDbo6KDN6HVMCBH1JEpYRp6SIgX3
 +GkPGkO/45fNBpD/zzyZOJcK8CKibPMQf7Cy/qp1Li4VVFwQa/PJ+Q1aH
 2L8tJfjiprS+lbejbH/WJwVEUtlDNKQZpqzckxNs43qsiYNIKOZBA1HMC
 723pGy/w3nRsoO5kpL46Q6Ypoj0SWpDuaq25R+veBjbA9FS6Ld9t9SR7C
 NlWl8RjIxAWz53yiAiyrhksADAZ4XApv3a4jCyMhmoJzHRjMH8tHnd2j2
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SKxpKHgz
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/8] ice: update mac,
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

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>

---
Kept Aleksandr's reviewed-by per discussion.

Testing hints:
  MAC,VLAN rules are created only if entire series is applied.
  The easiest way to test that rules were adjusted is to run traffic
  and observe what packets are sent to LAN.  VEPA is expected to behave
  same as before the series.  VEB is expected to (a) behave like VEPA
  if loopback traffic would cross VLANs, or (b) behave as before.
  Traffic from/to external hosts is expected to remain unchanged.
  
  Refer to cover letter (0/8) for full network configuration.  To
  change hwmode use:

      # bridge link set dev $pf hwmode {veb,vepa}

Changes in v3:
  - Refer to reproduction in cover letter in current 5/8.

Changes in v2:
  - Close open parenthesis in ice_vsi_update_bridge_mode() description.
  - Explain returns in ice_vsi_update_bridge_mode().
---
 drivers/net/ethernet/intel/ice/ice_main.c   | 48 +++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_switch.c |  8 ++--
 drivers/net/ethernet/intel/ice/ice_switch.h |  3 +-
 3 files changed, 46 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cb80b77d29fd..7b3ab69b8300 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8208,8 +8208,16 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
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
@@ -8219,8 +8227,8 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 	struct ice_pf *pf = ice_netdev_to_pf(dev);
 	struct nlattr *attr, *br_spec;
 	struct ice_hw *hw = &pf->hw;
+	int rem, v, rb_err, err = 0;
 	struct ice_sw *pf_sw;
-	int rem, v, err = 0;
 
 	pf_sw = pf->first_sw;
 	/* find the attribute in the netlink message */
@@ -8230,6 +8238,7 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 
 	nla_for_each_nested_type(attr, IFLA_BRIDGE_MODE, br_spec, rem) {
 		__u16 mode = nla_get_u16(attr);
+		u8 old_evb_veb = hw->evb_veb;
 
 		if (mode != BRIDGE_MODE_VEPA && mode != BRIDGE_MODE_VEB)
 			return -EINVAL;
@@ -8251,17 +8260,38 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
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
index 3caccd798220..3b526383b8ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3067,10 +3067,12 @@ ice_update_pkt_fwd_rule(struct ice_hw *hw, struct ice_fltr_info *f_info)
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
@@ -3078,8 +3080,8 @@ int ice_update_sw_rule_bridge_mode(struct ice_hw *hw)
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
 	int status = 0;
 
-	rule_lock = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rule_lock;
-	rule_head = &sw->recp_list[ICE_SW_LKUP_MAC].filt_rules;
+	rule_lock = &sw->recp_list[lkup].filt_rule_lock;
+	rule_head = &sw->recp_list[lkup].filt_rules;
 
 	mutex_lock(rule_lock);
 	list_for_each_entry(fm_entry, rule_head, list_entry) {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 137eae878ab1..b442db4a2ce5 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -366,7 +366,8 @@ int
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

