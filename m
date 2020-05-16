Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B941D5D68
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 713C9881C1;
	Sat, 16 May 2020 00:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ODSFm8R_X6lF; Sat, 16 May 2020 00:54:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 236BB881F0;
	Sat, 16 May 2020 00:54:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 079431BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 03B3587F7D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FhRUEQlOVTnw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:53:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6694187F8B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:55 +0000 (UTC)
IronPort-SDR: pjIID0CvCBA9zgZXGRXA3aT4/2+Bj30bI9aBIUJxmwSn8fuBsNEfhaXa8z66/iE7ZhWMkkZIxc
 XSa9kDnlC1EQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:53:54 -0700
IronPort-SDR: THBDh1KHljG+FhxSlYRPrJoICxyeM+DjUg7Ea3uwi9pmbKhp6lVSUfLjKkREsdQIZNY1k2ovY+
 pX2fJcZtj93A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="263360538"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 17:53:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:51:08 -0700
Message-Id: <20200516005121.4963-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S45 02/15] ice: Simplify
 ice_sriov_configure
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

Add a new function for checking if SR-IOV can be configured based on
the PF and/or device's state/capabilities. Also, simplify the flow in
ice_sriov_configure().

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 72 ++++++++++++-------
 1 file changed, 48 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 8547eaaa7e40..5d6f23cf0c1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1435,6 +1435,8 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
  * ice_pci_sriov_ena - Enable or change number of VFs
  * @pf: pointer to the PF structure
  * @num_vfs: number of VFs to allocate
+ *
+ * Returns 0 on success and negative on failure
  */
 static int ice_pci_sriov_ena(struct ice_pf *pf, int num_vfs)
 {
@@ -1442,20 +1444,10 @@ static int ice_pci_sriov_ena(struct ice_pf *pf, int num_vfs)
 	struct device *dev = ice_pf_to_dev(pf);
 	int err;
 
-	if (!ice_pf_state_is_nominal(pf)) {
-		dev_err(dev, "Cannot enable SR-IOV, device not ready\n");
-		return -EBUSY;
-	}
-
-	if (!test_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags)) {
-		dev_err(dev, "This device is not capable of SR-IOV\n");
-		return -EOPNOTSUPP;
-	}
-
 	if (pre_existing_vfs && pre_existing_vfs != num_vfs)
 		ice_free_vfs(pf);
 	else if (pre_existing_vfs && pre_existing_vfs == num_vfs)
-		return num_vfs;
+		return 0;
 
 	if (num_vfs > pf->num_vfs_supported) {
 		dev_err(dev, "Can't enable %d VFs, max VFs supported is %d\n",
@@ -1471,37 +1463,69 @@ static int ice_pci_sriov_ena(struct ice_pf *pf, int num_vfs)
 	}
 
 	set_bit(ICE_FLAG_SRIOV_ENA, pf->flags);
-	return num_vfs;
+	return 0;
+}
+
+/**
+ * ice_check_sriov_allowed - check if SR-IOV is allowed based on various checks
+ * @pf: PF to enabled SR-IOV on
+ */
+static int ice_check_sriov_allowed(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+
+	if (!test_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags)) {
+		dev_err(dev, "This device is not capable of SR-IOV\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (ice_is_safe_mode(pf)) {
+		dev_err(dev, "SR-IOV cannot be configured - Device is in Safe Mode\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (!ice_pf_state_is_nominal(pf)) {
+		dev_err(dev, "Cannot enable SR-IOV, device not ready\n");
+		return -EBUSY;
+	}
+
+	return 0;
 }
 
 /**
  * ice_sriov_configure - Enable or change number of VFs via sysfs
  * @pdev: pointer to a pci_dev structure
- * @num_vfs: number of VFs to allocate
+ * @num_vfs: number of VFs to allocate or 0 to free VFs
  *
- * This function is called when the user updates the number of VFs in sysfs.
+ * This function is called when the user updates the number of VFs in sysfs. On
+ * success return whatever num_vfs was set to by the caller. Return negative on
+ * failure.
  */
 int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 {
 	struct ice_pf *pf = pci_get_drvdata(pdev);
 	struct device *dev = ice_pf_to_dev(pf);
+	int err;
 
-	if (ice_is_safe_mode(pf)) {
-		dev_err(dev, "SR-IOV cannot be configured - Device is in Safe Mode\n");
-		return -EOPNOTSUPP;
-	}
+	err = ice_check_sriov_allowed(pf);
+	if (err)
+		return err;
 
-	if (num_vfs)
-		return ice_pci_sriov_ena(pf, num_vfs);
+	if (!num_vfs) {
+		if (!pci_vfs_assigned(pdev)) {
+			ice_free_vfs(pf);
+			return 0;
+		}
 
-	if (!pci_vfs_assigned(pdev)) {
-		ice_free_vfs(pf);
-	} else {
 		dev_err(dev, "can't free VFs because some are assigned to VMs.\n");
 		return -EBUSY;
 	}
 
-	return 0;
+	err = ice_pci_sriov_ena(pf, num_vfs);
+	if (err)
+		return err;
+
+	return num_vfs;
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
