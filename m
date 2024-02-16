Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F13885885A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 23:06:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4460421E0;
	Fri, 16 Feb 2024 22:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9-Ai9FLrjGne; Fri, 16 Feb 2024 22:06:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7B7442175
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708121215;
	bh=qt1jN6/qZEPR7SDK5S3ZJMqQfAa7oZnZdIaGmb9NGMs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UoKYCwnpMYI0hjNdS9W5yzn4K1mVv4wuw36s8jCLSjgGkYawxkeGGoCh/+FlOthNW
	 lHgUzowmrwyvNLJPYTTKfGVS/PjjnCvCo+7r4xH1hSeW1HsRxoRjpZaxkHyentcspx
	 iifctbbgr4mvkBocP3yX0oQajXbLwFGmuv2OPd+yEoGB+xuuvL2RTyj3Qlk+WAw7Z3
	 9b63ZnOzN3hIbmp9hmiSJvu8rdKUoTEyUTsqTEUdAsU7SevHaUsWFak0LJQitMI3do
	 B2iTN4kOY+z2I3SXRQ0T9UhVOZoiA50/XfG8TEH346bRuh5KwOr/Xt9e7QP/fOesGp
	 pR34IpQb0RNGw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7B7442175;
	Fri, 16 Feb 2024 22:06:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 113421BF25F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46B82840AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wGw66Hux1s6U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 22:06:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 67454840B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67454840B6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67454840B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="2134200"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="2134200"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 14:06:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="3983851"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 14:06:43 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 16 Feb 2024 14:06:37 -0800
Message-ID: <20240216220638.2558451-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240216220638.2558451-1-jacob.e.keller@intel.com>
References: <20240216220638.2558451-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708121205; x=1739657205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zKNwB9CzUIkc20Ma+N3yvKsBdraC+tQSm+kjQTnbOXA=;
 b=ZNPGL4pHiIE0hYfExO/AJ+uZbLhflyLxHmxt1EXyi0tMNs0yHvRJ+xIP
 4e4TCGw1fZlYH0A3/yq5xyjtOmpGYyGgSxGmdAZ50AFZikoBXfJQGbc4D
 3r3wWlmGcaPIkqJRChlIl9YO5I/8EzETkN8tt3rrpt2SosK2e+32BG1FB
 kYTsefnHQhZLYJm1xIV6zIlF6eA1LMFo0UWQ+D7ol0X6DaRqQ4n2dXuMI
 LAqXSbb3k3LRhKEOd79XKDlktMbfM9Fdtb//BQ4iogy/P/35p3Vq+Vni8
 KpUCV1Q9mMxIcd8uOBfW9Euhlj/LPXVrwqUZT9Xfn8KIVqg39ACpreDoF
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZNPGL4pH
Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: use relative VSI index
 for VFs instead of PF VSI number
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When initializing over virtchnl, the PF is required to pass a VSI ID to the
VF as part of its capabilities exchange. The VF driver reports this value
back to the PF in a variety of commands. The PF driver validates that this
value matches the value it sent to the VF.

Some hardware families such as the E700 series could use this value when
reading RSS registers or communicating directly with firmware over the
Admin Queue.

However, E800 series hardware does not support any of these interfaces and
the VF's only use for this value is to report it back to the PF. Thus,
there is no requirement that this value be an actual VSI ID value of any
kind.

The PF driver already does not trust that the VF sends it a real VSI ID.
The VSI structure is always looked up from the VF structure. The PF does
validate that the VSI ID provided matches a VSI associated with the VF, but
otherwise does not use the VSI ID for any purpose.

Instead of reporting the VSI number relative to the PF space, report a
fixed value of 1. When communicating with the VF over virtchnl, validate
that the VSI number is returned appropriately.

This avoids leaking information about the firmware of the PF state.
Currently the ice driver only supplies a VF with a single VSI. However, it
appears that virtchnl has some support for allowing multiple VSIs. I did
not attempt to implement this. However, space is left open to allow further
relative indexes if additional VSIs are provided in future feature
development. For this reason, keep the ice_vc_isvalid_vsi_id function in
place to allow extending it for multiple VSIs in the future.

This change will also simplify handling of live migration in a future
series. Since we no longer will provide a real VSI number to the VF, there
will be no need to keep track of this number when migrating to a new host.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 9 ++-------
 drivers/net/ethernet/intel/ice/ice_virtchnl.h | 9 +++++++++
 2 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 29449030174f..1ff9818b4c84 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -499,7 +499,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	vfres->rss_lut_size = ICE_LUT_VSI_SIZE;
 	vfres->max_mtu = ice_vc_get_max_frame_size(vf);
 
-	vfres->vsi_res[0].vsi_id = vf->lan_vsi_num;
+	vfres->vsi_res[0].vsi_id = ICE_VF_VSI_ID;
 	vfres->vsi_res[0].vsi_type = VIRTCHNL_VSI_SRIOV;
 	vfres->vsi_res[0].num_queue_pairs = vsi->num_txq;
 	ether_addr_copy(vfres->vsi_res[0].default_mac_addr,
@@ -545,12 +545,7 @@ static void ice_vc_reset_vf_msg(struct ice_vf *vf)
  */
 bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
 {
-	struct ice_pf *pf = vf->pf;
-	struct ice_vsi *vsi;
-
-	vsi = ice_find_vsi(pf, vsi_id);
-
-	return (vsi && (vsi->vf == vf));
+	return vsi_id == ICE_VF_VSI_ID;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index 60dfbe05980a..3a4115869153 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -19,6 +19,15 @@
 #define ICE_MAX_MACADDR_PER_VF		18
 #define ICE_FLEX_DESC_RXDID_MAX_NUM	64
 
+/* VFs only get a single VSI. For ice hardware, the VF does not need to know
+ * its VSI index. However, the virtchnl interface requires a VSI number,
+ * mainly due to legacy hardware.
+ *
+ * Since the VF doesn't need this information, report a static value to the VF
+ * instead of leaking any information about the PF or hardware setup.
+ */
+#define ICE_VF_VSI_ID	1
+
 struct ice_virtchnl_ops {
 	int (*get_ver_msg)(struct ice_vf *vf, u8 *msg);
 	int (*get_vf_res_msg)(struct ice_vf *vf, u8 *msg);
-- 
2.41.0

