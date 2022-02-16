Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 866094B7C65
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 02:31:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A6C983155;
	Wed, 16 Feb 2022 01:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tdLchwZdw01S; Wed, 16 Feb 2022 01:31:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A5BE8316F;
	Wed, 16 Feb 2022 01:31:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 23EDE1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D500401C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JAJnbocyWc7N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11C024052D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644975098; x=1676511098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C826hnLTbwqQg3f+sUpfxkmxAXd07naBHs1IOL3delw=;
 b=iG4UgwG3uXB5ZKy5tnAFfRDNvG6lKNJn2MKw0cHlgxpCrO0dUh6cMoCB
 7eK1/00d15lyxo77Kq4KOk8x6cy+fvG1r7QUN8LHdhu3vaeLrdYv6ZxO7
 5JGsxz7azXaY+DJ9Dv+EIQf3r//gBJqOP3gnUu9uk8DNE+g/AfQzWuJmH
 ejNg162xbV5SHOuQZVqJyY8PCvIwqiBeSXjavJqAwhShHGaxuYmPLIpgu
 KEUz/UOH+S9lyQG+Hi5FnH99NqE9kZUQeIgCHBAwSBjbNVfboz4LoGEQ9
 zOFHee7EJ8yk+dp0X9kcVvLmOqKC+H+2StC32h/Ue3PknzXUYQ3PfT7Kg w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237903429"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="237903429"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="588077349"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 15 Feb 2022 17:31:21 -0800
Message-Id: <20220216013127.3263153-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220216013127.3263153-1-jacob.e.keller@intel.com>
References: <20220216013127.3263153-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 05/11] ice: move VFLR acknowledge
 during ice_free_vfs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After removing all VFs, the driver clears the VFLR indication for VFs.
This has been in ice since the beginning of SR-IOV support in the ice
driver.

The implementation was copied from i40e, and the motivation for the VFLR
indication clearing is described in the commit f7414531a0cf ("i40e:
acknowledge VFLR when disabling SR-IOV")

The commit explains that we need to clear the VFLR indication because
the virtual function undergoes a VFLR event. If we don't indicate that
it is complete it can cause an issue when VFs are re-enabled due to
a "phantom" VFLR.

The register block read was added under a pci_vfs_assigned check
originally. This was done because we added the check after calling
pci_disable_sriov. This was later moved to disable SRIOV earlier in the
flow so that the VF drivers could be torn down before we removed
functionality.

Move the VFLR acknowledge into the main loop that tears down VF
resources. This avoids using the tmp value for iterating over VFs
multiple times. The result will make it easier to refactor the VF array
in a future change.

It's possible we might want to modify this flow to also stop checking
pci_vfs_assigned. However, it seems reasonable to keep this change: we
should only clear the VFLR if we actually disabled SR-IOV.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 27 ++++++-------------
 1 file changed, 8 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index c469b32f665b..7ab4e7d4cfb7 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -536,6 +536,14 @@ void ice_free_vfs(struct ice_pf *pf)
 			ice_free_vf_res(vf);
 		}
 
+		if (!pci_vfs_assigned(pf->pdev)) {
+			u32 reg_idx, bit_idx;
+
+			reg_idx = (hw->func_caps.vf_base_id + vf->vf_id) / 32;
+			bit_idx = (hw->func_caps.vf_base_id + vf->vf_id) % 32;
+			wr32(hw, GLGEN_VFLRSTAT(reg_idx), BIT(bit_idx));
+		}
+
 		/* clear malicious info since the VF is getting released */
 		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs,
 					ICE_MAX_VF_COUNT, vf->vf_id))
@@ -553,25 +561,6 @@ void ice_free_vfs(struct ice_pf *pf)
 	devm_kfree(dev, pf->vf);
 	pf->vf = NULL;
 
-	/* This check is for when the driver is unloaded while VFs are
-	 * assigned. Setting the number of VFs to 0 through sysfs is caught
-	 * before this function ever gets called.
-	 */
-	if (!pci_vfs_assigned(pf->pdev)) {
-		unsigned int vf_id;
-
-		/* Acknowledge VFLR for all VFs. Without this, VFs will fail to
-		 * work correctly when SR-IOV gets re-enabled.
-		 */
-		for (vf_id = 0; vf_id < tmp; vf_id++) {
-			u32 reg_idx, bit_idx;
-
-			reg_idx = (hw->func_caps.vf_base_id + vf_id) / 32;
-			bit_idx = (hw->func_caps.vf_base_id + vf_id) % 32;
-			wr32(hw, GLGEN_VFLRSTAT(reg_idx), BIT(bit_idx));
-		}
-	}
-
 	clear_bit(ICE_VF_DIS, pf->state);
 	clear_bit(ICE_FLAG_SRIOV_ENA, pf->flags);
 }
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
