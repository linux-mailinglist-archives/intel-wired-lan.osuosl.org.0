Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 178214B7C63
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 02:31:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A576E41613;
	Wed, 16 Feb 2022 01:31:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Z4qqgm6CObj; Wed, 16 Feb 2022 01:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 575074160B;
	Wed, 16 Feb 2022 01:31:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 346A21BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E89D4160F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJPplM9v_GiM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 01:31:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A0C14160A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644975097; x=1676511097;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YnPrIAx0Y4/7Gf2E8gm9xJHqY/QruHSOuIelef8t4GI=;
 b=ILlIkQ8OuNG9P/UPcxYm2IZ3fWWe0/oJKbxNvOcsNeLjWN1wTw7imT4N
 9dc3lTVlQagPs0xIfw+2KQC0vWJkHUwKc4bDmSH8DFiVgrby1LHsWZK/S
 qpBDj5vIjROHZ3CYRhRNn3vGIrWRztJnpwEbBxlXmtu0k3C723UrR1VFx
 jjCYyqlPYt9wBwWiTkvZg+x4AVEFo1TdPUZ54SBokUPhaRhN5GK0hRPK4
 vYLYI2sGXBdjup7AE9KrdgJmI88KOo4kGxKOcHbNRSGNe46bSW0PP4Tmh
 O8DeDkkYrghmlPe1BV2tScuQV9xuvPFT6sarLQYdns6KPTR5uHs5QnNhV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237903427"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="237903427"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="588077341"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 15 Feb 2022 17:31:19 -0800
Message-Id: <20220216013127.3263153-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220216013127.3263153-1-jacob.e.keller@intel.com>
References: <20220216013127.3263153-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 03/11] ice: pass num_vfs to
 ice_set_per_vf_res()
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

We are planning to replace the simple array structure tracking VFs with
a hash table. This change will also remove the "num_alloc_vfs" variable.

Instead, new access functions to use the hash table as the source of
truth will be introduced. These will generally be equivalent to existing
checks, except during VF initialization.

Specifically, ice_set_per_vf_res() cannot use the hash table as it will
be operating prior to VF structures being inserted into the hash table.

Instead of using pf->num_alloc_vfs, simply pass the num_vfs value in
from the caller.

Note that a sub-function of ice_set_per_vf_res, ice_determine_res, also
implicitly depends on pf->num_alloc_vfs. Replace ice_determine_res with
a simpler inline implementation based on rounddown_pow_of_two. Note that
we must explicitly check that the argument is non-zero since it does not
play well with zero as a value.

Instead of using the function and while loop, simply calculate the
number of queues we have available by dividing by num_vfs. Check if the
desired queues are available. If not, round down to the nearest power of
2 that fits within our available queues.

This matches the behavior of ice_determine_res but is easier to follow
as simple in-line logic. Remove ice_determine_res entirely.

With this change, we no longer depend on the pf->num_alloc_vfs during
the initialization phase of VFs. This will allow us to safely remove it
in a future planned refactor of the VF data structures.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 87 ++++++-------------
 1 file changed, 26 insertions(+), 61 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index d86d47b8fee2..44037d569755 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1069,45 +1069,6 @@ static void ice_ena_vf_mappings(struct ice_vf *vf)
 	ice_ena_vf_q_mappings(vf, vsi->alloc_txq, vsi->alloc_rxq);
 }
 
-/**
- * ice_determine_res
- * @pf: pointer to the PF structure
- * @avail_res: available resources in the PF structure
- * @max_res: maximum resources that can be given per VF
- * @min_res: minimum resources that can be given per VF
- *
- * Returns non-zero value if resources (queues/vectors) are available or
- * returns zero if PF cannot accommodate for all num_alloc_vfs.
- */
-static int
-ice_determine_res(struct ice_pf *pf, u16 avail_res, u16 max_res, u16 min_res)
-{
-	bool checked_min_res = false;
-	int res;
-
-	/* start by checking if PF can assign max number of resources for
-	 * all num_alloc_vfs.
-	 * if yes, return number per VF
-	 * If no, divide by 2 and roundup, check again
-	 * repeat the loop till we reach a point where even minimum resources
-	 * are not available, in that case return 0
-	 */
-	res = max_res;
-	while ((res >= min_res) && !checked_min_res) {
-		int num_all_res;
-
-		num_all_res = pf->num_alloc_vfs * res;
-		if (num_all_res <= avail_res)
-			return res;
-
-		if (res == min_res)
-			checked_min_res = true;
-
-		res = DIV_ROUND_UP(res, 2);
-	}
-	return 0;
-}
-
 /**
  * ice_calc_vf_reg_idx - Calculate the VF's register index in the PF space
  * @vf: VF to calculate the register index for
@@ -1187,6 +1148,7 @@ static int ice_sriov_set_msix_res(struct ice_pf *pf, u16 num_msix_needed)
 /**
  * ice_set_per_vf_res - check if vectors and queues are available
  * @pf: pointer to the PF structure
+ * @num_vfs: the number of SR-IOV VFs being configured
  *
  * First, determine HW interrupts from common pool. If we allocate fewer VFs, we
  * get more vectors and can enable more queues per VF. Note that this does not
@@ -1205,20 +1167,20 @@ static int ice_sriov_set_msix_res(struct ice_pf *pf, u16 num_msix_needed)
  * Lastly, set queue and MSI-X VF variables tracked by the PF so it can be used
  * by each VF during VF initialization and reset.
  */
-static int ice_set_per_vf_res(struct ice_pf *pf)
+static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 {
 	int max_valid_res_idx = ice_get_max_valid_res_idx(pf->irq_tracker);
+	u16 num_msix_per_vf, num_txq, num_rxq, avail_qs;
 	int msix_avail_per_vf, msix_avail_for_sriov;
 	struct device *dev = ice_pf_to_dev(pf);
-	u16 num_msix_per_vf, num_txq, num_rxq;
 
-	if (!pf->num_alloc_vfs || max_valid_res_idx < 0)
+	if (!num_vfs || max_valid_res_idx < 0)
 		return -EINVAL;
 
 	/* determine MSI-X resources per VF */
 	msix_avail_for_sriov = pf->hw.func_caps.common_cap.num_msix_vectors -
 		pf->irq_tracker->num_entries;
-	msix_avail_per_vf = msix_avail_for_sriov / pf->num_alloc_vfs;
+	msix_avail_per_vf = msix_avail_for_sriov / num_vfs;
 	if (msix_avail_per_vf >= ICE_NUM_VF_MSIX_MED) {
 		num_msix_per_vf = ICE_NUM_VF_MSIX_MED;
 	} else if (msix_avail_per_vf >= ICE_NUM_VF_MSIX_SMALL) {
@@ -1230,32 +1192,35 @@ static int ice_set_per_vf_res(struct ice_pf *pf)
 	} else {
 		dev_err(dev, "Only %d MSI-X interrupts available for SR-IOV. Not enough to support minimum of %d MSI-X interrupts per VF for %d VFs\n",
 			msix_avail_for_sriov, ICE_MIN_INTR_PER_VF,
-			pf->num_alloc_vfs);
+			num_vfs);
 		return -EIO;
 	}
 
-	/* determine queue resources per VF */
-	num_txq = ice_determine_res(pf, ice_get_avail_txq_count(pf),
-				    min_t(u16,
-					  num_msix_per_vf - ICE_NONQ_VECS_VF,
-					  ICE_MAX_RSS_QS_PER_VF),
-				    ICE_MIN_QS_PER_VF);
+	num_txq = min_t(u16, num_msix_per_vf - ICE_NONQ_VECS_VF,
+			ICE_MAX_RSS_QS_PER_VF);
+	avail_qs = ice_get_avail_txq_count(pf) / num_vfs;
+	if (!avail_qs)
+		num_txq = 0;
+	else if (num_txq > avail_qs)
+		num_txq = rounddown_pow_of_two(avail_qs);
 
-	num_rxq = ice_determine_res(pf, ice_get_avail_rxq_count(pf),
-				    min_t(u16,
-					  num_msix_per_vf - ICE_NONQ_VECS_VF,
-					  ICE_MAX_RSS_QS_PER_VF),
-				    ICE_MIN_QS_PER_VF);
+	num_rxq = min_t(u16, num_msix_per_vf - ICE_NONQ_VECS_VF,
+			ICE_MAX_RSS_QS_PER_VF);
+	avail_qs = ice_get_avail_rxq_count(pf) / num_vfs;
+	if (!avail_qs)
+		num_rxq = 0;
+	else if (num_rxq > avail_qs)
+		num_rxq = rounddown_pow_of_two(avail_qs);
 
-	if (!num_txq || !num_rxq) {
+	if (num_txq < ICE_MIN_QS_PER_VF || num_rxq < ICE_MIN_QS_PER_VF) {
 		dev_err(dev, "Not enough queues to support minimum of %d queue pairs per VF for %d VFs\n",
-			ICE_MIN_QS_PER_VF, pf->num_alloc_vfs);
+			ICE_MIN_QS_PER_VF, num_vfs);
 		return -EIO;
 	}
 
-	if (ice_sriov_set_msix_res(pf, num_msix_per_vf * pf->num_alloc_vfs)) {
+	if (ice_sriov_set_msix_res(pf, num_msix_per_vf * num_vfs)) {
 		dev_err(dev, "Unable to set MSI-X resources for %d VFs\n",
-			pf->num_alloc_vfs);
+			num_vfs);
 		return -EINVAL;
 	}
 
@@ -1263,7 +1228,7 @@ static int ice_set_per_vf_res(struct ice_pf *pf)
 	pf->num_qps_per_vf = min_t(int, num_txq, num_rxq);
 	pf->num_msix_per_vf = num_msix_per_vf;
 	dev_info(dev, "Enabling %d VFs with %d vectors and %d queues per VF\n",
-		 pf->num_alloc_vfs, pf->num_msix_per_vf, pf->num_qps_per_vf);
+		 num_vfs, pf->num_msix_per_vf, pf->num_qps_per_vf);
 
 	return 0;
 }
@@ -1977,7 +1942,7 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	if (ret)
 		goto err_pci_disable_sriov;
 
-	if (ice_set_per_vf_res(pf)) {
+	if (ice_set_per_vf_res(pf, num_vfs)) {
 		dev_err(dev, "Not enough resources for %d VFs, try with fewer number of VFs\n",
 			num_vfs);
 		ret = -ENOSPC;
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
