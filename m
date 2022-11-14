Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E21F36280E6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 14:12:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C17081991;
	Mon, 14 Nov 2022 13:12:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C17081991
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668431542;
	bh=TUyrs16X/YXzRGMLDs9T0v6PoXM7kj6AR+kJRVHjLpE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jF08Da89huIp8FlaP1sVi23QuqYP/Dhu2vjSqXY8sf+W530RZqe7aAPSA88l1xb43
	 fEPcob+APxJ2c4t453dTqC1zDC1pRUzZdlhh0j61mdfRmYiD4fymja5FGhW5yi4i1d
	 U6gDWEEhX5piLfRHd+ylF7ClwCslmcOYaU4Tv4gjQ3bS35sOzUvaiGpMoJo3pwOrXm
	 OQWxAoAXK0vctQX0jU5xMBkmaVVh/eWBPdFi2Zc3my3sJZ53omAPjodpy16z84jE+a
	 25J582oGyT6G9UZ3jaJTJkJO2Lv2Ey7YqNbcgiQkSVsIeV9UJJJax+Bjge23mjEz6C
	 icMjS/bqMUbvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2DTk-Z2E-qrK; Mon, 14 Nov 2022 13:12:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A179817D3;
	Mon, 14 Nov 2022 13:12:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A179817D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC3F21BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8808960DCA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8808960DCA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IBQIttW5MNJW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 13:12:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BD9C60DDF
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BD9C60DDF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="310672424"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310672424"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 05:12:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="616305917"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="616305917"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2022 05:12:01 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, edumazet@google.com
Date: Mon, 14 Nov 2022 13:57:45 +0100
Message-Id: <20221114125755.13659-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668431530; x=1699967530;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0I4KNigSToVod2GIqxEI96OLu9b4/Oo3Es5Hq22nUBo=;
 b=i5aKH8POIamuTQ8enLHYfCBOXkgZcd6gEUBu0ls2J3Br00ShWvz9R+h6
 H9ltiBun/dBV6WunbZXR1J4i9U1L50SzsG8t9RBk63TXxn4FiqX2PjMwv
 +VRgiGmiK6iHW6IW7KAv+rK9hNRz2YO/pKVimswnRdRwgOoJTOILyJfqL
 kVOSf+rVey2odHJLfR2qtRs6s0B+zNnXJ+EWpJwdm6GE8aKIA5s38jyRq
 56sI3IkXpMmGyVDNuB1vmT1OEnOcO8XJnMg9Fll6HZNapwcX+eUxHIKYe
 +rC+cuIbj6Eyy84e75C9e/uuuaZ+uoFkEUXbYxH8P4pUAKFutT/oefTzT
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i5aKH8PO
Subject: [Intel-wired-lan] [PATCH net-next 03/13] ice: cleanup in VSI
 config/deconfig code
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
Cc: mustafa.ismail@intel.com, leszek.kaliszczuk@intel.com, jiri@nvidia.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do few small cleanups:

1) Rename the function to reflect that it doesn't configure all things
related to VSI. ice_vsi_cfg_lan() better fits to what function is doing.

ice_vsi_cfg() can be use to name function that will configure whole VSI.

2) Remove unused ethtype field from VSI. There is no need to set
ethtype here, because it is never used.

3) Remove unnecessary check for ICE_VSI_CHNL. There is check for
ICE_VSI_CHNL in ice_vsi_get_qs, so there is no need to check it before
calling the function.

4) Simplify ice_vsi_alloc() call. There is no need to check the type of
VSI before calling ice_vsi_alloc(). For ICE_VSI_CHNL vf is always NULL
(ice_vsi_setup() is called with vf=NULL).
For ICE_VSI_VF or ICE_VSI_CTRL ch is always NULL and for other VSI types
ch and vf are always NULL.

5) Remove unnecessary call to ice_vsi_dis_irq(). ice_vsi_dis_irq() will
be called in ice_vsi_close() flow (ice_vsi_close() -> ice_vsi_down() ->
ice_vsi_dis_irq()). Remove unnecessary call.

6) Don't remove specific filters in release. All hw filters are removed
in ice_fltr_remove_alli(), which is always called in VSI release flow.
There is no need to remove only ethertype filters before calling
ice_fltr_remove_all().

7) Rename ice_vsi_clear() to ice_vsi_free(). As ice_vsi_clear() only
free memory allocated in ice_vsi_alloc() rename it to ice_vsi_free()
which better shows what function is doing.

8) Free coalesce param in rebuild. There is potential memory leak if
configuration of VSI lan fails. Free coalesce to avoid it.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  3 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     | 51 +++++++-------------
 drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +-
 drivers/net/ethernet/intel/ice/ice_main.c    | 12 ++---
 5 files changed, 26 insertions(+), 44 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index c0079e88cda7..5c5b188fb3e9 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -347,7 +347,6 @@ struct ice_vsi {
 
 	struct ice_vf *vf;		/* VF associated with this VSI */
 
-	u16 ethtype;			/* Ethernet protocol for pause frame */
 	u16 num_gfltr;
 	u16 num_bfltr;
 
@@ -882,7 +881,7 @@ ice_fetch_u64_stats_per_ring(struct u64_stats_sync *syncp,
 int ice_up(struct ice_vsi *vsi);
 int ice_down(struct ice_vsi *vsi);
 int ice_down_up(struct ice_vsi *vsi);
-int ice_vsi_cfg(struct ice_vsi *vsi);
+int ice_vsi_cfg_lan(struct ice_vsi *vsi);
 struct ice_vsi *ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi);
 int ice_vsi_determine_xdp_res(struct ice_vsi *vsi);
 int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f71a7521c7bd..1dfce48cfdc2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -656,7 +656,7 @@ static int ice_lbtest_prepare_rings(struct ice_vsi *vsi)
 	if (status)
 		goto err_setup_rx_ring;
 
-	status = ice_vsi_cfg(vsi);
+	status = ice_vsi_cfg_lan(vsi);
 	if (status)
 		goto err_setup_rx_ring;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7276badfa19e..42203a0efcac 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -348,7 +348,7 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
 }
 
 /**
- * ice_vsi_clear - clean up and deallocate the provided VSI
+ * ice_vsi_free - clean up and deallocate the provided VSI
  * @vsi: pointer to VSI being cleared
  *
  * This deallocates the VSI's queue resources, removes it from the PF's
@@ -356,7 +356,7 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
  *
  * Returns 0 on success, negative on failure
  */
-int ice_vsi_clear(struct ice_vsi *vsi)
+int ice_vsi_free(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = NULL;
 	struct device *dev;
@@ -2516,12 +2516,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	struct ice_vsi *vsi;
 	int ret, i;
 
-	if (vsi_type == ICE_VSI_CHNL)
-		vsi = ice_vsi_alloc(pf, vsi_type, ch, NULL);
-	else if (vsi_type == ICE_VSI_VF || vsi_type == ICE_VSI_CTRL)
-		vsi = ice_vsi_alloc(pf, vsi_type, NULL, vf);
-	else
-		vsi = ice_vsi_alloc(pf, vsi_type, NULL, NULL);
+	vsi = ice_vsi_alloc(pf, vsi_type, ch, vf);
 
 	if (!vsi) {
 		dev_err(dev, "could not allocate VSI\n");
@@ -2530,17 +2525,13 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 
 	vsi->port_info = pi;
 	vsi->vsw = pf->first_sw;
-	if (vsi->type == ICE_VSI_PF)
-		vsi->ethtype = ETH_P_PAUSE;
 
 	ice_alloc_fd_res(vsi);
 
-	if (vsi_type != ICE_VSI_CHNL) {
-		if (ice_vsi_get_qs(vsi)) {
-			dev_err(dev, "Failed to allocate queues. vsi->idx = %d\n",
-				vsi->idx);
-			goto unroll_vsi_alloc;
-		}
+	if (ice_vsi_get_qs(vsi)) {
+		dev_err(dev, "Failed to allocate queues. vsi->idx = %d\n",
+			vsi->idx);
+		goto unroll_vsi_alloc;
 	}
 
 	/* set RSS capabilities */
@@ -2692,7 +2683,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 unroll_vsi_alloc:
 	if (vsi_type == ICE_VSI_VF)
 		ice_enable_lag(pf->lag);
-	ice_vsi_clear(vsi);
+	ice_vsi_free(vsi);
 
 	return NULL;
 }
@@ -3016,9 +3007,6 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
 		ice_rss_clean(vsi);
 
-	/* Disable VSI and free resources */
-	if (vsi->type != ICE_VSI_LB)
-		ice_vsi_dis_irq(vsi);
 	ice_vsi_close(vsi);
 
 	/* SR-IOV determines needed MSIX resources all at once instead of per
@@ -3034,18 +3022,12 @@ int ice_vsi_release(struct ice_vsi *vsi)
 		pf->num_avail_sw_msix += vsi->num_q_vectors;
 	}
 
-	if (!ice_is_safe_mode(pf)) {
-		if (vsi->type == ICE_VSI_PF) {
-			ice_fltr_remove_eth(vsi, ETH_P_PAUSE, ICE_FLTR_TX,
-					    ICE_DROP_PACKET);
-			ice_cfg_sw_lldp(vsi, true, false);
-			/* The Rx rule will only exist to remove if the LLDP FW
-			 * engine is currently stopped
-			 */
-			if (!test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
-				ice_cfg_sw_lldp(vsi, false, false);
-		}
-	}
+	/* The Rx rule will only exist to remove if the LLDP FW
+	 * engine is currently stopped
+	 */
+	if (!ice_is_safe_mode(pf) && vsi->type == ICE_VSI_PF &&
+	    !test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
+		ice_cfg_sw_lldp(vsi, false, false);
 
 	if (ice_is_vsi_dflt_vsi(vsi))
 		ice_clear_dflt_vsi(vsi);
@@ -3085,7 +3067,7 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	 * for ex: during rmmod.
 	 */
 	if (!ice_is_reset_in_progress(pf->state))
-		ice_vsi_clear(vsi);
+		ice_vsi_free(vsi);
 
 	return 0;
 }
@@ -3384,6 +3366,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 			ret = -EIO;
 			goto err_vectors;
 		} else {
+			kfree(coalesce);
 			return ice_schedule_reset(pf, ICE_RESET_PFR);
 		}
 	}
@@ -3402,7 +3385,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 		vsi->netdev = NULL;
 	}
 err_vsi:
-	ice_vsi_clear(vsi);
+	ice_vsi_free(vsi);
 	set_bit(ICE_RESET_FAILED, pf->state);
 	kfree(coalesce);
 	return ret;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index dcdf69a693e9..6203114b805c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -42,7 +42,7 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
 int ice_set_link(struct ice_vsi *vsi, bool ena);
 
 void ice_vsi_delete(struct ice_vsi *vsi);
-int ice_vsi_clear(struct ice_vsi *vsi);
+int ice_vsi_free(struct ice_vsi *vsi);
 
 int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d5bd56a213ae..d39ceb3a3b72 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6091,12 +6091,12 @@ static int ice_vsi_vlan_setup(struct ice_vsi *vsi)
 }
 
 /**
- * ice_vsi_cfg - Setup the VSI
+ * ice_vsi_cfg_lan - Setup the VSI lan related config
  * @vsi: the VSI being configured
  *
  * Return 0 on success and negative value on error
  */
-int ice_vsi_cfg(struct ice_vsi *vsi)
+int ice_vsi_cfg_lan(struct ice_vsi *vsi)
 {
 	int err;
 
@@ -6314,7 +6314,7 @@ int ice_up(struct ice_vsi *vsi)
 {
 	int err;
 
-	err = ice_vsi_cfg(vsi);
+	err = ice_vsi_cfg_lan(vsi);
 	if (!err)
 		err = ice_up_complete(vsi);
 
@@ -6855,7 +6855,7 @@ int ice_vsi_open_ctrl(struct ice_vsi *vsi)
 	if (err)
 		goto err_setup_rx;
 
-	err = ice_vsi_cfg(vsi);
+	err = ice_vsi_cfg_lan(vsi);
 	if (err)
 		goto err_setup_rx;
 
@@ -6909,7 +6909,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
 	if (err)
 		goto err_setup_rx;
 
-	err = ice_vsi_cfg(vsi);
+	err = ice_vsi_cfg_lan(vsi);
 	if (err)
 		goto err_setup_rx;
 
@@ -8343,7 +8343,7 @@ static void ice_remove_q_channels(struct ice_vsi *vsi, bool rem_fltr)
 		ice_vsi_delete(ch->ch_vsi);
 
 		/* Delete VSI from PF and HW VSI arrays */
-		ice_vsi_clear(ch->ch_vsi);
+		ice_vsi_free(ch->ch_vsi);
 
 		/* free the channel */
 		kfree(ch);
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
