Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0831C4052
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 May 2020 18:44:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D8258837F;
	Mon,  4 May 2020 16:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IWhqY6pb3XGV; Mon,  4 May 2020 16:44:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47ABE88437;
	Mon,  4 May 2020 16:44:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 77D251BF857
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 16:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7498F86B1A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 16:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8XPBs8QWq5-K for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2020 16:43:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED57486B04
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 16:43:52 +0000 (UTC)
IronPort-SDR: ziZtdLlfB1mjjZSkyzRMRjw1IMEbL+ItUB9MjqNMWQ/YE690G9GBGKvvrDbd/h/OQ9qS8BP0PJ
 i2RFVb8SiyYA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 09:43:51 -0700
IronPort-SDR: S1YowVOKzrB6Mh21OlUd07Pxwu3Rw6sIQjqm/nU86YqNl8kZemiKnVgHXzmtZ+GoRXW96MQdjE
 Qp3pvW9HjFAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="461073923"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by fmsmga006.fm.intel.com with ESMTP; 04 May 2020 09:43:51 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 May 2020 09:43:45 -0700
Message-Id: <20200504164349.1523441-5-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200504164349.1523441-1-jeffrey.t.kirsher@intel.com>
References: <20200504164349.1523441-1-jeffrey.t.kirsher@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next v3 5/9] ice: Enable event notifications
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

Enable registration of notifications. Peer devices can register to be
notified of certain events as well as notify the driver of its state
changes.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  37 ++++
 drivers/net/ethernet/intel/ice/ice_idc.c     | 221 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_idc_int.h |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c    |  27 ++-
 4 files changed, 280 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 24c0a60fe172..c4f8be0c0b24 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -168,6 +168,30 @@ void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi)
 	}
 }
 
+/**
+ * ice_peer_prep_tc_change - Pre-notify RDMA Peer in blocking call of TC change
+ * @peer_dev_int: ptr to peer device internal struct
+ * @data: ptr to opaque data
+ */
+static int
+ice_peer_prep_tc_change(struct ice_peer_dev_int *peer_dev_int,
+			void __always_unused *data)
+{
+	struct iidc_peer_dev *peer_dev;
+
+	peer_dev = &peer_dev_int->peer_dev;
+	if (!ice_validate_peer_dev(peer_dev))
+		return 0;
+
+	if (!test_bit(ICE_PEER_DEV_STATE_OPENED, peer_dev_int->state))
+		return 0;
+
+	if (peer_dev->peer_ops && peer_dev->peer_ops->prep_tc_change)
+		peer_dev->peer_ops->prep_tc_change(peer_dev);
+
+	return 0;
+}
+
 /**
  * ice_dcb_bwchk - check if ETS bandwidth input parameters are correct
  * @pf: pointer to the PF struct
@@ -248,6 +272,9 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 		return -ENOMEM;
 
 	dev_info(dev, "Commit DCB Configuration to the hardware\n");
+	/* Notify capable peers about impending change to TCs */
+	ice_for_each_peer(pf, NULL, ice_peer_prep_tc_change);
+
 	pf_vsi = ice_get_main_vsi(pf);
 	if (!pf_vsi) {
 		dev_dbg(dev, "PF VSI doesn't exist\n");
@@ -580,6 +607,7 @@ static int ice_dcb_noncontig_cfg(struct ice_pf *pf)
 void ice_pf_dcb_recfg(struct ice_pf *pf)
 {
 	struct ice_dcbx_cfg *dcbcfg = &pf->hw.port_info->local_dcbx_cfg;
+	struct iidc_event *event;
 	u8 tc_map = 0;
 	int v, ret;
 
@@ -615,6 +643,15 @@ void ice_pf_dcb_recfg(struct ice_pf *pf)
 		if (vsi->type == ICE_VSI_PF)
 			ice_dcbnl_set_all(vsi);
 	}
+	event = kzalloc(sizeof(*event), GFP_KERNEL);
+	if (!event)
+		return;
+
+	set_bit(IIDC_EVENT_TC_CHANGE, event->type);
+	event->reporter = NULL;
+	ice_setup_dcb_qos_info(pf, &event->info.port_qos);
+	ice_for_each_peer(pf, event, ice_peer_check_for_reg);
+	kfree(event);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 05fa5c61e2d3..0fb1080c19d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -218,6 +218,72 @@ int ice_peer_update_vsi(struct ice_peer_dev_int *peer_dev_int, void *data)
 	return 0;
 }
 
+/**
+ * ice_check_peer_drv_for_events - check peer_drv for events to report
+ * @peer_dev: peer device to report to
+ */
+static void ice_check_peer_drv_for_events(struct iidc_peer_dev *peer_dev)
+{
+	const struct iidc_peer_ops *p_ops = peer_dev->peer_ops;
+	struct ice_peer_dev_int *peer_dev_int;
+	struct ice_peer_drv_int *peer_drv_int;
+	int i;
+
+	peer_dev_int = peer_to_ice_dev_int(peer_dev);
+	if (!peer_dev_int)
+		return;
+	peer_drv_int = peer_dev_int->peer_drv_int;
+
+	for_each_set_bit(i, peer_dev_int->events, IIDC_EVENT_NBITS) {
+		struct iidc_event *curr = &peer_drv_int->current_events[i];
+
+		if (!bitmap_empty(curr->type, IIDC_EVENT_NBITS) &&
+		    p_ops->event_handler)
+			p_ops->event_handler(peer_dev, curr);
+	}
+}
+
+/**
+ * ice_check_peer_for_events - check peer_devs for events new peer reg'd for
+ * @src_peer_int: peer to check for events
+ * @data: ptr to opaque data, to be used for the peer struct that opened
+ *
+ * This function is to be called when a peer device is opened.
+ *
+ * Since a new peer opening would have missed any events that would
+ * have happened before its opening, we need to walk the peers and see
+ * if any of them have events that the new peer cares about
+ *
+ * This function is meant to be called by a device_for_each_child.
+ */
+static int
+ice_check_peer_for_events(struct ice_peer_dev_int *src_peer_int, void *data)
+{
+	struct iidc_peer_dev *new_peer = (struct iidc_peer_dev *)data;
+	const struct iidc_peer_ops *p_ops = new_peer->peer_ops;
+	struct ice_peer_dev_int *new_peer_int;
+	struct iidc_peer_dev *src_peer;
+	int i;
+
+	src_peer = &src_peer_int->peer_dev;
+	if (!ice_validate_peer_dev(new_peer) ||
+	    !ice_validate_peer_dev(src_peer))
+		return 0;
+
+	new_peer_int = peer_to_ice_dev_int(new_peer);
+
+	for_each_set_bit(i, new_peer_int->events, IIDC_EVENT_NBITS) {
+		struct iidc_event *curr = &src_peer_int->current_events[i];
+
+		if (!bitmap_empty(curr->type, IIDC_EVENT_NBITS) &&
+		    new_peer->peer_dev_id != src_peer->peer_dev_id &&
+		    p_ops->event_handler)
+			p_ops->event_handler(new_peer, curr);
+	}
+
+	return 0;
+}
+
 /**
  * ice_for_each_peer - iterate across and call function for each peer dev
  * @pf: pointer to private board struct
@@ -323,6 +389,9 @@ ice_finish_init_peer_device(struct ice_peer_dev_int *peer_dev_int,
 
 		ice_peer_state_change(peer_dev_int, ICE_PEER_DEV_STATE_OPENED,
 				      true);
+		ret = ice_for_each_peer(pf, peer_dev,
+					ice_check_peer_for_events);
+		ice_check_peer_drv_for_events(peer_dev);
 	}
 
 init_unlock:
@@ -630,6 +699,155 @@ ice_peer_free_res(struct iidc_peer_dev *peer_dev, struct iidc_res *res)
 	return ret;
 }
 
+/**
+ * ice_peer_reg_for_notif - register a peer to receive specific notifications
+ * @peer_dev: peer that is registering for event notifications
+ * @events: mask of event types peer is registering for
+ */
+static void
+ice_peer_reg_for_notif(struct iidc_peer_dev *peer_dev,
+		       struct iidc_event *events)
+{
+	struct ice_peer_dev_int *peer_dev_int;
+	struct ice_pf *pf;
+
+	if (!ice_validate_peer_dev(peer_dev) || !events)
+		return;
+
+	peer_dev_int = peer_to_ice_dev_int(peer_dev);
+	pf = pci_get_drvdata(peer_dev->pdev);
+
+	bitmap_or(peer_dev_int->events, peer_dev_int->events, events->type,
+		  IIDC_EVENT_NBITS);
+
+	/* Check to see if any events happened previous to peer registering */
+	ice_for_each_peer(pf, peer_dev, ice_check_peer_for_events);
+	ice_check_peer_drv_for_events(peer_dev);
+}
+
+/**
+ * ice_peer_unreg_for_notif - unreg a peer from receiving certain notifications
+ * @peer_dev: peer that is unregistering from event notifications
+ * @events: mask of event types peer is unregistering for
+ */
+static void
+ice_peer_unreg_for_notif(struct iidc_peer_dev *peer_dev,
+			 struct iidc_event *events)
+{
+	struct ice_peer_dev_int *peer_dev_int;
+
+	if (!ice_validate_peer_dev(peer_dev) || !events)
+		return;
+
+	peer_dev_int = peer_to_ice_dev_int(peer_dev);
+
+	bitmap_andnot(peer_dev_int->events, peer_dev_int->events, events->type,
+		      IIDC_EVENT_NBITS);
+}
+
+/**
+ * ice_peer_check_for_reg - check to see if any peers are reg'd for event
+ * @peer_dev_int: ptr to peer device internal struct
+ * @data: ptr to opaque data, to be used for ice_event to report
+ *
+ * This function is to be called by device_for_each_child to handle an
+ * event reported by a peer or the ice driver.
+ */
+int ice_peer_check_for_reg(struct ice_peer_dev_int *peer_dev_int, void *data)
+{
+	struct iidc_event *event = (struct iidc_event *)data;
+	DECLARE_BITMAP(comp_events, IIDC_EVENT_NBITS);
+	struct iidc_peer_dev *peer_dev;
+	bool check = true;
+
+	peer_dev = &peer_dev_int->peer_dev;
+
+	if (!ice_validate_peer_dev(peer_dev) || !data)
+	/* If invalid dev, in this case return 0 instead of error
+	 * because caller ignores this return value
+	 */
+		return 0;
+
+	if (event->reporter)
+		check = event->reporter->peer_dev_id != peer_dev->peer_dev_id;
+
+	if (bitmap_and(comp_events, event->type, peer_dev_int->events,
+		       IIDC_EVENT_NBITS) &&
+	    (test_bit(ICE_PEER_DEV_STATE_OPENED, peer_dev_int->state) ||
+	     test_bit(ICE_PEER_DEV_STATE_PREP_RST, peer_dev_int->state) ||
+	     test_bit(ICE_PEER_DEV_STATE_PREPPED, peer_dev_int->state)) &&
+	    check &&
+	    peer_dev->peer_ops->event_handler)
+		peer_dev->peer_ops->event_handler(peer_dev, event);
+
+	return 0;
+}
+
+/**
+ * ice_peer_report_state_change - accept report of a peer state change
+ * @peer_dev: peer that is sending notification about state change
+ * @event: ice_event holding info on what the state change is
+ *
+ * We also need to parse the list of peers to see if anyone is registered
+ * for notifications about this state change event, and if so, notify them.
+ */
+static void
+ice_peer_report_state_change(struct iidc_peer_dev *peer_dev,
+			     struct iidc_event *event)
+{
+	struct ice_peer_dev_int *peer_dev_int;
+	struct ice_peer_drv_int *peer_drv_int;
+	int e_type, drv_event = 0;
+	struct ice_pf *pf;
+
+	if (!ice_validate_peer_dev(peer_dev) || !event)
+		return;
+
+	pf = pci_get_drvdata(peer_dev->pdev);
+	peer_dev_int = peer_to_ice_dev_int(peer_dev);
+	peer_drv_int = peer_dev_int->peer_drv_int;
+
+	e_type = find_first_bit(event->type, IIDC_EVENT_NBITS);
+	if (!e_type)
+		return;
+
+	switch (e_type) {
+	/* Check for peer_drv events */
+	case IIDC_EVENT_MBX_CHANGE:
+		drv_event = 1;
+		if (event->info.mbx_rdy)
+			set_bit(ICE_PEER_DRV_STATE_MBX_RDY,
+				peer_drv_int->state);
+		else
+			clear_bit(ICE_PEER_DRV_STATE_MBX_RDY,
+				  peer_drv_int->state);
+		break;
+
+	/* Check for peer_dev events */
+	case IIDC_EVENT_API_CHANGE:
+		if (event->info.api_rdy)
+			set_bit(ICE_PEER_DEV_STATE_API_RDY,
+				peer_dev_int->state);
+		else
+			clear_bit(ICE_PEER_DEV_STATE_API_RDY,
+				  peer_dev_int->state);
+		break;
+
+	default:
+		return;
+	}
+
+	/* store the event and state to notify any new peers opening */
+	if (drv_event)
+		memcpy(&peer_drv_int->current_events[e_type], event,
+		       sizeof(*event));
+	else
+		memcpy(&peer_dev_int->current_events[e_type], event,
+		       sizeof(*event));
+
+	ice_for_each_peer(pf, event, ice_peer_check_for_reg);
+}
+
 /**
  * ice_peer_unregister - request to unregister peer
  * @peer_dev: peer device
@@ -755,6 +973,9 @@ ice_peer_update_vsi_filter(struct iidc_peer_dev *peer_dev,
 static const struct iidc_ops ops = {
 	.alloc_res			= ice_peer_alloc_res,
 	.free_res			= ice_peer_free_res,
+	.reg_for_notification		= ice_peer_reg_for_notif,
+	.unreg_for_notification		= ice_peer_unreg_for_notif,
+	.notify_state_change		= ice_peer_report_state_change,
 	.peer_register			= ice_peer_register,
 	.peer_unregister		= ice_peer_unregister,
 	.update_vsi_filter		= ice_peer_update_vsi_filter,
diff --git a/drivers/net/ethernet/intel/ice/ice_idc_int.h b/drivers/net/ethernet/intel/ice/ice_idc_int.h
index d22e6f5bb50e..1d3d5cafc977 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc_int.h
+++ b/drivers/net/ethernet/intel/ice/ice_idc_int.h
@@ -66,6 +66,7 @@ int ice_peer_update_vsi(struct ice_peer_dev_int *peer_dev_int, void *data);
 int ice_unroll_peer(struct ice_peer_dev_int *peer_dev_int, void *data);
 int ice_unreg_peer_device(struct ice_peer_dev_int *peer_dev_int, void *data);
 int ice_peer_close(struct ice_peer_dev_int *peer_dev_int, void *data);
+int ice_peer_check_for_reg(struct ice_peer_dev_int *peer_dev_int, void *data);
 int
 ice_finish_init_peer_device(struct ice_peer_dev_int *peer_dev_int, void *data);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ac0c6d5b01e4..d1a528da9128 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4862,7 +4862,9 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
+	struct iidc_event *event;
 	u8 count = 0;
+	int err = 0;
 
 	if (new_mtu == netdev->mtu) {
 		netdev_warn(netdev, "MTU is already %u\n", netdev->mtu);
@@ -4904,27 +4906,40 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 		return -EBUSY;
 	}
 
+	event = kzalloc(sizeof(*event), GFP_KERNEL);
+	if (!event)
+		return -ENOMEM;
+
 	netdev->mtu = new_mtu;
 
 	/* if VSI is up, bring it down and then back up */
 	if (!test_and_set_bit(__ICE_DOWN, vsi->state)) {
-		int err;
-
 		err = ice_down(vsi);
 		if (err) {
-			netdev_err(netdev, "change MTU if_up err %d\n", err);
-			return err;
+			netdev_err(netdev, "change MTU if_down err %d\n", err);
+			goto free_event;
 		}
 
 		err = ice_up(vsi);
 		if (err) {
 			netdev_err(netdev, "change MTU if_up err %d\n", err);
-			return err;
+			goto free_event;
 		}
 	}
 
+	if (ice_is_safe_mode(pf))
+		goto out;
+
+	set_bit(IIDC_EVENT_MTU_CHANGE, event->type);
+	event->reporter = NULL;
+	event->info.mtu = new_mtu;
+	ice_for_each_peer(pf, event, ice_peer_check_for_reg);
+
+out:
 	netdev_dbg(netdev, "changed MTU to %d\n", new_mtu);
-	return 0;
+free_event:
+	kfree(event);
+	return err;
 }
 
 /**
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
