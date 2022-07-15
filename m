Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ED3575BC9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Jul 2022 08:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6782240545;
	Fri, 15 Jul 2022 06:49:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6782240545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657867777;
	bh=0iC310ZkzRBHJ+xMRtUy+RMC4eO8i4ndDzalQCgR/rk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NoUY2YzC1yN51iTCb3yL89L1gmZvt/u9KFRUNmwhnCqm6c0J56wcDwdaiyicN6seM
	 PZhitc03X65nfE+eb8RW9gsjOBeTn4DJWk4x76vpHo5XGYISRZduI4Pk+Otjcf7V8h
	 K7qG07U7lOa3yhVc7wszwxBl21KPEGL/o8Pu9K0BPn0usv0ednVo8rwmZFzLNOm6iS
	 ODe5P78diKR5KuuKuo5MsPCkgEQm0xtI/TJasxX0Rqj1msFUvUsB63NgjpYgppZKIN
	 X7VnNiBhTIRNZtvoreI2OgRVcQtdgQpgzALVblp7Hpt65jdxWsrfB3PLau7gaFiwen
	 6HyTQX3pxd+5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wPKc7ZKym1Kc; Fri, 15 Jul 2022 06:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AE8D401F1;
	Fri, 15 Jul 2022 06:49:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AE8D401F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D9B1D1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 06:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1E65401F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 06:49:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1E65401F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6TZJcCM52FT3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Jul 2022 06:49:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7C7A40002
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7C7A40002
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 06:49:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="284475282"
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="284475282"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 23:49:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="600392598"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga007.fm.intel.com with ESMTP; 14 Jul 2022 23:49:27 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Jul 2022 08:46:50 +0200
Message-Id: <20220715064650.84648-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657867769; x=1689403769;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xAv/mAlNTrOe9cdonU5Vp9ykvQ8GKA+FV5ZGBu8UnYw=;
 b=bel1VbjC4uIcUskwxsRA91fFa+2ZSqgS4Ekadl177eIPp4GL/icMGvS3
 bn4jtJ7Yy1GdWqXVQid/LkxiTn93PmUD6aMquTDNRsWLvmDWG99yo4DVB
 qRTKWN5xee/6oWPuwBFwNhJW4WARwAIKEIxJga7rB4iwgLvhhFyguuRel
 1QaDsWaP18tBBk5JOM8nRSRrTh5LjG9KNsote1j/dJrEhc5GZAsKTzj4h
 6pHx3iW5VW7g0sLAD13ubUna3PqGgJOatbDmwLfVbayNhvQN5LKarLcTI
 AflfD+obRdMWshWh6sR6ubmdONCHCBCOL7DNl/DM8flXLpb9Iyg90SCNK
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bel1VbjC
Subject: [Intel-wired-lan] [PATCH net-next v3] ice: Fix VSIs unable to share
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

Remove ucast_shared and all the related stuff as it is no longer needed.

Fixes: 47ebc7b02485 ("ice: Check if unicast MAC exists before setting VF MAC")
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: amend the commit msg
v3: removed ucast_shared
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 40 ---------------------
 drivers/net/ethernet/intel/ice/ice_switch.c | 14 +++-----
 drivers/net/ethernet/intel/ice/ice_type.h   |  2 --
 3 files changed, 4 insertions(+), 52 deletions(-)

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
index fc231446c641..4fd084a595da 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3424,13 +3424,7 @@ bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle)
  * ice_add_mac - Add a MAC address based filter rule
  * @hw: pointer to the hardware structure
  * @m_list: list of MAC addresses and forwarding information
- *
- * IMPORTANT: When the ucast_shared flag is set to false and m_list has
- * multiple unicast addresses, the function assumes that all the
- * addresses are unique in a given add_mac call. It doesn't
- * check for duplicates in this case, removing duplicates from a given
- * list should be taken care of in the caller of this function.
- */
+  */
 int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 {
 	struct ice_sw_rule_lkup_rx_tx *s_rule, *r_iter;
@@ -3467,7 +3461,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 		if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC ||
 		    is_zero_ether_addr(add))
 			return -EINVAL;
-		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
+		if (is_unicast_ether_addr(add)) {
 			/* Don't overwrite the unicast address */
 			mutex_lock(rule_lock);
 			if (ice_find_rule_entry(hw, ICE_SW_LKUP_MAC,
@@ -3478,7 +3472,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 			mutex_unlock(rule_lock);
 			num_unicast++;
 		} else if (is_multicast_ether_addr(add) ||
-			   (is_unicast_ether_addr(add) && hw->ucast_shared)) {
+			   (is_unicast_ether_addr(add))) {
 			m_list_itr->status =
 				ice_add_rule_internal(hw, ICE_SW_LKUP_MAC,
 						      m_list_itr);
@@ -4000,7 +3994,7 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 
 		list_itr->fltr_info.fwd_id.hw_vsi_id =
 					ice_get_hw_vsi_num(hw, vsi_handle);
-		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
+		if (is_unicast_ether_addr(add)) {
 			/* Don't remove the unicast address that belongs to
 			 * another VSI on the switch, since it is not being
 			 * shared...
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f2a518a1fd94..2ca24df10433 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -889,8 +889,6 @@ struct ice_hw {
 	/* INTRL granularity in 1 us */
 	u8 intrl_gran;
 
-	u8 ucast_shared;	/* true if VSIs can share unicast addr */
-
 #define ICE_PHY_PER_NAC		1
 #define ICE_MAX_QUAD		2
 #define ICE_NUM_QUAD_TYPE	2
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
