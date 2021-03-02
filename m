Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F8632A958
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:25:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5A7260705;
	Tue,  2 Mar 2021 18:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id op7e5LifbSww; Tue,  2 Mar 2021 18:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45457606CC;
	Tue,  2 Mar 2021 18:25:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D46B1BF963
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C7D183AA2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vksjdLod5b-K for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 56A2B83A9B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
IronPort-SDR: ekTvdnZIL0iFF8qtPZGQvwLxHlnR7vK6Ec5NNE3FwtjE97HLEiS8Ub2cv5RecW7aMkJkgO473+
 0M42wkT72SRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="186263190"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="186263190"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:25:18 -0800
IronPort-SDR: MsK02azKTj6PqFR/deuViHbS5rYvAmJPemLVvKiq94k3VGP2PTss0tPRk+rNOMON3fiok0mgEN
 LDxecAMexg+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="434915056"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2021 10:25:17 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:15:38 -0800
Message-Id: <20210302181545.51822-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S56 06/13] ice: Drop leading underscores
 in enum ice_pf_state
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

Remove the leading untracked in enum ice_status. This is not really
communicating anything and is unnecessary. No functional change.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  68 ++---
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  18 +-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  18 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 234 +++++++++---------
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   6 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  22 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |   6 +-
 8 files changed, 187 insertions(+), 187 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e804b278ab95..89ffc96702fa 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -194,45 +194,45 @@ struct ice_sw {
 };
 
 enum ice_pf_state {
-	__ICE_TESTING,
-	__ICE_DOWN,
-	__ICE_NEEDS_RESTART,
-	__ICE_PREPARED_FOR_RESET,	/* set by driver when prepared */
-	__ICE_RESET_OICR_RECV,		/* set by driver after rcv reset OICR */
-	__ICE_PFR_REQ,			/* set by driver and peers */
-	__ICE_CORER_REQ,		/* set by driver and peers */
-	__ICE_GLOBR_REQ,		/* set by driver and peers */
-	__ICE_CORER_RECV,		/* set by OICR handler */
-	__ICE_GLOBR_RECV,		/* set by OICR handler */
-	__ICE_EMPR_RECV,		/* set by OICR handler */
-	__ICE_SUSPENDED,		/* set on module remove path */
-	__ICE_RESET_FAILED,		/* set by reset/rebuild */
+	ICE_TESTING,
+	ICE_DOWN,
+	ICE_NEEDS_RESTART,
+	ICE_PREPARED_FOR_RESET,	/* set by driver when prepared */
+	ICE_RESET_OICR_RECV,		/* set by driver after rcv reset OICR */
+	ICE_PFR_REQ,			/* set by driver and peers */
+	ICE_CORER_REQ,		/* set by driver and peers */
+	ICE_GLOBR_REQ,		/* set by driver and peers */
+	ICE_CORER_RECV,		/* set by OICR handler */
+	ICE_GLOBR_RECV,		/* set by OICR handler */
+	ICE_EMPR_RECV,		/* set by OICR handler */
+	ICE_SUSPENDED,		/* set on module remove path */
+	ICE_RESET_FAILED,		/* set by reset/rebuild */
 	/* When checking for the PF to be in a nominal operating state, the
 	 * bits that are grouped at the beginning of the list need to be
-	 * checked. Bits occurring before __ICE_STATE_NOMINAL_CHECK_BITS will
+	 * checked. Bits occurring before ICE_STATE_NOMINAL_CHECK_BITS will
 	 * be checked. If you need to add a bit into consideration for nominal
 	 * operating state, it must be added before
-	 * __ICE_STATE_NOMINAL_CHECK_BITS. Do not move this entry's position
+	 * ICE_STATE_NOMINAL_CHECK_BITS. Do not move this entry's position
 	 * without appropriate consideration.
 	 */
-	__ICE_STATE_NOMINAL_CHECK_BITS,
-	__ICE_ADMINQ_EVENT_PENDING,
-	__ICE_MAILBOXQ_EVENT_PENDING,
-	__ICE_MDD_EVENT_PENDING,
-	__ICE_VFLR_EVENT_PENDING,
-	__ICE_FLTR_OVERFLOW_PROMISC,
-	__ICE_VF_DIS,
-	__ICE_CFG_BUSY,
-	__ICE_SERVICE_SCHED,
-	__ICE_SERVICE_DIS,
-	__ICE_FD_FLUSH_REQ,
-	__ICE_OICR_INTR_DIS,		/* Global OICR interrupt disabled */
-	__ICE_MDD_VF_PRINT_PENDING,	/* set when MDD event handle */
-	__ICE_VF_RESETS_DISABLED,	/* disable resets during ice_remove */
-	__ICE_LINK_DEFAULT_OVERRIDE_PENDING,
-	__ICE_PHY_INIT_COMPLETE,
-	__ICE_FD_VF_FLUSH_CTX,		/* set at FD Rx IRQ or timeout */
-	__ICE_STATE_NBITS		/* must be last */
+	ICE_STATE_NOMINAL_CHECK_BITS,
+	ICE_ADMINQ_EVENT_PENDING,
+	ICE_MAILBOXQ_EVENT_PENDING,
+	ICE_MDD_EVENT_PENDING,
+	ICE_VFLR_EVENT_PENDING,
+	ICE_FLTR_OVERFLOW_PROMISC,
+	ICE_VF_DIS,
+	ICE_CFG_BUSY,
+	ICE_SERVICE_SCHED,
+	ICE_SERVICE_DIS,
+	ICE_FD_FLUSH_REQ,
+	ICE_OICR_INTR_DIS,		/* Global OICR interrupt disabled */
+	ICE_MDD_VF_PRINT_PENDING,	/* set when MDD event handle */
+	ICE_VF_RESETS_DISABLED,	/* disable resets during ice_remove */
+	ICE_LINK_DEFAULT_OVERRIDE_PENDING,
+	ICE_PHY_INIT_COMPLETE,
+	ICE_FD_VF_FLUSH_CTX,		/* set at FD Rx IRQ or timeout */
+	ICE_STATE_NBITS		/* must be last */
 };
 
 enum ice_vsi_state {
@@ -420,7 +420,7 @@ struct ice_pf {
 	/* used to ratelimit the MDD event logging */
 	unsigned long last_printed_mdd_jiffies;
 	DECLARE_BITMAP(malvfs, ICE_MAX_VF_COUNT);
-	DECLARE_BITMAP(state, __ICE_STATE_NBITS);
+	DECLARE_BITMAP(state, ICE_STATE_NBITS);
 	DECLARE_BITMAP(flags, ICE_PF_FLAGS_NBITS);
 	unsigned long *avail_txqs;	/* bitmap to track PF Tx queue usage */
 	unsigned long *avail_rxqs;	/* bitmap to track PF Rx queue usage */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index c765cc5b0e9a..61f5bef54ea1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -807,7 +807,7 @@ ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
 	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
 		netdev_info(netdev, "offline testing starting\n");
 
-		set_bit(__ICE_TESTING, pf->state);
+		set_bit(ICE_TESTING, pf->state);
 
 		if (ice_active_vfs(pf)) {
 			dev_warn(dev, "Please take active VFs and Netqueues offline and restart the adapter before running NIC diagnostics\n");
@@ -817,7 +817,7 @@ ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
 			data[ICE_ETH_TEST_LOOP] = 1;
 			data[ICE_ETH_TEST_LINK] = 1;
 			eth_test->flags |= ETH_TEST_FL_FAILED;
-			clear_bit(__ICE_TESTING, pf->state);
+			clear_bit(ICE_TESTING, pf->state);
 			goto skip_ol_tests;
 		}
 		/* If the device is online then take it offline */
@@ -838,7 +838,7 @@ ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
 		    data[ICE_ETH_TEST_REG])
 			eth_test->flags |= ETH_TEST_FL_FAILED;
 
-		clear_bit(__ICE_TESTING, pf->state);
+		clear_bit(ICE_TESTING, pf->state);
 
 		if (if_running) {
 			int status = ice_open(netdev);
@@ -1121,7 +1121,7 @@ static int ice_nway_reset(struct net_device *netdev)
 
 	pi = vsi->port_info;
 	/* If VSI state is up, then restart autoneg with link up */
-	if (!test_bit(__ICE_DOWN, vsi->back->state))
+	if (!test_bit(ICE_DOWN, vsi->back->state))
 		status = ice_aq_set_link_restart_an(pi, true, NULL);
 	else
 		status = ice_aq_set_link_restart_an(pi, false, NULL);
@@ -2314,7 +2314,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 		goto done;
 	}
 
-	while (test_and_set_bit(__ICE_CFG_BUSY, pf->state)) {
+	while (test_and_set_bit(ICE_CFG_BUSY, pf->state)) {
 		timeout--;
 		if (!timeout) {
 			err = -EBUSY;
@@ -2424,7 +2424,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	p->phy.curr_user_speed_req = adv_link_speed;
 done:
 	kfree(abilities);
-	clear_bit(__ICE_CFG_BUSY, pf->state);
+	clear_bit(ICE_CFG_BUSY, pf->state);
 
 	return err;
 }
@@ -2780,7 +2780,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 	if (ice_xsk_any_rx_ring_ena(vsi))
 		return -EBUSY;
 
-	while (test_and_set_bit(__ICE_CFG_BUSY, pf->state)) {
+	while (test_and_set_bit(ICE_CFG_BUSY, pf->state)) {
 		timeout--;
 		if (!timeout)
 			return -EBUSY;
@@ -2968,7 +2968,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 	}
 
 done:
-	clear_bit(__ICE_CFG_BUSY, pf->state);
+	clear_bit(ICE_CFG_BUSY, pf->state);
 	return err;
 }
 
@@ -3087,7 +3087,7 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	}
 
 	/* If we have link and don't have autoneg */
-	if (!test_bit(__ICE_DOWN, pf->state) &&
+	if (!test_bit(ICE_DOWN, pf->state) &&
 	    !(hw_link_info->an_info & ICE_AQ_AN_COMPLETED)) {
 		/* Send message that it might not necessarily work*/
 		netdev_info(netdev, "Autoneg did not complete so changing settings may not result in an actual change.\n");
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 440964defa4a..16de603b280c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1452,7 +1452,7 @@ int ice_del_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 		return -EBUSY;
 	}
 
-	if (test_bit(__ICE_FD_FLUSH_REQ, pf->state))
+	if (test_bit(ICE_FD_FLUSH_REQ, pf->state))
 		return -EBUSY;
 
 	mutex_lock(&hw->fdir_fltr_lock);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d45162993232..01371b377fbc 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1502,13 +1502,13 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
  */
 bool ice_pf_state_is_nominal(struct ice_pf *pf)
 {
-	DECLARE_BITMAP(check_bits, __ICE_STATE_NBITS) = { 0 };
+	DECLARE_BITMAP(check_bits, ICE_STATE_NBITS) = { 0 };
 
 	if (!pf)
 		return false;
 
-	bitmap_set(check_bits, 0, __ICE_STATE_NOMINAL_CHECK_BITS);
-	if (bitmap_intersects(pf->state, check_bits, __ICE_STATE_NBITS))
+	bitmap_set(check_bits, 0, ICE_STATE_NOMINAL_CHECK_BITS);
+	if (bitmap_intersects(pf->state, check_bits, ICE_STATE_NBITS))
 		return false;
 
 	return true;
@@ -2807,7 +2807,7 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	ice_vsi_delete(vsi);
 	ice_vsi_free_q_vectors(vsi);
 
-	/* make sure unregister_netdev() was called by checking __ICE_DOWN */
+	/* make sure unregister_netdev() was called by checking ICE_DOWN */
 	if (vsi->netdev && test_bit(ICE_VSI_DOWN, vsi->state)) {
 		free_netdev(vsi->netdev);
 		vsi->netdev = NULL;
@@ -3136,7 +3136,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	}
 err_vsi:
 	ice_vsi_clear(vsi);
-	set_bit(__ICE_RESET_FAILED, pf->state);
+	set_bit(ICE_RESET_FAILED, pf->state);
 	kfree(coalesce);
 	return ret;
 }
@@ -3147,10 +3147,10 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
  */
 bool ice_is_reset_in_progress(unsigned long *state)
 {
-	return test_bit(__ICE_RESET_OICR_RECV, state) ||
-	       test_bit(__ICE_PFR_REQ, state) ||
-	       test_bit(__ICE_CORER_REQ, state) ||
-	       test_bit(__ICE_GLOBR_REQ, state);
+	return test_bit(ICE_RESET_OICR_RECV, state) ||
+	       test_bit(ICE_PFR_REQ, state) ||
+	       test_bit(ICE_CORER_REQ, state) ||
+	       test_bit(ICE_GLOBR_REQ, state);
 }
 
 #ifdef CONFIG_DCB
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e6cccd8f4ff8..1018b6da7362 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -272,7 +272,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	if (!vsi->netdev)
 		return -EINVAL;
 
-	while (test_and_set_bit(__ICE_CFG_BUSY, vsi->state))
+	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
 		usleep_range(1000, 2000);
 
 	changed_flags = vsi->current_netdev_flags ^ vsi->netdev->flags;
@@ -322,7 +322,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 		 * space reserved for promiscuous filters.
 		 */
 		if (hw->adminq.sq_last_status == ICE_AQ_RC_ENOSPC &&
-		    !test_and_set_bit(__ICE_FLTR_OVERFLOW_PROMISC,
+		    !test_and_set_bit(ICE_FLTR_OVERFLOW_PROMISC,
 				      vsi->state)) {
 			promisc_forced_on = true;
 			netdev_warn(netdev, "Reached MAC filter limit, forcing promisc mode on VSI %d\n",
@@ -406,7 +406,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	set_bit(ICE_VSI_UMAC_FLTR_CHANGED, vsi->state);
 	set_bit(ICE_VSI_MMAC_FLTR_CHANGED, vsi->state);
 exit:
-	clear_bit(__ICE_CFG_BUSY, vsi->state);
+	clear_bit(ICE_CFG_BUSY, vsi->state);
 	return err;
 }
 
@@ -467,7 +467,7 @@ ice_prepare_for_reset(struct ice_pf *pf)
 	unsigned int i;
 
 	/* already prepared for reset */
-	if (test_bit(__ICE_PREPARED_FOR_RESET, pf->state))
+	if (test_bit(ICE_PREPARED_FOR_RESET, pf->state))
 		return;
 
 	/* Notify VFs of impending reset */
@@ -488,7 +488,7 @@ ice_prepare_for_reset(struct ice_pf *pf)
 
 	ice_shutdown_all_ctrlq(hw);
 
-	set_bit(__ICE_PREPARED_FOR_RESET, pf->state);
+	set_bit(ICE_PREPARED_FOR_RESET, pf->state);
 }
 
 /**
@@ -509,12 +509,12 @@ static void ice_do_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	/* trigger the reset */
 	if (ice_reset(hw, reset_type)) {
 		dev_err(dev, "reset %d failed\n", reset_type);
-		set_bit(__ICE_RESET_FAILED, pf->state);
-		clear_bit(__ICE_RESET_OICR_RECV, pf->state);
-		clear_bit(__ICE_PREPARED_FOR_RESET, pf->state);
-		clear_bit(__ICE_PFR_REQ, pf->state);
-		clear_bit(__ICE_CORER_REQ, pf->state);
-		clear_bit(__ICE_GLOBR_REQ, pf->state);
+		set_bit(ICE_RESET_FAILED, pf->state);
+		clear_bit(ICE_RESET_OICR_RECV, pf->state);
+		clear_bit(ICE_PREPARED_FOR_RESET, pf->state);
+		clear_bit(ICE_PFR_REQ, pf->state);
+		clear_bit(ICE_CORER_REQ, pf->state);
+		clear_bit(ICE_GLOBR_REQ, pf->state);
 		return;
 	}
 
@@ -525,8 +525,8 @@ static void ice_do_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (reset_type == ICE_RESET_PFR) {
 		pf->pfr_count++;
 		ice_rebuild(pf, reset_type);
-		clear_bit(__ICE_PREPARED_FOR_RESET, pf->state);
-		clear_bit(__ICE_PFR_REQ, pf->state);
+		clear_bit(ICE_PREPARED_FOR_RESET, pf->state);
+		clear_bit(ICE_PFR_REQ, pf->state);
 		ice_reset_all_vfs(pf, true);
 	}
 }
@@ -542,20 +542,20 @@ static void ice_reset_subtask(struct ice_pf *pf)
 	/* When a CORER/GLOBR/EMPR is about to happen, the hardware triggers an
 	 * OICR interrupt. The OICR handler (ice_misc_intr) determines what type
 	 * of reset is pending and sets bits in pf->state indicating the reset
-	 * type and __ICE_RESET_OICR_RECV. So, if the latter bit is set
+	 * type and ICE_RESET_OICR_RECV. So, if the latter bit is set
 	 * prepare for pending reset if not already (for PF software-initiated
 	 * global resets the software should already be prepared for it as
-	 * indicated by __ICE_PREPARED_FOR_RESET; for global resets initiated
+	 * indicated by ICE_PREPARED_FOR_RESET; for global resets initiated
 	 * by firmware or software on other PFs, that bit is not set so prepare
 	 * for the reset now), poll for reset done, rebuild and return.
 	 */
-	if (test_bit(__ICE_RESET_OICR_RECV, pf->state)) {
+	if (test_bit(ICE_RESET_OICR_RECV, pf->state)) {
 		/* Perform the largest reset requested */
-		if (test_and_clear_bit(__ICE_CORER_RECV, pf->state))
+		if (test_and_clear_bit(ICE_CORER_RECV, pf->state))
 			reset_type = ICE_RESET_CORER;
-		if (test_and_clear_bit(__ICE_GLOBR_RECV, pf->state))
+		if (test_and_clear_bit(ICE_GLOBR_RECV, pf->state))
 			reset_type = ICE_RESET_GLOBR;
-		if (test_and_clear_bit(__ICE_EMPR_RECV, pf->state))
+		if (test_and_clear_bit(ICE_EMPR_RECV, pf->state))
 			reset_type = ICE_RESET_EMPR;
 		/* return if no valid reset type requested */
 		if (reset_type == ICE_RESET_INVAL)
@@ -564,7 +564,7 @@ static void ice_reset_subtask(struct ice_pf *pf)
 
 		/* make sure we are ready to rebuild */
 		if (ice_check_reset(&pf->hw)) {
-			set_bit(__ICE_RESET_FAILED, pf->state);
+			set_bit(ICE_RESET_FAILED, pf->state);
 		} else {
 			/* done with reset. start rebuild */
 			pf->hw.reset_ongoing = false;
@@ -572,11 +572,11 @@ static void ice_reset_subtask(struct ice_pf *pf)
 			/* clear bit to resume normal operations, but
 			 * ICE_NEEDS_RESTART bit is set in case rebuild failed
 			 */
-			clear_bit(__ICE_RESET_OICR_RECV, pf->state);
-			clear_bit(__ICE_PREPARED_FOR_RESET, pf->state);
-			clear_bit(__ICE_PFR_REQ, pf->state);
-			clear_bit(__ICE_CORER_REQ, pf->state);
-			clear_bit(__ICE_GLOBR_REQ, pf->state);
+			clear_bit(ICE_RESET_OICR_RECV, pf->state);
+			clear_bit(ICE_PREPARED_FOR_RESET, pf->state);
+			clear_bit(ICE_PFR_REQ, pf->state);
+			clear_bit(ICE_CORER_REQ, pf->state);
+			clear_bit(ICE_GLOBR_REQ, pf->state);
 			ice_reset_all_vfs(pf, true);
 		}
 
@@ -584,19 +584,19 @@ static void ice_reset_subtask(struct ice_pf *pf)
 	}
 
 	/* No pending resets to finish processing. Check for new resets */
-	if (test_bit(__ICE_PFR_REQ, pf->state))
+	if (test_bit(ICE_PFR_REQ, pf->state))
 		reset_type = ICE_RESET_PFR;
-	if (test_bit(__ICE_CORER_REQ, pf->state))
+	if (test_bit(ICE_CORER_REQ, pf->state))
 		reset_type = ICE_RESET_CORER;
-	if (test_bit(__ICE_GLOBR_REQ, pf->state))
+	if (test_bit(ICE_GLOBR_REQ, pf->state))
 		reset_type = ICE_RESET_GLOBR;
 	/* If no valid reset type requested just return */
 	if (reset_type == ICE_RESET_INVAL)
 		return;
 
 	/* reset if not already down or busy */
-	if (!test_bit(__ICE_DOWN, pf->state) &&
-	    !test_bit(__ICE_CFG_BUSY, pf->state)) {
+	if (!test_bit(ICE_DOWN, pf->state) &&
+	    !test_bit(ICE_CFG_BUSY, pf->state)) {
 		ice_do_reset(pf, reset_type);
 	}
 }
@@ -958,8 +958,8 @@ static void ice_watchdog_subtask(struct ice_pf *pf)
 	int i;
 
 	/* if interface is down do nothing */
-	if (test_bit(__ICE_DOWN, pf->state) ||
-	    test_bit(__ICE_CFG_BUSY, pf->state))
+	if (test_bit(ICE_DOWN, pf->state) ||
+	    test_bit(ICE_CFG_BUSY, pf->state))
 		return;
 
 	/* make sure we don't do these things too often */
@@ -1203,7 +1203,7 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 	u32 oldval, val;
 
 	/* Do not clean control queue if/when PF reset fails */
-	if (test_bit(__ICE_RESET_FAILED, pf->state))
+	if (test_bit(ICE_RESET_FAILED, pf->state))
 		return 0;
 
 	switch (q_type) {
@@ -1343,13 +1343,13 @@ static void ice_clean_adminq_subtask(struct ice_pf *pf)
 {
 	struct ice_hw *hw = &pf->hw;
 
-	if (!test_bit(__ICE_ADMINQ_EVENT_PENDING, pf->state))
+	if (!test_bit(ICE_ADMINQ_EVENT_PENDING, pf->state))
 		return;
 
 	if (__ice_clean_ctrlq(pf, ICE_CTL_Q_ADMIN))
 		return;
 
-	clear_bit(__ICE_ADMINQ_EVENT_PENDING, pf->state);
+	clear_bit(ICE_ADMINQ_EVENT_PENDING, pf->state);
 
 	/* There might be a situation where new messages arrive to a control
 	 * queue between processing the last message and clearing the
@@ -1370,13 +1370,13 @@ static void ice_clean_mailboxq_subtask(struct ice_pf *pf)
 {
 	struct ice_hw *hw = &pf->hw;
 
-	if (!test_bit(__ICE_MAILBOXQ_EVENT_PENDING, pf->state))
+	if (!test_bit(ICE_MAILBOXQ_EVENT_PENDING, pf->state))
 		return;
 
 	if (__ice_clean_ctrlq(pf, ICE_CTL_Q_MAILBOX))
 		return;
 
-	clear_bit(__ICE_MAILBOXQ_EVENT_PENDING, pf->state);
+	clear_bit(ICE_MAILBOXQ_EVENT_PENDING, pf->state);
 
 	if (ice_ctrlq_pending(hw, &hw->mailboxq))
 		__ice_clean_ctrlq(pf, ICE_CTL_Q_MAILBOX);
@@ -1392,9 +1392,9 @@ static void ice_clean_mailboxq_subtask(struct ice_pf *pf)
  */
 void ice_service_task_schedule(struct ice_pf *pf)
 {
-	if (!test_bit(__ICE_SERVICE_DIS, pf->state) &&
-	    !test_and_set_bit(__ICE_SERVICE_SCHED, pf->state) &&
-	    !test_bit(__ICE_NEEDS_RESTART, pf->state))
+	if (!test_bit(ICE_SERVICE_DIS, pf->state) &&
+	    !test_and_set_bit(ICE_SERVICE_SCHED, pf->state) &&
+	    !test_bit(ICE_NEEDS_RESTART, pf->state))
 		queue_work(ice_wq, &pf->serv_task);
 }
 
@@ -1404,32 +1404,32 @@ void ice_service_task_schedule(struct ice_pf *pf)
  */
 static void ice_service_task_complete(struct ice_pf *pf)
 {
-	WARN_ON(!test_bit(__ICE_SERVICE_SCHED, pf->state));
+	WARN_ON(!test_bit(ICE_SERVICE_SCHED, pf->state));
 
 	/* force memory (pf->state) to sync before next service task */
 	smp_mb__before_atomic();
-	clear_bit(__ICE_SERVICE_SCHED, pf->state);
+	clear_bit(ICE_SERVICE_SCHED, pf->state);
 }
 
 /**
  * ice_service_task_stop - stop service task and cancel works
  * @pf: board private structure
  *
- * Return 0 if the __ICE_SERVICE_DIS bit was not already set,
+ * Return 0 if the ICE_SERVICE_DIS bit was not already set,
  * 1 otherwise.
  */
 static int ice_service_task_stop(struct ice_pf *pf)
 {
 	int ret;
 
-	ret = test_and_set_bit(__ICE_SERVICE_DIS, pf->state);
+	ret = test_and_set_bit(ICE_SERVICE_DIS, pf->state);
 
 	if (pf->serv_tmr.function)
 		del_timer_sync(&pf->serv_tmr);
 	if (pf->serv_task.func)
 		cancel_work_sync(&pf->serv_task);
 
-	clear_bit(__ICE_SERVICE_SCHED, pf->state);
+	clear_bit(ICE_SERVICE_SCHED, pf->state);
 	return ret;
 }
 
@@ -1441,7 +1441,7 @@ static int ice_service_task_stop(struct ice_pf *pf)
  */
 static void ice_service_task_restart(struct ice_pf *pf)
 {
-	clear_bit(__ICE_SERVICE_DIS, pf->state);
+	clear_bit(ICE_SERVICE_DIS, pf->state);
 	ice_service_task_schedule(pf);
 }
 
@@ -1474,7 +1474,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 	unsigned int i;
 	u32 reg;
 
-	if (!test_and_clear_bit(__ICE_MDD_EVENT_PENDING, pf->state)) {
+	if (!test_and_clear_bit(ICE_MDD_EVENT_PENDING, pf->state)) {
 		/* Since the VF MDD event logging is rate limited, check if
 		 * there are pending MDD events.
 		 */
@@ -1566,7 +1566,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (reg & VP_MDET_TX_PQM_VALID_M) {
 			wr32(hw, VP_MDET_TX_PQM(i), 0xFFFF);
 			vf->mdd_tx_events.count++;
-			set_bit(__ICE_MDD_VF_PRINT_PENDING, pf->state);
+			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_PQM detected on VF %d\n",
 					 i);
@@ -1576,7 +1576,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (reg & VP_MDET_TX_TCLAN_VALID_M) {
 			wr32(hw, VP_MDET_TX_TCLAN(i), 0xFFFF);
 			vf->mdd_tx_events.count++;
-			set_bit(__ICE_MDD_VF_PRINT_PENDING, pf->state);
+			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_TCLAN detected on VF %d\n",
 					 i);
@@ -1586,7 +1586,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (reg & VP_MDET_TX_TDPU_VALID_M) {
 			wr32(hw, VP_MDET_TX_TDPU(i), 0xFFFF);
 			vf->mdd_tx_events.count++;
-			set_bit(__ICE_MDD_VF_PRINT_PENDING, pf->state);
+			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_TDPU detected on VF %d\n",
 					 i);
@@ -1596,7 +1596,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (reg & VP_MDET_RX_VALID_M) {
 			wr32(hw, VP_MDET_RX(i), 0xFFFF);
 			vf->mdd_rx_events.count++;
-			set_bit(__ICE_MDD_VF_PRINT_PENDING, pf->state);
+			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
 			if (netif_msg_rx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event RX detected on VF %d\n",
 					 i);
@@ -1761,7 +1761,7 @@ static void ice_init_link_dflt_override(struct ice_port_info *pi)
  * settings using the default override mask from the NVM.
  *
  * The PHY should only be configured with the default override settings the
- * first time media is available. The __ICE_LINK_DEFAULT_OVERRIDE_PENDING state
+ * first time media is available. The ICE_LINK_DEFAULT_OVERRIDE_PENDING state
  * is used to indicate that the user PHY cfg default override is initialized
  * and the PHY has not been configured with the default override settings. The
  * state is set here, and cleared in ice_configure_phy the first time the PHY is
@@ -1790,7 +1790,7 @@ static void ice_init_phy_cfg_dflt_override(struct ice_port_info *pi)
 	cfg->link_fec_opt = ldo->fec_options;
 	phy->curr_user_fec_req = ICE_FEC_AUTO;
 
-	set_bit(__ICE_LINK_DEFAULT_OVERRIDE_PENDING, pf->state);
+	set_bit(ICE_LINK_DEFAULT_OVERRIDE_PENDING, pf->state);
 }
 
 /**
@@ -1861,7 +1861,7 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 
 out:
 	phy->curr_user_speed_req = ICE_AQ_LINK_SPEED_M;
-	set_bit(__ICE_PHY_INIT_COMPLETE, pf->state);
+	set_bit(ICE_PHY_INIT_COMPLETE, pf->state);
 err_out:
 	kfree(pcaps);
 	return err;
@@ -1944,7 +1944,7 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	/* Speed - If default override pending, use curr_user_phy_cfg set in
 	 * ice_init_phy_user_cfg_ldo.
 	 */
-	if (test_and_clear_bit(__ICE_LINK_DEFAULT_OVERRIDE_PENDING,
+	if (test_and_clear_bit(ICE_LINK_DEFAULT_OVERRIDE_PENDING,
 			       vsi->back->state)) {
 		cfg->phy_type_low = pi->phy.curr_user_phy_cfg.phy_type_low;
 		cfg->phy_type_high = pi->phy.curr_user_phy_cfg.phy_type_high;
@@ -2023,7 +2023,7 @@ static void ice_check_media_subtask(struct ice_pf *pf)
 		return;
 
 	if (pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE) {
-		if (!test_bit(__ICE_PHY_INIT_COMPLETE, pf->state))
+		if (!test_bit(ICE_PHY_INIT_COMPLETE, pf->state))
 			ice_init_phy_user_cfg(pi);
 
 		/* PHY settings are reset on media insertion, reconfigure
@@ -2059,8 +2059,8 @@ static void ice_service_task(struct work_struct *work)
 
 	/* bail if a reset/recovery cycle is pending or rebuild failed */
 	if (ice_is_reset_in_progress(pf->state) ||
-	    test_bit(__ICE_SUSPENDED, pf->state) ||
-	    test_bit(__ICE_NEEDS_RESTART, pf->state)) {
+	    test_bit(ICE_SUSPENDED, pf->state) ||
+	    test_bit(ICE_NEEDS_RESTART, pf->state)) {
 		ice_service_task_complete(pf);
 		return;
 	}
@@ -2081,7 +2081,8 @@ static void ice_service_task(struct work_struct *work)
 	ice_clean_mailboxq_subtask(pf);
 	ice_sync_arfs_fltrs(pf);
 	ice_flush_fdir_ctx(pf);
-	/* Clear __ICE_SERVICE_SCHED flag to allow scheduling next event */
+
+	/* Clear ICE_SERVICE_SCHED flag to allow scheduling next event */
 	ice_service_task_complete(pf);
 
 	/* If the tasks have taken longer than one service timer period
@@ -2089,11 +2090,11 @@ static void ice_service_task(struct work_struct *work)
 	 * schedule the service task now.
 	 */
 	if (time_after(jiffies, (start_time + pf->serv_tmr_period)) ||
-	    test_bit(__ICE_MDD_EVENT_PENDING, pf->state) ||
-	    test_bit(__ICE_VFLR_EVENT_PENDING, pf->state) ||
-	    test_bit(__ICE_MAILBOXQ_EVENT_PENDING, pf->state) ||
-	    test_bit(__ICE_FD_VF_FLUSH_CTX, pf->state) ||
-	    test_bit(__ICE_ADMINQ_EVENT_PENDING, pf->state))
+	    test_bit(ICE_MDD_EVENT_PENDING, pf->state) ||
+	    test_bit(ICE_VFLR_EVENT_PENDING, pf->state) ||
+	    test_bit(ICE_MAILBOXQ_EVENT_PENDING, pf->state) ||
+	    test_bit(ICE_FD_VF_FLUSH_CTX, pf->state) ||
+	    test_bit(ICE_ADMINQ_EVENT_PENDING, pf->state))
 		mod_timer(&pf->serv_tmr, jiffies);
 }
 
@@ -2123,7 +2124,7 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset)
 	struct device *dev = ice_pf_to_dev(pf);
 
 	/* bail out if earlier reset has failed */
-	if (test_bit(__ICE_RESET_FAILED, pf->state)) {
+	if (test_bit(ICE_RESET_FAILED, pf->state)) {
 		dev_dbg(dev, "earlier reset has failed\n");
 		return -EIO;
 	}
@@ -2135,13 +2136,13 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset)
 
 	switch (reset) {
 	case ICE_RESET_PFR:
-		set_bit(__ICE_PFR_REQ, pf->state);
+		set_bit(ICE_PFR_REQ, pf->state);
 		break;
 	case ICE_RESET_CORER:
-		set_bit(__ICE_CORER_REQ, pf->state);
+		set_bit(ICE_CORER_REQ, pf->state);
 		break;
 	case ICE_RESET_GLOBR:
-		set_bit(__ICE_GLOBR_REQ, pf->state);
+		set_bit(ICE_GLOBR_REQ, pf->state);
 		break;
 	default:
 		return -EINVAL;
@@ -2645,8 +2646,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 	u32 oicr, ena_mask;
 
 	dev = ice_pf_to_dev(pf);
-	set_bit(__ICE_ADMINQ_EVENT_PENDING, pf->state);
-	set_bit(__ICE_MAILBOXQ_EVENT_PENDING, pf->state);
+	set_bit(ICE_ADMINQ_EVENT_PENDING, pf->state);
+	set_bit(ICE_MAILBOXQ_EVENT_PENDING, pf->state);
 
 	oicr = rd32(hw, PFINT_OICR);
 	ena_mask = rd32(hw, PFINT_OICR_ENA);
@@ -2658,18 +2659,18 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 	if (oicr & PFINT_OICR_MAL_DETECT_M) {
 		ena_mask &= ~PFINT_OICR_MAL_DETECT_M;
-		set_bit(__ICE_MDD_EVENT_PENDING, pf->state);
+		set_bit(ICE_MDD_EVENT_PENDING, pf->state);
 	}
 	if (oicr & PFINT_OICR_VFLR_M) {
 		/* disable any further VFLR event notifications */
-		if (test_bit(__ICE_VF_RESETS_DISABLED, pf->state)) {
+		if (test_bit(ICE_VF_RESETS_DISABLED, pf->state)) {
 			u32 reg = rd32(hw, PFINT_OICR_ENA);
 
 			reg &= ~PFINT_OICR_VFLR_M;
 			wr32(hw, PFINT_OICR_ENA, reg);
 		} else {
 			ena_mask &= ~PFINT_OICR_VFLR_M;
-			set_bit(__ICE_VFLR_EVENT_PENDING, pf->state);
+			set_bit(ICE_VFLR_EVENT_PENDING, pf->state);
 		}
 	}
 
@@ -2695,13 +2696,13 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		 * We also make note of which reset happened so that peer
 		 * devices/drivers can be informed.
 		 */
-		if (!test_and_set_bit(__ICE_RESET_OICR_RECV, pf->state)) {
+		if (!test_and_set_bit(ICE_RESET_OICR_RECV, pf->state)) {
 			if (reset == ICE_RESET_CORER)
-				set_bit(__ICE_CORER_RECV, pf->state);
+				set_bit(ICE_CORER_RECV, pf->state);
 			else if (reset == ICE_RESET_GLOBR)
-				set_bit(__ICE_GLOBR_RECV, pf->state);
+				set_bit(ICE_GLOBR_RECV, pf->state);
 			else
-				set_bit(__ICE_EMPR_RECV, pf->state);
+				set_bit(ICE_EMPR_RECV, pf->state);
 
 			/* There are couple of different bits at play here.
 			 * hw->reset_ongoing indicates whether the hardware is
@@ -2709,7 +2710,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 			 * is received and set back to false after the driver
 			 * has determined that the hardware is out of reset.
 			 *
-			 * __ICE_RESET_OICR_RECV in pf->state indicates
+			 * ICE_RESET_OICR_RECV in pf->state indicates
 			 * that a post reset rebuild is required before the
 			 * driver is operational again. This is set above.
 			 *
@@ -2737,7 +2738,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		if (oicr & (PFINT_OICR_PE_CRITERR_M |
 			    PFINT_OICR_PCI_EXCEPTION_M |
 			    PFINT_OICR_ECC_ERR_M)) {
-			set_bit(__ICE_PFR_REQ, pf->state);
+			set_bit(ICE_PFR_REQ, pf->state);
 			ice_service_task_schedule(pf);
 		}
 	}
@@ -3353,7 +3354,7 @@ static int ice_init_pf(struct ice_pf *pf)
 	timer_setup(&pf->serv_tmr, ice_service_timer, 0);
 	pf->serv_tmr_period = HZ;
 	INIT_WORK(&pf->serv_task, ice_service_task);
-	clear_bit(__ICE_SERVICE_SCHED, pf->state);
+	clear_bit(ICE_SERVICE_SCHED, pf->state);
 
 	mutex_init(&pf->avail_q_mutex);
 	pf->avail_txqs = bitmap_zalloc(pf->max_pf_txqs, GFP_KERNEL);
@@ -3562,7 +3563,7 @@ int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx)
 	if (!new_rx && !new_tx)
 		return -EINVAL;
 
-	while (test_and_set_bit(__ICE_CFG_BUSY, pf->state)) {
+	while (test_and_set_bit(ICE_CFG_BUSY, pf->state)) {
 		timeout--;
 		if (!timeout)
 			return -EBUSY;
@@ -3586,7 +3587,7 @@ int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx)
 	ice_pf_dcb_recfg(pf);
 	ice_vsi_open(vsi);
 done:
-	clear_bit(__ICE_CFG_BUSY, pf->state);
+	clear_bit(ICE_CFG_BUSY, pf->state);
 	return err;
 }
 
@@ -4052,9 +4053,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	pf->pdev = pdev;
 	pci_set_drvdata(pdev, pf);
-	set_bit(__ICE_DOWN, pf->state);
+	set_bit(ICE_DOWN, pf->state);
 	/* Disable service task until DOWN bit is cleared */
-	set_bit(__ICE_SERVICE_DIS, pf->state);
+	set_bit(ICE_SERVICE_DIS, pf->state);
 
 	hw = &pf->hw;
 	hw->hw_addr = pcim_iomap_table(pdev)[ICE_BAR0];
@@ -4195,7 +4196,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_alloc_sw_unroll;
 	}
 
-	clear_bit(__ICE_SERVICE_DIS, pf->state);
+	clear_bit(ICE_SERVICE_DIS, pf->state);
 
 	/* tell the firmware we are up */
 	err = ice_send_version(pf);
@@ -4289,16 +4290,15 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_netdev_reg;
 
 	/* ready to go, so clear down state bit */
-	clear_bit(__ICE_DOWN, pf->state);
-
+	clear_bit(ICE_DOWN, pf->state);
 	return 0;
 
 err_netdev_reg:
 err_send_version_unroll:
 	ice_vsi_release_all(pf);
 err_alloc_sw_unroll:
-	set_bit(__ICE_SERVICE_DIS, pf->state);
-	set_bit(__ICE_DOWN, pf->state);
+	set_bit(ICE_SERVICE_DIS, pf->state);
+	set_bit(ICE_DOWN, pf->state);
 	devm_kfree(dev, pf->first_sw);
 err_msix_misc_unroll:
 	ice_free_irq_msix_misc(pf);
@@ -4399,11 +4399,11 @@ static void ice_remove(struct pci_dev *pdev)
 	}
 
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
-		set_bit(__ICE_VF_RESETS_DISABLED, pf->state);
+		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
 		ice_free_vfs(pf);
 	}
 
-	set_bit(__ICE_DOWN, pf->state);
+	set_bit(ICE_DOWN, pf->state);
 	ice_service_task_stop(pf);
 
 	ice_aq_cancel_waiting_tasks(pf);
@@ -4564,13 +4564,13 @@ static int __maybe_unused ice_suspend(struct device *dev)
 	disabled = ice_service_task_stop(pf);
 
 	/* Already suspended?, then there is nothing to do */
-	if (test_and_set_bit(__ICE_SUSPENDED, pf->state)) {
+	if (test_and_set_bit(ICE_SUSPENDED, pf->state)) {
 		if (!disabled)
 			ice_service_task_restart(pf);
 		return 0;
 	}
 
-	if (test_bit(__ICE_DOWN, pf->state) ||
+	if (test_bit(ICE_DOWN, pf->state) ||
 	    ice_is_reset_in_progress(pf->state)) {
 		dev_err(dev, "can't suspend device in reset or already down\n");
 		if (!disabled)
@@ -4641,16 +4641,16 @@ static int __maybe_unused ice_resume(struct device *dev)
 	if (ret)
 		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
 
-	clear_bit(__ICE_DOWN, pf->state);
+	clear_bit(ICE_DOWN, pf->state);
 	/* Now perform PF reset and rebuild */
 	reset_type = ICE_RESET_PFR;
 	/* re-enable service task for reset, but allow reset to schedule it */
-	clear_bit(__ICE_SERVICE_DIS, pf->state);
+	clear_bit(ICE_SERVICE_DIS, pf->state);
 
 	if (ice_schedule_reset(pf, reset_type))
 		dev_err(dev, "Reset during resume failed.\n");
 
-	clear_bit(__ICE_SUSPENDED, pf->state);
+	clear_bit(ICE_SUSPENDED, pf->state);
 	ice_service_task_restart(pf);
 
 	/* Restart the service task */
@@ -4679,11 +4679,11 @@ ice_pci_err_detected(struct pci_dev *pdev, pci_channel_state_t err)
 		return PCI_ERS_RESULT_DISCONNECT;
 	}
 
-	if (!test_bit(__ICE_SUSPENDED, pf->state)) {
+	if (!test_bit(ICE_SUSPENDED, pf->state)) {
 		ice_service_task_stop(pf);
 
-		if (!test_bit(__ICE_PREPARED_FOR_RESET, pf->state)) {
-			set_bit(__ICE_PFR_REQ, pf->state);
+		if (!test_bit(ICE_PREPARED_FOR_RESET, pf->state)) {
+			set_bit(ICE_PFR_REQ, pf->state);
 			ice_prepare_for_reset(pf);
 		}
 	}
@@ -4750,7 +4750,7 @@ static void ice_pci_err_resume(struct pci_dev *pdev)
 		return;
 	}
 
-	if (test_bit(__ICE_SUSPENDED, pf->state)) {
+	if (test_bit(ICE_SUSPENDED, pf->state)) {
 		dev_dbg(&pdev->dev, "%s failed to resume normal operations!\n",
 			__func__);
 		return;
@@ -4771,11 +4771,11 @@ static void ice_pci_err_reset_prepare(struct pci_dev *pdev)
 {
 	struct ice_pf *pf = pci_get_drvdata(pdev);
 
-	if (!test_bit(__ICE_SUSPENDED, pf->state)) {
+	if (!test_bit(ICE_SUSPENDED, pf->state)) {
 		ice_service_task_stop(pf);
 
-		if (!test_bit(__ICE_PREPARED_FOR_RESET, pf->state)) {
-			set_bit(__ICE_PFR_REQ, pf->state);
+		if (!test_bit(ICE_PREPARED_FOR_RESET, pf->state)) {
+			set_bit(ICE_PFR_REQ, pf->state);
 			ice_prepare_for_reset(pf);
 		}
 	}
@@ -4922,7 +4922,7 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 		return 0;
 	}
 
-	if (test_bit(__ICE_DOWN, pf->state) ||
+	if (test_bit(ICE_DOWN, pf->state) ||
 	    ice_is_reset_in_progress(pf->state)) {
 		netdev_err(netdev, "can't set mac %pM. device not ready\n",
 			   mac);
@@ -5409,7 +5409,7 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
 	struct ice_pf *pf = vsi->back;
 
 	if (test_bit(ICE_VSI_DOWN, vsi->state) ||
-	    test_bit(__ICE_CFG_BUSY, pf->state))
+	    test_bit(ICE_CFG_BUSY, pf->state))
 		return;
 
 	/* get stats as recorded by Tx/Rx rings */
@@ -5661,7 +5661,7 @@ int ice_down(struct ice_vsi *vsi)
 	int i, tx_err, rx_err, link_err = 0;
 
 	/* Caller of this function is expected to set the
-	 * vsi->state __ICE_DOWN bit
+	 * vsi->state ICE_DOWN bit
 	 */
 	if (vsi->netdev) {
 		netif_carrier_off(vsi->netdev);
@@ -6009,7 +6009,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	enum ice_status ret;
 	int err;
 
-	if (test_bit(__ICE_DOWN, pf->state))
+	if (test_bit(ICE_DOWN, pf->state))
 		goto clear_recovery;
 
 	dev_dbg(dev, "rebuilding PF after reset_type=%d\n", reset_type);
@@ -6125,7 +6125,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	ice_replay_post(hw);
 
 	/* if we get here, reset flow is successful */
-	clear_bit(__ICE_RESET_FAILED, pf->state);
+	clear_bit(ICE_RESET_FAILED, pf->state);
 	return;
 
 err_vsi_rebuild:
@@ -6133,10 +6133,10 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	ice_sched_cleanup_all(hw);
 err_init_ctrlq:
 	ice_shutdown_all_ctrlq(hw);
-	set_bit(__ICE_RESET_FAILED, pf->state);
+	set_bit(ICE_RESET_FAILED, pf->state);
 clear_recovery:
 	/* set this bit in PF state to control service task scheduling */
-	set_bit(__ICE_NEEDS_RESTART, pf->state);
+	set_bit(ICE_NEEDS_RESTART, pf->state);
 	dev_err(dev, "Rebuild failed, unload and reload driver\n");
 }
 
@@ -6658,19 +6658,19 @@ static void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 
 	switch (pf->tx_timeout_recovery_level) {
 	case 1:
-		set_bit(__ICE_PFR_REQ, pf->state);
+		set_bit(ICE_PFR_REQ, pf->state);
 		break;
 	case 2:
-		set_bit(__ICE_CORER_REQ, pf->state);
+		set_bit(ICE_CORER_REQ, pf->state);
 		break;
 	case 3:
-		set_bit(__ICE_GLOBR_REQ, pf->state);
+		set_bit(ICE_GLOBR_REQ, pf->state);
 		break;
 	default:
 		netdev_err(netdev, "tx_timeout recovery unsuccessful, device is in unrecoverable state.\n");
-		set_bit(__ICE_DOWN, pf->state);
+		set_bit(ICE_DOWN, pf->state);
 		set_bit(ICE_VSI_NEEDS_RESTART, vsi->state);
-		set_bit(__ICE_SERVICE_DIS, pf->state);
+		set_bit(ICE_SERVICE_DIS, pf->state);
 		break;
 	}
 
@@ -6720,7 +6720,7 @@ int ice_open_internal(struct net_device *netdev)
 	struct ice_port_info *pi;
 	int err;
 
-	if (test_bit(__ICE_NEEDS_RESTART, pf->state)) {
+	if (test_bit(ICE_NEEDS_RESTART, pf->state)) {
 		netdev_err(netdev, "driver needs to be unloaded and reloaded\n");
 		return -EIO;
 	}
@@ -6738,7 +6738,7 @@ int ice_open_internal(struct net_device *netdev)
 	/* Set PHY if there is media, otherwise, turn off PHY */
 	if (pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE) {
 		clear_bit(ICE_FLAG_NO_MEDIA, pf->flags);
-		if (!test_bit(__ICE_PHY_INIT_COMPLETE, pf->state)) {
+		if (!test_bit(ICE_PHY_INIT_COMPLETE, pf->state)) {
 			err = ice_init_phy_user_cfg(pi);
 			if (err) {
 				netdev_err(netdev, "Failed to initialize PHY settings, error %d\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 963c603b74d1..eb10ca79a42a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -1549,7 +1549,7 @@ static void ice_vf_fdir_timer(struct timer_list *t)
 	ctx_done->v_opcode = ctx_irq->v_opcode;
 	spin_unlock_irqrestore(&fdir->ctx_lock, flags);
 
-	set_bit(__ICE_FD_VF_FLUSH_CTX, pf->state);
+	set_bit(ICE_FD_VF_FLUSH_CTX, pf->state);
 	ice_service_task_schedule(pf);
 }
 
@@ -1597,7 +1597,7 @@ ice_vc_fdir_irq_handler(struct ice_vsi *ctrl_vsi,
 	if (!ret)
 		dev_err(dev, "VF %d: Unexpected inactive timer!\n", vf->vf_id);
 
-	set_bit(__ICE_FD_VF_FLUSH_CTX, pf->state);
+	set_bit(ICE_FD_VF_FLUSH_CTX, pf->state);
 	ice_service_task_schedule(pf);
 }
 
@@ -1848,7 +1848,7 @@ void ice_flush_fdir_ctx(struct ice_pf *pf)
 {
 	int i;
 
-	if (!test_and_clear_bit(__ICE_FD_VF_FLUSH_CTX, pf->state))
+	if (!test_and_clear_bit(ICE_FD_VF_FLUSH_CTX, pf->state))
 		return;
 
 	ice_for_each_vf(pf, i) {
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 07294cd936e3..2d4b39a9f788 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -341,7 +341,7 @@ void ice_free_vfs(struct ice_pf *pf)
 	if (!pf->vf)
 		return;
 
-	while (test_and_set_bit(__ICE_VF_DIS, pf->state))
+	while (test_and_set_bit(ICE_VF_DIS, pf->state))
 		usleep_range(1000, 2000);
 
 	/* Disable IOV before freeing resources. This lets any VF drivers
@@ -400,7 +400,7 @@ void ice_free_vfs(struct ice_pf *pf)
 		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs, ICE_MAX_VF_COUNT, i))
 			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n", i);
 
-	clear_bit(__ICE_VF_DIS, pf->state);
+	clear_bit(ICE_VF_DIS, pf->state);
 	clear_bit(ICE_FLAG_SRIOV_ENA, pf->flags);
 }
 
@@ -1247,7 +1247,7 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n", i);
 
 	/* If VFs have been disabled, there is no need to reset */
-	if (test_and_set_bit(__ICE_VF_DIS, pf->state))
+	if (test_and_set_bit(ICE_VF_DIS, pf->state))
 		return false;
 
 	/* Begin reset on all VFs at once */
@@ -1306,7 +1306,7 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	}
 
 	ice_flush(hw);
-	clear_bit(__ICE_VF_DIS, pf->state);
+	clear_bit(ICE_VF_DIS, pf->state);
 
 	return true;
 }
@@ -1326,7 +1326,7 @@ static bool ice_is_vf_disabled(struct ice_vf *vf)
 	 * means something else is resetting the VF, so we shouldn't continue.
 	 * Otherwise, set disable VF state bit for actual reset, and continue.
 	 */
-	return (test_bit(__ICE_VF_DIS, pf->state) ||
+	return (test_bit(ICE_VF_DIS, pf->state) ||
 		test_bit(ICE_VF_STATE_DIS, vf->vf_states));
 }
 
@@ -1351,7 +1351,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 
 	dev = ice_pf_to_dev(pf);
 
-	if (test_bit(__ICE_VF_RESETS_DISABLED, pf->state)) {
+	if (test_bit(ICE_VF_RESETS_DISABLED, pf->state)) {
 		dev_dbg(dev, "Trying to reset VF %d, but all VF resets are disabled\n",
 			vf->vf_id);
 		return true;
@@ -1656,7 +1656,7 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	/* Disable global interrupt 0 so we don't try to handle the VFLR. */
 	wr32(hw, GLINT_DYN_CTL(pf->oicr_idx),
 	     ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S);
-	set_bit(__ICE_OICR_INTR_DIS, pf->state);
+	set_bit(ICE_OICR_INTR_DIS, pf->state);
 	ice_flush(hw);
 
 	ret = pci_enable_sriov(pf->pdev, num_vfs);
@@ -1684,7 +1684,7 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 		goto err_unroll_sriov;
 	}
 
-	clear_bit(__ICE_VF_DIS, pf->state);
+	clear_bit(ICE_VF_DIS, pf->state);
 	return 0;
 
 err_unroll_sriov:
@@ -1696,7 +1696,7 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 err_unroll_intr:
 	/* rearm interrupts here */
 	ice_irq_dynamic_ena(hw, NULL, NULL);
-	clear_bit(__ICE_OICR_INTR_DIS, pf->state);
+	clear_bit(ICE_OICR_INTR_DIS, pf->state);
 	return ret;
 }
 
@@ -1822,7 +1822,7 @@ void ice_process_vflr_event(struct ice_pf *pf)
 	unsigned int vf_id;
 	u32 reg;
 
-	if (!test_and_clear_bit(__ICE_VFLR_EVENT_PENDING, pf->state) ||
+	if (!test_and_clear_bit(ICE_VFLR_EVENT_PENDING, pf->state) ||
 	    !pf->num_alloc_vfs)
 		return;
 
@@ -4335,7 +4335,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
 	int i;
 
 	/* check that there are pending MDD events to print */
-	if (!test_and_clear_bit(__ICE_MDD_VF_PRINT_PENDING, pf->state))
+	if (!test_and_clear_bit(ICE_MDD_VF_PRINT_PENDING, pf->state))
 		return;
 
 	/* VF MDD event logs are rate limited to one second intervals */
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index a5b49cad15a6..fdc44b3f8e26 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -159,7 +159,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	rx_ring = vsi->rx_rings[q_idx];
 	q_vector = rx_ring->q_vector;
 
-	while (test_and_set_bit(__ICE_CFG_BUSY, vsi->state)) {
+	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state)) {
 		timeout--;
 		if (!timeout)
 			return -EBUSY;
@@ -249,7 +249,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	if (err)
 		goto free_buf;
 
-	clear_bit(__ICE_CFG_BUSY, vsi->state);
+	clear_bit(ICE_CFG_BUSY, vsi->state);
 	ice_qvec_toggle_napi(vsi, q_vector, true);
 	ice_qvec_ena_irq(vsi, q_vector);
 
@@ -765,7 +765,7 @@ ice_xsk_wakeup(struct net_device *netdev, u32 queue_id,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_ring *ring;
 
-	if (test_bit(__ICE_DOWN, vsi->state))
+	if (test_bit(ICE_DOWN, vsi->state))
 		return -ENETDOWN;
 
 	if (!ice_is_xdp_ena_vsi(vsi))
-- 
2.20.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

