Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4287F84B7DE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 15:28:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B94FA41F1C;
	Tue,  6 Feb 2024 14:28:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B94FA41F1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707229693;
	bh=HAW0hvcC0Iyv+NLJYzyPheODfL9clHfclwl1+ARTgNM=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=S6AMMX7SiaPH/at6ERhvVeXnuIXtMfynTD/c7U7vl1d+D4GJ74W5GOLCtqhk1fesH
	 XMUH59Fpq5h+pqAeNUcxBx6XQ70isTlHQ3SQN2NsyjJDTUkpZwKuBNlrqgvISUsqr7
	 Xno2jamoraB2/uYf8A9KOHqYi6/TSiAnLuQuXPvqoMcC7TXNB4/ZxywKmpebR60h4h
	 wSzdTTHOfpDaxjqTaDlCoZ1uzkcYzGVySTuMEpPM95rX6JgbOzj+Jq+cVJvE521kHp
	 ZF0DmJJjPIMuMy7yvPPDJzYxEWHJBb1Cn095mZbMwowjuTmerYjdhXMSGWUfpBBLY3
	 RA/tgHcHfCQxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W55QI3Kljs-8; Tue,  6 Feb 2024 14:28:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7CBA41F1F;
	Tue,  6 Feb 2024 14:28:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7CBA41F1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D74FC1BF423
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 14:28:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ABC7F6122E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 14:28:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABC7F6122E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TWaXVXn615Qo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 14:28:05 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 068AD61203
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 14:28:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 068AD61203
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Tue, 06 Feb 2024 15:27:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240206-igc_leds-v3-1-390ce3d18250@linutronix.de>
X-B4-Tracking: v=1; b=H4sIANNBwmUC/02Nyw6CMBBFf8XM2iG0VHys/A9jTEsHmAjFTIuSE
 P5dcOXy5NybM0MkYYpw2c0g9ObIQ1ih2O+gam1oCNmvDDrXJtd5idxUj458xKP3zmh1cq7UsM6
 djYRObKja7dDbmEg28RKqefo1bsCfDgNNCe6rqWXoMbVC9r+hlD6cTZkZYwqFCp+jpGvHYUwyB
 J4yT7AsX7rFoR+5AAAA
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=12720; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=9Np6KPxEQEarnuGLYrnEgpg8LraFMXuXk9mh68nrx0g=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBlwkHxwFOl4qBCqt/iHV3DeCe0vHe/CTVtjjqyr
 /iD1yxzEoeJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZcJB8QAKCRDBk9HyqkZz
 gphcD/49NtB9f6XdHgI1Dk1Yz9+IFyvrw3DtQz6rCVtAUAZQLhW0EdjfUhnkqSAIMT50b2kJ16K
 n+IFx60mYhvK4zhN2d+jmANwqGP2J5xUnqcZThhi7UJo3XhwgBYUR31gJgDFoSnnY1AQwCzSQDd
 mLLSvR4F3++9r5crUAHM4N/mmyAbEwOWo+eO78bc8h7n+0BN/TNEpyi3tsmSVGbNWlZLZxtCKIF
 vwj7iAvEDcQ7Co/PUyO8N5srGKQ9rVH37P3YSesF/7UnVz+DAMmVXKH2VUeyx99i6J7zTefvTPY
 g2iu9yXOy5xDMQy63sjCS7OjgfdCaVBb5ql8jOD17yr9tj2IxM1qQB/sTeSmjdbZ8T1+5PjFrPg
 VlTKkBsAE1BpX4Ypt6/fdzHwuyb1U9RrhdnvcQYSkBczXCRt7uNUuM0m9TZrS5SutQr1PBITcM2
 0e4f/QR0mrQrN1zjsHuKFB10G8XtMf4tjFOvGzo0ttYiVvAqg1tAaRNlBJtIOMrbgsny7JORiTy
 uK+m3nNP8K8jxzfrBkcBcZPvXcYqklHiRqYtm7BgI3D9HJ0H8hpILMuxyHr4wVv0NKuW41ltYDB
 QiSltpnQzR5a/mnxDH5FyB/sCy9xAbbEPa24Qafdj+Tv9wsZV96YM8xX1sRJ9cGOhTedQ49++g7
 OwsiJ3Te+Fjm+Tg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1707229682;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=HAW0hvcC0Iyv+NLJYzyPheODfL9clHfclwl1+ARTgNM=;
 b=H8W2ZDdmeuXO+rkF+WUQy42Y/PBCMgPfAycJav5b4kucXnBGzIdvfnQEfnbT1PFhJEeLVJ
 gt5TsmEcNPSlqN1Rf/9muFL+5k676xNk7kmJTpfDnCFnDL/Xpxpq+ZmXMTALgUdsuxvZxF
 VGsxndLKfXMTV0MXdGP+XD3ZSOTUjoCALQHLteCuP1EqAyyfVJDg18GtOtKwg5Mz+c7dnL
 vvIL9e8vi5b/Bw18rynELFItMPJayGfe1acWyDs96hJ9Bo5EwZpMFwxEOj/VP0LZnAUPi9
 I0Avyj1/67ZthTQ0uBF+e+dMY/4sdjQjwvTbIikou7t2W0fltn2k58i6qDx3VQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1707229682;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=HAW0hvcC0Iyv+NLJYzyPheODfL9clHfclwl1+ARTgNM=;
 b=TqP8nOHOLjSnk8JKsZVWg6QCAsjWtTmLw7i/UeGn0CwYD/bxiCJQ6fk9EGH3BqYQXu/i2P
 qNqljROTpx10USCQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=H8W2ZDdm; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=TqP8nOHO
Subject: [Intel-wired-lan] [PATCH iwl-next v3] igc: Add support for LEDs on
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

Offloading link speed and activity are supported. Other modes are simulated
in software by using on/off. Tested on Intel i225.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
Changes since v2:

 * Offload activity if possible (Andrew)

Changes since v1:

 * Add brightness_set() to allow software control (Andrew)
 * Remove offloading of activity, because the software control is more flexible
 * Fix smatch warning (Simon)

Previous versions:

 * v1: https://lore.kernel.org/netdev/20240124082408.49138-1-kurt@linutronix.de/
 * v2: https://lore.kernel.org/netdev/20240201125946.44431-1-kurt@linutronix.de/
---
 drivers/net/ethernet/intel/Kconfig        |   8 +
 drivers/net/ethernet/intel/igc/Makefile   |   1 +
 drivers/net/ethernet/intel/igc/igc.h      |   5 +
 drivers/net/ethernet/intel/igc/igc_leds.c | 280 ++++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_main.c |   6 +
 drivers/net/ethernet/intel/igc/igc_regs.h |   1 +
 6 files changed, 301 insertions(+)

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
index 45430e246e9c..914d5189b001 100644
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
index 000000000000..bf240c5daf86
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_leds.c
@@ -0,0 +1,280 @@
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
+#define IGC_LEDCTL_MODE_ACTIVITY	0x0b
+
+#define IGC_SUPPORTED_MODES						 \
+	(BIT(TRIGGER_NETDEV_LINK_2500) | BIT(TRIGGER_NETDEV_LINK_1000) | \
+	 BIT(TRIGGER_NETDEV_LINK_100) | BIT(TRIGGER_NETDEV_LINK_10) |	 \
+	 BIT(TRIGGER_NETDEV_RX) | BIT(TRIGGER_NETDEV_TX))
+
+#define IGC_ACTIVITY_MODES					\
+	(BIT(TRIGGER_NETDEV_RX) | BIT(TRIGGER_NETDEV_TX))
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
+	/* If Tx and Rx selected, activity can be offloaded unless some other
+	 * mode is selected as well.
+	 */
+	if ((flags & BIT(TRIGGER_NETDEV_TX)) &&
+	    (flags & BIT(TRIGGER_NETDEV_RX)) &&
+	    !(flags & ~IGC_ACTIVITY_MODES))
+		return 0;
+
+	/* Single Rx or Tx activity is not supported. */
+	if (flags & IGC_ACTIVITY_MODES)
+		return -EOPNOTSUPP;
+
+	/* Only one mode can be active at a given time. */
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
+	bool blink = false;
+
+	if (flags & BIT(TRIGGER_NETDEV_LINK_10))
+		mode = IGC_LEDCTL_MODE_LINK_10;
+	if (flags & BIT(TRIGGER_NETDEV_LINK_100))
+		mode = IGC_LEDCTL_MODE_LINK_100;
+	if (flags & BIT(TRIGGER_NETDEV_LINK_1000))
+		mode = IGC_LEDCTL_MODE_LINK_1000;
+	if (flags & BIT(TRIGGER_NETDEV_LINK_2500))
+		mode = IGC_LEDCTL_MODE_LINK_2500;
+	if ((flags & BIT(TRIGGER_NETDEV_TX)) &&
+	    (flags & BIT(TRIGGER_NETDEV_RX)))
+		mode = IGC_LEDCTL_MODE_ACTIVITY;
+
+	netdev_dbg(adapter->netdev, "Set HW control for LED %d to mode %u!\n",
+		   ldev->index, mode);
+
+	/* blink is recommended for activity */
+	if (mode == IGC_LEDCTL_MODE_ACTIVITY)
+		blink = true;
+
+	igc_led_set(adapter, ldev->index, mode, blink);
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
+	case IGC_LEDCTL_MODE_ACTIVITY:
+		*flags = BIT(TRIGGER_NETDEV_TX) | BIT(TRIGGER_NETDEV_RX);
+		break;
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
 

---
base-commit: 54be6c6c5ae8e0d93a6c4641cb7528eb0b6ba478
change-id: 20240206-igc_leds-7ddb4218bb62

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

