Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A47931CE9F4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2020 03:04:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5455786B2F;
	Tue, 12 May 2020 01:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rOqtwlEXUYWS; Tue, 12 May 2020 01:04:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09F6D86A48;
	Tue, 12 May 2020 01:04:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A915B1BF841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 01:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A4245875C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 01:04:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q0MySbGBadpL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2020 01:04:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2B7E2875BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 01:04:21 +0000 (UTC)
IronPort-SDR: d00lQwnRMPfmqBdb4TFWT9VualW3/64Bece8a1661EiLfzibQq2l9jHD1/43zlrW+0UeOBOd2D
 tOXbdBOH+5Pw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 18:04:20 -0700
IronPort-SDR: tEAkvU9nPCyAVP6052uqvXDgOf7dKB0IFGbdkMw0PLHbZCh9tMfGXriQyRB/Sso3R3+u7MSCRd
 v9Fp6nmKyA5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,381,1583222400"; d="scan'208";a="409116470"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga004.jf.intel.com with ESMTP; 11 May 2020 18:04:19 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 May 2020 18:01:46 -0700
Message-Id: <20200512010146.41303-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
References: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S42 7/7] ice: Implement aRFS
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

Enable accelerated Receive Flow Steering (aRFS). It is used to steer Rx
flows to a specific queue. This functionality is triggerred by the network
stack through ndo_rx_flow_steer and requires Flow Director (ntuple on) to
function.

The fltr_info is used to add/remove/update flow rules in the HW, the
fltr_state is used to determine what to do with the filter with respect
to HW and/or SW, and the flow_id is used in co-ordination with the
network stack.

The work for aRFS is split into two paths: the ndo_rx_flow_steer
operation and the ice_service_task. The former is where the kernel hands
us an Rx SKB among other items to setup aRFS and the latter is where
the driver adds/updates/removes filter rules from HW and updates filter
state.

In the Rx path the following things can happen:
        1. New aRFS entries are added to the hash table and the state is
           set to ICE_ARFS_INACTIVE so the filter can be updated in HW
           by the ice_service_task path.
        2. aRFS entries have their Rx Queue updated if we receive a
           pre-existing flow_id and the filter state is ICE_ARFS_ACTIVE.
           The state is set to ICE_ARFS_INACTIVE so the filter can be
           updated in HW by the ice_service_task path.
        3. aRFS entries marked as ICE_ARFS_TODEL are deleted

In the ice_service_task path the following things can happen:
        1. New aRFS entries marked as ICE_ARFS_INACTIVE are added or
           updated in HW.
           and their state is updated to ICE_ARFS_ACTIVE.
        2. aRFS entries are deleted from HW and their state is updated
           to ICE_ARFS_TODEL.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice.h          |  14 +
 drivers/net/ethernet/intel/ice/ice_arfs.c     | 663 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_arfs.h     |  82 +++
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |   8 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  48 +-
 7 files changed, 805 insertions(+), 12 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_arfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_arfs.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 8bda3796a853..14b27a4f5d45 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -27,4 +27,5 @@ ice-y := ice_main.o	\
 	 ice_ethtool.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
+ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 4d011def973a..8e877860a96f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -34,6 +34,7 @@
 #include <linux/ctype.h>
 #include <linux/bpf.h>
 #include <linux/avf/virtchnl.h>
+#include <linux/cpu_rmap.h>
 #include <net/devlink.h>
 #include <net/ipv6.h>
 #include <net/xdp_sock.h>
@@ -53,6 +54,7 @@
 #include "ice_sriov.h"
 #include "ice_fdir.h"
 #include "ice_xsk.h"
+#include "ice_arfs.h"
 
 extern const char ice_drv_ver[];
 #define ICE_BAR0		0
@@ -274,6 +276,14 @@ struct ice_vsi {
 	u8 *rss_lut_user;	/* User configured lookup table entries */
 	u8 rss_lut_type;	/* used to configure Get/Set RSS LUT AQ call */
 
+	/* aRFS members only allocated for the PF VSI */
+#define ICE_MAX_ARFS_LIST	1024
+#define ICE_ARFS_LST_MASK	(ICE_MAX_ARFS_LIST - 1)
+	struct hlist_head *arfs_fltr_list;
+	struct ice_arfs_active_fltr_cntrs *arfs_fltr_cntrs;
+	spinlock_t arfs_lock;	/* protects aRFS hash table and filter state */
+	atomic_t *arfs_last_fltr_id;
+
 	u16 max_frame;
 	u16 rx_buf_len;
 
@@ -572,6 +582,9 @@ ice_for_each_peer(struct ice_pf *pf, void *data,
 		  int (*fn)(struct ice_peer_dev_int *, void *));
 const char *ice_stat_str(enum ice_status stat_err);
 const char *ice_aq_str(enum ice_aq_err aq_err);
+int
+ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
+		    bool is_tun);
 void ice_vsi_manage_fdir(struct ice_vsi *vsi, bool ena);
 int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
 int ice_del_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
@@ -585,5 +598,6 @@ void ice_fdir_replay_fltrs(struct ice_pf *pf);
 int ice_fdir_create_dflt_rules(struct ice_pf *pf);
 int ice_open(struct net_device *netdev);
 int ice_stop(struct net_device *netdev);
+void ice_service_task_schedule(struct ice_pf *pf);
 
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
new file mode 100644
index 000000000000..bed8c2f9177e
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -0,0 +1,663 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2019, Intel Corporation. */
+
+#include "ice.h"
+
+/**
+ * ice_is_arfs_active - helper to check is aRFS is active
+ * @vsi: VSI to check
+ */
+static bool ice_is_arfs_active(struct ice_vsi *vsi)
+{
+	return !!vsi->arfs_fltr_list;
+}
+
+/**
+ * ice_is_arfs_using_perfect_flow - check if aRFS has active perfect filters
+ * @hw: pointer to the HW structure
+ * @flow_type: flow type as Flow Director understands it
+ *
+ * Flow Director will query this function to see if aRFS is currently using
+ * the specified flow_type for perfect (4-tuple) filters.
+ */
+bool
+ice_is_arfs_using_perfect_flow(struct ice_hw *hw, enum ice_fltr_ptype flow_type)
+{
+	struct ice_arfs_active_fltr_cntrs *arfs_fltr_cntrs;
+	struct ice_pf *pf = hw->back;
+	struct ice_vsi *vsi;
+
+	vsi = ice_get_main_vsi(pf);
+	if (!vsi)
+		return false;
+
+	arfs_fltr_cntrs = vsi->arfs_fltr_cntrs;
+
+	/* active counters can be updated by multiple CPUs */
+	smp_mb__before_atomic();
+	switch (flow_type) {
+	case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
+		return atomic_read(&arfs_fltr_cntrs->active_udpv4_cnt) > 0;
+	case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
+		return atomic_read(&arfs_fltr_cntrs->active_udpv6_cnt) > 0;
+	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
+		return atomic_read(&arfs_fltr_cntrs->active_tcpv4_cnt) > 0;
+	case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
+		return atomic_read(&arfs_fltr_cntrs->active_tcpv6_cnt) > 0;
+	default:
+		return false;
+	}
+}
+
+/**
+ * ice_arfs_update_active_fltr_cntrs - update active filter counters for aRFS
+ * @vsi: VSI that aRFS is active on
+ * @entry: aRFS entry used to change counters
+ * @add: true to increment counter, false to decrement
+ */
+static void
+ice_arfs_update_active_fltr_cntrs(struct ice_vsi *vsi,
+				  struct ice_arfs_entry *entry, bool add)
+{
+	struct ice_arfs_active_fltr_cntrs *fltr_cntrs = vsi->arfs_fltr_cntrs;
+
+	switch (entry->fltr_info.flow_type) {
+	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
+		if (add)
+			atomic_inc(&fltr_cntrs->active_tcpv4_cnt);
+		else
+			atomic_dec(&fltr_cntrs->active_tcpv4_cnt);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
+		if (add)
+			atomic_inc(&fltr_cntrs->active_tcpv6_cnt);
+		else
+			atomic_dec(&fltr_cntrs->active_tcpv6_cnt);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
+		if (add)
+			atomic_inc(&fltr_cntrs->active_udpv4_cnt);
+		else
+			atomic_dec(&fltr_cntrs->active_udpv4_cnt);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
+		if (add)
+			atomic_inc(&fltr_cntrs->active_udpv6_cnt);
+		else
+			atomic_dec(&fltr_cntrs->active_udpv6_cnt);
+		break;
+	default:
+		dev_err(ice_pf_to_dev(vsi->back), "aRFS: Failed to update filter counters, invalid filter type %d\n",
+			entry->fltr_info.flow_type);
+	}
+}
+
+/**
+ * ice_arfs_del_flow_rules - delete the rules passed in from HW
+ * @vsi: VSI for the flow rules that need to be deleted
+ * @del_list_head: head of the list of ice_arfs_entry(s) for rule deletion
+ *
+ * Loop through the delete list passed in and remove the rules from HW. After
+ * each rule is deleted, disconnect and free the ice_arfs_entry because it is no
+ * longer being referenced by the aRFS hash table.
+ */
+static void
+ice_arfs_del_flow_rules(struct ice_vsi *vsi, struct hlist_head *del_list_head)
+{
+	struct ice_arfs_entry *e;
+	struct hlist_node *n;
+	struct device *dev;
+
+	dev = ice_pf_to_dev(vsi->back);
+
+	hlist_for_each_entry_safe(e, n, del_list_head, list_entry) {
+		int result;
+
+		result = ice_fdir_write_fltr(vsi->back, &e->fltr_info, false,
+					     false);
+		if (!result)
+			ice_arfs_update_active_fltr_cntrs(vsi, e, false);
+		else
+			dev_dbg(dev, "Unable to delete aRFS entry, err %d fltr_state %d fltr_id %d flow_id %d Q %d\n",
+				result, e->fltr_state, e->fltr_info.fltr_id,
+				e->flow_id, e->fltr_info.q_index);
+
+		/* The aRFS hash table is no longer referencing this entry */
+		hlist_del(&e->list_entry);
+		devm_kfree(dev, e);
+	}
+}
+
+/**
+ * ice_arfs_add_flow_rules - add the rules passed in from HW
+ * @vsi: VSI for the flow rules that need to be added
+ * @add_list_head: head of the list of ice_arfs_entry_ptr(s) for rule addition
+ *
+ * Loop through the add list passed in and remove the rules from HW. After each
+ * rule is added, disconnect and free the ice_arfs_entry_ptr node. Don't free
+ * the ice_arfs_entry(s) because they are still being referenced in the aRFS
+ * hash table.
+ */
+static void
+ice_arfs_add_flow_rules(struct ice_vsi *vsi, struct hlist_head *add_list_head)
+{
+	struct ice_arfs_entry_ptr *ep;
+	struct hlist_node *n;
+	struct device *dev;
+
+	dev = ice_pf_to_dev(vsi->back);
+
+	hlist_for_each_entry_safe(ep, n, add_list_head, list_entry) {
+		int result;
+
+		result = ice_fdir_write_fltr(vsi->back,
+					     &ep->arfs_entry->fltr_info, true,
+					     false);
+		if (!result)
+			ice_arfs_update_active_fltr_cntrs(vsi, ep->arfs_entry,
+							  true);
+		else
+			dev_dbg(dev, "Unable to add aRFS entry, err %d fltr_state %d fltr_id %d flow_id %d Q %d\n",
+				result, ep->arfs_entry->fltr_state,
+				ep->arfs_entry->fltr_info.fltr_id,
+				ep->arfs_entry->flow_id,
+				ep->arfs_entry->fltr_info.q_index);
+
+		hlist_del(&ep->list_entry);
+		devm_kfree(dev, ep);
+	}
+}
+
+/**
+ * ice_arfs_is_flow_expired - check if the aRFS entry has expired
+ * @vsi: VSI containing the aRFS entry
+ * @arfs_entry: aRFS entry that's being checked for expiration
+ *
+ * Return true if the flow has expired, else false. This function should be used
+ * to determine whether or not an aRFS entry should be removed from the hardware
+ * and software structures.
+ */
+static bool
+ice_arfs_is_flow_expired(struct ice_vsi *vsi, struct ice_arfs_entry *arfs_entry)
+{
+#define ICE_ARFS_TIME_DELTA_EXPIRATION	msecs_to_jiffies(5000)
+	if (rps_may_expire_flow(vsi->netdev, arfs_entry->fltr_info.q_index,
+				arfs_entry->flow_id,
+				arfs_entry->fltr_info.fltr_id))
+		return true;
+
+	/* expiration timer only used for UDP filters */
+	if (arfs_entry->fltr_info.flow_type != ICE_FLTR_PTYPE_NONF_IPV4_UDP &&
+	    arfs_entry->fltr_info.flow_type != ICE_FLTR_PTYPE_NONF_IPV6_UDP)
+		return false;
+
+	return time_in_range64(arfs_entry->time_activated +
+			       ICE_ARFS_TIME_DELTA_EXPIRATION,
+			       arfs_entry->time_activated, get_jiffies_64());
+}
+
+/**
+ * ice_arfs_update_flow_rules - add/delete aRFS rules in HW
+ * @vsi: the VSI to be forwarded to
+ * @idx: index into the table of aRFS filter lists. Obtained from skb->hash
+ * @add_list: list to populate with filters to be added to Flow Director
+ * @del_list: list to populate with filters to be deleted from Flow Director
+ *
+ * Iterate over the hlist at the index given in the aRFS hash table and
+ * determine if there are any aRFS entries that need to be either added or
+ * deleted in the HW. If the aRFS entry is marked as ICE_ARFS_INACTIVE the
+ * filter needs to be added to HW, else if it's marked as ICE_ARFS_ACTIVE and
+ * the flow has expired delete the filter from HW. The caller of this function
+ * is expected to add/delete rules on the add_list/del_list respectively.
+ */
+static void
+ice_arfs_update_flow_rules(struct ice_vsi *vsi, u16 idx,
+			   struct hlist_head *add_list,
+			   struct hlist_head *del_list)
+{
+	struct ice_arfs_entry *e;
+	struct hlist_node *n;
+	struct device *dev;
+
+	dev = ice_pf_to_dev(vsi->back);
+
+	/* go through the aRFS hlist at this idx and check for needed updates */
+	hlist_for_each_entry_safe(e, n, &vsi->arfs_fltr_list[idx], list_entry)
+		/* check if filter needs to be added to HW */
+		if (e->fltr_state == ICE_ARFS_INACTIVE) {
+			enum ice_fltr_ptype flow_type = e->fltr_info.flow_type;
+			struct ice_arfs_entry_ptr *ep =
+				devm_kzalloc(dev, sizeof(*ep), GFP_ATOMIC);
+
+			if (!ep)
+				continue;
+			INIT_HLIST_NODE(&ep->list_entry);
+			/* reference aRFS entry to add HW filter */
+			ep->arfs_entry = e;
+			hlist_add_head(&ep->list_entry, add_list);
+			e->fltr_state = ICE_ARFS_ACTIVE;
+			/* expiration timer only used for UDP flows */
+			if (flow_type == ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
+			    flow_type == ICE_FLTR_PTYPE_NONF_IPV6_UDP)
+				e->time_activated = get_jiffies_64();
+		} else if (e->fltr_state == ICE_ARFS_ACTIVE) {
+			/* check if filter needs to be removed from HW */
+			if (ice_arfs_is_flow_expired(vsi, e)) {
+				/* remove aRFS entry from hash table for delete
+				 * and to prevent referencing it the next time
+				 * through this hlist index
+				 */
+				hlist_del(&e->list_entry);
+				e->fltr_state = ICE_ARFS_TODEL;
+				/* save reference to aRFS entry for delete */
+				hlist_add_head(&e->list_entry, del_list);
+			}
+		}
+}
+
+/**
+ * ice_sync_arfs_fltrs - update all aRFS filters
+ * @pf: board private structure
+ */
+void ice_sync_arfs_fltrs(struct ice_pf *pf)
+{
+	HLIST_HEAD(tmp_del_list);
+	HLIST_HEAD(tmp_add_list);
+	struct ice_vsi *pf_vsi;
+	unsigned int i;
+
+	pf_vsi = ice_get_main_vsi(pf);
+	if (!pf_vsi)
+		return;
+
+	if (!ice_is_arfs_active(pf_vsi))
+		return;
+
+	spin_lock_bh(&pf_vsi->arfs_lock);
+	/* Once we process aRFS for the PF VSI get out */
+	for (i = 0; i < ICE_MAX_ARFS_LIST; i++)
+		ice_arfs_update_flow_rules(pf_vsi, i, &tmp_add_list,
+					   &tmp_del_list);
+	spin_unlock_bh(&pf_vsi->arfs_lock);
+
+	/* use list of ice_arfs_entry(s) for delete */
+	ice_arfs_del_flow_rules(pf_vsi, &tmp_del_list);
+
+	/* use list of ice_arfs_entry_ptr(s) for add */
+	ice_arfs_add_flow_rules(pf_vsi, &tmp_add_list);
+}
+
+/**
+ * ice_arfs_build_entry - builds an aRFS entry based on input
+ * @vsi: destination VSI for this flow
+ * @fk: flow dissector keys for creating the tuple
+ * @rxq_idx: Rx queue to steer this flow to
+ * @flow_id: passed down from the stack and saved for flow expiration
+ *
+ * returns an aRFS entry on success and NULL on failure
+ */
+static struct ice_arfs_entry *
+ice_arfs_build_entry(struct ice_vsi *vsi, const struct flow_keys *fk,
+		     u16 rxq_idx, u32 flow_id)
+{
+	struct ice_arfs_entry *arfs_entry;
+	struct ice_fdir_fltr *fltr_info;
+	u8 ip_proto;
+
+	arfs_entry = devm_kzalloc(ice_pf_to_dev(vsi->back),
+				  sizeof(*arfs_entry),
+				  GFP_ATOMIC | __GFP_NOWARN);
+	if (!arfs_entry)
+		return NULL;
+
+	fltr_info = &arfs_entry->fltr_info;
+	fltr_info->q_index = rxq_idx;
+	fltr_info->dest_ctl = ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QINDEX;
+	fltr_info->dest_vsi = vsi->idx;
+	ip_proto = fk->basic.ip_proto;
+
+	if (fk->basic.n_proto == htons(ETH_P_IP)) {
+		fltr_info->ip.v4.proto = ip_proto;
+		fltr_info->flow_type = (ip_proto == IPPROTO_TCP) ?
+			ICE_FLTR_PTYPE_NONF_IPV4_TCP :
+			ICE_FLTR_PTYPE_NONF_IPV4_UDP;
+		fltr_info->ip.v4.src_ip = fk->addrs.v4addrs.src;
+		fltr_info->ip.v4.dst_ip = fk->addrs.v4addrs.dst;
+		fltr_info->ip.v4.src_port = fk->ports.src;
+		fltr_info->ip.v4.dst_port = fk->ports.dst;
+	} else { /* ETH_P_IPV6 */
+		fltr_info->ip.v6.proto = ip_proto;
+		fltr_info->flow_type = (ip_proto == IPPROTO_TCP) ?
+			ICE_FLTR_PTYPE_NONF_IPV6_TCP :
+			ICE_FLTR_PTYPE_NONF_IPV6_UDP;
+		memcpy(&fltr_info->ip.v6.src_ip, &fk->addrs.v6addrs.src,
+		       sizeof(struct in6_addr));
+		memcpy(&fltr_info->ip.v6.dst_ip, &fk->addrs.v6addrs.dst,
+		       sizeof(struct in6_addr));
+		fltr_info->ip.v6.src_port = fk->ports.src;
+		fltr_info->ip.v6.dst_port = fk->ports.dst;
+	}
+
+	arfs_entry->flow_id = flow_id;
+	fltr_info->fltr_id =
+		atomic_inc_return(vsi->arfs_last_fltr_id) % RPS_NO_FILTER;
+
+	return arfs_entry;
+}
+
+/**
+ * ice_arfs_is_perfect_flow_set - Check to see if perfect flow is set
+ * @hw: pointer to HW structure
+ * @l3_proto: ETH_P_IP or ETH_P_IPV6 in network order
+ * @l4_proto: IPPROTO_UDP or IPPROTO_TCP
+ *
+ * We only support perfect (4-tuple) filters for aRFS. This function allows aRFS
+ * to check if perfect (4-tuple) flow rules are currently in place by Flow
+ * Director.
+ */
+static bool
+ice_arfs_is_perfect_flow_set(struct ice_hw *hw, __be16 l3_proto, u8 l4_proto)
+{
+	unsigned long *perfect_fltr = hw->fdir_perfect_fltr;
+
+	/* advanced Flow Director disabled, perfect filters always supported */
+	if (!perfect_fltr)
+		return true;
+
+	if (l3_proto == htons(ETH_P_IP) && l4_proto == IPPROTO_UDP)
+		return test_bit(ICE_FLTR_PTYPE_NONF_IPV4_UDP, perfect_fltr);
+	else if (l3_proto == htons(ETH_P_IP) && l4_proto == IPPROTO_TCP)
+		return test_bit(ICE_FLTR_PTYPE_NONF_IPV4_TCP, perfect_fltr);
+	else if (l3_proto == htons(ETH_P_IPV6) && l4_proto == IPPROTO_UDP)
+		return test_bit(ICE_FLTR_PTYPE_NONF_IPV6_UDP, perfect_fltr);
+	else if (l3_proto == htons(ETH_P_IPV6) && l4_proto == IPPROTO_TCP)
+		return test_bit(ICE_FLTR_PTYPE_NONF_IPV6_TCP, perfect_fltr);
+
+	return false;
+}
+
+/**
+ * ice_rx_flow_steer - steer the Rx flow to where application is being run
+ * @netdev: ptr to the netdev being adjusted
+ * @skb: buffer with required header information
+ * @rxq_idx: queue to which the flow needs to move
+ * @flow_id: flow identifier provided by the netdev
+ *
+ * Based on the skb, rxq_idx, and flow_id passed in add/update an entry in the
+ * aRFS hash table. Iterate over one of the hlists in the aRFS hash table and
+ * if the flow_id already exists in the hash table but the rxq_idx has changed
+ * mark the entry as ICE_ARFS_INACTIVE so it can get updated in HW, else
+ * if the entry is marked as ICE_ARFS_TODEL delete it from the aRFS hash table.
+ * If neither of the previous conditions are true then add a new entry in the
+ * aRFS hash table, which gets set to ICE_ARFS_INACTIVE by default so it can be
+ * added to HW.
+ */
+int
+ice_rx_flow_steer(struct net_device *netdev, const struct sk_buff *skb,
+		  u16 rxq_idx, u32 flow_id)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_arfs_entry *arfs_entry;
+	struct ice_vsi *vsi = np->vsi;
+	struct flow_keys fk;
+	struct ice_pf *pf;
+	__be16 n_proto;
+	u8 ip_proto;
+	u16 idx;
+	int ret;
+
+	/* failed to allocate memory for aRFS so don't crash */
+	if (unlikely(!vsi->arfs_fltr_list))
+		return -ENODEV;
+
+	pf = vsi->back;
+
+	if (skb->encapsulation)
+		return -EPROTONOSUPPORT;
+
+	if (!skb_flow_dissect_flow_keys(skb, &fk, 0))
+		return -EPROTONOSUPPORT;
+
+	n_proto = fk.basic.n_proto;
+	/* Support only IPV4 and IPV6 */
+	if ((n_proto == htons(ETH_P_IP) && !ip_is_fragment(ip_hdr(skb))) ||
+	    n_proto == htons(ETH_P_IPV6))
+		ip_proto = fk.basic.ip_proto;
+	else
+		return -EPROTONOSUPPORT;
+
+	/* Support only TCP and UDP */
+	if (ip_proto != IPPROTO_TCP && ip_proto != IPPROTO_UDP)
+		return -EPROTONOSUPPORT;
+
+	/* only support 4-tuple filters for aRFS */
+	if (!ice_arfs_is_perfect_flow_set(&pf->hw, n_proto, ip_proto))
+		return -EOPNOTSUPP;
+
+	/* choose the aRFS list bucket based on skb hash */
+	idx = skb_get_hash_raw(skb) & ICE_ARFS_LST_MASK;
+	/* search for entry in the bucket */
+	spin_lock_bh(&vsi->arfs_lock);
+	hlist_for_each_entry(arfs_entry, &vsi->arfs_fltr_list[idx],
+			     list_entry) {
+		struct ice_fdir_fltr *fltr_info;
+
+		/* keep searching for the already existing arfs_entry flow */
+		if (arfs_entry->flow_id != flow_id)
+			continue;
+
+		fltr_info = &arfs_entry->fltr_info;
+		ret = fltr_info->fltr_id;
+
+		if (fltr_info->q_index == rxq_idx ||
+		    arfs_entry->fltr_state != ICE_ARFS_ACTIVE)
+			goto out;
+
+		/* update the queue to forward to on an already existing flow */
+		fltr_info->q_index = rxq_idx;
+		arfs_entry->fltr_state = ICE_ARFS_INACTIVE;
+		ice_arfs_update_active_fltr_cntrs(vsi, arfs_entry, false);
+		goto out_schedule_service_task;
+	}
+
+	arfs_entry = ice_arfs_build_entry(vsi, &fk, rxq_idx, flow_id);
+	if (!arfs_entry) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	ret = arfs_entry->fltr_info.fltr_id;
+	INIT_HLIST_NODE(&arfs_entry->list_entry);
+	hlist_add_head(&arfs_entry->list_entry, &vsi->arfs_fltr_list[idx]);
+out_schedule_service_task:
+	ice_service_task_schedule(pf);
+out:
+	spin_unlock_bh(&vsi->arfs_lock);
+	return ret;
+}
+
+/**
+ * ice_init_arfs_cntrs - initialize aRFS counter values
+ * @vsi: VSI that aRFS counters need to be initialized on
+ */
+static int ice_init_arfs_cntrs(struct ice_vsi *vsi)
+{
+	if (!vsi || vsi->type != ICE_VSI_PF)
+		return -EINVAL;
+
+	vsi->arfs_fltr_cntrs = kzalloc(sizeof(*vsi->arfs_fltr_cntrs),
+				       GFP_KERNEL);
+	if (!vsi->arfs_fltr_cntrs)
+		return -ENOMEM;
+
+	vsi->arfs_last_fltr_id = kzalloc(sizeof(*vsi->arfs_last_fltr_id),
+					 GFP_KERNEL);
+	if (!vsi->arfs_last_fltr_id) {
+		kfree(vsi->arfs_fltr_cntrs);
+		vsi->arfs_fltr_cntrs = NULL;
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_init_arfs - initialize aRFS resources
+ * @vsi: the VSI to be forwarded to
+ */
+void ice_init_arfs(struct ice_vsi *vsi)
+{
+	struct hlist_head *arfs_fltr_list;
+	unsigned int i;
+
+	if (!vsi || vsi->type != ICE_VSI_PF)
+		return;
+
+	arfs_fltr_list = kzalloc(sizeof(*arfs_fltr_list) * ICE_MAX_ARFS_LIST,
+				 GFP_KERNEL);
+	if (!arfs_fltr_list)
+		return;
+
+	if (ice_init_arfs_cntrs(vsi))
+		goto free_arfs_fltr_list;
+
+	for (i = 0; i < ICE_MAX_ARFS_LIST; i++)
+		INIT_HLIST_HEAD(&arfs_fltr_list[i]);
+
+	spin_lock_init(&vsi->arfs_lock);
+
+	vsi->arfs_fltr_list = arfs_fltr_list;
+
+	return;
+
+free_arfs_fltr_list:
+	kfree(arfs_fltr_list);
+}
+
+/**
+ * ice_clear_arfs - clear the aRFS hash table and any memory used for aRFS
+ * @vsi: the VSI to be forwarded to
+ */
+void ice_clear_arfs(struct ice_vsi *vsi)
+{
+	struct device *dev;
+	unsigned int i;
+
+	if (!vsi || vsi->type != ICE_VSI_PF || !vsi->back ||
+	    !vsi->arfs_fltr_list)
+		return;
+
+	dev = ice_pf_to_dev(vsi->back);
+	for (i = 0; i < ICE_MAX_ARFS_LIST; i++) {
+		struct ice_arfs_entry *r;
+		struct hlist_node *n;
+
+		spin_lock_bh(&vsi->arfs_lock);
+		hlist_for_each_entry_safe(r, n, &vsi->arfs_fltr_list[i],
+					  list_entry) {
+			hlist_del(&r->list_entry);
+			devm_kfree(dev, r);
+		}
+		spin_unlock_bh(&vsi->arfs_lock);
+	}
+
+	kfree(vsi->arfs_fltr_list);
+	vsi->arfs_fltr_list = NULL;
+	kfree(vsi->arfs_last_fltr_id);
+	vsi->arfs_last_fltr_id = NULL;
+	kfree(vsi->arfs_fltr_cntrs);
+	vsi->arfs_fltr_cntrs = NULL;
+}
+
+/**
+ * ice_free_cpu_rx_rmap - free setup cpu reverse map
+ * @vsi: the VSI to be forwarded to
+ */
+void ice_free_cpu_rx_rmap(struct ice_vsi *vsi)
+{
+	struct net_device *netdev;
+
+	if (!vsi || vsi->type != ICE_VSI_PF || !vsi->arfs_fltr_list)
+		return;
+
+	netdev = vsi->netdev;
+	if (!netdev || !netdev->rx_cpu_rmap ||
+	    netdev->reg_state != NETREG_REGISTERED)
+		return;
+
+	free_irq_cpu_rmap(netdev->rx_cpu_rmap);
+	netdev->rx_cpu_rmap = NULL;
+}
+
+/**
+ * ice_set_cpu_rx_rmap - setup cpu reverse map for each queue
+ * @vsi: the VSI to be forwarded to
+ */
+int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
+{
+	struct net_device *netdev;
+	struct ice_pf *pf;
+	int base_idx, i;
+
+	if (!vsi || vsi->type != ICE_VSI_PF)
+		return -EINVAL;
+
+	pf = vsi->back;
+	netdev = vsi->netdev;
+	if (!pf || !netdev || !vsi->num_q_vectors ||
+	    vsi->netdev->reg_state != NETREG_REGISTERED)
+		return -EINVAL;
+
+	netdev_dbg(netdev, "Setup CPU RMAP: vsi type 0x%x, ifname %s, q_vectors %d\n",
+		   vsi->type, netdev->name, vsi->num_q_vectors);
+
+	netdev->rx_cpu_rmap = alloc_irq_cpu_rmap(vsi->num_q_vectors);
+	if (unlikely(!netdev->rx_cpu_rmap))
+		return -EINVAL;
+
+	base_idx = vsi->base_vector;
+	for (i = 0; i < vsi->num_q_vectors; i++)
+		if (irq_cpu_rmap_add(netdev->rx_cpu_rmap,
+				     pf->msix_entries[base_idx + i].vector)) {
+			ice_free_cpu_rx_rmap(vsi);
+			return -EINVAL;
+		}
+
+	return 0;
+}
+
+/**
+ * ice_remove_arfs - remove/clear all aRFS resources
+ * @pf: device private structure
+ */
+void ice_remove_arfs(struct ice_pf *pf)
+{
+	struct ice_vsi *pf_vsi;
+
+	pf_vsi = ice_get_main_vsi(pf);
+	if (!pf_vsi)
+		return;
+
+	ice_free_cpu_rx_rmap(pf_vsi);
+	ice_clear_arfs(pf_vsi);
+}
+
+/**
+ * ice_rebuild_arfs - remove/clear all aRFS resources and rebuild after reset
+ * @pf: device private structure
+ */
+void ice_rebuild_arfs(struct ice_pf *pf)
+{
+	struct ice_vsi *pf_vsi;
+
+	pf_vsi = ice_get_main_vsi(pf);
+	if (!pf_vsi)
+		return;
+
+	ice_remove_arfs(pf);
+	if (ice_set_cpu_rx_rmap(pf_vsi)) {
+		dev_err(ice_pf_to_dev(pf), "Failed to rebuild aRFS\n");
+		return;
+	}
+	ice_init_arfs(pf_vsi);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.h b/drivers/net/ethernet/intel/ice/ice_arfs.h
new file mode 100644
index 000000000000..593385a669ff
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.h
@@ -0,0 +1,82 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2019, Intel Corporation. */
+
+#ifndef _ICE_ARFS_H_
+#define _ICE_ARFS_H_
+enum ice_arfs_fltr_state {
+	ICE_ARFS_INACTIVE,
+	ICE_ARFS_ACTIVE,
+	ICE_ARFS_TODEL,
+};
+
+struct ice_arfs_entry {
+	struct ice_fdir_fltr fltr_info;
+	struct hlist_node list_entry;
+	u64 time_activated;	/* only valid for UDP flows */
+	u32 flow_id;
+	/* fltr_state = 0 - ICE_ARFS_INACTIVE:
+	 *	filter needs to be updated or programmed in HW.
+	 * fltr_state = 1 - ICE_ARFS_ACTIVE:
+	 *	filter is active and programmed in HW.
+	 * fltr_state = 2 - ICE_ARFS_TODEL:
+	 *	filter has been deleted from HW and needs to be removed from
+	 *	the aRFS hash table.
+	 */
+	u8 fltr_state;
+};
+
+struct ice_arfs_entry_ptr {
+	struct ice_arfs_entry *arfs_entry;
+	struct hlist_node list_entry;
+};
+
+struct ice_arfs_active_fltr_cntrs {
+	atomic_t active_tcpv4_cnt;
+	atomic_t active_tcpv6_cnt;
+	atomic_t active_udpv4_cnt;
+	atomic_t active_udpv6_cnt;
+};
+
+#ifdef CONFIG_RFS_ACCEL
+int
+ice_rx_flow_steer(struct net_device *netdev, const struct sk_buff *skb,
+		  u16 rxq_idx, u32 flow_id);
+void ice_clear_arfs(struct ice_vsi *vsi);
+void ice_free_cpu_rx_rmap(struct ice_vsi *vsi);
+void ice_init_arfs(struct ice_vsi *vsi);
+void ice_sync_arfs_fltrs(struct ice_pf *pf);
+int ice_set_cpu_rx_rmap(struct ice_vsi *vsi);
+void ice_remove_arfs(struct ice_pf *pf);
+void ice_rebuild_arfs(struct ice_pf *pf);
+bool
+ice_is_arfs_using_perfect_flow(struct ice_hw *hw,
+			       enum ice_fltr_ptype flow_type);
+#else
+#define ice_sync_arfs_fltrs(pf) do {} while (0)
+#define ice_init_arfs(vsi) do {} while (0)
+#define ice_clear_arfs(vsi) do {} while (0)
+#define ice_remove_arfs(pf) do {} while (0)
+#define ice_free_cpu_rx_rmap(vsi) do {} while (0)
+#define ice_rebuild_arfs(pf) do {} while (0)
+
+static inline int ice_set_cpu_rx_rmap(struct ice_vsi __always_unused *vsi)
+{
+	return 0;
+}
+
+static inline int
+ice_rx_flow_steer(struct net_device __always_unused *netdev,
+		  const struct sk_buff __always_unused *skb,
+		  u16 __always_unused rxq_idx, u32 __always_unused flow_id)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline bool
+ice_is_arfs_using_perfect_flow(struct ice_hw __always_unused *hw,
+			       enum ice_fltr_ptype __always_unused flow_type)
+{
+	return false;
+}
+#endif /* CONFIG_RFS_ACCEL */
+#endif /* _ICE_ARFS_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index aa353e96b30f..22cc4167b974 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -566,6 +566,12 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 			return -EINVAL;
 		}
 
+		if (ice_is_arfs_using_perfect_flow(hw, flow)) {
+			dev_err(dev, "aRFS using perfect flow type %d, cannot change input set\n",
+				flow);
+			return -EINVAL;
+		}
+
 		/* remove HW filter definition */
 		ice_fdir_rem_flow(hw, ICE_BLK_FD, flow);
 	}
@@ -1176,7 +1182,7 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
  *
  * returns 0 on success and negative value on error
  */
-static int
+int
 ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
 		    bool is_tun)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 2bc260092f47..86a3a15c21c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2210,6 +2210,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 				ice_vsi_cfg_rss_lut_key(vsi);
 				ice_vsi_set_rss_flow_fld(vsi);
 			}
+		ice_init_arfs(vsi);
 		break;
 	case ICE_VSI_VF:
 		/* VF driver will take care of creating netdev for this type and
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0eca14a1702e..f738e3046fb5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1117,7 +1117,7 @@ static void ice_clean_mailboxq_subtask(struct ice_pf *pf)
  *
  * If not already scheduled, this puts the task into the work queue.
  */
-static void ice_service_task_schedule(struct ice_pf *pf)
+void ice_service_task_schedule(struct ice_pf *pf)
 {
 	if (!test_bit(__ICE_SERVICE_DIS, pf->state) &&
 	    !test_and_set_bit(__ICE_SERVICE_SCHED, pf->state) &&
@@ -1490,7 +1490,7 @@ static void ice_service_task(struct work_struct *work)
 
 	ice_process_vflr_event(pf);
 	ice_clean_mailboxq_subtask(pf);
-
+	ice_sync_arfs_fltrs(pf);
 	/* Clear __ICE_SERVICE_SCHED flag to allow scheduling next event */
 	ice_service_task_complete(pf);
 
@@ -1649,9 +1649,14 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 		}
 
 		/* register for affinity change notifications */
-		q_vector->affinity_notify.notify = ice_irq_affinity_notify;
-		q_vector->affinity_notify.release = ice_irq_affinity_release;
-		irq_set_affinity_notifier(irq_num, &q_vector->affinity_notify);
+		if (!IS_ENABLED(CONFIG_RFS_ACCEL)) {
+			struct irq_affinity_notify *affinity_notify;
+
+			affinity_notify = &q_vector->affinity_notify;
+			affinity_notify->notify = ice_irq_affinity_notify;
+			affinity_notify->release = ice_irq_affinity_release;
+			irq_set_affinity_notifier(irq_num, affinity_notify);
+		}
 
 		/* assign the mask for this irq */
 		irq_set_affinity_hint(irq_num, &q_vector->affinity_mask);
@@ -1663,8 +1668,9 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 free_q_irqs:
 	while (vector) {
 		vector--;
-		irq_num = pf->msix_entries[base + vector].vector,
-		irq_set_affinity_notifier(irq_num, NULL);
+		irq_num = pf->msix_entries[base + vector].vector;
+		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
+			irq_set_affinity_notifier(irq_num, NULL);
 		irq_set_affinity_hint(irq_num, NULL);
 		devm_free_irq(dev, irq_num, &vsi->q_vectors[vector]);
 	}
@@ -2618,12 +2624,22 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 	 */
 	ice_napi_add(vsi);
 
+	status = ice_set_cpu_rx_rmap(vsi);
+	if (status) {
+		dev_err(ice_pf_to_dev(pf), "Failed to set CPU Rx map VSI %d error %d\n",
+			vsi->vsi_num, status);
+		status = -EINVAL;
+		goto unroll_napi_add;
+	}
 	status = ice_init_mac_fltr(pf);
 	if (status)
-		goto unroll_napi_add;
+		goto free_cpu_rx_map;
 
 	return status;
 
+free_cpu_rx_map:
+	ice_free_cpu_rx_rmap(vsi);
+
 unroll_napi_add:
 	if (vsi) {
 		ice_napi_del(vsi);
@@ -3577,6 +3593,8 @@ static void ice_remove(struct pci_dev *pdev)
 	set_bit(__ICE_DOWN, pf->state);
 
 	mutex_destroy(&(&pf->hw)->fdir_fltr_lock);
+	if (!ice_is_safe_mode(pf))
+		ice_remove_arfs(pf);
 	ice_devlink_destroy_port(pf);
 	ice_vsi_release_all(pf);
 	if (ice_is_peer_ena(pf)) {
@@ -4098,11 +4116,14 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 		ret = ice_cfg_vlan_pruning(vsi, false, false);
 
 	if ((features & NETIF_F_NTUPLE) &&
-	    !(netdev->features & NETIF_F_NTUPLE))
+	    !(netdev->features & NETIF_F_NTUPLE)) {
 		ice_vsi_manage_fdir(vsi, true);
-	else if (!(features & NETIF_F_NTUPLE) &&
-		 (netdev->features & NETIF_F_NTUPLE))
+		ice_init_arfs(vsi);
+	} else if (!(features & NETIF_F_NTUPLE) &&
+		 (netdev->features & NETIF_F_NTUPLE)) {
 		ice_vsi_manage_fdir(vsi, false);
+		ice_clear_arfs(vsi);
+	}
 
 	return ret;
 }
@@ -5012,6 +5033,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 		/* replay Flow Director filters */
 		ice_fdir_replay_fltrs(pf);
+
+		ice_rebuild_arfs(pf);
 	}
 
 	ice_update_pf_netdev_link(pf);
@@ -5806,6 +5829,9 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_bridge_setlink = ice_bridge_setlink,
 	.ndo_fdb_add = ice_fdb_add,
 	.ndo_fdb_del = ice_fdb_del,
+#ifdef CONFIG_RFS_ACCEL
+	.ndo_rx_flow_steer = ice_rx_flow_steer,
+#endif
 	.ndo_tx_timeout = ice_tx_timeout,
 	.ndo_bpf = ice_xdp,
 	.ndo_xdp_xmit = ice_xdp_xmit,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
