Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2D097258B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 01:06:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B7496083A;
	Mon,  9 Sep 2024 23:06:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1GSa52Gy1M6l; Mon,  9 Sep 2024 23:05:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52F826082B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725923159;
	bh=+sFZ+qBxwDz4jUetySxGAK628g2HBcE4WYa5g8fnYcM=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZCUxzXgJOYSA3IxrHTcfvAwhHWa8z2hHthrFOfIZfCpsaVaDWxBC5Dz7+JB+JQC8b
	 y85x5kylRSSOBEhX4eJDVXsWCCdF7WQdjaJWxSnDnVkKy+cqPXgM8UAof5UIod1get
	 lUdilizzOu5WtbZiyBuAdMzjvXLY+UmMuH46iPfEO9CDVn3NkQY0d1hCTCBOpCTC/M
	 HLBanza93HeDz3djDTt8U2MF54+Ff8ESyE7FRDxfYTd+5B/t6Crc+TgZ5WEoNePxDx
	 FU9ZQ9W73YgA74EAbIv5r1hp97+njNrVgtM/oiPKXzLm6rbHqk9f1Kmb5c5looFNzT
	 FXH7T5vXwWW8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52F826082B;
	Mon,  9 Sep 2024 23:05:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D8E5A1BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1D6C80E56
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:05:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VXCPL4iuezXY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 23:05:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BDDDF80EB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDDDF80EB4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BDDDF80EB4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:05:53 +0000 (UTC)
X-CSE-ConnectionGUID: 7d5VvCmjQ4K6dhreLJr/3g==
X-CSE-MsgGUID: I7c5lEmFS8CVcD+G2AKrEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="35312318"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="35312318"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:05:52 -0700
X-CSE-ConnectionGUID: SnGbX418SNeEHyN3YCiQ4Q==
X-CSE-MsgGUID: In14mvkETB6IIjf6VLQvLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="67358477"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:05:52 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 09 Sep 2024 16:05:43 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240909-e810-live-migration-jk-vf-rxdid-cleanup-v1-1-e53a024980fd@intel.com>
References: <20240909-e810-live-migration-jk-vf-rxdid-cleanup-v1-0-e53a024980fd@intel.com>
In-Reply-To: <20240909-e810-live-migration-jk-vf-rxdid-cleanup-v1-0-e53a024980fd@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.14.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725923154; x=1757459154;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=IOjMAu0l+QKgBVKEdHP0sZ3PKEQr+v+H7oewEub0TPA=;
 b=NUuzk0LHhC8SK2sZ7biKf5qfFTS4QUoZGunnSgbMKghN/mIKWku7cmmm
 pvca1ZjF+YQDnWjAtXm0aL+yNPhY5j1Q0SKkWDV5qLrcl4eJ1sRBi3sGK
 vLTxDpWYRDlLA74Y7tlO8H2yy1aUXz04sAuZITLR7rFvflkUBPpzpryd3
 FKr2nO4p400iW/pGZ0uwesdQOSx4MJkvJZ2nZiu6lQ08hqPVPJ0wlkI7L
 uH5BBWjqUKiwbcM2Wicbpl5YXNapB0/nBKP7g43J8jiDZ7aHkBSkNU5Gr
 zZGGCMN+MMwigwtDEcZwobtuKPBisGKPf26a3NeLtI0QVz72y2ckh8jSY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NUuzk0LH
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: initialize
 pf->supported_rxdids immediately after loading DDP
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

The pf->supported_rxdids field is used to populate the list of valid RXDIDs
that a VF may use when negotiating VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC.

The set of supported RXDIDs is dependent on the DDP, and can be read from
the GLXFLXP_RXDID_FLAGS register. The PF needs to send this list to the
VF upon receiving the VIRTCHNL_OP_GET_SUPPORTED_RXDIDs. It also needs to
use this list to validate the requested descriptor ID from the VF when
programming the Rx queues.

A future update to support VF live migration will also want to validate
that the target VF can support the same descriptor ID when migrating.

Currently, pf->supported_rxdids is initialized inside the
ice_vc_query_rxdid() function. This means that it is only ever initialized
if at least one VF actually tries to negotiate
VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC. It is also unnecessarily re-initialized
every time the VF loads and requests the descriptor list. This worked
before because the PF only checks pf->suppported_rxdids when programming
the Rx queue if the VF actually negotiates the
VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC feature.

This will be problematic for VF live migration. We need the list of
supported Rx descriptor IDs when migrating. It is possible that no VF on
the target PF has ever actually issued a VIRTCHNL_OP_GET_SUPPORTED_RXDIDs.

Refactor the driver to initialize pf->supported_rxdids during driver
initialization after the DDP is loaded. This is simpler, avoids unnecessary
duplicate work, and avoids issues with the live migration process.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c     | 31 +++++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 20 ++---------------
 2 files changed, 33 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c7db88b517da..f7a9f62ca828 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4577,6 +4577,34 @@ ice_init_tx_topology(struct ice_hw *hw, const struct firmware *firmware)
 	return 0;
 }
 
+/**
+ * ice_init_supported_rxdids - Initialize supported Rx descriptor IDs
+ * @hw: pointer to the hardware structure
+ * @pf: pointer to pf structure
+ *
+ * The pf->supported_rxdids bitmap is used to indicate to VFs which descriptor
+ * formats the PF hardware supports. The exact list of supported RXDIDs
+ * depends on the loaded DDP package. The IDs can be determined by reading the
+ * GLFLXP_RXDID_FLAGS register after the DDP package is loaded.
+ *
+ * Note that the legacy 32-byte RXDID 0 is always supported but is not listed
+ * in the DDP package. The 16-byte legacy descriptor is never supported by
+ * VFs.
+ */
+static void ice_init_supported_rxdids(struct ice_hw *hw, struct ice_pf *pf)
+{
+	pf->supported_rxdids = BIT(ICE_RXDID_LEGACY_1);
+
+	for (int i = ICE_RXDID_FLEX_NIC; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
+		u32 regval;
+
+		regval = rd32(hw, GLFLXP_RXDID_FLAGS(i, 0));
+		if ((regval >> GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S)
+			& GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M)
+			pf->supported_rxdids |= BIT(i);
+	}
+}
+
 /**
  * ice_init_ddp_config - DDP related configuration
  * @hw: pointer to the hardware structure
@@ -4611,6 +4639,9 @@ static int ice_init_ddp_config(struct ice_hw *hw, struct ice_pf *pf)
 	ice_load_pkg(firmware, pf);
 	release_firmware(firmware);
 
+	/* Initialize the supported Rx descriptor IDs after loading DDP */
+	ice_init_supported_rxdids(hw, pf);
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 59f62306b9cb..5f3166877830 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2701,11 +2701,9 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 {
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_supported_rxdids *rxdid = NULL;
-	struct ice_hw *hw = &vf->pf->hw;
 	struct ice_pf *pf = vf->pf;
 	int len = 0;
-	int ret, i;
-	u32 regval;
+	int ret;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -2725,21 +2723,7 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 		goto err;
 	}
 
-	/* RXDIDs supported by DDP package can be read from the register
-	 * to get the supported RXDID bitmap. But the legacy 32byte RXDID
-	 * is not listed in DDP package, add it in the bitmap manually.
-	 * Legacy 16byte descriptor is not supported.
-	 */
-	rxdid->supported_rxdids |= BIT(ICE_RXDID_LEGACY_1);
-
-	for (i = ICE_RXDID_FLEX_NIC; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
-		regval = rd32(hw, GLFLXP_RXDID_FLAGS(i, 0));
-		if ((regval >> GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S)
-			& GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M)
-			rxdid->supported_rxdids |= BIT(i);
-	}
-
-	pf->supported_rxdids = rxdid->supported_rxdids;
+	rxdid->supported_rxdids = pf->supported_rxdids;
 
 err:
 	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_SUPPORTED_RXDIDS,

-- 
2.46.0.124.g2dc1a81c8933

