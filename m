Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9278315CD57
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2020 22:32:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 493B921FA9;
	Thu, 13 Feb 2020 21:32:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AYqThWZLnSyu; Thu, 13 Feb 2020 21:32:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AFC6721F76;
	Thu, 13 Feb 2020 21:32:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 689C21BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 65C3E203F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ODYISvDjFVtr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2020 21:31:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id E692B215DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227382416"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 13 Feb 2020 13:31:51 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Feb 2020 13:31:26 -0800
Message-Id: <20200213213129.34023-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
References: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S39 v2 12/15] ice: add backslash-n to
 strings
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

There were several strings found without line feeds, fix
them by adding a line feed, as is typical.  Without this
lotsofmessagescanbejumbledtogether.

This patch has known checkpatch warnings from long lines
for the NL_* messages, because checkpatch doesn't know
how to ignore them.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c        |  3 +--
 drivers/net/ethernet/intel/ice/ice_ethtool.c     |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_main.c        | 12 ++++--------
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c         |  6 +++---
 5 files changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 54aa533f36d4..a19cd6f5436b 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -203,8 +203,7 @@ static void ice_cfg_itr_gran(struct ice_hw *hw)
  */
 static u16 ice_calc_q_handle(struct ice_vsi *vsi, struct ice_ring *ring, u8 tc)
 {
-	WARN_ONCE(ice_ring_is_xdp(ring) && tc,
-		  "XDP ring can't belong to TC other than 0");
+	WARN_ONCE(ice_ring_is_xdp(ring) && tc, "XDP ring can't belong to TC other than 0\n");
 
 	/* Idea here for calculation is that we subtract the number of queue
 	 * count from TC that ring belongs to from it's absolute queue index
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 135d5bfc6e11..ab37dddb225b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -673,7 +673,7 @@ static u64 ice_loopback_test(struct net_device *netdev)
 
 	test_vsi = ice_lb_vsi_setup(pf, pf->hw.port_info);
 	if (!test_vsi) {
-		netdev_err(netdev, "Failed to create a VSI for the loopback test");
+		netdev_err(netdev, "Failed to create a VSI for the loopback test\n");
 		return 1;
 	}
 
@@ -732,7 +732,7 @@ static u64 ice_loopback_test(struct net_device *netdev)
 	devm_kfree(dev, tx_frame);
 remove_mac_filters:
 	if (ice_remove_mac(&pf->hw, &tmp_list))
-		netdev_err(netdev, "Could not remove MAC filter for the test VSI");
+		netdev_err(netdev, "Could not remove MAC filter for the test VSI\n");
 free_mac_list:
 	ice_free_fltr_list(dev, &tmp_list);
 lbtest_mac_dis:
@@ -745,7 +745,7 @@ static u64 ice_loopback_test(struct net_device *netdev)
 lbtest_vsi_close:
 	test_vsi->netdev = NULL;
 	if (ice_vsi_release(test_vsi))
-		netdev_err(netdev, "Failed to remove the test VSI");
+		netdev_err(netdev, "Failed to remove the test VSI\n");
 
 	return ret;
 }
@@ -835,7 +835,7 @@ ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
 			int status = ice_open(netdev);
 
 			if (status) {
-				dev_err(dev, "Could not open device %s, err %d",
+				dev_err(dev, "Could not open device %s, err %d\n",
 					pf->int_name, status);
 			}
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index bbc428c4ec07..b695a65b2b3c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1930,8 +1930,7 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 	if (if_running && !test_and_set_bit(__ICE_DOWN, vsi->state)) {
 		ret = ice_down(vsi);
 		if (ret) {
-			NL_SET_ERR_MSG_MOD(extack,
-					   "Preparing device for XDP attach failed");
+			NL_SET_ERR_MSG_MOD(extack, "Preparing device for XDP attach failed");
 			return ret;
 		}
 	}
@@ -1940,13 +1939,11 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 		vsi->num_xdp_txq = vsi->alloc_txq;
 		xdp_ring_err = ice_prepare_xdp_rings(vsi, prog);
 		if (xdp_ring_err)
-			NL_SET_ERR_MSG_MOD(extack,
-					   "Setting up XDP Tx resources failed");
+			NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Tx resources failed");
 	} else if (ice_is_xdp_ena_vsi(vsi) && !prog) {
 		xdp_ring_err = ice_destroy_xdp_rings(vsi);
 		if (xdp_ring_err)
-			NL_SET_ERR_MSG_MOD(extack,
-					   "Freeing XDP Tx resources failed");
+			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Tx resources failed");
 	} else {
 		ice_vsi_assign_bpf_prog(vsi, prog);
 	}
@@ -1979,8 +1976,7 @@ static int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 	struct ice_vsi *vsi = np->vsi;
 
 	if (vsi->type != ICE_VSI_PF) {
-		NL_SET_ERR_MSG_MOD(xdp->extack,
-				   "XDP can be loaded only on PF VSI");
+		NL_SET_ERR_MSG_MOD(xdp->extack, "XDP can be loaded only on PF VSI");
 		return -EINVAL;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 1a9b374dac16..f9c295a6e778 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1993,7 +1993,7 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 
 	status = ice_update_vsi(&pf->hw, vf_vsi->idx, ctx, NULL);
 	if (status) {
-		dev_err(dev, "Failed to %sable spoofchk on VF %d VSI %d\n error %d",
+		dev_err(dev, "Failed to %sable spoofchk on VF %d VSI %d\n error %d\n",
 			ena ? "en" : "dis", vf->vf_id, vf_vsi->vsi_num, status);
 		ret = -EIO;
 		goto out;
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 3fd31ad73e0e..8279db15e870 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -457,7 +457,7 @@ int ice_xsk_umem_setup(struct ice_vsi *vsi, struct xdp_umem *umem, u16 qid)
 	if (if_running) {
 		ret = ice_qp_dis(vsi, qid);
 		if (ret) {
-			netdev_err(vsi->netdev, "ice_qp_dis error = %d", ret);
+			netdev_err(vsi->netdev, "ice_qp_dis error = %d\n", ret);
 			goto xsk_umem_if_up;
 		}
 	}
@@ -471,11 +471,11 @@ int ice_xsk_umem_setup(struct ice_vsi *vsi, struct xdp_umem *umem, u16 qid)
 		if (!ret && umem_present)
 			napi_schedule(&vsi->xdp_rings[qid]->q_vector->napi);
 		else if (ret)
-			netdev_err(vsi->netdev, "ice_qp_ena error = %d", ret);
+			netdev_err(vsi->netdev, "ice_qp_ena error = %d\n", ret);
 	}
 
 	if (umem_failure) {
-		netdev_err(vsi->netdev, "Could not %sable UMEM, error = %d",
+		netdev_err(vsi->netdev, "Could not %sable UMEM, error = %d\n",
 			   umem_present ? "en" : "dis", umem_failure);
 		return umem_failure;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
