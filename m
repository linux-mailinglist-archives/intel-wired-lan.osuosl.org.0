Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0273E3E1F4A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 01:14:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90887402B8;
	Thu,  5 Aug 2021 23:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WRJPfcmqk1Vi; Thu,  5 Aug 2021 23:14:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02FD9400F1;
	Thu,  5 Aug 2021 23:14:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 455B11BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 23:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40262400C9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 23:14:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aqrHPOfYLMjb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Aug 2021 23:14:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1411840124
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 23:14:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="236245721"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="236245721"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 16:14:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="503591639"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga004.fm.intel.com with ESMTP; 05 Aug 2021 16:14:23 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 01:00:46 +0200
Message-Id: <20210805230046.28715-7-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210805230046.28715-1-maciej.fijalkowski@intel.com>
References: <20210805230046.28715-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 intel-next 6/6] ice: introduce XDP_TX
 fallback path
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
Cc: joamaki@gmail.com, alexandr.lobakin@intel.com, netdev@vger.kernel.org,
 toke@redhat.com, bjorn@kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Under rare circumstances there might be a situation where a requirement
of having XDP Tx queue per CPU could not be fulfilled and some of the Tx
resources have to be shared between CPUs. This yields a need for placing
accesses to xdp_ring inside a critical section protected by spinlock.
These accesses happen to be in the hot path, so let's introduce the
static branch that will be triggered from the control plane when driver
could not provide Tx queue dedicated for XDP on each CPU.

Currently, the design that has been picked is to allow any number of XDP
Tx queues that is at least half of a count of CPUs that platform has.
For lower number driver will bail out with a response to user that there
were not enough Tx resources that would allow configuring XDP. The
sharing of rings is signalled via static branch enablement which in turn
indicates that lock for xdp_ring accesses needs to be taken in hot path.

Approach based on static branch has no impact on performance of a
non-fallback path. One thing that is needed to be mentioned is a fact
that the static branch will act as a global driver switch, meaning that
if one PF got out of Tx resources, then other PFs that ice driver is
servicing will suffer. However, given the fact that HW that ice driver
is handling has 1024 Tx queues per each PF, this is currently an
unlikely scenario.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  3 ++
 drivers/net/ethernet/intel/ice/ice_lib.c      |  4 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 53 ++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 16 +++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  7 ++-
 6 files changed, 75 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2e15e097bc0f..4c7ff0e8c20f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -158,6 +158,8 @@
 
 #define ice_pf_to_dev(pf) (&((pf)->pdev->dev))
 
+DECLARE_STATIC_KEY_FALSE(ice_xdp_locking_key);
+
 struct ice_txq_meta {
 	u32 q_teid;	/* Tx-scheduler element identifier */
 	u16 q_id;	/* Entry in VSI's txq_map bitmap */
@@ -662,6 +664,7 @@ int ice_up(struct ice_vsi *vsi);
 int ice_down(struct ice_vsi *vsi);
 int ice_vsi_cfg(struct ice_vsi *vsi);
 struct ice_vsi *ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi);
+int ice_vsi_determine_xdp_res(struct ice_vsi *vsi);
 int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog);
 int ice_destroy_xdp_rings(struct ice_vsi *vsi);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d44a657384e6..09890a69b154 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3152,7 +3152,9 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 		ice_vsi_map_rings_to_vectors(vsi);
 		if (ice_is_xdp_ena_vsi(vsi)) {
-			vsi->num_xdp_txq = num_possible_cpus();
+			ret = ice_vsi_determine_xdp_res(vsi);
+			if (ret)
+				goto err_vectors;
 			ret = ice_prepare_xdp_rings(vsi, vsi->xdp_prog);
 			if (ret)
 				goto err_vectors;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9f7388698b82..7ab207cda62b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -42,6 +42,8 @@ MODULE_PARM_DESC(debug, "netif level (0=none,...,16=all)");
 #endif /* !CONFIG_DYNAMIC_DEBUG */
 
 static DEFINE_IDA(ice_aux_ida);
+DEFINE_STATIC_KEY_FALSE(ice_xdp_locking_key);
+EXPORT_SYMBOL(ice_xdp_locking_key);
 
 static struct workqueue_struct *ice_wq;
 static const struct net_device_ops ice_netdev_safe_mode_ops;
@@ -2383,10 +2385,15 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 			goto free_xdp_rings;
 		ice_set_ring_xdp(xdp_ring);
 		xdp_ring->xsk_pool = ice_tx_xsk_pool(xdp_ring);
+		spin_lock_init(&xdp_ring->tx_lock);
 	}
 
-	ice_for_each_rxq(vsi, i)
-		vsi->rx_rings[i]->xdp_ring = vsi->xdp_rings[i];
+	ice_for_each_rxq(vsi, i) {
+		if (static_key_enabled(&ice_xdp_locking_key))
+			vsi->rx_rings[i]->xdp_ring = vsi->xdp_rings[i % vsi->num_xdp_txq];
+		else
+			vsi->rx_rings[i]->xdp_ring = vsi->xdp_rings[i];
+	}
 
 	return 0;
 
@@ -2451,6 +2458,10 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
 	if (__ice_vsi_get_qs(&xdp_qs_cfg))
 		goto err_map_xdp;
 
+	if (static_key_enabled(&ice_xdp_locking_key))
+		netdev_warn(vsi->netdev,
+			    "Could not allocate one XDP Tx ring per CPU, XDP_TX/XDP_REDIRECT actions will be slower\n");
+
 	if (ice_xdp_alloc_setup_rings(vsi))
 		goto clear_xdp_rings;
 
@@ -2567,6 +2578,9 @@ int ice_destroy_xdp_rings(struct ice_vsi *vsi)
 	devm_kfree(ice_pf_to_dev(pf), vsi->xdp_rings);
 	vsi->xdp_rings = NULL;
 
+	if (static_key_enabled(&ice_xdp_locking_key))
+		static_branch_dec(&ice_xdp_locking_key);
+
 	if (ice_is_reset_in_progress(pf->state) || !vsi->q_vectors[0])
 		return 0;
 
@@ -2601,6 +2615,29 @@ static void ice_vsi_rx_napi_schedule(struct ice_vsi *vsi)
 	}
 }
 
+/**
+ * ice_vsi_determine_xdp_res - figure out how many Tx qs can XDP have
+ * @vsi: VSI to determine the count of XDP Tx qs
+ *
+ * returns 0 if Tx qs count is higher than at least half of CPU count,
+ * -ENOMEM otherwise
+ */
+int ice_vsi_determine_xdp_res(struct ice_vsi *vsi)
+{
+	u16 avail = ice_get_avail_txq_count(vsi->back);
+	u16 cpus = num_possible_cpus();
+
+	if (avail < cpus / 2)
+		return -ENOMEM;
+
+	vsi->num_xdp_txq = min_t(u16, avail, cpus);
+
+	if (vsi->num_xdp_txq < cpus)
+		static_branch_inc(&ice_xdp_locking_key);
+
+	return 0;
+}
+
 /**
  * ice_xdp_setup_prog - Add or remove XDP eBPF program
  * @vsi: VSI to setup XDP for
@@ -2630,10 +2667,14 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 	}
 
 	if (!ice_is_xdp_ena_vsi(vsi) && prog) {
-		vsi->num_xdp_txq = num_possible_cpus();
-		xdp_ring_err = ice_prepare_xdp_rings(vsi, prog);
-		if (xdp_ring_err)
-			NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Tx resources failed");
+		xdp_ring_err = ice_vsi_determine_xdp_res(vsi);
+		if (xdp_ring_err) {
+			NL_SET_ERR_MSG_MOD(extack, "Not enough Tx resources for XDP");
+		} else {
+			xdp_ring_err = ice_prepare_xdp_rings(vsi, prog);
+			if (xdp_ring_err)
+				NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Tx resources failed");
+		}
 	} else if (ice_is_xdp_ena_vsi(vsi) && !prog) {
 		xdp_ring_err = ice_destroy_xdp_rings(vsi);
 		if (xdp_ring_err)
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 7d8e4af65ca3..7714fc7bab2b 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -545,7 +545,11 @@ ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
 	case XDP_PASS:
 		return ICE_XDP_PASS;
 	case XDP_TX:
+		if (static_branch_unlikely(&ice_xdp_locking_key))
+			spin_lock(&xdp_ring->tx_lock);
 		err = ice_xmit_xdp_ring(xdp->data, xdp->data_end - xdp->data, xdp_ring);
+		if (static_branch_unlikely(&ice_xdp_locking_key))
+			spin_unlock(&xdp_ring->tx_lock);
 		if (err == ICE_XDP_CONSUMED)
 			goto out_failure;
 		return err;
@@ -597,7 +601,14 @@ ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
 		return -EINVAL;
 
-	xdp_ring = vsi->xdp_rings[queue_index];
+	if (static_branch_unlikely(&ice_xdp_locking_key)) {
+		queue_index %= vsi->num_xdp_txq;
+		xdp_ring = vsi->xdp_rings[queue_index];
+		spin_lock(&xdp_ring->tx_lock);
+	} else {
+		xdp_ring = vsi->xdp_rings[queue_index];
+	}
+
 	for (i = 0; i < n; i++) {
 		struct xdp_frame *xdpf = frames[i];
 		int err;
@@ -611,6 +622,9 @@ ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 	if (unlikely(flags & XDP_XMIT_FLUSH))
 		ice_xdp_ring_update_tail(xdp_ring);
 
+	if (static_branch_unlikely(&ice_xdp_locking_key))
+		spin_unlock(&xdp_ring->tx_lock);
+
 	return nxmit;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 8c30d92af4c9..7916d2adebeb 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -332,6 +332,7 @@ struct ice_tx_ring {
 	struct rcu_head rcu;		/* to avoid race on free */
 	DECLARE_BITMAP(xps_state, ICE_TX_NBITS);	/* XPS Config State */
 	struct ice_ptp_tx *tx_tstamps;
+	spinlock_t tx_lock;
 	u32 txq_teid;			/* Added Tx queue TEID */
 #define ICE_TX_FLAGS_RING_XDP		BIT(0)
 	u8 flags;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index f82e2789ad93..d18ea4612ba4 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -348,6 +348,11 @@ void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res)
 	if (xdp_res & ICE_XDP_REDIR)
 		xdp_do_flush_map();
 
-	if (xdp_res & ICE_XDP_TX)
+	if (xdp_res & ICE_XDP_TX) {
+		if (static_branch_unlikely(&ice_xdp_locking_key))
+			spin_lock(&xdp_ring->tx_lock);
 		ice_xdp_ring_update_tail(xdp_ring);
+		if (static_branch_unlikely(&ice_xdp_locking_key))
+			spin_unlock(&xdp_ring->tx_lock);
+	}
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
