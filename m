Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0E01D5D67
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70F0288717;
	Sat, 16 May 2020 00:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MhrnO3d4pNey; Sat, 16 May 2020 00:54:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB89F8948D;
	Sat, 16 May 2020 00:54:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3AA361BF9CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 379E387F7D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WHBuOBBaFO16 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:53:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F409B88018
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:55 +0000 (UTC)
IronPort-SDR: aHXsvtl94jpOshIuE3s5lDgYBEl8YoW/1PlsLxpSm1eJpa+VysJ1ttOaRdMriTYjYDi6uMgfOi
 F5br+xMhhDCg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:53:54 -0700
IronPort-SDR: agM6DLZ+hUIrh7dsJj37DfrdL54xVJiiRyHuRHjkCd76kc9VLRsCuEOcAdMsVImUPpUHMdsfn4
 sUp4L+zFeKNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="263360541"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 17:53:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:51:11 -0700
Message-Id: <20200516005121.4963-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S45 05/15] ice: Renaming and
 simplification in VF init path
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

Some function names weren't very clear and some portions of VF creation
could be moved into functions for clarity. Fix this by renaming some
functions and move pieces of code into clearly name functions.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 83 ++++++++++++-------
 1 file changed, 54 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 5b9f01f1f65b..d5c1c55f7ebc 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1469,16 +1469,56 @@ static int ice_start_vfs(struct ice_pf *pf)
 }
 
 /**
- * ice_alloc_vfs - Allocate and set up VFs resources
+ * ice_set_dflt_settings - set VF defaults during initialization/creation
+ * @pf: PF holding reference to all VFs for default configuration
+ */
+static void ice_set_dflt_settings_vfs(struct ice_pf *pf)
+{
+	int i;
+
+	ice_for_each_vf(pf, i) {
+		struct ice_vf *vf = &pf->vf[i];
+
+		vf->pf = pf;
+		vf->vf_id = i;
+		vf->vf_sw_id = pf->first_sw;
+		/* assign default capabilities */
+		set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vf->vf_caps);
+		vf->spoofchk = true;
+		vf->num_vf_qs = pf->num_qps_per_vf;
+	}
+}
+
+/**
+ * ice_alloc_vfs - allocate num_vfs in the PF structure
+ * @pf: PF to store the allocated VFs in
+ * @num_vfs: number of VFs to allocate
+ */
+static int ice_alloc_vfs(struct ice_pf *pf, int num_vfs)
+{
+	struct ice_vf *vfs;
+
+	vfs = devm_kcalloc(ice_pf_to_dev(pf), num_vfs, sizeof(*vfs),
+			   GFP_KERNEL);
+	if (!vfs)
+		return -ENOMEM;
+
+	pf->vf = vfs;
+	pf->num_alloc_vfs = num_vfs;
+
+	return 0;
+}
+
+/**
+ * ice_ena_vfs - enable VFs so they are ready to be used
  * @pf: pointer to the PF structure
- * @num_alloc_vfs: number of VFs to allocate
+ * @num_vfs: number of VFs to enable
  */
-static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
+static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	struct ice_vf *vfs;
-	int i, ret;
+	int ret;
 
 	/* Disable global interrupt 0 so we don't try to handle the VFLR. */
 	wr32(hw, GLINT_DYN_CTL(pf->oicr_idx),
@@ -1486,38 +1526,24 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
 	set_bit(__ICE_OICR_INTR_DIS, pf->state);
 	ice_flush(hw);
 
-	ret = pci_enable_sriov(pf->pdev, num_alloc_vfs);
+	ret = pci_enable_sriov(pf->pdev, num_vfs);
 	if (ret) {
 		pf->num_alloc_vfs = 0;
 		goto err_unroll_intr;
 	}
-	/* allocate memory */
-	vfs = devm_kcalloc(dev, num_alloc_vfs, sizeof(*vfs), GFP_KERNEL);
-	if (!vfs) {
-		ret = -ENOMEM;
+
+	ret = ice_alloc_vfs(pf, num_vfs);
+	if (ret)
 		goto err_pci_disable_sriov;
-	}
-	pf->vf = vfs;
-	pf->num_alloc_vfs = num_alloc_vfs;
 
 	if (ice_set_per_vf_res(pf)) {
 		dev_err(dev, "Not enough resources for %d VFs, try with fewer number of VFs\n",
-			num_alloc_vfs);
+			num_vfs);
 		ret = -ENOSPC;
 		goto err_unroll_sriov;
 	}
 
-	/* apply default profile */
-	ice_for_each_vf(pf, i) {
-		vfs[i].pf = pf;
-		vfs[i].vf_sw_id = pf->first_sw;
-		vfs[i].vf_id = i;
-
-		/* assign default capabilities */
-		set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vfs[i].vf_caps);
-		vfs[i].spoofchk = true;
-		vfs[i].num_vf_qs = pf->num_qps_per_vf;
-	}
+	ice_set_dflt_settings_vfs(pf);
 
 	if (ice_start_vfs(pf)) {
 		dev_err(dev, "Failed to start VF(s)\n");
@@ -1529,9 +1555,8 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
 	return 0;
 
 err_unroll_sriov:
+	devm_kfree(dev, pf->vf);
 	pf->vf = NULL;
-	devm_kfree(dev, vfs);
-	vfs = NULL;
 	pf->num_alloc_vfs = 0;
 err_pci_disable_sriov:
 	pci_disable_sriov(pf->pdev);
@@ -1566,8 +1591,8 @@ static int ice_pci_sriov_ena(struct ice_pf *pf, int num_vfs)
 		return -EOPNOTSUPP;
 	}
 
-	dev_info(dev, "Allocating %d VFs\n", num_vfs);
-	err = ice_alloc_vfs(pf, num_vfs);
+	dev_info(dev, "Enabling %d VFs\n", num_vfs);
+	err = ice_ena_vfs(pf, num_vfs);
 	if (err) {
 		dev_err(dev, "Failed to enable SR-IOV: %d\n", err);
 		return err;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
