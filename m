Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E5611D42C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 18:37:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5D4D924F78;
	Thu, 12 Dec 2019 17:37:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hypDlMEmiu8H; Thu, 12 Dec 2019 17:37:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0D49224FA8;
	Thu, 12 Dec 2019 17:37:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BFDF01BF277
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 17:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B3C09870F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 17:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3YJPHG3JwWEO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 17:37:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D60A9870EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 17:37:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 09:37:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="216364915"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga003.jf.intel.com with ESMTP; 12 Dec 2019 09:36:51 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 19:36:50 +0200
Message-Id: <20191212173650.14210-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v2] igc: Add PHY power management control
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

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_phy.c     | 12 ++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  1 +
 3 files changed, 14 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 2121fc34e300..71a4b0281c03 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -460,6 +460,7 @@
 /* PHY Status Register */
 #define MII_SR_LINK_STATUS	0x0004 /* Link Status 1 = link */
 #define MII_SR_AUTONEG_COMPLETE	0x0020 /* Auto Neg Complete */
+#define IGC_PHY_RST_COMP	0x0100 /* Internal PHY reset completion */
 
 /* PHY 1000 MII Register/Bit Definitions */
 /* PHY Registers defined by IEEE */
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index f4b05af0dd2f..a5483368690a 100644
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
@@ -195,6 +198,15 @@ s32 igc_phy_hw_reset(struct igc_hw *hw)
 	wr32(IGC_CTRL, ctrl);
 	wrfl();
 
+	do {
+		phpm = rd32(IGC_I225_PHPM);
+		timeout--;
+		udelay(1);
+	} while (!(phpm & IGC_PHY_RST_COMP) && timeout);
+
+	if (!timeout)
+		hw_dbg("Timeoui is expired after a phy reset\n");
+
 	usleep_range(1500, 2000);
 
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
