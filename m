Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0001C9AE479
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 14:12:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FA36608D8;
	Thu, 24 Oct 2024 12:12:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id moEp-bbcRfA9; Thu, 24 Oct 2024 12:12:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE466608C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729771967;
	bh=/4jgdU55G8flfHGNzyEjsi2YeHLxeW5x6iiXB5cefDE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aOTAQxKV6yN3hE32PEN0XUTntMBao5KgDVI3d/ZMhnM3T+jImnjlgeQuAyF0oX38n
	 tUxClm2dUnLCwvSThoRZtPOHSp4iClewYfJO79MC9R2JwMb7PWOMN08VpTAkisRDN4
	 Xz6+CR7G+5xksy6L69DBUuK8s3f/eShEk/LHDDkJ/lbXE/+bZlu9QS47vDNcv6quRe
	 6JnOlmi6uBcjhXfgLGfcocy8Qtwp4FQdeBhxS8anef5WY8kkAve/vG87yGKZjkefqi
	 A7MpQeGXDQ2nuUGsTPKeZspmnA10b6TgNfvjr2K+gTJkAIrZ/Y5d/X8UAhnS9ihid8
	 5Ud882//Kf4Lw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE466608C5;
	Thu, 24 Oct 2024 12:12:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B702A5A5A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:12:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9853940B38
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:12:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TR1nDBP6hEgH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 12:12:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5EB1E40A97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EB1E40A97
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5EB1E40A97
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:12:44 +0000 (UTC)
X-CSE-ConnectionGUID: QF3UBMG9T3qPpxnaZGb9pw==
X-CSE-MsgGUID: nyqQMTl+SrylzVVGMHF46g==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40008288"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="40008288"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:12:44 -0700
X-CSE-ConnectionGUID: 9sAxhuaDS4eRSRj5QvlndA==
X-CSE-MsgGUID: +GgZxy0URka/LAQuFHv4bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="85184459"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa004.fm.intel.com with ESMTP; 24 Oct 2024 05:12:41 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pawel.chmielewski@intel.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 pio.raczynski@gmail.com, konrad.knitter@intel.com, marcin.szycik@intel.com,
 wojciech.drewek@intel.com, nex.sw.ncis.nat.hpm.dev@intel.com,
 przemyslaw.kitszel@intel.com, jiri@resnulli.us, horms@kernel.org,
 David.Laight@ACULAB.COM
Date: Thu, 24 Oct 2024 14:12:24 +0200
Message-ID: <20241024121230.5861-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241024121230.5861-1-michal.swiatkowski@linux.intel.com>
References: <20241024121230.5861-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729771964; x=1761307964;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ar64GQa7CgEv6aIoclA1lfNpqsj2yh3PuuGiDmigM/A=;
 b=LPXGIDqhG30f5lq9jtOK4BL8l3oOYqHqhyF1yZenM/+uY2iUQLue33jF
 /QYpTboKELN2KY+Wxd+nlC0qHQ/JjuMF6dRFm3Z9w/puIfBgb2vBEbnz8
 xOKsmoysUvjaUWm2sRSpZbmcTTDcGAsIGPNJJ4nwDq1Zq5WsdU0YtmcDK
 n4qTsaoaDiAy65XYp2Y0GFGpAdYK77FsMh4rNtZ0oBIVPb/ynQpqoAUc4
 eDqtoigGe9OMPDEni9IkAklNbYUIe8iQ+AgDzBoyfjZuX2hSlAACjOKbh
 CWAQaQO9iZW73ZaIEA6b+QUXke2ppyD8AP6/wRuGkQcF9XsszDuvnok7r
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LPXGIDqh
Subject: [Intel-wired-lan] [iwl-next v5 3/9] ice: remove splitting MSI-X
 between features
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

With dynamic approach to alloc MSI-X there is no sense to statically
split MSI-X between PF features.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_irq.c | 168 ++---------------------
 1 file changed, 10 insertions(+), 158 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index 0659b96b9b8c..3d89d5303cd1 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -84,157 +84,6 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf, bool dyn_only)
 	return entry;
 }
 
-/**
- * ice_reduce_msix_usage - Reduce usage of MSI-X vectors
- * @pf: board private structure
- * @v_remain: number of remaining MSI-X vectors to be distributed
- *
- * Reduce the usage of MSI-X vectors when entire request cannot be fulfilled.
- * pf->num_lan_msix and pf->num_rdma_msix values are set based on number of
- * remaining vectors.
- */
-static void ice_reduce_msix_usage(struct ice_pf *pf, int v_remain)
-{
-	int v_rdma;
-
-	if (!ice_is_rdma_ena(pf)) {
-		pf->num_lan_msix = v_remain;
-		return;
-	}
-
-	/* RDMA needs at least 1 interrupt in addition to AEQ MSIX */
-	v_rdma = ICE_RDMA_NUM_AEQ_MSIX + 1;
-
-	if (v_remain < ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_RDMA_MSIX) {
-		dev_warn(ice_pf_to_dev(pf), "Not enough MSI-X vectors to support RDMA.\n");
-		clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
-
-		pf->num_rdma_msix = 0;
-		pf->num_lan_msix = ICE_MIN_LAN_TXRX_MSIX;
-	} else if ((v_remain < ICE_MIN_LAN_TXRX_MSIX + v_rdma) ||
-		   (v_remain - v_rdma < v_rdma)) {
-		/* Support minimum RDMA and give remaining vectors to LAN MSIX
-		 */
-		pf->num_rdma_msix = ICE_MIN_RDMA_MSIX;
-		pf->num_lan_msix = v_remain - ICE_MIN_RDMA_MSIX;
-	} else {
-		/* Split remaining MSIX with RDMA after accounting for AEQ MSIX
-		 */
-		pf->num_rdma_msix = (v_remain - ICE_RDMA_NUM_AEQ_MSIX) / 2 +
-				    ICE_RDMA_NUM_AEQ_MSIX;
-		pf->num_lan_msix = v_remain - pf->num_rdma_msix;
-	}
-}
-
-/**
- * ice_ena_msix_range - Request a range of MSIX vectors from the OS
- * @pf: board private structure
- *
- * Compute the number of MSIX vectors wanted and request from the OS. Adjust
- * device usage if there are not enough vectors. Return the number of vectors
- * reserved or negative on failure.
- */
-static int ice_ena_msix_range(struct ice_pf *pf)
-{
-	int num_cpus, hw_num_msix, v_other, v_wanted, v_actual;
-	struct device *dev = ice_pf_to_dev(pf);
-	int err;
-
-	hw_num_msix = pf->hw.func_caps.common_cap.num_msix_vectors;
-	num_cpus = num_online_cpus();
-
-	/* LAN miscellaneous handler */
-	v_other = ICE_MIN_LAN_OICR_MSIX;
-
-	/* Flow Director */
-	if (test_bit(ICE_FLAG_FD_ENA, pf->flags))
-		v_other += ICE_FDIR_MSIX;
-
-	/* switchdev */
-	v_other += ICE_ESWITCH_MSIX;
-
-	v_wanted = v_other;
-
-	/* LAN traffic */
-	pf->num_lan_msix = num_cpus;
-	v_wanted += pf->num_lan_msix;
-
-	/* RDMA auxiliary driver */
-	if (ice_is_rdma_ena(pf)) {
-		pf->num_rdma_msix = num_cpus + ICE_RDMA_NUM_AEQ_MSIX;
-		v_wanted += pf->num_rdma_msix;
-	}
-
-	if (v_wanted > hw_num_msix) {
-		int v_remain;
-
-		dev_warn(dev, "not enough device MSI-X vectors. wanted = %d, available = %d\n",
-			 v_wanted, hw_num_msix);
-
-		if (hw_num_msix < ICE_MIN_MSIX) {
-			err = -ERANGE;
-			goto exit_err;
-		}
-
-		v_remain = hw_num_msix - v_other;
-		if (v_remain < ICE_MIN_LAN_TXRX_MSIX) {
-			v_other = ICE_MIN_MSIX - ICE_MIN_LAN_TXRX_MSIX;
-			v_remain = ICE_MIN_LAN_TXRX_MSIX;
-		}
-
-		ice_reduce_msix_usage(pf, v_remain);
-		v_wanted = pf->num_lan_msix + pf->num_rdma_msix + v_other;
-
-		dev_notice(dev, "Reducing request to %d MSI-X vectors for LAN traffic.\n",
-			   pf->num_lan_msix);
-		if (ice_is_rdma_ena(pf))
-			dev_notice(dev, "Reducing request to %d MSI-X vectors for RDMA.\n",
-				   pf->num_rdma_msix);
-	}
-
-	/* actually reserve the vectors */
-	v_actual = pci_alloc_irq_vectors(pf->pdev, ICE_MIN_MSIX, v_wanted,
-					 PCI_IRQ_MSIX);
-	if (v_actual < 0) {
-		dev_err(dev, "unable to reserve MSI-X vectors\n");
-		err = v_actual;
-		goto exit_err;
-	}
-
-	if (v_actual < v_wanted) {
-		dev_warn(dev, "not enough OS MSI-X vectors. requested = %d, obtained = %d\n",
-			 v_wanted, v_actual);
-
-		if (v_actual < ICE_MIN_MSIX) {
-			/* error if we can't get minimum vectors */
-			pci_free_irq_vectors(pf->pdev);
-			err = -ERANGE;
-			goto exit_err;
-		} else {
-			int v_remain = v_actual - v_other;
-
-			if (v_remain < ICE_MIN_LAN_TXRX_MSIX)
-				v_remain = ICE_MIN_LAN_TXRX_MSIX;
-
-			ice_reduce_msix_usage(pf, v_remain);
-
-			dev_notice(dev, "Enabled %d MSI-X vectors for LAN traffic.\n",
-				   pf->num_lan_msix);
-
-			if (ice_is_rdma_ena(pf))
-				dev_notice(dev, "Enabled %d MSI-X vectors for RDMA.\n",
-					   pf->num_rdma_msix);
-		}
-	}
-
-	return v_actual;
-
-exit_err:
-	pf->num_rdma_msix = 0;
-	pf->num_lan_msix = 0;
-	return err;
-}
-
 /**
  * ice_clear_interrupt_scheme - Undo things done by ice_init_interrupt_scheme
  * @pf: board private structure
@@ -261,15 +110,18 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 	if (!pf->msix.max)
 		pf->msix.max = total_vectors / 2;
 
-	vectors = ice_ena_msix_range(pf);
-
-	if (vectors < 0)
-		return -ENOMEM;
-
-	if (pci_msix_can_alloc_dyn(pf->pdev))
+	if (pci_msix_can_alloc_dyn(pf->pdev)) {
+		vectors = pf->msix.min;
 		max_vectors = total_vectors;
-	else
+	} else {
+		vectors = pf->msix.max;
 		max_vectors = vectors;
+	}
+
+	vectors = pci_alloc_irq_vectors(pf->pdev, pf->msix.min, vectors,
+					PCI_IRQ_MSIX);
+	if (vectors < pf->msix.min)
+		return -ENOMEM;
 
 	ice_init_irq_tracker(pf, max_vectors, vectors);
 
-- 
2.42.0

