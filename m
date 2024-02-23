Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2142B860AD7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 07:36:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3D5B834CB;
	Fri, 23 Feb 2024 06:36:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l5pU6pr763p0; Fri, 23 Feb 2024 06:36:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 404C283376
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708670172;
	bh=Hbbx3ma3wLVsi7ABMhW1Sq88+MtGC2L3+OUzh63vzXY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=wQuAgVh/5Nz85wX8qCdgvR1ZgFci4PI5hSgVTKkIFAwuBuMgmwEtn9PeW+7K0JYE+
	 12dUabnS7E1rCxX9A0FEiEaFKOjU8H1n3yX8fBpqQTKLItudLu9fI9NIjPYoz57fyA
	 KccuV+Wp10fTala8qnw06RcodMByVU0K7XLgP0aPCH43adYwAaqpzSM/AfWvIETiRz
	 om+XiGDT1W5I6vCb6VosD4qUN1aov7dXylnRAArF0p+nqcxbmV5Thr+qK6o86rtHBf
	 DDDO8byV4q+j/UsVBunETZoQ1dcwcqMbN4zo8CbEWlGS+Jf6eJGaMZjFIgmsU6qk58
	 7+x4pIs+tgZAg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 404C283376;
	Fri, 23 Feb 2024 06:36:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 54CF91BF285
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 06:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 308C9419F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 06:36:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6HlZisH3pbRr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 06:36:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B2FBA41835
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2FBA41835
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2FBA41835
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 06:36:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="20409281"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="20409281"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 22:36:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5950697"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa008.fm.intel.com with ESMTP; 22 Feb 2024 22:36:04 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 23 Feb 2024 07:40:24 +0100
Message-ID: <20240223064024.4333-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708670167; x=1740206167;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8yoLYxtyzN8QrGJBXGLzekHVHNTotxFsod80L/xnUPE=;
 b=NsY0dk2acEeLobrrt3ZaibvuuYWBuo2kfVtukHdkLwsJPLGfMAN7LYoC
 CRYT7KBbaz01sR7VIHWtaqsLBvs0P/jAYVROE2Gz7STVx6n2/s+FjZWV3
 m8dWZnrZsNfT1C5phMGxlyh7iU7QQoEjyQ989/GjWWco7oXivRR7i1efY
 tmairclVLtJy5eTbGBP687BlGm1dCNfUEmV2GvZHXqji8r323hsC5jvhH
 4UPeN/62QciOXZIRCm459iW+Inpz4hVLK6JaoEtbdocHJemHoFFNxMuwI
 LC+rI+Tl7BaqySRuUHhrpz0Ss6JSFZLAdyTIUafzjeZ3CI8FPqxBoB8zx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NsY0dk2a
Subject: [Intel-wired-lan] [iwl-net v1] ice: reconfig host after changing
 MSI-X on VF
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

During VSI reconfiguration filters and VSI config which is set in
ice_vf_init_host_cfg() are lost. Recall the host configuration function
to restore them.

Without this config VF on which MSI-X amount was changed might had a
connection problems.

Fixes: 4d38cb44bd32 ("ice: manage VFs MSI-X using resource tracking")
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index a94a1c48c3de..b0f78c2f2790 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1068,6 +1068,7 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	struct ice_pf *pf = pci_get_drvdata(pdev);
 	u16 prev_msix, prev_queues, queues;
 	bool needs_rebuild = false;
+	struct ice_vsi *vsi;
 	struct ice_vf *vf;
 	int id;
 
@@ -1102,6 +1103,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	if (!vf)
 		return -ENOENT;
 
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi)
+		return -ENOENT;
+
 	prev_msix = vf->num_msix;
 	prev_queues = vf->num_vf_qs;
 
@@ -1122,7 +1127,7 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	if (vf->first_vector_idx < 0)
 		goto unroll;
 
-	if (ice_vf_reconfig_vsi(vf)) {
+	if (ice_vf_reconfig_vsi(vf) || ice_vf_init_host_cfg(vf, vsi)) {
 		/* Try to rebuild with previous values */
 		needs_rebuild = true;
 		goto unroll;
@@ -1148,8 +1153,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	if (vf->first_vector_idx < 0)
 		return -EINVAL;
 
-	if (needs_rebuild)
+	if (needs_rebuild) {
 		ice_vf_reconfig_vsi(vf);
+		ice_vf_init_host_cfg(vf, vsi);
+	}
 
 	ice_ena_vf_mappings(vf);
 	ice_put_vf(vf);
-- 
2.42.0

