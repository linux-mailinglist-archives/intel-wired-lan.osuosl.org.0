Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCA6575017
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 15:53:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AD8C41716;
	Thu, 14 Jul 2022 13:53:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AD8C41716
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657806820;
	bh=CW5O+SznO1uzo2RRD/nuIprPnS5/xvNl1ZAu7+DRwYk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DTiL4BkLWUYX63TfZm8B9jaP8XXiSBE+PTxL5R7jvkxv0zbU2upsujfr9Ml1PFBi/
	 FbyuCIxnEC7HnndWfBcI26tePqcTSWVlyd0hQzgdyVZk0s7K2ALKSPyqI5Q3exiOIb
	 PX5M1zFInIwz7kmtp1NKIDckdRDbsmLidKq06CTWZEXmJNsE5Z/4ImvCbw1I8+iyj9
	 RhXeUGbzje/KLXn9A3qz1tmxmBbKMf6R8CokwydFFW0qipQi/MI1EhBxQv8Z+F1Gvv
	 g2spdng0HsJ5cTD10JCKpTf/CE/kFyeecRRhhdfgAjOr/To/7XHFV+NOfH9v6NVIdR
	 ZkghOKm3L+J5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E3eLInIdKrri; Thu, 14 Jul 2022 13:53:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10C9741713;
	Thu, 14 Jul 2022 13:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10C9741713
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 44A8F1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 13:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E4128471F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 13:53:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E4128471F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9wrlNXAS-JaR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 13:53:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E09BA8470B
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E09BA8470B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 13:53:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="349483465"
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="349483465"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 06:53:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="738279854"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jul 2022 06:53:30 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Jul 2022 15:51:07 +0200
Message-Id: <20220714135107.46473-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657806812; x=1689342812;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=18oSCWUDGBjNXzXU8jMQTpGI0qxyicrE6YEEN+O4WG0=;
 b=Uw0OzpNq8rKrigQgK1qOM41D/n0qOANwU6G6GtWGJ9ECw4PfMPCle4W+
 GhaujVFrdwtsyIsoFtN+6u9ElX4RXozbeNnEOYCir8rK2bDN6/67rnnBA
 oXpzEzu00n+o+ELeLA/ScjnL+jKYSJ8dqZJ71g1AjFPCjWJyn2yBUI1F7
 b+RKnZKspqFrhAyDBrMqLxZFln7u1GM33b0p8msNSW5TKE2HB+Mp65KcE
 IndqUrYJ4s5K2m1djQjHhk5H6+4+Q2lvBdNNUoaE2libfFWFH7tp+Uj/z
 mzhIXyFb4aI/WyBCmIE0M2qt4zGJ4AFgPds6eavX8bK3Srnc5Gn705N7E
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uw0OzpNq
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix VSIs unable to share
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

The driver currently does not allow two VSIs in the same PF domain
to have the same unicast MAC address. This is incorrect in the sense
that a policy decision is being made in the driver when it must be
left to the user. This approach was causing issues when rebooting
the system with VFs spawned not being able to change their MAC addresses.
Such errors were present in dmesg:

[ 7921.068237] ice 0000:b6:00.2 ens2f2: Unicast MAC 6a:0d:e4:70:ca:d1 already
exists on this PF. Preventing setting VF 7 unicast MAC address to 6a:0d:e4:70:ca:d1

Fix that by removing this restriction. Doing this also allows
use to remove some additional code that's checking if a unicast MAC
filter already exists.

Rename ucast_shared to umac_shared, as "umac" is a more widely

Also add a helper function to set this flag. This helper is
expected to be called by core drivers.

Fixes: 47ebc7b02485 ("ice: Check if unicast MAC exists before setting VF MAC")
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: amend the commit msg
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
