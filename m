Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 491B7CF8B59
	for <lists+intel-wired-lan@lfdr.de>; Tue, 06 Jan 2026 15:14:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0DEA81638;
	Tue,  6 Jan 2026 14:14:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nvmwwcPvP5LA; Tue,  6 Jan 2026 14:14:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C49481140
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767708870;
	bh=2xax+WTk25kpLqIFJ97qcZhHuL1VDdNhqtTBu60Rc8Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dl2e9i4pEZe1EaJ8/qoNBPU+QOTU9oVca1f+MRNXLRQ5O0Gj0v3UeqlSkpVyMtm+9
	 xYeC/wWy0yrMctU+Y+xldDLyw68b6M5Mx+UbcsaaqmAj4i/UEHvt6ktY4/G751xCDB
	 C3xrroptsWQAbyoO89zNCz2LncjFUPrW3fiv/aVSzFfSsE6I8y/llCzvul/tfAOecV
	 UAfy9XRURnErDkw5GJwcFpBwfBprqoYVNKfJmmHtCHLtuUzS8eG1MoupXjQlitl5xG
	 XSRJKyb9k16nlEnze5xFisGEFJjtQjQXdYAJDohLIlAHih2hkXh5UhfSK+nQr0pfSe
	 3AOuxgjCA1BNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C49481140;
	Tue,  6 Jan 2026 14:14:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4EAF12A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40EBE40895
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:14:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QAeTSlB6kqIW for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jan 2026 14:14:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3B99C401EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B99C401EC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B99C401EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:14:28 +0000 (UTC)
X-CSE-ConnectionGUID: RkTysZqJQu+13jkliC5o6Q==
X-CSE-MsgGUID: 02BEvMpUTbm3SYw9ltIyNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="86491211"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="86491211"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 06:14:28 -0800
X-CSE-ConnectionGUID: b3zba4VVT7u/P53QP7x7bg==
X-CSE-MsgGUID: 7ztXz3pvTZWNU46EYm/AFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="226199282"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 06:14:27 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Tue,  6 Jan 2026 16:14:19 +0200
Message-Id: <20260106141420.1585948-2-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106141420.1585948-1-vitaly.lifshits@intel.com>
References: <20260106141420.1585948-1-vitaly.lifshits@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767708868; x=1799244868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XSQUnbBB7lgbYWQNeFMEWd00qlVfN2uSFzGhPXgNLP0=;
 b=WnEmGkMH916SrWSS20WX4hKabs/9P+WD+Te+iquEBaYkedQYNhYPSpjE
 Vp4yIwx4/eaEiikAGcDScJdWRmhd1k++Wah1DYmbf3DUIBvPVKLysgq9C
 ak5W2a/IAQvIefHs6JFcicbfQJjwWu55CT+s9pbzuG7nWf42Dn+Yk0nd3
 Ktws+nGrR0vUgJeyeGNUDuGAffsIBK7Z6yIKP7+SL65iobIDgE5UQs7wj
 gdqcHCpT1ZSuQhbeppagZqUqLXzTHKg74TVH5flqDn9KmKjRrddqIoUCM
 oGlZrHoFeVykrNUGP0BzlWqouwm7qb9NQ+sqk+ek1/iIwcRAWNnASHGDm
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WnEmGkMH
Subject: [Intel-wired-lan] [PATCH iwl-net v4 1/2] e1000e: introduce new
 board type for Panther Lake PCH
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

Add new board type for Panther Lake devices for separating device-specific
features and flows.
Additionally, remove the deprecated device IDs 0x57B5 and 0x57B6, which
are not used by any existing devices.

Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM generation")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v4: fix commit message
v2: edit commit message to clarify the changes
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/e1000.h   |  4 +++-
 drivers/net/ethernet/intel/e1000e/hw.h      |  2 --
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 ++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 15 +++++++--------
 4 files changed, 30 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index aa08f397988e..63ebe00376f5 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -117,7 +117,8 @@ enum e1000_boards {
 	board_pch_cnp,
 	board_pch_tgp,
 	board_pch_adp,
-	board_pch_mtp
+	board_pch_mtp,
+	board_pch_ptp
 };
 
 struct e1000_ps_page {
@@ -527,6 +528,7 @@ extern const struct e1000_info e1000_pch_cnp_info;
 extern const struct e1000_info e1000_pch_tgp_info;
 extern const struct e1000_info e1000_pch_adp_info;
 extern const struct e1000_info e1000_pch_mtp_info;
+extern const struct e1000_info e1000_pch_ptp_info;
 extern const struct e1000_info e1000_es2_info;
 
 void e1000e_ptp_init(struct e1000_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index fc8ed38aa095..c7ac599e5a7a 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -118,8 +118,6 @@ struct e1000_hw;
 #define E1000_DEV_ID_PCH_ARL_I219_V24		0x57A1
 #define E1000_DEV_ID_PCH_PTP_I219_LM25		0x57B3
 #define E1000_DEV_ID_PCH_PTP_I219_V25		0x57B4
-#define E1000_DEV_ID_PCH_PTP_I219_LM26		0x57B5
-#define E1000_DEV_ID_PCH_PTP_I219_V26		0x57B6
 #define E1000_DEV_ID_PCH_PTP_I219_LM27		0x57B7
 #define E1000_DEV_ID_PCH_PTP_I219_V27		0x57B8
 #define E1000_DEV_ID_PCH_NVL_I219_LM29		0x57B9
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 0ff8688ac3b8..eead80bba6f4 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -6208,3 +6208,23 @@ const struct e1000_info e1000_pch_mtp_info = {
 	.phy_ops		= &ich8_phy_ops,
 	.nvm_ops		= &spt_nvm_ops,
 };
+
+const struct e1000_info e1000_pch_ptp_info = {
+	.mac			= e1000_pch_ptp,
+	.flags			= FLAG_IS_ICH
+				  | FLAG_HAS_WOL
+				  | FLAG_HAS_HW_TIMESTAMP
+				  | FLAG_HAS_CTRLEXT_ON_LOAD
+				  | FLAG_HAS_AMT
+				  | FLAG_HAS_FLASH
+				  | FLAG_HAS_JUMBO_FRAMES
+				  | FLAG_APME_IN_WUC,
+	.flags2			= FLAG2_HAS_PHY_STATS
+				  | FLAG2_HAS_EEE,
+	.pba			= 26,
+	.max_hw_frame_size	= 9022,
+	.get_variants		= e1000_get_variants_ich8lan,
+	.mac_ops		= &ich8_mac_ops,
+	.phy_ops		= &ich8_phy_ops,
+	.nvm_ops		= &spt_nvm_ops,
+};
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 116f3c92b5bc..c066d820f53b 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -55,6 +55,7 @@ static const struct e1000_info *e1000_info_tbl[] = {
 	[board_pch_tgp]		= &e1000_pch_tgp_info,
 	[board_pch_adp]		= &e1000_pch_adp_info,
 	[board_pch_mtp]		= &e1000_pch_mtp_info,
+	[board_pch_ptp]		= &e1000_pch_ptp_info,
 };
 
 struct e1000_reg_info {
@@ -7926,14 +7927,12 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V21), board_pch_mtp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ARL_I219_LM24), board_pch_mtp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ARL_I219_V24), board_pch_mtp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM25), board_pch_mtp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V25), board_pch_mtp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM26), board_pch_mtp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V26), board_pch_mtp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM27), board_pch_mtp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V27), board_pch_mtp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_LM29), board_pch_mtp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_V29), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM25), board_pch_ptp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V25), board_pch_ptp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM27), board_pch_ptp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V27), board_pch_ptp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_LM29), board_pch_ptp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_V29), board_pch_ptp },
 
 	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
 };
-- 
2.34.1

