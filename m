Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 018E58A85B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 16:15:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9165A812B2;
	Wed, 17 Apr 2024 14:15:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JhZzyePY55EY; Wed, 17 Apr 2024 14:15:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 489A180E61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713363350;
	bh=asauvpDLqdNEvjppUQ/CaHs52Ava0KjjLsMEeLGPvwM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FOijnAqZSyrWYH+IsAEdQywhjixwSn+ZpEaCpXOo7fAK9Rd7p4DY3Uj7sTTzX6oxw
	 ivsYY0+OlPKYAScf1qGGxkWufsrCAjKd3mPpPQJ3Zole/sdSxaDDMU1i+UEJIJ5Kh/
	 jsugUaJYFOGaF9J4227fghlI+9drF9enLawgkfhYLZNHGhTeyvueOksO2XLPwK26BG
	 NcCfVrQTSjjAxqES2bq6WU9qxI1rqs4cLmvZeoKNOEr2pBVrT/PDbi+KBa1cwfT73C
	 +vm2cJdsjftpyROtFVIeEobsrjqI4ksa9UInffxA1qOHA7OUwUzRBmPs6w01n+4xSC
	 TjfVOTxSU83dQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 489A180E61;
	Wed, 17 Apr 2024 14:15:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6FD21BF46D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 14:15:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3860608CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 14:15:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fzuau3Oak5ib for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 14:15:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A3FA260833
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3FA260833
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A3FA260833
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 14:15:46 +0000 (UTC)
X-CSE-ConnectionGUID: xIezHPSRRpCApkuYANH4+Q==
X-CSE-MsgGUID: tuV+BxixSd+/3x4F9WDgNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8737129"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8737129"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 07:15:46 -0700
X-CSE-ConnectionGUID: /Nyk7a9dSyWXVs5pNklC2Q==
X-CSE-MsgGUID: i/x4GDpPS7OB7kUgEWz+Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="60050424"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 17 Apr 2024 07:15:35 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Apr 2024 16:20:21 +0200
Message-ID: <20240417142028.2171-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713363347; x=1744899347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dvrwrf5NWb+t7xsukKkrqdRndZXps3O3vclOaiEKKjY=;
 b=gi3VlYJC6PC5ORCK9PtJVDjQ8q4l7HgC02JwMjD/lFn0n55VX1kdwcLa
 rMdSXbdbL6UPBKTvckMHK4k8jIAw0E9lWTpDzEBEMGYCebDDzU4wjTYKG
 uk47IMAeGpx/c0LCGRm4VB59MUOcdG11KB1Ks0QlR5UhrkrXiJrsl9YPV
 hEAOCSJlv6E5zdL4FQxMNxwmva6YDqeH9wboFXqJMu2nWcJPkkurItYMb
 qupA6Zmoj+e+D4V0Ac422xndLHVxgq2J+vHEjMyfJrTE37bDcnKs0h/uZ
 RkCGD1rBjzFFsXOM3cH2Doy705ZJ0t25zR+UuRwZ5e6bipoTXn1E7VvXr
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gi3VlYJC
Subject: [Intel-wired-lan] [iwl-next v4 1/8] ice: add new VSI type for
 subfunctions
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Add required plumbing for new VSI type dedicated to devlink subfunctions.
Make sure that the vsi is properly configured and destroyed. Also allow
loading XDP and AF_XDP sockets.

The first implementation of devlink subfunctions supports only one Tx/Rx
queue pair per given subfunction.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c    |  5 +++-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  1 +
 drivers/net/ethernet/intel/ice/ice_lib.c     | 25 ++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_main.c    |  7 ++++--
 drivers/net/ethernet/intel/ice/ice_type.h    |  1 +
 drivers/net/ethernet/intel/ice/ice_xsk.c     |  2 +-
 6 files changed, 35 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 687f6cb2b917..bf1a085c7087 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -330,6 +330,9 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
 		tlan_ctx->vmvf_num = hw->func_caps.vf_base_id + vsi->vf->vf_id;
 		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VF;
 		break;
+	case ICE_VSI_SF:
+		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
+		break;
 	default:
 		return;
 	}
@@ -526,7 +529,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 
 	ring->rx_buf_len = ring->vsi->rx_buf_len;
 
-	if (ring->vsi->type == ICE_VSI_PF) {
+	if (ring->vsi->type == ICE_VSI_PF || ring->vsi->type == ICE_VSI_SF) {
 		if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
 			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
 						 ring->q_index,
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index a94e7072b570..a7c510832824 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -187,6 +187,7 @@ void ice_vsi_set_dcb_tc_cfg(struct ice_vsi *vsi)
 		vsi->tc_cfg.numtc = ice_dcb_get_num_tc(cfg);
 		break;
 	case ICE_VSI_CHNL:
+	case ICE_VSI_SF:
 		vsi->tc_cfg.ena_tc = BIT(ice_get_first_droptc(vsi));
 		vsi->tc_cfg.numtc = 1;
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d06e7c82c433..06909bf3b517 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -20,6 +20,8 @@ const char *ice_vsi_type_str(enum ice_vsi_type vsi_type)
 		return "ICE_VSI_PF";
 	case ICE_VSI_VF:
 		return "ICE_VSI_VF";
+	case ICE_VSI_SF:
+		return "ICE_VSI_SF";
 	case ICE_VSI_CTRL:
 		return "ICE_VSI_CTRL";
 	case ICE_VSI_CHNL:
@@ -141,6 +143,7 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 {
 	switch (vsi->type) {
 	case ICE_VSI_PF:
+	case ICE_VSI_SF:
 	case ICE_VSI_CTRL:
 	case ICE_VSI_LB:
 		/* a user could change the values of num_[tr]x_desc using
@@ -207,6 +210,12 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
 					   max_t(int, vsi->alloc_rxq,
 						 vsi->alloc_txq));
 		break;
+	case ICE_VSI_SF:
+		vsi->alloc_txq = 1;
+		vsi->alloc_rxq = 1;
+		vsi->num_q_vectors = 1;
+		vsi->irq_dyn_alloc = true;
+		break;
 	case ICE_VSI_VF:
 		if (vf->num_req_qs)
 			vf->num_vf_qs = vf->num_req_qs;
@@ -566,6 +575,7 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
 
 	switch (vsi->type) {
 	case ICE_VSI_PF:
+	case ICE_VSI_SF:
 		/* Setup default MSIX irq handler for VSI */
 		vsi->irq_handler = ice_msix_clean_rings;
 		break;
@@ -894,6 +904,11 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
 					      max_rss_size);
 		vsi->rss_lut_type = ICE_LUT_PF;
 		break;
+	case ICE_VSI_SF:
+		vsi->rss_table_size = ICE_LUT_VSI_SIZE;
+		vsi->rss_size = min_t(u16, num_online_cpus(), max_rss_size);
+		vsi->rss_lut_type = ICE_LUT_VSI;
+		break;
 	case ICE_VSI_VF:
 		/* VF VSI will get a small RSS table.
 		 * For VSI_LUT, LUT size should be set to 64 bytes.
@@ -1141,6 +1156,7 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_PF;
 		break;
 	case ICE_VSI_VF:
+	case ICE_VSI_SF:
 		/* VF VSI will gets a small RSS table which is a VSI LUT type */
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
 		break;
@@ -1219,6 +1235,7 @@ static int ice_vsi_init(struct ice_vsi *vsi, u32 vsi_flags)
 	case ICE_VSI_PF:
 		ctxt->flags = ICE_AQ_VSI_TYPE_PF;
 		break;
+	case ICE_VSI_SF:
 	case ICE_VSI_CHNL:
 		ctxt->flags = ICE_AQ_VSI_TYPE_VMDQ2;
 		break;
@@ -2100,6 +2117,7 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
 	case ICE_VSI_CHNL:
 	case ICE_VSI_LB:
 	case ICE_VSI_PF:
+	case ICE_VSI_SF:
 		max_agg_nodes = ICE_MAX_PF_AGG_NODES;
 		agg_node_id_start = ICE_PF_AGG_NODE_ID_START;
 		agg_node_iter = &pf->pf_agg_node[0];
@@ -2271,6 +2289,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 
 	switch (vsi->type) {
 	case ICE_VSI_CTRL:
+	case ICE_VSI_SF:
 	case ICE_VSI_PF:
 		ret = ice_vsi_alloc_q_vectors(vsi);
 		if (ret)
@@ -2662,7 +2681,8 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
 
 	clear_bit(ICE_VSI_NEEDS_RESTART, vsi->state);
 
-	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
+	if (vsi->netdev && (vsi->type == ICE_VSI_PF ||
+			    vsi->type == ICE_VSI_SF)) {
 		if (netif_running(vsi->netdev)) {
 			if (!locked)
 				rtnl_lock();
@@ -2691,7 +2711,8 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 
 	set_bit(ICE_VSI_NEEDS_RESTART, vsi->state);
 
-	if (vsi->type == ICE_VSI_PF && vsi->netdev) {
+	if (vsi->netdev && (vsi->type == ICE_VSI_PF ||
+			    vsi->type == ICE_VSI_SF)) {
 		if (netif_running(vsi->netdev)) {
 			if (!locked)
 				rtnl_lock();
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9d3f6683339e..8a4d9029434f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2946,6 +2946,9 @@ int ice_vsi_determine_xdp_res(struct ice_vsi *vsi)
 	if (avail < cpus / 2)
 		return -ENOMEM;
 
+	if (vsi->type == ICE_VSI_SF)
+		avail = vsi->alloc_txq;
+
 	vsi->num_xdp_txq = min_t(u16, avail, cpus);
 
 	if (vsi->num_xdp_txq < cpus)
@@ -3061,8 +3064,8 @@ static int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 	struct ice_netdev_priv *np = netdev_priv(dev);
 	struct ice_vsi *vsi = np->vsi;
 
-	if (vsi->type != ICE_VSI_PF) {
-		NL_SET_ERR_MSG_MOD(xdp->extack, "XDP can be loaded only on PF VSI");
+	if (vsi->type != ICE_VSI_PF && vsi->type != ICE_VSI_SF) {
+		NL_SET_ERR_MSG_MOD(xdp->extack, "XDP can be loaded only on PF or SF VSI");
 		return -EINVAL;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f0796a93f428..cdb923c1664a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -150,6 +150,7 @@ enum ice_vsi_type {
 	ICE_VSI_CTRL = 3,	/* equates to ICE_VSI_PF with 1 queue pair */
 	ICE_VSI_CHNL = 4,
 	ICE_VSI_LB = 6,
+	ICE_VSI_SF = 9,
 };
 
 struct ice_link_status {
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index aa81d1162b81..64f4927efa29 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -288,7 +288,7 @@ ice_xsk_pool_enable(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 {
 	int err;
 
-	if (vsi->type != ICE_VSI_PF)
+	if (vsi->type != ICE_VSI_PF && vsi->type != ICE_VSI_SF)
 		return -EINVAL;
 
 	if (qid >= vsi->netdev->real_num_rx_queues ||
-- 
2.42.0

