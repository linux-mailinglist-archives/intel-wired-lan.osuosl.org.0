Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB1E880615
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 21:33:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50ECD81301;
	Tue, 19 Mar 2024 20:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pna87VRSSSxZ; Tue, 19 Mar 2024 20:33:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D824812C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710880426;
	bh=etgA8vTXEOXezhnlKUapCB0WSknTMjXFLVkrRhjQMiw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SwfVW3Il1BfiU7ZTenpadmBRGghdewOANtM9/ZFZe2rUz/9cktV0FMlqAznNOOFXQ
	 jAwSOS4dNwjpO6l3Lwy4eA1yzgahLt58jO5yV/mWn9RUWWkkW344of+TKFiyc9Onys
	 RfbZI4iTBD+Mkra1z8WUjtALK3qGu81rC28LcH63HgaUCieRZX0QNOSrpNem7IJOLW
	 QzvSHeSY0l+M0a0wIcvRu5L8zbgaZ1Wwhh9BXj9KHUekw8iYP8zw4pS/ONWVbTUfBj
	 xwYx6K3hFKlMW3fZCdpMorLV75S2sFLmaM5bhijxM7uFY2H9S5MiGrtf0dA2yYzXHV
	 VqkcZJ6wCHYOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D824812C0;
	Tue, 19 Mar 2024 20:33:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 790991BF834
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 20:33:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63B266059A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 20:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e566ApcZx1zg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 20:33:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7D6D1606BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D6D1606BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D6D1606BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 20:33:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5899788"
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; 
   d="scan'208";a="5899788"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 13:33:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; d="scan'208";a="18578759"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 13:33:34 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 19 Mar 2024 13:33:27 -0700
Message-ID: <20240319203328.890350-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.44.0.53.g0f9d4d28b7e6
In-Reply-To: <20240319203328.890350-1-jacob.e.keller@intel.com>
References: <20240319203328.890350-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710880422; x=1742416422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1JbYpRQKYjycX9a9JNfsBbfFzI1D6ml7aY0OkFnZ/4g=;
 b=OckNu4v6Mt1BnZ3bt1TI+pQP9UJ8JAkymB+nyxA83ql4xc5iwGRT8vnf
 8iE34ThqFGwvTgWV3ok+WkY89GmnLPWAJ3fu35MfHXhitiJx6l/vWay/i
 g5x/EpitgQcXjtTY/dB/IGo9mhvwCH0VFGWeW8QrY1tVf3XLhFsaOZBf/
 H3czU+7whVCbix64GlFMPoNpnHbAmkY/9HBcSQuMiU8mCBUaj+3Pdez31
 QgZIuI5jz9q7Eg5XqTL3IDM9lrd6nhmi8YtnlAidlPbk/r7C/IILqDb3k
 09XGW2srg+rBAPqu6vDD3A1ACvyJnN7BHTH0jW+Zhwe3ZZ/cLxnRe1ZeG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OckNu4v6
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: set vf->num_msix in
 ice_initialize_vf_entry()
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
 Anthony Nguyen <anthony.l.nguyen@intel.com>, jesse
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit fe1c5ca2fe76 ("ice: implement num_msix field per VF") updated the
driver to allow for per-VF MSI-X configuration. The initial defaults were
set in ice_create_vf_entries(). This logic is better placed in
ice_initialize_vf_entry(). Indeed, that function already sets
vf->num_vf_qs, as well as initializes the allow list via calling
ice_vc_set_default_allowlist().

Move this logic into ice_initialize_vf_entry(). This makes the code clear,
and ensures that these VF fields will be initialized properly for both
SR-IOV VFs and the upcoming Scalable IOV VFs.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 5 -----
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 5 ++++-
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 65e1986af777..5e9521876617 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -831,11 +831,6 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
 
 		pci_dev_get(vfdev);
 
-		/* set default number of MSI-X */
-		vf->num_msix = pf->vfs.num_msix_per;
-		vf->num_vf_qs = pf->vfs.num_qps_per;
-		ice_vc_set_default_allowlist(vf);
-
 		hash_add_rcu(vfs->table, &vf->entry, vf_id);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 21d26e19338a..c51e2482cad2 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -992,10 +992,13 @@ void ice_initialize_vf_entry(struct ice_vf *vf)
 
 	/* assign default capabilities */
 	vf->spoofchk = true;
-	vf->num_vf_qs = vfs->num_qps_per;
 	ice_vc_set_default_allowlist(vf);
 	ice_virtchnl_set_dflt_ops(vf);
 
+	/* set default number of MSI-X */
+	vf->num_msix = vfs->num_msix_per;
+	vf->num_vf_qs = vfs->num_qps_per;
+
 	/* ctrl_vsi_idx will be set to a valid value only when iAVF
 	 * creates its first fdir rule.
 	 */
-- 
2.44.0.53.g0f9d4d28b7e6

