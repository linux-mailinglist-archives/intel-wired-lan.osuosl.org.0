Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BB719896B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 03:11:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5BFEB88659;
	Tue, 31 Mar 2020 01:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eIUQdKP3B-My; Tue, 31 Mar 2020 01:11:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B0E1088692;
	Tue, 31 Mar 2020 01:11:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7720E1BF388
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 01:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 73EFA8610E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 01:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S6m1yLK4kTCe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2020 01:11:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EF3498618F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 01:10:59 +0000 (UTC)
IronPort-SDR: cjrsH2+vK6Kb9VihcFGfbGBRRURn5j0zmfiQBbY96iOEy90ZificK1bEIgIGnLW/YWSmFABySC
 yBypOLRCp3ng==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 18:10:59 -0700
IronPort-SDR: 1NTht+VT29NYu61X+7To56nDWzIbN8lodBzTt6U7IdkV4J/6QkLqvcze88vmv57hFNbhrzvP6K
 efxin3Z7X6Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,326,1580803200"; d="scan'208";a="327925967"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by orsmga001.jf.intel.com with ESMTP; 30 Mar 2020 18:10:58 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Mar 2020 18:10:49 -0700
Message-Id: <20200331011053.339291-2-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200331011053.339291-1-jeffrey.t.kirsher@intel.com>
References: <20200331011053.339291-1-jeffrey.t.kirsher@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v5 2/6] ice: Complete RDMA peer
 registration
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

From: Dave Ertman <david.m.ertman@intel.com>

Ensure that the peer supports the minimal set of operations required
for operation and, if so, open the connection to the peer.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_idc.c      | 288 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_idc_int.h  |  36 +++
 drivers/net/ethernet/intel/ice/ice_lib.c      |  33 ++
 drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  18 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   |  23 ++
 drivers/net/ethernet/intel/ice/ice_switch.h   |   2 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  25 --
 8 files changed, 401 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index ffd13e13a15e..1eb8ea673c50 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -145,6 +145,78 @@ ice_peer_state_change(struct ice_peer_dev_int *peer_dev, long new_state,
 		mutex_unlock(&peer_dev->peer_dev_state_mutex);
 }
 
+/**
+ * ice_peer_close - close a peer device
+ * @peer_dev_int: device to close
+ * @data: pointer to opaque data
+ *
+ * This function will also set the state bit for the peer to CLOSED. This
+ * function is meant to be called from a ice_for_each_peer().
+ */
+int ice_peer_close(struct ice_peer_dev_int *peer_dev_int, void *data)
+{
+	enum iidc_close_reason reason = *(enum iidc_close_reason *)(data);
+	struct iidc_peer_dev *peer_dev;
+	struct ice_pf *pf;
+	int i;
+
+	peer_dev = &peer_dev_int->peer_dev;
+	/* return 0 so ice_for_each_peer will continue closing other peers */
+	if (!ice_validate_peer_dev(peer_dev))
+		return 0;
+	pf = pci_get_drvdata(peer_dev->pdev);
+
+	if (test_bit(__ICE_DOWN, pf->state) ||
+	    test_bit(__ICE_SUSPENDED, pf->state) ||
+	    test_bit(__ICE_NEEDS_RESTART, pf->state))
+		return 0;
+
+	mutex_lock(&peer_dev_int->peer_dev_state_mutex);
+
+	/* no peer driver, already closed, closing or opening nothing to do */
+	if (test_bit(ICE_PEER_DEV_STATE_CLOSED, peer_dev_int->state) ||
+	    test_bit(ICE_PEER_DEV_STATE_CLOSING, peer_dev_int->state) ||
+	    test_bit(ICE_PEER_DEV_STATE_OPENING, peer_dev_int->state) ||
+	    test_bit(ICE_PEER_DEV_STATE_REMOVED, peer_dev_int->state))
+		goto peer_close_out;
+
+	/* Set the peer state to CLOSING */
+	ice_peer_state_change(peer_dev_int, ICE_PEER_DEV_STATE_CLOSING, true);
+
+	for (i = 0; i < IIDC_EVENT_NBITS; i++)
+		bitmap_zero(peer_dev_int->current_events[i].type,
+			    IIDC_EVENT_NBITS);
+
+	if (peer_dev->peer_ops && peer_dev->peer_ops->close)
+		peer_dev->peer_ops->close(peer_dev, reason);
+
+	/* Set the peer state to CLOSED */
+	ice_peer_state_change(peer_dev_int, ICE_PEER_DEV_STATE_CLOSED, true);
+
+peer_close_out:
+	mutex_unlock(&peer_dev_int->peer_dev_state_mutex);
+
+	return 0;
+}
+
+/**
+ * ice_peer_update_vsi - update the pf_vsi info in peer_dev struct
+ * @peer_dev_int: pointer to peer dev internal struct
+ * @data: opaque pointer - VSI to be updated
+ */
+int ice_peer_update_vsi(struct ice_peer_dev_int *peer_dev_int, void *data)
+{
+	struct ice_vsi *vsi = (struct ice_vsi *)data;
+	struct iidc_peer_dev *peer_dev;
+
+	peer_dev = &peer_dev_int->peer_dev;
+	if (!peer_dev)
+		return 0;
+
+	peer_dev->pf_vsi_num = vsi->vsi_num;
+	return 0;
+}
+
 /**
  * ice_for_each_peer - iterate across and call function for each peer dev
  * @pf: pointer to private board struct
@@ -175,6 +247,89 @@ ice_for_each_peer(struct ice_pf *pf, void *data,
 	return 0;
 }
 
+/**
+ * ice_finish_init_peer_device - complete peer device initialization
+ * @peer_dev_int: ptr to peer device internal struct
+ * @data: ptr to opaque data
+ *
+ * This function completes remaining initialization of peer_devices
+ */
+int
+ice_finish_init_peer_device(struct ice_peer_dev_int *peer_dev_int,
+			    void __always_unused *data)
+{
+	struct iidc_peer_dev *peer_dev;
+	struct iidc_peer_drv *peer_drv;
+	struct device *dev;
+	struct ice_pf *pf;
+	int ret = 0;
+
+	peer_dev = &peer_dev_int->peer_dev;
+	/* peer_dev will not always be populated at the time of this check */
+	if (!ice_validate_peer_dev(peer_dev))
+		return ret;
+
+	peer_drv = peer_dev->peer_drv;
+	pf = pci_get_drvdata(peer_dev->pdev);
+	dev = ice_pf_to_dev(pf);
+	/* There will be several assessments of the peer_dev's state in this
+	 * chunk of logic.  We need to hold the peer_dev_int's state mutex
+	 * for the entire part so that the flow progresses without another
+	 * context changing things mid-flow
+	 */
+	mutex_lock(&peer_dev_int->peer_dev_state_mutex);
+
+	if (!peer_dev->peer_ops) {
+		dev_err(dev, "peer_ops not defined on peer dev\n");
+		goto init_unlock;
+	}
+
+	if (!peer_dev->peer_ops->open) {
+		dev_err(dev, "peer_ops:open not defined on peer dev\n");
+		goto init_unlock;
+	}
+
+	if (!peer_dev->peer_ops->close) {
+		dev_err(dev, "peer_ops:close not defined on peer dev\n");
+		goto init_unlock;
+	}
+
+	/* Peer driver expected to set driver_id during registration */
+	if (!peer_drv->driver_id) {
+		dev_err(dev, "Peer driver did not set driver_id\n");
+		goto init_unlock;
+	}
+
+	if ((test_bit(ICE_PEER_DEV_STATE_CLOSED, peer_dev_int->state) ||
+	     test_bit(ICE_PEER_DEV_STATE_PROBED, peer_dev_int->state)) &&
+	    ice_pf_state_is_nominal(pf)) {
+		/* If the RTNL is locked, we defer opening the peer
+		 * until the next time this function is called by the
+		 * service task.
+		 */
+		if (rtnl_is_locked())
+			goto init_unlock;
+		ice_peer_state_change(peer_dev_int, ICE_PEER_DEV_STATE_OPENING,
+				      true);
+		ret = peer_dev->peer_ops->open(peer_dev);
+		if (ret) {
+			dev_err(dev, "Peer %d failed to open\n",
+				peer_dev->peer_dev_id);
+			ice_peer_state_change(peer_dev_int,
+					      ICE_PEER_DEV_STATE_PROBED, true);
+			goto init_unlock;
+		}
+
+		ice_peer_state_change(peer_dev_int, ICE_PEER_DEV_STATE_OPENED,
+				      true);
+	}
+
+init_unlock:
+	mutex_unlock(&peer_dev_int->peer_dev_state_mutex);
+
+	return ret;
+}
+
 /**
  * ice_unreg_peer_device - unregister specified device
  * @peer_dev_int: ptr to peer device internal
@@ -199,6 +354,9 @@ ice_unreg_peer_device(struct ice_peer_dev_int *peer_dev_int,
 	if (peer_dev_int->ice_peer_wq) {
 		if (peer_dev_int->peer_prep_task.func)
 			cancel_work_sync(&peer_dev_int->peer_prep_task);
+
+		if (peer_dev_int->peer_close_task.func)
+			cancel_work_sync(&peer_dev_int->peer_close_task);
 		destroy_workqueue(peer_dev_int->ice_peer_wq);
 	}
 
@@ -229,6 +387,134 @@ ice_unroll_peer(struct ice_peer_dev_int *peer_dev_int,
 	return 0;
 }
 
+/**
+ * ice_peer_unregister - request to unregister peer
+ * @peer_dev: peer device
+ *
+ * This function triggers close/remove on peer_dev allowing peer
+ * to unregister.
+ */
+static int ice_peer_unregister(struct iidc_peer_dev *peer_dev)
+{
+	enum iidc_close_reason reason = IIDC_REASON_PEER_DEV_UNINIT;
+	struct ice_peer_dev_int *peer_dev_int;
+	struct ice_pf *pf;
+	int ret;
+
+	if (!ice_validate_peer_dev(peer_dev))
+		return -EINVAL;
+
+	pf = pci_get_drvdata(peer_dev->pdev);
+	if (ice_is_reset_in_progress(pf->state))
+		return -EBUSY;
+
+	peer_dev_int = peer_to_ice_dev_int(peer_dev);
+
+	ret = ice_peer_close(peer_dev_int, &reason);
+	if (ret)
+		return ret;
+
+	peer_dev->peer_ops = NULL;
+
+	ice_peer_state_change(peer_dev_int, ICE_PEER_DEV_STATE_REMOVED, false);
+
+	return 0;
+}
+
+/**
+ * ice_peer_register - Called by peer to open communication with LAN
+ * @peer_dev: ptr to peer device
+ *
+ * registering peer is expected to populate the ice_peerdrv->name field
+ * before calling this function.
+ */
+static int ice_peer_register(struct iidc_peer_dev *peer_dev)
+{
+	struct ice_peer_drv_int *peer_drv_int;
+	struct ice_peer_dev_int *peer_dev_int;
+	struct iidc_peer_drv *peer_drv;
+
+	if (!peer_dev) {
+		pr_err("Failed to reg peer dev: peer_dev ptr NULL\n");
+		return -EINVAL;
+	}
+
+	if (!peer_dev->pdev) {
+		pr_err("Failed to reg peer dev: peer dev pdev NULL\n");
+		return -EINVAL;
+	}
+
+	if (!peer_dev->peer_ops || !peer_dev->ops) {
+		pr_err("Failed to reg peer dev: peer dev peer_ops/ops NULL\n");
+		return -EINVAL;
+	}
+
+	peer_drv = peer_dev->peer_drv;
+	if (!peer_drv) {
+		pr_err("Failed to reg peer dev: peer drv NULL\n");
+		return -EINVAL;
+	}
+
+	peer_dev_int = peer_to_ice_dev_int(peer_dev);
+	peer_drv_int = peer_dev_int->peer_drv_int;
+	if (!peer_drv_int) {
+		pr_err("Failed to match peer_drv_int to peer_dev\n");
+		return -EINVAL;
+	}
+
+	peer_drv_int->peer_drv = peer_drv;
+
+	ice_peer_state_change(peer_dev_int, ICE_PEER_DEV_STATE_PROBED, false);
+
+	return 0;
+}
+
+/**
+ * ice_peer_update_vsi_filter - update main VSI filters for RDMA
+ * @peer_dev: pointer to RDMA peer device
+ * @filter: selection of filters to enable or disable
+ * @enable: bool whether to enable or disable filters
+ */
+static int
+ice_peer_update_vsi_filter(struct iidc_peer_dev *peer_dev,
+			   enum iidc_rdma_filter __always_unused filter,
+			   bool enable)
+{
+	struct ice_vsi *vsi;
+	struct ice_pf *pf;
+	int ret;
+
+	if (!ice_validate_peer_dev(peer_dev))
+		return -EINVAL;
+
+	pf = pci_get_drvdata(peer_dev->pdev);
+
+	vsi = ice_get_main_vsi(pf);
+	if (!vsi)
+		return -EINVAL;
+
+	ret = ice_cfg_iwarp_fltr(&pf->hw, vsi->idx, enable);
+
+	if (ret) {
+		dev_err(ice_pf_to_dev(pf), "Failed to  %sable iWARP filtering\n",
+			enable ? "en" : "dis");
+	} else {
+		if (enable)
+			vsi->info.q_opt_flags |= ICE_AQ_VSI_Q_OPT_PE_FLTR_EN;
+		else
+			vsi->info.q_opt_flags &= ~ICE_AQ_VSI_Q_OPT_PE_FLTR_EN;
+	}
+
+	return ret;
+}
+
+/* Initialize the ice_ops struct, which is used in 'ice_init_peer_devices' */
+static const struct iidc_ops ops = {
+	.peer_register			= ice_peer_register,
+	.peer_unregister		= ice_peer_unregister,
+	.update_vsi_filter		= ice_peer_update_vsi_filter,
+};
+
 /**
  * ice_reserve_peer_qvector - Reserve vector resources for peer drivers
  * @pf: board private structure to initialize
@@ -363,6 +649,8 @@ int ice_init_peer_devices(struct ice_pf *pf)
 
 		/* for DCB, override the qos_info defaults. */
 		ice_setup_dcb_qos_info(pf, qos_info);
+		/* Initialize ice_ops */
+		peer_dev->ops = &ops;
 
 		/* make sure peer specific resources such as msix_count and
 		 * msix_entries are initialized
diff --git a/drivers/net/ethernet/intel/ice/ice_idc_int.h b/drivers/net/ethernet/intel/ice/ice_idc_int.h
index daac19c45490..d22e6f5bb50e 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc_int.h
+++ b/drivers/net/ethernet/intel/ice/ice_idc_int.h
@@ -62,6 +62,42 @@ struct ice_peer_dev_int {
 	enum iidc_close_reason rst_type;
 };
 
+int ice_peer_update_vsi(struct ice_peer_dev_int *peer_dev_int, void *data);
 int ice_unroll_peer(struct ice_peer_dev_int *peer_dev_int, void *data);
 int ice_unreg_peer_device(struct ice_peer_dev_int *peer_dev_int, void *data);
+int ice_peer_close(struct ice_peer_dev_int *peer_dev_int, void *data);
+int
+ice_finish_init_peer_device(struct ice_peer_dev_int *peer_dev_int, void *data);
+
+static inline struct
+ice_peer_dev_int *peer_to_ice_dev_int(struct iidc_peer_dev *peer_dev)
+{
+	return  container_of(peer_dev, struct ice_peer_dev_int, peer_dev);
+}
+
+static inline bool ice_validate_peer_dev(struct iidc_peer_dev *peer_dev)
+{
+	struct ice_peer_dev_int *peer_dev_int;
+	struct ice_pf *pf;
+
+	if (!peer_dev || !peer_dev->pdev)
+		return false;
+
+	if (!peer_dev->peer_ops)
+		return false;
+
+	pf = pci_get_drvdata(peer_dev->pdev);
+	if (!pf)
+		return false;
+
+	peer_dev_int = peer_to_ice_dev_int(peer_dev);
+	if (!peer_dev_int)
+		return false;
+
+	if (test_bit(ICE_PEER_DEV_STATE_REMOVED, peer_dev_int->state) ||
+	    test_bit(ICE_PEER_DEV_STATE_INIT, peer_dev_int->state))
+		return false;
+
+	return true;
+}
 #endif /* !_ICE_IDC_INT_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 205ac5900551..5043d5ed1b2a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1379,6 +1379,30 @@ ice_add_mac_to_list(struct ice_vsi *vsi, struct list_head *add_list,
 	return 0;
 }
 
+/**
+ * ice_pf_state_is_nominal - checks the PF for nominal state
+ * @pf: pointer to PF to check
+ *
+ * Check the PF's state for a collection of bits that would indicate
+ * the PF is in a state that would inhibit normal operation for
+ * driver functionality.
+ *
+ * Returns true if PF is in a nominal state, false otherwise
+ */
+bool ice_pf_state_is_nominal(struct ice_pf *pf)
+{
+	DECLARE_BITMAP(check_bits, __ICE_STATE_NBITS) = { 0 };
+
+	if (!pf)
+		return false;
+
+	bitmap_set(check_bits, 0, __ICE_STATE_NOMINAL_CHECK_BITS);
+	if (bitmap_intersects(pf->state, check_bits, __ICE_STATE_NBITS))
+		return false;
+
+	return true;
+}
+
 /**
  * ice_update_eth_stats - Update VSI-specific ethernet statistics counters
  * @vsi: the VSI to be updated
@@ -2390,6 +2414,15 @@ void ice_vsi_free_rx_rings(struct ice_vsi *vsi)
  */
 void ice_vsi_close(struct ice_vsi *vsi)
 {
+	enum iidc_close_reason reason = IIDC_REASON_INTERFACE_DOWN;
+
+	if (!ice_is_safe_mode(vsi->back) && vsi->type == ICE_VSI_PF) {
+		int ret = ice_for_each_peer(vsi->back, &reason, ice_peer_close);
+
+		if (ret)
+			dev_dbg(ice_pf_to_dev(vsi->back), "Peer device did not implement close function\n");
+	}
+
 	if (!test_and_set_bit(__ICE_DOWN, vsi->state))
 		ice_down(vsi);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index db07cc065b10..f77ddd6883c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -14,6 +14,8 @@ ice_add_mac_to_list(struct ice_vsi *vsi, struct list_head *add_list,
 
 void ice_free_fltr_list(struct device *dev, struct list_head *h);
 
+bool ice_pf_state_is_nominal(struct ice_pf *pf);
+
 void ice_update_eth_stats(struct ice_vsi *vsi);
 
 int ice_vsi_cfg_rxqs(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 43986c41e18c..61fc58c24202 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1491,6 +1491,9 @@ static void ice_service_task(struct work_struct *work)
 		return;
 	}
 
+	/* Invoke remaining initialization of peer devices */
+	ice_for_each_peer(pf, NULL, ice_finish_init_peer_device);
+
 	ice_process_vflr_event(pf);
 	ice_clean_mailboxq_subtask(pf);
 
@@ -3464,6 +3467,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 static void ice_remove(struct pci_dev *pdev)
 {
 	struct ice_pf *pf = pci_get_drvdata(pdev);
+	enum iidc_close_reason reason;
 	int i;
 
 	if (!pf)
@@ -3480,8 +3484,12 @@ static void ice_remove(struct pci_dev *pdev)
 		ice_free_vfs(pf);
 	}
 
-	set_bit(__ICE_DOWN, pf->state);
 	ice_service_task_stop(pf);
+	if (ice_is_peer_ena(pf)) {
+		reason = IIDC_REASON_INTERFACE_DOWN;
+		ice_for_each_peer(pf, &reason, ice_peer_close);
+	}
+	set_bit(__ICE_DOWN, pf->state);
 
 	ice_devlink_destroy_port(pf);
 	ice_vsi_release_all(pf);
@@ -4798,7 +4806,15 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		dev_err(dev, "PF VSI rebuild failed: %d\n", err);
 		goto err_vsi_rebuild;
 	}
+	if (ice_is_peer_ena(pf)) {
+		struct ice_vsi *vsi = ice_get_main_vsi(pf);
 
+		if (!vsi) {
+			dev_err(dev, "No PF_VSI to update peer\n");
+			goto err_vsi_rebuild;
+		}
+		ice_for_each_peer(pf, vsi, ice_peer_update_vsi);
+	}
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
 		err = ice_vsi_rebuild_by_type(pf, ICE_VSI_VF);
 		if (err) {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 51825a203e35..cf8e1553599a 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -430,6 +430,29 @@ ice_update_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
 	return ice_aq_update_vsi(hw, vsi_ctx, cd);
 }
 
+/**
+ * ice_cfg_iwarp_fltr - enable/disable iWARP filtering on VSI
+ * @hw: pointer to HW struct
+ * @vsi_handle: VSI SW index
+ * @enable: boolean for enable/disable
+ */
+enum ice_status
+ice_cfg_iwarp_fltr(struct ice_hw *hw, u16 vsi_handle, bool enable)
+{
+	struct ice_vsi_ctx *ctx;
+
+	ctx = ice_get_vsi_ctx(hw, vsi_handle);
+	if (!ctx)
+		return ICE_ERR_DOES_NOT_EXIST;
+
+	if (enable)
+		ctx->info.q_opt_flags |= ICE_AQ_VSI_Q_OPT_PE_FLTR_EN;
+	else
+		ctx->info.q_opt_flags &= ~ICE_AQ_VSI_Q_OPT_PE_FLTR_EN;
+
+	return ice_update_vsi(hw, vsi_handle, ctx, NULL);
+}
+
 /**
  * ice_aq_alloc_free_vsi_list
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index fa14b9545dab..96010d3d96fd 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -220,6 +220,8 @@ void ice_remove_vsi_fltr(struct ice_hw *hw, u16 vsi_handle);
 enum ice_status
 ice_add_vlan(struct ice_hw *hw, struct list_head *m_list);
 enum ice_status ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list);
+enum ice_status
+ice_cfg_iwarp_fltr(struct ice_hw *hw, u16 vsi_handle, bool enable);
 
 /* Promisc/defport setup for VSIs */
 enum ice_status
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index beb70886390e..68c2717407f8 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1375,31 +1375,6 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
 	return ret;
 }
 
-/**
- * ice_pf_state_is_nominal - checks the PF for nominal state
- * @pf: pointer to PF to check
- *
- * Check the PF's state for a collection of bits that would indicate
- * the PF is in a state that would inhibit normal operation for
- * driver functionality.
- *
- * Returns true if PF is in a nominal state.
- * Returns false otherwise
- */
-static bool ice_pf_state_is_nominal(struct ice_pf *pf)
-{
-	DECLARE_BITMAP(check_bits, __ICE_STATE_NBITS) = { 0 };
-
-	if (!pf)
-		return false;
-
-	bitmap_set(check_bits, 0, __ICE_STATE_NOMINAL_CHECK_BITS);
-	if (bitmap_intersects(pf->state, check_bits, __ICE_STATE_NBITS))
-		return false;
-
-	return true;
-}
-
 /**
  * ice_pci_sriov_ena - Enable or change number of VFs
  * @pf: pointer to the PF structure
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
