Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D8F7A4182
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:48:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83FEF414B5;
	Mon, 18 Sep 2023 06:48:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83FEF414B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695019699;
	bh=C9evENiyRe6nHN9hV8DNdngJl84bXSXQwbASgGOufZI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=emyKweEiSi0L8XYXFfI3zdVvP+sDtHHn2jdpH/c8AUudjQ89LXteyMIKPqHA2Nt5S
	 eNCe3A1WgFC+yf2iSAIB3jRbb8EPkNMsJ1+0kcBkFA8Il1d5zzL8ZdbS6RGAAmwhvt
	 ny8w/YDKQNr9BtDiJiE9oiavci8QtS0swL9JfY1cGZEuInybzXs/Pv4hSGxV+9HhLX
	 Rvo8mh9oJxHZ54Oz6ae3Xj5W3pbkzB1a6vGcy3e+qlJQb3VjIN118YwjXJp7AXyxW0
	 vuWsQQW+k0H10NwTAaUu3dJSAtH301mhZUP8sy2WaPBoSXl9Q7zEN/pC4h2UNlOiov
	 oY1YrRzetBODQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id deMrzdzynV6D; Mon, 18 Sep 2023 06:48:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54D87400FE;
	Mon, 18 Sep 2023 06:48:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54D87400FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2883D1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 022B84148F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 022B84148F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PEcPsTLMbXur for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:48:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 397F0411A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 397F0411A1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="369907533"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="369907533"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:48:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="869452226"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="869452226"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga004.jf.intel.com with ESMTP; 17 Sep 2023 23:48:08 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 08:24:03 +0200
Message-ID: <20230918062406.90359-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
References: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695019691; x=1726555691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zS+y0FyeVWrZrn0/adWo6USEQX/rFF5uUQ6hstGMtzs=;
 b=cA3kNn9VuS+eleSwv++Ja2AAvgCD1hYfOnbAq1D7Nm2koqS0uCHCY0Jw
 fhdxtiFoaKHu9QV0+GPmuWv14+2QlSxUaR1cLrvotNBshawUKVKNuptPl
 H8z3iwRwnobElatDq+EpntcLipx0kwZ2+ELnkqar8+XHOgJXXgkLIDz/e
 gEP4UK9xp1p3pk0BDMaGCJVqMKhthG1XxCV1XWiereilE8h5lWmJR/pkb
 ROp9Rv1Rs8zvLlOV9/cUO1DxNWiuxn1jGR6hNEJbrB3M74YjNryzRUByL
 9X2zUFVmuGa///BMs+o3u6qe2U39D9qDGBaF+3GU0l6xJxWscgrKjL/4C
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cA3kNn9V
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/4] ice: implement num_msix
 field per VF
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
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Store the amount of MSI-X per VF instead of storing it in pf struct. It
is used to calculate number of q_vectors (and queues) for VF VSI.

This is necessary because with follow up changes the number of MSI-X can
be different between VFs. Use it instead of using pf->vf_msix value in
all cases.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c      |  2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 13 +++++++++----
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  4 +++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  2 +-
 4 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 8da025f59999..c1e0f84146f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -229,7 +229,7 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
 		 * of queues vectors, subtract 1 (ICE_NONQ_VECS_VF) from the
 		 * original vector count
 		 */
-		vsi->num_q_vectors = pf->vfs.num_msix_per - ICE_NONQ_VECS_VF;
+		vsi->num_q_vectors = vf->num_msix - ICE_NONQ_VECS_VF;
 		break;
 	case ICE_VSI_CTRL:
 		vsi->alloc_txq = 1;
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 4ae59c59e22b..d345f5d8635b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -64,7 +64,7 @@ static void ice_free_vf_res(struct ice_vf *vf)
 		vf->num_mac = 0;
 	}
 
-	last_vector_idx = vf->first_vector_idx + pf->vfs.num_msix_per - 1;
+	last_vector_idx = vf->first_vector_idx + vf->num_msix - 1;
 
 	/* clear VF MDD event information */
 	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
@@ -102,7 +102,7 @@ static void ice_dis_vf_mappings(struct ice_vf *vf)
 	wr32(hw, VPINT_ALLOC_PCI(vf->vf_id), 0);
 
 	first = vf->first_vector_idx;
-	last = first + pf->vfs.num_msix_per - 1;
+	last = first + vf->num_msix - 1;
 	for (v = first; v <= last; v++) {
 		u32 reg;
 
@@ -280,12 +280,12 @@ static void ice_ena_vf_msix_mappings(struct ice_vf *vf)
 
 	hw = &pf->hw;
 	pf_based_first_msix = vf->first_vector_idx;
-	pf_based_last_msix = (pf_based_first_msix + pf->vfs.num_msix_per) - 1;
+	pf_based_last_msix = (pf_based_first_msix + vf->num_msix) - 1;
 
 	device_based_first_msix = pf_based_first_msix +
 		pf->hw.func_caps.common_cap.msix_vector_first_id;
 	device_based_last_msix =
-		(device_based_first_msix + pf->vfs.num_msix_per) - 1;
+		(device_based_first_msix + vf->num_msix) - 1;
 	device_based_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
 
 	reg = (((device_based_first_msix << VPINT_ALLOC_FIRST_S) &
@@ -825,6 +825,11 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
 
 		pci_dev_get(vfdev);
 
+		/* set default number of MSI-X */
+		vf->num_msix = pf->vfs.num_msix_per;
+		vf->num_vf_qs = pf->vfs.num_qps_per;
+		ice_vc_set_default_allowlist(vf);
+
 		hash_add_rcu(vfs->table, &vf->entry, vf_id);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 628396aa4a04..93c774f2f437 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -72,7 +72,7 @@ struct ice_vfs {
 	struct mutex table_lock;	/* Lock for protecting the hash table */
 	u16 num_supported;		/* max supported VFs on this PF */
 	u16 num_qps_per;		/* number of queue pairs per VF */
-	u16 num_msix_per;		/* number of MSI-X vectors per VF */
+	u16 num_msix_per;		/* default MSI-X vectors per VF */
 	unsigned long last_printed_mdd_jiffies;	/* MDD message rate limit */
 };
 
@@ -136,6 +136,8 @@ struct ice_vf {
 
 	/* devlink port data */
 	struct devlink_port devlink_port;
+
+	u16 num_msix;			/* num of MSI-X configured on this VF */
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index cad237dd8894..33086c39869c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -501,7 +501,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	vfres->num_vsis = 1;
 	/* Tx and Rx queue are equal for VF */
 	vfres->num_queue_pairs = vsi->num_txq;
-	vfres->max_vectors = vf->pf->vfs.num_msix_per;
+	vfres->max_vectors = vf->num_msix;
 	vfres->rss_key_size = ICE_VSIQF_HKEY_ARRAY_SIZE;
 	vfres->rss_lut_size = ICE_LUT_VSI_SIZE;
 	vfres->max_mtu = ice_vc_get_max_frame_size(vf);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
