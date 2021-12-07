Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2B046BA0B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 12:23:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF3B2402E0;
	Tue,  7 Dec 2021 11:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id crK5A8C4s1-X; Tue,  7 Dec 2021 11:23:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C6E040104;
	Tue,  7 Dec 2021 11:23:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D10AD1BF489
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 11:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFB21607E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 11:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ol7305A3Nd7j for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Dec 2021 11:23:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19882606B9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 11:23:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="323811057"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="323811057"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 03:23:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="502553178"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.56])
 by orsmga007.jf.intel.com with ESMTP; 07 Dec 2021 03:23:13 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Dec 2021 13:23:06 +0200
Message-Id: <20211207112306.1290098-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/2] e1000e: Separate ADP board type
 from TGP
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
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We have the same LAN controller on different PCH's. Separate ADP board
type from a TGP which will allow for specific fixes to be applied for
ADP platforms.

Suggested-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/e1000.h   |  4 ++-
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 +++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 33 +++++++++++----------
 3 files changed, 40 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index c3def0ee7788..8d06c9d8ff8b 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -115,7 +115,8 @@ enum e1000_boards {
 	board_pch_lpt,
 	board_pch_spt,
 	board_pch_cnp,
-	board_pch_tgp
+	board_pch_tgp,
+	board_pch_adp
 };
 
 struct e1000_ps_page {
@@ -502,6 +503,7 @@ extern const struct e1000_info e1000_pch_lpt_info;
 extern const struct e1000_info e1000_pch_spt_info;
 extern const struct e1000_info e1000_pch_cnp_info;
 extern const struct e1000_info e1000_pch_tgp_info;
+extern const struct e1000_info e1000_pch_adp_info;
 extern const struct e1000_info e1000_es2_info;
 
 void e1000e_ptp_init(struct e1000_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 5e4fc9b4e2ad..c908c84b86d2 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -6021,3 +6021,23 @@ const struct e1000_info e1000_pch_tgp_info = {
 	.phy_ops		= &ich8_phy_ops,
 	.nvm_ops		= &spt_nvm_ops,
 };
+
+const struct e1000_info e1000_pch_adp_info = {
+	.mac			= e1000_pch_adp,
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
index 44e2dc8328a2..2cfd03c6b37e 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -52,6 +52,7 @@ static const struct e1000_info *e1000_info_tbl[] = {
 	[board_pch_spt]		= &e1000_pch_spt_info,
 	[board_pch_cnp]		= &e1000_pch_cnp_info,
 	[board_pch_tgp]		= &e1000_pch_tgp_info,
+	[board_pch_adp]		= &e1000_pch_adp_info,
 };
 
 struct e1000_reg_info {
@@ -7902,22 +7903,22 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V14), board_pch_tgp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM15), board_pch_tgp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V15), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_LM23), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_V23), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM16), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V16), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM17), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V17), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_LM22), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_V22), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM18), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V18), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM19), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V19), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM20), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V20), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM21), board_pch_tgp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V21), board_pch_tgp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_LM23), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_V23), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM16), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V16), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM17), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V17), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_LM22), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_V22), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM18), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V18), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM19), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V19), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM20), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V20), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM21), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V21), board_pch_adp },
 
 	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
 };
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
