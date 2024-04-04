Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA2489843C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 11:36:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9581141BB9;
	Thu,  4 Apr 2024 09:36:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vk0mTrFAbjhH; Thu,  4 Apr 2024 09:36:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E3D841BB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712223390;
	bh=SjjTEOm3Q8y6qa2y8QzgYNBB/gCDCm7q3iwYycwmhCo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CAJTnirklp3SSm4VExz6QR4Cy2+N3nP95FpEC3yn8QXwl3eyLY078saG2DP0HP7d3
	 ZnIi+t3OIzBIr+pkO9NLeeThOl2nh7qyeGrtfRT7+mF1Z4Lfb/FQnJV5/YOE+C2R+J
	 pJMxZ9xZagLD20pOx739JkM7uKtJ/+DjipOITNifhkQR40t6UjbbPo1nohA7hqQOEu
	 zmIV174qzrzVp7H0J2rnkrDavcJSfcSrcdBXJvFCPksevCmT+MKQ8rh5MkZcF5IsMe
	 OGYVbx3FTchtb9/3UbnKk3k3h1vUwTvJ3etL4YUf0AFQhVmzlYtG6LIP7tgplkjbk0
	 Rhc3sa7NlqtUw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E3D841BB3;
	Thu,  4 Apr 2024 09:36:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 215201BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:36:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0DA2782F0F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:36:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RYYTxShClMEU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 09:36:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CE94782F50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE94782F50
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE94782F50
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:36:22 +0000 (UTC)
X-CSE-ConnectionGUID: Z3w1pd5GR+S4RWy83/bHmA==
X-CSE-MsgGUID: j825TlTuTDy7wkbyXzhhJg==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="29966617"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="29966617"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 02:23:14 -0700
X-CSE-ConnectionGUID: A3hcHsOVSWGHLB9ID892/g==
X-CSE-MsgGUID: Gsm8+NrDTW++Ecrlfeg5Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="56180813"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2024 02:23:11 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Apr 2024 11:10:00 +0200
Message-ID: <20240404092238.26975-26-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240404092238.26975-14-karol.kolacinski@intel.com>
References: <20240404092238.26975-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712223382; x=1743759382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pfoNFYOr3EovMbGTtnSk+2UVggl44Rnff6vBk+RWHFs=;
 b=fbgSQJenmP7oVarQMv49b3tKegrkEDLtpno4szjm64SNjlKxhauoSkvl
 P1AzG3Nz+GWuwz3M6CoiXKjWzQCf5RIR4gPUdmg8izjCl3Tc6DFwk7lii
 GcZIM5zit/Yky3T5Ey+e7ZezAbTn1WPEq2OE9Cjr7cFmpL7B4Dcq29FGL
 shFmMnM8cFhvenfJlL6Y0QmYlCysje6lIb9CI6rKdHugn+Xdx8FkLurx3
 paf58P73P6vN4p7XVpe/Bs8EDos73id+SrOrtiCENj11//ZbttfGfpZge
 94Ljmh7RDG1h+desXei63KKAJ7G+YYVqiegu/Xm1A2/qvs/a20aczYvte
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fbgSQJen
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 12/12] ice: Adjust PTP init
 for 2x50G E825C devices
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

From FW/HW perspective, 2 port topology in E825C devices requires
merging of 2 port mapping internally and breakout mapping externally.
As a consequence, it requires different port numbering from PTP code
perspective.
For that topology, pf_id can not be used to index PTP ports. Even if
the 2nd port is identified as port with pf_id = 1, all PHY operations
need to be performed as it was port 2. Thus, special mapping is needed
for the 2nd port.
This change adds detection of 2x50G topology and applies 'custom'
mapping on the 2nd port.

Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V4 -> V5: - reworded commit mesage
	  - renamed GLGEN_SWITCH_MODE_CONFIG_SELECT_25X4_ON_SINGLE_QUAD_M to
	    GLGEN_SWITCH_MODE_CONFIG_25X4_QUAD_M

 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  4 ++++
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  5 +++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 22 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_type.h     |  9 ++++++++
 4 files changed, 40 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index cfac1d432c15..91cbae1eec89 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -157,6 +157,8 @@
 #define GLGEN_RTRIG_CORER_M			BIT(0)
 #define GLGEN_RTRIG_GLOBR_M			BIT(1)
 #define GLGEN_STAT				0x000B612C
+#define GLGEN_SWITCH_MODE_CONFIG		0x000B81E0
+#define GLGEN_SWITCH_MODE_CONFIG_25X4_QUAD_M	BIT(2)
 #define GLGEN_VFLRSTAT(_i)			(0x00093A04 + ((_i) * 4))
 #define PFGEN_CTRL				0x00091000
 #define PFGEN_CTRL_PFSWR_M			BIT(0)
@@ -177,6 +179,8 @@
 #define GLINT_CTL_ITR_GRAN_50_M			ICE_M(0xF, 24)
 #define GLINT_CTL_ITR_GRAN_25_S			28
 #define GLINT_CTL_ITR_GRAN_25_M			ICE_M(0xF, 28)
+#define GLGEN_MAC_LINK_TOPO			0x000B81DC
+#define GLGEN_MAC_LINK_TOPO_LINK_TOPO_M		GENMASK(1, 0)
 #define GLINT_DYN_CTL(_INT)			(0x00160000 + ((_INT) * 4))
 #define GLINT_DYN_CTL_INTENA_M			BIT(0)
 #define GLINT_DYN_CTL_CLEARPBA_M		BIT(1)
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 29a86fcfd312..71b19fcb7d14 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1470,6 +1470,8 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 		return;
 
 	ptp_port = &pf->ptp.port;
+	if (ice_is_e825c(hw) && hw->ptp.is_2x50g_muxed_topo)
+		port *= 2;
 	if (WARN_ON_ONCE(ptp_port->port_num != port))
 		return;
 
@@ -3327,6 +3329,9 @@ void ice_ptp_init(struct ice_pf *pf)
 	}
 
 	ptp->port.port_num = hw->pf_id;
+	if (ice_is_e825c(hw) && hw->ptp.is_2x50g_muxed_topo)
+		ptp->port.port_num = hw->pf_id * 2;
+
 	err = ice_ptp_init_port(pf, &ptp->port);
 	if (err)
 		goto err;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 1fdb7f173127..21c7758b98f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2458,6 +2458,26 @@ static int ice_get_phy_tx_tstamp_ready_eth56g(struct ice_hw *hw, u8 port,
 	return 0;
 }
 
+/**
+ * ice_is_muxed_topo - detect breakout 2x50G topology for E825C
+ * @hw: pointer to the HW struct
+ *
+ * Returns: true if it's 2x50 breakout topology, false otherwise
+ */
+static bool ice_is_muxed_topo(struct ice_hw *hw)
+{
+	u8 link_topo;
+	bool mux;
+	u32 val;
+
+	val = rd32(hw, GLGEN_SWITCH_MODE_CONFIG);
+	mux = FIELD_GET(GLGEN_SWITCH_MODE_CONFIG_25X4_QUAD_M, val);
+	val = rd32(hw, GLGEN_MAC_LINK_TOPO);
+	link_topo = FIELD_GET(GLGEN_MAC_LINK_TOPO_LINK_TOPO_M, val);
+
+	return (mux && link_topo == ICE_LINK_TOPO_UP_TO_2_LINKS);
+}
+
 /**
  * ice_ptp_init_phy_e825c - initialize PHY parameters
  * @hw: pointer to the HW struct
@@ -2490,6 +2510,8 @@ static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
 			return;
 		}
 	}
+
+	ptp->is_2x50g_muxed_topo = ice_is_muxed_topo(hw);
 }
 
 /* E822 family functions
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index e019dad56819..c5b2ad113d1a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -851,6 +851,14 @@ enum ice_phy_model {
 	ICE_PHY_ETH56G,
 };
 
+/* Global Link Topology */
+enum ice_global_link_topo {
+	ICE_LINK_TOPO_UP_TO_2_LINKS,
+	ICE_LINK_TOPO_UP_TO_4_LINKS,
+	ICE_LINK_TOPO_UP_TO_8_LINKS,
+	ICE_LINK_TOPO_RESERVED,
+};
+
 struct ice_ptp_hw {
 	enum ice_phy_model phy_model;
 	union ice_phy_params phy;
@@ -858,6 +866,7 @@ struct ice_ptp_hw {
 	u8 ports_per_phy;
 	bool primary_nac;
 	struct ice_hw *primary_hw;
+	bool is_2x50g_muxed_topo;
 };
 
 /* Port hardware description */
-- 
2.43.0

