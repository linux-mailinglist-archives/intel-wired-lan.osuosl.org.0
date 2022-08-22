Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAF559C75E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Aug 2022 20:57:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EABC8261C;
	Mon, 22 Aug 2022 18:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EABC8261C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661194635;
	bh=KMs+dg4A74QlNfami+JbNkeNdcnVXVzWJUyjPMrsmpQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=F5lnKxTQHaZtl4H5zrEQCpYK4IP+GA396Kee38h+AMDmj6MVrGyMPrubZaVo1XtQJ
	 101ZgjYxeXqubWhyish8vORtwiBycNt3NBcwG5v1VebxPqQI+B1eD7b1yOQeFGU1HF
	 h+kvD05PMgeuhUO8EXoCM4m/SsZOYCETS0vDH9YSQwFELtrXyJakYX6UgiReVXfgxV
	 4+IrTvb3S9lDLWjYYN5+Wh4KZnHG4ODiqPx8kGSUAtUcJS8CvotdI0R+kraGlehwpF
	 Qvujdz3DACyJAp89LoVtYmlrH9s4yxUa5prWKed+40C/QSm7c4d0MRWLuwEjv1dn8B
	 Ngrx6zWTpL/qQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pVAptgtRhBtg; Mon, 22 Aug 2022 18:57:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19BD2825DC;
	Mon, 22 Aug 2022 18:57:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19BD2825DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE1991BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 18:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B42B741619
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 18:57:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B42B741619
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W38LJC0RNIqP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Aug 2022 18:57:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8623741673
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8623741673
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 18:57:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="294284704"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="294284704"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 11:56:57 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="677329875"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.241.12])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 11:56:57 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Aug 2022 11:56:54 -0700
Message-Id: <20220822185654.59145-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661194626; x=1692730626;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JWK6FyhYunOBeglTm90G2/SHx15Z8EZq8QUiaj3rFvk=;
 b=m3odk1w23qOE1Z/Me1iNSeRc/GBjIqpTvuVONWyb0BngSXf0YreYVyde
 KqACmrvQ/wIU14dnTqgXk50+goIKUd19U1xEftkI/sG2GJX5/V4TZD1D0
 1eD8j4ho5Jbvy1NSDCJnLZ9L5K/x44ZD2ph+jKOvxh/hztOR2oUciodL/
 RrHMePS8phSPzLPIS/yRIQb68rGP9L7CY+wvfHjGNl82aj0ul9PCjiJbH
 Xb3lPMfp593Iedx5R3C3qnTsxunHVspJVUsSEKFNyyZxt3P6YnCR8aerQ
 mG8c7tT7xWvTEFQbVJxxL3eeYcNKpO0sv6tDpHql2ygyu+3NP6wUauiF5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m3odk1w2
Subject: [Intel-wired-lan] [PATCH net-next] ice: Allow operation with
 reduced device MSI-X
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

The driver currently takes an all or nothing approach for device MSI-X
vectors. Meaning if it does not get its full allocation, it will fail and
not load. There is no reason it can't work with a reduced number of MSI-X
vectors. Take a similar approach as commit 741106f7bd8d ("ice: Improve
MSI-X fallback logic") and, instead, adjust the MSI-X request to make use
of what is available.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 187 ++++++++++++----------
 1 file changed, 102 insertions(+), 85 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3dbd91d8d83e..ccd08bc947cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3944,88 +3944,137 @@ static int ice_init_pf(struct ice_pf *pf)
 	return 0;
 }
 
+/**
+ * ice_reduce_msix_usage - Reduce usage of MSI-X vectors
+ * @pf: board private structure
+ * @v_remain: number of remaining MSI-X vectors to be distributed
+ *
+ * Reduce the usage of MSI-X vectors when entire request cannot be fulfilled.
+ * pf->num_lan_msix and pf->num_rdma_msix values are set based on number of
+ * remaining vectors.
+ */
+static void ice_reduce_msix_usage(struct ice_pf *pf, int v_remain)
+{
+	int v_rdma;
+
+	if (!ice_is_rdma_ena(pf)) {
+		pf->num_lan_msix = v_remain;
+		return;
+	}
+
+	/* For intermediate operation, RDMA needs at least 1 interrupt in
+	 * addition to AEQ MSIX.
+	 */
+	v_rdma = ICE_RDMA_NUM_AEQ_MSIX + 1;
+
+	if (v_remain < ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_RDMA_MSIX) {
+		dev_warn(ice_pf_to_dev(pf), "Not enough MSI-X vectors to support RDMA.\n");
+		clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
+
+		pf->num_rdma_msix = 0;
+		pf->num_lan_msix = ICE_MIN_LAN_TXRX_MSIX;
+	} else if ((v_remain < ICE_MIN_LAN_TXRX_MSIX + v_rdma) ||
+		   (v_remain - v_rdma < v_rdma)) {
+		/* Support minimum RDMA and give remaining vectors to LAN MSIX */
+		pf->num_rdma_msix = ICE_MIN_RDMA_MSIX;
+		pf->num_lan_msix = v_remain - ICE_MIN_RDMA_MSIX;
+	} else {
+		/* Split remaining MSIX with RDMA after accounting for AEQ MSIX
+		 */
+		pf->num_rdma_msix = (v_remain - ICE_RDMA_NUM_AEQ_MSIX) / 2 +
+				    ICE_RDMA_NUM_AEQ_MSIX;
+		pf->num_lan_msix = v_remain - pf->num_rdma_msix;
+	}
+}
+
 /**
  * ice_ena_msix_range - Request a range of MSIX vectors from the OS
  * @pf: board private structure
  *
- * compute the number of MSIX vectors required (v_budget) and request from
- * the OS. Return the number of vectors reserved or negative on failure
+ * Compute the number of MSIX vectors wanted and request from the OS. Adjust
+ * device usage if there are not enough vectors. Return the number of vectors
+ * reserved or negative on failure.
  */
 static int ice_ena_msix_range(struct ice_pf *pf)
 {
-	int num_cpus, v_left, v_actual, v_other, v_budget = 0;
+	int num_cpus, hw_num_msix, v_other, v_wanted, v_actual;
 	struct device *dev = ice_pf_to_dev(pf);
-	int needed, err, i;
+	int err, i;
 
-	v_left = pf->hw.func_caps.common_cap.num_msix_vectors;
+	hw_num_msix = pf->hw.func_caps.common_cap.num_msix_vectors;
 	num_cpus = num_online_cpus();
 
-	/* reserve for LAN miscellaneous handler */
-	needed = ICE_MIN_LAN_OICR_MSIX;
-	if (v_left < needed)
-		goto no_hw_vecs_left_err;
-	v_budget += needed;
-	v_left -= needed;
+	/* LAN miscellaneous handler */
+	v_other = ICE_MIN_LAN_OICR_MSIX;
 
-	/* reserve for flow director */
-	if (test_bit(ICE_FLAG_FD_ENA, pf->flags)) {
-		needed = ICE_FDIR_MSIX;
-		if (v_left < needed)
-			goto no_hw_vecs_left_err;
-		v_budget += needed;
-		v_left -= needed;
-	}
-
-	/* reserve for switchdev */
-	needed = ICE_ESWITCH_MSIX;
-	if (v_left < needed)
-		goto no_hw_vecs_left_err;
-	v_budget += needed;
-	v_left -= needed;
-
-	/* total used for non-traffic vectors */
-	v_other = v_budget;
-
-	/* reserve vectors for LAN traffic */
-	needed = num_cpus;
-	if (v_left < needed)
-		goto no_hw_vecs_left_err;
-	pf->num_lan_msix = needed;
-	v_budget += needed;
-	v_left -= needed;
-
-	/* reserve vectors for RDMA auxiliary driver */
+	/* Flow Director */
+	if (test_bit(ICE_FLAG_FD_ENA, pf->flags))
+		v_other += ICE_FDIR_MSIX;
+
+	/* switchdev */
+	v_other += ICE_ESWITCH_MSIX;
+
+	v_wanted = v_other;
+
+	/* LAN traffic */
+	pf->num_lan_msix = num_cpus;
+	v_wanted += pf->num_lan_msix;
+
+	/* RDMA auxiliary driver */
 	if (ice_is_rdma_ena(pf)) {
-		needed = num_cpus + ICE_RDMA_NUM_AEQ_MSIX;
-		if (v_left < needed)
-			goto no_hw_vecs_left_err;
-		pf->num_rdma_msix = needed;
-		v_budget += needed;
-		v_left -= needed;
+		pf->num_rdma_msix = num_cpus + ICE_RDMA_NUM_AEQ_MSIX;
+		v_wanted += pf->num_rdma_msix;
+	}
+
+	if (v_wanted > hw_num_msix) {
+		int v_remain;
+
+		dev_warn(dev, "not enough device MSI-X vectors. wanted = %d, available = %d\n",
+			 v_wanted, hw_num_msix);
+
+		if (hw_num_msix < ICE_MIN_MSIX) {
+			err = -ERANGE;
+			goto exit_err;
+		}
+
+		v_remain = hw_num_msix - v_other;
+		if (v_remain < ICE_MIN_LAN_TXRX_MSIX) {
+			v_other = ICE_MIN_MSIX - ICE_MIN_LAN_TXRX_MSIX;
+			v_remain = ICE_MIN_LAN_TXRX_MSIX;
+		}
+
+		ice_reduce_msix_usage(pf, v_remain);
+		v_wanted = pf->num_lan_msix + pf->num_rdma_msix + v_other;
+
+		dev_notice(dev, "Reducing request to %d MSI-X vectors for LAN traffic.\n",
+			   pf->num_lan_msix);
+		if (ice_is_rdma_ena(pf))
+			dev_notice(dev, "Reducing request to %d MSI-X vectors for RDMA.\n",
+				   pf->num_rdma_msix);
 	}
 
-	pf->msix_entries = devm_kcalloc(dev, v_budget,
+	pf->msix_entries = devm_kcalloc(dev, v_wanted,
 					sizeof(*pf->msix_entries), GFP_KERNEL);
 	if (!pf->msix_entries) {
 		err = -ENOMEM;
 		goto exit_err;
 	}
 
-	for (i = 0; i < v_budget; i++)
+	for (i = 0; i < v_wanted; i++)
 		pf->msix_entries[i].entry = i;
 
 	/* actually reserve the vectors */
 	v_actual = pci_enable_msix_range(pf->pdev, pf->msix_entries,
-					 ICE_MIN_MSIX, v_budget);
+					 ICE_MIN_MSIX, v_wanted);
 	if (v_actual < 0) {
 		dev_err(dev, "unable to reserve MSI-X vectors\n");
 		err = v_actual;
 		goto msix_err;
 	}
 
-	if (v_actual < v_budget) {
+	if (v_actual < v_wanted) {
 		dev_warn(dev, "not enough OS MSI-X vectors. requested = %d, obtained = %d\n",
-			 v_budget, v_actual);
+			 v_wanted, v_actual);
 
 		if (v_actual < ICE_MIN_MSIX) {
 			/* error if we can't get minimum vectors */
@@ -4034,38 +4083,11 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 			goto msix_err;
 		} else {
 			int v_remain = v_actual - v_other;
-			int v_rdma = 0, v_min_rdma = 0;
 
-			if (ice_is_rdma_ena(pf)) {
-				/* Need at least 1 interrupt in addition to
-				 * AEQ MSIX
-				 */
-				v_rdma = ICE_RDMA_NUM_AEQ_MSIX + 1;
-				v_min_rdma = ICE_MIN_RDMA_MSIX;
-			}
+			if (v_remain < ICE_MIN_LAN_TXRX_MSIX)
+				v_remain = ICE_MIN_LAN_TXRX_MSIX;
 
-			if (v_actual == ICE_MIN_MSIX ||
-			    v_remain < ICE_MIN_LAN_TXRX_MSIX + v_min_rdma) {
-				dev_warn(dev, "Not enough MSI-X vectors to support RDMA.\n");
-				clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
-
-				pf->num_rdma_msix = 0;
-				pf->num_lan_msix = ICE_MIN_LAN_TXRX_MSIX;
-			} else if ((v_remain < ICE_MIN_LAN_TXRX_MSIX + v_rdma) ||
-				   (v_remain - v_rdma < v_rdma)) {
-				/* Support minimum RDMA and give remaining
-				 * vectors to LAN MSIX
-				 */
-				pf->num_rdma_msix = v_min_rdma;
-				pf->num_lan_msix = v_remain - v_min_rdma;
-			} else {
-				/* Split remaining MSIX with RDMA after
-				 * accounting for AEQ MSIX
-				 */
-				pf->num_rdma_msix = (v_remain - ICE_RDMA_NUM_AEQ_MSIX) / 2 +
-						    ICE_RDMA_NUM_AEQ_MSIX;
-				pf->num_lan_msix = v_remain - pf->num_rdma_msix;
-			}
+			ice_reduce_msix_usage(pf, v_remain);
 
 			dev_notice(dev, "Enabled %d MSI-X vectors for LAN traffic.\n",
 				   pf->num_lan_msix);
@@ -4080,12 +4102,7 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 
 msix_err:
 	devm_kfree(dev, pf->msix_entries);
-	goto exit_err;
 
-no_hw_vecs_left_err:
-	dev_err(dev, "not enough device MSI-X vectors. requested = %d, available = %d\n",
-		needed, v_left);
-	err = -ERANGE;
 exit_err:
 	pf->num_rdma_msix = 0;
 	pf->num_lan_msix = 0;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
