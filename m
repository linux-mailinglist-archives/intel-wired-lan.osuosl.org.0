Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B2E405D58
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 21:29:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C441440672;
	Thu,  9 Sep 2021 19:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EiDM1rbn36Is; Thu,  9 Sep 2021 19:29:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3E704066F;
	Thu,  9 Sep 2021 19:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 551A21BF314
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 19:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AE8F60B3A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 19:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mCqABZ0CA5Av for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 19:29:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 739D3605A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 19:29:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="200412980"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="200412980"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 12:29:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="431239419"
Received: from bcreeley-st-desk.jf.intel.com ([10.166.244.126])
 by orsmga006.jf.intel.com with ESMTP; 09 Sep 2021 12:29:43 -0700
From: Brett Creeley <brett.creeley@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Sep 2021 12:27:08 -0700
Message-Id: <20210909192709.26269-1-brett.creeley@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: Fix not stopping Tx queues for
 VFs
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
Cc: przemyslawx.patynowski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When a VF is removed and/or reset its Tx queues need to be
stopped from the PF. This is done by calling the ice_dis_vf_qs()
function, which calls ice_vsi_stop_lan_tx_rings(). Currently
ice_dis_vf_qs() is protected by the VF state bit ICE_VF_STATE_QS_ENA.
Unfortunately, this is causing the Tx queues to not be disabled in some
cases and when the VF tries to re-enable/reconfigure its Tx queues over
virtchnl the op is failing. This is because a VF can be reset and/or
removed before the ICE_VF_STATE_QS_ENA bit is set, but the Tx queues
were already configured via ice_vsi_cfg_single_txq() in the
VIRTCHNL_OP_CONFIG_VSI_QUEUES op. However, the ICE_VF_STATE_QS_ENA bit
is set on a successful VIRTCHNL_OP_ENABLE_QUEUES, which will always
happen after the VIRTCHNL_OP_CONFIG_VSI_QUEUES op.

This was causing the following error message when loading the ice
driver, creating VFs, and modifying VF trust in an endless loop:

[35274.192484] ice 0000:88:00.0: Failed to set LAN Tx queue context, error: ICE_ERR_PARAM
[35274.193074] ice 0000:88:00.0: VF 0 failed opcode 6, retval: -5
[35274.193640] iavf 0000:88:01.0: PF returned error -5 (IAVF_ERR_PARAM) to our request 6

Fix this by always calling ice_dis_vf_qs() and silencing the error
message in ice_vsi_stop_tx_ring() since the calling code ignores the
return anyway. Also, all other places that call ice_vsi_stop_tx_ring()
catch the error, so this doesn't affect those flows since there was no
change to the values the function returns.

Other solutions were considered (i.e. tracking which VF queues had been
"started/configured" in VIRTCHNL_OP_CONFIG_VSI_QUEUES, but it seemed
more complicated than it was worth. This solution also brings in the
chance for other unexpected conditions due to invalid state bit checks.
So, the proposed solution seemed like the best option since there is no
harm in failing to stop Tx queues that were never started.

This issue can be seen using the following commands:

for i in {0..50}; do
        rmmod ice
        modprobe ice

        sleep 1

        echo 1 > /sys/class/net/ens785f0/device/sriov_numvfs
        echo 1 > /sys/class/net/ens785f1/device/sriov_numvfs

        ip link set ens785f1 vf 0 trust on
        ip link set ens785f0 vf 0 trust on

        sleep 2

        echo 0 > /sys/class/net/ens785f0/device/sriov_numvfs
        echo 0 > /sys/class/net/ens785f1/device/sriov_numvfs
        sleep 1
        echo 1 > /sys/class/net/ens785f0/device/sriov_numvfs
        echo 1 > /sys/class/net/ens785f1/device/sriov_numvfs

        ip link set ens785f1 vf 0 trust on
        ip link set ens785f0 vf 0 trust on
done

Fixes: 77ca27c ("ice: add support for virtchnl_queue_select.[tx|rx]_queues bitmap")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c        | 2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 6 ++----
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index c36057efc7ae..f74610442bda 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -909,7 +909,7 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 	} else if (status == ICE_ERR_DOES_NOT_EXIST) {
 		dev_dbg(ice_pf_to_dev(vsi->back), "LAN Tx queues do not exist, nothing to disable\n");
 	} else if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "Failed to disable LAN Tx queues, error: %s\n",
+		dev_dbg(ice_pf_to_dev(vsi->back), "Failed to disable LAN Tx queues, error: %s\n",
 			ice_stat_str(status));
 		return -ENODEV;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 28b6013de425..e74ca81409b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -634,8 +634,7 @@ void ice_free_vfs(struct ice_pf *pf)
 
 	/* Avoid wait time by stopping all VFs at the same time */
 	ice_for_each_vf(pf, i)
-		if (test_bit(ICE_VF_STATE_QS_ENA, pf->vf[i].vf_states))
-			ice_dis_vf_qs(&pf->vf[i]);
+		ice_dis_vf_qs(&pf->vf[i]);
 
 	tmp = pf->num_alloc_vfs;
 	pf->num_qps_per_vf = 0;
@@ -1646,8 +1645,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 
 	vsi = ice_get_vf_vsi(vf);
 
-	if (test_bit(ICE_VF_STATE_QS_ENA, vf->vf_states))
-		ice_dis_vf_qs(vf);
+	ice_dis_vf_qs(vf);
 
 	/* Call Disable LAN Tx queue AQ whether or not queues are
 	 * enabled. This is needed for successful completion of VFR.
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
