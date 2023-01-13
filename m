Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EAC66A612
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:38:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B363C82210;
	Fri, 13 Jan 2023 22:38:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B363C82210
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649510;
	bh=ut2O31YuQ6R4BsRUhsaEmBVNJo9UA8dsOIp6aZt39rY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pYv7wXxU37s4fbs+XxkgxMI/VCPP/jZoIdPRlu7erLa0PhEHSSmG/u72gKrpBbF2v
	 LAXywlcRFoXVFK/Z1N1MA8ifPEawmEG+IgEmwZcbs0YmTu+m4QB+XDIE3KkY9BncKc
	 34Njz6LcBQfc7VWjrdOi6dEZ64E/RWXsAQv7vbh6dNIdGJvTMQ6u/ZO6Ic22PPHVsR
	 ek0YSaO5+7EQEECFEw4FsF9ZxJgc17QoTRjWyVh5xkeOon0qC4urrmCLTBhh3N7fQZ
	 5gAdlURwlIh1BsMsiBLQbmXd/mh0bxAJLKcx2vmkYQ1rh6urOLdPdgOBtlnOJ8V4iI
	 3danZYR+8UJFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9D6DDbxXzcJ2; Fri, 13 Jan 2023 22:38:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0FE5821FF;
	Fri, 13 Jan 2023 22:38:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0FE5821FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 285C21BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F07E41B55
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F07E41B55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f9YO6FTfx2gY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B78941B5B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B78941B5B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354069"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354069"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859788"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859788"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:46 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:32 -0800
Message-Id: <20230113223735.2514364-11-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649466; x=1705185466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i61EP7Xtv5JZZoS7sgtOGnwgIyZ9g7zMU2sgDeKs8ZQ=;
 b=aQ/Ti4bZgtUgS7ckO7K+tCa1Uii3VVRfO1wc+1BOoQdqCFBSpN2RGAaf
 mmLc/jbkYWRL9X+dFuQJ5WmxEs/+YG1zs5xQsQuqqbJh4s/3Hvz2tAuJh
 01i+y9w6NGm2OZBfqGRwGQ78mcOPinEOn/afQqgkRCSpNbvHbmHEzNF5z
 MpLz8CaUYEB9GFIQ+oxH3/hhRUVlxs5aMyQtzcUX/bupIsIS8HDQObUtK
 YcgXAGfKB+jtzKRBHZEJkE/N4RJzC1stDnSTY0BUcGBupwjvy9xUhViFb
 32o6lsa8dq/q/clinJ4AdkZDcla3nTkzZMP8V3/eMgFim72eCf5sefD4h
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aQ/Ti4bZ
Subject: [Intel-wired-lan] [PATCH net-next 10/13] ice: convert vf_ops
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
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 22 ++++++---------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 31 ++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 +-
 3 files changed, 40 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 6f46d23ac382..fb9fbff56332 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -752,23 +752,19 @@ static void ice_sriov_clear_reset_trigger(struct ice_vf *vf)
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
@@ -790,7 +786,7 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
 	.trigger_reset_register = ice_sriov_trigger_reset_register,
 	.poll_reset_status = ice_sriov_poll_reset_status,
 	.clear_reset_trigger = ice_sriov_clear_reset_trigger,
-	.vsi_rebuild = ice_sriov_vsi_rebuild,
+	.create_vsi = ice_sriov_create_vsi,
 	.post_vsi_rebuild = ice_sriov_post_vsi_rebuild,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 12a5ac272874..7b48a116cd34 100644
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
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
