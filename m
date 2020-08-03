Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E2E23AC6B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Aug 2020 20:34:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3966B8749A;
	Mon,  3 Aug 2020 18:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cr1Ybprej+j8; Mon,  3 Aug 2020 18:34:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C123087935;
	Mon,  3 Aug 2020 18:34:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 44A8C1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Aug 2020 18:34:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 403E38639B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Aug 2020 18:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GYKsAHplX+oa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Aug 2020 18:34:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 73DA686233
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Aug 2020 18:34:04 +0000 (UTC)
IronPort-SDR: sIt0t2sN+pVBGSCzoHYlyW09HpSFtwgSsuyM03889pb2MKyfw1L93nB4ivlQ+MHJ8AJaxeaCnT
 a+lZs9x/1Aog==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="213721099"
X-IronPort-AV: E=Sophos;i="5.75,430,1589266800"; d="scan'208";a="213721099"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 11:34:03 -0700
IronPort-SDR: +RctCXkuJkTu8463nm8FgwK4YLZOEVyX2a6677OUdRu/hhXp5meakdNCdtl9luQVp3D6/pyAm+
 snkufQkIHj4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,430,1589266800"; d="scan'208";a="314878562"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.160.101])
 by fmsmga004.fm.intel.com with ESMTP; 03 Aug 2020 11:34:02 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Aug 2020 21:33:58 +0300
Message-Id: <20200803183358.1099864-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add new device ID's
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

Add new device ID's for the next step of the silicon and
reflect i221 and i226 parts

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c | 5 +++++
 drivers/net/ethernet/intel/igc/igc_hw.h   | 5 +++++
 drivers/net/ethernet/intel/igc/igc_main.c | 5 +++++
 3 files changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index cc5a6cf531c7..fd37d2c203af 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -215,6 +215,11 @@ static s32 igc_get_invariants_base(struct igc_hw *hw)
 	case IGC_DEV_ID_I225_K2:
 	case IGC_DEV_ID_I225_LMVP:
 	case IGC_DEV_ID_I225_IT:
+	case IGC_DEV_ID_I226_LM:
+	case IGC_DEV_ID_I226_V:
+	case IGC_DEV_ID_I226_IT:
+	case IGC_DEV_ID_I221_V:
+	case IGC_DEV_ID_I226_BLANK_NVM:
 	case IGC_DEV_ID_I225_BLANK_NVM:
 		mac->type = igc_i225;
 		break;
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index b9fe51b91c47..6defdb8a31fe 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -24,6 +24,11 @@
 #define IGC_DEV_ID_I225_K2			0x3101
 #define IGC_DEV_ID_I225_LMVP			0x5502
 #define IGC_DEV_ID_I225_IT			0x0D9F
+#define IGC_DEV_ID_I226_LM			0x125B
+#define IGC_DEV_ID_I226_V			0x125C
+#define IGC_DEV_ID_I226_IT			0x125D
+#define IGC_DEV_ID_I221_V			0x125E
+#define IGC_DEV_ID_I226_BLANK_NVM		0x125F
 #define IGC_DEV_ID_I225_BLANK_NVM		0x15FD
 
 /* Function pointers for the MAC. */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d6b37d91cad9..6c95ccb61436 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -47,6 +47,11 @@ static const struct pci_device_id igc_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_K2), board_base },
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_LMVP), board_base },
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_IT), board_base },
+	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I226_LM), board_base },
+	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I226_V), board_base },
+	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I226_IT), board_base },
+	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I221_V), board_base },
+	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I226_BLANK_NVM), board_base },
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_BLANK_NVM), board_base },
 	/* required last entry */
 	{0, }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
