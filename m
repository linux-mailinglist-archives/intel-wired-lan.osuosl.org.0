Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159D3649DCB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 12:33:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14134402FE;
	Mon, 12 Dec 2022 11:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14134402FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670844787;
	bh=3Jmjy595Z5v4F8bL3oJo6MqltINhXHanMQjNZTzKjFY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CacNRb46p3zIUkxifVZ0rpu0e9BiKaFrM1bP5QbZgIE7kCpmoryimqJw0m6D8zk/1
	 QsnxCX6pUWYGvzVYWkIvw20/udYCijpkjMR0ceeV4yiYiwlGh27uYfllUTO4F06ZHr
	 fl6SidC5BdNscQH2s37aQPSGA99fxprgeAWbI3SpngUPwB302Dzyj6/sQA2ys4U1ex
	 ZZke8XdqCOrXtbbbB3cD0tDA2+kSoXUMhZEq9klf8gktxanu7KIHxkxysRbeJ4SfQR
	 HahyRUEXRmCemwbILXbZKSK8Ymykl9xHs7b6alUbqN3f+mAs/iPpJpfvg+wllxLcbe
	 ZN0AgfoFwrovQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xCKYawYnxdwV; Mon, 12 Dec 2022 11:33:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A605405AF;
	Mon, 12 Dec 2022 11:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A605405AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3C581BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E2EB813B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E2EB813B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L8ufP1nBzmBk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 11:32:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80E3481353
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80E3481353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:32:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="317861454"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="317861454"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 03:32:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="893459719"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="893459719"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga006.fm.intel.com with ESMTP; 12 Dec 2022 03:32:55 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Dec 2022 12:16:38 +0100
Message-Id: <20221212111645.1198680-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
References: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670844779; x=1702380779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mqi2OHuSPRAcGS5qn801+zTuJ/queMoUZHtLnNe0JVM=;
 b=dPISZniUNvWzokgVaeMVGaxO1+/N+wrOs5Vrw5g1R4gJFXvEYZXZvATt
 tNCFXcg/0WQDnw/u/PFokd4FfBQvrM/X6vreLzLPOLfAVNGuFhklws/Or
 MzxMV1wyOwL98pE6kPLPXaHrWb/b59YJcBRxTBWNWbPWiyrh13FyMD78c
 TBdDU7l7broM7W5vCaKxZomd6mWBMLeXCTGhq4TiYcwAJioIxCP0cW8hn
 FFA4NbkKOiZvSGJXNVTYt4RAGriZ7KMsMek64lLsu7n6rjwSeOk46ffq5
 HzyhITgGV1CQWeOglgoFi6RiRZgulhl+mwNlMyfQFNNS9MPkgfkQB1g25
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dPISZniU
Subject: [Intel-wired-lan] [PATCH net-next v1 03/10] ice: cleanup in VSI
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
Cc: mustafa.ismail@intel.com, leon@kernel.org, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com, kuba@kernel.org,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
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
index f461a1b3c100..70a9609f1b80 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -354,7 +354,6 @@ struct ice_vsi {
 
 	struct ice_vf *vf;		/* VF associated with this VSI */
 
-	u16 ethtype;			/* Ethernet protocol for pause frame */
 	u16 num_gfltr;
 	u16 num_bfltr;
 
@@ -891,7 +890,7 @@ ice_fetch_u64_stats_per_ring(struct u64_stats_sync *syncp,
 int ice_up(struct ice_vsi *vsi);
 int ice_down(struct ice_vsi *vsi);
 int ice_down_up(struct ice_vsi *vsi);
-int ice_vsi_cfg(struct ice_vsi *vsi);
+int ice_vsi_cfg_lan(struct ice_vsi *vsi);
 struct ice_vsi *ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi);
 int ice_vsi_determine_xdp_res(struct ice_vsi *vsi);
 int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 626480677cc1..63b7568a9d72 100644
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
index 703f73e54561..a7225de4a1e1 100644
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
@@ -2668,12 +2668,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
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
@@ -2682,17 +2677,13 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 
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
@@ -2857,7 +2848,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 unroll_vsi_alloc:
 	if (vsi_type == ICE_VSI_VF)
 		ice_enable_lag(pf->lag);
-	ice_vsi_clear(vsi);
+	ice_vsi_free(vsi);
 
 	return NULL;
 }
@@ -3181,9 +3172,6 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
 		ice_rss_clean(vsi);
 
-	/* Disable VSI and free resources */
-	if (vsi->type != ICE_VSI_LB)
-		ice_vsi_dis_irq(vsi);
 	ice_vsi_close(vsi);
 
 	/* SR-IOV determines needed MSIX resources all at once instead of per
@@ -3199,18 +3187,12 @@ int ice_vsi_release(struct ice_vsi *vsi)
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
@@ -3247,7 +3229,7 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	 * for ex: during rmmod.
 	 */
 	if (!ice_is_reset_in_progress(pf->state))
-		ice_vsi_clear(vsi);
+		ice_vsi_free(vsi);
 
 	return 0;
 }
@@ -3601,6 +3583,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 			ret = -EIO;
 			goto err_vectors;
 		} else {
+			kfree(coalesce);
 			return ice_schedule_reset(pf, ICE_RESET_PFR);
 		}
 	}
@@ -3621,7 +3604,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	kfree(coalesce);
 	return ret;
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
index 59a88c00b91d..bfab9a713533 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6206,12 +6206,12 @@ static int ice_vsi_vlan_setup(struct ice_vsi *vsi)
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
 
@@ -6428,7 +6428,7 @@ int ice_up(struct ice_vsi *vsi)
 {
 	int err;
 
-	err = ice_vsi_cfg(vsi);
+	err = ice_vsi_cfg_lan(vsi);
 	if (!err)
 		err = ice_up_complete(vsi);
 
@@ -6996,7 +6996,7 @@ int ice_vsi_open_ctrl(struct ice_vsi *vsi)
 	if (err)
 		goto err_setup_rx;
 
-	err = ice_vsi_cfg(vsi);
+	err = ice_vsi_cfg_lan(vsi);
 	if (err)
 		goto err_setup_rx;
 
@@ -7050,7 +7050,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
 	if (err)
 		goto err_setup_rx;
 
-	err = ice_vsi_cfg(vsi);
+	err = ice_vsi_cfg_lan(vsi);
 	if (err)
 		goto err_setup_rx;
 
@@ -8484,7 +8484,7 @@ static void ice_remove_q_channels(struct ice_vsi *vsi, bool rem_fltr)
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
