Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 795AC6C3184
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 13:22:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EF2082000;
	Tue, 21 Mar 2023 12:22:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EF2082000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679401326;
	bh=zuviaWwuj6YllRFmHd2eGgpZdA9Kr5fYBjw7B60q8wA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TyzwgSg3JyHloNj3O7BnOrZSYt2WXhYd64m1OZGOryp2yKGJ6hHQ7J8M1Jc9jXyZ0
	 6yhJKueTTQ9DHsJ0k8zvgADhdH7oPbJfjj1ZHIIaQyyNna15tj9XhIQuRcQ7sPPHcq
	 RD7FHxwqTHwwTd4fjI3C1Pvf7L3iaPZOB+MMGleuJL0S8+wnNJwzGyvVn517FtFnFP
	 51bV2kiO6LAbtRQtZhSMWnKVz+xHgkCXClfFsUlpaY5emKx3r5F5bQ4ewfvi/vmsnq
	 elvTLUtgcdILgtWuhuFVRcBpB5PAs3dZR0WDjuBp1O3CXuV1AlzBWYxUEjE+4nt3dw
	 IoN8/fS+xK9Qw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tgq0DL1HjLPy; Tue, 21 Mar 2023 12:22:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1104381F68;
	Tue, 21 Mar 2023 12:22:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1104381F68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA3F61BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 12:21:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 85A7E61050
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 12:21:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85A7E61050
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f1OCFMjXinaW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 12:21:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6A2360FFE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D6A2360FFE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 12:21:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="318578099"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="318578099"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 05:21:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="855673515"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="855673515"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by orsmga005.jf.intel.com with ESMTP; 21 Mar 2023 05:21:49 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Mar 2023 13:21:35 +0100
Message-Id: <20230321122138.3151670-6-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230321122138.3151670-1-piotr.raczynski@intel.com>
References: <20230321122138.3151670-1-piotr.raczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679401312; x=1710937312;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BiKWK+J5z1UJnmnkO5UzwlDwumzI3imIdU0SWeqs0Kk=;
 b=OxdPau0gQkHuI8OhTCsefCHprUH46Vk6W1NQ7LFdPPvlKV7+Yo7q8C3y
 5N8eHoX5zyUqpaA4+ybZoz07RQSajB7oEHtPgqJrYeNLh/IL+HczXCo7f
 SOZI5LEJGy2NYCTioXiNIOpHC9UTAwWYIX1IsMuQ5LPKQfEo4kiuRICpZ
 Re4caJREwzMYqJ7gUBGslA9+ZoWc/dMjiTGKUC+l/LzgTtNXKCzW9hT2N
 smCiTqMtVi5tF+IeNx8X7gE19tYaiyCbBUb/TVF9yRC53AwpeN3gZeuXy
 KsY5RBMRlaMxix5FHKCSHQivHR4niSic4+aUiyUigHSE9aSANNYfwOJVr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OxdPau0g
Subject: [Intel-wired-lan] [PATCH net-next v1 5/8] ice: remove redundant
 SRIOV code
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove redundant code from ice_get_max_valid_res_idx that has no effect.
ice_pf::irq_tracker is initialized during driver probe, there is no reason
to check it again. Also it is not possible for pf::sriov_base_vector to be
lower than the tracker length, remove WARN_ON that will never happen.

Get rid of ice_get_max_valid_res_idx helper function completely since it
can never return negative value.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 36 ----------------------
 1 file changed, 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index f1dca59bd844..65f971b74717 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -135,18 +135,9 @@ static void ice_dis_vf_mappings(struct ice_vf *vf)
  */
 static int ice_sriov_free_msix_res(struct ice_pf *pf)
 {
-	struct ice_res_tracker *res;
-
 	if (!pf)
 		return -EINVAL;
 
-	res = pf->irq_tracker;
-	if (!res)
-		return -EINVAL;
-
-	/* give back irq_tracker resources used */
-	WARN_ON(pf->sriov_base_vector < res->num_entries);
-
 	pf->sriov_base_vector = 0;
 
 	return 0;
@@ -409,29 +400,6 @@ int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector)
 		q_vector->v_idx + 1;
 }
 
-/**
- * ice_get_max_valid_res_idx - Get the max valid resource index
- * @res: pointer to the resource to find the max valid index for
- *
- * Start from the end of the ice_res_tracker and return right when we find the
- * first res->list entry with the ICE_RES_VALID_BIT set. This function is only
- * valid for SR-IOV because it is the only consumer that manipulates the
- * res->end and this is always called when res->end is set to res->num_entries.
- */
-static int ice_get_max_valid_res_idx(struct ice_res_tracker *res)
-{
-	int i;
-
-	if (!res)
-		return -EINVAL;
-
-	for (i = res->num_entries - 1; i >= 0; i--)
-		if (res->list[i] & ICE_RES_VALID_BIT)
-			return i;
-
-	return 0;
-}
-
 /**
  * ice_sriov_set_msix_res - Set any used MSIX resources
  * @pf: pointer to PF structure
@@ -490,7 +458,6 @@ static int ice_sriov_set_msix_res(struct ice_pf *pf, u16 num_msix_needed)
  */
 static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 {
-	int max_valid_res_idx = ice_get_max_valid_res_idx(pf->irq_tracker);
 	u16 num_msix_per_vf, num_txq, num_rxq, avail_qs;
 	int msix_avail_per_vf, msix_avail_for_sriov;
 	struct device *dev = ice_pf_to_dev(pf);
@@ -501,9 +468,6 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 	if (!num_vfs)
 		return -EINVAL;
 
-	if (max_valid_res_idx < 0)
-		return -ENOSPC;
-
 	/* determine MSI-X resources per VF */
 	msix_avail_for_sriov = pf->hw.func_caps.common_cap.num_msix_vectors -
 		pf->irq_tracker->num_entries;
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
