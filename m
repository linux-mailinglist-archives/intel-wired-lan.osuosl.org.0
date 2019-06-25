Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC90E526A8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2019 10:30:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 33D0D85207;
	Tue, 25 Jun 2019 08:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 058+Et+q2hKc; Tue, 25 Jun 2019 08:30:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D400985A25;
	Tue, 25 Jun 2019 08:30:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DED491BF319
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 08:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DAD2F858E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 08:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Ai1smuurJZl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2019 08:30:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8ED3A85207
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 08:30:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 01:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="163907966"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga003.jf.intel.com with ESMTP; 25 Jun 2019 01:30:30 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Jun 2019 11:30:30 +0300
Message-Id: <20190625083030.27520-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] igc: Add more SKUs for i225 device
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

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c | 3 +++
 drivers/net/ethernet/intel/igc/igc_hw.h   | 3 +++
 drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index 59258d791106..019107e46428 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -209,6 +209,9 @@ static s32 igc_get_invariants_base(struct igc_hw *hw)
 	switch (hw->device_id) {
 	case IGC_DEV_ID_I225_LM:
 	case IGC_DEV_ID_I225_V:
+	case IGC_DEV_ID_I225_I:
+	case IGC_DEV_ID_I210_V:
+	case IGC_DEV_ID_I225_K:
 		mac->type = igc_i225;
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 9a338fbf671c..b6b1b6e45cb3 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -18,6 +18,9 @@
 
 #define IGC_DEV_ID_I225_LM			0x15F2
 #define IGC_DEV_ID_I225_V			0x15F3
+#define IGC_DEV_ID_I225_I			0x15F8
+#define IGC_DEV_ID_I210_V			0x15F7
+#define IGC_DEV_ID_I225_K			0x3100
 
 #define IGC_FUNC_0				0
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 93f3b4e6185b..3f64fc1f57cd 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -36,6 +36,9 @@ static const struct igc_info *igc_info_tbl[] = {
 static const struct pci_device_id igc_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_LM), board_base },
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_V), board_base },
+	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_I), board_base },
+	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I210_V), board_base },
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
