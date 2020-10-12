Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 653C828ADD6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 07:48:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D11848699E;
	Mon, 12 Oct 2020 05:47:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jRkeprNcxZWn; Mon, 12 Oct 2020 05:47:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F36968697B;
	Mon, 12 Oct 2020 05:47:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 277941BF59C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 05:47:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1FDD187371
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 05:47:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kcU+df7axoyv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 05:47:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5F5A287369
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 05:47:56 +0000 (UTC)
IronPort-SDR: VVMEm8JgnlQ9jYHTkSLaP/06tGLkweMwopTH95TC09rULLI/r6s6j7ZmvXc51UlmMzYHid4dpY
 6H0IkaaNlbkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="145014027"
X-IronPort-AV: E=Sophos;i="5.77,365,1596524400"; d="scan'208";a="145014027"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2020 22:47:54 -0700
IronPort-SDR: 4Sc//2M/vYRZ0KeL0hup9qMCS+NVbHOHWXenJfleJatjDhPSGNF2f5NNVe/DS4AHd5rSgsOzP8
 PI7uhlG1bwNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,365,1596524400"; d="scan'208";a="344738696"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga004.fm.intel.com with ESMTP; 11 Oct 2020 22:47:54 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Oct 2020 08:47:51 +0300
Message-Id: <20201012054751.1714839-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add new device ID
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

Add new device ID for the next step of the silicon and
reflect the I226_K part.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c | 1 +
 drivers/net/ethernet/intel/igc/igc_hw.h   | 1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index fd37d2c203af..d0700d48ecf9 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -213,6 +213,7 @@ static s32 igc_get_invariants_base(struct igc_hw *hw)
 	case IGC_DEV_ID_I220_V:
 	case IGC_DEV_ID_I225_K:
 	case IGC_DEV_ID_I225_K2:
+	case IGC_DEV_ID_I226_K:
 	case IGC_DEV_ID_I225_LMVP:
 	case IGC_DEV_ID_I225_IT:
 	case IGC_DEV_ID_I226_LM:
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 55dae7c4703f..9da5f83ce456 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -23,6 +23,7 @@
 #define IGC_DEV_ID_I225_K			0x3100
 #define IGC_DEV_ID_I225_K2			0x3101
 #define IGC_DEV_ID_I225_LMVP			0x5502
+#define IGC_DEV_ID_I226_K			0x5504
 #define IGC_DEV_ID_I225_IT			0x0D9F
 #define IGC_DEV_ID_I226_LM			0x125B
 #define IGC_DEV_ID_I226_V			0x125C
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 897e2d5514a1..32817a28e34c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -45,6 +45,7 @@ static const struct pci_device_id igc_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I220_V), board_base },
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_K), board_base },
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_K2), board_base },
+	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I226_K), board_base },
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_LMVP), board_base },
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I225_IT), board_base },
 	{ PCI_VDEVICE(INTEL, IGC_DEV_ID_I226_LM), board_base },
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
