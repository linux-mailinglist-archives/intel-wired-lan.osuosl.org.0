Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 113FA32A95A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:26:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB91983AD5;
	Tue,  2 Mar 2021 18:25:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oi9U_feoiIaX; Tue,  2 Mar 2021 18:25:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A9FB83AA2;
	Tue,  2 Mar 2021 18:25:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 245911BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 80B02606DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtjvT5RqO9fS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C1130606E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
IronPort-SDR: mzQOTSRQ3MgCLKbtNvj0Ft4WexXk7JugWY+asXjdbDLCDHYdL+26AS7KoU6VFCCekF5rlvzHZE
 qS9f+5z4lQFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="186263195"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="186263195"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:25:18 -0800
IronPort-SDR: uU0qkWNPKyFWlweQIpY38/8/FquCpKFFdDGgKzr/vaYgT755Tc202fs/vVMU5mOC8skFoEO5NB
 DiZTkYvjRRIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="434915059"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2021 10:25:18 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:15:41 -0800
Message-Id: <20210302181545.51822-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S56 09/13] ice: Add new VSI states to
 track netdev alloc/registration
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

Add two new VSI states, one to track if a netdev for the VSI has been
allocated and the other to track if the netdev has been registered.
Call unregister_netdev/free_netdev only when the corresponding state
bits are set.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  2 ++
 drivers/net/ethernet/intel/ice/ice_lib.c  | 21 +++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_main.c |  5 +++++
 3 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 89ffc96702fa..79652b72c38b 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -238,6 +238,8 @@ enum ice_pf_state {
 enum ice_vsi_state {
 	ICE_VSI_DOWN,
 	ICE_VSI_NEEDS_RESTART,
+	ICE_VSI_NETDEV_ALLOCD,
+	ICE_VSI_NETDEV_REGISTERED,
 	ICE_VSI_UMAC_FLTR_CHANGED,
 	ICE_VSI_MMAC_FLTR_CHANGED,
 	ICE_VSI_VLAN_FLTR_CHANGED,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index ddcbd5bfd058..4136ab9b2950 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2775,11 +2775,14 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	 * PF that is running the work queue items currently. This is done to
 	 * avoid check_flush_dependency() warning on this wq
 	 */
-	if (vsi->netdev && !ice_is_reset_in_progress(pf->state)) {
+	if (vsi->netdev && !ice_is_reset_in_progress(pf->state) &&
+	    (test_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state))) {
 		unregister_netdev(vsi->netdev);
-		ice_devlink_destroy_port(vsi);
+		clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
 	}
 
+	ice_devlink_destroy_port(vsi);
+
 	if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
 		ice_rss_clean(vsi);
 
@@ -2834,10 +2837,16 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	ice_vsi_delete(vsi);
 	ice_vsi_free_q_vectors(vsi);
 
-	/* make sure unregister_netdev() was called by checking ICE_DOWN */
-	if (vsi->netdev && test_bit(ICE_VSI_DOWN, vsi->state)) {
-		free_netdev(vsi->netdev);
-		vsi->netdev = NULL;
+	if (vsi->netdev) {
+		if (test_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state)) {
+			unregister_netdev(vsi->netdev);
+			clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
+		}
+		if (test_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state)) {
+			free_netdev(vsi->netdev);
+			vsi->netdev = NULL;
+			clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
+		}
 	}
 
 	if (vsi->type == ICE_VSI_VF &&
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1018b6da7362..4f35a4de33ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2997,6 +2997,7 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	if (!netdev)
 		return -ENOMEM;
 
+	set_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
 	vsi->netdev = netdev;
 	np = netdev_priv(netdev);
 	np->vsi = vsi;
@@ -3221,6 +3222,7 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 	if (vsi) {
 		ice_napi_del(vsi);
 		if (vsi->netdev) {
+			clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
 			free_netdev(vsi->netdev);
 			vsi->netdev = NULL;
 		}
@@ -3990,6 +3992,7 @@ static int ice_register_netdev(struct ice_pf *pf)
 	if (err)
 		goto err_register_netdev;
 
+	set_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
 	netif_carrier_off(vsi->netdev);
 	netif_tx_stop_all_queues(vsi->netdev);
 	err = ice_devlink_create_port(vsi);
@@ -4001,9 +4004,11 @@ static int ice_register_netdev(struct ice_pf *pf)
 	return 0;
 err_devlink_create:
 	unregister_netdev(vsi->netdev);
+	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
 err_register_netdev:
 	free_netdev(vsi->netdev);
 	vsi->netdev = NULL;
+	clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
 	return err;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
