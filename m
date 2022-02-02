Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA594A7B75
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 00:06:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BACD81B9D;
	Wed,  2 Feb 2022 23:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8_ty3YaAtf4P; Wed,  2 Feb 2022 23:06:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EC3A81990;
	Wed,  2 Feb 2022 23:06:54 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E65D1BF3EF
 for <intel-wired-lan@osuosl.org>; Wed,  2 Feb 2022 23:06:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38E6260C06
 for <intel-wired-lan@osuosl.org>; Wed,  2 Feb 2022 23:06:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rBcBw_Ly1VqH for <intel-wired-lan@osuosl.org>;
 Wed,  2 Feb 2022 23:06:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E7FD16058C
 for <intel-wired-lan@osuosl.org>; Wed,  2 Feb 2022 23:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643843207; x=1675379207;
 h=subject:from:to:cc:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JVooP1U5kLduuT6wADx/R57R3Ov4nyT2wOEm7mjFOeY=;
 b=Xd/wiEwn3/XeeSYfcAGMGv7qJg1EkyOijj5iVpZwiBI9DELr7xxdNDce
 i/prTTb24Cl3tM85FAVRF+GTiIR7pOzx++4hZ64wCTuTwXKjdr/lO5uQ+
 9JV68CtBwAkByaPwTPTo3A9sRAzJ/VgjY1eLdMGiaDtkAMqF+DeaItDq9
 q7AocmcVabNdBFWtwkMQslXI+LZmOStKzNO5r4nRQqWzRvzCMYoiCx7V3
 LWKygHXsCd1+f1wrAzkcl4oH+Agu6w5LfltwdKibjYFlsbkJ1Hiqu/eoa
 78KEiEninXuK5Qf5c+Kl2IzFw4Mf02ukv8rGYNRXM0AoVGsPJQRBlRWuu w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="246870945"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="246870945"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 15:06:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="535022866"
Received: from anambiarhost.jf.intel.com ([10.166.29.119])
 by fmsmga007.fm.intel.com with ESMTP; 02 Feb 2022 15:06:47 -0800
From: Amritha Nambiar <amritha.nambiar@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 02 Feb 2022 15:14:18 -0800
Message-ID: <164384365849.7900.12418617403662713980.stgit@anambiarhost.jf.intel.com>
User-Agent: StGit/unknown-version
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v1] ice: Add support for classid
 based queue selection
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

This patch uses TC flower filter's classid feature to support
forwarding packets to a device queue. Such filters with action
forward to queue will be the highest priority switch filter in
HW.
Example:
$ tc filter add dev ens4f0 protocol ip ingress flower\
  dst_ip 192.168.1.12 ip_proto tcp dst_port 5001\
  skip_sw classid ffff:0x5

The above command adds an ingress filter, the accepted packets
will be directed to queue 4. The major number represents the ingress
qdisc. The general rule is "classID's minor number - 1" upto max
queues supported. The queue number is in hex format.

Refactored ice_add_tc_flower_adv_fltr() to consolidate code with
action FWD_TO_VSI and FWD_TO QUEUE.

Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h        |   15 +
 drivers/net/ethernet/intel/ice/ice_main.c   |    2 
 drivers/net/ethernet/intel/ice/ice_tc_lib.c |  274 +++++++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |   40 +++-
 4 files changed, 262 insertions(+), 69 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f158620442fb..1ae22c66383d 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -139,6 +139,21 @@
  */
 #define ICE_BW_KBPS_DIVISOR		125
 
+/* prio 5..7 can be used as advanced switch filter priority. Default recipes
+ * have prio 4 and below, hence prio value between 5..7 can be used as filter
+ * prio for advanced switch filter (advanced switch filter means it needs
+ * new recipe to be created to represent specified extraction sequence because
+ * default recipe extraction sequence does not represent custom extraction)
+ */
+#define ICE_SWITCH_FLTR_PRIO_QUEUE	7
+/* prio 6 is reserved for future use (e.g. switch filter with L3 fields +
+ * (Optional: IP TOS/TTL) + L4 fields + (optionally: TCP fields such as
+ * SYN/FIN/RST))
+ */
+#define ICE_SWITCH_FLTR_PRIO_RSVD	6
+#define ICE_SWITCH_FLTR_PRIO_VSI	5
+#define ICE_SWITCH_FLTR_PRIO_QGRP	ICE_SWITCH_FLTR_PRIO_VSI
+
 /* Macro for each VSI in a PF */
 #define ice_for_each_vsi(pf, i) \
 	for ((i) = 0; (i) < (pf)->num_alloc_vsi; (i)++)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e5feae6c6446..aadb89fe5d7e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8017,7 +8017,7 @@ static void ice_rem_all_chnl_fltrs(struct ice_pf *pf)
 
 		rule.rid = fltr->rid;
 		rule.rule_id = fltr->rule_id;
-		rule.vsi_handle = fltr->dest_id;
+		rule.vsi_handle = fltr->dest_vsi_handle;
 		status = ice_rem_adv_rule_by_id(&pf->hw, &rule);
 		if (status) {
 			if (status == -ENOENT)
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 424c74ca7d69..f89f387aa320 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -474,6 +474,124 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	return ret;
 }
 
+/**
+ * ice_locate_vsi_using_queue - locate VSI using queue (forward to queue)
+ * @vsi: Pointer to VSI
+ * @tc_fltr: Pointer to tc_flower_filter
+ *
+ * Locate the VSI using specified "queue" (which is part of tc_fltr). When ADQ
+ * is not enabled, always return input VSI, otherwise locate corresponding
+ * VSI based on per channel "offset" and "qcount"
+ */
+static struct ice_vsi *
+ice_locate_vsi_using_queue(struct ice_vsi *vsi,
+			   struct ice_tc_flower_fltr *tc_fltr)
+{
+	int num_tc, tc;
+	int queue;
+
+	/* verify action is forward to queue */
+	if (tc_fltr->action.fltr_act != ICE_FWD_TO_Q)
+		return NULL;
+
+	/* if ADQ is not active, passed VSI is the candidate VSI */
+	if (!ice_is_adq_active(vsi->back))
+		return vsi;
+
+	/* now locate the VSI (it could still be main PF VSI or CHNL_VSI
+	 * depending upon "queue number")
+	 */
+	num_tc = vsi->mqprio_qopt.qopt.num_tc;
+	queue = tc_fltr->action.fwd.q.queue;
+
+	for (tc = 0; tc < num_tc; tc++) {
+		int qcount = vsi->mqprio_qopt.qopt.count[tc];
+		int offset = vsi->mqprio_qopt.qopt.offset[tc];
+
+		if (queue >= offset && queue < offset + qcount) {
+			/* for non-ADQ TCs, passed VSI is the candidate VSI */
+			if (tc < ICE_CHNL_START_TC)
+				return vsi;
+			else
+				return vsi->tc_map_vsi[tc];
+		}
+	}
+	return NULL;
+}
+
+static struct ice_rx_ring *
+ice_locate_rx_ring_using_queue(struct ice_vsi *vsi,
+			       struct ice_tc_flower_fltr *tc_fltr)
+{
+	u32 queue = tc_fltr->action.fwd.q.queue;
+
+	return queue < vsi->num_rxq ? vsi->rx_rings[queue] : NULL;
+}
+
+/**
+ * ice_tc_forward_action - Determine destination VSI and queue for the action
+ * @vsi: Pointer to VSI
+ * @tc_fltr: Pointer to TC flower filter structure
+ * @dest_vsi: Pointer to VSI ptr
+ *
+ * Validates the tc forward action and determines the destination VSI and queue
+ * for the forward action.
+ */
+static int
+ice_tc_forward_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *tc_fltr,
+		      struct ice_vsi **dest_vsi)
+{
+	struct ice_rx_ring *ring = NULL;
+	struct ice_vsi *ch_vsi = NULL;
+	struct ice_pf *pf = vsi->back;
+	struct device *dev;
+	u16 tc_class = 0;
+
+	dev = ice_pf_to_dev(pf);
+	*dest_vsi = NULL;
+
+	/* Get the destination VSI and/or destination queue and validate them */
+	tc_class = tc_fltr->action.fwd.tc.tc_class;
+	if (tc_class && tc_fltr->action.fltr_act == ICE_FWD_TO_VSI) {
+		/* Select the destination VSI */
+		if (tc_class < ICE_CHNL_START_TC) {
+			NL_SET_ERR_MSG_MOD(tc_fltr->extack,
+					   "Unable to add filter because of unsupported destination");
+			return -EOPNOTSUPP;
+		}
+		/* Locate ADQ VSI depending on hw_tc number */
+		ch_vsi = vsi->tc_map_vsi[tc_class];
+	} else if (tc_fltr->action.fltr_act == ICE_FWD_TO_Q) {
+		/* Locate the Rx queue using "action.fwd.q.queue" */
+		ring = ice_locate_rx_ring_using_queue(vsi, tc_fltr);
+		if (!ring) {
+			dev_err(dev,
+				"Unable to locate Rx queue for action fwd_to_queue: %u\n",
+				tc_fltr->action.fwd.q.queue);
+			return -EINVAL;
+		}
+		/* Determine destination VSI even though forward action is
+		 * FWD_TO_QUEUE, because QUEUE is associated with VSI
+		 */
+		ch_vsi = ice_locate_vsi_using_queue(vsi, tc_fltr);
+	} else {
+		dev_err(dev,
+			"Unable to add filter because of unsupported action %u (supported actions: fwd to tc, fwd to queue)\n",
+			tc_fltr->action.fltr_act);
+		return -EINVAL;
+	}
+
+	/* Must have valid "ch_vsi" (it could be main VSI or ADQ VSI */
+	if (!ch_vsi) {
+		dev_err(dev,
+			"Unable to add filter because specified destination VSI doesn't exist\n");
+		return -EINVAL;
+	}
+
+	*dest_vsi = ch_vsi;
+	return 0;
+}
+
 /**
  * ice_add_tc_flower_adv_fltr - add appropriate filter rules
  * @vsi: Pointer to VSI
@@ -515,11 +633,10 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 		return -EOPNOTSUPP;
 	}
 
-	/* get the channel (aka ADQ VSI) */
-	if (tc_fltr->dest_vsi)
-		ch_vsi = tc_fltr->dest_vsi;
-	else
-		ch_vsi = vsi->tc_map_vsi[tc_fltr->action.tc_class];
+	/* validate forwarding action VSI and queue */
+	ret = ice_tc_forward_action(vsi, tc_fltr, &ch_vsi);
+	if (ret)
+		return ret;
 
 	lkups_cnt = ice_tc_count_lkups(flags, headers, tc_fltr);
 	list = kcalloc(lkups_cnt, sizeof(*list), GFP_ATOMIC);
@@ -533,25 +650,34 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 	}
 
 	rule_info.sw_act.fltr_act = tc_fltr->action.fltr_act;
-	if (tc_fltr->action.tc_class >= ICE_CHNL_START_TC) {
-		if (!ch_vsi) {
-			NL_SET_ERR_MSG_MOD(tc_fltr->extack, "Unable to add filter because specified destination doesn't exist");
-			ret = -EINVAL;
-			goto exit;
-		}
-
+	if (tc_fltr->action.fltr_act == ICE_FWD_TO_VSI) {
 		rule_info.sw_act.fltr_act = ICE_FWD_TO_VSI;
 		rule_info.sw_act.vsi_handle = ch_vsi->idx;
-		rule_info.priority = 7;
+		rule_info.priority = ICE_SWITCH_FLTR_PRIO_VSI;
 		rule_info.sw_act.src = hw->pf_id;
 		rule_info.rx = true;
 		dev_dbg(dev, "add switch rule for TC:%u vsi_idx:%u, lkups_cnt:%u\n",
-			tc_fltr->action.tc_class,
+			tc_fltr->action.fwd.tc.tc_class,
 			rule_info.sw_act.vsi_handle, lkups_cnt);
+	} else if (tc_fltr->action.fltr_act == ICE_FWD_TO_Q) {
+		rule_info.sw_act.fltr_act = ICE_FWD_TO_Q;
+		/* HW queue number in global space */
+		rule_info.sw_act.fwd_id.q_id = tc_fltr->action.fwd.q.hw_queue;
+		rule_info.sw_act.vsi_handle = ch_vsi->idx;
+		rule_info.priority = ICE_SWITCH_FLTR_PRIO_QUEUE;
+		rule_info.sw_act.src = hw->pf_id;
+		rule_info.rx = true;
+		dev_dbg(dev, "add switch rule action to forward to queue:%u (HW queue %u), lkups_cnt:%u\n",
+			tc_fltr->action.fwd.q.queue,
+			tc_fltr->action.fwd.q.hw_queue,
+			lkups_cnt);
 	} else {
 		rule_info.sw_act.flag |= ICE_FLTR_TX;
-		rule_info.sw_act.src = vsi->idx;
+		/* In case of Tx (LOOKUP_TX), src needs to be src VSI */
+		rule_info.sw_act.src = ch_vsi->idx;
+		/* 'Rx' is false, direction of rule(LOOKUPTRX) */
 		rule_info.rx = false;
+		rule_info.priority = ICE_SWITCH_FLTR_PRIO_VSI;
 	}
 
 	/* specify the cookie as filter_rule_id */
@@ -575,19 +701,14 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 	 */
 	tc_fltr->rid = rule_added.rid;
 	tc_fltr->rule_id = rule_added.rule_id;
-	if (tc_fltr->action.tc_class > 0 && ch_vsi) {
-		/* For PF ADQ, VSI type is set as ICE_VSI_CHNL, and
-		 * for PF ADQ filter, it is not yet set in tc_fltr,
-		 * hence store the dest_vsi ptr in tc_fltr
-		 */
-		if (ch_vsi->type == ICE_VSI_CHNL)
-			tc_fltr->dest_vsi = ch_vsi;
+	if (tc_fltr->action.fltr_act == ICE_FWD_TO_VSI ||
+	    tc_fltr->action.fltr_act == ICE_FWD_TO_Q) {
+		tc_fltr->dest_vsi_handle = rule_added.vsi_handle;
+		tc_fltr->dest_vsi = ch_vsi;
 		/* keep track of advanced switch filter for
-		 * destination VSI (channel VSI)
+		 * destination VSI
 		 */
 		ch_vsi->num_chnl_fltr++;
-		/* in this case, dest_id is VSI handle (sw handle) */
-		tc_fltr->dest_id = rule_added.vsi_handle;
 
 		/* keeps track of channel filters for PF VSI */
 		if (vsi->type == ICE_VSI_PF &&
@@ -595,10 +716,17 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 			      ICE_TC_FLWR_FIELD_ENC_DST_MAC)))
 			pf->num_dmac_chnl_fltrs++;
 	}
-	dev_dbg(dev, "added switch rule (lkups_cnt %u, flags 0x%x) for TC %u, rid %u, rule_id %u, vsi_idx %u\n",
-		lkups_cnt, flags,
-		tc_fltr->action.tc_class, rule_added.rid,
-		rule_added.rule_id, rule_added.vsi_handle);
+	if (tc_fltr->action.fltr_act == ICE_FWD_TO_VSI) {
+		dev_dbg(dev, "added switch rule (lkups_cnt %u, flags 0x%x) for TC %u, rid %u, rule_id %u, vsi_idx %u\n",
+			lkups_cnt, flags,
+			tc_fltr->action.fwd.tc.tc_class, rule_added.rid,
+			rule_added.rule_id, rule_added.vsi_handle);
+	} else if (tc_fltr->action.fltr_act == ICE_FWD_TO_Q) {
+		dev_dbg(dev, "added switch rule (lkups_cnt %u, flags 0x%x), action is forward to queue: %u (HW queue %u)     , rid %u, rule_id %u\n",
+			lkups_cnt, flags, tc_fltr->action.fwd.q.queue,
+			tc_fltr->action.fwd.q.hw_queue, rule_added.rid,
+			rule_added.rule_id);
+	}
 exit:
 	kfree(list);
 	return ret;
@@ -1011,40 +1139,70 @@ ice_add_switch_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 }
 
 /**
- * ice_handle_tclass_action - Support directing to a traffic class
+ * ice_handle_tclass_action - Support directing to a traffic class or queue
  * @vsi: Pointer to VSI
  * @cls_flower: Pointer to TC flower offload structure
  * @fltr: Pointer to TC flower filter structure
  *
- * Support directing traffic to a traffic class
+ * Support directing traffic to a traffic class or queue
  */
 static int
 ice_handle_tclass_action(struct ice_vsi *vsi,
 			 struct flow_cls_offload *cls_flower,
 			 struct ice_tc_flower_fltr *fltr)
 {
-	int tc = tc_classid_to_hwtc(vsi->netdev, cls_flower->classid);
-	struct ice_vsi *main_vsi;
-
-	if (tc < 0) {
-		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because specified destination is invalid");
-		return -EINVAL;
-	}
-	if (!tc) {
-		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because of invalid destination");
-		return -EINVAL;
-	}
-
-	if (!(vsi->all_enatc & BIT(tc))) {
-		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because of non-existence destination");
-		return -EINVAL;
-	}
+	unsigned int nrx = TC_H_MIN(cls_flower->classid);
+	int tc;
+	u32 num_tc;
+
+	num_tc = netdev_get_num_tc(vsi->netdev);
+
+	/* There are two regions which will have valid "classid" values:
+	 * 1. The first region will have a classid value of 1 through
+	 * num_tx_queues (i.e forward to queue).
+	 * 2. The second region represents the hardware traffic classes. These
+	 * are represented by classid values of TC_H_MIN_PRIORITY through
+	 * TC_H_MIN_PRIORITY + netdev_get_num_tc - 1. (i.e forward to TC)
+	 */
+	if (nrx < TC_H_MIN_PRIORITY) {
+		u32 queue = 0;
+		/* user specified queue, hence action is forward to queue */
+		if (nrx > vsi->num_rxq) {
+			NL_SET_ERR_MSG_MOD(fltr->extack,
+					   "Unable to add filter because specified queue is invalid");
+			return -ENXIO;
+		}
+		/* since nrx is 1 based */
+		queue = nrx - 1;
+
+		/* forward to queue */
+		fltr->action.fltr_act = ICE_FWD_TO_Q;
+		fltr->action.fwd.q.queue = queue;
+
+		/* determine corresponding HW queue */
+		fltr->action.fwd.q.hw_queue = vsi->rxq_map[queue];
+	} else if ((nrx - TC_H_MIN_PRIORITY) < num_tc) {
+		/* user specified hw_tc (it must be non-zero for ADQ TC, hence
+		 * action is forward to "hw_tc (aka ADQ channel number)"
+		 */
+		tc = nrx - TC_H_MIN_PRIORITY;
+		if (tc < ICE_CHNL_START_TC) {
+			NL_SET_ERR_MSG_MOD(fltr->extack,
+					   "Unable to add filter because of unsupported destination");
+			return -EOPNOTSUPP;
+		}
 
-	/* Redirect to a TC class or Queue Group */
-	main_vsi = ice_get_main_vsi(vsi->back);
-	if (!main_vsi || !main_vsi->netdev) {
+		if (!(vsi->all_enatc & BIT(tc))) {
+			NL_SET_ERR_MSG_MOD(fltr->extack,
+					   "Unable to add filter because of non-existence destination");
+			return -EINVAL;
+		}
+		/* forward to hw_tc (aka ADQ VSI) */
+		fltr->action.fltr_act = ICE_FWD_TO_VSI;
+		fltr->action.fwd.tc.tc_class = tc;
+	} else {
 		NL_SET_ERR_MSG_MOD(fltr->extack,
-				   "Unable to add filter because of invalid netdevice");
+				   "Unable to add filter because user specified neither queue nor hw_tc as forward action");
 		return -EINVAL;
 	}
 
@@ -1067,7 +1225,7 @@ ice_handle_tclass_action(struct ice_vsi *vsi,
 	 */
 	if (!(fltr->flags & ICE_TC_FLWR_FIELD_DST_MAC)) {
 		ether_addr_copy(fltr->outer_headers.l2_key.dst_mac,
-				main_vsi->netdev->dev_addr);
+				vsi->netdev->dev_addr);
 		eth_broadcast_addr(fltr->outer_headers.l2_mask.dst_mac);
 		fltr->flags |= ICE_TC_FLWR_FIELD_DST_MAC;
 	}
@@ -1076,9 +1234,8 @@ ice_handle_tclass_action(struct ice_vsi *vsi,
 	 * lower netdev or any of MACVLAN. MACVLANs MAC address are added as
 	 * unicast MAC filter destined to main VSI.
 	 */
-	if (!ice_mac_fltr_exist(&main_vsi->back->hw,
-				fltr->outer_headers.l2_key.dst_mac,
-				main_vsi->idx)) {
+	if (!ice_mac_fltr_exist(&vsi->back->hw,
+				fltr->outer_headers.l2_key.dst_mac, vsi->idx)) {
 		NL_SET_ERR_MSG_MOD(fltr->extack,
 				   "Unable to add filter because legacy MAC filter for specified destination doesn't exist");
 		return -EINVAL;
@@ -1090,15 +1247,12 @@ ice_handle_tclass_action(struct ice_vsi *vsi,
 	if (fltr->flags & ICE_TC_FLWR_FIELD_VLAN) {
 		u16 vlan_id = be16_to_cpu(fltr->outer_headers.vlan_hdr.vlan_id);
 
-		if (!ice_vlan_fltr_exist(&main_vsi->back->hw, vlan_id,
-					 main_vsi->idx)) {
+		if (!ice_vlan_fltr_exist(&vsi->back->hw, vlan_id, vsi->idx)) {
 			NL_SET_ERR_MSG_MOD(fltr->extack,
 					   "Unable to add filter because legacy VLAN filter for specified destination doesn't exist");
 			return -EINVAL;
 		}
 	}
-	fltr->action.fltr_act = ICE_FWD_TO_VSI;
-	fltr->action.tc_class = tc;
 
 	return 0;
 }
@@ -1162,7 +1316,7 @@ static int ice_del_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 
 	rule_rem.rid = fltr->rid;
 	rule_rem.rule_id = fltr->rule_id;
-	rule_rem.vsi_handle = fltr->dest_id;
+	rule_rem.vsi_handle = fltr->dest_vsi_handle;
 	err = ice_rem_adv_rule_by_id(&pf->hw, &rule_rem);
 	if (err) {
 		if (err == -ENOENT) {
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 319049477959..8c5d7d0b02ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -32,7 +32,20 @@ struct ice_indr_block_priv {
 };
 
 struct ice_tc_flower_action {
-	u32 tc_class;
+	/* forward action specific params */
+	union {
+		struct {
+			u32 tc_class; /* forward to hw_tc */
+			u32 rsvd;
+		} tc;
+		struct {
+			u32 queue; /* forward to queue */
+			/* to add filter in HW, it needs absolute queue number
+			 * in global space of queues (between 0...N)
+			 */
+			u32 hw_queue;
+		} q;
+	} fwd;
 	enum ice_sw_fwd_act_type fltr_act;
 };
 
@@ -105,11 +118,11 @@ struct ice_tc_flower_fltr {
 	 */
 	u16 rid;
 	u16 rule_id;
-	/* this could be queue/vsi_idx (sw handle)/queue_group, depending upon
-	 * destination type
+	/* VSI handle of the destination VSI (it could be main PF VSI, CHNL_VSI,
+	 * VF VSI)
 	 */
-	u16 dest_id;
-	/* if dest_id is vsi_idx, then need to store destination VSI ptr */
+	u16 dest_vsi_handle;
+	/* ptr to destination VSI */
 	struct ice_vsi *dest_vsi;
 	/* direction of fltr for eswitch use case */
 	enum ice_eswitch_fltr_direction direction;
@@ -134,12 +147,23 @@ struct ice_tc_flower_fltr {
  * @f: Pointer to tc-flower filter
  *
  * Criteria to determine of given filter is valid channel filter
- * or not is based on its "destination". If destination is hw_tc (aka tc_class)
- * and it is non-zero, then it is valid channel (aka ADQ) filter
+ * or not is based on its "destination".
+ * For forward to VSI action, if destination is valid hw_tc (aka tc_class)
+ * and in supported range of TCs for ADQ, then return true.
+ * For forward to queue, as long as dest_vsi is valid and it is of type
+ * VSI_CHNL (PF ADQ VSI is of type VSI_CHNL), return true.
+ * NOTE: For forward to queue, correct dest_vsi is still set in tc_fltr based
+ * on destination queue specified.
  */
 static inline bool ice_is_chnl_fltr(struct ice_tc_flower_fltr *f)
 {
-	return !!f->action.tc_class;
+	if (f->action.fltr_act == ICE_FWD_TO_VSI)
+		return f->action.fwd.tc.tc_class >= ICE_CHNL_START_TC &&
+			f->action.fwd.tc.tc_class < ICE_CHNL_MAX_TC;
+	else if (f->action.fltr_act == ICE_FWD_TO_Q)
+		return f->dest_vsi && f->dest_vsi->type == ICE_VSI_CHNL;
+
+	return false;
 }
 
 /**

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
