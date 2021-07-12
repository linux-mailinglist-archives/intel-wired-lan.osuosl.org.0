Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2605C3C5D8C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jul 2021 15:42:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD9B1605C2;
	Mon, 12 Jul 2021 13:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DYzEwxhlx60H; Mon, 12 Jul 2021 13:42:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B35F5605D6;
	Mon, 12 Jul 2021 13:42:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B2731BF36D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jul 2021 13:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 261044047B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jul 2021 13:42:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wo5dkzk_uclx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jul 2021 13:42:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A92240413
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jul 2021 13:42:32 +0000 (UTC)
Received: from localhost (1.general.khfeng.us.vpn [10.172.68.174])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id F408D40325; 
 Mon, 12 Jul 2021 13:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1626096906;
 bh=wPRu7NWwQMf97Gb7KzQ3v7mTH8FGJGWMqE4KG+HRscU=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=XAUDQllqtT1gHhlA5AA5BuokS6u5KXIfbqPUePiJ1t1LkPdfuGXAUBcc9EvuLSHUw
 ln05CWNoQJurvJLtXz0vU/JcJiZR7S1is/a56bqfj8+HNvYoB+EKvAq507lAUofU5c
 AqXuvMeS53Rek83L3KL5z+zjqQAVslQTSM8K/6IET2awfb7Z6tfcbtVWTOd/1+r7ot
 EgcgvuMwlu1gX45QP1upLVV7oPaj7D4yGAuvoR3Q5gpuDUDm11r3hLvlSaavnF0J4b
 kVYPJmESb3kz34S0OEctMJkf7tK1ORnKTNvMx5ChjjpF8NPa+zqltwSoA/Th6TfSIG
 XVcK2etrEsVWg==
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Mon, 12 Jul 2021 21:34:57 +0800
Message-Id: <20210712133500.1126371-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/3] e1000e: Separate TGP from SPT
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, acelan.kao@canonical.com,
 Jakub Kicinski <kuba@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Separate TGP from SPT so we can apply specific quirks to TGP.

Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/e1000.h   |  4 +++-
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 ++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 13 +++++++------
 3 files changed, 30 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index 5b2143f4b1f8..3178efd98006 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -113,7 +113,8 @@ enum e1000_boards {
 	board_pch2lan,
 	board_pch_lpt,
 	board_pch_spt,
-	board_pch_cnp
+	board_pch_cnp,
+	board_pch_tgp
 };
 
 struct e1000_ps_page {
@@ -499,6 +500,7 @@ extern const struct e1000_info e1000_pch2_info;
 extern const struct e1000_info e1000_pch_lpt_info;
 extern const struct e1000_info e1000_pch_spt_info;
 extern const struct e1000_info e1000_pch_cnp_info;
+extern const struct e1000_info e1000_pch_tgp_info;
 extern const struct e1000_info e1000_es2_info;
 
 void e1000e_ptp_init(struct e1000_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index cf7b3887da1d..654dbe798e55 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -5967,3 +5967,23 @@ const struct e1000_info e1000_pch_cnp_info = {
 	.phy_ops		= &ich8_phy_ops,
 	.nvm_ops		= &spt_nvm_ops,
 };
+
+const struct e1000_info e1000_pch_tgp_info = {
+	.mac			= e1000_pch_tgp,
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
index d150dade06cf..5835d6cf2f51 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -51,6 +51,7 @@ static const struct e1000_info *e1000_info_tbl[] = {
 	[board_pch_lpt]		= &e1000_pch_lpt_info,
 	[board_pch_spt]		= &e1000_pch_spt_info,
 	[board_pch_cnp]		= &e1000_pch_cnp_info,
+	[board_pch_tgp]		= &e1000_pch_tgp_info,
 };
 
 struct e1000_reg_info {
@@ -7843,12 +7844,12 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_V11), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_LM12), board_pch_spt },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_V12), board_pch_spt },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM13), board_pch_cnp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V13), board_pch_cnp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM14), board_pch_cnp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V14), board_pch_cnp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM15), board_pch_cnp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V15), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM13), board_pch_tgp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V13), board_pch_tgp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM14), board_pch_tgp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V14), board_pch_tgp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM15), board_pch_tgp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V15), board_pch_tgp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM16), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V16), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM17), board_pch_cnp },
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
