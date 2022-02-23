Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C674C05FC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:27:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17B2140207;
	Wed, 23 Feb 2022 00:27:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AUf0d0d1wYPO; Wed, 23 Feb 2022 00:27:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9F104026A;
	Wed, 23 Feb 2022 00:27:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F5731BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02E364061F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQbQ58RNsnaN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 05BFF400AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576041; x=1677112041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=730ZiMYAP9UBz1tRiZRGbJZQ/m1uGCbS0Y3w2obxJbI=;
 b=gQ8gIML8rO2iCWJN+lgbmzNwtDPlMk+pqchOcf3C3b30VcS9TAY4PVUX
 VgJvOnJkdoHtNmkvVocecE99vQja+TGX8tp42yA/dXwB6EwyqhXT6n9iZ
 Mpy7bKQJMmululZ2T0bQPS0LKcb6z9vFRLoOI3VifhXZw94eBYJ950pnN
 RSH3Z2O1xAj6zo4vuFlAymopVrPF9n+/E7kWWTCJhBiJwEZpPtAkFUyNf
 AGfRwCMt1STi8bPLEkGob5BMR8GH8IIEwgRnUQBBkxVDpgWegynGMNawA
 fH2vjIsceUxN+UERUhSs+72PjAYSeIj7hJLvfPILxEh3TncyJ2nneBkOp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468975"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468975"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728020"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:26:56 -0800
Message-Id: <20220223002712.2771809-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 09/25] ice: cleanup error logging
 for ice_ena_vfs
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

The ice_ena_vfs function and some of its sub-functions like
ice_set_per_vf_res use a "if (<function>) { <print error> ; <exit> }"
flow. This flow discards specialized errors reported by the called
function.

This style is generally not preferred as it makes tracing error sources
more difficult. It also means we cannot log the actual error received
properly.

Refactor several calls in the ice_ena_vfs function that do this to catch
the error in the 'ret' variable. Report this in the messages, and then
return the more precise error value.

Doing this reveals that ice_set_per_vf_res returns -EINVAL or -EIO in
places where -ENOSPC makes more sense. Fix these calls up to return the
more appropriate value.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 32 +++++++++++++---------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index eebff1824be2..b695d479dfb1 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1275,12 +1275,16 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 	u16 num_msix_per_vf, num_txq, num_rxq, avail_qs;
 	int msix_avail_per_vf, msix_avail_for_sriov;
 	struct device *dev = ice_pf_to_dev(pf);
+	int err;
 
 	lockdep_assert_held(&pf->vfs.table_lock);
 
-	if (!num_vfs || max_valid_res_idx < 0)
+	if (!num_vfs)
 		return -EINVAL;
 
+	if (max_valid_res_idx < 0)
+		return -ENOSPC;
+
 	/* determine MSI-X resources per VF */
 	msix_avail_for_sriov = pf->hw.func_caps.common_cap.num_msix_vectors -
 		pf->irq_tracker->num_entries;
@@ -1297,7 +1301,7 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 		dev_err(dev, "Only %d MSI-X interrupts available for SR-IOV. Not enough to support minimum of %d MSI-X interrupts per VF for %d VFs\n",
 			msix_avail_for_sriov, ICE_MIN_INTR_PER_VF,
 			num_vfs);
-		return -EIO;
+		return -ENOSPC;
 	}
 
 	num_txq = min_t(u16, num_msix_per_vf - ICE_NONQ_VECS_VF,
@@ -1319,13 +1323,14 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 	if (num_txq < ICE_MIN_QS_PER_VF || num_rxq < ICE_MIN_QS_PER_VF) {
 		dev_err(dev, "Not enough queues to support minimum of %d queue pairs per VF for %d VFs\n",
 			ICE_MIN_QS_PER_VF, num_vfs);
-		return -EIO;
+		return -ENOSPC;
 	}
 
-	if (ice_sriov_set_msix_res(pf, num_msix_per_vf * num_vfs)) {
-		dev_err(dev, "Unable to set MSI-X resources for %d VFs\n",
-			num_vfs);
-		return -EINVAL;
+	err = ice_sriov_set_msix_res(pf, num_msix_per_vf * num_vfs);
+	if (err) {
+		dev_err(dev, "Unable to set MSI-X resources for %d VFs, err %d\n",
+			num_vfs, err);
+		return err;
 	}
 
 	/* only allow equal Tx/Rx queue count (i.e. queue pairs) */
@@ -2058,10 +2063,10 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 
 	mutex_lock(&pf->vfs.table_lock);
 
-	if (ice_set_per_vf_res(pf, num_vfs)) {
-		dev_err(dev, "Not enough resources for %d VFs, try with fewer number of VFs\n",
-			num_vfs);
-		ret = -ENOSPC;
+	ret = ice_set_per_vf_res(pf, num_vfs);
+	if (ret) {
+		dev_err(dev, "Not enough resources for %d VFs, err %d. Try with fewer number of VFs\n",
+			num_vfs, ret);
 		goto err_unroll_sriov;
 	}
 
@@ -2072,8 +2077,9 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 		goto err_unroll_sriov;
 	}
 
-	if (ice_start_vfs(pf)) {
-		dev_err(dev, "Failed to start VF(s)\n");
+	ret = ice_start_vfs(pf);
+	if (ret) {
+		dev_err(dev, "Failed to start %d VFs, err %d\n", num_vfs, ret);
 		ret = -EAGAIN;
 		goto err_unroll_vf_entries;
 	}
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
