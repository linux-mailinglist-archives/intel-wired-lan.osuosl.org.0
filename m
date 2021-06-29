Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 512BC3B6DBD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 06:44:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB7D84044F;
	Tue, 29 Jun 2021 04:44:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N-0VyjxcSxMW; Tue, 29 Jun 2021 04:44:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9179240270;
	Tue, 29 Jun 2021 04:44:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0894D1BF9AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87E7940001
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W0CaA57tu7kW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 04:43:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1FFD3400DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="207900749"
X-IronPort-AV: E=Sophos;i="5.83,307,1616482800"; d="scan'208";a="207900749"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 21:43:47 -0700
X-IronPort-AV: E=Sophos;i="5.83,307,1616482800"; d="scan'208";a="446881871"
Received: from twilli3-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.12.190])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 21:43:47 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Jun 2021 21:43:32 -0700
Message-Id: <20210629044332.3491232-6-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210629044332.3491232-1-vinicius.gomes@intel.com>
References: <20210629044332.3491232-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v2 5/5] igc: Export LEDs
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kurt Kanzenbach <kurt@linutronix.de>

Each i225 has three LEDs. Export them via the LED class framework.

Each LED is controllable via sysfs. Example:

$ cd /sys/class/leds/igc_led0
$ cat brightness      # Current Mode
$ cat max_brightness  # 15
$ echo 0 > brightness # Mode 0
$ echo 1 > brightness # Mode 1

The brightness field here reflects the different LED modes ranging
from 0 to 15.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/net/ethernet/intel/Kconfig           |   1 +
 drivers/net/ethernet/intel/igc/igc.h         |  10 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  10 ++
 drivers/net/ethernet/intel/igc/igc_main.c    | 132 +++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |   2 +
 5 files changed, 155 insertions(+)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 045ce9cb7b7f..c9f9bfde13b9 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -349,6 +349,7 @@ config IGC
 	tristate "Intel(R) Ethernet Controller I225-LM/I225-V support"
 	default n
 	depends on PCI
+	depends on LEDS_CLASS
 	help
 	  This driver supports Intel(R) Ethernet Controller I225-LM/I225-V
 	  family of adapters.
diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index a0ecfe5a4078..2df0fd2b9ecf 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -13,6 +13,7 @@
 #include <linux/ptp_clock_kernel.h>
 #include <linux/timecounter.h>
 #include <linux/net_tstamp.h>
+#include <linux/leds.h>
 
 #include "igc_hw.h"
 
@@ -239,8 +240,17 @@ struct igc_adapter {
 		struct timespec64 start;
 		struct timespec64 period;
 	} perout[IGC_N_PEROUT];
+
+	/* LEDs */
+	struct mutex led_mutex;
+	struct led_classdev led0;
+	struct led_classdev led1;
+	struct led_classdev led2;
 };
 
+#define led_to_igc(ldev, led)                          \
+	container_of(ldev, struct igc_adapter, led)
+
 void igc_up(struct igc_adapter *adapter);
 void igc_down(struct igc_adapter *adapter);
 int igc_open(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 7bdd0b1abf20..deb4819f1e27 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -144,6 +144,16 @@
 #define IGC_CTRL_SDP0_DIR	0x00400000  /* SDP0 Data direction */
 #define IGC_CTRL_SDP1_DIR	0x00800000  /* SDP1 Data direction */
 
+/* LED Control */
+#define IGC_LEDCTL_LED0_MODE_SHIFT	0
+#define IGC_LEDCTL_LED0_MODE_MASK	GENMASK(3, 0)
+#define IGC_LEDCTL_LED1_MODE_SHIFT	8
+#define IGC_LEDCTL_LED1_MODE_MASK	GENMASK(11, 8)
+#define IGC_LEDCTL_LED2_MODE_SHIFT	16
+#define IGC_LEDCTL_LED2_MODE_MASK	GENMASK(19, 16)
+
+#define IGC_CONNSW_AUTOSENSE_EN		0x1
+
 /* As per the EAS the maximum supported size is 9.5KB (9728 bytes) */
 #define MAX_JUMBO_FRAME_SIZE	0x2600
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 6dc502b27146..5a3eb15b82cc 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6143,6 +6143,134 @@ int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx)
 	return -EINVAL;
 }
 
+static void igc_select_led(struct igc_adapter *adapter, int led,
+			   u32 *mask, u32 *shift)
+{
+	switch (led) {
+	case 0:
+		*mask  = IGC_LEDCTL_LED0_MODE_MASK;
+		*shift = IGC_LEDCTL_LED0_MODE_SHIFT;
+		break;
+	case 1:
+		*mask  = IGC_LEDCTL_LED1_MODE_MASK;
+		*shift = IGC_LEDCTL_LED1_MODE_SHIFT;
+		break;
+	case 2:
+		*mask  = IGC_LEDCTL_LED2_MODE_MASK;
+		*shift = IGC_LEDCTL_LED2_MODE_SHIFT;
+		break;
+	default:
+		*mask = *shift = 0;
+		dev_err(&adapter->pdev->dev, "Unknown led %d selected!", led);
+	}
+}
+
+static void igc_led_set(struct igc_adapter *adapter, int led, u16 brightness)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 shift, mask, ledctl;
+
+	igc_select_led(adapter, led, &mask, &shift);
+
+	mutex_lock(&adapter->led_mutex);
+	ledctl = rd32(IGC_LEDCTL);
+	ledctl &= ~mask;
+	ledctl |= brightness << shift;
+	wr32(IGC_LEDCTL, ledctl);
+	mutex_unlock(&adapter->led_mutex);
+}
+
+static enum led_brightness igc_led_get(struct igc_adapter *adapter, int led)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 shift, mask, ledctl;
+
+	igc_select_led(adapter, led, &mask, &shift);
+
+	mutex_lock(&adapter->led_mutex);
+	ledctl = rd32(IGC_LEDCTL);
+	mutex_unlock(&adapter->led_mutex);
+
+	return (ledctl & mask) >> shift;
+}
+
+static void igc_led0_set(struct led_classdev *ldev, enum led_brightness b)
+{
+	struct igc_adapter *adapter = led_to_igc(ldev, led0);
+
+	igc_led_set(adapter, 0, b);
+}
+
+static enum led_brightness igc_led0_get(struct led_classdev *ldev)
+{
+	struct igc_adapter *adapter = led_to_igc(ldev, led0);
+
+	return igc_led_get(adapter, 0);
+}
+
+static void igc_led1_set(struct led_classdev *ldev, enum led_brightness b)
+{
+	struct igc_adapter *adapter = led_to_igc(ldev, led1);
+
+	igc_led_set(adapter, 1, b);
+}
+
+static enum led_brightness igc_led1_get(struct led_classdev *ldev)
+{
+	struct igc_adapter *adapter = led_to_igc(ldev, led1);
+
+	return igc_led_get(adapter, 1);
+}
+
+static void igc_led2_set(struct led_classdev *ldev, enum led_brightness b)
+{
+	struct igc_adapter *adapter = led_to_igc(ldev, led2);
+
+	igc_led_set(adapter, 2, b);
+}
+
+static enum led_brightness igc_led2_get(struct led_classdev *ldev)
+{
+	struct igc_adapter *adapter = led_to_igc(ldev, led2);
+
+	return igc_led_get(adapter, 2);
+}
+
+static int igc_led_setup(struct igc_adapter *adapter)
+{
+	/* Setup */
+	mutex_init(&adapter->led_mutex);
+
+	adapter->led0.name	     = "igc_led0";
+	adapter->led0.max_brightness = 15;
+	adapter->led0.brightness_set = igc_led0_set;
+	adapter->led0.brightness_get = igc_led0_get;
+
+	adapter->led1.name	     = "igc_led1";
+	adapter->led1.max_brightness = 15;
+	adapter->led1.brightness_set = igc_led1_set;
+	adapter->led1.brightness_get = igc_led1_get;
+
+	adapter->led2.name	     = "igc_led2";
+	adapter->led2.max_brightness = 15;
+	adapter->led2.brightness_set = igc_led2_set;
+	adapter->led2.brightness_get = igc_led2_get;
+
+	/* Register leds */
+	led_classdev_register(&adapter->pdev->dev, &adapter->led0);
+	led_classdev_register(&adapter->pdev->dev, &adapter->led1);
+	led_classdev_register(&adapter->pdev->dev, &adapter->led2);
+
+	return 0;
+}
+
+static void igc_led_destroy(struct igc_adapter *adapter)
+{
+	led_classdev_unregister(&adapter->led0);
+	led_classdev_unregister(&adapter->led1);
+	led_classdev_unregister(&adapter->led2);
+}
+
 /**
  * igc_probe - Device Initialization Routine
  * @pdev: PCI device information struct
@@ -6371,6 +6499,8 @@ static int igc_probe(struct pci_dev *pdev,
 
 	pm_runtime_put_noidle(&pdev->dev);
 
+	igc_led_setup(adapter);
+
 	return 0;
 
 err_register:
@@ -6412,6 +6542,8 @@ static void igc_remove(struct pci_dev *pdev)
 
 	igc_ptp_stop(adapter);
 
+	igc_led_destroy(adapter);
+
 	set_bit(__IGC_DOWN, &adapter->state);
 
 	del_timer_sync(&adapter->watchdog_timer);
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 828c3501c448..f6247b00c4e3 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -10,6 +10,8 @@
 #define IGC_EECD		0x00010  /* EEPROM/Flash Control - RW */
 #define IGC_CTRL_EXT		0x00018  /* Extended Device Control - RW */
 #define IGC_MDIC		0x00020  /* MDI Control - RW */
+#define IGC_LEDCTL		0x00E00	 /* LED Control - RW */
+#define IGC_MDICNFG		0x00E04  /* MDC/MDIO Configuration - RW */
 #define IGC_CONNSW		0x00034  /* Copper/Fiber switch control - RW */
 #define IGC_VET			0x00038  /* VLAN Ether Type - RW */
 #define IGC_I225_PHPM		0x00E14  /* I225 PHY Power Management */
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
