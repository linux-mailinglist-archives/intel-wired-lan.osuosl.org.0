Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BA01C9FC7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 May 2020 02:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2CB67896BC;
	Fri,  8 May 2020 00:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ie3GMq-3bNM; Fri,  8 May 2020 00:43:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CCED2897BC;
	Fri,  8 May 2020 00:43:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F2B61BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0BE64878A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5y0HxtjeFiGp for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2020 00:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 395C087A87
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:35 +0000 (UTC)
IronPort-SDR: g8ofsStqB9RcMI2NXAttgIOIg+/rPyCdEOiuTXifb23pvIBntLhd/kqBJFfG5vxsLws+fere8D
 zh6e6Lc5UOXQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 17:43:34 -0700
IronPort-SDR: bspC2ZA0BhLl1t5ZcWSyVoOyW4BfO+ec2f5ImY6DMfe5eJaPfNw83mB12q1aMha36MnndGHqhU
 0Zvzl+fOdOBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="249468775"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga007.jf.intel.com with ESMTP; 07 May 2020 17:43:33 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 May 2020 17:41:08 -0700
Message-Id: <20200508004113.39725-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S41 10/15] ice: refactor filter functions
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

From: Michal Swiatkowski <michal.swiatkowski@intel.com>

Move filter functions to separate file.

Add functions that prepare suitable ice_fltr_info struct
depending on the filter type and add this struct to earlier created
list:
- ice_fltr_add_mac_to_list
- ice_fltr_add_vlan_to_list
- ice_fltr_add_eth_to_list
This functions are used in adding and removing filters.

Create wrappers for functions mentioned above that alloc list,
add suitable ice_fltr_info to it and call add or remove function.
- ice_fltr_prepare_mac
- ice_fltr_prepare_mac_and_broadcast
- ice_fltr_prepare_vlan
- ice_fltr_prepare_eth

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  13 +-
 drivers/net/ethernet/intel/ice/ice_fltr.c     | 397 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fltr.h     |  39 ++
 drivers/net/ethernet/intel/ice/ice_lib.c      | 212 +---------
 drivers/net/ethernet/intel/ice/ice_lib.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  53 +--
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  34 +-
 8 files changed, 494 insertions(+), 264 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fltr.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fltr.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 73909045da1c..0d9741cf000c 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -17,6 +17,7 @@ ice-y := ice_main.o	\
 	 ice_lib.o	\
 	 ice_txrx_lib.o	\
 	 ice_txrx.o	\
+	 ice_fltr.o	\
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
 	 ice_devlink.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 41a6aa4ebb02..9fb82c993df9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -5,6 +5,7 @@
 
 #include "ice.h"
 #include "ice_flow.h"
+#include "ice_fltr.h"
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 
@@ -676,7 +677,6 @@ static u64 ice_loopback_test(struct net_device *netdev)
 	struct ice_ring *tx_ring, *rx_ring;
 	u8 broadcast[ETH_ALEN], ret = 0;
 	int num_frames, valid_frames;
-	LIST_HEAD(tmp_list);
 	struct device *dev;
 	u8 *tx_frame;
 	int i;
@@ -712,16 +712,11 @@ static u64 ice_loopback_test(struct net_device *netdev)
 
 	/* Test VSI needs to receive broadcast packets */
 	eth_broadcast_addr(broadcast);
-	if (ice_add_mac_to_list(test_vsi, &tmp_list, broadcast)) {
+	if (ice_fltr_add_mac(test_vsi, broadcast, ICE_FWD_TO_VSI)) {
 		ret = 5;
 		goto lbtest_mac_dis;
 	}
 
-	if (ice_add_mac(&pf->hw, &tmp_list)) {
-		ret = 6;
-		goto free_mac_list;
-	}
-
 	if (ice_lbtest_create_frame(pf, &tx_frame, ICE_LB_FRAME_SIZE)) {
 		ret = 7;
 		goto remove_mac_filters;
@@ -744,10 +739,8 @@ static u64 ice_loopback_test(struct net_device *netdev)
 lbtest_free_frame:
 	devm_kfree(dev, tx_frame);
 remove_mac_filters:
-	if (ice_remove_mac(&pf->hw, &tmp_list))
+	if (ice_fltr_remove_mac(test_vsi, broadcast, ICE_FWD_TO_VSI))
 		netdev_err(netdev, "Could not remove MAC filter for the test VSI\n");
-free_mac_list:
-	ice_free_fltr_list(dev, &tmp_list);
 lbtest_mac_dis:
 	/* Disable MAC loopback after the test is completed. */
 	if (ice_aq_set_mac_loopback(&pf->hw, false, NULL))
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
new file mode 100644
index 000000000000..7f0942602b42
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -0,0 +1,397 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2019, Intel Corporation. */
+
+#include "ice.h"
+#include "ice_fltr.h"
+
+/**
+ * ice_fltr_free_list - free filter lists helper
+ * @dev: pointer to the device struct
+ * @h: pointer to the list head to be freed
+ *
+ * Helper function to free filter lists previously created using
+ * ice_fltr_add_mac_to_list
+ */
+void ice_fltr_free_list(struct device *dev, struct list_head *h)
+{
+	struct ice_fltr_list_entry *e, *tmp;
+
+	list_for_each_entry_safe(e, tmp, h, list_entry) {
+		list_del(&e->list_entry);
+		devm_kfree(dev, e);
+	}
+}
+
+/**
+ * ice_fltr_add_entry_to_list - allocate and add filter entry to list
+ * @dev: pointer to device needed by alloc function
+ * @info: filter info struct that gets added to the passed in list
+ * @list: pointer to the list which contains MAC filters entry
+ */
+static int
+ice_fltr_add_entry_to_list(struct device *dev, struct ice_fltr_info *info,
+			   struct list_head *list)
+{
+	struct ice_fltr_list_entry *entry;
+
+	entry = devm_kzalloc(dev, sizeof(*entry), GFP_ATOMIC);
+	if (!entry)
+		return -ENOMEM;
+
+	entry->fltr_info = *info;
+
+	INIT_LIST_HEAD(&entry->list_entry);
+	list_add(&entry->list_entry, list);
+
+	return 0;
+}
+
+/**
+ * ice_fltr_add_mac_list - add list of MAC filters
+ * @vsi: pointer to VSI struct
+ * @list: list of filters
+ */
+enum ice_status
+ice_fltr_add_mac_list(struct ice_vsi *vsi, struct list_head *list)
+{
+	return ice_add_mac(&vsi->back->hw, list);
+}
+
+/**
+ * ice_fltr_remove_mac_list - remove list of MAC filters
+ * @vsi: pointer to VSI struct
+ * @list: list of filters
+ */
+enum ice_status
+ice_fltr_remove_mac_list(struct ice_vsi *vsi, struct list_head *list)
+{
+	return ice_remove_mac(&vsi->back->hw, list);
+}
+
+/**
+ * ice_fltr_add_vlan_list - add list of VLAN filters
+ * @vsi: pointer to VSI struct
+ * @list: list of filters
+ */
+static enum ice_status
+ice_fltr_add_vlan_list(struct ice_vsi *vsi, struct list_head *list)
+{
+	return ice_add_vlan(&vsi->back->hw, list);
+}
+
+/**
+ * ice_fltr_remove_vlan_list - remove list of VLAN filters
+ * @vsi: pointer to VSI struct
+ * @list: list of filters
+ */
+static enum ice_status
+ice_fltr_remove_vlan_list(struct ice_vsi *vsi, struct list_head *list)
+{
+	return ice_remove_vlan(&vsi->back->hw, list);
+}
+
+/**
+ * ice_fltr_add_eth_list - add list of ethertype filters
+ * @vsi: pointer to VSI struct
+ * @list: list of filters
+ */
+static enum ice_status
+ice_fltr_add_eth_list(struct ice_vsi *vsi, struct list_head *list)
+{
+	return ice_add_eth_mac(&vsi->back->hw, list);
+}
+
+/**
+ * ice_fltr_remove_eth_list - remove list of ethertype filters
+ * @vsi: pointer to VSI struct
+ * @list: list of filters
+ */
+static enum ice_status
+ice_fltr_remove_eth_list(struct ice_vsi *vsi, struct list_head *list)
+{
+	return ice_remove_eth_mac(&vsi->back->hw, list);
+}
+
+/**
+ * ice_fltr_remove_all - remove all filters associated with VSI
+ * @vsi: pointer to VSI struct
+ */
+void ice_fltr_remove_all(struct ice_vsi *vsi)
+{
+	ice_remove_vsi_fltr(&vsi->back->hw, vsi->idx);
+}
+
+/**
+ * ice_fltr_add_mac_to_list - add MAC filter info to exsisting list
+ * @vsi: pointer to VSI struct
+ * @list: list to add filter info to
+ * @mac: MAC address to add
+ * @action: filter action
+ */
+int
+ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct list_head *list,
+			 const u8 *mac, enum ice_sw_fwd_act_type action)
+{
+	struct ice_fltr_info info = { 0 };
+
+	info.flag = ICE_FLTR_TX;
+	info.src_id = ICE_SRC_ID_VSI;
+	info.lkup_type = ICE_SW_LKUP_MAC;
+	info.fltr_act = action;
+	info.vsi_handle = vsi->idx;
+
+	ether_addr_copy(info.l_data.mac.mac_addr, mac);
+
+	return ice_fltr_add_entry_to_list(ice_pf_to_dev(vsi->back), &info,
+					  list);
+}
+
+/**
+ * ice_fltr_add_vlan_to_list - add VLAN filter info to exsisting list
+ * @vsi: pointer to VSI struct
+ * @list: list to add filter info to
+ * @vlan_id: VLAN ID to add
+ * @action: filter action
+ */
+static int
+ice_fltr_add_vlan_to_list(struct ice_vsi *vsi, struct list_head *list,
+			  u16 vlan_id, enum ice_sw_fwd_act_type action)
+{
+	struct ice_fltr_info info = { 0 };
+
+	info.flag = ICE_FLTR_TX;
+	info.src_id = ICE_SRC_ID_VSI;
+	info.lkup_type = ICE_SW_LKUP_VLAN;
+	info.fltr_act = action;
+	info.vsi_handle = vsi->idx;
+	info.l_data.vlan.vlan_id = vlan_id;
+
+	return ice_fltr_add_entry_to_list(ice_pf_to_dev(vsi->back), &info,
+					  list);
+}
+
+/**
+ * ice_fltr_add_eth_to_list - add ethertype filter info to exsisting list
+ * @vsi: pointer to VSI struct
+ * @list: list to add filter info to
+ * @ethertype: ethertype of packet that matches filter
+ * @flag: filter direction, Tx or Rx
+ * @action: filter action
+ */
+static int
+ice_fltr_add_eth_to_list(struct ice_vsi *vsi, struct list_head *list,
+			 u16 ethertype, u16 flag,
+			 enum ice_sw_fwd_act_type action)
+{
+	struct ice_fltr_info info = { 0 };
+
+	info.flag = flag;
+	info.lkup_type = ICE_SW_LKUP_ETHERTYPE;
+	info.fltr_act = action;
+	info.vsi_handle = vsi->idx;
+	info.l_data.ethertype_mac.ethertype = ethertype;
+
+	if (flag == ICE_FLTR_TX)
+		info.src_id = ICE_SRC_ID_VSI;
+	else
+		info.src_id = ICE_SRC_ID_LPORT;
+
+	return ice_fltr_add_entry_to_list(ice_pf_to_dev(vsi->back), &info,
+					  list);
+}
+
+/**
+ * ice_fltr_prepare_mac - add or remove MAC rule
+ * @vsi: pointer to VSI struct
+ * @mac: MAC address to add
+ * @action: action to be performed on filter match
+ * @mac_action: pointer to add or remove MAC function
+ */
+static enum ice_status
+ice_fltr_prepare_mac(struct ice_vsi *vsi, const u8 *mac,
+		     enum ice_sw_fwd_act_type action,
+		     enum ice_status (*mac_action)(struct ice_vsi *,
+						   struct list_head *))
+{
+	enum ice_status result;
+	LIST_HEAD(tmp_list);
+
+	if (ice_fltr_add_mac_to_list(vsi, &tmp_list, mac, action)) {
+		ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
+		return ICE_ERR_NO_MEMORY;
+	}
+
+	result = mac_action(vsi, &tmp_list);
+	ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
+	return result;
+}
+
+/**
+ * ice_fltr_prepare_mac_and_broadcast - add or remove MAC and broadcast filter
+ * @vsi: pointer to VSI struct
+ * @mac: MAC address to add
+ * @action: action to be performed on filter match
+ * @mac_action: pointer to add or remove MAC function
+ */
+static enum ice_status
+ice_fltr_prepare_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
+				   enum ice_sw_fwd_act_type action,
+				   enum ice_status(*mac_action)
+				   (struct ice_vsi *, struct list_head *))
+{
+	u8 broadcast[ETH_ALEN];
+	enum ice_status result;
+	LIST_HEAD(tmp_list);
+
+	eth_broadcast_addr(broadcast);
+	if (ice_fltr_add_mac_to_list(vsi, &tmp_list, mac, action) ||
+	    ice_fltr_add_mac_to_list(vsi, &tmp_list, broadcast, action)) {
+		ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
+		return ICE_ERR_NO_MEMORY;
+	}
+
+	result = mac_action(vsi, &tmp_list);
+	ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
+	return result;
+}
+
+/**
+ * ice_fltr_prepare_vlan - add or remove VLAN filter
+ * @vsi: pointer to VSI struct
+ * @vlan_id: VLAN ID to add
+ * @action: action to be performed on filter match
+ * @vlan_action: pointer to add or remove VLAN function
+ */
+static enum ice_status
+ice_fltr_prepare_vlan(struct ice_vsi *vsi, u16 vlan_id,
+		      enum ice_sw_fwd_act_type action,
+		      enum ice_status (*vlan_action)(struct ice_vsi *,
+						     struct list_head *))
+{
+	enum ice_status result;
+	LIST_HEAD(tmp_list);
+
+	if (ice_fltr_add_vlan_to_list(vsi, &tmp_list, vlan_id, action))
+		return ICE_ERR_NO_MEMORY;
+
+	result = vlan_action(vsi, &tmp_list);
+	ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
+	return result;
+}
+
+/**
+ * ice_fltr_prepare_eth - add or remove ethertype filter
+ * @vsi: pointer to VSI struct
+ * @ethertype: ethertype of packet to be filtered
+ * @flag: direction of packet, Tx or Rx
+ * @action: action to be performed on filter match
+ * @eth_action: pointer to add or remove ethertype function
+ */
+static enum ice_status
+ice_fltr_prepare_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
+		     enum ice_sw_fwd_act_type action,
+		     enum ice_status (*eth_action)(struct ice_vsi *,
+						   struct list_head *))
+{
+	enum ice_status result;
+	LIST_HEAD(tmp_list);
+
+	if (ice_fltr_add_eth_to_list(vsi, &tmp_list, ethertype, flag, action))
+		return ICE_ERR_NO_MEMORY;
+
+	result = eth_action(vsi, &tmp_list);
+	ice_fltr_free_list(ice_pf_to_dev(vsi->back), &tmp_list);
+	return result;
+}
+
+/**
+ * ice_fltr_add_mac - add single MAC filter
+ * @vsi: pointer to VSI struct
+ * @mac: MAC to add
+ * @action: action to be performed on filter match
+ */
+enum ice_status ice_fltr_add_mac(struct ice_vsi *vsi, const u8 *mac,
+				 enum ice_sw_fwd_act_type action)
+{
+	return ice_fltr_prepare_mac(vsi, mac, action, ice_fltr_add_mac_list);
+}
+
+/**
+ * ice_fltr_add_mac_and_broadcast - add single MAC and broadcast
+ * @vsi: pointer to VSI struct
+ * @mac: MAC to add
+ * @action: action to be performed on filter match
+ */
+enum ice_status
+ice_fltr_add_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
+			       enum ice_sw_fwd_act_type action)
+{
+	return ice_fltr_prepare_mac_and_broadcast(vsi, mac, action,
+						  ice_fltr_add_mac_list);
+}
+
+/**
+ * ice_fltr_remove_mac - remove MAC filter
+ * @vsi: pointer to VSI struct
+ * @mac: filter MAC to remove
+ * @action: action to remove
+ */
+enum ice_status ice_fltr_remove_mac(struct ice_vsi *vsi, const u8 *mac,
+				    enum ice_sw_fwd_act_type action)
+{
+	return ice_fltr_prepare_mac(vsi, mac, action, ice_fltr_remove_mac_list);
+}
+
+/**
+ * ice_fltr_add_vlan - add single VLAN filter
+ * @vsi: pointer to VSI struct
+ * @vlan_id: VLAN ID to add
+ * @action: action to be performed on filter match
+ */
+enum ice_status ice_fltr_add_vlan(struct ice_vsi *vsi, u16 vlan_id,
+				  enum ice_sw_fwd_act_type action)
+{
+	return ice_fltr_prepare_vlan(vsi, vlan_id, action,
+				     ice_fltr_add_vlan_list);
+}
+
+/**
+ * ice_fltr_remove_vlan - remove VLAN filter
+ * @vsi: pointer to VSI struct
+ * @vlan_id: filter VLAN to remove
+ * @action: action to remove
+ */
+enum ice_status ice_fltr_remove_vlan(struct ice_vsi *vsi, u16 vlan_id,
+				     enum ice_sw_fwd_act_type action)
+{
+	return ice_fltr_prepare_vlan(vsi, vlan_id, action,
+				     ice_fltr_remove_vlan_list);
+}
+
+/**
+ * ice_fltr_add_eth - add specyfic ethertype filter
+ * @vsi: pointer to VSI struct
+ * @ethertype: ethertype of filter
+ * @flag: direction of packet to be filtered, Tx or Rx
+ * @action: action to be performed on filter match
+ */
+enum ice_status ice_fltr_add_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
+				 enum ice_sw_fwd_act_type action)
+{
+	return ice_fltr_prepare_eth(vsi, ethertype, flag, action,
+				    ice_fltr_add_eth_list);
+}
+
+/**
+ * ice_fltr_remove_eth - remove ethertype filter
+ * @vsi: pointer to VSI struct
+ * @ethertype: ethertype of filter
+ * @flag: direction of filter
+ * @action: action to remove
+ */
+enum ice_status ice_fltr_remove_eth(struct ice_vsi *vsi, u16 ethertype,
+				    u16 flag, enum ice_sw_fwd_act_type action)
+{
+	return ice_fltr_prepare_eth(vsi, ethertype, flag, action,
+				    ice_fltr_remove_eth_list);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.h b/drivers/net/ethernet/intel/ice/ice_fltr.h
new file mode 100644
index 000000000000..ca8f97c39a02
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2019, Intel Corporation. */
+
+#ifndef _ICE_FLTR_H_
+#define _ICE_FLTR_H_
+
+void ice_fltr_free_list(struct device *dev, struct list_head *h);
+enum ice_status
+ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct list_head *list,
+			 const u8 *mac, enum ice_sw_fwd_act_type action);
+enum ice_status
+ice_fltr_add_mac(struct ice_vsi *vsi, const u8 *mac,
+		 enum ice_sw_fwd_act_type action);
+enum ice_status
+ice_fltr_add_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
+			       enum ice_sw_fwd_act_type action);
+enum ice_status
+ice_fltr_add_mac_list(struct ice_vsi *vsi, struct list_head *list);
+enum ice_status
+ice_fltr_remove_mac(struct ice_vsi *vsi, const u8 *mac,
+		    enum ice_sw_fwd_act_type action);
+enum ice_status
+ice_fltr_remove_mac_list(struct ice_vsi *vsi, struct list_head *list);
+
+enum ice_status
+ice_fltr_add_vlan(struct ice_vsi *vsi, u16 vid,
+		  enum ice_sw_fwd_act_type action);
+enum ice_status
+ice_fltr_remove_vlan(struct ice_vsi *vsi, u16 vid,
+		     enum ice_sw_fwd_act_type action);
+
+enum ice_status
+ice_fltr_add_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
+		 enum ice_sw_fwd_act_type action);
+enum ice_status
+ice_fltr_remove_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
+		    enum ice_sw_fwd_act_type action);
+void ice_fltr_remove_all(struct ice_vsi *vsi);
+#endif
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index fa029cda750f..6e23a87b75ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -5,6 +5,7 @@
 #include "ice_base.h"
 #include "ice_flow.h"
 #include "ice_lib.h"
+#include "ice_fltr.h"
 #include "ice_dcb_lib.h"
 
 /**
@@ -1350,40 +1351,6 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 			vsi_num, ice_stat_str(status));
 }
 
-/**
- * ice_add_mac_to_list - Add a MAC address filter entry to the list
- * @vsi: the VSI to be forwarded to
- * @add_list: pointer to the list which contains MAC filter entries
- * @macaddr: the MAC address to be added.
- *
- * Adds MAC address filter entry to the temp list
- *
- * Returns 0 on success or ENOMEM on failure.
- */
-int
-ice_add_mac_to_list(struct ice_vsi *vsi, struct list_head *add_list,
-		    const u8 *macaddr)
-{
-	struct ice_fltr_list_entry *tmp;
-	struct ice_pf *pf = vsi->back;
-
-	tmp = devm_kzalloc(ice_pf_to_dev(pf), sizeof(*tmp), GFP_ATOMIC);
-	if (!tmp)
-		return -ENOMEM;
-
-	tmp->fltr_info.flag = ICE_FLTR_TX;
-	tmp->fltr_info.src_id = ICE_SRC_ID_VSI;
-	tmp->fltr_info.lkup_type = ICE_SW_LKUP_MAC;
-	tmp->fltr_info.fltr_act = ICE_FWD_TO_VSI;
-	tmp->fltr_info.vsi_handle = vsi->idx;
-	ether_addr_copy(tmp->fltr_info.l_data.mac.mac_addr, macaddr);
-
-	INIT_LIST_HEAD(&tmp->list_entry);
-	list_add(&tmp->list_entry, add_list);
-
-	return 0;
-}
-
 /**
  * ice_pf_state_is_nominal - checks the PF for nominal state
  * @pf: pointer to PF to check
@@ -1454,55 +1421,22 @@ void ice_update_eth_stats(struct ice_vsi *vsi)
 	vsi->stat_offsets_loaded = true;
 }
 
-/**
- * ice_free_fltr_list - free filter lists helper
- * @dev: pointer to the device struct
- * @h: pointer to the list head to be freed
- *
- * Helper function to free filter lists previously created using
- * ice_add_mac_to_list
- */
-void ice_free_fltr_list(struct device *dev, struct list_head *h)
-{
-	struct ice_fltr_list_entry *e, *tmp;
-
-	list_for_each_entry_safe(e, tmp, h, list_entry) {
-		list_del(&e->list_entry);
-		devm_kfree(dev, e);
-	}
-}
-
 /**
  * ice_vsi_add_vlan - Add VSI membership for given VLAN
  * @vsi: the VSI being configured
  * @vid: VLAN ID to be added
+ * @action: filter action to be performed on match
  */
-int ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid)
+int
+ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action)
 {
-	struct ice_fltr_list_entry *tmp;
 	struct ice_pf *pf = vsi->back;
-	LIST_HEAD(tmp_add_list);
-	enum ice_status status;
 	struct device *dev;
 	int err = 0;
 
 	dev = ice_pf_to_dev(pf);
-	tmp = devm_kzalloc(dev, sizeof(*tmp), GFP_KERNEL);
-	if (!tmp)
-		return -ENOMEM;
-
-	tmp->fltr_info.lkup_type = ICE_SW_LKUP_VLAN;
-	tmp->fltr_info.fltr_act = ICE_FWD_TO_VSI;
-	tmp->fltr_info.flag = ICE_FLTR_TX;
-	tmp->fltr_info.src_id = ICE_SRC_ID_VSI;
-	tmp->fltr_info.vsi_handle = vsi->idx;
-	tmp->fltr_info.l_data.vlan.vlan_id = vid;
-
-	INIT_LIST_HEAD(&tmp->list_entry);
-	list_add(&tmp->list_entry, &tmp_add_list);
 
-	status = ice_add_vlan(&pf->hw, &tmp_add_list);
-	if (!status) {
+	if (!ice_fltr_add_vlan(vsi, vid, action)) {
 		vsi->num_vlan++;
 	} else {
 		err = -ENODEV;
@@ -1510,7 +1444,6 @@ int ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid)
 			vsi->vsi_num);
 	}
 
-	ice_free_fltr_list(dev, &tmp_add_list);
 	return err;
 }
 
@@ -1523,29 +1456,14 @@ int ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid)
  */
 int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
 {
-	struct ice_fltr_list_entry *list;
 	struct ice_pf *pf = vsi->back;
-	LIST_HEAD(tmp_add_list);
 	enum ice_status status;
 	struct device *dev;
 	int err = 0;
 
 	dev = ice_pf_to_dev(pf);
-	list = devm_kzalloc(dev, sizeof(*list), GFP_KERNEL);
-	if (!list)
-		return -ENOMEM;
-
-	list->fltr_info.lkup_type = ICE_SW_LKUP_VLAN;
-	list->fltr_info.vsi_handle = vsi->idx;
-	list->fltr_info.fltr_act = ICE_FWD_TO_VSI;
-	list->fltr_info.l_data.vlan.vlan_id = vid;
-	list->fltr_info.flag = ICE_FLTR_TX;
-	list->fltr_info.src_id = ICE_SRC_ID_VSI;
 
-	INIT_LIST_HEAD(&list->list_entry);
-	list_add(&list->list_entry, &tmp_add_list);
-
-	status = ice_remove_vlan(&pf->hw, &tmp_add_list);
+	status = ice_fltr_remove_vlan(vsi, vid, ICE_FWD_TO_VSI);
 	if (!status) {
 		vsi->num_vlan--;
 	} else if (status == ICE_ERR_DOES_NOT_EXIST) {
@@ -1557,7 +1475,6 @@ int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
 		err = -EIO;
 	}
 
-	ice_free_fltr_list(dev, &tmp_add_list);
 	return err;
 }
 
@@ -2033,47 +1950,6 @@ ice_vsi_set_q_vectors_reg_idx(struct ice_vsi *vsi)
 	return -EINVAL;
 }
 
-/**
- * ice_vsi_add_rem_eth_mac - Program VSI ethertype based filter with rule
- * @vsi: the VSI being configured
- * @add_rule: boolean value to add or remove ethertype filter rule
- */
-static void
-ice_vsi_add_rem_eth_mac(struct ice_vsi *vsi, bool add_rule)
-{
-	struct ice_fltr_list_entry *list;
-	struct ice_pf *pf = vsi->back;
-	LIST_HEAD(tmp_add_list);
-	enum ice_status status;
-	struct device *dev;
-
-	dev = ice_pf_to_dev(pf);
-	list = devm_kzalloc(dev, sizeof(*list), GFP_KERNEL);
-	if (!list)
-		return;
-
-	list->fltr_info.lkup_type = ICE_SW_LKUP_ETHERTYPE;
-	list->fltr_info.fltr_act = ICE_DROP_PACKET;
-	list->fltr_info.flag = ICE_FLTR_TX;
-	list->fltr_info.src_id = ICE_SRC_ID_VSI;
-	list->fltr_info.vsi_handle = vsi->idx;
-	list->fltr_info.l_data.ethertype_mac.ethertype = vsi->ethtype;
-
-	INIT_LIST_HEAD(&list->list_entry);
-	list_add(&list->list_entry, &tmp_add_list);
-
-	if (add_rule)
-		status = ice_add_eth_mac(&pf->hw, &tmp_add_list);
-	else
-		status = ice_remove_eth_mac(&pf->hw, &tmp_add_list);
-
-	if (status)
-		dev_err(dev, "Failure Adding or Removing Ethertype on VSI %i error: %s\n",
-			vsi->vsi_num, ice_stat_str(status));
-
-	ice_free_fltr_list(dev, &tmp_add_list);
-}
-
 /**
  * ice_cfg_sw_lldp - Config switch rules for LLDP packet handling
  * @vsi: the VSI being configured
@@ -2082,45 +1958,25 @@ ice_vsi_add_rem_eth_mac(struct ice_vsi *vsi, bool add_rule)
  */
 void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 {
-	struct ice_fltr_list_entry *list;
+	enum ice_status (*eth_fltr)(struct ice_vsi *v, u16 type, u16 flag,
+				    enum ice_sw_fwd_act_type act);
 	struct ice_pf *pf = vsi->back;
-	LIST_HEAD(tmp_add_list);
 	enum ice_status status;
 	struct device *dev;
 
 	dev = ice_pf_to_dev(pf);
-	list = devm_kzalloc(dev, sizeof(*list), GFP_KERNEL);
-	if (!list)
-		return;
-
-	list->fltr_info.lkup_type = ICE_SW_LKUP_ETHERTYPE;
-	list->fltr_info.vsi_handle = vsi->idx;
-	list->fltr_info.l_data.ethertype_mac.ethertype = ETH_P_LLDP;
+	eth_fltr = create ? ice_fltr_add_eth : ice_fltr_remove_eth;
 
-	if (tx) {
-		list->fltr_info.fltr_act = ICE_DROP_PACKET;
-		list->fltr_info.flag = ICE_FLTR_TX;
-		list->fltr_info.src_id = ICE_SRC_ID_VSI;
-	} else {
-		list->fltr_info.fltr_act = ICE_FWD_TO_VSI;
-		list->fltr_info.flag = ICE_FLTR_RX;
-		list->fltr_info.src_id = ICE_SRC_ID_LPORT;
-	}
-
-	INIT_LIST_HEAD(&list->list_entry);
-	list_add(&list->list_entry, &tmp_add_list);
-
-	if (create)
-		status = ice_add_eth_mac(&pf->hw, &tmp_add_list);
+	if (tx)
+		status = eth_fltr(vsi, ETH_P_LLDP, ICE_FLTR_TX,
+				  ICE_DROP_PACKET);
 	else
-		status = ice_remove_eth_mac(&pf->hw, &tmp_add_list);
+		status = eth_fltr(vsi, ETH_P_LLDP, ICE_FLTR_RX, ICE_FWD_TO_VSI);
 
 	if (status)
 		dev_err(dev, "Fail %s %s LLDP rule on VSI %i error: %s\n",
 			create ? "adding" : "removing", tx ? "TX" : "RX",
 			vsi->vsi_num, ice_stat_str(status));
-
-	ice_free_fltr_list(dev, &tmp_add_list);
 }
 
 /**
@@ -2207,7 +2063,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		 * so this handles those cases (i.e. adding the PF to a bridge
 		 * without the 8021q module loaded).
 		 */
-		ret = ice_vsi_add_vlan(vsi, 0);
+		ret = ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI);
 		if (ret)
 			goto unroll_clear_rings;
 
@@ -2282,9 +2138,8 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	 */
 	if (!ice_is_safe_mode(pf))
 		if (vsi->type == ICE_VSI_PF) {
-			ice_vsi_add_rem_eth_mac(vsi, true);
-
-			/* Tx LLDP packets */
+			ice_fltr_add_eth(vsi, ETH_P_PAUSE, ICE_FLTR_TX,
+					 ICE_DROP_PACKET);
 			ice_cfg_sw_lldp(vsi, true, true);
 		}
 
@@ -2616,7 +2471,8 @@ int ice_vsi_release(struct ice_vsi *vsi)
 
 	if (!ice_is_safe_mode(pf)) {
 		if (vsi->type == ICE_VSI_PF) {
-			ice_vsi_add_rem_eth_mac(vsi, false);
+			ice_fltr_remove_eth(vsi, ETH_P_PAUSE, ICE_FLTR_TX,
+					    ICE_DROP_PACKET);
 			ice_cfg_sw_lldp(vsi, true, false);
 			/* The Rx rule will only exist to remove if the LLDP FW
 			 * engine is currently stopped
@@ -2626,7 +2482,7 @@ int ice_vsi_release(struct ice_vsi *vsi)
 		}
 	}
 
-	ice_remove_vsi_fltr(&pf->hw, vsi->idx);
+	ice_fltr_remove_all(vsi);
 	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
 	ice_vsi_delete(vsi);
 	ice_vsi_free_q_vectors(vsi);
@@ -3042,36 +2898,6 @@ void ice_update_rx_ring_stats(struct ice_ring *rx_ring, u64 pkts, u64 bytes)
 	u64_stats_update_end(&rx_ring->syncp);
 }
 
-/**
- * ice_vsi_cfg_mac_fltr - Add or remove a MAC address filter for a VSI
- * @vsi: the VSI being configured MAC filter
- * @macaddr: the MAC address to be added.
- * @set: Add or delete a MAC filter
- *
- * Adds or removes MAC address filter entry for VF VSI
- */
-enum ice_status
-ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set)
-{
-	LIST_HEAD(tmp_add_list);
-	enum ice_status status;
-
-	 /* Update MAC filter list to be added or removed for a VSI */
-	if (ice_add_mac_to_list(vsi, &tmp_add_list, macaddr)) {
-		status = ICE_ERR_NO_MEMORY;
-		goto cfg_mac_fltr_exit;
-	}
-
-	if (set)
-		status = ice_add_mac(&vsi->back->hw, &tmp_add_list);
-	else
-		status = ice_remove_mac(&vsi->back->hw, &tmp_add_list);
-
-cfg_mac_fltr_exit:
-	ice_free_fltr_list(ice_pf_to_dev(vsi->back), &tmp_add_list);
-	return status;
-}
-
 /**
  * ice_is_dflt_vsi_in_use - check if the default forwarding VSI is being used
  * @sw: switch to check if its default forwarding VSI is free
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index f77ddd6883c3..c9e1aaea55f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -8,12 +8,6 @@
 
 const char *ice_vsi_type_str(enum ice_vsi_type vsi_type);
 
-int
-ice_add_mac_to_list(struct ice_vsi *vsi, struct list_head *add_list,
-		    const u8 *macaddr);
-
-void ice_free_fltr_list(struct device *dev, struct list_head *h);
-
 bool ice_pf_state_is_nominal(struct ice_pf *pf);
 
 void ice_update_eth_stats(struct ice_vsi *vsi);
@@ -24,7 +18,8 @@ int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi);
 
 void ice_vsi_cfg_msix(struct ice_vsi *vsi);
 
-int ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid);
+int
+ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action);
 
 int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0216f295c7ca..99fa36f35a4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -9,6 +9,7 @@
 #include "ice.h"
 #include "ice_base.h"
 #include "ice_lib.h"
+#include "ice_fltr.h"
 #include "ice_dcb_lib.h"
 #include "ice_dcb_nl.h"
 #include "ice_devlink.h"
@@ -134,32 +135,18 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
 static int ice_init_mac_fltr(struct ice_pf *pf)
 {
 	enum ice_status status;
-	u8 broadcast[ETH_ALEN];
 	struct ice_vsi *vsi;
+	u8 *perm_addr;
 
 	vsi = ice_get_main_vsi(pf);
 	if (!vsi)
 		return -EINVAL;
 
-	/* To add a MAC filter, first add the MAC to a list and then
-	 * pass the list to ice_add_mac.
-	 */
-
-	 /* Add a unicast MAC filter so the VSI can get its packets */
-	status = ice_vsi_cfg_mac_fltr(vsi, vsi->port_info->mac.perm_addr, true);
-	if (status)
-		goto unregister;
-
-	/* VSI needs to receive broadcast traffic, so add the broadcast
-	 * MAC address to the list as well.
-	 */
-	eth_broadcast_addr(broadcast);
-	status = ice_vsi_cfg_mac_fltr(vsi, broadcast, true);
-	if (status)
-		goto unregister;
+	perm_addr = vsi->port_info->mac.perm_addr;
+	status = ice_fltr_add_mac_and_broadcast(vsi, perm_addr, ICE_FWD_TO_VSI);
+	if (!status)
+		return 0;
 
-	return 0;
-unregister:
 	/* We aren't useful with no MAC filters, so unregister if we
 	 * had an error
 	 */
@@ -189,7 +176,8 @@ static int ice_add_mac_to_sync_list(struct net_device *netdev, const u8 *addr)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
-	if (ice_add_mac_to_list(vsi, &vsi->tmp_sync_list, addr))
+	if (ice_fltr_add_mac_to_list(vsi, &vsi->tmp_sync_list, addr,
+				     ICE_FWD_TO_VSI))
 		return -EINVAL;
 
 	return 0;
@@ -210,7 +198,8 @@ static int ice_add_mac_to_unsync_list(struct net_device *netdev, const u8 *addr)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
-	if (ice_add_mac_to_list(vsi, &vsi->tmp_unsync_list, addr))
+	if (ice_fltr_add_mac_to_list(vsi, &vsi->tmp_unsync_list, addr,
+				     ICE_FWD_TO_VSI))
 		return -EINVAL;
 
 	return 0;
@@ -308,8 +297,8 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	}
 
 	/* Remove MAC addresses in the unsync list */
-	status = ice_remove_mac(hw, &vsi->tmp_unsync_list);
-	ice_free_fltr_list(dev, &vsi->tmp_unsync_list);
+	status = ice_fltr_remove_mac_list(vsi, &vsi->tmp_unsync_list);
+	ice_fltr_free_list(dev, &vsi->tmp_unsync_list);
 	if (status) {
 		netdev_err(netdev, "Failed to delete MAC filters\n");
 		/* if we failed because of alloc failures, just bail */
@@ -320,8 +309,8 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	}
 
 	/* Add MAC addresses in the sync list */
-	status = ice_add_mac(hw, &vsi->tmp_sync_list);
-	ice_free_fltr_list(dev, &vsi->tmp_sync_list);
+	status = ice_fltr_add_mac_list(vsi, &vsi->tmp_sync_list);
+	ice_fltr_free_list(dev, &vsi->tmp_sync_list);
 	/* If filter is added successfully or already exists, do not go into
 	 * 'if' condition and report it as error. Instead continue processing
 	 * rest of the function.
@@ -2528,7 +2517,7 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 	/* Add a switch rule for this VLAN ID so its corresponding VLAN tagged
 	 * packets aren't pruned by the device's internal switch on Rx
 	 */
-	ret = ice_vsi_add_vlan(vsi, vid);
+	ret = ice_vsi_add_vlan(vsi, vid, ICE_FWD_TO_VSI);
 	if (!ret) {
 		vsi->vlan_ena = true;
 		set_bit(ICE_VSI_FLAG_VLAN_FLTR_CHANGED, vsi->flags);
@@ -3782,20 +3771,14 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 		return -EBUSY;
 	}
 
-	/* When we change the MAC address we also have to change the MAC address
-	 * based filter rules that were created previously for the old MAC
-	 * address. So first, we remove the old filter rule using ice_remove_mac
-	 * and then create a new filter rule using ice_add_mac via
-	 * ice_vsi_cfg_mac_fltr function call for both add and/or remove
-	 * filters.
-	 */
-	status = ice_vsi_cfg_mac_fltr(vsi, netdev->dev_addr, false);
+	/* Clean up old MAC filter before changing the MAC address */
+	status = ice_fltr_remove_mac(vsi, netdev->dev_addr, ICE_FWD_TO_VSI);
 	if (status) {
 		err = -EADDRNOTAVAIL;
 		goto err_update_filters;
 	}
 
-	status = ice_vsi_cfg_mac_fltr(vsi, mac, true);
+	status = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
 	if (status) {
 		err = -EADDRNOTAVAIL;
 		goto err_update_filters;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 9aa02f74e88c..a046bd3431c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -4,6 +4,7 @@
 #include "ice.h"
 #include "ice_base.h"
 #include "ice_lib.h"
+#include "ice_fltr.h"
 
 /**
  * ice_validate_vf_id - helper to check if VF ID is valid
@@ -548,7 +549,6 @@ static int ice_calc_vf_first_vector_idx(struct ice_pf *pf, struct ice_vf *vf)
 static int ice_alloc_vsi_res(struct ice_vf *vf)
 {
 	struct ice_pf *pf = vf->pf;
-	LIST_HEAD(tmp_add_list);
 	u8 broadcast[ETH_ALEN];
 	struct ice_vsi *vsi;
 	struct device *dev;
@@ -570,7 +570,8 @@ static int ice_alloc_vsi_res(struct ice_vf *vf)
 	/* Check if port VLAN exist before, and restore it accordingly */
 	if (vf->port_vlan_info) {
 		ice_vsi_manage_pvid(vsi, vf->port_vlan_info, true);
-		if (ice_vsi_add_vlan(vsi, vf->port_vlan_info & VLAN_VID_MASK))
+		if (ice_vsi_add_vlan(vsi, vf->port_vlan_info & VLAN_VID_MASK,
+				     ICE_FWD_TO_VSI))
 			dev_warn(ice_pf_to_dev(pf), "Failed to add Port VLAN %d filter for VF %d\n",
 				 vf->port_vlan_info & VLAN_VID_MASK, vf->vf_id);
 	} else {
@@ -579,27 +580,23 @@ static int ice_alloc_vsi_res(struct ice_vf *vf)
 		 * untagged broadcast/multicast traffic seen on the VF
 		 * interface.
 		 */
-		if (ice_vsi_add_vlan(vsi, 0))
+		if (ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI))
 			dev_warn(ice_pf_to_dev(pf), "Failed to add VLAN 0 filter for VF %d, MDD events will trigger. Reset the VF, disable spoofchk, or enable 8021q module on the guest\n",
 				 vf->vf_id);
 	}
 
-	eth_broadcast_addr(broadcast);
-
-	status = ice_add_mac_to_list(vsi, &tmp_add_list, broadcast);
-	if (status)
-		goto ice_alloc_vsi_res_exit;
-
 	if (is_valid_ether_addr(vf->dflt_lan_addr.addr)) {
-		status = ice_add_mac_to_list(vsi, &tmp_add_list,
-					     vf->dflt_lan_addr.addr);
+		status = ice_fltr_add_mac(vsi, vf->dflt_lan_addr.addr,
+					  ICE_FWD_TO_VSI);
 		if (status)
 			goto ice_alloc_vsi_res_exit;
 	}
 
-	status = ice_add_mac(&pf->hw, &tmp_add_list);
+	eth_broadcast_addr(broadcast);
+	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
 	if (status)
-		dev_err(dev, "could not add mac filters error %d\n", status);
+		dev_err(dev, "could not add mac filters error %d\n",
+			status);
 	else
 		vf->num_mac = 1;
 
@@ -610,7 +607,6 @@ static int ice_alloc_vsi_res(struct ice_vf *vf)
 	 * more vectors.
 	 */
 ice_alloc_vsi_res_exit:
-	ice_free_fltr_list(dev, &tmp_add_list);
 	return status;
 }
 
@@ -2781,7 +2777,7 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
 		return -EPERM;
 	}
 
-	status = ice_vsi_cfg_mac_fltr(vsi, mac_addr, true);
+	status = ice_fltr_add_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
 	if (status == ICE_ERR_ALREADY_EXISTS) {
 		dev_err(dev, "MAC %pM already exists for VF %d\n", mac_addr,
 			vf->vf_id);
@@ -2818,7 +2814,7 @@ ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
 	    ether_addr_equal(mac_addr, vf->dflt_lan_addr.addr))
 		return 0;
 
-	status = ice_vsi_cfg_mac_fltr(vsi, mac_addr, false);
+	status = ice_fltr_remove_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
 	if (status == ICE_ERR_DOES_NOT_EXIST) {
 		dev_err(dev, "MAC %pM does not exist for VF %d\n", mac_addr,
 			vf->vf_id);
@@ -3062,7 +3058,7 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		/* add VLAN 0 filter back when transitioning from port VLAN to
 		 * no port VLAN. No change to old port VLAN on failure.
 		 */
-		ret = ice_vsi_add_vlan(vsi, 0);
+		ret = ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI);
 		if (ret)
 			return ret;
 		ret = ice_vsi_manage_pvid(vsi, 0, false);
@@ -3075,7 +3071,7 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 			 vlan_id, qos, vf_id);
 
 		/* add VLAN filter for the port VLAN */
-		ret = ice_vsi_add_vlan(vsi, vlan_id);
+		ret = ice_vsi_add_vlan(vsi, vlan_id, ICE_FWD_TO_VSI);
 		if (ret)
 			return ret;
 	}
@@ -3196,7 +3192,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			if (!vid)
 				continue;
 
-			status = ice_vsi_add_vlan(vsi, vid);
+			status = ice_vsi_add_vlan(vsi, vid, ICE_FWD_TO_VSI);
 			if (status) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
