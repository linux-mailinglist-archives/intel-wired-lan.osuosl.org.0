Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2A92DF496
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Dec 2020 10:15:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5AEE120352;
	Sun, 20 Dec 2020 09:15:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SlYk5KR0xsbL; Sun, 20 Dec 2020 09:15:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B13220460;
	Sun, 20 Dec 2020 09:15:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DEA81BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Dec 2020 09:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1FF262041A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Dec 2020 09:15:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fyNjXvQKEILp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Dec 2020 09:15:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id C250A20352
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Dec 2020 09:15:46 +0000 (UTC)
IronPort-SDR: 1c4LHd/pvXDxNDaV3Fd0X7EDjFBAqdrEYZAbPGiDhyafXR0m3Hnq4cIGj0blX99LNFDbNwdakI
 WLwGqGDdM4SQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9840"; a="154841142"
X-IronPort-AV: E=Sophos;i="5.78,434,1599548400"; d="scan'208";a="154841142"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2020 01:15:42 -0800
IronPort-SDR: YECplWYaHgUDvfDAsjUBmDcBiBmdm2hjl9OBFKxVZ94cOTPFuGtZGs2sMCEy1CTx8ezwxt/fYI
 9wbPRtekiMag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,434,1599548400"; d="scan'208";a="340091834"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga003.jf.intel.com with ESMTP; 20 Dec 2020 01:15:40 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 20 Dec 2020 11:15:36 +0200
Message-Id: <20201220091536.2149986-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused FUNC_1 mask
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

FUNC_1 mask not in use in i225 device and could be removed

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 84355a5f79e8..4fc9ef978ad3 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -179,7 +179,6 @@
 #define IGC_STATUS_LU		0x00000002      /* Link up.0=no,1=link */
 #define IGC_STATUS_FUNC_MASK	0x0000000C      /* PCI Function Mask */
 #define IGC_STATUS_FUNC_SHIFT	2
-#define IGC_STATUS_FUNC_1	0x00000004      /* Function 1 */
 #define IGC_STATUS_TXOFF	0x00000010      /* transmission paused */
 #define IGC_STATUS_SPEED_100	0x00000040      /* Speed 100Mb/s */
 #define IGC_STATUS_SPEED_1000	0x00000080      /* Speed 1000Mb/s */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
