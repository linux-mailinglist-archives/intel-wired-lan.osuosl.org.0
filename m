Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8271CD8A50
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 10:50:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 776906082E;
	Tue, 23 Dec 2025 09:50:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5kkcauHRW8rF; Tue, 23 Dec 2025 09:50:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E37DD605DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766483445;
	bh=6tDKAgKgzCC1AQAkkm2Y4D/x3ymWuTDeOoyLkxjU7tQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LfMKMs5Un5gGDYLRjimuInSGSUk7x3HEFEv7U0weVFhgyqTydo8mRpx44uuOkhNE1
	 3ans/o6n5ndL+3XbWPj3F3Gk67gM68qfKgLTteTH5L24kuj8I8ZC0r/BgSxQuwXIQ7
	 FkOCiUebTHEwwosQionhabXcWZ/15UQcbjFSMRZv3LJu/zg8eVospgKxJc8cvoU+21
	 c7uamuJvNhIqCgfiboOvpYu4kEkTTo1ulHC/4/lkl+PuyL+iVBjokF4fxO2uQE2H1A
	 KVSWFQihQli36oufawY3SLDtuwKQNPnj0Q5t4g9TYmnANNS2/Gej2XqoI22SW8RiKp
	 oYttxAtfTO4XA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E37DD605DA;
	Tue, 23 Dec 2025 09:50:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 19AFF25A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 09:50:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0088240698
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 09:50:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5YEvmgh5rE2S for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Dec 2025 09:50:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E92CB4067D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E92CB4067D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E92CB4067D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 09:50:42 +0000 (UTC)
X-CSE-ConnectionGUID: jwGBFI9ORaWqvkut50IC4A==
X-CSE-MsgGUID: rzv4P1bSTYqUhhWVMt9mNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68226482"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68226482"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 01:50:43 -0800
X-CSE-ConnectionGUID: 1IbyfoI6Rdq8E7UaTDcnGQ==
X-CSE-MsgGUID: K4iPYo9eTge9qS+7HH45GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199504654"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 01:50:42 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Tue, 23 Dec 2025 11:50:31 +0200
Message-Id: <20251223095032.1379862-2-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251223095032.1379862-1-vitaly.lifshits@intel.com>
References: <20251223095032.1379862-1-vitaly.lifshits@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766483443; x=1798019443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mpLT+3NZBhBQNcrViupmspOLXypKceX7l733+I1m8yw=;
 b=XEcVUfAgfhHrU95xYxEasJM5n6Y2W8JQzr6FauM0u2FcXYt5lwWMYH2b
 i6djGyvLcqYHvUCf4zxGweysE3d97IBpOrpZx7bbPP8XAu7PhzngO8erC
 6m8LWhR8oMgV4LuMgBTJnAuFDgLvtZRR6dDD3YrEtysvfOgcOP2tMdEHK
 AWmg1SmswpWeZModsfUiHnl1LTTXJaOM3SMq4N/59+ZvD0Y8DkMM7EW8c
 qINvuFhBfw/UeYtj6k55997R/t6sT+HrWzhxbccwVVHteFY3lZnmWNQG0
 Rq6P5aGSFkvko8UETt+OKQtQxdHSCF6HQ3BuVbvfcyBV7bS5VsuQi1uHi
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XEcVUfAg
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/2] e1000e: introduce new MAC
 type for Panther Lake PCH
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

Add new MAC type for Panther Lake devices for separating device-specific
features and flows.
Additionally, remove the discontinued device IDs: 0x57B5, 0x57B6.

Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM generation")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
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

