Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE2F7A220D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Sep 2023 17:12:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 589344194A;
	Fri, 15 Sep 2023 15:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 589344194A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694790773;
	bh=wbREU+fJJ+e3bmMghpQVnMiW2lCnHa6o1tsdWQsV8Q4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZsnJeG3aR16ha/dhJyj/SUPO+RbsitdxaT1OpCmmIlZRj5P8jhR+kAchIftaGs39z
	 zsYPGtjF2Ce2/xbCpEZPSljiWELbJyRFgrmMXb5vEO3a6Z9XHZa601D6jkqj6L7/vO
	 BDlgjqdthbXV7c2cYeJQXDLUtlqEwO6Ay0sctFkAw49BaFkCn1fHllq4byefFmPokH
	 TJtwnZpnVbREiXzriTOyHxVrrl3OtdKsdMmT0f/8lxtV5vCI5VwI7TknvBv9enbg+4
	 DYDFinZIMrjI+ix2Rng542CXBY2MpgMS++3s7NlZb7p+t64E5G5Ke6htintv6l6ct7
	 RMlLeP68/WYaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OK5MCd2buc8m; Fri, 15 Sep 2023 15:12:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7745F4193F;
	Fri, 15 Sep 2023 15:12:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7745F4193F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A53971BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A9AE83C01
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A9AE83C01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3jAhgTvoLlZf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Sep 2023 15:12:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1CBD083B86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CBD083B86
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="410209414"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="410209414"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:12:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868741774"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868741774"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga004.jf.intel.com with ESMTP; 15 Sep 2023 08:12:29 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9DD67333F9;
 Fri, 15 Sep 2023 16:12:27 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Sep 2023 17:09:53 +0200
Message-Id: <20230915150958.592564-2-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230915150958.592564-1-pawel.chmielewski@intel.com>
References: <20230915150958.592564-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694790755; x=1726326755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FMa8lxXglAojP+qxQVA/8IbG4UWC4vVU2J1AawiHsbY=;
 b=H25v+MpVRq/UEMd8mWktiNXWRgMOUcgq7NnwdbzDgEZeE71vRWvqaexJ
 RTxteAplfz3e631L0dR05sETRusH4iRZk9jtlqqLeeNTkLY62EL9niPBB
 aOzNG8nEHM9ME7E+L/njWlp9uCxqJPMp4IJIvOOrpW65WycC7AIomYZRL
 paEx+rjSUB/Wq5ZvaiOlXxGNkw1J+kyEko72A+ucOEixMTtB+qtwyMIbn
 NVI4E6lcgEO3I3SiaYKT6ubHk8sin3DRPi6t+kh0bZzwKDee4h+Ak0LwM
 si3A2U7/xR+8euFWiScl+cFiVe7VOQ3n/z+IK9h/3RdRo0R2V4Q/qqQTX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H25v+MpV
Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/6] ice: Add E830 device IDs,
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
Cc: Dan Nowlin <dan.nowlin@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>, andrew@lunn.ch,
 netdev@vger.kernel.org, Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>

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
index 80deca45ab59..983332cbace2 100644
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
@@ -2389,16 +2407,21 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
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
index 531cc2194741..67519a985b32 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (c) 2018, Intel Corporation. */
+/* Copyright (c) 2018-2023, Intel Corporation. */
 
 /* Machine-generated file */
 
@@ -284,11 +284,11 @@
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
@@ -311,7 +311,11 @@
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
@@ -325,7 +329,11 @@
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
@@ -335,6 +343,8 @@
 #define VP_MDET_TX_TCLAN_VALID_M		BIT(0)
 #define VP_MDET_TX_TDPU(_VF)			(0x00040000 + ((_VF) * 4))
 #define VP_MDET_TX_TDPU_VALID_M			BIT(0)
+#define E800_GL_MNG_FWSM_FW_MODES_M		GENMASK(2, 0)
+#define E830_GL_MNG_FWSM_FW_MODES_M		GENMASK(1, 0)
 #define GL_MNG_FWSM				0x000B6134
 #define GL_MNG_FWSM_FW_LOADING_M		BIT(30)
 #define GLNVM_FLA				0x000B6108
@@ -363,13 +373,18 @@
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
@@ -388,6 +403,10 @@
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
@@ -478,6 +497,7 @@
 #define GLTSYN_SYNC_DLAY			0x00088818
 #define GLTSYN_TGT_H_0(_i)			(0x00088930 + ((_i) * 4))
 #define GLTSYN_TGT_L_0(_i)			(0x00088928 + ((_i) * 4))
+#define GLTSYN_TIME_0(_i)			(0x000888C8 + ((_i) * 4))
 #define GLTSYN_TIME_H(_i)			(0x000888D8 + ((_i) * 4))
 #define GLTSYN_TIME_L(_i)			(0x000888D0 + ((_i) * 4))
 #define PFHH_SEM				0x000A4200 /* Reset Source: PFR */
@@ -486,9 +506,11 @@
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
@@ -500,6 +522,10 @@
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
index 04047f869a99..d13b6e3de920 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (c) 2018, Intel Corporation. */
+/* Copyright (c) 2018-2023, Intel Corporation. */
 
 /* Intel(R) Ethernet Connection E800 Series Linux Driver */
 
@@ -1758,7 +1758,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		wr32(hw, GL_MDET_TX_PQM, 0xffffffff);
 	}
 
-	reg = rd32(hw, GL_MDET_TX_TCLAN);
+	reg = rd32(hw, GL_MDET_TX_TCLAN_BY_MAC(hw));
 	if (reg & GL_MDET_TX_TCLAN_VALID_M) {
 		u8 pf_num = (reg & GL_MDET_TX_TCLAN_PF_NUM_M) >>
 				GL_MDET_TX_TCLAN_PF_NUM_S;
@@ -1772,7 +1772,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (netif_msg_tx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
 				 event, queue, pf_num, vf_num);
-		wr32(hw, GL_MDET_TX_TCLAN, 0xffffffff);
+		wr32(hw, GL_MDET_TX_TCLAN_BY_MAC(hw), U32_MAX);
 	}
 
 	reg = rd32(hw, GL_MDET_RX);
@@ -1800,9 +1800,9 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
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
@@ -3870,7 +3870,8 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 	}
 
 	clear_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags);
-	if (func_caps->common_cap.ieee_1588)
+	if (func_caps->common_cap.ieee_1588 &&
+	    !(pf->hw.mac_type == ICE_MAC_E830))
 		set_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags);
 
 	pf->max_pf_txqs = func_caps->common_cap.num_txq;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 5e353b0cbe6f..35ee5b29ea34 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (c) 2018, Intel Corporation. */
+/* Copyright (c) 2018-2023, Intel Corporation. */
 
 #ifndef _ICE_TYPE_H_
 #define _ICE_TYPE_H_
@@ -129,6 +129,7 @@ enum ice_set_fc_aq_failures {
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
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
