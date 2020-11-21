Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE142BBB39
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:46:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45DC481EB5;
	Sat, 21 Nov 2020 00:46:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M4cx4PpFxf8d; Sat, 21 Nov 2020 00:46:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9D2285772;
	Sat, 21 Nov 2020 00:46:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B22C41BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AEC1B87531
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Vzn1Cvbp73x for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:46:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 29EBB874EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:35 +0000 (UTC)
IronPort-SDR: HuDrlKxbSeWutUdqVwZWXyycCBseExcnOkxfXW7y9N2lWQOOWA3Ah92Zbj2URzGszfgM9AAlWL
 rPeAgqTBn9gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="168053542"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="168053542"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:46:33 -0800
IronPort-SDR: uPUxft3sJ5pPbf8ypHKppdZdWTMcWWRTWXKVk+DhXJV3FH+yu+0clgoNQTkXLrjbkCP75ThViX
 MhTo3txHCe1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="331520159"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 20 Nov 2020 16:46:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:39:28 -0800
Message-Id: <20201121003938.48514-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
References: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S54 04/14] ice: Improve MSI-X vector
 enablement fallback logic
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

From: Brett Creeley <brett.creeley@intel.com>

The current MSI-X enablement logic either tries to enable best-case
MSI-X vectors and if that fails we only support a bare-minimum set.
This is not very flexible and the current logic is broken when actually
allocating and reserving MSI-X in the driver. Fix this by improving the
fall-back logic and fixing the allocation/reservation of MSI-X when the
best-case MSI-X vectors are not received from the OS.

The new fall-back logic is described below with each [#] being an
attempt at enabling a certain number of MSI-X. If any of the steps
succeed, then return the number of MSI-X enabled from
ice_ena_msix_range(). If any of the attempts fail, then goto the next
step.

Attempt [0]: Enable the best-case scenario MSI-X vectors.

Attempt [1]: Enable MSI-X vectors with the number of pf->num_lan_msix
reduced by a factor of 2 from the previous attempts (i.e.
num_online_cpus() / 2).

Attempt [2]: Same as attempt [1], except reduce both by a factor of 4.

Attempt [3]: Enable the bare-minimum MSI-X vectors.

Also, if the adjusted_base_msix ever hits the minimum required for LAN,
then just set the needed MSI-X for that feature to the minimum
(similar to attempt [3]).

To fix the allocation/reservation of MSI-X, the PF VSI needs to take
into account the pf->num_lan_msix available and only allocate up to that
many MSI-X vectors. To do this, limit the number of Tx and Rx queues
based on pf->num_lan_msix. This is done because we don't want more than
1 Tx/Rx queue per interrupt due to performance concerns. Also, limit the
number of MSI-X based on pf->num_lan_msix available.

Also, prevent users from enabling more combined queues than there are
MSI-X available via ethtool.

Fixes: 152b978a1f90 ("ice: Rework ice_ena_msix_range")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |   4 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   8 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     |  15 +-
 drivers/net/ethernet/intel/ice/ice_main.c    | 161 ++++++++++---------
 4 files changed, 102 insertions(+), 86 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 855db84d4186..1dcb60e3c9cf 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -71,8 +71,10 @@
 #define ICE_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
 #define ICE_AQ_LEN		64
 #define ICE_MBXSQ_LEN		64
-#define ICE_MIN_MSIX		2
 #define ICE_FDIR_MSIX		1
+#define ICE_MIN_LAN_MSIX	1
+#define ICE_OICR_MSIX		1
+#define ICE_MIN_MSIX		(ICE_MIN_LAN_MSIX + ICE_OICR_MSIX)
 #define ICE_NO_VSI		0xffff
 #define ICE_VSI_MAP_CONTIG	0
 #define ICE_VSI_MAP_SCATTER	1
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 891c7271fdd6..771cb22b6b1b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3267,8 +3267,8 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
  */
 static int ice_get_max_txq(struct ice_pf *pf)
 {
-	return min_t(int, num_online_cpus(),
-		     pf->hw.func_caps.common_cap.num_txq);
+	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
+		    (u16)pf->hw.func_caps.common_cap.num_txq);
 }
 
 /**
@@ -3277,8 +3277,8 @@ static int ice_get_max_txq(struct ice_pf *pf)
  */
 static int ice_get_max_rxq(struct ice_pf *pf)
 {
-	return min_t(int, num_online_cpus(),
-		     pf->hw.func_caps.common_cap.num_rxq);
+	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
+		    (u16)pf->hw.func_caps.common_cap.num_rxq);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b71d9e1d9262..1288a7718f34 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -161,8 +161,10 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
 
 	switch (vsi->type) {
 	case ICE_VSI_PF:
-		vsi->alloc_txq = min_t(int, ice_get_avail_txq_count(pf),
-				       num_online_cpus());
+		/* default to 1 Tx queue per MSI-X to not hurt our performance */
+		vsi->alloc_txq = min3(pf->num_lan_msix,
+				      ice_get_avail_txq_count(pf),
+				      (u16)num_online_cpus());
 		if (vsi->req_txq) {
 			vsi->alloc_txq = vsi->req_txq;
 			vsi->num_txq = vsi->req_txq;
@@ -174,8 +176,10 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
 		if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
 			vsi->alloc_rxq = 1;
 		} else {
-			vsi->alloc_rxq = min_t(int, ice_get_avail_rxq_count(pf),
-					       num_online_cpus());
+			/* default to 1 Rx queue per MSI-X to not hurt our performance */
+			vsi->alloc_rxq = min3(pf->num_lan_msix,
+					      ice_get_avail_rxq_count(pf),
+					      (u16)num_online_cpus());
 			if (vsi->req_rxq) {
 				vsi->alloc_rxq = vsi->req_rxq;
 				vsi->num_rxq = vsi->req_rxq;
@@ -184,7 +188,8 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
 
 		pf->num_lan_rx = vsi->alloc_rxq;
 
-		vsi->num_q_vectors = max_t(int, vsi->alloc_rxq, vsi->alloc_txq);
+		vsi->num_q_vectors = min_t(int, pf->num_lan_msix,
+					   max_t(int, vsi->alloc_rxq, vsi->alloc_txq));
 		break;
 	case ICE_VSI_VF:
 		vf = &pf->vf[vsi->vf_id];
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 647f6c105c65..fe2dd773902a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3382,95 +3382,105 @@ static int ice_init_pf(struct ice_pf *pf)
 	return 0;
 }
 
+static int ice_alloc_msix_entries(struct ice_pf *pf, u16 num_entries)
+{
+	u16 i;
+
+	pf->msix_entries = devm_kcalloc(ice_pf_to_dev(pf), num_entries,
+					sizeof(*pf->msix_entries), GFP_KERNEL);
+	if (!pf->msix_entries)
+		return -ENOMEM;
+
+	for (i = 0; i < num_entries; i++)
+		pf->msix_entries[i].entry = i;
+
+	return 0;
+}
+
+static void ice_free_msix_entries(struct ice_pf *pf)
+{
+	devm_kfree(ice_pf_to_dev(pf), pf->msix_entries);
+	pf->msix_entries = NULL;
+}
+
 /**
- * ice_ena_msix_range - Request a range of MSIX vectors from the OS
+ * ice_ena_msix_range - request a range of MSI-X vectors from the OS
  * @pf: board private structure
  *
- * compute the number of MSIX vectors required (v_budget) and request from
- * the OS. Return the number of vectors reserved or negative on failure
+ * The driver first tries to enable best-case scenario MSI-X vectors. If that
+ * doesn't succeeed then a fall-back method is employed.
+ *
+ * The fall-back logic is described below with each [#] being an attempt at
+ * enabling a certain number of MSI-X. If any of the steps succeed, then return
+ * the number of MSI-X enabled from  pci_ena_msix_exact(). If any of the
+ * attempts fail, then goto the next step.
+ *
+ * Attempt [0]: Enable the best-case scenario MSI-X vectors.
+ *
+ * Attempt [1]: Enable MSI-X vectors with the number of pf->num_lan_msix reduced
+ * by a factor of 2 from the previous attempts (i.e. num_online_cpus() / 2).
+ *
+ * Attempt [2]: Same as attempt [2], except reduce both by a factor of 4.
+ *
+ * Attempt [3]: Enable the bare-minimum MSI-X vectors.
+ *
+ * Also, if the adjusted_base_msix ever hits the mimimum required for LAN, then
+ * just set the needed MSI-X for that feature to the minimum (similar to
+ * attempt [3]).
  */
 static int ice_ena_msix_range(struct ice_pf *pf)
 {
+	int err = -ENOSPC, num_cpus, attempt, adjusted_msix_divisor = 1, needed;
 	struct device *dev = ice_pf_to_dev(pf);
-	int v_left, v_actual, v_budget = 0;
-	int needed, err, i;
-
-	v_left = pf->hw.func_caps.common_cap.num_msix_vectors;
-
-	/* reserve one vector for miscellaneous handler */
-	needed = 1;
-	if (v_left < needed)
-		goto no_hw_vecs_left_err;
-	v_budget += needed;
-	v_left -= needed;
-
-	/* reserve vectors for LAN traffic */
-	needed = min_t(int, num_online_cpus(), v_left);
-	if (v_left < needed)
-		goto no_hw_vecs_left_err;
-	pf->num_lan_msix = needed;
-	v_budget += needed;
-	v_left -= needed;
-
-	/* reserve one vector for flow director */
-	if (test_bit(ICE_FLAG_FD_ENA, pf->flags)) {
-		needed = ICE_FDIR_MSIX;
-		if (v_left < needed)
-			goto no_hw_vecs_left_err;
-		v_budget += needed;
-		v_left -= needed;
-	}
-
-	pf->msix_entries = devm_kcalloc(dev, v_budget,
-					sizeof(*pf->msix_entries), GFP_KERNEL);
 
-	if (!pf->msix_entries) {
-		err = -ENOMEM;
-		goto exit_err;
-	}
+	num_cpus = num_online_cpus();
 
-	for (i = 0; i < v_budget; i++)
-		pf->msix_entries[i].entry = i;
+#define ICE_MAX_ENABLE_MSIX_ATTEMPTS 3
+	/* make multiple passes at enabling MSI-X vectors in case there aren't
+	 * enough available for the best-case scenario
+	 */
+	for (attempt = 0; attempt <= ICE_MAX_ENABLE_MSIX_ATTEMPTS; attempt++) {
+		int adjusted_base_msix = num_cpus / adjusted_msix_divisor;
 
-	/* actually reserve the vectors */
-	v_actual = pci_enable_msix_range(pf->pdev, pf->msix_entries,
-					 ICE_MIN_MSIX, v_budget);
-
-	if (v_actual < 0) {
-		dev_err(dev, "unable to reserve MSI-X vectors\n");
-		err = v_actual;
-		goto msix_err;
-	}
-
-	if (v_actual < v_budget) {
-		dev_warn(dev, "not enough OS MSI-X vectors. requested = %d, obtained = %d\n",
-			 v_budget, v_actual);
-/* 2 vectors each for LAN and RDMA (traffic + OICR), one for flow director */
-#define ICE_MIN_LAN_VECS 2
-#define ICE_MIN_RDMA_VECS 2
-#define ICE_MIN_VECS (ICE_MIN_LAN_VECS + ICE_MIN_RDMA_VECS + 1)
-
-		if (v_actual < ICE_MIN_LAN_VECS) {
-			/* error if we can't get minimum vectors */
-			pci_disable_msix(pf->pdev);
-			err = -ERANGE;
-			goto msix_err;
+		/* attempt to enable minimum MSI-X range */
+		if (attempt == ICE_MAX_ENABLE_MSIX_ATTEMPTS) {
+			needed = ICE_MIN_MSIX;
+			pf->num_lan_msix = ICE_MIN_LAN_MSIX;
 		} else {
-			pf->num_lan_msix = ICE_MIN_LAN_VECS;
+			if (adjusted_base_msix > ICE_MIN_LAN_MSIX)
+				pf->num_lan_msix = adjusted_base_msix;
+			else
+				pf->num_lan_msix = ICE_MIN_LAN_MSIX;
+
+			needed = pf->num_lan_msix + ICE_OICR_MSIX;
 		}
-	}
 
-	return v_actual;
+		if (test_bit(ICE_FLAG_FD_ENA, pf->flags))
+			needed += ICE_FDIR_MSIX;
 
-msix_err:
-	devm_kfree(dev, pf->msix_entries);
-	goto exit_err;
+		err = ice_alloc_msix_entries(pf, needed);
+		if (err)
+			goto err_out;
+
+		dev_dbg(dev, "attempting to enable %d MSI-X vectors\n", needed);
+		err = pci_enable_msix_exact(pf->pdev, pf->msix_entries, needed);
+		if (err < 0) {
+			ice_free_msix_entries(pf);
+			dev_notice(dev, "Couldn't get %d MSI-X vectors due to OS, Platform, and/or PCI-function limitations. Reducing request and retrying.",
+				   needed);
+
+			adjusted_msix_divisor *= 2;
+		} else {
+			if (pf->num_lan_msix != num_cpus)
+				dev_notice(dev, "Enabled %d MSI-X vectors for LAN traffic.\n",
+					   pf->num_lan_msix);
+
+			return needed;
+		}
+	}
 
-no_hw_vecs_left_err:
-	dev_err(dev, "not enough device MSI-X vectors. requested = %d, available = %d\n",
-		needed, v_left);
-	err = -ERANGE;
-exit_err:
+err_out:
+	dev_err(dev, "failed to enable MSI-X vectors\n");
 	pf->num_lan_msix = 0;
 	return err;
 }
@@ -3482,8 +3492,7 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 static void ice_dis_msix(struct ice_pf *pf)
 {
 	pci_disable_msix(pf->pdev);
-	devm_kfree(ice_pf_to_dev(pf), pf->msix_entries);
-	pf->msix_entries = NULL;
+	ice_free_msix_entries(pf);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
