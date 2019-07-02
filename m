Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AB75CE98
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 13:40:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9DB9887B45;
	Tue,  2 Jul 2019 11:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4nV3xZHQa2Ys; Tue,  2 Jul 2019 11:40:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48CD787B3E;
	Tue,  2 Jul 2019 11:40:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC8B71BF335
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 11:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C8DD185F58
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 11:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhOjE57ARje3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 11:39:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BB4C385F56
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 11:39:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 04:39:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="164002546"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2019 04:39:55 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2019 14:39:55 +0300
Message-Id: <20190702113955.6248-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v2] igc: Add more SKUs for i225 device
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for more SKUs.
v2: Fixed device id to I220

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c | 3 +++
 drivers/net/ethernet/intel/igc/igc_hw.h   | 3 +++
 drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index 59258d791106..9710a40ac56e 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -209,6 +209,9 @@ static s32 igc_get_invariants_base(struct igc_hw *hw)
 	switch (hw->device_id) {
 	case IGC_DEV_ID_I225_LM:
 	case IGC_DEV_ID_I225_V:
+	case IGC_DEV_ID_I225_I:
+	case IGC_DEV_ID_I220_V:
+	case IGC_DEV_ID_I225_K:
 		mac->type = igc_i225;
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 9a338fbf671c..abb2d72911ff 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -18,6 +18,9 @@
 
 #define IGC_DEV_ID_I225_LM			0x15F2
 #define IGC_DEV_ID_I225_V			0x15F3
+#define IGC_DEV_ID_I225_I			0x15F8
+#define IGC_DEV_ID_I220_V			0x15F7
+#define IGC_DEV_ID_I225_K			0x3100
 
 #define IGC_FUNC_0				0
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 93f3b4e6185b..a70d9240ec4e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -36,6 +36,9 @@ static const struct igc_info *igc_info_tbl[] = {
 static const struct pci_device_id igc_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_LM), board_base },
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_V), board_base },
+	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_I), board_base },
+	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I220_V), board_base },
+	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_K), board_base },
 	/* required last entry */
 	{0, }
 };
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
