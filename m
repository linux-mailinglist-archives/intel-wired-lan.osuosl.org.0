Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE091845859
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 14:00:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DF2840571;
	Thu,  1 Feb 2024 13:00:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DF2840571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706792402;
	bh=xsMTpk3PG4oBSQP2iwKTDI9GdJqxiySTKVuFI2gBHNU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8R9x9zbOOP7KqxRTZdF875kzPNfMPwwAu5KCqVWXBWSTqWO1QoaHa2ADhRlEXXihO
	 605BPtG7QvcPY2YXpArp8UGatBa1pwF4bLQNw/M/egG008dEGx2zd+8Q3sHBbqRqER
	 HYxJL+UxdMnHzUdHFqnfgqOip5s6CMkY2JdJPDd/nuS/40lvaLCEk4wlpFho5H59w+
	 dOq2F0EWCPWEIPlBdMxjOt17QEmZiJGIkecdTJ461U5raw338bA/fI7pozC7GkpLKR
	 sSBV5/wPjeE2PzI1w4yKghvRE+melaz4WtpiOVaCvSaaRTDcA/4Pq/JhT6H8ltxhWg
	 mmJgEduafRZoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZbYIzxzp_N4D; Thu,  1 Feb 2024 13:00:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 348474011D;
	Thu,  1 Feb 2024 13:00:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 348474011D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F1D01BF228
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:59:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F2814011D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:59:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F2814011D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0zB1jExZt1nA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 12:59:53 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47C37400E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47C37400E7
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Thu,  1 Feb 2024 13:59:46 +0100
Message-Id: <20240201125946.44431-1-kurt@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1706792390;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=xsMTpk3PG4oBSQP2iwKTDI9GdJqxiySTKVuFI2gBHNU=;
 b=h1mN1z0HKu2AKzIjbcFGdwLBCzJUacoy32bmQDWLqLadVDsEdFEtDDdi6u5pScycI/FUUs
 FA0rt2Saf+QduMvW3HuRNDcjEGv4vK0uIKkDgOBZklFHMYfoutPLD9Py6d0AEbwIHD1qwL
 J0bd7GlrKFw7L0umpbDzaSHLt8mXHr7w7++hzrlBbLDaNdGJ0GHBXkaTTtM4U1mnGIkR1i
 lR1HORp0s9Wbn8N+hFtjx9e/VbpuSoOrhJ5ptHxzWQSM/pApX4pbUgm+rqNcMDeLyQqYHe
 Xdyp+B5YFSQ0O7zhVzFCYiN/bbeWT1tO3LXnO3Ua8RYjfLj4kR0AAAgHtAy5Ew==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1706792390;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=xsMTpk3PG4oBSQP2iwKTDI9GdJqxiySTKVuFI2gBHNU=;
 b=astL2L5deYvI8pfnVbSEtOWHpxQFa6/Om/7spL3ogRX4NHHV3fnReI3kqIcgmdDSUjl7uZ
 Bx+jgUSOh4jheVBA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=h1mN1z0H; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=astL2L5d
Subject: [Intel-wired-lan] [PATCH iwl-next v2] igc: Add support for LEDs on
 i225/i226
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for LEDs on i225/i226. The LEDs can be controlled via sysfs
from user space using the netdev trigger. The LEDs are named as
igc-<bus><device>-<led> to be easily identified.

Offloading link speed is supported. Other modes are simulated in software
by using on/off. Tested on Intel i225.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---

Changes since v1:

 * Add brightness_set() to allow software control (Andrew)
 * Remove offloading of activity, because the software control is more flexible
 * Fix smatch warning (Simon)

Previous versions:

 * v1: https://lore.kernel.org/netdev/20240124082408.49138-1-kurt@linutronix.de/

 drivers/net/ethernet/intel/Kconfig        |   8 +
 drivers/net/ethernet/intel/igc/Makefile   |   1 +
 drivers/net/ethernet/intel/igc/igc.h      |   5 +
 drivers/net/ethernet/intel/igc/igc_leds.c | 252 ++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_main.c |   6 +
 drivers/net/ethernet/intel/igc/igc_regs.h |   1 +
 6 files changed, 273 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_leds.c

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index d55638ad8704..767358b60507 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -368,6 +368,14 @@ config IGC
 
 	  To compile this driver as a module, choose M here. The module
 	  will be called igc.
+
+config IGC_LEDS
+	def_bool LEDS_TRIGGER_NETDEV
+	depends on IGC && LEDS_CLASS
+	help
+	  Optional support for controlling the NIC LED's with the netdev
+	  LED trigger.
+
 config IDPF
 	tristate "Intel(R) Infrastructure Data Path Function Support"
 	depends on PCI_MSI
diff --git a/drivers/net/ethernet/intel/igc/Makefile b/drivers/net/ethernet/intel/igc/Makefile
index 95d1e8c490a4..ebffd3054285 100644
--- a/drivers/net/ethernet/intel/igc/Makefile
+++ b/drivers/net/ethernet/intel/igc/Makefile
@@ -6,6 +6,7 @@
 #
 
 obj-$(CONFIG_IGC) += igc.o
+igc-$(CONFIG_IGC_LEDS) += igc_leds.o
 
 igc-objs := igc_main.o igc_mac.o igc_i225.o igc_base.o igc_nvm.o igc_phy.o \
 igc_diag.o igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o igc_xdp.o
diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 75f7c5ba65e0..a8815e3b2949 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -295,6 +295,9 @@ struct igc_adapter {
 		struct timespec64 start;
 		struct timespec64 period;
 	} perout[IGC_N_PEROUT];
+
+	/* LEDs */
+	struct mutex led_mutex;
 };
 
 void igc_up(struct igc_adapter *adapter);
@@ -720,6 +723,8 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter);
 void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts);
 void igc_ptp_tx_tstamp_event(struct igc_adapter *adapter);
 
+int igc_led_setup(struct igc_adapter *adapter);
+
 #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
 
 #define IGC_TXD_DCMD	(IGC_ADVTXD_DCMD_EOP | IGC_ADVTXD_DCMD_RS)
diff --git a/drivers/net/ethernet/intel/igc/igc_leds.c b/drivers/net/ethernet/intel/igc/igc_leds.c
new file mode 100644
index 000000000000..7a2397826cad
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_leds.c
@@ -0,0 +1,252 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2024 Linutronix GmbH */
+
+#include <linux/bits.h>
+#include <linux/leds.h>
+#include <linux/netdevice.h>
+#include <linux/pm_runtime.h>
+#include <uapi/linux/uleds.h>
+
+#include "igc.h"
+
+#define IGC_NUM_LEDS			3
+
+#define IGC_LEDCTL_LED0_MODE_SHIFT	0
+#define IGC_LEDCTL_LED0_MODE_MASK	GENMASK(3, 0)
+#define IGC_LEDCTL_LED0_BLINK		BIT(7)
+#define IGC_LEDCTL_LED1_MODE_SHIFT	8
+#define IGC_LEDCTL_LED1_MODE_MASK	GENMASK(11, 8)
+#define IGC_LEDCTL_LED1_BLINK		BIT(15)
+#define IGC_LEDCTL_LED2_MODE_SHIFT	16
+#define IGC_LEDCTL_LED2_MODE_MASK	GENMASK(19, 16)
+#define IGC_LEDCTL_LED2_BLINK		BIT(23)
+
+#define IGC_LEDCTL_MODE_ON		0x00
+#define IGC_LEDCTL_MODE_OFF		0x01
+#define IGC_LEDCTL_MODE_LINK_10		0x05
+#define IGC_LEDCTL_MODE_LINK_100	0x06
+#define IGC_LEDCTL_MODE_LINK_1000	0x07
+#define IGC_LEDCTL_MODE_LINK_2500	0x08
+
+#define IGC_SUPPORTED_MODES						 \
+	(BIT(TRIGGER_NETDEV_LINK_2500) | BIT(TRIGGER_NETDEV_LINK_1000) | \
+	 BIT(TRIGGER_NETDEV_LINK_100) | BIT(TRIGGER_NETDEV_LINK_10))
+
+struct igc_led_classdev {
+	struct net_device *netdev;
+	struct led_classdev led;
+	int index;
+};
+
+#define lcdev_to_igc_ldev(lcdev)				\
+	container_of(lcdev, struct igc_led_classdev, led)
+
+static void igc_led_select(struct igc_adapter *adapter, int led,
+			   u32 *mask, u32 *shift, u32 *blink)
+{
+	switch (led) {
+	case 0:
+		*mask  = IGC_LEDCTL_LED0_MODE_MASK;
+		*shift = IGC_LEDCTL_LED0_MODE_SHIFT;
+		*blink = IGC_LEDCTL_LED0_BLINK;
+		break;
+	case 1:
+		*mask  = IGC_LEDCTL_LED1_MODE_MASK;
+		*shift = IGC_LEDCTL_LED1_MODE_SHIFT;
+		*blink = IGC_LEDCTL_LED1_BLINK;
+		break;
+	case 2:
+		*mask  = IGC_LEDCTL_LED2_MODE_MASK;
+		*shift = IGC_LEDCTL_LED2_MODE_SHIFT;
+		*blink = IGC_LEDCTL_LED2_BLINK;
+		break;
+	default:
+		*mask = *shift = *blink = 0;
+		netdev_err(adapter->netdev, "Unknown LED %d selected!\n", led);
+	}
+}
+
+static void igc_led_set(struct igc_adapter *adapter, int led, u32 mode,
+			bool blink)
+{
+	u32 shift, mask, blink_bit, ledctl;
+	struct igc_hw *hw = &adapter->hw;
+
+	igc_led_select(adapter, led, &mask, &shift, &blink_bit);
+
+	pm_runtime_get_sync(&adapter->pdev->dev);
+	mutex_lock(&adapter->led_mutex);
+
+	/* Set mode */
+	ledctl = rd32(IGC_LEDCTL);
+	ledctl &= ~mask;
+	ledctl |= mode << shift;
+
+	/* Configure blinking */
+	if (blink)
+		ledctl |= blink_bit;
+	else
+		ledctl &= ~blink_bit;
+	wr32(IGC_LEDCTL, ledctl);
+
+	mutex_unlock(&adapter->led_mutex);
+	pm_runtime_put(&adapter->pdev->dev);
+}
+
+static u32 igc_led_get(struct igc_adapter *adapter, int led)
+{
+	u32 shift, mask, blink_bit, ledctl;
+	struct igc_hw *hw = &adapter->hw;
+
+	igc_led_select(adapter, led, &mask, &shift, &blink_bit);
+
+	pm_runtime_get_sync(&adapter->pdev->dev);
+	mutex_lock(&adapter->led_mutex);
+	ledctl = rd32(IGC_LEDCTL);
+	mutex_unlock(&adapter->led_mutex);
+	pm_runtime_put(&adapter->pdev->dev);
+
+	return (ledctl & mask) >> shift;
+}
+
+static int igc_led_brightness_set_blocking(struct led_classdev *led_cdev,
+					   enum led_brightness brightness)
+{
+	struct igc_led_classdev *ldev = lcdev_to_igc_ldev(led_cdev);
+	struct igc_adapter *adapter = netdev_priv(ldev->netdev);
+	u32 mode;
+
+	if (brightness)
+		mode = IGC_LEDCTL_MODE_ON;
+	else
+		mode = IGC_LEDCTL_MODE_OFF;
+
+	netdev_dbg(adapter->netdev, "Set brightness for LED %d to mode %u!\n",
+		   ldev->index, mode);
+
+	igc_led_set(adapter, ldev->index, mode, false);
+
+	return 0;
+}
+
+static int igc_led_hw_control_is_supported(struct led_classdev *led_cdev,
+					   unsigned long flags)
+{
+	if (flags & ~IGC_SUPPORTED_MODES)
+		return -EOPNOTSUPP;
+
+	/* Only one mode can be active at a time */
+	if (flags & (flags - 1))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
+static int igc_led_hw_control_set(struct led_classdev *led_cdev,
+				  unsigned long flags)
+{
+	struct igc_led_classdev *ldev = lcdev_to_igc_ldev(led_cdev);
+	struct igc_adapter *adapter = netdev_priv(ldev->netdev);
+	u32 mode = IGC_LEDCTL_MODE_OFF;
+
+	if (flags & BIT(TRIGGER_NETDEV_LINK_10))
+		mode = IGC_LEDCTL_MODE_LINK_10;
+	if (flags & BIT(TRIGGER_NETDEV_LINK_100))
+		mode = IGC_LEDCTL_MODE_LINK_100;
+	if (flags & BIT(TRIGGER_NETDEV_LINK_1000))
+		mode = IGC_LEDCTL_MODE_LINK_1000;
+	if (flags & BIT(TRIGGER_NETDEV_LINK_2500))
+		mode = IGC_LEDCTL_MODE_LINK_2500;
+
+	netdev_dbg(adapter->netdev, "Set HW control for LED %d to mode %u!\n",
+		   ldev->index, mode);
+
+	igc_led_set(adapter, ldev->index, mode, false);
+
+	return 0;
+}
+
+static int igc_led_hw_control_get(struct led_classdev *led_cdev,
+				  unsigned long *flags)
+{
+	struct igc_led_classdev *ldev = lcdev_to_igc_ldev(led_cdev);
+	struct igc_adapter *adapter = netdev_priv(ldev->netdev);
+	u32 mode;
+
+	mode = igc_led_get(adapter, ldev->index);
+
+	switch (mode) {
+	case IGC_LEDCTL_MODE_LINK_10:
+		*flags = BIT(TRIGGER_NETDEV_LINK_10);
+		break;
+	case IGC_LEDCTL_MODE_LINK_100:
+		*flags = BIT(TRIGGER_NETDEV_LINK_100);
+		break;
+	case IGC_LEDCTL_MODE_LINK_1000:
+		*flags = BIT(TRIGGER_NETDEV_LINK_1000);
+		break;
+	case IGC_LEDCTL_MODE_LINK_2500:
+		*flags = BIT(TRIGGER_NETDEV_LINK_2500);
+		break;
+	}
+
+	return 0;
+}
+
+static struct device *igc_led_hw_control_get_device(struct led_classdev *led_cdev)
+{
+	struct igc_led_classdev *ldev = lcdev_to_igc_ldev(led_cdev);
+
+	return &ldev->netdev->dev;
+}
+
+static void igc_led_get_name(struct igc_adapter *adapter, int index, char *buf,
+			     size_t buf_len)
+{
+	snprintf(buf, buf_len, "igc-%x%x-led%d",
+		 pci_domain_nr(adapter->pdev->bus),
+		 pci_dev_id(adapter->pdev), index);
+}
+
+static void igc_setup_ldev(struct igc_led_classdev *ldev,
+			   struct net_device *netdev, int index)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct led_classdev *led_cdev = &ldev->led;
+	char led_name[LED_MAX_NAME_SIZE];
+
+	ldev->netdev = netdev;
+	ldev->index = index;
+
+	igc_led_get_name(adapter, index, led_name, LED_MAX_NAME_SIZE);
+	led_cdev->name = led_name;
+	led_cdev->flags |= LED_RETAIN_AT_SHUTDOWN;
+	led_cdev->max_brightness = 1;
+	led_cdev->brightness_set_blocking = igc_led_brightness_set_blocking;
+	led_cdev->hw_control_trigger = "netdev";
+	led_cdev->hw_control_is_supported = igc_led_hw_control_is_supported;
+	led_cdev->hw_control_set = igc_led_hw_control_set;
+	led_cdev->hw_control_get = igc_led_hw_control_get;
+	led_cdev->hw_control_get_device = igc_led_hw_control_get_device;
+
+	devm_led_classdev_register(&netdev->dev, led_cdev);
+}
+
+int igc_led_setup(struct igc_adapter *adapter)
+{
+	struct net_device *netdev = adapter->netdev;
+	struct device *dev = &netdev->dev;
+	struct igc_led_classdev *leds;
+	int i;
+
+	mutex_init(&adapter->led_mutex);
+
+	leds = devm_kcalloc(dev, IGC_NUM_LEDS, sizeof(*leds), GFP_KERNEL);
+	if (!leds)
+		return -ENOMEM;
+
+	for (i = 0; i < IGC_NUM_LEDS; i++)
+		igc_setup_ldev(leds + i, netdev, i);
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ba8d3fe186ae..5ee26def75a7 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6977,6 +6977,12 @@ static int igc_probe(struct pci_dev *pdev,
 
 	pm_runtime_put_noidle(&pdev->dev);
 
+	if (IS_ENABLED(CONFIG_IGC_LEDS)) {
+		err = igc_led_setup(adapter);
+		if (err)
+			goto err_register;
+	}
+
 	return 0;
 
 err_register:
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index d38c87d7e5e8..e5b893fc5b66 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -12,6 +12,7 @@
 #define IGC_MDIC		0x00020  /* MDI Control - RW */
 #define IGC_CONNSW		0x00034  /* Copper/Fiber switch control - RW */
 #define IGC_VET			0x00038  /* VLAN Ether Type - RW */
+#define IGC_LEDCTL		0x00E00	 /* LED Control - RW */
 #define IGC_I225_PHPM		0x00E14  /* I225 PHY Power Management */
 #define IGC_GPHY_VERSION	0x0001E  /* I225 gPHY Firmware Version */
 
-- 
2.39.2

