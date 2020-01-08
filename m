Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A33B133CFD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2020 09:19:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 371E887A12;
	Wed,  8 Jan 2020 08:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id inqIXBDzmS5f; Wed,  8 Jan 2020 08:19:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59D6E879CF;
	Wed,  8 Jan 2020 08:19:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BAF291BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2020 08:19:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7265841E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2020 08:19:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xUUlghN_AQaY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2020 08:19:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 27694844A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2020 08:19:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 00:19:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,409,1571727600"; d="scan'208";a="422849882"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga006.fm.intel.com with ESMTP; 08 Jan 2020 00:19:25 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Jan 2020 10:19:24 +0200
Message-Id: <20200108081924.20008-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v3] igc: Add PHY power management control
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

PHY power management control should provide a reliable and accurate
indication of PHY reset completion and decrease the delay time
after a PHY reset

v1 -> v2: add hw_dbg print for a timeout
v2 -> v3: address some community comments

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_phy.c     | 16 +++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_regs.h    |  1 +
 3 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 9e34b0969322..58efa7a02c68 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -464,6 +464,7 @@
 /* PHY Status Register */
 #define MII_SR_LINK_STATUS	0x0004 /* Link Status 1 = link */
 #define MII_SR_AUTONEG_COMPLETE	0x0020 /* Auto Neg Complete */
+#define IGC_PHY_RST_COMP	0x0100 /* Internal PHY reset completion */
 
 /* PHY 1000 MII Register/Bit Definitions */
 /* PHY Registers defined by IEEE */
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index f4b05af0dd2f..8e1799508edc 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -173,6 +173,7 @@ s32 igc_check_downshift(struct igc_hw *hw)
 s32 igc_phy_hw_reset(struct igc_hw *hw)
 {
 	struct igc_phy_info *phy = &hw->phy;
+	u32 phpm = 0, timeout = 10000;
 	s32  ret_val;
 	u32 ctrl;
 
@@ -186,6 +187,8 @@ s32 igc_phy_hw_reset(struct igc_hw *hw)
 	if (ret_val)
 		goto out;
 
+	phpm = rd32(IGC_I225_PHPM);
+
 	ctrl = rd32(IGC_CTRL);
 	wr32(IGC_CTRL, ctrl | IGC_CTRL_PHY_RST);
 	wrfl();
@@ -195,7 +198,18 @@ s32 igc_phy_hw_reset(struct igc_hw *hw)
 	wr32(IGC_CTRL, ctrl);
 	wrfl();
 
-	usleep_range(1500, 2000);
+	/* SW should guarantee 100us for the completion of the PHY reset */
+	usleep_range(100, 150);
+	do {
+		phpm = rd32(IGC_I225_PHPM);
+		timeout--;
+		udelay(1);
+	} while (!(phpm & IGC_PHY_RST_COMP) && timeout);
+
+	if (!timeout)
+		hw_dbg("Timeout is expired after a phy reset\n");
+
+	usleep_range(100, 150);
 
 	phy->ops.release(hw);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index c82111051898..164c42b39dfa 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -12,6 +12,7 @@
 #define IGC_MDIC		0x00020  /* MDI Control - RW */
 #define IGC_MDICNFG		0x00E04  /* MDC/MDIO Configuration - RW */
 #define IGC_CONNSW		0x00034  /* Copper/Fiber switch control - RW */
+#define IGC_I225_PHPM		0x00E14	 /* I225 PHY Power Management */
 
 /* Internal Packet Buffer Size Registers */
 #define IGC_RXPBS		0x02404  /* Rx Packet Buffer Size - RW */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
