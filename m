Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4F777EE19
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 02:12:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A0C841782;
	Thu, 17 Aug 2023 00:12:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A0C841782
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692231132;
	bh=mWa5rQ3lWsT0OA+7/1Ay0TsJHhvGN6sAAbIswmR00VY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vSSr/e0KloIqOM/LSlhLuXF3HoEwNzsiWQqnyF99HsR4dAzaki0akAqlgi9AhYtyu
	 Cy6T1wMlLX49PbFcZu6wJW5kZrm2ejUONv5bwxIEkgHH6yETNjxp89ZQBOAruW2OoW
	 1KWy7CDUbrmLOJE2jKkxKSpBghI2Uvn7XsN7MCTU+/3SmylvUeLobM6Iw41zbIOO3z
	 IRvQ96bmcgE3DsZs4x03uz6vkGWONyZtdx4JRxFM+6BY1LJvC2PFzBZkMyc1dvOaJL
	 CZ9KQJzmmWjXZ/fDl8iED0sQvaVewuNSHiKcPrswTCk2NxOZpWKI5HuuLzvhP4iGBY
	 P54ohjo+0YDeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CBVFqdQRkXPn; Thu, 17 Aug 2023 00:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A8474177D;
	Thu, 17 Aug 2023 00:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A8474177D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 643901BF390
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A8E361420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A8E361420
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id drqSM4WSfn7n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 00:12:00 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 17 Aug 2023 00:12:00 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DC3E6141F
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DC3E6141F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:11:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371570647"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="371570647"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:04:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824422125"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="824422125"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2023 17:04:48 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Aug 2023 16:57:13 -0700
Message-Id: <20230816235719.1120726-2-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230816235719.1120726-1-paul.greenwalt@intel.com>
References: <20230816235719.1120726-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692231120; x=1723767120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bg45xemrTG1jNz7kRjSU6eI8AXxvzu5F4uB2Ey+UzeE=;
 b=DiMpLD3BGFXKHgJN8D4bSJTiM3Uz7cefKMRDifLh/0wQTfhijgOfhLTp
 ZTNJf1osqYKqnYgdFBflte4Zs8IEAUJFyQ73F2+DjdnQl+L5zaxnlHCA1
 j5Z3kGoL6t7vj9QmPuu1YQlULtacJfCJ3Uyjs3XmdFeNsIhmpogWacf17
 yG/HTMEq9x2NPdtSWapvFKPiLdOVqZSbutWjQgTNu0EM+BenbV5xq13mC
 aB/J8EYzFmOHrjqgiS02kUfZgW3wUGLc8F0k+aRLOjbVepOkJeuYxwh6d
 R+PwVvLzYZ//yA8QbTdYyusbYdEZmp0XBg0pRSg4fOW899RTSuihOyWyj
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DiMpLD3B
Subject: [Intel-wired-lan] [PATCH iwl-next 1/7] ice: Add E830 device IDs,
 MAC type and registers
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
Cc: Dan Nowlin <dan.nowlin@intel.com>, netdev@vger.kernel.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E830 is the 200G NIC family which uses the ice driver.

Add specific E830 registers. Embed macros to use proper register based on
(hw)->mac_type & name those macros to [ORIGINAL]_BY_MAC(hw). Registers
only available on one of the macs will need to be explicitly referred to
as E800_NAME instead of just NAME. PTP is not yet supported.

Co-developed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Co-developed-by: Scott Taylor <scott.w.taylor@intel.com>
Signed-off-by: Scott Taylor <scott.w.taylor@intel.com>
Co-developed-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   | 71 ++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_devids.h   | 10 ++-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 24 ++++---
 .../net/ethernet/intel/ice/ice_hw_autogen.h   | 52 ++++++++++----
 drivers/net/ethernet/intel/ice/ice_main.c     | 13 ++--
 drivers/net/ethernet/intel/ice/ice_type.h     |  3 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 29 +++++---
 7 files changed, 141 insertions(+), 61 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 2652e4f5c4a2..a6c99ba31dc9 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (c) 2018, Intel Corporation. */
+/* Copyright (c) 2018-2023, Intel Corporation. */
 
 #include "ice_common.h"
 #include "ice_sched.h"
@@ -153,6 +153,12 @@ static int ice_set_mac_type(struct ice_hw *hw)
 	case ICE_DEV_ID_E823L_SFP:
 		hw->mac_type = ICE_MAC_GENERIC;
 		break;
+	case ICE_DEV_ID_E830_BACKPLANE:
+	case ICE_DEV_ID_E830_QSFP56:
+	case ICE_DEV_ID_E830_SFP:
+	case ICE_DEV_ID_E830_SFP_DD:
+		hw->mac_type = ICE_MAC_E830;
+		break;
 	default:
 		hw->mac_type = ICE_MAC_UNKNOWN;
 		break;
@@ -684,8 +690,7 @@ static void
 ice_fill_tx_timer_and_fc_thresh(struct ice_hw *hw,
 				struct ice_aqc_set_mac_cfg *cmd)
 {
-	u16 fc_thres_val, tx_timer_val;
-	u32 val;
+	u32 val, fc_thres_m;
 
 	/* We read back the transmit timer and FC threshold value of
 	 * LFC. Thus, we will use index =
@@ -694,19 +699,32 @@ ice_fill_tx_timer_and_fc_thresh(struct ice_hw *hw,
 	 * Also, because we are operating on transmit timer and FC
 	 * threshold of LFC, we don't turn on any bit in tx_tmr_priority
 	 */
-#define IDX_OF_LFC PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_MAX_INDEX
-
-	/* Retrieve the transmit timer */
-	val = rd32(hw, PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA(IDX_OF_LFC));
-	tx_timer_val = val &
-		PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_HSEC_CTL_TX_PAUSE_QUANTA_M;
-	cmd->tx_tmr_value = cpu_to_le16(tx_timer_val);
-
-	/* Retrieve the FC threshold */
-	val = rd32(hw, PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER(IDX_OF_LFC));
-	fc_thres_val = val & PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_M;
-
-	cmd->fc_refresh_threshold = cpu_to_le16(fc_thres_val);
+#define E800_IDX_OF_LFC E800_PRTMAC_HSEC_CTL_TX_PS_QNT_MAX
+#define E800_REFRESH_TMR E800_PRTMAC_HSEC_CTL_TX_PS_RFSH_TMR
+
+	if (hw->mac_type == ICE_MAC_E830) {
+		/* Retrieve the transmit timer */
+		val = rd32(hw, E830_PRTMAC_CL01_PS_QNT);
+		cmd->tx_tmr_value =
+			le16_encode_bits(val, E830_PRTMAC_CL01_PS_QNT_CL0_M);
+
+		/* Retrieve the fc threshold */
+		val = rd32(hw, E830_PRTMAC_CL01_QNT_THR);
+		fc_thres_m = E830_PRTMAC_CL01_QNT_THR_CL0_M;
+	} else {
+		/* Retrieve the transmit timer */
+		val = rd32(hw,
+			   E800_PRTMAC_HSEC_CTL_TX_PS_QNT(E800_IDX_OF_LFC));
+		cmd->tx_tmr_value =
+			le16_encode_bits(val,
+					 E800_PRTMAC_HSEC_CTL_TX_PS_QNT_M);
+
+		/* Retrieve the fc threshold */
+		val = rd32(hw,
+			   E800_REFRESH_TMR(E800_IDX_OF_LFC));
+		fc_thres_m = E800_PRTMAC_HSEC_CTL_TX_PS_RFSH_TMR_M;
+	}
+	cmd->fc_refresh_threshold = le16_encode_bits(val, fc_thres_m);
 }
 
 /**
@@ -2177,16 +2195,21 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 static void
 ice_parse_fdir_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p)
 {
-	u32 reg_val, val;
+	u32 reg_val, gsize, bsize;
 
 	reg_val = rd32(hw, GLQF_FD_SIZE);
-	val = (reg_val & GLQF_FD_SIZE_FD_GSIZE_M) >>
-		GLQF_FD_SIZE_FD_GSIZE_S;
-	func_p->fd_fltr_guar =
-		ice_get_num_per_func(hw, val);
-	val = (reg_val & GLQF_FD_SIZE_FD_BSIZE_M) >>
-		GLQF_FD_SIZE_FD_BSIZE_S;
-	func_p->fd_fltr_best_effort = val;
+	switch (hw->mac_type) {
+	case ICE_MAC_E830:
+		gsize = FIELD_GET(E830_GLQF_FD_SIZE_FD_GSIZE_M, reg_val);
+		bsize = FIELD_GET(E830_GLQF_FD_SIZE_FD_BSIZE_M, reg_val);
+		break;
+	case ICE_MAC_E810:
+	default:
+		gsize = FIELD_GET(E800_GLQF_FD_SIZE_FD_GSIZE_M, reg_val);
+		bsize = FIELD_GET(E800_GLQF_FD_SIZE_FD_BSIZE_M, reg_val);
+	}
+	func_p->fd_fltr_guar = ice_get_num_per_func(hw, gsize);
+	func_p->fd_fltr_best_effort = bsize;
 
 	ice_debug(hw, ICE_DBG_INIT, "func caps: fd_fltr_guar = %d\n",
 		  func_p->fd_fltr_guar);
diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index 6d560d1c74a4..a2d384dbfc76 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (c) 2018, Intel Corporation. */
+/* Copyright (c) 2018-2023, Intel Corporation. */
 
 #ifndef _ICE_DEVIDS_H_
 #define _ICE_DEVIDS_H_
@@ -16,6 +16,14 @@
 #define ICE_DEV_ID_E823L_1GBE		0x124F
 /* Intel(R) Ethernet Connection E823-L for QSFP */
 #define ICE_DEV_ID_E823L_QSFP		0x151D
+/* Intel(R) Ethernet Controller E830-C for backplane */
+#define ICE_DEV_ID_E830_BACKPLANE	0x12D1
+/* Intel(R) Ethernet Controller E830-C for QSFP */
+#define ICE_DEV_ID_E830_QSFP56		0x12D2
+/* Intel(R) Ethernet Controller E830-C for SFP */
+#define ICE_DEV_ID_E830_SFP		0x12D3
+/* Intel(R) Ethernet Controller E830-C for SFP-DD */
+#define ICE_DEV_ID_E830_SFP_DD		0x12D4
 /* Intel(R) Ethernet Controller E810-C for backplane */
 #define ICE_DEV_ID_E810C_BACKPLANE	0x1591
 /* Intel(R) Ethernet Controller E810-C for QSFP */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 8c6e13f87b7d..d151e5bacfec 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2018-2020, Intel Corporation. */
+/* Copyright (C) 2018-2023, Intel Corporation. */
 
 /* flow director ethtool support for ice */
 
@@ -540,16 +540,24 @@ static int ice_fdir_num_avail_fltr(struct ice_hw *hw, struct ice_vsi *vsi)
 	/* total guaranteed filters assigned to this VSI */
 	num_guar = vsi->num_gfltr;
 
-	/* minus the guaranteed filters programed by this VSI */
-	num_guar -= (rd32(hw, VSIQF_FD_CNT(vsi_num)) &
-		     VSIQF_FD_CNT_FD_GCNT_M) >> VSIQF_FD_CNT_FD_GCNT_S;
-
 	/* total global best effort filters */
 	num_be = hw->func_caps.fd_fltr_best_effort;
 
-	/* minus the global best effort filters programmed */
-	num_be -= (rd32(hw, GLQF_FD_CNT) & GLQF_FD_CNT_FD_BCNT_M) >>
-		   GLQF_FD_CNT_FD_BCNT_S;
+	/* Subtract the number of programmed filters from the global values */
+	switch (hw->mac_type) {
+	case ICE_MAC_E830:
+		num_guar -= FIELD_GET(E830_VSIQF_FD_CNT_FD_GCNT_M,
+				      rd32(hw, VSIQF_FD_CNT(vsi_num)));
+		num_be -= FIELD_GET(E830_GLQF_FD_CNT_FD_BCNT_M,
+				    rd32(hw, GLQF_FD_CNT));
+		break;
+	case ICE_MAC_E810:
+	default:
+		num_guar -= FIELD_GET(E800_VSIQF_FD_CNT_FD_GCNT_M,
+				      rd32(hw, VSIQF_FD_CNT(vsi_num)));
+		num_be -= FIELD_GET(E800_GLQF_FD_CNT_FD_BCNT_M,
+				    rd32(hw, GLQF_FD_CNT));
+	}
 
 	return num_guar + num_be;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 6756f3d51d14..86936b758ade 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (c) 2018, Intel Corporation. */
+/* Copyright (c) 2018-2023, Intel Corporation. */
 
 /* Machine-generated file */
 
@@ -285,11 +285,11 @@
 #define VPLAN_TX_QBASE_VFNUMQ_M			ICE_M(0xFF, 16)
 #define VPLAN_TXQ_MAPENA(_VF)			(0x00073800 + ((_VF) * 4))
 #define VPLAN_TXQ_MAPENA_TX_ENA_M		BIT(0)
-#define PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA(_i)	(0x001E36E0 + ((_i) * 32))
-#define PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_MAX_INDEX 8
-#define PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_HSEC_CTL_TX_PAUSE_QUANTA_M ICE_M(0xFFFF, 0)
-#define PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER(_i) (0x001E3800 + ((_i) * 32))
-#define PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_M ICE_M(0xFFFF, 0)
+#define E800_PRTMAC_HSEC_CTL_TX_PS_QNT(_i)	(0x001E36E0 + ((_i) * 32))
+#define E800_PRTMAC_HSEC_CTL_TX_PS_QNT_MAX	8
+#define E800_PRTMAC_HSEC_CTL_TX_PS_QNT_M	GENMASK(15, 0)
+#define E800_PRTMAC_HSEC_CTL_TX_PS_RFSH_TMR(_i)	(0x001E3800 + ((_i) * 32))
+#define E800_PRTMAC_HSEC_CTL_TX_PS_RFSH_TMR_M	GENMASK(15, 0)
 #define GL_MDCK_TX_TDPU				0x00049348
 #define GL_MDCK_TX_TDPU_RCU_ANTISPOOF_ITR_DIS_M BIT(1)
 #define GL_MDET_RX				0x00294C00
@@ -312,7 +312,11 @@
 #define GL_MDET_TX_PQM_MAL_TYPE_S		26
 #define GL_MDET_TX_PQM_MAL_TYPE_M		ICE_M(0x1F, 26)
 #define GL_MDET_TX_PQM_VALID_M			BIT(31)
-#define GL_MDET_TX_TCLAN			0x000FC068
+#define GL_MDET_TX_TCLAN_BY_MAC(hw)				  \
+	((hw)->mac_type == ICE_MAC_E830 ? E830_GL_MDET_TX_TCLAN : \
+	 E800_GL_MDET_TX_TCLAN)
+#define E800_GL_MDET_TX_TCLAN			0x000FC068
+#define E830_GL_MDET_TX_TCLAN			0x000FCCC0
 #define GL_MDET_TX_TCLAN_QNUM_S			0
 #define GL_MDET_TX_TCLAN_QNUM_M			ICE_M(0x7FFF, 0)
 #define GL_MDET_TX_TCLAN_VF_NUM_S		15
@@ -326,7 +330,11 @@
 #define PF_MDET_RX_VALID_M			BIT(0)
 #define PF_MDET_TX_PQM				0x002D2C80
 #define PF_MDET_TX_PQM_VALID_M			BIT(0)
-#define PF_MDET_TX_TCLAN			0x000FC000
+#define PF_MDET_TX_TCLAN_BY_MAC(hw)				  \
+	((hw)->mac_type == ICE_MAC_E830 ? E830_PF_MDET_TX_TCLAN : \
+	 E800_PF_MDET_TX_TCLAN)
+#define E800_PF_MDET_TX_TCLAN			0x000FC000
+#define E830_PF_MDET_TX_TCLAN			0x000FCC00
 #define PF_MDET_TX_TCLAN_VALID_M		BIT(0)
 #define VP_MDET_RX(_VF)				(0x00294400 + ((_VF) * 4))
 #define VP_MDET_RX_VALID_M			BIT(0)
@@ -336,6 +344,8 @@
 #define VP_MDET_TX_TCLAN_VALID_M		BIT(0)
 #define VP_MDET_TX_TDPU(_VF)			(0x00040000 + ((_VF) * 4))
 #define VP_MDET_TX_TDPU_VALID_M			BIT(0)
+#define E800_GL_MNG_FWSM_FW_MODES_M		GENMASK(2, 0)
+#define E830_GL_MNG_FWSM_FW_MODES_M		GENMASK(1, 0)
 #define GL_MNG_FWSM				0x000B6134
 #define GL_MNG_FWSM_FW_LOADING_M		BIT(30)
 #define GLNVM_FLA				0x000B6108
@@ -364,13 +374,18 @@
 #define GL_PWR_MODE_CTL_CAR_MAX_BW_S		30
 #define GL_PWR_MODE_CTL_CAR_MAX_BW_M		ICE_M(0x3, 30)
 #define GLQF_FD_CNT				0x00460018
+#define E800_GLQF_FD_CNT_FD_GCNT_M		GENMASK(14, 0)
+#define E830_GLQF_FD_CNT_FD_GCNT_M		GENMASK(15, 0)
 #define GLQF_FD_CNT_FD_BCNT_S			16
-#define GLQF_FD_CNT_FD_BCNT_M			ICE_M(0x7FFF, 16)
+#define E800_GLQF_FD_CNT_FD_BCNT_M		GENMASK(30, 16)
+#define E830_GLQF_FD_CNT_FD_BCNT_M		GENMASK(31, 16)
 #define GLQF_FD_SIZE				0x00460010
 #define GLQF_FD_SIZE_FD_GSIZE_S			0
-#define GLQF_FD_SIZE_FD_GSIZE_M			ICE_M(0x7FFF, 0)
+#define E800_GLQF_FD_SIZE_FD_GSIZE_M		GENMASK(14, 0)
+#define E830_GLQF_FD_SIZE_FD_GSIZE_M		GENMASK(15, 0)
 #define GLQF_FD_SIZE_FD_BSIZE_S			16
-#define GLQF_FD_SIZE_FD_BSIZE_M			ICE_M(0x7FFF, 16)
+#define E800_GLQF_FD_SIZE_FD_BSIZE_M		GENMASK(30, 16)
+#define E830_GLQF_FD_SIZE_FD_BSIZE_M		GENMASK(31, 16)
 #define GLQF_FDINSET(_i, _j)			(0x00412000 + ((_i) * 4 + (_j) * 512))
 #define GLQF_FDMASK(_i)				(0x00410800 + ((_i) * 4))
 #define GLQF_FDMASK_MAX_INDEX			31
@@ -389,6 +404,10 @@
 #define GLQF_HMASK_SEL(_i)			(0x00410000 + ((_i) * 4))
 #define GLQF_HMASK_SEL_MAX_INDEX		127
 #define GLQF_HMASK_SEL_MASK_SEL_S		0
+#define E800_PFQF_FD_CNT_FD_GCNT_M		GENMASK(14, 0)
+#define E830_PFQF_FD_CNT_FD_GCNT_M		GENMASK(15, 0)
+#define E800_PFQF_FD_CNT_FD_BCNT_M		GENMASK(30, 16)
+#define E830_PFQF_FD_CNT_FD_BCNT_M		GENMASK(31, 16)
 #define PFQF_FD_ENA				0x0043A000
 #define PFQF_FD_ENA_FD_ENA_M			BIT(0)
 #define PFQF_FD_SIZE				0x00460100
@@ -479,6 +498,7 @@
 #define GLTSYN_SYNC_DLAY			0x00088818
 #define GLTSYN_TGT_H_0(_i)			(0x00088930 + ((_i) * 4))
 #define GLTSYN_TGT_L_0(_i)			(0x00088928 + ((_i) * 4))
+#define GLTSYN_TIME_0(_i)			(0x000888C8 + ((_i) * 4))
 #define GLTSYN_TIME_H(_i)			(0x000888D8 + ((_i) * 4))
 #define GLTSYN_TIME_L(_i)			(0x000888D0 + ((_i) * 4))
 #define PFHH_SEM				0x000A4200 /* Reset Source: PFR */
@@ -487,9 +507,11 @@
 #define PFTSYN_SEM_BUSY_M			BIT(0)
 #define VSIQF_FD_CNT(_VSI)			(0x00464000 + ((_VSI) * 4))
 #define VSIQF_FD_CNT_FD_GCNT_S			0
-#define VSIQF_FD_CNT_FD_GCNT_M			ICE_M(0x3FFF, 0)
+#define E800_VSIQF_FD_CNT_FD_GCNT_M		GENMASK(13, 0)
+#define E830_VSIQF_FD_CNT_FD_GCNT_M		GENMASK(15, 0)
 #define VSIQF_FD_CNT_FD_BCNT_S			16
-#define VSIQF_FD_CNT_FD_BCNT_M			ICE_M(0x3FFF, 16)
+#define E800_VSIQF_FD_CNT_FD_BCNT_M		GENMASK(29, 16)
+#define E830_VSIQF_FD_CNT_FD_BCNT_M		GENMASK(31, 16)
 #define VSIQF_FD_SIZE(_VSI)			(0x00462000 + ((_VSI) * 4))
 #define VSIQF_HKEY_MAX_INDEX			12
 #define PFPM_APM				0x000B8080
@@ -501,6 +523,10 @@
 #define PFPM_WUS_MAG_M				BIT(1)
 #define PFPM_WUS_MNG_M				BIT(3)
 #define PFPM_WUS_FW_RST_WK_M			BIT(31)
+#define E830_PRTMAC_CL01_PS_QNT			0x001E32A0
+#define E830_PRTMAC_CL01_PS_QNT_CL0_M		GENMASK(15, 0)
+#define E830_PRTMAC_CL01_QNT_THR		0x001E3320
+#define E830_PRTMAC_CL01_QNT_THR_CL0_M		GENMASK(15, 0)
 #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
 #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a6dd336d2500..356bf8884a63 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (c) 2018, Intel Corporation. */
+/* Copyright (c) 2018-2023, Intel Corporation. */
 
 /* Intel(R) Ethernet Connection E800 Series Linux Driver */
 
@@ -1784,7 +1784,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		wr32(hw, GL_MDET_TX_PQM, 0xffffffff);
 	}
 
-	reg = rd32(hw, GL_MDET_TX_TCLAN);
+	reg = rd32(hw, GL_MDET_TX_TCLAN_BY_MAC(hw));
 	if (reg & GL_MDET_TX_TCLAN_VALID_M) {
 		u8 pf_num = (reg & GL_MDET_TX_TCLAN_PF_NUM_M) >>
 				GL_MDET_TX_TCLAN_PF_NUM_S;
@@ -1798,7 +1798,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (netif_msg_tx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
 				 event, queue, pf_num, vf_num);
-		wr32(hw, GL_MDET_TX_TCLAN, 0xffffffff);
+		wr32(hw, GL_MDET_TX_TCLAN_BY_MAC(hw), U32_MAX);
 	}
 
 	reg = rd32(hw, GL_MDET_RX);
@@ -1826,9 +1826,9 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			dev_info(dev, "Malicious Driver Detection event TX_PQM detected on PF\n");
 	}
 
-	reg = rd32(hw, PF_MDET_TX_TCLAN);
+	reg = rd32(hw, PF_MDET_TX_TCLAN_BY_MAC(hw));
 	if (reg & PF_MDET_TX_TCLAN_VALID_M) {
-		wr32(hw, PF_MDET_TX_TCLAN, 0xFFFF);
+		wr32(hw, PF_MDET_TX_TCLAN_BY_MAC(hw), 0xffff);
 		if (netif_msg_tx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event TX_TCLAN detected on PF\n");
 	}
@@ -3896,7 +3896,8 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 	}
 
 	clear_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags);
-	if (func_caps->common_cap.ieee_1588)
+	if (func_caps->common_cap.ieee_1588 &&
+	    !(pf->hw.mac_type == ICE_MAC_E830))
 		set_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags);
 
 	pf->max_pf_txqs = func_caps->common_cap.num_txq;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f6061b508857..d6bcd83f1aed 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (c) 2018, Intel Corporation. */
+/* Copyright (c) 2018-2023, Intel Corporation. */
 
 #ifndef _ICE_TYPE_H_
 #define _ICE_TYPE_H_
@@ -130,6 +130,7 @@ enum ice_set_fc_aq_failures {
 enum ice_mac_type {
 	ICE_MAC_UNKNOWN = 0,
 	ICE_MAC_E810,
+	ICE_MAC_E830,
 	ICE_MAC_GENERIC,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index daa6a1e894cf..24b23b7ef04a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2021, Intel Corporation. */
+/* Copyright (C) 2021-2023, Intel Corporation. */
 
 #include "ice.h"
 #include "ice_base.h"
@@ -1422,8 +1422,8 @@ ice_vc_fdir_irq_handler(struct ice_vsi *ctrl_vsi,
  */
 static void ice_vf_fdir_dump_info(struct ice_vf *vf)
 {
+	u32 fd_size, fd_cnt, fd_size_g, fd_cnt_g, fd_size_b, fd_cnt_b;
 	struct ice_vsi *vf_vsi;
-	u32 fd_size, fd_cnt;
 	struct device *dev;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
@@ -1442,12 +1442,25 @@ static void ice_vf_fdir_dump_info(struct ice_vf *vf)
 
 	fd_size = rd32(hw, VSIQF_FD_SIZE(vsi_num));
 	fd_cnt = rd32(hw, VSIQF_FD_CNT(vsi_num));
-	dev_dbg(dev, "VF %d: space allocated: guar:0x%x, be:0x%x, space consumed: guar:0x%x, be:0x%x\n",
-		vf->vf_id,
-		(fd_size & VSIQF_FD_CNT_FD_GCNT_M) >> VSIQF_FD_CNT_FD_GCNT_S,
-		(fd_size & VSIQF_FD_CNT_FD_BCNT_M) >> VSIQF_FD_CNT_FD_BCNT_S,
-		(fd_cnt & VSIQF_FD_CNT_FD_GCNT_M) >> VSIQF_FD_CNT_FD_GCNT_S,
-		(fd_cnt & VSIQF_FD_CNT_FD_BCNT_M) >> VSIQF_FD_CNT_FD_BCNT_S);
+	switch (hw->mac_type) {
+	case ICE_MAC_E830:
+		fd_size_g = FIELD_GET(E830_VSIQF_FD_CNT_FD_GCNT_M, fd_size);
+		fd_size_b = FIELD_GET(E830_VSIQF_FD_CNT_FD_BCNT_M, fd_size);
+		fd_cnt_g = FIELD_GET(E830_VSIQF_FD_CNT_FD_GCNT_M, fd_cnt);
+		fd_cnt_b = FIELD_GET(E830_VSIQF_FD_CNT_FD_BCNT_M, fd_cnt);
+		break;
+	case ICE_MAC_E810:
+	default:
+		fd_size_g = FIELD_GET(E800_VSIQF_FD_CNT_FD_GCNT_M, fd_size);
+		fd_size_b = FIELD_GET(E800_VSIQF_FD_CNT_FD_BCNT_M, fd_size);
+		fd_cnt_g = FIELD_GET(E800_VSIQF_FD_CNT_FD_GCNT_M, fd_cnt);
+		fd_cnt_b = FIELD_GET(E800_VSIQF_FD_CNT_FD_BCNT_M, fd_cnt);
+	}
+
+	dev_dbg(dev, "VF %d: Size in the FD table: guaranteed:0x%x, best effort:0x%x\n",
+		vf->vf_id, fd_size_g, fd_size_b);
+	dev_dbg(dev, "VF %d: Filter counter in the FD table: guaranteed:0x%x, best effort:0x%x\n",
+		vf->vf_id, fd_cnt_g, fd_cnt_b);
 }
 
 /**
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
