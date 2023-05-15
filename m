Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F7E703D3B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 21:03:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FBA241DFA;
	Mon, 15 May 2023 19:03:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FBA241DFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684177437;
	bh=/2yvp7ETFQb7XpzkYTeneOnEc2wU4r3+weT6SHn8eRY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yRv5ZsUoWZPXInfI+BBj2XSAn+JziQ19ncaGpO7GKpGieTvvZMBTWbT9CEwOkPAZY
	 avlUobJ177swv741TSYDQOGu6tkOrqi7RxJ673hdatOwzTvqCdhuszUIv/jH8WhyR6
	 kJxG+g3g8/aLz7N3ZxfEJ+JYo0/KlUfJ0ztPnZ0BmMFDsMGo8YEEuat6qz0HpTLNyQ
	 ssPGRalQ46leJAu425wZSJnk02XRiVY/oLa8ErBbwJQcoM5tWO6U+EQVH9cwhb3Lrs
	 X5dNeQ8OODjIK9CSAwxZRio8TC4BgyVIk35PEKf05/5WgzwTUlu9qDqpPInib4+Wfo
	 /hV6HavwNhu2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tXDhnPBZy1AR; Mon, 15 May 2023 19:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD905415F8;
	Mon, 15 May 2023 19:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD905415F8
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3ECD91BF4E5
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 19:03:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24D05605C9
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 19:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24D05605C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1uHZzVi4TURo for <intel-wired-lan@osuosl.org>;
 Mon, 15 May 2023 19:03:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4321660AB1
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4321660AB1
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 19:03:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="354450656"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="354450656"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 12:03:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="766075098"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="766075098"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by fmsmga008.fm.intel.com with ESMTP; 15 May 2023 12:03:36 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 15 May 2023 21:03:16 +0200
Message-Id: <20230515190319.808985-6-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230515190319.808985-1-piotr.raczynski@intel.com>
References: <20230515190319.808985-1-piotr.raczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684177420; x=1715713420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6/oqrYfmwSkZ+WwHfF2XQerLhkAP6B07DN0l6t4JTyQ=;
 b=HWrh/DxcBjaMDLvc02FGu773DKM6EtOL53jvJqXjZYPSBJ+sojL9DVDU
 72rTI3Hxek3RLp176CF77/a3dS5LY0UqWK2qaBCtzsVeuK+EmMj+cv2VF
 KyAqSOKuLgN1hhWLsEuxOCm02OIEVXAgo5/R728yIRgC2hEPYMZQyUlRb
 +ka3QMkgKm5huPEBxBfFIdlS9WB7POMFQIUl7bwGU7r4pIE/NLq8bqusE
 HWvRBA0fwMt74T+kpyDHfuEwyDxxtWg6tMdtfvjUJVvnhZHSl/0SkGxlz
 JwhI7cr8Ck4+Rbcggs1bH/mKKLO0qYMJ6OnvfMdnTeUfjR5+UntKMrlCZ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HWrh/Dxc
Subject: [Intel-wired-lan] [PATCH iwl-next v5 5/8] ice: remove redundant
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
 jesse.brandeburg@intel.com, simon.horman@corigine.com, shiraz.saleem@intel.com
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
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 36 ----------------------
 1 file changed, 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index bf9b06f2a0f9..baa785aa9729 100644
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
