Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8EB88C9A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 17:45:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CA3640196;
	Tue, 26 Mar 2024 16:45:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E0ME7t1B6F9m; Tue, 26 Mar 2024 16:45:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48A7B41522
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711471553;
	bh=B5heRpOQuxDQC6SCYnpXiJeCvHirKFGt3SfPQrU+PHM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dPh8kI6U40qjAkMQa5psqgk1CnC3zDVBOktjfJ9+vrs7+tpKO2sKPzj66CubmjPKK
	 p4OoGlJKlB6g6cZmotQ5sB8RAkTW6gDnfR1pKwY2E59rxqnnNdgAYQ8td6ESf+XEaZ
	 wh7161JGm7lp4e3q3VlJxYEEZ4+wAkM+4fUsF8CIxIFHkMMhgHm6EtFj3OMMjJVhYC
	 WH0tEXvwPg1bEI4FZERk0h+Qm0wHfuCYQ0z3yHPVsM5DpLe/cdydmQDjlQ2vhozVFF
	 J393jz+UsISpRWmtjB76iYTf7qHEOqSejviM8UMsIhb4Ybiwc9hHDR095qAWK3YJxu
	 gcdAPSL0co/Ow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48A7B41522;
	Tue, 26 Mar 2024 16:45:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C6561BF364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:45:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8760181FE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 16XZbu_NVm4W for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 16:45:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D2DA981FED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2DA981FED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D2DA981FED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:45:47 +0000 (UTC)
X-CSE-ConnectionGUID: My1k48qsSsC14Xo/PxYo2A==
X-CSE-MsgGUID: 5+i+gBDCTnu+HlZulPmpvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6641364"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6641364"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 09:45:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16454711"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by orviesa006.jf.intel.com with ESMTP; 26 Mar 2024 09:45:47 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 12:36:35 -0400
Message-ID: <20240326163635.1529314-2-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240326163635.1529314-1-paul.greenwalt@intel.com>
References: <20240326163635.1529314-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711471548; x=1743007548;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+CPRoVEvK1MUffkHd8kdGqWuyQyqdXJNYwSLZD3tE7I=;
 b=cxMowhnLX8YwcgYn9mSV84WwyZQK6V+TzmnKKpr9kAW6YRtZlPEObrHm
 iF8yb8ehbg8DT2ukJYgK43IVIiB4J0jzPZvRYEI0qb4o0QWgzqANGHQPE
 sYklVxt3++FVd2miZU4RWmOvgsn2ZbC0zuvU/kblhY18eh+VcsHHqqOyd
 QF0LhPcyMPl/sl72vm56HWh+drHiV4gcIDSbZB70DasrBmFaQE1PAhDVS
 bs68Qw25UV3fJ/y/KByhhEQUQ4DrvhLuLpAAou+NSnfpi+m1lIPJ5i8jc
 CHfVVrU1XMo5WXYRCVnqXGs18q8FGAEf7GNjqho9/bwTM18eIGXaSLPXn
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cxMowhnL
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] ice: update E830 device
 ids and comments
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

Update existing E830 device ids and comments to align with new naming 'C'
for 100G and 'CC' for 200G.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_devids.h | 16 ++++++++--------
 drivers/net/ethernet/intel/ice/ice_main.c   |  8 ++++----
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index acfae3cd5b6c..199049e08a78 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -160,10 +160,10 @@ static int ice_set_mac_type(struct ice_hw *hw)
 	case ICE_DEV_ID_E825C_SGMII:
 		hw->mac_type = ICE_MAC_GENERIC_3K_E825;
 		break;
-	case ICE_DEV_ID_E830_BACKPLANE:
-	case ICE_DEV_ID_E830_QSFP56:
-	case ICE_DEV_ID_E830_SFP:
-	case ICE_DEV_ID_E830_SFP_DD:
+	case ICE_DEV_ID_E830CC_BACKPLANE:
+	case ICE_DEV_ID_E830CC_QSFP56:
+	case ICE_DEV_ID_E830CC_SFP:
+	case ICE_DEV_ID_E830CC_SFP_DD:
 	case ICE_DEV_ID_E830C_BACKPLANE:
 	case ICE_DEV_ID_E830_XXV_BACKPLANE:
 	case ICE_DEV_ID_E830C_QSFP:
diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index c37b2b450b02..9a1bc434f167 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -16,14 +16,14 @@
 #define ICE_DEV_ID_E823L_1GBE		0x124F
 /* Intel(R) Ethernet Connection E823-L for QSFP */
 #define ICE_DEV_ID_E823L_QSFP		0x151D
-/* Intel(R) Ethernet Controller E830-C for backplane */
-#define ICE_DEV_ID_E830_BACKPLANE	0x12D1
-/* Intel(R) Ethernet Controller E830-C for QSFP */
-#define ICE_DEV_ID_E830_QSFP56		0x12D2
-/* Intel(R) Ethernet Controller E830-C for SFP */
-#define ICE_DEV_ID_E830_SFP		0x12D3
-/* Intel(R) Ethernet Controller E830-C for SFP-DD */
-#define ICE_DEV_ID_E830_SFP_DD		0x12D4
+/* Intel(R) Ethernet Controller E830-CC for backplane */
+#define ICE_DEV_ID_E830CC_BACKPLANE	0x12D1
+/* Intel(R) Ethernet Controller E830-CC for QSFP */
+#define ICE_DEV_ID_E830CC_QSFP56	0x12D2
+/* Intel(R) Ethernet Controller E830-CC for SFP */
+#define ICE_DEV_ID_E830CC_SFP		0x12D3
+/* Intel(R) Ethernet Controller E830-CC for SFP-DD */
+#define ICE_DEV_ID_E83CC0_SFP_DD	0x12D4
 /* Intel(R) Ethernet Controller E830-C for backplane */
 #define ICE_DEV_ID_E830C_BACKPLANE	0x12D5
 /* Intel(R) Ethernet Controller E830-C for QSFP */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2f198bf3d8b1..3c76c3ffe7a4 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5691,10 +5691,10 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E825C_QSFP), },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E825C_SFP), },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E825C_SGMII), },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_BACKPLANE) },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_QSFP56) },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP) },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP_DD) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830CC_BACKPLANE) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830CC_QSFP56) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830CC_SFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830CC_SFP_DD) },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830C_BACKPLANE), },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_BACKPLANE), },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830C_QSFP), },
-- 
2.41.0

