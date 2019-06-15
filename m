Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C93E46D2E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jun 2019 02:29:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 275682039D;
	Sat, 15 Jun 2019 00:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ULjkRBv3v5T9; Sat, 15 Jun 2019 00:29:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B629D203AA;
	Sat, 15 Jun 2019 00:29:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 535211BF82D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2019 00:29:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4FF8B884D5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2019 00:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qI+H2BV5-BJU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jun 2019 00:29:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 59C36884CD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2019 00:29:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 17:29:19 -0700
X-ExtLoop1: 1
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga001.jf.intel.com with ESMTP; 14 Jun 2019 17:29:19 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jun 2019 17:29:35 -0700
Message-Id: <20190615002935.16397-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next v2] e1000e: Reduce boot time by tightening
 sleep ranges
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Arjan van de Ven <arjan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arjan van de Ven <arjan@linux.intel.com>

The e1000e driver is a great user of the usleep_range() API,
and has nice ranges that in principle help power management.

However the ranges that are used only during system startup are
very long (and can add easily 100 msec to the boot time) while
the power savings of such long ranges is irrelevant due to the
one-off, boot only, nature of these functions.

This patch shrinks some of the longest ranges to be shorter
(while still using a power friendly 1 msec range); this saves
100msec+ of boot time on my BDW NUCs

Signed-off-by: Arjan van de Ven <arjan@linux.intel.com>
Signed-off-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
v2: fixed up patch to apply cleanly to the upstream e1000e driver

 .../net/ethernet/intel/e1000e/80003es2lan.c   |  2 +-
 drivers/net/ethernet/intel/e1000e/82571.c     |  2 +-
 drivers/net/ethernet/intel/e1000e/ethtool.c   | 14 ++++++-------
 drivers/net/ethernet/intel/e1000e/ich8lan.c   | 20 +++++++++----------
 drivers/net/ethernet/intel/e1000e/mac.c       |  2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c    | 14 ++++++-------
 drivers/net/ethernet/intel/e1000e/nvm.c       |  2 +-
 7 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/80003es2lan.c b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
index f86d55657959..4b103cca8a39 100644
--- a/drivers/net/ethernet/intel/e1000e/80003es2lan.c
+++ b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
@@ -680,7 +680,7 @@ static s32 e1000_reset_hw_80003es2lan(struct e1000_hw *hw)
 	ew32(TCTL, E1000_TCTL_PSP);
 	e1e_flush();
 
-	usleep_range(10000, 20000);
+	usleep_range(10000, 11000);
 
 	ctrl = er32(CTRL);
 
diff --git a/drivers/net/ethernet/intel/e1000e/82571.c b/drivers/net/ethernet/intel/e1000e/82571.c
index b9309302c29e..2c1bab377b2a 100644
--- a/drivers/net/ethernet/intel/e1000e/82571.c
+++ b/drivers/net/ethernet/intel/e1000e/82571.c
@@ -959,7 +959,7 @@ static s32 e1000_reset_hw_82571(struct e1000_hw *hw)
 	ew32(TCTL, tctl);
 	e1e_flush();
 
-	usleep_range(10000, 20000);
+	usleep_range(10000, 11000);
 
 	/* Must acquire the MDIO ownership before MAC reset.
 	 * Ownership defaults to firmware after a reset.
diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 02ebf208f48b..08342698386d 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -1014,7 +1014,7 @@ static int e1000_intr_test(struct e1000_adapter *adapter, u64 *data)
 	/* Disable all the interrupts */
 	ew32(IMC, 0xFFFFFFFF);
 	e1e_flush();
-	usleep_range(10000, 20000);
+	usleep_range(10000, 11000);
 
 	/* Test each interrupt */
 	for (i = 0; i < 10; i++) {
@@ -1046,7 +1046,7 @@ static int e1000_intr_test(struct e1000_adapter *adapter, u64 *data)
 			ew32(IMC, mask);
 			ew32(ICS, mask);
 			e1e_flush();
-			usleep_range(10000, 20000);
+			usleep_range(10000, 11000);
 
 			if (adapter->test_icr & mask) {
 				*data = 3;
@@ -1064,7 +1064,7 @@ static int e1000_intr_test(struct e1000_adapter *adapter, u64 *data)
 		ew32(IMS, mask);
 		ew32(ICS, mask);
 		e1e_flush();
-		usleep_range(10000, 20000);
+		usleep_range(10000, 11000);
 
 		if (!(adapter->test_icr & mask)) {
 			*data = 4;
@@ -1082,7 +1082,7 @@ static int e1000_intr_test(struct e1000_adapter *adapter, u64 *data)
 			ew32(IMC, ~mask & 0x00007FFF);
 			ew32(ICS, ~mask & 0x00007FFF);
 			e1e_flush();
-			usleep_range(10000, 20000);
+			usleep_range(10000, 11000);
 
 			if (adapter->test_icr) {
 				*data = 5;
@@ -1094,7 +1094,7 @@ static int e1000_intr_test(struct e1000_adapter *adapter, u64 *data)
 	/* Disable all the interrupts */
 	ew32(IMC, 0xFFFFFFFF);
 	e1e_flush();
-	usleep_range(10000, 20000);
+	usleep_range(10000, 11000);
 
 	/* Unhook test interrupt handler */
 	free_irq(irq, netdev);
@@ -1470,7 +1470,7 @@ static int e1000_set_82571_fiber_loopback(struct e1000_adapter *adapter)
 	 */
 	ew32(SCTL, E1000_SCTL_ENABLE_SERDES_LOOPBACK);
 	e1e_flush();
-	usleep_range(10000, 20000);
+	usleep_range(10000, 11000);
 
 	return 0;
 }
@@ -1584,7 +1584,7 @@ static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
 		    hw->phy.media_type == e1000_media_type_internal_serdes) {
 			ew32(SCTL, E1000_SCTL_DISABLE_SERDES_LOOPBACK);
 			e1e_flush();
-			usleep_range(10000, 20000);
+			usleep_range(10000, 11000);
 			break;
 		}
 		/* Fall Through */
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index cdae0efde8e6..395b05701480 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -271,7 +271,7 @@ static void e1000_toggle_lanphypc_pch_lpt(struct e1000_hw *hw)
 		u16 count = 20;
 
 		do {
-			usleep_range(5000, 10000);
+			usleep_range(5000, 6000);
 		} while (!(er32(CTRL_EXT) & E1000_CTRL_EXT_LPCD) && count--);
 
 		msleep(30);
@@ -405,7 +405,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	/* Ungate automatic PHY configuration on non-managed 82579 */
 	if ((hw->mac.type == e1000_pch2lan) &&
 	    !(fwsm & E1000_ICH_FWSM_FW_VALID)) {
-		usleep_range(10000, 20000);
+		usleep_range(10000, 11000);
 		e1000_gate_hw_phy_config_ich8lan(hw, false);
 	}
 
@@ -531,7 +531,7 @@ static s32 e1000_init_phy_params_ich8lan(struct e1000_hw *hw)
 	phy->id = 0;
 	while ((e1000_phy_unknown == e1000e_get_phy_type_from_id(phy->id)) &&
 	       (i++ < 100)) {
-		usleep_range(1000, 2000);
+		usleep_range(1000, 1100);
 		ret_val = e1000e_get_phy_id(hw);
 		if (ret_val)
 			return ret_val;
@@ -1244,7 +1244,7 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
 				goto out;
 			}
 
-			usleep_range(10000, 20000);
+			usleep_range(10000, 11000);
 		}
 		e_dbg("ULP_CONFIG_DONE cleared after %dmsec\n", i * 10);
 
@@ -1999,7 +1999,7 @@ static s32 e1000_check_reset_block_ich8lan(struct e1000_hw *hw)
 
 	while ((blocked = !(er32(FWSM) & E1000_ICH_FWSM_RSPCIPHY)) &&
 	       (i++ < 30))
-		usleep_range(10000, 20000);
+		usleep_range(10000, 11000);
 	return blocked ? E1000_BLK_PHY_RESET : 0;
 }
 
@@ -2818,7 +2818,7 @@ static s32 e1000_post_phy_reset_ich8lan(struct e1000_hw *hw)
 		return 0;
 
 	/* Allow time for h/w to get to quiescent state after reset */
-	usleep_range(10000, 20000);
+	usleep_range(10000, 11000);
 
 	/* Perform any necessary post-reset workarounds */
 	switch (hw->mac.type) {
@@ -2854,7 +2854,7 @@ static s32 e1000_post_phy_reset_ich8lan(struct e1000_hw *hw)
 	if (hw->mac.type == e1000_pch2lan) {
 		/* Ungate automatic PHY configuration on non-managed 82579 */
 		if (!(er32(FWSM) & E1000_ICH_FWSM_FW_VALID)) {
-			usleep_range(10000, 20000);
+			usleep_range(10000, 11000);
 			e1000_gate_hw_phy_config_ich8lan(hw, false);
 		}
 
@@ -3875,7 +3875,7 @@ static s32 e1000_update_nvm_checksum_spt(struct e1000_hw *hw)
 	 */
 	if (!ret_val) {
 		nvm->ops.reload(hw);
-		usleep_range(10000, 20000);
+		usleep_range(10000, 11000);
 	}
 
 out:
@@ -4026,7 +4026,7 @@ static s32 e1000_update_nvm_checksum_ich8lan(struct e1000_hw *hw)
 	 */
 	if (!ret_val) {
 		nvm->ops.reload(hw);
-		usleep_range(10000, 20000);
+		usleep_range(10000, 11000);
 	}
 
 out:
@@ -4650,7 +4650,7 @@ static s32 e1000_reset_hw_ich8lan(struct e1000_hw *hw)
 	ew32(TCTL, E1000_TCTL_PSP);
 	e1e_flush();
 
-	usleep_range(10000, 20000);
+	usleep_range(10000, 11000);
 
 	/* Workaround for ICH8 bit corruption issue in FIFO memory */
 	if (hw->mac.type == e1000_ich8lan) {
diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
index 4abd55d646c5..e531976f8a67 100644
--- a/drivers/net/ethernet/intel/e1000e/mac.c
+++ b/drivers/net/ethernet/intel/e1000e/mac.c
@@ -797,7 +797,7 @@ static s32 e1000_poll_fiber_serdes_link_generic(struct e1000_hw *hw)
 	 * milliseconds even if the other end is doing it in SW).
 	 */
 	for (i = 0; i < FIBER_LINK_UP_LIMIT; i++) {
-		usleep_range(10000, 20000);
+		usleep_range(10000, 11000);
 		status = er32(STATUS);
 		if (status & E1000_STATUS_LU)
 			break;
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 298e03e213be..bc743d77f20a 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3208,7 +3208,7 @@ static void e1000_configure_rx(struct e1000_adapter *adapter)
 	if (!(adapter->flags2 & FLAG2_NO_DISABLE_RX))
 		ew32(RCTL, rctl & ~E1000_RCTL_EN);
 	e1e_flush();
-	usleep_range(10000, 20000);
+	usleep_range(10000, 11000);
 
 	if (adapter->flags2 & FLAG2_DMA_BURST) {
 		/* set the writeback threshold (only takes effect if the RDTR
@@ -4272,7 +4272,7 @@ void e1000e_down(struct e1000_adapter *adapter, bool reset)
 
 	/* flush both disables and wait for them to finish */
 	e1e_flush();
-	usleep_range(10000, 20000);
+	usleep_range(10000, 11000);
 
 	e1000_irq_disable(adapter);
 
@@ -4310,7 +4310,7 @@ void e1000e_reinit_locked(struct e1000_adapter *adapter)
 {
 	might_sleep();
 	while (test_and_set_bit(__E1000_RESETTING, &adapter->state))
-		usleep_range(1000, 2000);
+		usleep_range(1000, 1100);
 	e1000e_down(adapter, true);
 	e1000e_up(adapter);
 	clear_bit(__E1000_RESETTING, &adapter->state);
@@ -4707,7 +4707,7 @@ int e1000e_close(struct net_device *netdev)
 	int count = E1000_CHECK_RESET_COUNT;
 
 	while (test_bit(__E1000_RESETTING, &adapter->state) && count--)
-		usleep_range(10000, 20000);
+		usleep_range(10000, 11000);
 
 	WARN_ON(test_bit(__E1000_RESETTING, &adapter->state));
 
@@ -6037,7 +6037,7 @@ static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
 	}
 
 	while (test_and_set_bit(__E1000_RESETTING, &adapter->state))
-		usleep_range(1000, 2000);
+		usleep_range(1000, 1100);
 	/* e1000e_down -> e1000e_reset dependent on max_frame_size & mtu */
 	adapter->max_frame_size = max_frame;
 	e_info("changing MTU from %d to %d\n", netdev->mtu, new_mtu);
@@ -6317,7 +6317,7 @@ static int e1000e_pm_freeze(struct device *dev)
 		int count = E1000_CHECK_RESET_COUNT;
 
 		while (test_bit(__E1000_RESETTING, &adapter->state) && count--)
-			usleep_range(10000, 20000);
+			usleep_range(10000, 11000);
 
 		WARN_ON(test_bit(__E1000_RESETTING, &adapter->state));
 
@@ -6732,7 +6732,7 @@ static int e1000e_pm_runtime_suspend(struct device *dev)
 		int count = E1000_CHECK_RESET_COUNT;
 
 		while (test_bit(__E1000_RESETTING, &adapter->state) && count--)
-			usleep_range(10000, 20000);
+			usleep_range(10000, 11000);
 
 		WARN_ON(test_bit(__E1000_RESETTING, &adapter->state));
 
diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
index 937f9af22d26..e609f4df86f4 100644
--- a/drivers/net/ethernet/intel/e1000e/nvm.c
+++ b/drivers/net/ethernet/intel/e1000e/nvm.c
@@ -392,7 +392,7 @@ s32 e1000e_write_nvm_spi(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
 				break;
 			}
 		}
-		usleep_range(10000, 20000);
+		usleep_range(10000, 11000);
 		nvm->ops.release(hw);
 	}
 
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
