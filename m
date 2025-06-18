Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B345ADF958
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 00:25:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A69ED4055E;
	Wed, 18 Jun 2025 22:25:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VI_zlWEZGff8; Wed, 18 Jun 2025 22:25:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCF28407AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750285510;
	bh=eNnYS7LbSO+xccGUbVT0bzQahEaiIbWQ1/tR1oZUJCw=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LlyieO39pcEtteBRRNiOxrQIN9MxhZOuuDZ8Qe4QfNacSy/F2U5jl4hFJpD0PNNJ1
	 ycXsUjIisQ8cDqHpMQQ+lIsj2BdgVOZoDLMclwGIaSa+Drhj5OqYVe3ckQSsv1bM3f
	 uJ9zhBXLi4fuSfZMDqlO6TZsU1VnpjWGfPjMjDkfjb7hvQSsHvFv0ep8lGVTSDj3pJ
	 MXN/2qo12k0LwsIov1h7KrzyWm79DDdv9WepadplPYdc9zoxnVZFBBkW3vnceEUmq9
	 0RU+lcklatcdRgMuJBlmWJF/LZgUCKV33P4qAKlQO/+l8fucuMhTydYFLzgFE+HYT/
	 wDCK4YIwjX26g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCF28407AF;
	Wed, 18 Jun 2025 22:25:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 85CD9151
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77ED2405B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BtxETE8u7m3z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AEC94405A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEC94405A1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AEC94405A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
X-CSE-ConnectionGUID: FYsVkMTNRLK3nSd2Y/gmpQ==
X-CSE-MsgGUID: TgG3azY2S0eUkBHPFyfG3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52447745"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52447745"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:05 -0700
X-CSE-ConnectionGUID: GP+Y5Z6MRfmLSxiskrDuLw==
X-CSE-MsgGUID: Pw6mJoodTmypC6mFV/OJMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149870014"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 18 Jun 2025 15:24:39 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-e810-live-migration-jk-migration-prep-v1-4-72a37485453e@intel.com>
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
 bh=01edmvdye+A2A3p3Nes/FGzi4ZU7AR2pXTGXrPAL64o=;
 b=HGTXrdDFT87xFF/kn96rFvaQqPAboZ74m/KF61ctMMOH8HXOrB/VQ8IF
 vivTE2HO2Gr9P6wlfHrDLpGENErkQtrQD47i7MGPZrBLj2BdkpdkAixb0
 C1hvzEiJ/b1/bubN3968E5KU7IBtUafFiFADu/a+ve836uAd0SjKKq3aL
 8G610ExvoPD2TvuItWFGKuIg8cISLi9lFo3RU8rAyT/+vvgPsqU8Wg1rn
 25XGAs6UGU+FWERbB9oWTNXoLmO05az6L4BQR/YuV5cPUM4p7MMGo9r+G
 G+mm1vzVAkAVC0uLX02p22/UwUIrxS87ABHZK3sB3pez1psPUQPgLUE0V
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HGTXrdDF
Subject: [Intel-wired-lan] [PATCH iwl-next 4/8] ice: move
 ice_vsi_update_l2tsel to ice_lib.c
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

A future change is going to need to call ice_vsi_update_l2tsel from a new
context outside of ice_virtchnl.c

Since this function deals with a generic VSI, move it into ice_lib.c to
enable calling it from other places in the ice driver.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.h      |  8 +++++
 drivers/net/ethernet/intel/ice/ice_lib.c      | 35 ++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 42 ---------------------------
 3 files changed, 43 insertions(+), 42 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 654516c5fc3ededf99d3aa9574a546177295a716..2cb1eb98b9dabc63c44aa20f04acb19040df56f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -11,6 +11,13 @@
 #define ICE_VSI_FLAG_INIT	BIT(0)
 #define ICE_VSI_FLAG_NO_INIT	0
 
+#define ICE_L2TSEL_QRX_CONTEXT_REG_IDX	3
+#define ICE_L2TSEL_BIT_OFFSET		23
+enum ice_l2tsel {
+	ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG2_2ND,
+	ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG1,
+};
+
 const char *ice_vsi_type_str(enum ice_vsi_type vsi_type);
 
 bool ice_pf_state_is_nominal(struct ice_pf *pf);
@@ -116,4 +123,5 @@ void ice_set_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_init_feature_support(struct ice_pf *pf);
 bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi);
+void ice_vsi_update_l2tsel(struct ice_vsi *vsi, enum ice_l2tsel l2tsel);
 #endif /* !_ICE_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 1ea9863a387be14b34a6705c44bc5b6361a808bc..d75836700889151d856157226eb2d3a8e50b1b34 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -4020,3 +4020,38 @@ ice_vsi_update_local_lb(struct ice_vsi *vsi, bool set)
 	vsi->info = ctx.info;
 	return 0;
 }
+
+/**
+ * ice_vsi_update_l2tsel - update l2tsel field for all Rx rings on this VSI
+ * @vsi: VSI used to update l2tsel on
+ * @l2tsel: l2tsel setting requested
+ *
+ * Use the l2tsel setting to update all of the Rx queue context bits for l2tsel.
+ * This will modify which descriptor field the first offloaded VLAN will be
+ * stripped into.
+ */
+void ice_vsi_update_l2tsel(struct ice_vsi *vsi, enum ice_l2tsel l2tsel)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	u32 l2tsel_bit;
+	int i;
+
+	if (l2tsel == ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG2_2ND)
+		l2tsel_bit = 0;
+	else
+		l2tsel_bit = BIT(ICE_L2TSEL_BIT_OFFSET);
+
+	for (i = 0; i < vsi->alloc_rxq; i++) {
+		u16 pfq = vsi->rxq_map[i];
+		u32 qrx_context_offset;
+		u32 regval;
+
+		qrx_context_offset =
+			QRX_CONTEXT(ICE_L2TSEL_QRX_CONTEXT_REG_IDX, pfq);
+
+		regval = rd32(hw, qrx_context_offset);
+		regval &= ~BIT(ICE_L2TSEL_BIT_OFFSET);
+		regval |= l2tsel_bit;
+		wr32(hw, qrx_context_offset, regval);
+	}
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 65eb6757a02143f3765716dedcd090dff2d84d2c..691ebb143e75863d25d6c0fbd1f0f330b363f919 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3845,48 +3845,6 @@ ice_vc_ena_vlan_offload(struct ice_vsi *vsi,
 	return 0;
 }
 
-#define ICE_L2TSEL_QRX_CONTEXT_REG_IDX	3
-#define ICE_L2TSEL_BIT_OFFSET		23
-enum ice_l2tsel {
-	ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG2_2ND,
-	ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG1,
-};
-
-/**
- * ice_vsi_update_l2tsel - update l2tsel field for all Rx rings on this VSI
- * @vsi: VSI used to update l2tsel on
- * @l2tsel: l2tsel setting requested
- *
- * Use the l2tsel setting to update all of the Rx queue context bits for l2tsel.
- * This will modify which descriptor field the first offloaded VLAN will be
- * stripped into.
- */
-static void ice_vsi_update_l2tsel(struct ice_vsi *vsi, enum ice_l2tsel l2tsel)
-{
-	struct ice_hw *hw = &vsi->back->hw;
-	u32 l2tsel_bit;
-	int i;
-
-	if (l2tsel == ICE_L2TSEL_EXTRACT_FIRST_TAG_L2TAG2_2ND)
-		l2tsel_bit = 0;
-	else
-		l2tsel_bit = BIT(ICE_L2TSEL_BIT_OFFSET);
-
-	for (i = 0; i < vsi->alloc_rxq; i++) {
-		u16 pfq = vsi->rxq_map[i];
-		u32 qrx_context_offset;
-		u32 regval;
-
-		qrx_context_offset =
-			QRX_CONTEXT(ICE_L2TSEL_QRX_CONTEXT_REG_IDX, pfq);
-
-		regval = rd32(hw, qrx_context_offset);
-		regval &= ~BIT(ICE_L2TSEL_BIT_OFFSET);
-		regval |= l2tsel_bit;
-		wr32(hw, qrx_context_offset, regval);
-	}
-}
-
 /**
  * ice_vc_ena_vlan_stripping_v2_msg
  * @vf: VF the message was received from

-- 
2.48.1.397.gec9d649cc640

