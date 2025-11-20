Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81168C757F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 17:58:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D863384819;
	Thu, 20 Nov 2025 16:57:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YCrHS-HVQTON; Thu, 20 Nov 2025 16:57:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AB8F84832
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763657873;
	bh=BT27T6sK2yBAxFV4ed8+IeYBk7Pf6SyQOuDXETBKlUc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4ArFfJC+G81TZ19cHYhPVEJqwuxIhkAYqWCUvdEP66pKEOm06vO1I6hm8yAxtgWDF
	 8T+dZFsCuBbiB1JyURSV44aIB/GR9xAQJyW4YOF3jYa0aCbVavexRXaZuXFlEon2vn
	 VaoVXo3bsBM/t/uB3LW7n45XM1EccJvDVHOF1JNHuejQ5z3PvcI6GklQqrw9WYLHhn
	 NNSAz8PibG827QxuuaOVvhNxA6/7DFZHrjJ701kPCXEtgMneG63UGorxka1ULnnd3e
	 JxXGKEL6lLM924lF5HFjKBCczKug+JMAFjfWrGq86n+SymeT5syTOzrrfvI8k27TXz
	 3QSZHJAioFw6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AB8F84832;
	Thu, 20 Nov 2025 16:57:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DACB37D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 701556125B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fktq-M_zkrwS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 16:28:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 75A2361073
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75A2361073
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75A2361073
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:34 +0000 (UTC)
X-CSE-ConnectionGUID: wJ5U+hi0Rk6HsIEkCY3aaQ==
X-CSE-MsgGUID: EdqPbCouS9qLEq7SF4GLWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="69599319"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="69599319"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 08:28:34 -0800
X-CSE-ConnectionGUID: /4wv4P5YTRunnpl/xwWfaA==
X-CSE-MsgGUID: xLKBsfVrQqGscFBYtI4eEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="191531312"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa008.jf.intel.com with ESMTP; 20 Nov 2025 08:28:31 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com
Date: Thu, 20 Nov 2025 17:28:13 +0100
Message-ID: <20251120162813.37942-9-jakub.slepecki@intel.com>
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
 t=1763656114; x=1795192114;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qkd9LXSWIdk8gvMSxBPQuHaRcheqZ5atL8hP2EBRycM=;
 b=jXjhRGgfTlFH54aOhGEXidfDrNci0YhqMmwyzwN/cpBEm9BFsxZUImeH
 cfS1wicOMZyzHFt0JYYJ+s7InQzZ73jkfioRVv1cfqG0g0wV7Zl6K1Zz8
 tzVbyTm61+dNFxhMrCKB7Zep5YKyymDHexlZyA65zx95H0StlX/TyzUIn
 JGoN+c7BD8K0xr/cLoWyOatySv4X/f/AB6N+6Xi44O9Puuafkul5jjw1T
 vRzSWx7yHlGHn2kYKw6WnJ7vd3jwFMGj+HbA03QGKgE41RJGLIWfap7Vl
 31+sa+O2ew7N2nsuU/ckjTofyVHcRdKzonW+t81spIbiCT5tWKZiZEKX5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jXjhRGgf
Subject: [Intel-wired-lan] [PATCH iwl-next 8/8] ice: in VEB,
 prevent "cross-vlan" traffic from hitting loopback
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

In Virtual Ethernet Bridge (VEB) mode, we use MAC filters to forward
traffic between two VFs.  We also use VLAN filters to prune potential
destinations, so that they don't cross VLANs.  In case a VF in VLAN X
sends a packet to a MAC address matching another VF but in VLAN Y, both
these filters will be hit.  Packet will be sent to loopback-only to VF
in VLAN Y, but VLAN filter will prune its VSI from the destination list
leaving the packet stranded in the internal switch and thus dropped.

Since there is no destination for the packet in the VLAN X, it should
instead be sent to the wire.

To fix this, we introduce MAC,VLAN filters in place of MAC-only filters
if VSI is part of any VLAN.  We consider VSI part of a VLAN if it has a
PVID set, or if it has a specific VLAN filter and does not have a VLAN
0 filter.

This approach does not attempt to fix interactions with upper devices.
If an upper vlan device requests a separate MAC address filter resulting
in a call to __dev_uc_sync, the VSI will start receiving all packets
destined for this MAC and not just within the VLAN.  I don't see a
straight-forward way to resolve this: information about MAC and VLAN
filters coming from kernel to driver is disconnected from one another
and from the device that requests it.  It could be worked around by,
for example, tracking all upper devices with netdev notifications and
adjusting the filters there.  The scope of this patch is hence limited
to VF traffic.

Following situations were considered for VLAN filters additions, removal,
or changes:

1. ice changes VF's vlan
2. VF is reset and rebuilt
3. vlan device attaches above a PF or a VF

And same for MAC filters:

4. PF's MAC is changed
5. PF changes MAC of a VF
6. VF's MAC is changed
7. ndo_set_rx_mode et al

When VLAN is assigned to a VF in (1), the affected VF is reset and
rebuild.  This makes (1) the same as (2).  We end up with two cases
where VLAN filters are added: (2) and (3).

To correctly handle (1-2), we move the VLAN filters initialization
before the MAC filters initialization, since MAC filters now depend
on VLAN filters presence.  These two handle PVID (or lack of thereof)
and because they are always associated with a reset, we don't need to
consider updating MAC and MAC,VLAN filters afterwards.

In (3), we will always have a lower device that is expected to receive
all packets for its MAC regardless of VLAN tag.  Because of the caveat
described above, we will do the same for each MAC address associated with
the interface regardless of VLANs.  The result is we only have MAC-only
filters in this case.

When we create MAC filters in (4-7) we now check for existing VLAN
filters and depending on PVID and VLAN 0 presence we decide to create,
respectively, a MAC and MAC,VLAN filter pair, or a MAC filter.  This is
done implicitly when requesting to remove old MAC and add new MAC,
so no change is required to this flow.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
---
Note the /a.s. dead/ branch in ice_fltr.c.  I decided to make it explicit,
but it can be merged into VLAN 0 branch as well (with or without a
comment), because their final effect is exactly the same.
---
 drivers/net/ethernet/intel/ice/ice_fltr.c   | 71 +++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_fltr.h   |  6 +-
 drivers/net/ethernet/intel/ice/ice_main.c   |  8 +--
 drivers/net/ethernet/intel/ice/ice_switch.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_switch.h |  2 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c |  8 +--
 6 files changed, 83 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index 96a4e4b1b3fc..c0fc1bced167 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -3,6 +3,7 @@
 
 #include "ice.h"
 #include "ice_fltr.h"
+#include "ice_lib.h"
 
 /**
  * ice_fltr_free_list - free filter lists helper
@@ -221,10 +222,12 @@ void ice_fltr_remove_all(struct ice_vsi *vsi)
  * @list: list to add filter info to
  * @mac: MAC address to add
  * @action: filter action
+ * @external: force the filter to enable lan destination
  */
 int
 ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct list_head *list,
-			 const u8 *mac, enum ice_sw_fwd_act_type action)
+			 const u8 *mac, enum ice_sw_fwd_act_type action,
+			 bool external)
 {
 	struct ice_fltr_info info = { 0 };
 
@@ -233,6 +236,10 @@ ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct list_head *list,
 	info.lkup_type = ICE_SW_LKUP_MAC;
 	info.fltr_act = action;
 	info.vsi_handle = vsi->idx;
+	if (external) {
+		info.lb_en = ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED;
+		info.lan_en = ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED;
+	}
 
 	ether_addr_copy(info.l_data.mac.mac_addr, mac);
 
@@ -273,6 +280,62 @@ ice_fltr_add_mac_vlan_to_list(struct ice_vsi *vsi, struct list_head *list,
 					  list);
 }
 
+/**
+ * ice_fltr_add_macs_to_list - add MAC and MAC,VLAN filters info to an existing
+ * list
+ * @vsi: pointer to VSI struct
+ * @list: list to add filter info to
+ * @mac: MAC address to add
+ * @action: filter action
+ *
+ * Return:
+ * * 0 on success, or
+ * * %-ENOMEM if entry for filter could not be allocated.
+ */
+int
+ice_fltr_add_macs_to_list(struct ice_vsi *vsi, struct list_head *list,
+			  const u8 *mac, enum ice_sw_fwd_act_type action)
+{
+	if (is_multicast_ether_addr(mac)) {
+		/* There is no point in doing the same gymnastics as below
+		 * because multicast addresses are sent to both lan and lb then
+		 * pruned as necessary.
+		 */
+		return ice_fltr_add_mac_to_list(vsi, list, mac, action, false);
+	} else if (ice_vsi_has_pvid(vsi)) {
+		u16 pvid = ice_vsi_pvid(vsi);
+		int ret;
+
+		ret = ice_fltr_add_mac_to_list(vsi, list, mac, action, true);
+		if (ret)
+			return ret;
+
+		return ice_fltr_add_mac_vlan_to_list(vsi, list, mac, pvid,
+						     action);
+	} else if (vsi->num_vlan != ice_vsi_num_non_zero_vlans(vsi)) {
+		/* If VSI has VLAN 0 filters, then the interface is prepared to
+		 * receive untagged packets. As of now, we simply don't have
+		 * heuristics to decide which MAC is and is not part of which
+		 * VLAN so we put them all in the same bucket.
+		 */
+		return ice_fltr_add_mac_to_list(vsi, list, mac, action, false);
+	}
+
+	/* This branch is a.s. dead. There are three cases that may happen:
+	 *
+	 * - no vlans in sight; this is the VLAN 0 branch,
+	 * - VF is assigned PVID; this is ice_vsi_has_pvid branch,
+	 * - PF or VF is under vlan device; this is the VLAN 0 branch.
+	 *
+	 * This is where you would implement support for multiple VLANs but
+	 * without the VLAN 0. This could happen if vlan upper device is
+	 * assigned a MAC that is unique compared to lower ice device that is
+	 * forced to accept any VLAN. This would imply MAC-only filter for one
+	 * MAC address (PF) and MAC,VLAN+MAC filters for another (vlan).
+	 */
+	return ice_fltr_add_mac_to_list(vsi, list, mac, action, false);
+}
+
 /**
  * ice_fltr_add_vlan_to_list - add VLAN filter info to exsisting list
  * @vsi: pointer to VSI struct
@@ -343,7 +406,7 @@ ice_fltr_prepare_mac(struct ice_vsi *vsi, const u8 *mac,
 	LIST_HEAD(tmp_list);
 	int result;
 
-	if (ice_fltr_add_mac_to_list(vsi, &tmp_list, mac, action)) {
+	if (ice_fltr_add_macs_to_list(vsi, &tmp_list, mac, action)) {
 		ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
 		return -ENOMEM;
 	}
@@ -371,8 +434,8 @@ ice_fltr_prepare_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
 	int result;
 
 	eth_broadcast_addr(broadcast);
-	if (ice_fltr_add_mac_to_list(vsi, &tmp_list, mac, action) ||
-	    ice_fltr_add_mac_to_list(vsi, &tmp_list, broadcast, action)) {
+	if (ice_fltr_add_macs_to_list(vsi, &tmp_list, mac, action) ||
+	    ice_fltr_add_macs_to_list(vsi, &tmp_list, broadcast, action)) {
 		ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
 		return -ENOMEM;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.h b/drivers/net/ethernet/intel/ice/ice_fltr.h
index fb9ffb39be50..ed3371b0a71f 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.h
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.h
@@ -21,12 +21,16 @@ ice_fltr_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 			 u16 vid);
 int
 ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct list_head *list,
-			 const u8 *mac, enum ice_sw_fwd_act_type action);
+			 const u8 *mac, enum ice_sw_fwd_act_type action,
+			 bool external);
 int
 ice_fltr_add_mac_vlan_to_list(struct ice_vsi *vsi, struct list_head *list,
 			      const u8 *mac, u16 vlan_id,
 			      enum ice_sw_fwd_act_type action);
 int
+ice_fltr_add_macs_to_list(struct ice_vsi *vsi, struct list_head *list,
+			  const u8 *mac, enum ice_sw_fwd_act_type action);
+int
 ice_fltr_add_mac(struct ice_vsi *vsi, const u8 *mac,
 		 enum ice_sw_fwd_act_type action);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 661af039bf4f..8325f06c41a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -212,8 +212,8 @@ static int ice_add_mac_to_sync_list(struct net_device *netdev, const u8 *addr)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
-	if (ice_fltr_add_mac_to_list(vsi, &vsi->tmp_sync_list, addr,
-				     ICE_FWD_TO_VSI))
+	if (ice_fltr_add_macs_to_list(vsi, &vsi->tmp_sync_list, addr,
+				      ICE_FWD_TO_VSI))
 		return -EINVAL;
 
 	return 0;
@@ -242,8 +242,8 @@ static int ice_add_mac_to_unsync_list(struct net_device *netdev, const u8 *addr)
 	if (ether_addr_equal(addr, netdev->dev_addr))
 		return 0;
 
-	if (ice_fltr_add_mac_to_list(vsi, &vsi->tmp_unsync_list, addr,
-				     ICE_FWD_TO_VSI))
+	if (ice_fltr_add_macs_to_list(vsi, &vsi->tmp_unsync_list, addr,
+				      ICE_FWD_TO_VSI))
 		return -EINVAL;
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index b1445dfb1b64..ca19affbbf2a 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4016,7 +4016,7 @@ ice_cfg_dflt_vsi(struct ice_port_info *pi, u16 vsi_handle, bool set,
  * @fm_entry: filter entry to inspect
  * @vsi_handle: VSI handle to compare with filter info
  */
-static bool
+bool
 ice_vsi_uses_fltr(struct ice_fltr_mgmt_list_entry *fm_entry, u16 vsi_handle)
 {
 	return ((fm_entry->fltr_info.fltr_act == ICE_FWD_TO_VSI &&
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 60527475959b..79648f525abf 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -340,6 +340,8 @@ ice_update_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 bool ice_is_vsi_valid(struct ice_hw *hw, u16 vsi_handle);
 struct ice_vsi_ctx *ice_get_vsi_ctx(struct ice_hw *hw, u16 vsi_handle);
 void ice_clear_all_vsi_ctx(struct ice_hw *hw);
+bool ice_vsi_uses_fltr(struct ice_fltr_mgmt_list_entry *fm_entry,
+		       u16 vsi_handle);
 /* Switch config */
 int ice_get_initial_sw_cfg(struct ice_hw *hw);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index de9e81ccee66..1031ce20bb60 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -501,14 +501,14 @@ static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
 
 	ice_vf_set_host_trust_cfg(vf);
 
-	if (ice_vf_rebuild_host_mac_cfg(vf))
-		dev_err(dev, "failed to rebuild default MAC configuration for VF %d\n",
-			vf->vf_id);
-
 	if (ice_vf_rebuild_host_vlan_cfg(vf, vsi))
 		dev_err(dev, "failed to rebuild VLAN configuration for VF %u\n",
 			vf->vf_id);
 
+	if (ice_vf_rebuild_host_mac_cfg(vf))
+		dev_err(dev, "failed to rebuild default MAC configuration for VF %d\n",
+			vf->vf_id);
+
 	if (ice_vf_rebuild_host_tx_rate_cfg(vf))
 		dev_err(dev, "failed to rebuild Tx rate limiting configuration for VF %u\n",
 			vf->vf_id);
-- 
2.43.0

