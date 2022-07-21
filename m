Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D335157C5CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 10:05:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3C8B84753;
	Thu, 21 Jul 2022 08:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3C8B84753
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658390718;
	bh=/suBXKa3c5pmDseQWyPuncV7QNV2Ikw2QZL9b4yBYM0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=E/CJgSpcLkNDymEAR+lY+OKsrMi0nkU00iJKLehqN+eoNKOFtFPZZ0+CwMMcye8yQ
	 V+VAoYfmMreSjr2VS1eSpIP0cdPjuCNk7RW1mkxVSwyye2LfnWv5XJ18M5IP06XT2w
	 xtDSZCqdmlRboTM6TFchrfdpjYxhiERwzp3UZmZyTBs5RCatMRcBeFA3wtN8zt9E8G
	 iWA+6nT5syA0KbVTFg1quVKZjAOCqcHhR4k3G8P0WQQFYA81IT7jg4JEPr/XAI10xQ
	 Ero+Ge08p0nFECUinn4ygRj4ZLQdTYIwWJm20yX/V3mUKAlxvWnuguix1/sPSf7bRV
	 hRiHBDGqrF7IQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p9fcNgFqwjtZ; Thu, 21 Jul 2022 08:05:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E4B283FC2;
	Thu, 21 Jul 2022 08:05:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E4B283FC2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F25351BF42E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 08:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C69FE60EAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 08:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C69FE60EAB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o6TvfYcAbaAu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 08:05:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54C64605AE
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 54C64605AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 08:05:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="348677188"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="348677188"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 01:05:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,288,1650956400"; d="scan'208";a="548680455"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga003.jf.intel.com with ESMTP; 21 Jul 2022 01:05:08 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 21 Jul 2022 10:01:25 +0200
Message-Id: <20220721080125.508953-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658390710; x=1689926710;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pOQ3WUwW8I2FxRrXnrK0vfrHGZX8wDc5z5VpVNgjya4=;
 b=LIc9KvVfn72E4bfpomWPrmLPfLkXyt3drUQotCeaF6nZoJUn6Jdb4329
 NmUhVeE6+PgkxZNTnm6IjmaCd6PCLDLB1od3sWm12e3NeqtN523tWUxEA
 S0zU9ZHYpbGc/WTuG0HB/s4yrXPJEnKBLLco7uyOcuEV728wdjhw1z6+v
 qb0kz1Cwsul5olsDmwl7q9OvlB3djz+AW4fWL4aOma5KOgw+xmdez9wcF
 XargBXfTKt7At+X3ANT4G6bDzJwi80jdgyJh/ky7ixdeIGK2ugvQz5t9Y
 yAXFenKsfD/CUjfWcsTt97gBa+sNEfnYgLNd8XkwtR0hbhz0ujYlwK8BR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LIc9KvVf
Subject: [Intel-wired-lan] [PATCH net v7] ice: Fix VSIs unable to share
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

Fixes: 47ebc7b02485 ("ice: Check if unicast MAC exists before setting VF MAC")
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
 v7: correct the 'fixes' tag
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
