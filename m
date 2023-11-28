Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEFD7FC461
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 20:42:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8476D41798;
	Tue, 28 Nov 2023 19:42:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8476D41798
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701200551;
	bh=cHtY4aoszMN242O2E8+Z+zes2oe2DeQM9xF8oawMIzo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=asEjJ0QDZmyFl9U0KWIsqQXP7899VhCiTYhI3Dxt2Y/Tkh669LINRPzF96EbJGKNQ
	 ecaRXRHEwVGgcJwAt6ccYE02rgRVgi8jRmDd3NEkU/L8rU/KOASw4rc+KVePqsIfdi
	 +Sl9Ex7ZzF+nzNF033+2t5u9HtKJq3OOZvMCznJV2vnoagwtt7vUGfzSFAsmMn3Mp9
	 vI6Dd0iAnidePDZ8j0sQ88vwUY6d7zCN01oAWQDVA6UwKJiYI5Zz5KK6HOk9D7klgx
	 TREyrJYLbLbTDVQa90wICRe/EA04WWRR37SHkAV/m4MFfvgIuaqhl/cJFK113nh5Gz
	 CJm4iRMupcA5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0xnkEDF2tycL; Tue, 28 Nov 2023 19:42:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6A8341797;
	Tue, 28 Nov 2023 19:42:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6A8341797
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81D131BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 19:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65E4D81754
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 19:42:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65E4D81754
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X9yTx-4Zngs6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 19:42:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 046E581450
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 19:42:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 046E581450
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="378032425"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="378032425"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 11:42:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="839168831"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="839168831"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 11:42:21 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 28 Nov 2023 11:42:15 -0800
Message-ID: <20231128194215.3318925-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701200544; x=1732736544;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XGQsFy47nu1V6F1JAufrU6gqi+hA6gvIlwVTNR+wjU0=;
 b=Flbo8tHJonYAcIB+kFu1z9bIYFUkI4DYemcGyJvpL2LBACUWEC4aI2yG
 p4hZLIHWXoQd1jUo5ecal5Al8WRgKnxTwA05g2yiKRlRLGQPJcE44tx+i
 4atPy0H98WmnS+2oZzUG6eXWq8vZOcFsI4K+peOpWlZxKhFaJFbaWb4qr
 9cWjDQxyljQu3fFzVOSegUaXdkqRXVCk/tBiE7lzfH7requdxV1SZD3XH
 QsN+s+4Mb8ZrRVWwTkZBdNdoh1VII/dY05GSgQJgZtn9YI0M19xqUInDU
 yLPtcRu/+DvjXPjGBRZDrdeZlbjepo092ag2nVOsatLQjk5i+Q0Jed1fr
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Flbo8tHJ
Subject: [Intel-wired-lan] [PATCH iwl-next v4] ice: replace
 ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Buchocki <jakubx.buchocki@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_vf_create_vsi() function and its VF ops helper introduced by commit
a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to .create_vsi") are used
during an individual VF reset to re-create the VSI. This was done in order
to ensure that the VSI gets properly reconfigured within the hardware.

This is somewhat heavy handed as we completely release the VSI memory and
structure, and then create a new VSI. This can also potentially force a
change of the VSI index as we will re-use the first open slot in the VSI
array which may not be the same.

As part of implementing devlink reload, commit 6624e780a577 ("ice: split
ice_vsi_setup into smaller functions") split VSI setup into smaller
functions, introducing both ice_vsi_cfg() and ice_vsi_decfg() which can be
used to configure or deconfigure an existing software VSI structure.

Rather than completely removing the VSI and adding a new one using the
.create_vsi() VF operation, simply use ice_vsi_decfg() to remove the
current configuration. Save the VSI type and then call ice_vsi_cfg() to
reconfigure the VSI as the same type that it was before.

The existing reset logic assumes that all hardware filters will be removed,
so also call ice_fltr_remove_all() before re-configuring the VSI.

This new operation does not re-create the VSI, so rename it to
ice_vf_reconfig_vsi().

The new approach can safely share the exact same flow for both SR-IOV VFs
as well as the Scalable IOV VFs being worked on. This uses less code and is
a better abstraction over fully deleting the VSI and adding a new one.

Fixes: a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to .create_vsi")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v3:
* Removal of filters was a side effect of VSI being fully deleted by
  firmware. Since we don't do that now, it was not happening. Fix this by
  adding a call to ice_fltr_remove_all(). Thanks to Jakub Buchocki for
  figuring out this solution.
* Rebase on to current dev-queue.

v3 was posted at https://lore.kernel.org/intel-wired-lan/20230712222936.1048751-1-jacob.e.keller@intel.com/
v2 was posted at https://lore.kernel.org/intel-wired-lan/20230712204730.326331-1-jacob.e.keller@intel.com/
v1 was posted at https://lore.kernel.org/intel-wired-lan/20230504211829.3869868-1-jacob.e.keller@intel.com/


 drivers/net/ethernet/intel/ice/ice_sriov.c    | 24 ++-----------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 35 +++++++++++++------
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 -
 .../ethernet/intel/ice/ice_vf_lib_private.h   |  1 +
 4 files changed, 28 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 4ee349fe6409..a94a1c48c3de 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -761,24 +761,6 @@ static void ice_sriov_clear_reset_trigger(struct ice_vf *vf)
 	ice_flush(hw);
 }
 
-/**
- * ice_sriov_create_vsi - Create a new VSI for a VF
- * @vf: VF to create the VSI for
- *
- * This is called by ice_vf_recreate_vsi to create the new VSI after the old
- * VSI has been released.
- */
-static int ice_sriov_create_vsi(struct ice_vf *vf)
-{
-	struct ice_vsi *vsi;
-
-	vsi = ice_vf_vsi_setup(vf);
-	if (!vsi)
-		return -ENOMEM;
-
-	return 0;
-}
-
 /**
  * ice_sriov_post_vsi_rebuild - tasks to do after the VF's VSI have been rebuilt
  * @vf: VF to perform tasks on
@@ -798,7 +780,6 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
 	.poll_reset_status = ice_sriov_poll_reset_status,
 	.clear_reset_trigger = ice_sriov_clear_reset_trigger,
 	.irq_close = NULL,
-	.create_vsi = ice_sriov_create_vsi,
 	.post_vsi_rebuild = ice_sriov_post_vsi_rebuild,
 };
 
@@ -1141,8 +1122,7 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	if (vf->first_vector_idx < 0)
 		goto unroll;
 
-	ice_vf_vsi_release(vf);
-	if (vf->vf_ops->create_vsi(vf)) {
+	if (ice_vf_reconfig_vsi(vf)) {
 		/* Try to rebuild with previous values */
 		needs_rebuild = true;
 		goto unroll;
@@ -1169,7 +1149,7 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 		return -EINVAL;
 
 	if (needs_rebuild)
-		vf->vf_ops->create_vsi(vf);
+		ice_vf_reconfig_vsi(vf);
 
 	ice_ena_vf_mappings(vf);
 	ice_put_vf(vf);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index d6f74513b495..2ffdae9a82df 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -248,29 +248,44 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 }
 
 /**
- * ice_vf_recreate_vsi - Release and re-create the VF's VSI
- * @vf: VF to recreate the VSI for
+ * ice_vf_reconfig_vsi - Reconfigure a VF VSI with the device
+ * @vf: VF to reconfigure the VSI for
  *
- * This is only called when a single VF is being reset (i.e. VVF, VFLR, host
- * VF configuration change, etc)
+ * This is called when a single VF is being reset (i.e. VVF, VFLR, host VF
+ * configuration change, etc).
  *
- * It releases and then re-creates a new VSI.
+ * It brings the VSI down and then reconfigures it with the hardware.
  */
-static int ice_vf_recreate_vsi(struct ice_vf *vf)
+int ice_vf_reconfig_vsi(struct ice_vf *vf)
 {
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	struct ice_vsi_cfg_params params = {};
 	struct ice_pf *pf = vf->pf;
 	int err;
 
-	ice_vf_vsi_release(vf);
+	if (WARN_ON(!vsi))
+		return -EINVAL;
 
-	err = vf->vf_ops->create_vsi(vf);
+	params = ice_vsi_to_params(vsi);
+	params.flags = ICE_VSI_FLAG_NO_INIT;
+
+	ice_vsi_decfg(vsi);
+	ice_fltr_remove_all(vsi);
+
+	err = ice_vsi_cfg(vsi, &params);
 	if (err) {
 		dev_err(ice_pf_to_dev(pf),
-			"Failed to recreate the VF%u's VSI, error %d\n",
+			"Failed to reconfigure the VF%u's VSI, error %d\n",
 			vf->vf_id, err);
 		return err;
 	}
 
+	/* Update the lan_vsi_num field since it might have been changed. The
+	 * PF lan_vsi_idx number remains the same so we don't need to change
+	 * that.
+	 */
+	vf->lan_vsi_num = vsi->vsi_num;
+
 	return 0;
 }
 
@@ -928,7 +943,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 
 	ice_vf_pre_vsi_rebuild(vf);
 
-	if (ice_vf_recreate_vsi(vf)) {
+	if (ice_vf_reconfig_vsi(vf)) {
 		dev_err(dev, "Failed to release and setup the VF%u's VSI\n",
 			vf->vf_id);
 		err = -EFAULT;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 35866553f288..0cc9034065c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -62,7 +62,6 @@ struct ice_vf_ops {
 	bool (*poll_reset_status)(struct ice_vf *vf);
 	void (*clear_reset_trigger)(struct ice_vf *vf);
 	void (*irq_close)(struct ice_vf *vf);
-	int (*create_vsi)(struct ice_vf *vf);
 	void (*post_vsi_rebuild)(struct ice_vf *vf);
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index 0c7e77c0a09f..91ba7fe0eaee 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -23,6 +23,7 @@
 #warning "Only include ice_vf_lib_private.h in CONFIG_PCI_IOV virtualization files"
 #endif
 
+int ice_vf_reconfig_vsi(struct ice_vf *vf);
 void ice_initialize_vf_entry(struct ice_vf *vf);
 void ice_dis_vf_qs(struct ice_vf *vf);
 int ice_check_vf_init(struct ice_vf *vf);

base-commit: 0392e4d0c1cd583c079a18685cd308f8ce903793
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
