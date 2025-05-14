Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C11AB6918
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 12:46:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D646414C3;
	Wed, 14 May 2025 10:46:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n1U1Y5F5D_Xg; Wed, 14 May 2025 10:46:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0416D414C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747219601;
	bh=pIwdr9rZ62ig6ff50s+NcTMgutWkTdYnjuaWTIMonhI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=v3SKSfYIUO+Th2lE5J4hpFYKKmyB5s5GMfDpQFaLfY1ogruXgdJCYvzZORW8v4xvV
	 rldoYgmiF7x+fz07JrbkosTtRIZMXEseQjsZ+IKHBqNPO8OzQ9pZZDsPDTXKszFqjo
	 pnYm2Q8JF1OQouNPXWf5XKghTLdQsLyuSiWGdbERwT20RC6tZmt57eXnQiFPmW7Wg5
	 5cM64Jm+wsWyQi/XiCj6t9YLfnhXXkmD85IHI3hbhnwVP3vGaCJGbR82E0lBPacPO5
	 7jXzWWf95BW7JVUqjzD5U2PR34Kfw4Gr+JoyP7OK+KeVuAKk2tr3yvAoYh7fAorrlR
	 PFP2lPtyg0TSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0416D414C4;
	Wed, 14 May 2025 10:46:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 71ECE153
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 10:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6EFC76105F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 10:46:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jONt3vf3tBP8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 10:46:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9053C6103F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9053C6103F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9053C6103F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 10:46:38 +0000 (UTC)
X-CSE-ConnectionGUID: mSZgw0nKROS+6tvkC7OMjw==
X-CSE-MsgGUID: e3iKz5HkShWjBRQnyTW+pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="48997029"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="48997029"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 03:46:37 -0700
X-CSE-ConnectionGUID: 4DGcdgobTqSqMfJK1tqyjw==
X-CSE-MsgGUID: p5gPFPN4Tsm+oTkvttxnwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="175134616"
Received: from pae-dbg-x10sri-f_n1_f_263.igk.intel.com (HELO
 localhost.igk.intel.com) ([172.28.191.222])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 03:46:36 -0700
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 Konrad Knitter <konrad.knitter@intel.com>
Date: Wed, 14 May 2025 12:46:32 +0200
Message-ID: <20250514104632.331559-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747219598; x=1778755598;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WKJKCZ05Tlu7Vl3oWAyEJ61hqFIgoEFEDZkj7PeTUxI=;
 b=ZYxFkxroRYurykGNoyYNfmwbDfj8Dsnc40fZ0RCgPVEAQmGK/1lzaPDJ
 5MDSbKY3v6wBBUrlXHLiIC17wVbV3qLBby+6IiJI2BDnuzDLF3vywIpM6
 UUtBVXjsAgQ1QpJLzOmGN4va5cSl2Kav63C7cle/eqZPUwqRzrKS2rBd7
 Y+Z7Gg6HW5sd2fUemuI5Mjrxn1FqAW1aXkpu59a2D1AZWVWkrPLJZMjVY
 Qlv0tHno1b+ovZB85b/H747Fdaxwn6U4O8/a9WjyMBidYrezbKbkf1P4p
 Gd/mHA+3wkb6nQoFYGf6HzGUKqGqJ3FxobK+7bpI2GsD2jcdq6XYWtnzW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZYxFkxro
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: add E835 device IDs
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

E835 is an enhanced version of the E830.
It continues to use the same set of commands, registers and interfaces
as other devices in the 800 Series.

Following device IDs are added:
- 0x1248: Intel(R) Ethernet Controller E835-CC for backplane
- 0x1249: Intel(R) Ethernet Controller E835-CC for QSFP
- 0x124A: Intel(R) Ethernet Controller E835-CC for SFP
- 0x1261: Intel(R) Ethernet Controller E835-C for backplane
- 0x1262: Intel(R) Ethernet Controller E835-C for QSFP
- 0x1263: Intel(R) Ethernet Controller E835-C for SFP
- 0x1265: Intel(R) Ethernet Controller E835-L for backplane
- 0x1266: Intel(R) Ethernet Controller E835-L for QSFP
- 0x1267: Intel(R) Ethernet Controller E835-L for SFP

Reviewed-by: Konrad Knitter <konrad.knitter@intel.com>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  9 +++++++++
 drivers/net/ethernet/intel/ice/ice_devids.h | 18 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c   |  9 +++++++++
 3 files changed, 36 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 6e38d46c2c51..010ad09b3200 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -171,6 +171,15 @@ static int ice_set_mac_type(struct ice_hw *hw)
 	case ICE_DEV_ID_E830_XXV_QSFP:
 	case ICE_DEV_ID_E830C_SFP:
 	case ICE_DEV_ID_E830_XXV_SFP:
+	case ICE_DEV_ID_E835CC_BACKPLANE:
+	case ICE_DEV_ID_E835CC_QSFP56:
+	case ICE_DEV_ID_E835CC_SFP:
+	case ICE_DEV_ID_E835C_BACKPLANE:
+	case ICE_DEV_ID_E835C_QSFP:
+	case ICE_DEV_ID_E835C_SFP:
+	case ICE_DEV_ID_E835_L_BACKPLANE:
+	case ICE_DEV_ID_E835_L_QSFP:
+	case ICE_DEV_ID_E835_L_SFP:
 		hw->mac_type = ICE_MAC_E830;
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index 34fd604132f5..7761c3501174 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -36,6 +36,24 @@
 #define ICE_DEV_ID_E830_XXV_QSFP	0x12DD
 /* Intel(R) Ethernet Controller E830-XXV for SFP */
 #define ICE_DEV_ID_E830_XXV_SFP		0x12DE
+/* Intel(R) Ethernet Controller E835-CC for backplane */
+#define ICE_DEV_ID_E835CC_BACKPLANE	0x1248
+/* Intel(R) Ethernet Controller E835-CC for QSFP */
+#define ICE_DEV_ID_E835CC_QSFP56	0x1249
+/* Intel(R) Ethernet Controller E835-CC for SFP */
+#define ICE_DEV_ID_E835CC_SFP		0x124A
+/* Intel(R) Ethernet Controller E835-C for backplane */
+#define ICE_DEV_ID_E835C_BACKPLANE	0x1261
+/* Intel(R) Ethernet Controller E835-C for QSFP */
+#define ICE_DEV_ID_E835C_QSFP		0x1262
+/* Intel(R) Ethernet Controller E835-C for SFP */
+#define ICE_DEV_ID_E835C_SFP		0x1263
+/* Intel(R) Ethernet Controller E835-L for backplane */
+#define ICE_DEV_ID_E835_L_BACKPLANE	0x1265
+/* Intel(R) Ethernet Controller E835-L for QSFP */
+#define ICE_DEV_ID_E835_L_QSFP		0x1266
+/* Intel(R) Ethernet Controller E835-L for SFP */
+#define ICE_DEV_ID_E835_L_SFP		0x1267
 /* Intel(R) Ethernet Controller E810-C for backplane */
 #define ICE_DEV_ID_E810C_BACKPLANE	0x1591
 /* Intel(R) Ethernet Controller E810-C for QSFP */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c4264984cfcb..5c941f4426d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5906,6 +5906,15 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_QSFP), },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830C_SFP), },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_SFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835CC_BACKPLANE), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835CC_QSFP56), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835CC_SFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835C_BACKPLANE), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835C_QSFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835C_SFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835_L_BACKPLANE), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835_L_QSFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835_L_SFP), },
 	/* required last entry */
 	{}
 };
-- 
2.47.0

