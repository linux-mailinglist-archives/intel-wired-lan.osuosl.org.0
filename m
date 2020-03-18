Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 781D9189D67
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2020 14:55:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 291F185F6E;
	Wed, 18 Mar 2020 13:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-Nz0OHtJAHv; Wed, 18 Mar 2020 13:55:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8180385F77;
	Wed, 18 Mar 2020 13:55:06 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D06DA1BF38B
 for <intel-wired-lan@osuosl.org>; Wed, 18 Mar 2020 13:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A091A203C4
 for <intel-wired-lan@osuosl.org>; Wed, 18 Mar 2020 13:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Rgsss-y-cWX for <intel-wired-lan@osuosl.org>;
 Wed, 18 Mar 2020 13:54:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id B143B203B1
 for <intel-wired-lan@osuosl.org>; Wed, 18 Mar 2020 13:54:50 +0000 (UTC)
IronPort-SDR: IwVBLb/rDNfrXLkyySEtxJlWNphHVDOBmq+xM/aYQQE/a7hq7PnO8B+0cjN4pvWnjrJcEZVHpu
 FN9BEosaU6XA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 06:54:49 -0700
IronPort-SDR: XJm0eqHx7PatoNZSdHpDDsGIXM2hsdI7XpPxOcg4KueQi074LET5PdhfvdyqlL+Wye1bc/IN/C
 B1KyKmTEVzjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="268362583"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.160.195])
 by fmsmga004.fm.intel.com with ESMTP; 18 Mar 2020 06:54:48 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 18 Mar 2020 15:54:46 +0200
Message-Id: <20200318135446.10921-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v2] igc: add support to interrupt, eeprom,
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
Which mean that interrupt, eeprom, registers and link self-tests for
ethtool were implemented.

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Reported-by: kbuild test robot <lkp@intel.com>
---
v1->v2:
Fix return 0/1 to boolean value in igc_reg_test function
---

 drivers/net/ethernet/intel/igc/Makefile      |   2 +-
 drivers/net/ethernet/intel/igc/igc.h         |   4 +
 drivers/net/ethernet/intel/igc/igc_diag.c    | 350 +++++++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_diag.h    |  31 +++
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  81 +++++++
 drivers/net/ethernet/intel/igc/igc_main.c    |   4 +-
 drivers/net/ethernet/intel/igc/igc_regs.h    |   1 +
 7 files changed, 470 insertions(+), 3 deletions(-)
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
index 4823b8ead547..e743f92a27c6 100644
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
index 000000000000..cfb6a4cc623f
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_diag.c
@@ -0,0 +1,350 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c)  2018 Intel Corporation */
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
+	{ IGC_TDBAH(0),	4,	PATTERN_TEST,	0xFFFFFFFF,     0xFFFFFFFF },
+	{ IGC_TDBAL(0),	4,	PATTERN_TEST,	0xFFFFFF80,     0xFFFFFF80 },
+	{ IGC_TDLEN(0),	4,	PATTERN_TEST,	0x000FFF80,     0x000FFFFF },
+	{ IGC_TDT(0),	4,	PATTERN_TEST,	0x0000FFFF,     0x0000FFFF },
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
+	if (IGC_REMOVED(hw->hw_addr)) {
+		*data = 1;
+		return true;
+	}
+	for (pat = 0; pat < ARRAY_SIZE(test_pattern); pat++) {
+		before = rd32(reg);
+		wr32(reg, test_pattern[pat] & write);
+		val = rd32(reg);
+		if (val != (test_pattern[pat] & write & mask)) {
+			dev_err(&adapter->pdev->dev,
+				"pattern test reg %04X failed: got 0x%08X expected 0x%08X\n",
+				reg, val, test_pattern[pat] & write & mask);
+			*data = reg;
+			wr32(reg, before);
+			return true;
+		}
+		wr32(reg, before);
+	}
+	return false;
+}
+
+static bool reg_set_and_check(struct igc_adapter *adapter, u64 *data, int reg,
+			      u32 mask, u32 write)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 val, before;
+
+	if (IGC_REMOVED(hw->hw_addr)) {
+		*data = 1;
+		return true;
+	}
+	before = rd32(reg);
+	wr32(reg, write & mask);
+	val = rd32(reg);
+	if ((write & mask) != (val & mask)) {
+		dev_err(&adapter->pdev->dev,
+			"set/check reg %04X test failed: got 0x%08X expected 0x%08X\n",
+			reg, (val & mask), (write & mask));
+		*data = reg;
+		wr32(reg, before);
+		return true;
+	}
+	wr32(reg, before);
+	return false;
+}
+
+bool igc_reg_test(struct igc_adapter *adapter, u64 *data)
+{
+	struct igc_reg_test *test = reg_test;
+	struct igc_hw *hw = &adapter->hw;
+	u32 value, before, after;
+	u32 i, toggle, b;
+
+	if (IGC_REMOVED(hw->hw_addr)) {
+		dev_err(&adapter->pdev->dev, "Adapter removed - register test blocked\n");
+		*data = 1;
+		return true;
+	}
+
+	/* Because the status register is such a special case,
+	 * we handle it separately from the rest of the register
+	 * tests.  Some bits are read-only, some toggle, and some
+	 * are writeable.
+	 */
+
+	toggle = 0x6800D3;
+	before = rd32(IGC_STATUS);
+	value = before & toggle;
+	wr32(IGC_STATUS, toggle);
+	after = rd32(IGC_STATUS) & toggle;
+	if (value != after) {
+		dev_err(&adapter->pdev->dev,
+			"failed STATUS register test got: 0x%08X expected: 0x%08X\n",
+			after, value);
+		*data = 1;
+		return true;
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
+			if (b)
+				return true;
+		}
+		test++;
+	}
+	*data = 0;
+	return false;
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
+		return true;
+	}
+
+	return false;
+}
+
+static irqreturn_t igc_test_intr(int irq, void *data)
+{
+	struct igc_adapter *adapter = (struct igc_adapter *)data;
+	struct igc_hw *hw = &adapter->hw;
+
+	adapter->test_icr |= rd32(IGC_ICR);
+
+	return IRQ_HANDLED;
+}
+
+int igc_intr_test(struct igc_adapter *adapter, u64 *data)
+{
+	struct igc_hw *hw = &adapter->hw;
+	struct net_device *netdev = adapter->netdev;
+	u32 mask, ics_mask, i = 0, shared_int = true;
+	u32 irq = adapter->pdev->irq;
+
+	if (IGC_REMOVED(hw->hw_addr)) {
+		*data = 1;
+		return -1;
+	}
+
+	*data = 0;
+
+	/* Hook up test interrupt handler just for this test */
+	if (adapter->msix_entries) {
+		if (request_irq(adapter->msix_entries[0].vector,
+				&igc_test_intr, 0, netdev->name, adapter)) {
+			*data = 1;
+			return -1;
+		}
+	} else if (adapter->flags & IGC_FLAG_HAS_MSI) {
+		shared_int = false;
+		if (request_irq(irq,
+				igc_test_intr, 0, netdev->name, adapter)) {
+			*data = 1;
+			return -1;
+		}
+	} else if (!request_irq(irq, igc_test_intr, IRQF_PROBE_SHARED,
+				netdev->name, adapter)) {
+		shared_int = false;
+	} else if (request_irq(irq, &igc_test_intr, IRQF_SHARED,
+		 netdev->name, adapter)) {
+		*data = 1;
+		return -1;
+	}
+	dev_info(&adapter->pdev->dev, "testing %s interrupt\n",
+		 (shared_int ? "shared" : "unshared"));
+
+	/* Disable all the interrupts */
+	wr32(IGC_IMC, ~0);
+	wrfl();
+	usleep_range(10000, 20000);
+
+	/* Define all writable bits for ICS */
+	ics_mask = 0x77DCFED5;
+
+	/* Test each interrupt */
+	for (; i < 31; i++) {
+		/* Interrupt to test */
+		mask = BIT(i);
+
+		if (!(mask & ics_mask))
+			continue;
+
+		if (!shared_int) {
+			/* Disable the interrupt to be reported in
+			 * the cause register and then force the same
+			 * interrupt and see if one gets posted.  If
+			 * an interrupt was posted to the bus, the
+			 * test failed.
+			 */
+			adapter->test_icr = 0;
+
+			/* Flush any pending interrupts */
+			wr32(IGC_ICR, ~0);
+
+			wr32(IGC_IMC, mask);
+			wr32(IGC_ICS, mask);
+			wrfl();
+			usleep_range(10000, 20000);
+
+			if (adapter->test_icr & mask) {
+				*data = 3;
+				break;
+			}
+		}
+
+		/* Enable the interrupt to be reported in
+		 * the cause register and then force the same
+		 * interrupt and see if one gets posted.  If
+		 * an interrupt was not posted to the bus, the
+		 * test failed.
+		 */
+		adapter->test_icr = 0;
+
+		/* Flush any pending interrupts */
+		wr32(IGC_ICR, ~0);
+
+		wr32(IGC_IMS, mask);
+		wr32(IGC_ICS, mask);
+		wrfl();
+		usleep_range(10000, 20000);
+
+		if (!(adapter->test_icr & mask)) {
+			*data = 4;
+			break;
+		}
+
+		if (!shared_int) {
+			/* Disable the other interrupts to be reported in
+			 * the cause register and then force the other
+			 * interrupts and see if any get posted.  If
+			 * an interrupt was posted to the bus, the
+			 * test failed.
+			 */
+			adapter->test_icr = 0;
+
+			/* Flush any pending interrupts */
+			wr32(IGC_ICR, ~0);
+
+			wr32(IGC_IMC, ~mask);
+			wr32(IGC_ICS, ~mask);
+			wrfl();
+			usleep_range(10000, 20000);
+
+			if (adapter->test_icr & mask) {
+				*data = 5;
+				break;
+			}
+		}
+	}
+
+	/* Disable all the interrupts */
+	wr32(IGC_IMC, ~0);
+	wrfl();
+	usleep_range(10000, 20000);
+
+	/* Unhook test interrupt handler */
+	if (adapter->msix_entries)
+		free_irq(adapter->msix_entries[0].vector, adapter);
+	else
+		free_irq(irq, adapter);
+
+	return *data;
+}
+
+u64 igc_link_test(struct igc_adapter *adapter, u64 *data)
+{
+	bool link_up = false;
+
+	if (IGC_REMOVED(adapter->hw.hw_addr)) {
+		*data = 1;
+		return 1;
+	}
+	*data = 0;
+
+	/* add delay to give enough time for autonegotioation to finish */
+	if (adapter->hw.mac.autoneg)
+		ssleep(5);
+
+	link_up = igc_has_link(adapter);
+	if (!link_up)
+		*data = 1;
+
+	return *data;
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_diag.h b/drivers/net/ethernet/intel/igc/igc_diag.h
new file mode 100644
index 000000000000..8a2ec9f7b338
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_diag.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c)  2018 Intel Corporation */
+
+bool igc_reg_test(struct igc_adapter *adapter, u64 *data);
+bool igc_eeprom_test(struct igc_adapter *adapter, u64 *data);
+int igc_intr_test(struct igc_adapter *adapter, u64 *data);
+u64 igc_link_test(struct igc_adapter *adapter, u64 *data);
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
index ff2a40496e4e..925f0979506e 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -6,6 +6,7 @@
 #include <linux/pm_runtime.h>
 
 #include "igc.h"
+#include "igc_diag.h"
 
 /* forward declaration */
 struct igc_stats {
@@ -1902,6 +1903,85 @@ static int igc_set_link_ksettings(struct net_device *netdev,
 	return 0;
 }
 
+static void igc_diag_test(struct net_device *netdev,
+			  struct ethtool_test *eth_test, u64 *data)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	bool if_running = netif_running(netdev);
+
+	if (IGC_REMOVED(adapter->hw.hw_addr)) {
+		dev_err(&adapter->pdev->dev,
+			"Adapter removed - test blocked\n");
+		data[0] = 1;
+		data[1] = 1;
+		data[2] = 1;
+		data[3] = 1;
+		data[4] = 1;
+		eth_test->flags |= ETH_TEST_FL_FAILED;
+		return;
+	}
+	set_bit(__IGC_TESTING, &adapter->state);
+	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
+		/* Offline tests */
+		dev_info(&adapter->pdev->dev,
+			 "offline testing starting\n");
+
+		/* Link test performed before hardware reset so autoneg doesn't
+		 * interfere with test result
+		 */
+		if (igc_link_test(adapter, &data[4]))
+			eth_test->flags |= ETH_TEST_FL_FAILED;
+
+		if (if_running)
+			/* indicate we're in test mode */
+			igc_close(netdev);
+		else
+			igc_reset(adapter);
+
+		dev_info(&adapter->pdev->dev,
+			 "register testing starting\n");
+		if (igc_reg_test(adapter, &data[0]))
+			eth_test->flags |= ETH_TEST_FL_FAILED;
+
+		igc_reset(adapter);
+
+		dev_info(&adapter->pdev->dev,
+			 "eeprom testing starting\n");
+		if (igc_eeprom_test(adapter, &data[1]))
+			eth_test->flags |= ETH_TEST_FL_FAILED;
+
+		igc_reset(adapter);
+
+		dev_info(&adapter->pdev->dev,
+			 "interrupt testing starting\n");
+		if (igc_eeprom_test(adapter, &data[2]))
+			eth_test->flags |= ETH_TEST_FL_FAILED;
+
+		igc_reset(adapter);
+
+		/* loopback test will be implemented in the future */
+		data[3] = 0;
+
+		clear_bit(__IGC_TESTING, &adapter->state);
+		if (if_running)
+			igc_open(netdev);
+	} else {
+		dev_info(&adapter->pdev->dev,
+			 "online testing starting\n");
+
+		/* register, eeprom, intr and loopback tests not run online */
+		data[0] = 0;
+		data[1] = 0;
+		data[2] = 0;
+		data[3] = 0;
+
+		if (igc_link_test(adapter, &data[4]))
+			eth_test->flags |= ETH_TEST_FL_FAILED;
+	}
+
+	msleep_interruptible(4 * 1000);
+}
+
 static const struct ethtool_ops igc_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS,
 	.get_drvinfo		= igc_get_drvinfo,
@@ -1939,6 +2019,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.complete		= igc_ethtool_complete,
 	.get_link_ksettings	= igc_get_link_ksettings,
 	.set_link_ksettings	= igc_set_link_ksettings,
+	.self_test		= igc_diag_test,
 };
 
 void igc_set_ethtool_ops(struct net_device *netdev)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 1b8023f69f28..a964ef18ac0c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4449,7 +4449,7 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 	return err;
 }
 
-static int igc_open(struct net_device *netdev)
+int igc_open(struct net_device *netdev)
 {
 	return __igc_open(netdev, false);
 }
@@ -4491,7 +4491,7 @@ static int __igc_close(struct net_device *netdev, bool suspending)
 	return 0;
 }
 
-static int igc_close(struct net_device *netdev)
+int igc_close(struct net_device *netdev)
 {
 	if (netif_device_present(netdev) || netdev->dismantle)
 		return __igc_close(netdev, false);
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 96dee3c1a5f7..7bfba20bf207 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -119,6 +119,7 @@
 #define IGC_RLPML		0x05004  /* Rx Long Packet Max Length */
 #define IGC_RFCTL		0x05008  /* Receive Filter Control*/
 #define IGC_MTA			0x05200  /* Multicast Table Array - RW Array */
+#define IGC_RA	0x05400  /* Receive Address - RW Array */
 #define IGC_UTA			0x0A000  /* Unicast Table Array - RW */
 #define IGC_RAL(_n)		(0x05400 + ((_n) * 0x08))
 #define IGC_RAH(_n)		(0x05404 + ((_n) * 0x08))
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
