Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63828891046
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 02:16:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFBFE82B5E;
	Fri, 29 Mar 2024 01:16:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id boOyML6sqK92; Fri, 29 Mar 2024 01:16:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 008B782925
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711674985;
	bh=3RKnMe7mNNeAoOYHUASgIBvOnW0UOGbUcuVkApPdG4Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Gl/OjvjNVjRZc3bWeir4s195ulQF/6JTy3zN7aMGNB9Z322nwthqaoFpl+CEv5JN6
	 2oSLCzMI/VSRX7dslpsDk8xX9ruR8QOros7St3a2jWmTZBbIZOHSnKuUm4yc7sgzfE
	 HUPiwpw5PQSWkEc4Pzfc7wC+jVDYS6AklQYdAeY/fu89gj8xt/O+A8Yy9t/w3wJdUO
	 VCWG3GUD3qKVtTKdMPkoWPJqtzN3OHj2FOHVSMAOG5fvv1vlozaLlHyp9Houl5Iic5
	 m0iKN2VQHDJshdNLLjWVmcF1HCHEj/o2Ym8rWAA7Zco6px6CmTUupIWjOSHZP/f7pq
	 YCgCi13BKKP+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 008B782925;
	Fri, 29 Mar 2024 01:16:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A1101BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 01:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2DA8F8291A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 01:16:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AgFer0YyFch9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 01:16:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5C2A58291D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C2A58291D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C2A58291D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 01:16:20 +0000 (UTC)
X-CSE-ConnectionGUID: D121v1YfRpepyCm4BWYdoA==
X-CSE-MsgGUID: ZxMjaoF/SKmxEAiTgCjpRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="24356385"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="24356385"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:16:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="16655067"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by orviesa010.jf.intel.com with ESMTP; 28 Mar 2024 18:16:18 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Mar 2024 21:07:08 -0400
Message-ID: <20240329010708.2805384-2-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240329010708.2805384-1-paul.greenwalt@intel.com>
References: <20240329010708.2805384-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674980; x=1743210980;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CvZehSbWKeBh4QuMGgjE+8fKhFS+fC9i6U7CwwtnJW8=;
 b=aDWPg93FGaG0WPB0BAlzwxgnw4RswuOXgsETdk9n60QhJvMcuG/XKTBF
 rogd+Vrr65e1jiR48juxCAzlGchSmdM/hjBDdMlBoepJeUVuMKji4Jwj5
 xkMl972qyZCD7YV8ullgRO6BBQkiRoyfAPYYOU6l44hzEqW6fvB68N0jP
 Ffamz3HxaiS8pstIjEAYF5GhvBi8KmggW6BrhurSdhGv+Vzhq4xtI3KcC
 pkpCJsApREAf2BPfv1ZunL7dFmSkxSPz15FjAjKQWYNfxpgYyz2WJd6m1
 JUa1cUihoZAbR8pPC5IaiF8Z/S1gVbbEWCCWJZqa8Txu5zbKLaGlm8ruF
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aDWPg93F
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/2] ice: update E830 device
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
v2 -> v3: fix compiler error
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
index c37b2b450b02..34fd604132f5 100644
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
+#define ICE_DEV_ID_E830CC_SFP_DD	0x12D4
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

