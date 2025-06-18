Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF7CADF95F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 00:25:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AA7460BB8;
	Wed, 18 Jun 2025 22:25:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EXA5Xm76YBIn; Wed, 18 Jun 2025 22:25:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABCFB60B94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750285513;
	bh=KgxgOk/2lCEVbbFd3rrULyWg3ktk14uuAJh1kcV7mwc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ugbWn7yqPU0BeI2LYmXBRU2VO5TaAKxgfNFxHMIOuvBEcOoXkgx4YlYduI8pb4agj
	 EgfgE6KYZGLls+hUNC+Tjnkdby+mc/yh4R0UVCQlhBoIEW9+aSaFk0XaijTyJ3448k
	 1rUarh243xNz6BuV6+21z8AaTinbYYmmx0k4BgAsE7pjIt1nHRkC2tdBgQiAAGj/gU
	 NirxD383Bg6AqUpkeQiLnx2P1RZzlKbk5PlLgUMlMJC4PZYx+ipPTI7XNjePNUXcP7
	 34qMraP25EnEXraugmYI/Bl/MrQg2DIGxvj+4k2Ld3pZcbjDCo6eOZUcjbYQArYZu4
	 6GqdyzCUjAzsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABCFB60B94;
	Wed, 18 Jun 2025 22:25:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6AD56E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA5AA405AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1MiGbygBr4zS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 379B9405B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 379B9405B0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 379B9405B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
X-CSE-ConnectionGUID: 7GsI7+MIQMSLLI3Q6esgAw==
X-CSE-MsgGUID: MpGd7V+2RsqGbc7PKadaQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52447757"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52447757"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:05 -0700
X-CSE-ConnectionGUID: +A7NjLOUQ0OUPJBXBcV83Q==
X-CSE-MsgGUID: C1tZlMVJQg+0gU2Zi3FygQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149870028"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 18 Jun 2025 15:24:43 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-e810-live-migration-jk-migration-prep-v1-8-72a37485453e@intel.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
In-Reply-To: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org, 
 Madhu Chittim <madhu.chittim@intel.com>, Yahui Cao <yahui.cao@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750285507; x=1781821507;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=iAU0fMeHTqflINE2bDtzjWRAbN0eR6rupCjNhm6N7pc=;
 b=nvK/EBl04wjNy39CKDjErfbj2u4D8WtGzzUJFvJQ0i8qomAMCzsooZhk
 UyJNv2dMV52giUMcLJ/EYnO7UO8SiKKK9x6FTuQYQXt0zGIDIy0eOer5D
 rZMl37ryq4wylmx7+ByRVzbjN9MbXOBCS2HTOUEDhYdKlOfQRUyORqk05
 Qa6XaFdLcO0Rv0oNmXF9hgOseFZKyr3PDnb3X/EBgkIc7LGW+0H82FF9w
 mirPWyMSp95xgRfzt7BtOMhVCIUVct+yHuMpYyyooTreS3b/MT2KOsCzP
 mCJUEi6rDk7ikHk06I+m2EfBcma+7b4zO4j7JL+x9m2WKDhxqhIRKT5RC
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nvK/EBl0
Subject: [Intel-wired-lan] [PATCH iwl-next 8/8] ice: introduce
 ice_get_vf_by_dev() wrapper
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_get_vf_by_id() function is used to obtain a reference to a VF
structure based on its ID. The ice_sriov_set_msix_vec_count() function
needs to get a VF reference starting from the VF PCI device, and uses
pci_iov_vf_id() to get the VF ID. This pattern is currently uncommon in the
ice driver. However, the live migration module will introduce many more
such locations.

Add a helper wrapper ice_get_vf_by_dev() which takes the VF PCI device and
calls ice_get_vf_by_id() using pci_iov_vf_id() to get the VF ID.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h | 26 ++++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_sriov.c  |  7 +------
 2 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index a5ee380f8c9e53d6e5ac029b9942db380829a84f..e538b4ecc6cec7d8bd26b7d198197fd5c3ed2e60 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -239,6 +239,26 @@ static inline bool ice_vf_is_lldp_ena(struct ice_vf *vf)
 
 #ifdef CONFIG_PCI_IOV
 struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id);
+
+/**
+ * ice_get_vf_by_dev - Get pointer to VF by VF PCI device pointer
+ * @pf: the PF private structure
+ * @vf_dev: the VF PCI device pointer
+ *
+ * Convenience wrapper to call ice_get_vf_by_id() using pci_iov_vf_id() to get
+ * the VF ID.
+ */
+static inline struct ice_vf *ice_get_vf_by_dev(struct ice_pf *pf,
+					       struct pci_dev *vf_dev)
+{
+	int vf_id = pci_iov_vf_id(vf_dev);
+
+	if (vf_id < 0)
+		return NULL;
+
+	return ice_get_vf_by_id(pf, pci_iov_vf_id(vf_dev));
+}
+
 void ice_put_vf(struct ice_vf *vf);
 bool ice_has_vfs(struct ice_pf *pf);
 u16 ice_get_num_vfs(struct ice_pf *pf);
@@ -265,6 +285,12 @@ static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
 	return NULL;
 }
 
+static inline struct ice_vf *ice_get_vf_by_dev(struct ice_pf *pf,
+					       struct pci_dev *vf_dev)
+{
+	return NULL;
+}
+
 static inline void ice_put_vf(struct ice_vf *vf)
 {
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 964c474322196fa8875767ac2667be5d550a6765..9ce4c4db400e1239edf974ae85d27da3abf4c083 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -933,7 +933,6 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	bool needs_rebuild = false;
 	struct ice_vsi *vsi;
 	struct ice_vf *vf;
-	int id;
 
 	if (!ice_get_num_vfs(pf))
 		return -ENOENT;
@@ -952,11 +951,7 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	if (msix_vec_count < ICE_MIN_INTR_PER_VF)
 		return -EINVAL;
 
-	id = pci_iov_vf_id(vf_dev);
-	if (id < 0)
-		return id;
-
-	vf = ice_get_vf_by_id(pf, id);
+	vf = ice_get_vf_by_dev(pf, vf_dev);
 	if (!vf)
 		return -ENOENT;
 

-- 
2.48.1.397.gec9d649cc640

