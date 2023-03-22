Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 841B36C5092
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 17:26:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10D2883F97;
	Wed, 22 Mar 2023 16:26:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10D2883F97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679502388;
	bh=zuviaWwuj6YllRFmHd2eGgpZdA9Kr5fYBjw7B60q8wA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=na2l+Ipw1HIlUgoabeDLryVEDyGMJYueCP4jZ9ABbhNQqJ8nk8LAJ2FI73R9jTQ0C
	 HWsCD43hSwvXI9Jj0JHuZjHs1xV7C1obL+bnBTKB/miIZPPY2S/zhbjRsSGxeW/mMP
	 MzHZ1VmcptTPJt21yhyBSRThLIy8KivMvSSRB4fmJXw/63IfMdSYvNNAjoCL5oK0jR
	 2P9bfu9M45nmj9DcUN/0VscYIvxfxEx2MOHl2NPJk+kAJpDmdim5pweFGN3go4413J
	 ZwhSfkPcZQjCbJmHLwnVvT1QwGheV8sjgGolppjE+WUw4aKqKhlfivYkwwPl6uJ2j9
	 Xxsl8lKSz65VQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tXGVFHxSuC_P; Wed, 22 Mar 2023 16:26:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08A6381249;
	Wed, 22 Mar 2023 16:26:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08A6381249
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AFB7E1BF35F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:25:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 878A441D83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:25:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 878A441D83
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PAm5PuGMhKSB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 16:25:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9200141D7F
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9200141D7F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:25:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="404151314"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="404151314"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 09:25:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="825462743"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="825462743"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2023 09:25:40 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Mar 2023 17:25:27 +0100
Message-Id: <20230322162530.3317238-6-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230322162530.3317238-1-piotr.raczynski@intel.com>
References: <20230322162530.3317238-1-piotr.raczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679502343; x=1711038343;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BiKWK+J5z1UJnmnkO5UzwlDwumzI3imIdU0SWeqs0Kk=;
 b=UIXSRVaGDUWXOnJtnPT1bf4wzxDlImPY9o4E90WIB4P02UjXV9ThBLW1
 jOOmi+9shKuTe6Pv8ZYuyva5mxP1+MOUN79PZq+ueMGcv1fgmlLa5ce+N
 xJjjx6gYcEybmHHOcDBkoghp4uEFYGdz4a/qzw8Rohz/mxalLRj2gDpwP
 UatFWqEuH29JkoPS2C12EiUKQ3+Ds/mSt1vkpW2EwZMNLIdQfM+WTNGtM
 I9CeN9+wpkSc1w4KG+VRvRzShT037j2GSkLPTj5uRaD1Pv7TuDbncP2Iq
 1RMA/gM1HzD8GL0oH77IhQmS1kvkuvWacIIJoYdu3QiI7pqo16tEdGQu7
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UIXSRVaG
Subject: [Intel-wired-lan] [PATCH net-next v2 5/8] ice: remove redundant
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
