Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89613577C0C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jul 2022 08:58:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 195D040AD1;
	Mon, 18 Jul 2022 06:58:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 195D040AD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658127529;
	bh=SRMbam8Lkjzwleen4JYpyu70D7bxSWS++vSAKJGSiBQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bcTMxHltB/PVju5D3+7dB5eDcU2lDbRSb4GkDd2ja7dmRs3k4vo9Ax9EYjkYEyWvT
	 c6sH5S5+Vzvv94RuW267GptRcUpBdgwSpIduuzyoEvTUXpwDirHhczzvs3j7zbWUdK
	 Cf+M16CeG9qqg6w8Qew6V2+0mv1R8LIo6LLalSwAEPfiH4bzxcw7Fv01KJF/5ZBtxF
	 nK33O5BCDu7HFKuJWOk2M6rRjwXoquR5EXsmcpmYgw1uRblhib52vhLwMMiLMB4qwO
	 tJu6IqtFzoB8A+yoI9P4nuE7nMkX96Ht77DHdlYYvToZ+3ImXVFVkLldWYXPBtMs7N
	 OJCI9E/bDHq6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rNz18vmjRqwU; Mon, 18 Jul 2022 06:58:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF74540142;
	Mon, 18 Jul 2022 06:58:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF74540142
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D907C1BF97C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 06:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF71960FC2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 06:58:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF71960FC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4MZ-c4NnJNwS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jul 2022 06:58:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E7CE60FBF
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E7CE60FBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 06:58:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="286169769"
X-IronPort-AV: E=Sophos;i="5.92,280,1650956400"; d="scan'208";a="286169769"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2022 23:58:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,280,1650956400"; d="scan'208";a="699927837"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2022 23:58:38 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jul 2022 08:56:07 +0200
Message-Id: <20220718065607.196699-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658127520; x=1689663520;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aXMoplfmKQ55May4waV2Q6Bfov5CjfnEheaqIkauWtc=;
 b=W3le9dMZe5IG+1oFCsL2unR2taStg6NdiZVc2f9AgmtzkWVZVKK6urM4
 NFPr5Tlkwc6pO76m+kUyKKb+6+KF3wb2x1sfAMnENvhBkioLvSC6nfgR+
 fu0fofCnYOluTpJjPNi3R2bpRAUAhr9KMif6rfnYhMsRnsJnIMpZ1GD0m
 pjgl1fEZwOTNoiPXjq/kkLUIsB8zN9MPSjgEHQCz0BkEpekEBkL9EJSmv
 LoHoy5s4/l1lG54GB8vLEslrvuL9eC+lxIiOoZrTSb53VzZJucmiGhHrR
 sEkZjr/5nCXXGep2pO+wqdxM1UxdgedKJwzIwIaxeRqfdPhzyDl3NuLgC
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W3le9dMZ
Subject: [Intel-wired-lan] [PATCH net v4] ice: Fix VSIs unable to share
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
v4: remove if statements depending on ucast_shared
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 40 ------------------
 drivers/net/ethernet/intel/ice/ice_switch.c | 46 ++++-----------------
 drivers/net/ethernet/intel/ice/ice_type.h   |  2 -
 3 files changed, 8 insertions(+), 80 deletions(-)

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
index fc231446c641..c348e3413f33 100644
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
@@ -3467,24 +3461,12 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 		if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC ||
 		    is_zero_ether_addr(add))
 			return -EINVAL;
-		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
-			/* Don't overwrite the unicast address */
-			mutex_lock(rule_lock);
-			if (ice_find_rule_entry(hw, ICE_SW_LKUP_MAC,
-						&m_list_itr->fltr_info)) {
-				mutex_unlock(rule_lock);
-				return -EEXIST;
-			}
-			mutex_unlock(rule_lock);
-			num_unicast++;
-		} else if (is_multicast_ether_addr(add) ||
-			   (is_unicast_ether_addr(add) && hw->ucast_shared)) {
-			m_list_itr->status =
-				ice_add_rule_internal(hw, ICE_SW_LKUP_MAC,
-						      m_list_itr);
-			if (m_list_itr->status)
-				return m_list_itr->status;
-		}
+
+		m_list_itr->status =
+			ice_add_rule_internal(hw, ICE_SW_LKUP_MAC,
+					      m_list_itr);
+		if (m_list_itr->status)
+			return m_list_itr->status;
 	}
 
 	mutex_lock(rule_lock);
@@ -4000,19 +3982,7 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 
 		list_itr->fltr_info.fwd_id.hw_vsi_id =
 					ice_get_hw_vsi_num(hw, vsi_handle);
-		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
-			/* Don't remove the unicast address that belongs to
-			 * another VSI on the switch, since it is not being
-			 * shared...
-			 */
-			mutex_lock(rule_lock);
-			if (!ice_find_ucast_rule_entry(hw, ICE_SW_LKUP_MAC,
-						       &list_itr->fltr_info)) {
-				mutex_unlock(rule_lock);
-				return -ENOENT;
-			}
-			mutex_unlock(rule_lock);
-		}
+
 		list_itr->status = ice_remove_rule_internal(hw,
 							    ICE_SW_LKUP_MAC,
 							    list_itr);
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
