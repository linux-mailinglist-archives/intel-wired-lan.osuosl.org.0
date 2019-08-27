Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBE79F566
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 23:43:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4585F88622;
	Tue, 27 Aug 2019 21:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xrsJ5hhiZRIL; Tue, 27 Aug 2019 21:43:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB4C988606;
	Tue, 27 Aug 2019 21:43:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B2F5E1BF989
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ABA3C86AB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZlsKq_-DWxX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 21:43:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 57CBC86AE2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 14:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="174703667"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 27 Aug 2019 14:42:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 27 Aug 2019 06:13:52 -0700
Message-Id: <20190827131354.12703-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190827131354.12703-1-anthony.l.nguyen@intel.com>
References: <20190827131354.12703-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S28 7/9] ice: Minor refactor in queue
 management
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

Remove q_left_tx and q_left_rx from the PF struct as these can be
obtained by calling ice_get_avail_txq_count and ice_get_avail_rxq_count
respectively.

The function ice_determine_q_usage is only setting num_lan_tx and
num_lan_rx in the PF structure, and these are later assigned to
vsi->alloc_txq and vsi->alloc_rxq respectively. This is an unnecessary
indirection, so remove ice_determine_q_usage and just assign values
for vsi->alloc_txq and vsi->alloc_rxq in ice_vsi_set_num_qs and use
these to set num_lan_tx and num_lan_rx respectively.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  2 -
 drivers/net/ethernet/intel/ice/ice_lib.c      | 75 ++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_lib.h      |  6 ++
 drivers/net/ethernet/intel/ice/ice_main.c     | 29 -------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 14 ++--
 5 files changed, 78 insertions(+), 48 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index c7f234688499..cd30fc87d7ea 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -368,8 +368,6 @@ struct ice_pf {
 	u32 num_lan_msix;	/* Total MSIX vectors for base driver */
 	u16 num_lan_tx;		/* num LAN Tx queues setup */
 	u16 num_lan_rx;		/* num LAN Rx queues setup */
-	u16 q_left_tx;		/* remaining num Tx queues left unclaimed */
-	u16 q_left_rx;		/* remaining num Rx queues left unclaimed */
 	u16 next_vsi;		/* Next free slot in pf->vsi[] - 0-based! */
 	u16 num_alloc_vsi;
 	u16 corer_count;	/* Core reset count */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 5f7c75c3b24b..3664d8ccada7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -5,6 +5,11 @@
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 
+#ifndef CONFIG_PCI_IOV
+static u16 ice_get_avail_txq_count(struct ice_pf *pf);
+static u16 ice_get_avail_rxq_count(struct ice_pf *pf);
+#endif /* !CONFIG_PCI_IOV */
+
 /**
  * ice_setup_rx_ctx - Configure a receive ring context
  * @ring: The Rx ring to configure
@@ -343,8 +348,20 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
 
 	switch (vsi->type) {
 	case ICE_VSI_PF:
-		vsi->alloc_txq = pf->num_lan_tx;
-		vsi->alloc_rxq = pf->num_lan_rx;
+		vsi->alloc_txq = min_t(int, ice_get_avail_txq_count(pf),
+				       num_online_cpus());
+
+		pf->num_lan_tx = vsi->alloc_txq;
+
+		/* only 1 Rx queue unless RSS is enabled */
+		if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags))
+			vsi->alloc_rxq = 1;
+		else
+			vsi->alloc_rxq = min_t(int, ice_get_avail_rxq_count(pf),
+					       num_online_cpus());
+
+		pf->num_lan_rx = vsi->alloc_rxq;
+
 		vsi->num_q_vectors = max_t(int, vsi->alloc_rxq, vsi->alloc_txq);
 		break;
 	case ICE_VSI_VF:
@@ -740,6 +757,51 @@ void ice_vsi_put_qs(struct ice_vsi *vsi)
 	mutex_unlock(&pf->avail_q_mutex);
 }
 
+/**
+ * ice_get_avail_q_count - Get count of queues in use
+ * @pf_qmap: bitmap to get queue use count from
+ * @lock: pointer to a mutex that protects access to pf_qmap
+ * @size: size of the bitmap
+ */
+static u16
+ice_get_avail_q_count(unsigned long *pf_qmap, struct mutex *lock, u16 size)
+{
+	u16 count = 0, bit;
+
+	mutex_lock(lock);
+	for_each_clear_bit(bit, pf_qmap, size)
+		count++;
+	mutex_unlock(lock);
+
+	return count;
+}
+
+/**
+ * ice_get_avail_txq_count - Get count of Tx queues in use
+ * @pf: pointer to an ice_pf instance
+ */
+#ifndef CONFIG_PCI_IOV
+static
+#endif /* !CONFIG_PCI_IOV */
+u16 ice_get_avail_txq_count(struct ice_pf *pf)
+{
+	return ice_get_avail_q_count(pf->avail_txqs, &pf->avail_q_mutex,
+				     pf->max_pf_txqs);
+}
+
+/**
+ * ice_get_avail_rxq_count - Get count of Rx queues in use
+ * @pf: pointer to an ice_pf instance
+ */
+#ifndef CONFIG_PCI_IOV
+static
+#endif /* !CONFIG_PCI_IOV */
+u16 ice_get_avail_rxq_count(struct ice_pf *pf)
+{
+	return ice_get_avail_q_count(pf->avail_rxqs, &pf->avail_q_mutex,
+				     pf->max_pf_rxqs);
+}
+
 /**
  * ice_rss_clean - Delete RSS related VSI structures that hold user inputs
  * @vsi: the VSI being removed
@@ -2577,9 +2639,6 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		if (ret)
 			goto unroll_vector_base;
 
-		pf->q_left_tx -= vsi->alloc_txq;
-		pf->q_left_rx -= vsi->alloc_rxq;
-
 		/* Do not exit if configuring RSS had an issue, at least
 		 * receive traffic on first queue. Hence no need to capture
 		 * return value
@@ -2643,8 +2702,6 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	ice_vsi_delete(vsi);
 unroll_get_qs:
 	ice_vsi_put_qs(vsi);
-	pf->q_left_tx += vsi->alloc_txq;
-	pf->q_left_rx += vsi->alloc_rxq;
 	ice_vsi_clear(vsi);
 
 	return NULL;
@@ -2992,8 +3049,6 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	ice_vsi_clear_rings(vsi);
 
 	ice_vsi_put_qs(vsi);
-	pf->q_left_tx += vsi->alloc_txq;
-	pf->q_left_rx += vsi->alloc_rxq;
 
 	/* retain SW VSI data structure since it is needed to unregister and
 	 * free VSI netdev when PF is not in reset recovery pending state,\
@@ -3102,8 +3157,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi)
 		if (ret)
 			goto err_vectors;
 
-		pf->q_left_tx -= vsi->alloc_txq;
-		pf->q_left_rx -= vsi->alloc_rxq;
 		break;
 	default:
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 7faf8db844f6..b645a757b5b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -104,6 +104,12 @@ void ice_trigger_sw_intr(struct ice_hw *hw, struct ice_q_vector *q_vector);
 
 void ice_vsi_put_qs(struct ice_vsi *vsi);
 
+#ifdef CONFIG_PCI_IOV
+u16 ice_get_avail_txq_count(struct ice_pf *pf);
+
+u16 ice_get_avail_rxq_count(struct ice_pf *pf);
+#endif /* CONFIG_PCI_IOV */
+
 #ifdef CONFIG_DCB
 void ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi);
 #endif /* CONFIG_DCB */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2d92d8591a8a..2a3f0ff5e326 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2192,38 +2192,11 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 		ice_vsi_free_q_vectors(vsi);
 		ice_vsi_delete(vsi);
 		ice_vsi_put_qs(vsi);
-		pf->q_left_tx += vsi->alloc_txq;
-		pf->q_left_rx += vsi->alloc_rxq;
 		ice_vsi_clear(vsi);
 	}
 	return status;
 }
 
-/**
- * ice_determine_q_usage - Calculate queue distribution
- * @pf: board private structure
- *
- * Return -ENOMEM if we don't get enough queues for all ports
- */
-static void ice_determine_q_usage(struct ice_pf *pf)
-{
-	u16 q_left_tx, q_left_rx;
-
-	q_left_tx = pf->hw.func_caps.common_cap.num_txq;
-	q_left_rx = pf->hw.func_caps.common_cap.num_rxq;
-
-	pf->num_lan_tx = min_t(int, q_left_tx, num_online_cpus());
-
-	/* only 1 Rx queue unless RSS is enabled */
-	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags))
-		pf->num_lan_rx = 1;
-	else
-		pf->num_lan_rx = min_t(int, q_left_rx, num_online_cpus());
-
-	pf->q_left_tx = q_left_tx - pf->num_lan_tx;
-	pf->q_left_rx = q_left_rx - pf->num_lan_rx;
-}
-
 /**
  * ice_deinit_pf - Unrolls initialziations done by ice_init_pf
  * @pf: board private structure to initialize
@@ -2541,8 +2514,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		}
 	}
 
-	ice_determine_q_usage(pf);
-
 	pf->num_alloc_vsi = hw->func_caps.guar_num_vsi;
 	if (!pf->num_alloc_vsi) {
 		err = -EIO;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 30e8e6166a59..64de05ccbc47 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -595,7 +595,8 @@ static int ice_alloc_vf_res(struct ice_vf *vf)
 	/* Update number of VF queues, in case VF had requested for queue
 	 * changes
 	 */
-	tx_rx_queue_left = min_t(int, pf->q_left_tx, pf->q_left_rx);
+	tx_rx_queue_left = min_t(int, ice_get_avail_txq_count(pf),
+				 ice_get_avail_rxq_count(pf));
 	tx_rx_queue_left += ICE_DFLT_QS_PER_VF;
 	if (vf->num_req_qs && vf->num_req_qs <= tx_rx_queue_left &&
 	    vf->num_req_qs != vf->num_vf_qs)
@@ -898,11 +899,11 @@ static int ice_check_avail_res(struct ice_pf *pf)
 	 * at runtime through Virtchnl, that is the reason we start by reserving
 	 * few queues.
 	 */
-	num_txq = ice_determine_res(pf, pf->q_left_tx, ICE_DFLT_QS_PER_VF,
-				    ICE_MIN_QS_PER_VF);
+	num_txq = ice_determine_res(pf, ice_get_avail_txq_count(pf),
+				    ICE_DFLT_QS_PER_VF, ICE_MIN_QS_PER_VF);
 
-	num_rxq = ice_determine_res(pf, pf->q_left_rx, ICE_DFLT_QS_PER_VF,
-				    ICE_MIN_QS_PER_VF);
+	num_rxq = ice_determine_res(pf, ice_get_avail_rxq_count(pf),
+				    ICE_DFLT_QS_PER_VF, ICE_MIN_QS_PER_VF);
 
 	if (!num_txq || !num_rxq)
 		return -EIO;
@@ -2511,7 +2512,8 @@ static int ice_vc_request_qs_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 	cur_queues = vf->num_vf_qs;
-	tx_rx_queue_left = min_t(u16, pf->q_left_tx, pf->q_left_rx);
+	tx_rx_queue_left = min_t(u16, ice_get_avail_txq_count(pf),
+				 ice_get_avail_rxq_count(pf));
 	max_allowed_vf_queues = tx_rx_queue_left + cur_queues;
 	if (!req_queues) {
 		dev_err(&pf->pdev->dev,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
