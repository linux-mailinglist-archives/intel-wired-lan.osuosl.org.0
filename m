Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0401457B71E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 15:15:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E455F41A17;
	Wed, 20 Jul 2022 13:14:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E455F41A17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658322896;
	bh=ER1wB45haEis98PY7icVJLGyAV0KVfofh/XjZts3lRU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Q3W4S4jKE+rRwUII7CrD+AUiOpD+SySA693cCV15JOlUUYKTpEEhnNB76dTXGmb61
	 j5SyC/ht5h6fBD03lkj5eosi5ueIRidt83s+NDr0XmdUeChaaGhEI4Kiyn7ReHYPiE
	 MjWv9Eov6qCo0h8tHoO+05dI2aSU8Z5zoOJhKOAWXq7QRPmH6xNF9lH8YMnivQyUXa
	 oUc0VQETmRgnzFro2pinSqgOlPdOhUp/s3KDTub7DO6GYTTKb2J13rTdWwAimQnQZ8
	 YPmXexzktjtGeDgaHHt+7HZocE4GHDZhHuWQXBDD93hqtzTDbgogFRBMzssCccNn0p
	 xq3YmjUh2TzoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2BgwPBb9F_rr; Wed, 20 Jul 2022 13:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8667401F2;
	Wed, 20 Jul 2022 13:14:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8667401F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03E761BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 13:14:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C123E418B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 13:14:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C123E418B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id flVCv07lR-du for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 13:14:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56FE5401F2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 56FE5401F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 13:14:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="267172425"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="267172425"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 06:14:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="687520486"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jul 2022 06:14:19 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 20 Jul 2022 15:11:55 +0200
Message-Id: <20220720131155.468702-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658322885; x=1689858885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pX2j3Btt6pW+/FaRv6xUEJ/ZmEjg88z/Rn6D8HTc91w=;
 b=DC3nkVkE1D0rkdN8Aq3KeG8qE/1NoGYMkaKtSwLb5udnfs/zqRRl5J0E
 i9DEAg6PCTqxFPOnExzBDSaggz8MiWFnMjyK4dBGdA88TqMFaUw9OGMQL
 1Sa/WU8G7p9UDePkEwpWJUGuO3tlA0BuiaIuT169/qG6lyrl5X1bJX48v
 RVc5D7gJpBt639vtUu2E+eFL3ajK7CmmIqemgHYpVNb9v/nWzKKOSLLcJ
 Jnpl2UwU2xGR+qrw/bJsgQX8exhTLRqRgOxQQBWzjSR3sgXTWf+0yCNZB
 tLEytDDMK73CqbrDmUygXXA22uALHRUW9E/V98JQEtj5Rz5KzUEhpog1W
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DC3nkVkE
Subject: [Intel-wired-lan] [PATCH net v6] ice: Fix VSIs unable to share
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
us to remove some additional code that's checking if a unicast MAC
filter already exists.

Fixes: 47ebc7b ("ice: Check if unicast MAC exists before setting VF MAC")
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: amend the commit msg
v3: removed ucast_shared
v4: remove if statements depending on ucast_shared
v5: split into 2 separete patches
v6: target the second patch to next-q
---
 drivers/net/ethernet/intel/ice/ice_main.c  |  2 ++
 drivers/net/ethernet/intel/ice/ice_sriov.c | 40 ----------------------
 2 files changed, 2 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0c5780bccb38..3ca5c30452d4 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4667,6 +4667,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		ice_set_safe_mode_caps(hw);
 	}
 
+	hw->ucast_shared = true;
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
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
