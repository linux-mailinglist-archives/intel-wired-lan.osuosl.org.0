Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E53FD3757EA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 May 2021 17:51:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8761040617;
	Thu,  6 May 2021 15:51:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OuDlkyqaAaVU; Thu,  6 May 2021 15:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30450405CC;
	Thu,  6 May 2021 15:51:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 20D8D1C1187
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F85D60668
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nTAhuxG3nZlu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 15:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD213600D4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:38 +0000 (UTC)
IronPort-SDR: KxHiDnB+Ymzd3NHRLj90q9caNlN8YngbAIOd+Vy7tImqa/jmn+AXzk0CGrydqh60ju8wLYT8Ls
 qYYtyMtB3KAw==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="219389323"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="219389323"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 08:50:35 -0700
IronPort-SDR: Nh1Q7S67k3MdXjRHLvyJsmVLoVFODP53GtEsDHR1gETTwxaIHoLw0iqNWOAYH5MK/RdaXE9n0R
 zUx5iUQ8g8YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="459369481"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2021 08:50:35 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 May 2021 08:39:59 -0700
Message-Id: <20210506154008.12880-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S59 04/13] ice: wait for reset before
 reporting devlink info
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

From: Jacob Keller <jacob.e.keller@intel.com>

Requesting device firmware information while the device is busy cleaning
up after a reset can result in an unexpected failure:

This occurs because the command is attempting to access the device
AdminQ while it is down. Resolve this by having the command wait for
a while until the reset is complete. To do this, introduce
a reset_wait_queue and associated helper function "ice_wait_for_reset".

This helper will use the wait queue to sleep until the driver is done
rebuilding. Use of a wait queue is preferred because the potential sleep
duration can be several seconds.

To ensure that the thread wakes up properly, a new wake_up call is added
during all code paths which clear the reset state bits associated with
the driver rebuild flow.

Using this ensures that tools can request device information without
worrying about whether the driver is cleaning up from a reset.
Specifically, it is expected that a flash update could result in
a device reset, and it is better to delay the response for information
until the reset is complete rather than exit with an immediate failure.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  2 ++
 drivers/net/ethernet/intel/ice/ice_devlink.c |  6 +++++
 drivers/net/ethernet/intel/ice/ice_lib.c     | 28 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c    |  5 ++++
 5 files changed, 42 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 3d672f92a2bc..f78466fa7150 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -443,6 +443,8 @@ struct ice_pf {
 	struct hlist_head aq_wait_list;
 	wait_queue_head_t aq_wait_queue;
 
+	wait_queue_head_t reset_wait_queue;
+
 	u32 hw_csum_rx_error;
 	u16 oicr_idx;		/* Other interrupt cause MSIX vector index */
 	u16 num_avail_sw_msix;	/* remaining MSIX SW vectors left unclaimed */
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 63a8718586b3..364977ca7fe3 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -276,6 +276,12 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	size_t i;
 	int err;
 
+	err = ice_wait_for_reset(pf, 10 * HZ);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Device is busy resetting");
+		return err;
+	}
+
 	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 	if (!ctx)
 		return -ENOMEM;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 9b1d22f6a8eb..6ee1d1994a23 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3219,6 +3219,34 @@ bool ice_is_reset_in_progress(unsigned long *state)
 	       test_bit(ICE_GLOBR_REQ, state);
 }
 
+/**
+ * ice_wait_for_reset - Wait for driver to finish reset and rebuild
+ * @pf: pointer to the PF structure
+ * @timeout: length of time to wait, in jiffies
+ *
+ * Wait (sleep) for a short time until the driver finishes cleaning up from
+ * a device reset. The caller must be able to sleep. Use this to delay
+ * operations that could fail while the driver is cleaning up after a device
+ * reset.
+ *
+ * Returns 0 on success, -EBUSY if the reset is not finished within the
+ * timeout, and -ERESTARTSYS if the thread was interrupted.
+ */
+int ice_wait_for_reset(struct ice_pf *pf, unsigned long timeout)
+{
+	long ret;
+
+	ret = wait_event_interruptible_timeout(pf->reset_wait_queue,
+					       !ice_is_reset_in_progress(pf->state),
+					       timeout);
+	if (ret < 0)
+		return ret;
+	else if (!ret)
+		return -EBUSY;
+	else
+		return 0;
+}
+
 #ifdef CONFIG_DCB
 /**
  * ice_vsi_update_q_map - update our copy of the VSI info with new queue map
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index e5c46213b0b1..35ccf3e2f721 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -77,6 +77,7 @@ ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id);
 int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi);
 
 bool ice_is_reset_in_progress(unsigned long *state);
+int ice_wait_for_reset(struct ice_pf *pf, unsigned long timeout);
 
 void
 ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16 pf_q, u32 rxdid, u32 prio);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f033a4dbdaa6..9ae9197c12a9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -514,6 +514,7 @@ static void ice_do_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 		clear_bit(ICE_PFR_REQ, pf->state);
 		clear_bit(ICE_CORER_REQ, pf->state);
 		clear_bit(ICE_GLOBR_REQ, pf->state);
+		wake_up(&pf->reset_wait_queue);
 		return;
 	}
 
@@ -526,6 +527,7 @@ static void ice_do_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 		ice_rebuild(pf, reset_type);
 		clear_bit(ICE_PREPARED_FOR_RESET, pf->state);
 		clear_bit(ICE_PFR_REQ, pf->state);
+		wake_up(&pf->reset_wait_queue);
 		ice_reset_all_vfs(pf, true);
 	}
 }
@@ -576,6 +578,7 @@ static void ice_reset_subtask(struct ice_pf *pf)
 			clear_bit(ICE_PFR_REQ, pf->state);
 			clear_bit(ICE_CORER_REQ, pf->state);
 			clear_bit(ICE_GLOBR_REQ, pf->state);
+			wake_up(&pf->reset_wait_queue);
 			ice_reset_all_vfs(pf, true);
 		}
 
@@ -3340,6 +3343,8 @@ static int ice_init_pf(struct ice_pf *pf)
 	spin_lock_init(&pf->aq_wait_lock);
 	init_waitqueue_head(&pf->aq_wait_queue);
 
+	init_waitqueue_head(&pf->reset_wait_queue);
+
 	/* setup service timer and periodic service task */
 	timer_setup(&pf->serv_tmr, ice_service_timer, 0);
 	pf->serv_tmr_period = HZ;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
