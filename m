Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCF550D989
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 08:35:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AF0040242;
	Mon, 25 Apr 2022 06:35:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9eyC37D9vMXU; Mon, 25 Apr 2022 06:35:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17EA840209;
	Mon, 25 Apr 2022 06:35:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E0B21BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 06:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C9A7881329
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 06:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZueJT_bYCTcl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Apr 2022 06:35:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C92498138A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 06:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650868522; x=1682404522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sd4rABUpoTJIUm968pCoCmrHsMFy275q5iYkBgnOW5E=;
 b=E0hLbJo0e+yPYgl5oxSn8hfSqBfRvPH8MC6Iwjlw2nZkdHoCPnfKiQ//
 0amQjbhLqgYhLa159YvFsAdw3ZNnUUzVlh2wH0WJusvCyPxTcYTZPbkK7
 SwSqd0c0eVbIJx7bypbT3ZAGteRCe5wqXI9H/mqM5dbhOx9Y8bZ2CnuIc
 /fbatHQ09YBFZ0xXOMfIqTpclNPMu7PhZRvzL6/8CMIvCmhnI+yzv7/Ru
 XzGzaDPGat+stNzLguKTtVoc1G8HjO3XOyLbYywTG3YnZmoX7I+9pIEFR
 H4xycSpa1w2aNoT9aTb+VT2uHCGxw4yYwTngss6ZpiimZl3wwD6lC7E/a A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="264008416"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="264008416"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 23:35:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="557568750"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga007.jf.intel.com with ESMTP; 24 Apr 2022 23:35:18 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Apr 2022 08:27:55 +0200
Message-Id: <20220425062756.14987-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220425062756.14987-1-michal.swiatkowski@linux.intel.com>
References: <20220425062756.14987-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: don't set VF VLAN caps
 in switchdev
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
Cc: michal.wilczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In switchdev mode any VLAN manipulation from VF side isn't allowed.
In order to prevent parsing VLAN commands don't set VF VLAN caps.
This will result in removing VLAN specific opcodes from allowlist.
If VF send any VLAN specific opcode PF driver will answer with not
supported error.

With this approach VF driver know that VLAN caps aren't supported so it
shouldn't send VLAN specific opcodes. Thanks to that, some ugly errors
will not show up in dmesg (ex. on creating VFs in switchdev mode
there are errors about not supported VLAN insertion and stripping)

Move setting VLAN caps to separate function, including
switchdev mode specific code.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 77 ++++++++++++-------
 1 file changed, 50 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index b47577a2841a..5d07e009bc84 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -359,6 +359,54 @@ static u16 ice_vc_get_max_frame_size(struct ice_vf *vf)
 	return max_frame_size;
 }
 
+/**
+ * ice_vc_get_vlan_caps
+ * @hw: pointer to the hw
+ * @vf: pointer to the VF info
+ * @vsi: pointer to the VSI
+ * @driver_caps: current driver caps
+ *
+ * Return 0 if there is no VLAN caps supported, or VLAN caps value
+ */
+static u32
+ice_vc_get_vlan_caps(struct ice_hw *hw, struct ice_vf *vf, struct ice_vsi *vsi,
+		     u32 driver_caps)
+{
+	if (ice_is_eswitch_mode_switchdev(vf->pf))
+		/* In switchdev setting VLAN from VF isn't supported */
+		return 0;
+
+	if (driver_caps & VIRTCHNL_VF_OFFLOAD_VLAN_V2) {
+		/* VLAN offloads based on current device configuration */
+		return VIRTCHNL_VF_OFFLOAD_VLAN_V2;
+	} else if (driver_caps & VIRTCHNL_VF_OFFLOAD_VLAN) {
+		/* allow VF to negotiate VIRTCHNL_VF_OFFLOAD explicitly for
+		 * these two conditions, which amounts to guest VLAN filtering
+		 * and offloads being based on the inner VLAN or the
+		 * inner/single VLAN respectively and don't allow VF to
+		 * negotiate VIRTCHNL_VF_OFFLOAD in any other cases
+		 */
+		if (ice_is_dvm_ena(hw) && ice_vf_is_port_vlan_ena(vf)) {
+			return VIRTCHNL_VF_OFFLOAD_VLAN;
+		} else if (!ice_is_dvm_ena(hw) &&
+			   !ice_vf_is_port_vlan_ena(vf)) {
+			/* configure backward compatible support for VFs that
+			 * only support VIRTCHNL_VF_OFFLOAD_VLAN, the PF is
+			 * configured in SVM, and no port VLAN is configured
+			 */
+			ice_vf_vsi_cfg_svm_legacy_vlan_mode(vsi);
+			return VIRTCHNL_VF_OFFLOAD_VLAN;
+		} else if (ice_is_dvm_ena(hw)) {
+			/* configure software offloaded VLAN support when DVM
+			 * is enabled, but no port VLAN is enabled
+			 */
+			ice_vf_vsi_cfg_dvm_legacy_vlan_mode(vsi);
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_vc_get_vf_res_msg
  * @vf: pointer to the VF info
@@ -402,33 +450,8 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 		goto err;
 	}
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_VLAN_V2) {
-		/* VLAN offloads based on current device configuration */
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_VLAN_V2;
-	} else if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_VLAN) {
-		/* allow VF to negotiate VIRTCHNL_VF_OFFLOAD explicitly for
-		 * these two conditions, which amounts to guest VLAN filtering
-		 * and offloads being based on the inner VLAN or the
-		 * inner/single VLAN respectively and don't allow VF to
-		 * negotiate VIRTCHNL_VF_OFFLOAD in any other cases
-		 */
-		if (ice_is_dvm_ena(hw) && ice_vf_is_port_vlan_ena(vf)) {
-			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_VLAN;
-		} else if (!ice_is_dvm_ena(hw) &&
-			   !ice_vf_is_port_vlan_ena(vf)) {
-			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_VLAN;
-			/* configure backward compatible support for VFs that
-			 * only support VIRTCHNL_VF_OFFLOAD_VLAN, the PF is
-			 * configured in SVM, and no port VLAN is configured
-			 */
-			ice_vf_vsi_cfg_svm_legacy_vlan_mode(vsi);
-		} else if (ice_is_dvm_ena(hw)) {
-			/* configure software offloaded VLAN support when DVM
-			 * is enabled, but no port VLAN is enabled
-			 */
-			ice_vf_vsi_cfg_dvm_legacy_vlan_mode(vsi);
-		}
-	}
+	vfres->vf_cap_flags |= ice_vc_get_vlan_caps(hw, vf, vsi,
+						    vf->driver_caps);
 
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_PF;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
