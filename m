Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DADCBCF7C24
	for <lists+intel-wired-lan@lfdr.de>; Tue, 06 Jan 2026 11:22:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2469760B6C;
	Tue,  6 Jan 2026 10:22:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fHjKyUn8BWMT; Tue,  6 Jan 2026 10:22:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D87560A89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767694922;
	bh=/8RDTmhC+bbjVgmzeTW1IaG90WKs7JftM9hjlWW72Q0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lUDrc0HnS/aHPE+tzFY69R7P76fj0yDJNeQvA/a6cVK6UbUr/IYOcIfnwCVDB4fhG
	 u0H9wleTETop8ki7ye0VdRjqUon/i+m7H7MT7yf1h5kbHQmd0ULonW6giq4Xudj5Td
	 tUWcLHoplbU3VyIr3lTtJti/5aYx8NmyIoHhUgS+9EBgglKovGzDkfOKfEVfA9GdFx
	 wfoePL3iU3q99k4veA/14EteocoUG0EjgpnGGOWGitFx02x/sgHqdYRwOGg3EGkepi
	 ZkuC+Y3OUSezgWyMqX05TR8zNrGHx4ydungl9L6hJgvfsIrTcjgthV28/w7lS19y4w
	 A3LuBwrB+Jpjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D87560A89;
	Tue,  6 Jan 2026 10:22:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 66E66249
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59299607DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:22:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3PwC50l22SkK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jan 2026 10:22:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A400060782
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A400060782
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A400060782
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:22:00 +0000 (UTC)
X-CSE-ConnectionGUID: DtAFwqyzR9OrtyukZgb0Fw==
X-CSE-MsgGUID: k9qvTcFARMakDLPaFPpG9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="68966581"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="68966581"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 02:22:00 -0800
X-CSE-ConnectionGUID: o5JRT9GtTmqWlb0A8Q/Q1w==
X-CSE-MsgGUID: iHGTgaejS8uEDqatSMjrrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="207175229"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 02:22:00 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Tue,  6 Jan 2026 12:21:52 +0200
Message-Id: <20260106102153.1577396-2-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106102153.1577396-1-vitaly.lifshits@intel.com>
References: <20260106102153.1577396-1-vitaly.lifshits@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767694920; x=1799230920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0URrROtyfXlnLDqLv8ktdwScnEJE6H0FRCNfbjvcwrg=;
 b=KCWOoqaJvAm4fQZbIyHeaXpTpW1tcOP+gwQd4ckqPpwsPB0ZnDJgN4ss
 I4YxNY1O1ekYHf0hmoiw0G1n1YNdFwwT0wi1POCWwUO5XD5fKC00U2P32
 Ijaww/J+TC8Di9dj6QdeyYvvBv89Ik6nU1b+C/hZAnnmErVW0Fw9qeLdr
 NxcoL2MtMmZJcNJlMtVMfBVbqE6msveR3TrTt41jq7Sw8QRFfK8e4yUF8
 K+T8V6Gy48UaD/jCwA3+dEz0lauuwQx1iwmcWWJvepEyTV0b31kudJ24f
 aY+pAXoSRfwd00PrHWQw0Mz30wJ7y0Fx8wxSWJUXp4CVNso5QezFsF9Zp
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KCWOoqaJ
Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/2] e1000e: introduce new MAC
 type for PTP
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

Add new MAC type for panther-point devices for separating the device
specific feature and flows.
Additionally, remove the unsupported device IDs: 0x57B5, 0x57B6.

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
index edb72054d0d9..46c3d5eb996e 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -55,6 +55,7 @@ static const struct e1000_info *e1000_info_tbl[] = {
 	[board_pch_tgp]		= &e1000_pch_tgp_info,
 	[board_pch_adp]		= &e1000_pch_adp_info,
 	[board_pch_mtp]		= &e1000_pch_mtp_info,
+	[board_pch_ptp]		= &e1000_pch_ptp_info,
 };
 
 struct e1000_reg_info {
@@ -8006,14 +8007,12 @@ static const struct pci_device_id e1000_pci_tbl[] = {
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

