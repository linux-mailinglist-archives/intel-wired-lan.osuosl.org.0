Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C3D1C5821
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 May 2020 16:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B323B2442C;
	Tue,  5 May 2020 14:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s9dsutBTT1bL; Tue,  5 May 2020 14:07:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74BDA249CF;
	Tue,  5 May 2020 14:07:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BFE61BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 14:07:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 37CBA87EFD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 14:07:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KIlAtAOMfk-j for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2020 14:06:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C37CA87E15
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 14:06:59 +0000 (UTC)
IronPort-SDR: QCE5vik2v+fQvZsTqj87QYgRiWg0k8zATj72CtzfrYRd6+MyyVvri1QRGO7rsLPdCfcw6Bmh++
 VFVXLJJDWJIQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 07:06:45 -0700
IronPort-SDR: aHHQxUq9kY/zDacUKVF/eYNmUD6CLlDaglCBQU+bmroSu/haPh8BdE6xwZZ4UZBU1ELarI4NTk
 1jtF1TefWblQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,355,1583222400"; d="scan'208";a="369424741"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.160.195])
 by fmsmga001.fm.intel.com with ESMTP; 05 May 2020 07:06:43 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 May 2020 17:06:38 +0300
Message-Id: <20200505140638.44937-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v5] igc: add support to eeprom,
 registers and link self-tests
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

Introduced igc_diag.c and igc_diag.h, these files have the
diagnostics functionality of igc driver. For the time being
these files are being used by ethtool self-test callbacks.
Which mean that eeprom, registers and link self-tests for
ethtool were implemented.

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
v2: Fix return 0/1 to boolean value in igc_reg_test function
v3: Address community comments
v4: Fix interrupt test and address community comments
v5: Remove interrupt test in order to avoid kernel panic
---
 drivers/net/ethernet/intel/igc/Makefile      |   2 +-
 drivers/net/ethernet/intel/igc/igc.h         |   4 +
 drivers/net/ethernet/intel/igc/igc_diag.c    | 186 +++++++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_diag.h    |  30 +++++
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  60 +++++++++
 drivers/net/ethernet/intel/igc/igc_main.c    |   4 +-
 drivers/net/ethernet/intel/igc/igc_regs.h    |   2 +
 7 files changed, 285 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_diag.c
 create mode 100644 drivers/net/ethernet/intel/igc/igc_diag.h

diff --git a/drivers/net/ethernet/intel/igc/Makefile b/drivers/net/ethernet/intel/igc/Makefile
index 3652f211f351..1c3051db9085 100644
--- a/drivers/net/ethernet/intel/igc/Makefile
+++ b/drivers/net/ethernet/intel/igc/Makefile
@@ -8,4 +8,4 @@
 obj-$(CONFIG_IGC) += igc.o
 
 igc-objs := igc_main.o igc_mac.o igc_i225.o igc_base.o igc_nvm.o igc_phy.o \
-igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o
+igc_diag.o igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o
diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 8ddc39482a8e..661dc8875f3f 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -198,6 +198,8 @@ struct igc_adapter {
 	unsigned long link_check_timeout;
 	struct igc_info ei;
 
+	u32 test_icr;
+
 	struct ptp_clock *ptp_clock;
 	struct ptp_clock_info ptp_caps;
 	struct work_struct ptp_tx_work;
@@ -215,6 +217,8 @@ struct igc_adapter {
 
 void igc_up(struct igc_adapter *adapter);
 void igc_down(struct igc_adapter *adapter);
+int igc_open(struct net_device *netdev);
+int igc_close(struct net_device *netdev);
 int igc_setup_tx_resources(struct igc_ring *ring);
 int igc_setup_rx_resources(struct igc_ring *ring);
 void igc_free_tx_resources(struct igc_ring *ring);
diff --git a/drivers/net/ethernet/intel/igc/igc_diag.c b/drivers/net/ethernet/intel/igc/igc_diag.c
new file mode 100644
index 000000000000..1c4536105e56
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_diag.c
@@ -0,0 +1,186 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c)  2020 Intel Corporation */
+
+#include "igc.h"
+#include "igc_diag.h"
+
+struct igc_reg_test reg_test[] = {
+	{ IGC_FCAL,	1,	PATTERN_TEST,	0xFFFFFFFF,	0xFFFFFFFF },
+	{ IGC_FCAH,	1,	PATTERN_TEST,	0x0000FFFF,	0xFFFFFFFF },
+	{ IGC_FCT,	1,	PATTERN_TEST,	0x0000FFFF,	0xFFFFFFFF },
+	{ IGC_RDBAH(0), 4,	PATTERN_TEST,	0xFFFFFFFF,	0xFFFFFFFF },
+	{ IGC_RDBAL(0),	4,	PATTERN_TEST,	0xFFFFFF80,	0xFFFFFF80 },
+	{ IGC_RDLEN(0),	4,	PATTERN_TEST,	0x000FFF80,	0x000FFFFF },
+	{ IGC_RDT(0),	4,	PATTERN_TEST,	0x0000FFFF,	0x0000FFFF },
+	{ IGC_FCRTH,	1,	PATTERN_TEST,	0x0003FFF0,	0x0003FFF0 },
+	{ IGC_FCTTV,	1,	PATTERN_TEST,	0x0000FFFF,	0x0000FFFF },
+	{ IGC_TIPG,	1,	PATTERN_TEST,	0x3FFFFFFF,	0x3FFFFFFF },
+	{ IGC_TDBAH(0),	4,	PATTERN_TEST,	0xFFFFFFFF,	0xFFFFFFFF },
+	{ IGC_TDBAL(0),	4,	PATTERN_TEST,	0xFFFFFF80,	0xFFFFFF80 },
+	{ IGC_TDLEN(0),	4,	PATTERN_TEST,	0x000FFF80,	0x000FFFFF },
+	{ IGC_TDT(0),	4,	PATTERN_TEST,	0x0000FFFF,	0x0000FFFF },
+	{ IGC_RCTL,	1,	SET_READ_TEST,	0xFFFFFFFF,	0x00000000 },
+	{ IGC_RCTL,	1,	SET_READ_TEST,	0x04CFB2FE,	0x003FFFFB },
+	{ IGC_RCTL,	1,	SET_READ_TEST,	0x04CFB2FE,	0xFFFFFFFF },
+	{ IGC_TCTL,	1,	SET_READ_TEST,	0xFFFFFFFF,	0x00000000 },
+	{ IGC_RA,	16,	TABLE64_TEST_LO,
+						0xFFFFFFFF,	0xFFFFFFFF },
+	{ IGC_RA,	16,	TABLE64_TEST_HI,
+						0x900FFFFF,	0xFFFFFFFF },
+	{ IGC_MTA,	128,	TABLE32_TEST,
+						0xFFFFFFFF,	0xFFFFFFFF },
+	{ 0, 0, 0, 0}
+};
+
+static bool reg_pattern_test(struct igc_adapter *adapter, u64 *data, int reg,
+			     u32 mask, u32 write)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 pat, val, before;
+	static const u32 test_pattern[] = {
+		0x5A5A5A5A, 0xA5A5A5A5, 0x00000000, 0xFFFFFFFF
+	};
+
+	for (pat = 0; pat < ARRAY_SIZE(test_pattern); pat++) {
+		before = rd32(reg);
+		wr32(reg, test_pattern[pat] & write);
+		val = rd32(reg);
+		if (val != (test_pattern[pat] & write & mask)) {
+			netdev_err(adapter->netdev,
+				   "pattern test reg %04X failed: got 0x%08X expected 0x%08X",
+				   reg, val, test_pattern[pat] & write & mask);
+			*data = reg;
+			wr32(reg, before);
+			return false;
+		}
+		wr32(reg, before);
+	}
+	return true;
+}
+
+static bool reg_set_and_check(struct igc_adapter *adapter, u64 *data, int reg,
+			      u32 mask, u32 write)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 val, before;
+
+	before = rd32(reg);
+	wr32(reg, write & mask);
+	val = rd32(reg);
+	if ((write & mask) != (val & mask)) {
+		netdev_err(adapter->netdev,
+			   "set/check reg %04X test failed: got 0x%08X expected 0x%08X",
+			   reg, (val & mask), (write & mask));
+		*data = reg;
+		wr32(reg, before);
+		return false;
+	}
+	wr32(reg, before);
+	return true;
+}
+
+bool igc_reg_test(struct igc_adapter *adapter, u64 *data)
+{
+	struct igc_reg_test *test = reg_test;
+	struct igc_hw *hw = &adapter->hw;
+	u32 value, before, after;
+	u32 i, toggle, b = false;
+
+	/* Because the status register is such a special case,
+	 * we handle it separately from the rest of the register
+	 * tests.  Some bits are read-only, some toggle, and some
+	 * are writeable.
+	 */
+	toggle = 0x6800D3;
+	before = rd32(IGC_STATUS);
+	value = before & toggle;
+	wr32(IGC_STATUS, toggle);
+	after = rd32(IGC_STATUS) & toggle;
+	if (value != after) {
+		netdev_err(adapter->netdev,
+			   "failed STATUS register test got: 0x%08X expected: 0x%08X",
+			   after, value);
+		*data = 1;
+		return false;
+	}
+	/* restore previous status */
+	wr32(IGC_STATUS, before);
+
+	/* Perform the remainder of the register test, looping through
+	 * the test table until we either fail or reach the null entry.
+	 */
+	while (test->reg) {
+		for (i = 0; i < test->array_len; i++) {
+			switch (test->test_type) {
+			case PATTERN_TEST:
+				b = reg_pattern_test(adapter, data,
+						     test->reg + (i * 0x40),
+						     test->mask,
+						     test->write);
+				break;
+			case SET_READ_TEST:
+				b = reg_set_and_check(adapter, data,
+						      test->reg + (i * 0x40),
+						      test->mask,
+						      test->write);
+				break;
+			case TABLE64_TEST_LO:
+				b = reg_pattern_test(adapter, data,
+						     test->reg + (i * 8),
+						     test->mask,
+						     test->write);
+				break;
+			case TABLE64_TEST_HI:
+				b = reg_pattern_test(adapter, data,
+						     test->reg + 4 + (i * 8),
+						     test->mask,
+						     test->write);
+				break;
+			case TABLE32_TEST:
+				b = reg_pattern_test(adapter, data,
+						     test->reg + (i * 4),
+						     test->mask,
+						     test->write);
+				break;
+			}
+			if (!b)
+				return false;
+		}
+		test++;
+	}
+	*data = 0;
+	return true;
+}
+
+bool igc_eeprom_test(struct igc_adapter *adapter, u64 *data)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	*data = 0;
+
+	if (hw->nvm.ops.validate(hw) != IGC_SUCCESS) {
+		*data = 1;
+		return false;
+	}
+
+	return true;
+}
+
+bool igc_link_test(struct igc_adapter *adapter, u64 *data)
+{
+	bool link_up;
+
+	*data = 0;
+
+	/* add delay to give enough time for autonegotioation to finish */
+	if (adapter->hw.mac.autoneg)
+		ssleep(5);
+
+	link_up = igc_has_link(adapter);
+	if (!link_up) {
+		*data = 1;
+		return false;
+	}
+
+	return true;
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_diag.h b/drivers/net/ethernet/intel/igc/igc_diag.h
new file mode 100644
index 000000000000..600658e33bec
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_diag.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c)  2020 Intel Corporation */
+
+bool igc_reg_test(struct igc_adapter *adapter, u64 *data);
+bool igc_eeprom_test(struct igc_adapter *adapter, u64 *data);
+bool igc_link_test(struct igc_adapter *adapter, u64 *data);
+
+struct igc_reg_test {
+	u16 reg;
+	u8 array_len;
+	u8 test_type;
+	u32 mask;
+	u32 write;
+};
+
+/* In the hardware, registers are laid out either singly, in arrays
+ * spaced 0x40 bytes apart, or in contiguous tables.  We assume
+ * most tests take place on arrays or single registers (handled
+ * as a single-element array) and special-case the tables.
+ * Table tests are always pattern tests.
+ *
+ * We also make provision for some required setup steps by specifying
+ * registers to be written without any read-back testing.
+ */
+
+#define PATTERN_TEST	1
+#define SET_READ_TEST	2
+#define TABLE32_TEST	3
+#define TABLE64_TEST_LO	4
+#define TABLE64_TEST_HI	5
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 0a8c4a7412a4..9fc250cdf88c 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -6,6 +6,7 @@
 #include <linux/pm_runtime.h>
 
 #include "igc.h"
+#include "igc_diag.h"
 
 /* forward declaration */
 struct igc_stats {
@@ -1896,6 +1897,64 @@ static int igc_set_link_ksettings(struct net_device *netdev,
 	return 0;
 }
 
+static void igc_diag_test(struct net_device *netdev,
+			  struct ethtool_test *eth_test, u64 *data)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	bool if_running = netif_running(netdev);
+
+	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
+		netdev_info(adapter->netdev, "offline testing starting");
+		set_bit(__IGC_TESTING, &adapter->state);
+
+		/* Link test performed before hardware reset so autoneg doesn't
+		 * interfere with test result
+		 */
+		if (!igc_link_test(adapter, &data[TEST_LINK]))
+			eth_test->flags |= ETH_TEST_FL_FAILED;
+
+		if (if_running)
+			igc_close(netdev);
+		else
+			igc_reset(adapter);
+
+		netdev_info(adapter->netdev, "register testing starting");
+		if (!igc_reg_test(adapter, &data[TEST_REG]))
+			eth_test->flags |= ETH_TEST_FL_FAILED;
+
+		igc_reset(adapter);
+
+		netdev_info(adapter->netdev, "eeprom testing starting");
+		if (!igc_eeprom_test(adapter, &data[TEST_EEP]))
+			eth_test->flags |= ETH_TEST_FL_FAILED;
+
+		igc_reset(adapter);
+
+		/* loopback and interrupt tests
+		 * will be implemented in the future
+		 */
+		data[TEST_LOOP] = 0;
+		data[TEST_IRQ] = 0;
+
+		clear_bit(__IGC_TESTING, &adapter->state);
+		if (if_running)
+			igc_open(netdev);
+	} else {
+		netdev_info(adapter->netdev, "online testing starting");
+
+		/* register, eeprom, intr and loopback tests not run online */
+		data[TEST_REG] = 0;
+		data[TEST_EEP] = 0;
+		data[TEST_IRQ] = 0;
+		data[TEST_LOOP] = 0;
+
+		if (!igc_link_test(adapter, &data[TEST_LINK]))
+			eth_test->flags |= ETH_TEST_FL_FAILED;
+	}
+
+	msleep_interruptible(4 * 1000);
+}
+
 static const struct ethtool_ops igc_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS,
 	.get_drvinfo		= igc_get_drvinfo,
@@ -1933,6 +1992,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.complete		= igc_ethtool_complete,
 	.get_link_ksettings	= igc_get_link_ksettings,
 	.set_link_ksettings	= igc_set_link_ksettings,
+	.self_test		= igc_diag_test,
 };
 
 void igc_set_ethtool_ops(struct net_device *netdev)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 3c1c41577233..7b0d04788cf0 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4389,7 +4389,7 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 	return err;
 }
 
-static int igc_open(struct net_device *netdev)
+int igc_open(struct net_device *netdev)
 {
 	return __igc_open(netdev, false);
 }
@@ -4431,7 +4431,7 @@ static int __igc_close(struct net_device *netdev, bool suspending)
 	return 0;
 }
 
-static int igc_close(struct net_device *netdev)
+int igc_close(struct net_device *netdev)
 {
 	if (netif_device_present(netdev) || netdev->dismantle)
 		return __igc_close(netdev, false);
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 6093cde2351c..633545977a65 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -49,6 +49,7 @@
 #define IGC_FACTPS		0x05B30
 
 /* Interrupt Register Description */
+#define IGC_EICR		0x01580  /* Ext. Interrupt Cause read - W0 */
 #define IGC_EICS		0x01520  /* Ext. Interrupt Cause Set - W0 */
 #define IGC_EIMS		0x01524  /* Ext. Interrupt Mask Set/Read - RW */
 #define IGC_EIMC		0x01528  /* Ext. Interrupt Mask Clear - WO */
@@ -119,6 +120,7 @@
 #define IGC_RLPML		0x05004  /* Rx Long Packet Max Length */
 #define IGC_RFCTL		0x05008  /* Receive Filter Control*/
 #define IGC_MTA			0x05200  /* Multicast Table Array - RW Array */
+#define IGC_RA			0x05400  /* Receive Address - RW Array */
 #define IGC_UTA			0x0A000  /* Unicast Table Array - RW */
 #define IGC_RAL(_n)		(0x05400 + ((_n) * 0x08))
 #define IGC_RAH(_n)		(0x05404 + ((_n) * 0x08))
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
