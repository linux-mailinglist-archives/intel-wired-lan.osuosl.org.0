Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F26834E30A4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Mar 2022 20:18:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1343D40A22;
	Mon, 21 Mar 2022 19:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bqZp9a3Ew3eC; Mon, 21 Mar 2022 19:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 259FE40A21;
	Mon, 21 Mar 2022 19:18:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E02D51BF37B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 19:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE0DD415D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 19:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ss8muhZ7mfSv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Mar 2022 19:17:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A56B7415C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 19:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1647890273;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=XlKbYMmB2V2B0XUMeBVfBmPCy5ACYdvUSKWTFsCVzFE=;
 b=KjG4PIromjI22I/t/UNN2197HeHfE9QSXwlDExXmHkO9en/U0jXU2VfihjYoFaxDn4c/vZ
 i/poIEBHFfjXK+aEKZ+9AEHBn8tCiV0ItSwnm+StvmzyhjHmbSvi5yIwmZAJ0ieLn70nhl
 sQ7cGL42j31SI7t6SgcPXIvnjqlgnfk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-402-A6DZj92uPDm8AgVtjq9qww-1; Mon, 21 Mar 2022 15:17:49 -0400
X-MC-Unique: A6DZj92uPDm8AgVtjq9qww-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 44FFA3C01C04;
 Mon, 21 Mar 2022 19:17:49 +0000 (UTC)
Received: from ceranb.redhat.com (unknown [10.40.192.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 88EF91121319;
 Mon, 21 Mar 2022 19:17:32 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 21 Mar 2022 20:17:31 +0100
Message-Id: <20220321191731.2596414-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Subject: [Intel-wired-lan] [PATCH net] ice: Fix broken IFF_ALLMULTI handling
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 mschmidt@redhat.com, open list <linux-kernel@vger.kernel.org>,
 poros@redhat.com, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Akeem G Abodunrin <akeem.g.abodunrin@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Handling of all-multicast flag and associated multicast promiscuous
mode is broken in ice driver. When a user switches allmulticast
flag on or off the driver checks whether any VLANs are configured
over the interface (except default VLAN 0).

If any extra VLANs are registered it enables multicast promiscuous
mode for all these VLANs (including default VLAN 0) using
ICE_SW_LKUP_PROMISC_VLAN look-up type. In this situation all
multicast packets tagged with known VLAN ID or untagged are received
and multicast packets tagged with unknown VLAN ID ignored.

If no extra VLANs are registered (so only VLAN 0 exists) it enables
multicast promiscuous mode for VLAN 0 and uses ICE_SW_LKUP_PROMISC
look-up type. In this situation any multicast packets including
tagged ones are received.

The driver handles IFF_ALLMULTI in ice_vsi_sync_fltr() this way:

ice_vsi_sync_fltr() {
  ...
  if (changed_flags & IFF_ALLMULTI) {
    if (netdev->flags & IFF_ALLMULTI) {
      if (vsi->num_vlans > 1)
        ice_set_promisc(..., ICE_MCAST_VLAN_PROMISC_BITS);
      else
        ice_set_promisc(..., ICE_MCAST_PROMISC_BITS);
    } else {
      if (vsi->num_vlans > 1)
        ice_clear_promisc(..., ICE_MCAST_VLAN_PROMISC_BITS);
      else
        ice_clear_promisc(..., ICE_MCAST_PROMISC_BITS);
    }
  }
  ...
}

The code above depends on value vsi->num_vlan that specifies number
of VLANs configured over the interface (including VLAN 0) and
this is problem because that value is modified in NDO callbacks
ice_vlan_rx_add_vid() and ice_vlan_rx_kill_vid().

Scenario 1:
1. ip link set ens7f0 allmulticast on
2. ip link add vlan10 link ens7f0 type vlan id 10
3. ip link set ens7f0 allmulticast off
4. ip link set ens7f0 allmulticast on

[1] In this scenario IFF_ALLMULTI is enabled and the driver calls
    ice_set_promisc(..., ICE_MCAST_PROMISC_BITS) that installs
    multicast promisc rule with non-VLAN look-up type.
[2] Then VLAN with ID 10 is added and vsi->num_vlan incremented to 2
[3] Command switches IFF_ALLMULTI off and the driver calls
    ice_clear_promisc(..., ICE_MCAST_VLAN_PROMISC_BITS) but this
    call is effectively NOP because it looks for multicast promisc
    rules for VLAN 0 and VLAN 10 with VLAN look-up type but no such
    rules exist. So the all-multicast remains enabled silently
    in hardware.
[4] Command tries to switch IFF_ALLMULTI on and the driver calls
    ice_clear_promisc(..., ICE_MCAST_PROMISC_BITS) but this call
    fails (-EEXIST) because non-VLAN multicast promisc rule already
    exists.

Scenario 2:
1. ip link add vlan10 link ens7f0 type vlan id 10
2. ip link set ens7f0 allmulticast on
3. ip link add vlan20 link ens7f0 type vlan id 20
4. ip link del vlan10 ; ip link del vlan20
5. ip link set ens7f0 allmulticast off

[1] VLAN with ID 10 is added and vsi->num_vlan==2
[2] Command switches IFF_ALLMULTI on and driver installs multicast
    promisc rules with VLAN look-up type for VLAN 0 and 10
[3] VLAN with ID 20 is added and vsi->num_vlan==3 but no multicast
    promisc rules is added for this new VLAN so the interface does
    not receive MC packets from VLAN 20
[4] Both VLANs are removed but multicast rule for VLAN 10 remains
    installed so interface receives multicast packets from VLAN 10
[5] Command switches IFF_ALLMULTI off and because vsi->num_vlan is 1
    the driver tries to remove multicast promisc rule for VLAN 0
    with non-VLAN look-up that does not exist.
    All-multicast looks disabled from user point of view but it
    is partially enabled in HW (interface receives all multicast
    packets either untagged or tagged with VLAN ID 10)

To resolve these issues the patch introduces these changes:
1. Adds handling for IFF_ALLMULTI to ice_vlan_rx_add_vid() and
   ice_vlan_rx_kill_vid() callbacks. So when VLAN is added/removed
   and IFF_ALLMULTI is enabled an appropriate multicast promisc
   rule for that VLAN ID is added/removed.
2. In ice_vlan_rx_add_vid() when first VLAN besides VLAN 0 is added
   so (vsi->num_vlan == 2) and IFF_ALLMULTI is enabled then look-up
   type for existing multicast promisc rule for VLAN 0 is updated
   to ICE_MCAST_VLAN_PROMISC_BITS.
3. In ice_vlan_rx_kill_vid() when last VLAN besides VLAN 0 is removed
   so (vsi->num_vlan == 1) and IFF_ALLMULTI is enabled then look-up
   type for existing multicast promisc rule for VLAN 0 is updated
   to ICE_MCAST_PROMISC_BITS.
4. Both ice_vlan_rx_{add,kill}_vid() have to run under ICE_CFG_BUSY
   bit protection to avoid races with ice_vsi_sync_fltr() that runs
   in ice_service_task() context.
5. Bit ICE_VSI_VLAN_FLTR_CHANGED is use-less and can be removed.
6. Error messages added to ice_fltr_*_vsi_promisc() helper functions
   to avoid them in their callers
7. Small improvements to increase readability

Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |   1 -
 drivers/net/ethernet/intel/ice/ice_fltr.c |  52 +++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c | 119 +++++++++++++++-------
 3 files changed, 131 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index bea1d1e39fa2..717542e49d65 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -300,7 +300,6 @@ enum ice_vsi_state {
 	ICE_VSI_NETDEV_REGISTERED,
 	ICE_VSI_UMAC_FLTR_CHANGED,
 	ICE_VSI_MMAC_FLTR_CHANGED,
-	ICE_VSI_VLAN_FLTR_CHANGED,
 	ICE_VSI_PROMISC_CHANGED,
 	ICE_VSI_STATE_NBITS		/* must be last */
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index c29177c6bb9d..8ed87b43a367 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -58,7 +58,18 @@ int
 ice_fltr_set_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi,
 			      u8 promisc_mask)
 {
-	return ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, false);
+	struct ice_pf *pf = hw->back;
+	int result;
+
+	result = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, false);
+	if (!result)
+		return result;
+
+	dev_err(ice_pf_to_dev(pf),
+		"Error setting promisc mode on VSI %i (rc=%d)\n", vsi->vsi_num,
+		result);
+
+	return result;
 }
 
 /**
@@ -73,7 +84,18 @@ int
 ice_fltr_clear_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi,
 				u8 promisc_mask)
 {
-	return ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, true);
+	struct ice_pf *pf = hw->back;
+	int result;
+
+	result = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, true);
+	if (!result)
+		return result;
+
+	dev_err(ice_pf_to_dev(pf),
+		"Error clearing promisc mode on VSI %i (rc=%d)\n",
+		vsi->vsi_num, result);
+
+	return result;
 }
 
 /**
@@ -87,7 +109,18 @@ int
 ice_fltr_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 			   u16 vid)
 {
-	return ice_clear_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
+	struct ice_pf *pf = hw->back;
+	int result;
+
+	result = ice_clear_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
+	if (!result)
+		return result;
+
+	dev_err(ice_pf_to_dev(pf),
+		"Error clearing promisc mode on VSI %i for VID %u (rc=%d)\n",
+		ice_get_hw_vsi_num(hw, vsi_handle), vid, result);
+
+	return result;
 }
 
 /**
@@ -101,7 +134,18 @@ int
 ice_fltr_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
 			 u16 vid)
 {
-	return ice_set_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
+	struct ice_pf *pf = hw->back;
+	int result;
+
+	result = ice_set_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
+	if (!result)
+		return result;
+
+	dev_err(ice_pf_to_dev(pf),
+		"Error setting promisc mode on VSI %i for VID %u (rc=%d)\n",
+		ice_get_hw_vsi_num(hw, vsi_handle), vid, result);
+
+	return result;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b7e8744b0c0a..168a41ea37b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -227,8 +227,7 @@ static int ice_add_mac_to_unsync_list(struct net_device *netdev, const u8 *addr)
 static bool ice_vsi_fltr_changed(struct ice_vsi *vsi)
 {
 	return test_bit(ICE_VSI_UMAC_FLTR_CHANGED, vsi->state) ||
-	       test_bit(ICE_VSI_MMAC_FLTR_CHANGED, vsi->state) ||
-	       test_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
+	       test_bit(ICE_VSI_MMAC_FLTR_CHANGED, vsi->state);
 }
 
 /**
@@ -244,10 +243,15 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
 	if (vsi->type != ICE_VSI_PF)
 		return 0;
 
-	if (vsi->num_vlan > 1)
-		status = ice_fltr_set_vlan_vsi_promisc(&vsi->back->hw, vsi, promisc_m);
-	else
-		status = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m, 0);
+	if (vsi->num_vlan > 1) {
+		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
+		status = ice_fltr_set_vlan_vsi_promisc(&vsi->back->hw, vsi,
+						       promisc_m);
+	} else {
+		status = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
+						  promisc_m, 0);
+	}
+
 	return status;
 }
 
@@ -264,10 +268,15 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
 	if (vsi->type != ICE_VSI_PF)
 		return 0;
 
-	if (vsi->num_vlan > 1)
-		status = ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi, promisc_m);
-	else
-		status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m, 0);
+	if (vsi->num_vlan > 1) {
+		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
+		status = ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi,
+							 promisc_m);
+	} else {
+		status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
+						    promisc_m, 0);
+	}
+
 	return status;
 }
 
@@ -285,7 +294,6 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	u32 changed_flags = 0;
-	u8 promisc_m;
 	int err;
 
 	if (!vsi->netdev)
@@ -303,7 +311,6 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	if (ice_vsi_fltr_changed(vsi)) {
 		clear_bit(ICE_VSI_UMAC_FLTR_CHANGED, vsi->state);
 		clear_bit(ICE_VSI_MMAC_FLTR_CHANGED, vsi->state);
-		clear_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
 
 		/* grab the netdev's addr_list_lock */
 		netif_addr_lock_bh(netdev);
@@ -352,29 +359,15 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	/* check for changes in promiscuous modes */
 	if (changed_flags & IFF_ALLMULTI) {
 		if (vsi->current_netdev_flags & IFF_ALLMULTI) {
-			if (vsi->num_vlan > 1)
-				promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
-			else
-				promisc_m = ICE_MCAST_PROMISC_BITS;
-
-			err = ice_set_promisc(vsi, promisc_m);
+			err = ice_set_promisc(vsi, ICE_MCAST_PROMISC_BITS);
 			if (err) {
-				netdev_err(netdev, "Error setting Multicast promiscuous mode on VSI %i\n",
-					   vsi->vsi_num);
 				vsi->current_netdev_flags &= ~IFF_ALLMULTI;
 				goto out_promisc;
 			}
 		} else {
 			/* !(vsi->current_netdev_flags & IFF_ALLMULTI) */
-			if (vsi->num_vlan > 1)
-				promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
-			else
-				promisc_m = ICE_MCAST_PROMISC_BITS;
-
-			err = ice_clear_promisc(vsi, promisc_m);
+			err = ice_clear_promisc(vsi, ICE_MCAST_PROMISC_BITS);
 			if (err) {
-				netdev_err(netdev, "Error clearing Multicast promiscuous mode on VSI %i\n",
-					   vsi->vsi_num);
 				vsi->current_netdev_flags |= IFF_ALLMULTI;
 				goto out_promisc;
 			}
@@ -3445,19 +3438,47 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 	if (!vid)
 		return 0;
 
+	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
+		usleep_range(1000, 2000);
+
 	/* Enable VLAN pruning when a VLAN other than 0 is added */
 	if (!ice_vsi_is_vlan_pruning_ena(vsi)) {
 		ret = ice_cfg_vlan_pruning(vsi, true);
 		if (ret)
-			return ret;
+			goto finish;
+	}
+
+	/* Add multicast promisc rule for the VLAN ID to be added if
+	 * all-multicast is currently enabled.
+	 */
+	if (vsi->current_netdev_flags & IFF_ALLMULTI) {
+		ret = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
+					       ICE_MCAST_VLAN_PROMISC_BITS,
+					       vid);
+		if (ret)
+			goto finish;
 	}
 
 	/* Add a switch rule for this VLAN ID so its corresponding VLAN tagged
 	 * packets aren't pruned by the device's internal switch on Rx
 	 */
 	ret = ice_vsi_add_vlan(vsi, vid, ICE_FWD_TO_VSI);
-	if (!ret)
-		set_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
+	if (ret)
+		goto finish;
+
+	/* If all-multicast is currently enabled and this VLAN ID is only one
+	 * besides VLAN-0 we have to update look-up type of multicast promisc
+	 * rule for VLAN-0 from ICE_SW_LKUP_PROMISC to ICE_SW_LKUP_PROMISC_VLAN.
+	 */
+	if ((vsi->current_netdev_flags & IFF_ALLMULTI) && vsi->num_vlan == 2) {
+		ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
+					   ICE_MCAST_PROMISC_BITS, 0);
+		ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
+					 ICE_MCAST_VLAN_PROMISC_BITS, 0);
+	}
+
+finish:
+	clear_bit(ICE_CFG_BUSY, vsi->state);
 
 	return ret;
 }
@@ -3482,18 +3503,44 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 	if (!vid)
 		return 0;
 
+	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
+		usleep_range(1000, 2000);
+
 	/* Make sure ice_vsi_kill_vlan is successful before updating VLAN
 	 * information
 	 */
 	ret = ice_vsi_kill_vlan(vsi, vid);
 	if (ret)
-		return ret;
+		goto finish;
 
-	/* Disable pruning when VLAN 0 is the only VLAN rule */
-	if (vsi->num_vlan == 1 && ice_vsi_is_vlan_pruning_ena(vsi))
-		ret = ice_cfg_vlan_pruning(vsi, false);
+	/* Remove multicast promisc rule for the removed VLAN ID if
+	 * all-multicast is enabled.
+	 */
+	if (vsi->current_netdev_flags & IFF_ALLMULTI)
+		ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
+					   ICE_MCAST_VLAN_PROMISC_BITS, vid);
+
+	if (vsi->num_vlan == 1) {
+		/* Disable pruning when VLAN 0 is the only VLAN rule */
+		if (ice_vsi_is_vlan_pruning_ena(vsi))
+			ice_cfg_vlan_pruning(vsi, false);
+
+		/* Update look-up type of multicast promisc rule for VLAN 0
+		 * from ICE_SW_LKUP_PROMISC_VLAN to ICE_SW_LKUP_PROMISC when
+		 * all-multicast is enabled and VLAN 0 is the only VLAN rule.
+		 */
+		if (vsi->current_netdev_flags & IFF_ALLMULTI) {
+			ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
+						   ICE_MCAST_VLAN_PROMISC_BITS,
+						   0);
+			ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
+						 ICE_MCAST_PROMISC_BITS, 0);
+		}
+	}
+
+finish:
+	clear_bit(ICE_CFG_BUSY, vsi->state);
 
-	set_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
 	return ret;
 }
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
