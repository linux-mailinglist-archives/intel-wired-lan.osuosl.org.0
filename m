Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C91B75138A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 00:29:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CC6882093;
	Wed, 12 Jul 2023 22:29:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CC6882093
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689200990;
	bh=HlzctKhhMVBij33X3t2/H3B91Pvt9/znqW8C8nlW29U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8JQnDWR4imHH7NzipwTZbgqo+o6SyB3Dw31Jxsme3k1aYzF3UhlESlMQkT4W+keRM
	 v4cuiF0G7BQMdXhh3eKp44oghQC/iyeeo3T6W6HnfWi+r4LdhOnkKXmoB0jE7NyGU3
	 uBZjrSe87chuI7A6GS6aVcIjhi3s5EybmATFZxbb62xmbPr68nlRZ+QzQbaosIUAvR
	 x8r4J5lNsmetyndD9AwoqObEnyJvw7nqgsr+uPTOBJnwKUfAY30F1CzdEZiAkXvwg2
	 ovaWi+YYrHzPF5Wl96r2iMo0ukV+UuFwkK0ko5LrgCHXdjFZaVFD+GmITNW2Hwx5Wq
	 5tJwHYlUtejbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gMheSz3aJjWt; Wed, 12 Jul 2023 22:29:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9482181FC1;
	Wed, 12 Jul 2023 22:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9482181FC1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FB8A1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 22:29:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EBD98611FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 22:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBD98611FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ddpHq8Rneg06 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 22:29:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68E1C60BF0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 68E1C60BF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 22:29:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="349876726"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="349876726"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 15:29:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="791772214"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="791772214"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 15:29:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 12 Jul 2023 15:29:36 -0700
Message-ID: <20230712222936.1048751-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689200982; x=1720736982;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9zsTWFymOcYeJtyfGpGMScRDRzdqprXtyJEpGa9jY+w=;
 b=oDlzlBU/eRqRhg2WW67gDYQMnaiIW7ncNhiS5Tw795jGZ4oqDmJtlbaN
 /xfXOaoHsBPr0vAyCWfRSmdYjZrWM8RkMR9cVXAk7fSy3pdL6qV1Af7Kx
 TTiMNAJNTOrKfcsSXP7uDhHjdXYXcUDkJr9Q0+hdWZSbL7QrEaI8fzdsu
 7aMlfoi8CdD2Lhr/3re+5MK9Tzg/cbgbtN9Kd4B22lydq3jHj1R3P0LyG
 /iYtnCTeYI4Z05EmCF3KtUXPeKi1/W4r130qwHgZa64OKNgVzSNj2of3b
 JmejkfpZzPbifIYBZMWYRbja5YjEFrs9V29Zx9b+kEarnFYoQvZO5mO9A
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oDlzlBU/
Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: replace
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
Cc: przemyslaw.kitszel@intel.com
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

Instead of completely removing the VSI and adding a new one with the
.create_vsi() VF operation, simply perform a reconfiguration of the VSI to
configure its new parameters.

Call ice_vsi_decfg() to remove current VSI configuration data. Call
ice_vsi_cfg() to reconfigure the VSI with all new configuration to match
the modified VF configuration data.

This *does not* remove the VSI from the hardware tables, as that only
happens if the VSI is actually fully removed via the ice_free_vsi()
function. ice_vsi_decfg() only deconfigures but does not remove the VSI
from the switch tables completely.

This new operation does not re-create the VSI, so rename it to
ice_vf_reconfig_vsi().

The new approach can safely share the exact same flow for both SR-IOV VFs
as well as the Scalable IOV VFs being worked on. This uses less code, is a
better abstraction, and is less invasive than the previous remove and
re-add cycle.

Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v2:
* Switch to ICE_VSI_FLAG_NO_INIT to avoid leaking the VSI in firwmare
* Remove now unnecessary update of the VSI number

Thanks to Michal for pointing this out and suggesting the fix. I've added
him as Co-developed-by for that reason.

 drivers/net/ethernet/intel/ice/ice_sriov.c  | 19 --------------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 28 +++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 -
 3 files changed, 18 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 1f66914c7a20..ab96a5596d09 100644
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
index b26ce4425f45..5fcb48c2dda4 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -265,25 +265,33 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
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
+	params.flags = ICE_VSI_FLAG_NO_INIT;
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
@@ -699,7 +707,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 
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
 

base-commit: 8d5bc02673a4fa9f5db4e9e949f41cfc68ae1758
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
