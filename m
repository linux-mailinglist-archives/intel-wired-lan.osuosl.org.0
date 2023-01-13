Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 339E766A610
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:38:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE4DA4031E;
	Fri, 13 Jan 2023 22:38:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE4DA4031E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649502;
	bh=Oiap3nap98iFIhJDDnHWUY3lQmRrEUJHbtX10uSd1sA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xg0nqE3AvKheE2x+YN4yMvFdcUtx9jdR1U0J90LkAWHVMkYuRNIPT3YvzDHoCF9u+
	 8znllK6+G6jSwI9+op+45h7l4dD3RQLoMZ7WsId+UdZFMcdgoAqVV8AcR5hn/xzxww
	 CdTZzOEsd7xgEuiqcU3l03U5lswDrceC9yPP5M+h0RljE+yaUD7Lr/8PcXRCHEOatD
	 7U/AfHjY5aOOyZENiZ1BApJpVQ3jFaePcwbPASd8s+HaKQhzimHCbvYdWpSksh8Vm2
	 G4xg6VAh9JiFZRgFqs8rQAShWkqo5C7cHQZ7EeOJyck9EwbRQEnCs6mITJsctMR+Jw
	 FJ3e8qo3HWsSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RvhTN3TNzATc; Fri, 13 Jan 2023 22:38:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47255404BE;
	Fri, 13 Jan 2023 22:38:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47255404BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2095E1BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 006FF41B67
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 006FF41B67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tvZ6egVg3qtF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0275C41B5E
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0275C41B5E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354064"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354064"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859779"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859779"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:45 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:30 -0800
Message-Id: <20230113223735.2514364-9-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649466; x=1705185466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s4c5x1GMky3eMDsSWf1a0lAFMkBhytoNHwt/RlPddpc=;
 b=RLBFUIfNXmRkCzcXcIX6OFWuHSuAfHDcTr8iLr3lSwbDYAtM4FUqWboc
 68QB3bt7SkosbTeTLLRRV9VyKlr0+RrCZ6uFv98csu1c0cMkt0Vqaka/+
 n76UBIQIsHsN/vEikNA9cib+G+IJbJ5LS8U7K2LxLzkjGsN/cbNRP5eig
 MV95ED4AxRNkuaNPrMLGqs7tTTIqQxQ7qwx9xFPa+KKo0f6tVKtXFpvA1
 iUJs1Ojv6BERWa1gkZFS5IGGTVocB6gLvE/3Rc33NDyOczgrrpzMlG3i+
 5LH/4vtwXdaY44RUO7CboeFn2SoiHcGTHOR7uXhmDtrR1yGMv1fkcQ32X
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RLBFUIfN
Subject: [Intel-wired-lan] [PATCH net-next 08/13] ice: add a function to
 initialize vf entry
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

Some of the initialization code for Single Root IOV VFs will need to be
reused when we introduce Scalable IOV. Pull this code out into a new
ice_initialize_vf_entry helper function.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 16 ++----------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 26 +++++++++++++++++++
 .../ethernet/intel/ice/ice_vf_lib_private.h   |  1 +
 3 files changed, 29 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 34d52e1b6f05..834020ca7c71 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -862,21 +862,9 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
 		/* set sriov vf ops for VFs created during SRIOV flow */
 		vf->vf_ops = &ice_sriov_vf_ops;
 
+		ice_initialize_vf_entry(vf);
+
 		vf->vf_sw_id = pf->first_sw;
-		/* assign default capabilities */
-		vf->spoofchk = true;
-		vf->num_vf_qs = pf->vfs.num_qps_per;
-		ice_vc_set_default_allowlist(vf);
-
-		/* ctrl_vsi_idx will be set to a valid value only when VF
-		 * creates its first fdir rule.
-		 */
-		ice_vf_ctrl_invalidate_vsi(vf);
-		ice_vf_fdir_init(vf);
-
-		ice_virtchnl_set_dflt_ops(vf);
-
-		mutex_init(&vf->cfg_lock);
 
 		hash_add_rcu(vfs->table, &vf->entry, vf_id);
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index e64f2afe0850..151ffbcebf90 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -698,6 +698,32 @@ void ice_set_vf_state_qs_dis(struct ice_vf *vf)
 
 /* Private functions only accessed from other virtualization files */
 
+/**
+ * ice_initialize_vf_entry - Initialize a VF entry
+ * @vf: pointer to the VF structure
+ */
+void ice_initialize_vf_entry(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+	struct ice_vfs *vfs;
+
+	vfs = &pf->vfs;
+
+	/* assign default capabilities */
+	vf->spoofchk = true;
+	vf->num_vf_qs = vfs->num_qps_per;
+	ice_vc_set_default_allowlist(vf);
+	ice_virtchnl_set_dflt_ops(vf);
+
+	/* ctrl_vsi_idx will be set to a valid value only when iAVF
+	 * creates its first fdir rule.
+	 */
+	ice_vf_ctrl_invalidate_vsi(vf);
+	ice_vf_fdir_init(vf);
+
+	mutex_init(&vf->cfg_lock);
+}
+
 /**
  * ice_dis_vf_qs - Disable the VF queues
  * @vf: pointer to the VF structure
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index a0f204746f4e..552d1d02982d 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -23,6 +23,7 @@
 #warning "Only include ice_vf_lib_private.h in CONFIG_PCI_IOV virtualization files"
 #endif
 
+void ice_initialize_vf_entry(struct ice_vf *vf);
 void ice_dis_vf_qs(struct ice_vf *vf);
 int ice_check_vf_init(struct ice_vf *vf);
 enum virtchnl_status_code ice_err_to_virt_err(int err);
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
