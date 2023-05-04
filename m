Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBBE6F77EF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 May 2023 23:19:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61BF44015E;
	Thu,  4 May 2023 21:19:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61BF44015E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683235166;
	bh=FE9bCK93E+k67ycvqgdE17ZIV3fF4Cd8xMa9tROl09A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Kk2424rdFSRkNecGftMOkvb0oeXo+Q+j5lI/s5Wv0PlVNsvk+v0JEgpbxcbhEhqAD
	 PZAcjLifIdPNsggbKw/eNbWG5u6QWdmSrqNq4lN0PCXXiCTCUUN1gXZPqk774aI9zt
	 9ADy53EZRjeE3H1lFWsIkGfl5j7cLTT+ULFvCvSo9UczGECMTyV+To2A54DXWoTL4N
	 b4ARWoaT88DSxUyI/w91qTDz/QI8kLQVv52ba9dMw047C4KqPBXGEM7LCzDM9e3Xyc
	 /baB7Ro2eW+dcCxsAnVqGfSkN1fXuLDtEmqcUQQQcfSML2iZbodvSlpj4ORgzFLF3Z
	 j+DP1V1B3HkTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dgC7338r1zRv; Thu,  4 May 2023 21:19:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9021402F6;
	Thu,  4 May 2023 21:19:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9021402F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 514181BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 21:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2729340905
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 21:19:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2729340905
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xPY8V7ngU-wL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 21:19:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACB11408EA
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ACB11408EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 21:19:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="414582363"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="414582363"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 14:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="841368457"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="841368457"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 14:19:17 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  4 May 2023 14:18:30 -0700
Message-ID: <20230504211829.3869868-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683235158; x=1714771158;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UqBPcFtKBgvoNfkX3+88OyrJMDouCNuSclgNxDBZhCM=;
 b=QUm5HFqAaDewC3W/702pI9HwzNRFXGqBUQ1eetzTlgc3+DN82KL45WCF
 LNmQj44Slu8drj5xAfTHwRi2G+9hA5mO5H0SwoGM6S/p5nSGo8H5Y9O3L
 q/50TZ7Zr8FoeWnu8HClkkAENhS1OgaBcQaZoHN3h4RFK8lq+IYbCvqkv
 CrT6NNlty8KGNGdBi+tb+MMqqOeawZUpzhx2GckJN8jbhcJuJIUqeoaG6
 xgrN/DIn6q7bWCN2pAATtUpi2n16mFfmQ55RpSaI77nGZeyOLUQx4sAGP
 RuJ3ZlZrYCcZhLHVc7erlf6PBH40KU1ej/07kn0GZW3L3IMbhNsRf+oN7
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QUm5HFqA
Subject: [Intel-wired-lan] [iwl-next] ice: replace ice_vf_recreate_vsi()
 with ice_vf_reconfig_vsi()
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
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
reconfigure the VSI as the same type that it was before. Since this might
update the hardware VSI number, we also must update the vf->lan_vsi_num
field to match.

This new operation does not re-create the VSI, so rename it to
ice_vf_reconfig_vsi().

The new approach can safely share the exact same flow for both SR-IOV VFs
as well as the Scalable IOV VFs being worked on. This uses less code and is
a better abstraction over fully deleting the VSI and adding a new one.

Fixes: a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to .create_vsi")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 19 ------------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 34 +++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 -
 3 files changed, 24 insertions(+), 30 deletions(-)

I found a better way to handle VSI rebuild that will better support Scalable
IOV.

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 687740bff073..9788f363e9dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -733,24 +733,6 @@ static void ice_sriov_clear_reset_trigger(struct ice_vf *vf)
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
@@ -770,7 +752,6 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
 	.poll_reset_status = ice_sriov_poll_reset_status,
 	.clear_reset_trigger = ice_sriov_clear_reset_trigger,
 	.irq_close = NULL,
-	.create_vsi = ice_sriov_create_vsi,
 	.post_vsi_rebuild = ice_sriov_post_vsi_rebuild,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index b26ce4425f45..0edb2e2ec681 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -265,29 +265,43 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
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
+static int ice_vf_reconfig_vsi(struct ice_vf *vf)
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
+	params.flags = ICE_VSI_FLAG_INIT;
+
+	ice_vsi_decfg(vsi);
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
 
@@ -699,7 +713,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 
 	ice_vf_pre_vsi_rebuild(vf);
 
-	if (ice_vf_recreate_vsi(vf)) {
+	if (ice_vf_reconfig_vsi(vf)) {
 		dev_err(dev, "Failed to release and setup the VF%u's VSI\n",
 			vf->vf_id);
 		err = -EFAULT;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 67172fdd9bc2..ad648009a238 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -62,7 +62,6 @@ struct ice_vf_ops {
 	bool (*poll_reset_status)(struct ice_vf *vf);
 	void (*clear_reset_trigger)(struct ice_vf *vf);
 	void (*irq_close)(struct ice_vf *vf);
-	int (*create_vsi)(struct ice_vf *vf);
 	void (*post_vsi_rebuild)(struct ice_vf *vf);
 };
 

base-commit: 160517a6c63ee745114d31062aae038e5ede85ab
-- 
2.40.0.471.gbd7f14d9353b

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
