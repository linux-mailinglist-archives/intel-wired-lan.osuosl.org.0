Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 376AF731967
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 14:59:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3D1A41FD4;
	Thu, 15 Jun 2023 12:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3D1A41FD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686833982;
	bh=63Uf7wT7E5RQS42/f0xHoVMlqjZ7h4zqL3lkQG7MSII=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NvqIPBACktsGTBAjXJw5Jcvgffy0GK2HUW6NAHfj68Nm8RV8PS3u+5HTeXb6Yt8OH
	 BqaeU4cNggX8v1XnLWQP4snrlviCfEJYIKeTtgffKYi8j6kGBLarhj/AP0OFmVj52O
	 VMkE0Kq+oIYd/siPJaLBMlxn4EZQWSjWWXfZN5mGucAdBWL897VwQ/LhkPYa5vOom4
	 SUhDRAHhOYhTZCdgaSJJSErrGUJD4n9EJHisAZagY4sG14ngO3qiNQQgME68u8hBzi
	 vf+tpZG+sOVpysFR9UNu+broET27Nk5n3nRo16GH+peeIwKvIVm4ajjNQy8WqTjkoz
	 2F5WZ/2j7nxKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJ4d_jYw8cmA; Thu, 15 Jun 2023 12:59:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 380FB41F11;
	Thu, 15 Jun 2023 12:59:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 380FB41F11
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF4181BF275
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89314404E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:59:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89314404E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8D175x17L692 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 12:59:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1D15400D8
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1D15400D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:59:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="424794825"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="424794825"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 05:59:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="825259740"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="825259740"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 15 Jun 2023 05:59:26 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Jun 2023 14:38:28 +0200
Message-Id: <20230615123830.155927-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615123830.155927-1-michal.swiatkowski@linux.intel.com>
References: <20230615123830.155927-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686833967; x=1718369967;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yzCU2VNh38sIH0/rOX1pVivilw142Zhz0Ua5gQ8KupY=;
 b=bUE7TC5ujfoNe/VWNdp+28OuJMk0ol4gwNYA7LfNFSVBNaecFjfZfW8X
 SXc1Hg2jtNM3PwHrvmaIYvcGc082geGzUGVADFSRD0590d8tWs+OFrA0Z
 aU/w00gFt+oLFuY/d6V+TMHXGz70XLl1S5YNq/qc6U2GcO1spni5QD2/8
 MijBZrtm8Iq8UwjzkRjgFKH07gtciuj1KAOe/cZhxUfSal33r6G0agoDY
 /5LOtBtgPhnCk7sejaino4M03K1RyGPKWgBPakfr6Ti5NqEN5UpoxEMDU
 Mu9W0wzoUpRGuAGV7kqCj4wirqs8VvU0HBmBfaDYQvKdNVB2x9jqlET3Q
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bUE7TC5u
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/4] ice: add bitmap to track
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
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com
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
index 176e281dfa24..98d2e70a719d 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -541,6 +541,8 @@ struct ice_pf {
 	 * MSIX vectors allowed on this PF.
 	 */
 	u16 sriov_base_vector;
+	unsigned long *sriov_irq_bm;	/* bitmap to track irq usage */
+	u16 sriov_irq_size;		/* size of the irq_bm bitmap */
 
 	u16 ctrl_vsi_idx;		/* control VSI index in pf->vsi array */
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 3137e772a64b..da0f1deef89b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -138,6 +138,8 @@ static int ice_sriov_free_msix_res(struct ice_pf *pf)
 	if (!pf)
 		return -EINVAL;
 
+	bitmap_free(pf->sriov_irq_bm);
+	pf->sriov_irq_size = 0;
 	pf->sriov_base_vector = 0;
 
 	return 0;
@@ -836,10 +838,16 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
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
@@ -898,6 +906,7 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	/* rearm interrupts here */
 	ice_irq_dynamic_ena(hw, NULL, NULL);
 	clear_bit(ICE_OICR_INTR_DIS, pf->state);
+	bitmap_free(pf->sriov_irq_bm);
 	return ret;
 }
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
