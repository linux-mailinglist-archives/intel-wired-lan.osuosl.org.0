Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B591A581578
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 16:36:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 438BE41BBC;
	Tue, 26 Jul 2022 14:36:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 438BE41BBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658846202;
	bh=l5Vhra+fCiHPA/39YjfWi1HjFgoYaXiY8T5a99WjoqU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GHJs1Q7GKGmY9j9thhXJ+ZKX8Q8I92iA0W/A23RiPS+D3IfQh/jMoybOkkwkpJmGv
	 +V8zz9vTxr2rKobYX9v9pu7uWbfPvmXX38Baky49vES7Y9xvkHsn8jNCcCT4SsazES
	 KqJyWqJsdepB0SEqkOFeZwkVn2odDzbHDxfomBlMuPeCaMU5HH49OzGWZ+V7pYTrNe
	 1ffn6/9IZnhgO+6uAuxKYE6D+MFtFWWbVnmQwr1vd04cRcH1q2Gq1sJMTsthDUQoho
	 4DMzOw7UtNoNC2MAgXe0C+lWTmF1N59mdLzy8UjbsSQOInPNevUUweRN27nHmGmYF2
	 FLW0LCvjB3ExQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G01fSaSbVGNR; Tue, 26 Jul 2022 14:36:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0B8E41951;
	Tue, 26 Jul 2022 14:36:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0B8E41951
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C7B31BF276
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 14:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E50794172F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 14:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E50794172F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L4CxB8anEftv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 14:36:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F41EB40169
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F41EB40169
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 14:36:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="374269397"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="374269397"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 07:36:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="627924731"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.183])
 by orsmga008.jf.intel.com with ESMTP; 26 Jul 2022 07:36:29 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Jul 2022 17:36:25 +0300
Message-Id: <20220726143625.2691487-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658846193; x=1690382193;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4OcsDE7e+NR7GVzKWZx8m4dIV2oPQbEp886JD588AyU=;
 b=POLqAWsEAMv2Xr27/NgVJwK/xUFizJW8GuZ5dwiZ4tM/KNZAlGwfL4wX
 3mXoB5pZ8oziJ5hLRKHXuB9d8yl3UyeoaPSLwf0tEiF/1wGKDap3kfE/W
 i2mpev7zKPL/MFuK/Y5oyrRI+dMT7ClAqm8dcVTqc6L+k2JFOMpnxrmRV
 h4EcxPmMHl2L8HHcS7uukUs8Yi3PpRy5S4p19NkS3UKjUEefg0nZgjjVI
 8J2NRkdMYnqfp+lYKS/Woud/LXwcOlKn2s0FTeCskK/D5IWS2JkHtPsKW
 XrKW1xXgE14Ro0k5M2wmOQ3jQ5zDxGzWDGEIO+SQeTzER51w3Nh/Q1wT4
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=POLqAWsE
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Separate MTP board type
 from ADP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We have the same LAN controller on different PCH's. Separate MTP board
type from an ADP which will allow for specific fixes to be applied for MTP
platforms.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/e1000.h   |  4 +++-
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 ++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 17 +++++++++--------
 3 files changed, 32 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index 8d06c9d8ff8b..43f575b2a009 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -116,7 +116,8 @@ enum e1000_boards {
 	board_pch_spt,
 	board_pch_cnp,
 	board_pch_tgp,
-	board_pch_adp
+	board_pch_adp,
+	board_pch_mtp
 };
 
 struct e1000_ps_page {
@@ -504,6 +505,7 @@ extern const struct e1000_info e1000_pch_spt_info;
 extern const struct e1000_info e1000_pch_cnp_info;
 extern const struct e1000_info e1000_pch_tgp_info;
 extern const struct e1000_info e1000_pch_adp_info;
+extern const struct e1000_info e1000_pch_mtp_info;
 extern const struct e1000_info e1000_es2_info;
 
 void e1000e_ptp_init(struct e1000_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 9466f65a6da7..e8f7cb9d8724 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -6041,3 +6041,23 @@ const struct e1000_info e1000_pch_adp_info = {
 	.phy_ops		= &ich8_phy_ops,
 	.nvm_ops		= &spt_nvm_ops,
 };
+
+const struct e1000_info e1000_pch_mtp_info = {
+	.mac			= e1000_pch_mtp,
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
index 70d933f52e93..d601faf7e955 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -53,6 +53,7 @@ static const struct e1000_info *e1000_info_tbl[] = {
 	[board_pch_cnp]		= &e1000_pch_cnp_info,
 	[board_pch_tgp]		= &e1000_pch_tgp_info,
 	[board_pch_adp]		= &e1000_pch_adp_info,
+	[board_pch_mtp]		= &e1000_pch_mtp_info,
 };
 
 struct e1000_reg_info {
@@ -7905,14 +7906,14 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V17), board_pch_adp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_LM22), board_pch_adp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_V22), board_pch_adp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM18), board_pch_adp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V18), board_pch_adp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM19), board_pch_adp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V19), board_pch_adp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM20), board_pch_adp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V20), board_pch_adp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM21), board_pch_adp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V21), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM18), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V18), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM19), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V19), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM20), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V20), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM21), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V21), board_pch_mtp },
 
 	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
 };
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
