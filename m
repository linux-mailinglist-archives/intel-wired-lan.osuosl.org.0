Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPrtMnNpg2kbmgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EE6E94A9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95CA860F69;
	Wed,  4 Feb 2026 15:44:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TXePl-PBTp98; Wed,  4 Feb 2026 15:44:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 931F8610C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770219881;
	bh=+91DrlpujevDnrl1CdRDW34p13is/6pm1oMCd0UEwoo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RvcCsrZYNs0HliigulGCZJkODpQ8OFE31YXTR7lLGt0lYR9078pGaiur7LU+o/Xcj
	 cMZJWzDnrDVML3udzGBw4sLYmf+YF2Td29Q2kgTZTdd3dF4ab1tIPtgOcVjnH+a6IC
	 uf5xRC3TAPKhBbfmT7a2HQ+LODzjptmuvJ9+g8SQPJ+s4IFJ1PnSY9+AKtGschSrT4
	 Ki0o7NrVxESQYpf7EE6vseHTYmV7MoOaLlOwFZn8wG9Z68bnrnCzxlIz5qCGFbmGhw
	 BXjVKq0TX+D7rGgAiuZiI8emeZtWPcYEo8qPeTh1fTzNRQEfWQDFgr8RR4SjdsBQty
	 +uI4kr4Vt3YMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 931F8610C8;
	Wed,  4 Feb 2026 15:44:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E68EDF4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C808D80F9E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gV1ugm-XlnOW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 15:44:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6B74D80EAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B74D80EAB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B74D80EAB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:37 +0000 (UTC)
X-CSE-ConnectionGUID: oSnQUOitTF6fNwuc0tBF9A==
X-CSE-MsgGUID: 4A94CRy2Rkm+YKZzc/JJzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="88987119"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="88987119"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 07:44:37 -0800
X-CSE-ConnectionGUID: qCR+cfYxTIezkzzbHzI5gw==
X-CSE-MsgGUID: DE2VbgKGToqCRUb1ZvS2vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="209494139"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa010.jf.intel.com with ESMTP; 04 Feb 2026 07:44:35 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed,  4 Feb 2026 16:44:18 +0100
Message-ID: <20260204154418.1285309-8-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204154418.1285309-1-jakub.slepecki@intel.com>
References: <20260204154418.1285309-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770219877; x=1801755877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OA7YBST+ChqQeXkJf5U12UWy57MshL8mMIrA8YW0jwA=;
 b=UqT3ljVQ0lArQddvcXNBNhtdhB3G3Vb7PLjik/WI0Ic8lvQUmJXDhWr3
 GGB5x7EU4GdhzErbg7PqxWafzOrpTyYuxx7Rcfc+8CsdN6ZSyeZsoLFsh
 X/8phonWXyb6csnJlfcZHCucK9iRiegaAyPSlYGEtFk0anD8d8oiKRrx9
 Z9JWMzmP3AHo3F9PHKFGvBE6uaq4Q0NwMscdYw+TOWNUBR3GMD7TMX9sZ
 kkn7VzaAUn99BaYNS4bFnMqCyFkHHEGzDJkJv051ihOqKnrlDvgq5LdiM
 y4iknEgZ5wtYlyVkS2Av0iufsNPhoR5ZGoUJiH2U1hd/uS1iU6P3bfY81
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UqT3ljVQ
Subject: [Intel-wired-lan] [PATCH iwl-next v4 7/7] ice: in VEB,
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,intel.com:mid,intel.com:email];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakub.slepecki@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 63EE6E94A9
X-Rspamd-Action: no action

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
adjusting the filters there.  Hence, the scope is limited to VF traffic.

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

No changes in v4.
No changes in v3.
No changes in v2.
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
index 7b3ab69b8300..b712e0c29fc2 100644
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
index 3b526383b8ed..13dd3448aec6 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4018,7 +4018,7 @@ ice_cfg_dflt_vsi(struct ice_port_info *pi, u16 vsi_handle, bool set,
  * @fm_entry: filter entry to inspect
  * @vsi_handle: VSI handle to compare with filter info
  */
-static bool
+bool
 ice_vsi_uses_fltr(struct ice_fltr_mgmt_list_entry *fm_entry, u16 vsi_handle)
 {
 	return ((fm_entry->fltr_info.fltr_act == ICE_FWD_TO_VSI &&
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index b442db4a2ce5..a295130e96f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -346,6 +346,8 @@ ice_update_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
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

