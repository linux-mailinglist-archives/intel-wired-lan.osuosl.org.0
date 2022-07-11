Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E619570497
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Jul 2022 15:45:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79E4D4156E;
	Mon, 11 Jul 2022 13:45:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79E4D4156E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657547100;
	bh=KSVzbCNB/Ya8LNdyy/DKSXbykv0ehaotePz1ppOx7FQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9mW9tJz1FUZ1DDjCrnRjzvYPw7T3HASfBbhpYFkIBrkbd0eSlCk2VROd2bD+7HG+b
	 KACGSCUpT49eNz+3+00/exCRyF2vbdWpXyI+b6S5WkE084epQ3rnQV5YMjB6CnmeYm
	 ry8h5jwfPSfdXju/mJ5XSxBSH9AYwCK98yn1cN0paD1fUTFNyJsWmVuwdrbyEIeJVV
	 sG7Y98SaF+ELC59GAEJcp6hrRz+7YHsq79N18y+2lGyNVDjjoyw/b2cW5a87NKZ9Kf
	 rG0sTvmerkCYYWFp7+tzCK02aRQh3KS469KqW61+4fB4A6req9y455fdOXlcZLN2hy
	 wVY63w5bHdqsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lvqk7kk4F60q; Mon, 11 Jul 2022 13:44:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9A7940991;
	Mon, 11 Jul 2022 13:44:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9A7940991
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E75E1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 13:44:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 84C1A607BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 13:44:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84C1A607BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G7H3FDjnJs7I for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Jul 2022 13:44:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C76D60767
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C76D60767
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 13:44:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="346347743"
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="346347743"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 06:44:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="684382207"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Jul 2022 06:44:49 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 Jul 2022 15:44:32 +0200
Message-Id: <20220711134432.2398975-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657547092; x=1689083092;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Sf3T6nxmcPQ8/0l0uNlEqgEehKSSBUy98kait3Xv1Z0=;
 b=dBEUZpsHbhqsqC5REdwBQgyTmjQRe/nRUIOkqTtWGcSZHM5hxGxlHF48
 WSGhLC11CXUKUBYWeagf+OO7I84I+PW5cH1s2lZv4A5SSMz+lHTozWnhE
 wF242ICwspJv8p/1jMF2YpmaYVq3p0pH6JS+hufIJ1oBUsPj14uJNRj/1
 YF9dK1ri6xzo42X7GDeR/G4QKqRp7XF8BERp2/fy9Kuphx5HIcvRlmeRV
 m9lCyGeB59485XfH/rNLoCVsu5EZZiHG++NEYn89gcXv8HT3gX6PFc1tE
 M5ZX9+bTmH0oZMWX4W9jPz54Hj2v3c+MinQ7F08jxx+5Dt8ROEwu/MxKx
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dBEUZpsH
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix VSIs unable to share
 unicast MAC
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

The driver currently does not allow two VSIs in the same PF domain
to have the same unicast MAC address. This is incorrect in the sense
that a policy decision is being made in the driver when it must be
left to the user. Remove this restriction. Doing this also allows
use to remove some additional code that's checking if a unicast MAC
filter already exists.

Rename ucast_shared to umac_shared, as "umac" is a more widely
used shorthand for "unicast MAC".

Also add a helper function to set this flag. This helper is
expected to be called by core drivers.

Fixes: 47ebc7b02485 ("ice: Check if unicast MAC exists before setting VF MAC")
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 11 ++++++
 drivers/net/ethernet/intel/ice/ice_common.h |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c   |  2 ++
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 40 ---------------------
 drivers/net/ethernet/intel/ice/ice_switch.c |  8 ++---
 drivers/net/ethernet/intel/ice/ice_type.h   |  3 +-
 6 files changed, 20 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9619bdb9e49a..64748ecebabe 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -899,6 +899,17 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
 	}
 }
 
+/**
+ * ice_set_umac_shared
+ * @hw: pointer to the hw struct
+ *
+ * Set boolean flag to allow unicast MAC sharing
+ */
+void ice_set_umac_shared(struct ice_hw *hw)
+{
+	hw->umac_shared = true;
+}
+
 /**
  * ice_init_hw - main hardware initialization routine
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 872ea7d2332d..8a66f86c8893 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -16,6 +16,7 @@
 #define ICE_SQ_SEND_DELAY_TIME_MS	10
 #define ICE_SQ_SEND_MAX_EXECUTE		3
 
+void ice_set_umac_shared(struct ice_hw *hw);
 int ice_init_hw(struct ice_hw *hw);
 void ice_deinit_hw(struct ice_hw *hw);
 int ice_check_reset(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ff2eac2f8c64..ff798a410365 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4656,6 +4656,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		ice_set_safe_mode_caps(hw);
 	}
 
+	ice_set_umac_shared(hw);
+
 	err = ice_init_pf(pf);
 	if (err) {
 		dev_err(dev, "ice_init_pf failed: %d\n", err);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index bb1721f1321d..f4907a3c2d19 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1309,39 +1309,6 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 	return ret;
 }
 
-/**
- * ice_unicast_mac_exists - check if the unicast MAC exists on the PF's switch
- * @pf: PF used to reference the switch's rules
- * @umac: unicast MAC to compare against existing switch rules
- *
- * Return true on the first/any match, else return false
- */
-static bool ice_unicast_mac_exists(struct ice_pf *pf, u8 *umac)
-{
-	struct ice_sw_recipe *mac_recipe_list =
-		&pf->hw.switch_info->recp_list[ICE_SW_LKUP_MAC];
-	struct ice_fltr_mgmt_list_entry *list_itr;
-	struct list_head *rule_head;
-	struct mutex *rule_lock; /* protect MAC filter list access */
-
-	rule_head = &mac_recipe_list->filt_rules;
-	rule_lock = &mac_recipe_list->filt_rule_lock;
-
-	mutex_lock(rule_lock);
-	list_for_each_entry(list_itr, rule_head, list_entry) {
-		u8 *existing_mac = &list_itr->fltr_info.l_data.mac.mac_addr[0];
-
-		if (ether_addr_equal(existing_mac, umac)) {
-			mutex_unlock(rule_lock);
-			return true;
-		}
-	}
-
-	mutex_unlock(rule_lock);
-
-	return false;
-}
-
 /**
  * ice_set_vf_mac
  * @netdev: network interface device structure
@@ -1376,13 +1343,6 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	if (ret)
 		goto out_put_vf;
 
-	if (ice_unicast_mac_exists(pf, mac)) {
-		netdev_err(netdev, "Unicast MAC %pM already exists on this PF. Preventing setting VF %u unicast MAC address to %pM\n",
-			   mac, vf_id, mac);
-		ret = -EINVAL;
-		goto out_put_vf;
-	}
-
 	mutex_lock(&vf->cfg_lock);
 
 	/* VF is notified of its new MAC via the PF's response to the
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 8d8f3eec79ee..95e4b99928b7 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3425,7 +3425,7 @@ bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle)
  * @hw: pointer to the hardware structure
  * @m_list: list of MAC addresses and forwarding information
  *
- * IMPORTANT: When the ucast_shared flag is set to false and m_list has
+ * IMPORTANT: When the umac_shared flag is set to false and m_list has
  * multiple unicast addresses, the function assumes that all the
  * addresses are unique in a given add_mac call. It doesn't
  * check for duplicates in this case, removing duplicates from a given
@@ -3467,7 +3467,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 		if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC ||
 		    is_zero_ether_addr(add))
 			return -EINVAL;
-		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
+		if (is_unicast_ether_addr(add) && !hw->umac_shared) {
 			/* Don't overwrite the unicast address */
 			mutex_lock(rule_lock);
 			if (ice_find_rule_entry(hw, ICE_SW_LKUP_MAC,
@@ -3478,7 +3478,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 			mutex_unlock(rule_lock);
 			num_unicast++;
 		} else if (is_multicast_ether_addr(add) ||
-			   (is_unicast_ether_addr(add) && hw->ucast_shared)) {
+			   (is_unicast_ether_addr(add) && hw->umac_shared)) {
 			m_list_itr->status =
 				ice_add_rule_internal(hw, ICE_SW_LKUP_MAC,
 						      m_list_itr);
@@ -4000,7 +4000,7 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 
 		list_itr->fltr_info.fwd_id.hw_vsi_id =
 					ice_get_hw_vsi_num(hw, vsi_handle);
-		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
+		if (is_unicast_ether_addr(add) && !hw->umac_shared) {
 			/* Don't remove the unicast address that belongs to
 			 * another VSI on the switch, since it is not being
 			 * shared...
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f2a518a1fd94..bef7c3ba1a20 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -889,7 +889,8 @@ struct ice_hw {
 	/* INTRL granularity in 1 us */
 	u8 intrl_gran;
 
-	u8 ucast_shared;	/* true if VSIs can share unicast addr */
+	/* true if VSIs can share unicast MAC addr */
+	u8 umac_shared;
 
 #define ICE_PHY_PER_NAC		1
 #define ICE_MAX_QUAD		2
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
