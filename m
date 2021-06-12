Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F363A4FD8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Jun 2021 19:02:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B03C0404A9;
	Sat, 12 Jun 2021 17:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5flyzG34PhZc; Sat, 12 Jun 2021 17:02:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71FFD404A8;
	Sat, 12 Jun 2021 17:02:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8AE391BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Jun 2021 17:02:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75001605F9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Jun 2021 17:02:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N6ZuEM1NwRYV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Jun 2021 17:02:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1096C600D4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Jun 2021 17:02:30 +0000 (UTC)
IronPort-SDR: 3kJ9WKBvq8WTtVbA4paNcJn55ZYAt43sJycRuyenf5B2/7JrR5Pr+eqKwd68uyWnUnC19La0s0
 ywKmF9LGx7Bw==
X-IronPort-AV: E=McAfee;i="6200,9189,10013"; a="205633794"
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; d="scan'208";a="205633794"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2021 10:02:29 -0700
IronPort-SDR: g1gIwqm8zyzxJmTjNM9PAsZDcruR2+nk5b3FxNI2B6YC8DhPR8mmci/HHTd/ajIdY1aHa1P5au
 p7iEvkaZZ7Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; d="scan'208";a="414721090"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga007.fm.intel.com with ESMTP; 12 Jun 2021 10:02:28 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	michael.edri@intel.com
Date: Sat, 12 Jun 2021 20:02:20 +0300
Message-Id: <20210612170220.3930002-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add support for the next
 LOM generation
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

Add devices IDs for the next LOM generations that will be
available on the next Intel Client platforms
This patch provides the initial support for these devices

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/hw.h     | 4 ++++
 drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index 36ff936918c9..bcf680e83811 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -98,10 +98,14 @@ struct e1000_hw;
 #define E1000_DEV_ID_PCH_TGP_I219_V14		0x15FA
 #define E1000_DEV_ID_PCH_TGP_I219_LM15		0x15F4
 #define E1000_DEV_ID_PCH_TGP_I219_V15		0x15F5
+#define E1000_DEV_ID_PCH_RPL_I219_LM23		0x0DC5
+#define E1000_DEV_ID_PCH_RPL_I219_V23		0x0DC6
 #define E1000_DEV_ID_PCH_ADP_I219_LM16		0x1A1E
 #define E1000_DEV_ID_PCH_ADP_I219_V16		0x1A1F
 #define E1000_DEV_ID_PCH_ADP_I219_LM17		0x1A1C
 #define E1000_DEV_ID_PCH_ADP_I219_V17		0x1A1D
+#define E1000_DEV_ID_PCH_RPL_I219_LM22		0x0DC7
+#define E1000_DEV_ID_PCH_RPL_I219_V22		0x0DC8
 #define E1000_DEV_ID_PCH_MTP_I219_LM18		0x550A
 #define E1000_DEV_ID_PCH_MTP_I219_V18		0x550B
 #define E1000_DEV_ID_PCH_MTP_I219_LM19		0x550C
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 6a20c7f82fc9..2ad61efa85bd 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7906,10 +7906,14 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V14), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM15), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V15), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_LM23), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_V23), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM16), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V16), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM17), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V17), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_LM22), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_V22), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM18), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V18), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM19), board_pch_cnp },
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
