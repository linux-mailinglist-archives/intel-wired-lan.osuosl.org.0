Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C691E583D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 09:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAD5387CB8;
	Thu, 28 May 2020 07:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bhZNqmETI52h; Thu, 28 May 2020 07:11:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF2B487D99;
	Thu, 28 May 2020 07:11:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 803401BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 07:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 799D5204E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 07:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XubOZd3cPwwb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 07:11:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 8BA0C203D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 07:11:12 +0000 (UTC)
IronPort-SDR: jvGOlyEv3OQZDbIa6jk2CvH5WFtdfQW6CRmRA8xl5zjn2rO99Q5K9HqmtP6DL/bhGQ0q+rwFUo
 tNr8C5hvPM9A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 00:11:12 -0700
IronPort-SDR: m2KmoUpecrgbXPxaKyLOKX/svMrPbDnq35lxSvIetgsCxcqM/Hmsa1tI4kFGz3ApWl0EEjMpVH
 4VZ1E145xl/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,443,1583222400"; d="scan'208";a="469018635"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga005.fm.intel.com with ESMTP; 28 May 2020 00:11:11 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 May 2020 10:11:11 +0300
Message-Id: <20200528071111.9808-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove Sequence Error Counter
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

Accordance to the i225 datasheet sequence error counter does not
applicable to the i225 device.
This patch comes to clean up this counter.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c  | 1 -
 drivers/net/ethernet/intel/igc/igc_main.c | 1 -
 drivers/net/ethernet/intel/igc/igc_regs.h | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index a5a087e1ac02..fb496617e8e1 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -243,7 +243,6 @@ void igc_clear_hw_cntrs_base(struct igc_hw *hw)
 	rd32(IGC_COLC);
 	rd32(IGC_RERC);
 	rd32(IGC_DC);
-	rd32(IGC_SEC);
 	rd32(IGC_RLEC);
 	rd32(IGC_XONRXC);
 	rd32(IGC_XONTXC);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 26f5ce23e255..0be6153195f2 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3705,7 +3705,6 @@ void igc_update_stats(struct igc_adapter *adapter)
 	adapter->stats.prc511 += rd32(IGC_PRC511);
 	adapter->stats.prc1023 += rd32(IGC_PRC1023);
 	adapter->stats.prc1522 += rd32(IGC_PRC1522);
-	adapter->stats.sec += rd32(IGC_SEC);
 
 	mpc = rd32(IGC_MPC);
 	adapter->stats.mpc += mpc;
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 5a4873dddcbf..48f46ee96bfd 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -137,7 +137,6 @@
 #define IGC_RERC	0x0402C  /* Receive Error Count - R/clr */
 #define IGC_DC		0x04030  /* Defer Count - R/clr */
 #define IGC_TNCRS	0x04034  /* Tx-No CRS - R/clr */
-#define IGC_SEC		0x04038  /* Sequence Error Count - R/clr */
 #define IGC_CEXTERR	0x0403C  /* Carrier Extension Error Count - R/clr */
 #define IGC_RLEC	0x04040  /* Receive Length Error Count - R/clr */
 #define IGC_XONRXC	0x04048  /* XON Rx Count - R/clr */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
