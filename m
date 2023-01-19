Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B63672DF3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E886A40C31;
	Thu, 19 Jan 2023 01:17:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E886A40C31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091053;
	bh=WUHYTFQ6mqgLFbkhFwcpkX8aqkkenghhRCNxMgFAzMA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XZqrqdmdK2h7Qkfg+9gTK3DwSydO5WCSfKOisqeBwhELZyxL6+a5QFQD/OlN6nhzW
	 etcCfDrLnuFlFDD9b4r34eefoxfxCFUkmTqQTokHgn5138rbHI+VHXT2MatvZwkRjU
	 gXyfcLrxOHy7j6dG0+YZ1lH1RNEQQ+3RYAuRbX01NtT+vDK3TkZEi59kF6dcUVtz0L
	 pqYJcMqeQYB9XYed8WbXz3adNBOtQJ1/qEnbHwSCqMNyti9D86faZU2wXAAXszLuki
	 5c/rWnmtrdiG7qzDkrF6cuu6MIeKclrE8ST6GvmpAlsnQ5/VmTKNl+Wtk95Oa3/XHD
	 oYpPamKZHy0xQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eu4x749RIL4H; Thu, 19 Jan 2023 01:17:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C684740C30;
	Thu, 19 Jan 2023 01:17:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C684740C30
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 582731BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C13724191E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C13724191E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mdesscprvilx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2513641924
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2513641924
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840728"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840728"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881880"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881880"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:48 -0800
Message-Id: <20230119011653.311675-9-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091025; x=1705627025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e0S7SX40nqcYkl2B2fk0IMmym40otqXNOAG5SH+NYWM=;
 b=ZWJ88JvY1wOpZnEd0Ss7CLq2/302tSyb8JRMmxjqGLZNuOeNWcFbk8IR
 Tei75x/aE5CxUUJWTJbMa8GYUgKAD8kaC6pq61OuaEto3gwQcw6CoOR9q
 zI9eOH6zR1iQ/i3awfIBg2wtzyKAcAbKZ1FuvQVrTYzQgF97lERx6tTPI
 nFN18zM5+JNnDBVee6SnrROsNcmos/9etPGM9C/rbzuadEOwCkyxT6jh3
 n/AHWqPSg4zzbeoJkKplhXz6qK9If/ipW2ZhyeW8RxABLorgbdcJMyBBJ
 J4ymsVyUU1gWmrOJxl7qEht8aaXMhECN+7CaNEtVRfAUQ2HfVthbPq7QN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZWJ88JvY
Subject: [Intel-wired-lan] [PATCH net-next v2 08/13] ice: add a function to
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Harshitha Ramamurthy <harshitha.ramamurthy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some of the initialization code for Single Root IOV VFs will need to be
reused when we introduce Scalable IOV. Pull this code out into a new
ice_initialize_vf_entry helper function.

Co-developed-by: Harshitha Ramamurthy <harshitha.ramamurthy@intel.com>
Signed-off-by: Harshitha Ramamurthy <harshitha.ramamurthy@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1:
* Added Harshitha's Co-developed-by and Signed-off-by

Note that this patch was originally authored by Harshitha internally, but
she no longer works for Intel. I took over authorship with her blessing.
I've added her Co-developed-by to indicate authorship, but her @intel.com
address is no longer valid.

I did not think it right to have her be the "From:" address since she will
not be responsible for addressing feedback.

 drivers/net/ethernet/intel/ice/ice_sriov.c    | 16 ++----------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 26 +++++++++++++++++++
 .../ethernet/intel/ice/ice_vf_lib_private.h   |  1 +
 3 files changed, 29 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 6ff29be974c5..6c07f661d44c 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -867,21 +867,9 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
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
index 624c7de8b205..b6fd1e852968 100644
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
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
