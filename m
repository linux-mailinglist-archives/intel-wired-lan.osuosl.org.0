Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E88672DF5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85845821E1;
	Thu, 19 Jan 2023 01:17:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85845821E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091061;
	bh=7tLYupFmMh2b2CyDF2h3GUBadu6jyDoFXZOw76zQSmo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vY7SGh4NNEIKFWBjjxICgEL3BOTrF+DTGyiZygZiZQzab+9oDLiR/J7/0yPhJJmnW
	 N+SCI7mlIdJRCfllUKfs7XaXC4xuCLkaWOdbcOaU1eotlSI0xM5ImRr6gBtqf+gpr8
	 BUntvbkxq7YTEntB9vvPFy9dakX9goWzyhxFYfQ8xvLVii4CwyzZe4iu+0xApP46BL
	 k38saooubUW+g6YVB/+VQ59K44nG1vlyBedue9RBp+A2qvAQoDu6vSNlpP/wqJgJ0K
	 Zrgz7zVhnujid/eIo6331XFZjfmHcG07AIpV74HL+efDS2MOKrRq0dKXL8/X2eSejP
	 5CbinrOWFnwIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dhNE2prkkG27; Thu, 19 Jan 2023 01:17:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FEDE821BA;
	Thu, 19 Jan 2023 01:17:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FEDE821BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79AEF1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 328664190C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 328664190C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C7FrmLy8Gzag for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BE8041928
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4BE8041928
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840730"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840730"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881886"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881886"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:50 -0800
Message-Id: <20230119011653.311675-11-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091025; x=1705627025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KePIqH0PYw5Wc/ceCRUohBRf+eXr+hqCnAfQrILFRj4=;
 b=RTTIBAeSJf27L4SwcjyVP2qskQYwDIUFkXFYFj56ozmwis/DogHmVymR
 3Jhedvj6ArTC+22eQb7ZKGFpF+mtNTvHhH+20jZY5/ESO6QjwZQ0jdvlK
 ECzHtaoF5FL4pKIz4krTNwlFl0Zb/tTReAD3GRMxBq+I6aa/EU2Yp0fQT
 S6MrvaXCYQs0Y9TE+js23BnkcX/dul0jDanSi0ATCfRNhv039L2hfadVH
 MWkVgvn7M9U9iGwua7kWZ2F+Oqlnj7Xs5eTsV68pGsKzZwbbxmWOWy9Ju
 ZNa2PqWXIvOvagBYfCi6VWhMEmpV/foDWB5OMS+k70wyST6WsGyZJdbhf
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RTTIBAeS
Subject: [Intel-wired-lan] [PATCH net-next v2 10/13] ice: convert vf_ops
 .vsi_rebuild to .create_vsi
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

The .vsi_rebuild function exists for ice_reset_vf. It is used to release
and re-create the VSI during a single-VF reset.

This function is only called when we need to re-create the VSI, and not
when rebuilding an existing VSI. This makes the single-VF reset process
different from the process used to restore functionality after a
hardware reset such as the PF reset or EMP reset.

When we add support for Scalable IOV VFs, the implementation will be very
similar. The primary difference will be in the fact that each VF type uses
a different underlying VSI type in hardware.

Move the common functionality into a new ice_vf_recreate VSI function. This
will allow the two IOV paths to share this functionality. Rework the
.vsi_rebuild vf_op into .create_vsi, only performing the task of creating a
new VSI.

This creates a nice dichotomy between the ice_vf_rebuild_vsi and
ice_vf_recreate_vsi, and should make it more clear why the two flows atre
distinct.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
No changes since v1.

 drivers/net/ethernet/intel/ice/ice_sriov.c  | 22 ++++++---------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 31 ++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 +-
 3 files changed, 40 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 5450fa122729..46088c05d485 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -757,23 +757,19 @@ static void ice_sriov_clear_reset_trigger(struct ice_vf *vf)
 }
 
 /**
- * ice_sriov_vsi_rebuild - release and rebuild VF's VSI
- * @vf: VF to release and setup the VSI for
+ * ice_sriov_create_vsi - Create a new VSI for a VF
+ * @vf: VF to create the VSI for
  *
- * This is only called when a single VF is being reset (i.e. VFR, VFLR, host VF
- * configuration change, etc.).
+ * This is called by ice_vf_recreate_vsi to create the new VSI after the old
+ * VSI has been released.
  */
-static int ice_sriov_vsi_rebuild(struct ice_vf *vf)
+static int ice_sriov_create_vsi(struct ice_vf *vf)
 {
-	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *vsi;
 
-	ice_vf_vsi_release(vf);
-	if (!ice_vf_vsi_setup(vf)) {
-		dev_err(ice_pf_to_dev(pf),
-			"Failed to release and setup the VF%u's VSI\n",
-			vf->vf_id);
+	vsi = ice_vf_vsi_setup(vf);
+	if (!vsi)
 		return -ENOMEM;
-	}
 
 	return 0;
 }
@@ -795,7 +791,7 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
 	.trigger_reset_register = ice_sriov_trigger_reset_register,
 	.poll_reset_status = ice_sriov_poll_reset_status,
 	.clear_reset_trigger = ice_sriov_clear_reset_trigger,
-	.vsi_rebuild = ice_sriov_vsi_rebuild,
+	.create_vsi = ice_sriov_create_vsi,
 	.post_vsi_rebuild = ice_sriov_post_vsi_rebuild,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index c93d24fee60d..1a5d64454f99 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -241,12 +241,41 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 	vf->vf_ops->clear_reset_trigger(vf);
 }
 
+/**
+ * ice_vf_recreate_vsi - Release and re-create the VF's VSI
+ * @vf: VF to recreate the VSI for
+ *
+ * This is only called when a single VF is being reset (i.e. VVF, VFLR, host
+ * VF configuration change, etc)
+ *
+ * It releases and then re-creates a new VSI.
+ */
+static int ice_vf_recreate_vsi(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+	int err;
+
+	ice_vf_vsi_release(vf);
+
+	err = vf->vf_ops->create_vsi(vf);
+	if (err) {
+		dev_err(ice_pf_to_dev(pf),
+			"Failed to recreate the VF%u's VSI, error %d\n",
+			vf->vf_id, err);
+		return err;
+	}
+
+	return 0;
+}
+
 /**
  * ice_vf_rebuild_vsi - rebuild the VF's VSI
  * @vf: VF to rebuild the VSI for
  *
  * This is only called when all VF(s) are being reset (i.e. PCIe Reset on the
  * host, PFR, CORER, etc.).
+ *
+ * It reprograms the VSI configuration back into hardware.
  */
 static int ice_vf_rebuild_vsi(struct ice_vf *vf)
 {
@@ -654,7 +683,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 
 	ice_vf_pre_vsi_rebuild(vf);
 
-	if (vf->vf_ops->vsi_rebuild(vf)) {
+	if (ice_vf_recreate_vsi(vf)) {
 		dev_err(dev, "Failed to release and setup the VF%u's VSI\n",
 			vf->vf_id);
 		err = -EFAULT;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 52bd9a3816bf..e3d94f3ca40d 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -60,7 +60,7 @@ struct ice_vf_ops {
 	void (*trigger_reset_register)(struct ice_vf *vf, bool is_vflr);
 	bool (*poll_reset_status)(struct ice_vf *vf);
 	void (*clear_reset_trigger)(struct ice_vf *vf);
-	int (*vsi_rebuild)(struct ice_vf *vf);
+	int (*create_vsi)(struct ice_vf *vf);
 	void (*post_vsi_rebuild)(struct ice_vf *vf);
 };
 
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
