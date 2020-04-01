Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F409319A86D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Apr 2020 11:16:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7834988C8D;
	Wed,  1 Apr 2020 09:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SbFY722AsRuY; Wed,  1 Apr 2020 09:16:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 187B488C92;
	Wed,  1 Apr 2020 09:16:50 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B93D61BF3D4
 for <intel-wired-lan@osuosl.org>; Wed,  1 Apr 2020 09:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B4A5788C8D
 for <intel-wired-lan@osuosl.org>; Wed,  1 Apr 2020 09:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NiP0+rk0Z+vX for <intel-wired-lan@osuosl.org>;
 Wed,  1 Apr 2020 09:16:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D78588C8E
 for <intel-wired-lan@osuosl.org>; Wed,  1 Apr 2020 09:16:48 +0000 (UTC)
IronPort-SDR: 73XoMTVTj0oeZ1kAx+hH178YMUIygc7imbP72DttA2ifn2WNVg4LeTJTA6jQ7nx7FH5X5DcZT4
 inUICqQeT5OA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 02:16:47 -0700
IronPort-SDR: ysL6Ym9aowgTHUI0VQq+sFnJmCP+zv59gPMpnyFbxSv0NpkTqjdnUUVsOsf77xqEw/HP59Yme8
 yO0lHKfojIBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="242176849"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.160.195])
 by fmsmga008.fm.intel.com with ESMTP; 01 Apr 2020 02:16:46 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed,  1 Apr 2020 12:16:44 +0300
Message-Id: <20200401091644.5863-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] igc: remove IGC_REMOVED function
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

igc driver has leftovers from the previous device that supported
virtualization. This can be found in the function IGC_REMOVED which
became obsolete, and can be removed.

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.h  | 4 ----
 drivers/net/ethernet/intel/igc/igc_main.c | 3 ---
 drivers/net/ethernet/intel/igc/igc_regs.h | 3 +--
 3 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.h b/drivers/net/ethernet/intel/igc/igc_mac.h
index 832cccec87cd..b5963f86defb 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.h
+++ b/drivers/net/ethernet/intel/igc/igc_mac.h
@@ -8,10 +8,6 @@
 #include "igc_phy.h"
 #include "igc_defines.h"
 
-#ifndef IGC_REMOVED
-#define IGC_REMOVED(a) (0)
-#endif /* IGC_REMOVED */
-
 /* forward declaration */
 s32 igc_disable_pcie_master(struct igc_hw *hw);
 s32 igc_check_for_copper_link(struct igc_hw *hw);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c3555148ca0e..cb0d523ffc19 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4662,9 +4662,6 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
 	u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
 	u32 value = 0;
 
-	if (IGC_REMOVED(hw_addr))
-		return ~value;
-
 	value = readl(&hw_addr[reg]);
 
 	/* reads should not return all F's */
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 82158176634c..21b6fc42edbb 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -277,8 +277,7 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg);
 #define wr32(reg, val) \
 do { \
 	u8 __iomem *hw_addr = READ_ONCE((hw)->hw_addr); \
-	if (!IGC_REMOVED(hw_addr)) \
-		writel((val), &hw_addr[(reg)]); \
+	writel((val), &hw_addr[(reg)]); \
 } while (0)
 
 #define rd32(reg) (igc_rd32(hw, reg))
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
