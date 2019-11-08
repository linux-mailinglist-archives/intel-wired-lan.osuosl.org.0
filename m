Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 725C4F5B69
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 23:54:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CBC8C24856;
	Fri,  8 Nov 2019 22:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WISgolmqf79K; Fri,  8 Nov 2019 22:54:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C65424951;
	Fri,  8 Nov 2019 22:54:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A017B1BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9DCB123DA9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HQVT3vbH9kGP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 22:54:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id D3A022441E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 14:54:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="201478833"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga008.fm.intel.com with ESMTP; 08 Nov 2019 14:54:17 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Nov 2019 06:23:24 -0800
Message-Id: <20191108142331.10221-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108142331.10221-1-anthony.l.nguyen@intel.com>
References: <20191108142331.10221-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S33 08/15] ice: Refactor removal of VLAN
 promiscuous rules
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

Currently ice_clear_vsi_promisc() detects if the VLAN ID sent is not 0
and sets the recipe_id to ICE_SW_LKUP_PROMISC_VLAN in that case and
ICE_SW_LKUP_PROMISC if the VLAN_ID is 0. However this doesn't allow VLAN
0 promiscuous rules to be removed, but they can be added. Fix this by
checking if the promisc_mask contains ICE_PROMISC_VLAN_RX or
ICE_PROMISC_VLAN_TX. This change was made to match what is being done
for ice_set_vsi_promisc().

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 77d211ea3aae..b5a53f862a83 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2428,7 +2428,7 @@ ice_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 	if (!ice_is_vsi_valid(hw, vsi_handle))
 		return ICE_ERR_PARAM;
 
-	if (vid)
+	if (promisc_mask & (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX))
 		recipe_id = ICE_SW_LKUP_PROMISC_VLAN;
 	else
 		recipe_id = ICE_SW_LKUP_PROMISC;
@@ -2440,13 +2440,18 @@ ice_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 
 	mutex_lock(rule_lock);
 	list_for_each_entry(itr, rule_head, list_entry) {
+		struct ice_fltr_info *fltr_info;
 		u8 fltr_promisc_mask = 0;
 
 		if (!ice_vsi_uses_fltr(itr, vsi_handle))
 			continue;
+		fltr_info = &itr->fltr_info;
+
+		if (recipe_id == ICE_SW_LKUP_PROMISC_VLAN &&
+		    vid != fltr_info->l_data.mac_vlan.vlan_id)
+			continue;
 
-		fltr_promisc_mask |=
-			ice_determine_promisc_mask(&itr->fltr_info);
+		fltr_promisc_mask |= ice_determine_promisc_mask(fltr_info);
 
 		/* Skip if filter is not completely specified by given mask */
 		if (fltr_promisc_mask & ~promisc_mask)
@@ -2454,7 +2459,7 @@ ice_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 
 		status = ice_add_entry_to_vsi_fltr_list(hw, vsi_handle,
 							&remove_list_head,
-							&itr->fltr_info);
+							fltr_info);
 		if (status) {
 			mutex_unlock(rule_lock);
 			goto free_fltr_list;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
