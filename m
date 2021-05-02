Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F3D370B33
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 May 2021 12:57:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6CE160AE4;
	Sun,  2 May 2021 10:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qDM_bfCDN8Xw; Sun,  2 May 2021 10:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDA1860AE2;
	Sun,  2 May 2021 10:57:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF27C1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 May 2021 10:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6FC041A61
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 May 2021 10:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I9-IQmxuVJjI for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 May 2021 10:57:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB0A341A5D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 May 2021 10:57:15 +0000 (UTC)
IronPort-SDR: cyx9xkVjxoLQ6Y4tkV/lcxuFhqcvpSKOh9YoBSaAnjbPy01MD8vbB3Mz1J9KdqCSIaSNGg3iKK
 KOwVJUGTe9/w==
X-IronPort-AV: E=McAfee;i="6200,9189,9971"; a="184708990"
X-IronPort-AV: E=Sophos;i="5.82,267,1613462400"; d="scan'208";a="184708990"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2021 03:57:13 -0700
IronPort-SDR: YWg1p1Ci2DOm+MMGCWr4NToCepALBiXyDSRzs/uzSVris8evu3Dp07Jj7mHyOw7fXzK/lqk1/Q
 XYj56BeA+Bhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,267,1613462400"; d="scan'208";a="426554349"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga008.fm.intel.com with ESMTP; 02 May 2021 03:57:12 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	dvorax.fuxbrumer@linux.intel.com
Date: Sun,  2 May 2021 13:57:08 +0300
Message-Id: <20210502105708.3016965-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused MDICNFG register
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

The MDICNFG register from igc registers is not used so remove it.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_regs.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index cc174853554b..2491d565d758 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -10,7 +10,6 @@
 #define IGC_EECD		0x00010  /* EEPROM/Flash Control - RW */
 #define IGC_CTRL_EXT		0x00018  /* Extended Device Control - RW */
 #define IGC_MDIC		0x00020  /* MDI Control - RW */
-#define IGC_MDICNFG		0x00E04  /* MDC/MDIO Configuration - RW */
 #define IGC_CONNSW		0x00034  /* Copper/Fiber switch control - RW */
 #define IGC_I225_PHPM		0x00E14  /* I225 PHY Power Management */
 #define IGC_GPHY_VERSION	0x0001E  /* I225 gPHY Firmware Version */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
