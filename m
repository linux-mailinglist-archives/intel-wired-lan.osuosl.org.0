Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D878C7A4183
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:48:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B87C414B4;
	Mon, 18 Sep 2023 06:48:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B87C414B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695019703;
	bh=83yO+QnpilCkXCMpdOeDrEdqMTTzid755729kqMyCBc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=da5tEIqvZ4XK5PMCvkceWNr+dCBa38zboWnru4s8EaCqCmrAWNj5nwGDdmAAqifVU
	 l5KkGDdEz+Z91UChSBu+OkM0ddcgnpqVKP/U1z01menP8/SkHkjGDsh3yLjDh+vLur
	 ISHuPG/aIONtWLtVJUZN4M6QiocrbvWcu7TMlUbN0eHk0S1O086tb82hLVEE4cjnYp
	 4lkJfJuT5CtIiA7MOf2AZQmu7ZXXfCGOb0QnSN3EtOhgL2V7LdX3XkqwURoZaE1uE5
	 Es85bRu7iP6njHZ826aR4siibQCZQ5uPoXJfYgIYZqqvybWe9pg3166V9iVr9Re+Uu
	 hS0rvw5IXbeDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cn93we5dk8Av; Mon, 18 Sep 2023 06:48:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67C73411A1;
	Mon, 18 Sep 2023 06:48:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67C73411A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 402861BF40F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 809FA411A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 809FA411A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t03-tJz_oDhI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:48:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D29694148E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D29694148E
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="369907537"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="369907537"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:48:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="869452239"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="869452239"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga004.jf.intel.com with ESMTP; 17 Sep 2023 23:48:10 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 08:24:04 +0200
Message-ID: <20230918062406.90359-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
References: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695019691; x=1726555691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZewXIPDm41f0GPMUjIb1QVbIyLgeOQM7RvDiQgEwv9o=;
 b=Y20ukrB4qJguu1NeqHSQTQ3Xmyxl+acCitktgy/jhtmvwbrB9WZapECK
 UNw1brSNl7HNokvwKK742pO94RiU1HCQ8tqAOuGHdD4n7rfuTeQLYbVGu
 4LfCjlLg6tUPu/nA8MeGU5+5xOCDWB1IZ/nyze9+AkTuM9Dbox4JOC5ay
 Agxd7Q6nBzaKX2v+raHjd2JSil6VlLLlA/zcHi7JIgBA7iAFHZvR60fct
 Vk7DQGN69uX9TZKrv2V9qfMgaU2PUlrWBa9M/9EfPfgUBGRvwUqnMCvoW
 I9XnMo+R/5nGGT+0iNCLVtUxz/nv4v8fSFh3mQqz1IAmWcb3ClBdSi1qG
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y20ukrB4
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/4] ice: add bitmap to track
 VF MSI-X usage
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

Create a bitamp to track MSI-X usage for VFs. The bitmap has the size of
total MSI-X amount on device, because at init time the amount of MSI-X
used by VFs isn't known.

The bitmap is used in follow up patchset to provide a block of
continuous block of MSI-X indexes for each created VF.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h       | 2 ++
 drivers/net/ethernet/intel/ice/ice_sriov.c | 9 +++++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 051007ccab43..5fef43d3d994 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -550,6 +550,8 @@ struct ice_pf {
 	 * MSIX vectors allowed on this PF.
 	 */
 	u16 sriov_base_vector;
+	unsigned long *sriov_irq_bm;	/* bitmap to track irq usage */
+	u16 sriov_irq_size;		/* size of the irq_bm bitmap */
 
 	u16 ctrl_vsi_idx;		/* control VSI index in pf->vsi array */
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index d345f5d8635b..49adb0b05817 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -138,6 +138,8 @@ static int ice_sriov_free_msix_res(struct ice_pf *pf)
 	if (!pf)
 		return -EINVAL;
 
+	bitmap_free(pf->sriov_irq_bm);
+	pf->sriov_irq_size = 0;
 	pf->sriov_base_vector = 0;
 
 	return 0;
@@ -853,10 +855,16 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
  */
 static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 {
+	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	int ret;
 
+	pf->sriov_irq_bm = bitmap_zalloc(total_vectors, GFP_KERNEL);
+	if (!pf->sriov_irq_bm)
+		return -ENOMEM;
+	pf->sriov_irq_size = total_vectors;
+
 	/* Disable global interrupt 0 so we don't try to handle the VFLR. */
 	wr32(hw, GLINT_DYN_CTL(pf->oicr_irq.index),
 	     ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S);
@@ -915,6 +923,7 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	/* rearm interrupts here */
 	ice_irq_dynamic_ena(hw, NULL, NULL);
 	clear_bit(ICE_OICR_INTR_DIS, pf->state);
+	bitmap_free(pf->sriov_irq_bm);
 	return ret;
 }
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
