Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D2B88C9A5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 17:45:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF0584036F;
	Tue, 26 Mar 2024 16:45:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A_vHio9iMSmR; Tue, 26 Mar 2024 16:45:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 219F240430
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711471551;
	bh=614ZGIqGWw80Vu5vnLV/u4pxyRb80W8xnr+b2BmH9Qg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BaLTfLu1w3opKeYsdM2gd6d2h0oneaG28MJgIpIVcvJ8jek0Qy4jJvxk9Eg15COIc
	 oJWgZzmyRIlq9aRiFLYUlxQqRcdAyTFTmB/tNf7z5LGGrFz0rhBUwJXwCfkNQCMhB6
	 tVT6xVNY1YxYmccC3Q2TMN2Oz8zDz77qTsduPX1w7aDtfr4zK+rJl9NQedYl/cojNf
	 0eyaFY1uqGPWJjwkUFA3bkeTWpSp1g1FrDIOdrs7rTOB+gPbJ3I95r7udg2aznkFzA
	 p+fgbwrVnEqR5rPKLnGng0arF3nGx2Tpd9Xjlvwd5qL38+6oEvPr7l5vEZs1hpwwvC
	 qi0zbKAkwT32g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 219F240430;
	Tue, 26 Mar 2024 16:45:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 528381BF364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E3F381FF5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vn8ltSFq0Jze for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 16:45:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7D8B381FE4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D8B381FE4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D8B381FE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:45:47 +0000 (UTC)
X-CSE-ConnectionGUID: 7zipz4atQhKj2X1/bLBcew==
X-CSE-MsgGUID: R4YTU5EPRFaOu+Apy49DRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6641362"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6641362"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 09:45:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16454703"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by orviesa006.jf.intel.com with ESMTP; 26 Mar 2024 09:45:45 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 12:36:34 -0400
Message-ID: <20240326163635.1529314-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711471548; x=1743007548;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p7zW31pRYo4ewHJL+DrYHQ+huz3ere1PqGO1Pp9kuwE=;
 b=l3+D8P/OtnwkP0Y/cm+aJdyvu8w+rtIxoAPyttwSSihz/WNfuj2DdWYy
 Q8iSHdb5LkSRMQeD3U8CkHaIV5Z8J0uK1ezD/G+HmcvT2cGDWepVmp/SA
 CWB5ApsRK44aD/W8Ll0YBSujwDuFWpVkf3zuQD4O75//PaxI0Z9NcoROQ
 t+Kh4gLVniUkv+jopEZ7muDwXxCJLMVfWTmHQUnXtr4PLPOdyT8KJxomC
 sVsVSMmQrmFTG2yRK71zxaofCy7ilGMVAkgdpo8WvqH+2mfUUlV52uK/V
 xd/qshPDvd++NPMupdoLauP7YKtlkfUbu2z7i2pdxJFUoUGKBWOe3Nb6t
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l3+D8P/O
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] ice: add additional E830
 device ids
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for additional E830 device ids which are supported by the
driver:
- 0x12D5: Intel(R) Ethernet Controller E830-C for backplane
- 0x12D8: Intel(R) Ethernet Controller E830-C for QSFP
- 0x12DA: Intel(R) Ethernet Controller E830-C for SFP
- 0x12DC: Intel(R) Ethernet Controller E830-XXV for backplane
- 0x12DD: Intel(R) Ethernet Controller E830-XXV for QSFP
- 0x12DE: Intel(R) Ethernet Controller E830-XXV for SFP

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  6 ++++++
 drivers/net/ethernet/intel/ice/ice_devids.h | 12 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c   |  6 ++++++
 3 files changed, 24 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f4ac3c30b124..acfae3cd5b6c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -164,6 +164,12 @@ static int ice_set_mac_type(struct ice_hw *hw)
 	case ICE_DEV_ID_E830_QSFP56:
 	case ICE_DEV_ID_E830_SFP:
 	case ICE_DEV_ID_E830_SFP_DD:
+	case ICE_DEV_ID_E830C_BACKPLANE:
+	case ICE_DEV_ID_E830_XXV_BACKPLANE:
+	case ICE_DEV_ID_E830C_QSFP:
+	case ICE_DEV_ID_E830_XXV_QSFP:
+	case ICE_DEV_ID_E830C_SFP:
+	case ICE_DEV_ID_E830_XXV_SFP:
 		hw->mac_type = ICE_MAC_E830;
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index 9dfae9bce758..c37b2b450b02 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -24,6 +24,18 @@
 #define ICE_DEV_ID_E830_SFP		0x12D3
 /* Intel(R) Ethernet Controller E830-C for SFP-DD */
 #define ICE_DEV_ID_E830_SFP_DD		0x12D4
+/* Intel(R) Ethernet Controller E830-C for backplane */
+#define ICE_DEV_ID_E830C_BACKPLANE	0x12D5
+/* Intel(R) Ethernet Controller E830-C for QSFP */
+#define ICE_DEV_ID_E830C_QSFP		0x12D8
+/* Intel(R) Ethernet Controller E830-C for SFP */
+#define ICE_DEV_ID_E830C_SFP		0x12DA
+/* Intel(R) Ethernet Controller E830-XXV for backplane */
+#define ICE_DEV_ID_E830_XXV_BACKPLANE	0x12DC
+/* Intel(R) Ethernet Controller E830-XXV for QSFP */
+#define ICE_DEV_ID_E830_XXV_QSFP	0x12DD
+/* Intel(R) Ethernet Controller E830-XXV for SFP */
+#define ICE_DEV_ID_E830_XXV_SFP		0x12DE
 /* Intel(R) Ethernet Controller E810-C for backplane */
 #define ICE_DEV_ID_E810C_BACKPLANE	0x1591
 /* Intel(R) Ethernet Controller E810-C for QSFP */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3dea0d4c767c..2f198bf3d8b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5695,6 +5695,12 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_QSFP56) },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP) },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP_DD) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830C_BACKPLANE), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_BACKPLANE), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830C_QSFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_QSFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830C_SFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_SFP), },
 	/* required last entry */
 	{}
 };
-- 
2.41.0

