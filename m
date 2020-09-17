Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E4126E689
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 22:19:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BB1D87611;
	Thu, 17 Sep 2020 20:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FpncWWALY3Ek; Thu, 17 Sep 2020 20:19:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD8D58764B;
	Thu, 17 Sep 2020 20:19:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E9141BF37B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1945820438
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3QgCuyrYagIB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id CFF0A203D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:15 +0000 (UTC)
IronPort-SDR: p5ko8afjtmqt3r8rA9bQiJu3viPTBGBzJJxRSCQ0FAie2ykxRn/JJkd+ObRNF4axWi7oVxzafG
 auUQmcezgLXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="147535882"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="147535882"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:19:13 -0700
IronPort-SDR: BWA7JW45tTlQ7tKePmLl368e3QqtypKFEJcuX0ihSESSrNDtMzCADJ1O5elElunZ17fE8fgkUs
 Zn4cyoaTBltQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="508574674"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 17 Sep 2020 13:19:12 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Sep 2020 13:13:34 -0700
Message-Id: <20200917201347.81570-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S53 02/15] ice: Manage VF's MAC address
 for both legacy and new cases
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

Currently there is no way for a VF driver to specify if it wants to
change it's hardware address. New bits are being added to virtchnl.h
in struct virtchnl_ether_addr that allow for the VF to correctly
communicate this information. However, legacy VF drivers that don't
support the new virtchnl.h bits still need to be supported. Make a
best effort attempt at saving the VF's primary/device address in the
legacy case and depend on the VIRTCHNL_ETHER_ADDR_PRIMARY type for
the new case.

Legacy case - If a unicast MAC is being added and the
hw_lan_addr.addr is empty, then populate it. This assumes that the
address is the VF's hardware address. If a unicast MAC is being
added and the hw_lan_addr.addr is not empty, then cache it in the
legacy_last_added_umac.addr. If a unicast MAC is being deleted and it
matches the hw_lan_addr.addr, then zero the hw_lan_addr.addr.
Also, if the legacy_last_added_umac.addr has not expired, copy the
legacy_last_added_umac.addr into the hw_lan_addr.addr. This is done
because we cannot guarantee the order of VIRTCHNL_OP_ADD_ETH_ADDR and
VIRTCHNL_OP_DEL_ETH_ADDR.

New case - If a unicast MAC is being added and it's specified as
VIRTCHNL_ETHER_ADDR_PRIMARY, then replace the current
hw_lan_addr.addr. If a unicast MAC is being deleted and it's type
is specified as VIRTCHNL_ETHER_ADDR_PRIMARY, then zero the
hw_lan_addr.addr.

Untrusted VFs - Only allow above legacy/new changes to their
hardware address if the PF has not set it administratively via
iproute2.

Trusted VFs - Always allow above legacy/new changes to their
hardware address even if the PF has administratively set it via
iproute2.

Also, change the variable dflt_lan_addr to hw_lan_addr to clearly
represent the purpose of this variable since it's purpose is to
act as a hardware programmed MAC address for the VF.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 158 +++++++++++++++---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   8 +-
 2 files changed, 140 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index c8b2705a8aed..627c4e36c1bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -637,12 +637,12 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 
 	vf->num_mac++;
 
-	if (is_valid_ether_addr(vf->dflt_lan_addr.addr)) {
-		status = ice_fltr_add_mac(vsi, vf->dflt_lan_addr.addr,
+	if (is_valid_ether_addr(vf->hw_lan_addr.addr)) {
+		status = ice_fltr_add_mac(vsi, vf->hw_lan_addr.addr,
 					  ICE_FWD_TO_VSI);
 		if (status) {
 			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %s\n",
-				&vf->dflt_lan_addr.addr[0], vf->vf_id,
+				&vf->hw_lan_addr.addr[0], vf->vf_id,
 				ice_stat_str(status));
 			return ice_status_to_errno(status);
 		}
@@ -1965,7 +1965,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	vfres->vsi_res[0].vsi_type = VIRTCHNL_VSI_SRIOV;
 	vfres->vsi_res[0].num_queue_pairs = vsi->num_txq;
 	ether_addr_copy(vfres->vsi_res[0].default_mac_addr,
-			vf->dflt_lan_addr.addr);
+			vf->hw_lan_addr.addr);
 
 	/* match guest capabilities */
 	vf->driver_caps = vfres->vf_cap_flags;
@@ -3018,20 +3018,94 @@ static bool ice_can_vf_change_mac(struct ice_vf *vf)
 	return true;
 }
 
+/**
+ * ice_vc_ether_addr_type - get type of virtchnl_ether_addr
+ * @vc_ether_addr: used to extract the type
+ */
+static u8
+ice_vc_ether_addr_type(struct virtchnl_ether_addr *vc_ether_addr)
+{
+	return (vc_ether_addr->type & VIRTCHNL_ETHER_ADDR_TYPE_MASK);
+}
+
+/**
+ * ice_is_vc_addr_legacy - check if the MAC address is from an older VF
+ * @vc_ether_addr: VIRTCHNL structure that contains MAC and type
+ */
+static bool
+ice_is_vc_addr_legacy(struct virtchnl_ether_addr *vc_ether_addr)
+{
+	u8 type = ice_vc_ether_addr_type(vc_ether_addr);
+
+	return (type == VIRTCHNL_ETHER_ADDR_LEGACY);
+}
+
+/**
+ * ice_is_vc_addr_primary - check if the MAC address is the VF's primary MAC
+ * @vc_ether_addr: VIRTCHNL structure that contains MAC and type
+ *
+ * This function should only be called when the MAC address in
+ * virtchnl_ether_addr is a valid unicast MAC
+ */
+static bool
+ice_is_vc_addr_primary(struct virtchnl_ether_addr __maybe_unused *vc_ether_addr)
+{
+	u8 type = ice_vc_ether_addr_type(vc_ether_addr);
+
+	return (type == VIRTCHNL_ETHER_ADDR_PRIMARY);
+}
+
+/**
+ * ice_vfhw_mac_add - update the VF's cached hardware MAC if allowed
+ * @vf: VF to update
+ * @vc_ether_addr: structure from VIRTCHNL with MAC to add
+ */
+static void
+ice_vfhw_mac_add(struct ice_vf *vf, struct virtchnl_ether_addr *vc_ether_addr)
+{
+	u8 *mac_addr = vc_ether_addr->addr;
+
+	if (!is_valid_ether_addr(mac_addr))
+		return;
+
+	/* only allow legacy VF drivers to set the hardware MAC if it is zero
+	 * and allow new VF drivers to set the hardware MAC if the type was
+	 * correctly specified over VIRTCHNL
+	 */
+	if ((ice_is_vc_addr_legacy(vc_ether_addr) &&
+	     is_zero_ether_addr(vf->hw_lan_addr.addr)) ||
+	    ice_is_vc_addr_primary(vc_ether_addr))
+		ether_addr_copy(vf->hw_lan_addr.addr, mac_addr);
+
+	/* hardware MAC is already set, but its possible that the VF driver sent
+	 * the VIRTCHNL_OP_ADD_ETH_ADDR message before the
+	 * VIRTCHNL_OP_DEL_ETH_ADDR when trying to update its MAC, so save it
+	 * away for the legacy VF driver case as it will be updated in the
+	 * delete flow for this case
+	 */
+	if (ice_is_vc_addr_legacy(vc_ether_addr)) {
+		ether_addr_copy(vf->legacy_last_added_umac.addr,
+				mac_addr);
+		vf->legacy_last_added_umac.time_modified = jiffies;
+	}
+}
+
 /**
  * ice_vc_add_mac_addr - attempt to add the MAC address passed in
  * @vf: pointer to the VF info
  * @vsi: pointer to the VF's VSI
- * @mac_addr: MAC address to add
+ * @vc_ether_addr: VIRTCHNL MAC address structure used to add MAC
  */
 static int
-ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
+ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
+		    struct virtchnl_ether_addr *vc_ether_addr)
 {
 	struct device *dev = ice_pf_to_dev(vf->pf);
+	u8 *mac_addr = vc_ether_addr->addr;
 	enum ice_status status;
 
 	/* default unicast MAC already added */
-	if (ether_addr_equal(mac_addr, vf->dflt_lan_addr.addr))
+	if (ether_addr_equal(mac_addr, vf->hw_lan_addr.addr))
 		return 0;
 
 	if (is_unicast_ether_addr(mac_addr) && !ice_can_vf_change_mac(vf)) {
@@ -3050,32 +3124,66 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
 		return -EIO;
 	}
 
-	/* Set the default LAN address to the latest unicast MAC address added
-	 * by the VF. The default LAN address is reported by the PF via
-	 * ndo_get_vf_config.
-	 */
-	if (is_unicast_ether_addr(mac_addr))
-		ether_addr_copy(vf->dflt_lan_addr.addr, mac_addr);
+	ice_vfhw_mac_add(vf, vc_ether_addr);
 
 	vf->num_mac++;
 
 	return 0;
 }
 
+/**
+ * ice_is_legacy_umac_expired - check if last added legacy unicast MAC expired
+ * @last_added_umac: structure used to check expiration
+ */
+static bool ice_is_legacy_umac_expired(struct ice_time_mac *last_added_umac)
+{
+#define ICE_LEGACY_VF_MAC_CHANGE_EXPIRE_TIME	msecs_to_jiffies(3000)
+	return time_is_before_jiffies(last_added_umac->time_modified +
+				      ICE_LEGACY_VF_MAC_CHANGE_EXPIRE_TIME);
+}
+
+/**
+ * ice_vfhw_mac_del - update the VF's cached hardware MAC if allowed
+ * @vf: VF to update
+ * @vc_ether_addr: structure from VIRTCHNL with MAC to delete
+ */
+static void
+ice_vfhw_mac_del(struct ice_vf *vf, struct virtchnl_ether_addr *vc_ether_addr)
+{
+	u8 *mac_addr = vc_ether_addr->addr;
+
+	if (!is_valid_ether_addr(mac_addr) ||
+	    !ether_addr_equal(vf->hw_lan_addr.addr, mac_addr))
+		return;
+
+	/* allow the hardware MAC to be repopulated in the add flow */
+	eth_zero_addr(vf->hw_lan_addr.addr);
+
+	/* only update cached hardware MAC for legacy VF drivers on delete
+	 * because we cannot guarantee order/type of MAC from the VF driver
+	 */
+	if (ice_is_vc_addr_legacy(vc_ether_addr) &&
+	    !ice_is_legacy_umac_expired(&vf->legacy_last_added_umac))
+		ether_addr_copy(vf->hw_lan_addr.addr,
+				vf->legacy_last_added_umac.addr);
+}
+
 /**
  * ice_vc_del_mac_addr - attempt to delete the MAC address passed in
  * @vf: pointer to the VF info
  * @vsi: pointer to the VF's VSI
- * @mac_addr: MAC address to delete
+ * @vc_ether_addr: VIRTCHNL MAC address structure used to delete MAC
  */
 static int
-ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
+ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
+		    struct virtchnl_ether_addr *vc_ether_addr)
 {
 	struct device *dev = ice_pf_to_dev(vf->pf);
+	u8 *mac_addr = vc_ether_addr->addr;
 	enum ice_status status;
 
 	if (!ice_can_vf_change_mac(vf) &&
-	    ether_addr_equal(mac_addr, vf->dflt_lan_addr.addr))
+	    ether_addr_equal(mac_addr, vf->hw_lan_addr.addr))
 		return 0;
 
 	status = ice_fltr_remove_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
@@ -3089,8 +3197,7 @@ ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
 		return -EIO;
 	}
 
-	if (ether_addr_equal(mac_addr, vf->dflt_lan_addr.addr))
-		eth_zero_addr(vf->dflt_lan_addr.addr);
+	ice_vfhw_mac_del(vf, vc_ether_addr);
 
 	vf->num_mac--;
 
@@ -3109,7 +3216,8 @@ static int
 ice_vc_handle_mac_addr_msg(struct ice_vf *vf, u8 *msg, bool set)
 {
 	int (*ice_vc_cfg_mac)
-		(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr);
+		(struct ice_vf *vf, struct ice_vsi *vsi,
+		 struct virtchnl_ether_addr *virtchnl_ether_addr);
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_ether_addr_list *al =
 	    (struct virtchnl_ether_addr_list *)msg;
@@ -3158,7 +3266,7 @@ ice_vc_handle_mac_addr_msg(struct ice_vf *vf, u8 *msg, bool set)
 		    is_zero_ether_addr(mac_addr))
 			continue;
 
-		result = ice_vc_cfg_mac(vf, vsi, mac_addr);
+		result = ice_vc_cfg_mac(vf, vsi, &al->list[i]);
 		if (result == -EEXIST || result == -ENOENT) {
 			continue;
 		} else if (result) {
@@ -3779,7 +3887,7 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 		return -EBUSY;
 
 	ivi->vf = vf_id;
-	ether_addr_copy(ivi->mac, vf->dflt_lan_addr.addr);
+	ether_addr_copy(ivi->mac, vf->hw_lan_addr.addr);
 
 	/* VF configuration for VLAN and applicable QoS */
 	ivi->vlan = vf->port_vlan_info & VLAN_VID_MASK;
@@ -3855,7 +3963,7 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 
 	vf = &pf->vf[vf_id];
 	/* nothing left to do, unicast MAC already set */
-	if (ether_addr_equal(vf->dflt_lan_addr.addr, mac))
+	if (ether_addr_equal(vf->hw_lan_addr.addr, mac))
 		return 0;
 
 	ret = ice_check_vf_ready_for_cfg(vf);
@@ -3871,7 +3979,7 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	/* VF is notified of its new MAC via the PF's response to the
 	 * VIRTCHNL_OP_GET_VF_RESOURCES message after the VF has been reset
 	 */
-	ether_addr_copy(vf->dflt_lan_addr.addr, mac);
+	ether_addr_copy(vf->hw_lan_addr.addr, mac);
 	if (is_zero_ether_addr(mac)) {
 		/* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its MAC */
 		vf->pf_set_mac = false;
@@ -4024,7 +4132,7 @@ void ice_print_vf_rx_mdd_event(struct ice_vf *vf)
 
 	dev_info(dev, "%d Rx Malicious Driver Detection events detected on PF %d VF %d MAC %pM. mdd-auto-reset-vfs=%s\n",
 		 vf->mdd_rx_events.count, pf->hw.pf_id, vf->vf_id,
-		 vf->dflt_lan_addr.addr,
+		 vf->hw_lan_addr.addr,
 		 test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)
 			  ? "on" : "off");
 }
@@ -4068,7 +4176,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
 
 			dev_info(dev, "%d Tx Malicious Driver Detection events detected on PF %d VF %d MAC %pM.\n",
 				 vf->mdd_tx_events.count, hw->pf_id, i,
-				 vf->dflt_lan_addr.addr);
+				 vf->hw_lan_addr.addr);
 		}
 	}
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 0f519fba3770..f440b290e02e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -57,6 +57,11 @@ enum ice_virtchnl_cap {
 	ICE_VIRTCHNL_VF_CAP_PRIVILEGE,
 };
 
+struct ice_time_mac {
+	unsigned long time_modified;
+	u8 addr[ETH_ALEN];
+};
+
 /* VF MDD events print structure */
 struct ice_mdd_vf_events {
 	u16 count;			/* total count of Rx|Tx events */
@@ -75,7 +80,8 @@ struct ice_vf {
 	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
 	struct virtchnl_version_info vf_ver;
 	u32 driver_caps;		/* reported by VF driver */
-	struct virtchnl_ether_addr dflt_lan_addr;
+	struct virtchnl_ether_addr hw_lan_addr;
+	struct ice_time_mac legacy_last_added_umac;
 	DECLARE_BITMAP(txq_ena, ICE_MAX_RSS_QS_PER_VF);
 	DECLARE_BITMAP(rxq_ena, ICE_MAX_RSS_QS_PER_VF);
 	u16 port_vlan_info;		/* Port VLAN ID and QoS */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
