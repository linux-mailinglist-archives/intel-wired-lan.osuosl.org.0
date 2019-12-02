Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B2610F34D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2019 00:20:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4DFC86F8A;
	Mon,  2 Dec 2019 23:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4mCzLU0i9W7B; Mon,  2 Dec 2019 23:20:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F5B486BDB;
	Mon,  2 Dec 2019 23:20:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C13AD1BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD36985E71
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hl2wX2r3wPKu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Dec 2019 23:20:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E78D286237
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 15:19:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,270,1571727600"; d="scan'208";a="213201663"
Received: from vcostago-desk1.jf.intel.com ([10.54.70.26])
 by orsmga006.jf.intel.com with ESMTP; 02 Dec 2019 15:19:55 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  2 Dec 2019 15:19:49 -0800
Message-Id: <20191202231953.2203397-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202231953.2203397-1-vinicius.gomes@intel.com>
References: <20191202231953.2203397-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v3 1/5] igc: Add basic skeleton
 for PTP
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

This allows the creation of the /dev/ptpX device for i225, and reading
and writing the time.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/Makefile      |   2 +-
 drivers/net/ethernet/intel/igc/igc.h         |  26 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  12 +
 drivers/net/ethernet/intel/igc/igc_main.c    |  27 ++
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 349 +++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  24 ++
 6 files changed, 439 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_ptp.c

diff --git a/drivers/net/ethernet/intel/igc/Makefile b/drivers/net/ethernet/intel/igc/Makefile
index 88c6f88baac5..49fb1e1965cd 100644
--- a/drivers/net/ethernet/intel/igc/Makefile
+++ b/drivers/net/ethernet/intel/igc/Makefile
@@ -8,4 +8,4 @@
 obj-$(CONFIG_IGC) += igc.o
 
 igc-objs := igc_main.o igc_mac.o igc_i225.o igc_base.o igc_nvm.o igc_phy.o \
-igc_ethtool.o
+igc_ethtool.o igc_ptp.o
diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 612fe9ec81a4..1cd7221cdcda 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -10,6 +10,9 @@
 #include <linux/vmalloc.h>
 #include <linux/ethtool.h>
 #include <linux/sctp.h>
+#include <linux/ptp_clock_kernel.h>
+#include <linux/timecounter.h>
+#include <linux/net_tstamp.h>
 
 #include "igc_hw.h"
 
@@ -45,11 +48,15 @@ extern char igc_driver_version[];
 #define IGC_REGS_LEN			740
 #define IGC_RETA_SIZE			128
 
+/* flags controlling PTP/1588 function */
+#define IGC_PTP_ENABLED			BIT(0)
+
 /* Interrupt defines */
 #define IGC_START_ITR			648 /* ~6000 ints/sec */
 #define IGC_FLAG_HAS_MSI		BIT(0)
 #define IGC_FLAG_QUEUE_PAIRS		BIT(3)
 #define IGC_FLAG_DMAC			BIT(4)
+#define IGC_FLAG_PTP			BIT(8)
 #define IGC_FLAG_NEED_LINK_UPDATE	BIT(9)
 #define IGC_FLAG_MEDIA_RESET		BIT(10)
 #define IGC_FLAG_MAS_ENABLE		BIT(12)
@@ -432,6 +439,20 @@ struct igc_adapter {
 
 	unsigned long link_check_timeout;
 	struct igc_info ei;
+
+	struct ptp_clock *ptp_clock;
+	struct ptp_clock_info ptp_caps;
+	struct work_struct ptp_tx_work;
+	struct sk_buff *ptp_tx_skb;
+	struct hwtstamp_config tstamp_config;
+	unsigned long ptp_tx_start;
+	unsigned long last_rx_ptp_check;
+	unsigned long last_rx_timestamp;
+	unsigned int ptp_flags;
+	/* System time value lock */
+	spinlock_t tmreg_lock;
+	struct cyclecounter cc;
+	struct timecounter tc;
 };
 
 /* igc_desc_unused - calculate if we have unused descriptors */
@@ -515,6 +536,11 @@ int igc_add_filter(struct igc_adapter *adapter,
 int igc_erase_filter(struct igc_adapter *adapter,
 		     struct igc_nfc_filter *input);
 
+void igc_ptp_init(struct igc_adapter *adapter);
+void igc_ptp_reset(struct igc_adapter *adapter);
+void igc_ptp_stop(struct igc_adapter *adapter);
+int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
+int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
 #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
 
 #define IGC_TXD_DCMD	(IGC_ADVTXD_DCMD_EOP | IGC_ADVTXD_DCMD_RS)
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 50dffd5db606..d83f6d7c4b40 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -218,6 +218,7 @@
 #define IGC_ICR_RXDMT0		BIT(4)	/* Rx desc min. threshold (0) */
 #define IGC_ICR_RXO		BIT(6)	/* Rx overrun */
 #define IGC_ICR_RXT0		BIT(7)	/* Rx timer intr (ring 0) */
+#define IGC_ICR_TS		BIT(19) /* Time Sync Interrupt */
 #define IGC_ICR_DRSTA		BIT(30)	/* Device Reset Asserted */
 
 /* If this bit asserted, the driver should claim the interrupt */
@@ -240,6 +241,7 @@
 #define IGC_IMS_DRSTA		IGC_ICR_DRSTA	/* Device Reset Asserted */
 #define IGC_IMS_RXT0		IGC_ICR_RXT0	/* Rx timer intr */
 #define IGC_IMS_RXDMT0		IGC_ICR_RXDMT0	/* Rx desc min. threshold */
+#define IGC_IMS_TS		IGC_ICR_TS	/* Time Sync Interrupt */
 
 #define IGC_QVECTOR_MASK	0x7FFC		/* Q-vector mask */
 #define IGC_ITR_VAL_MASK	0x04		/* ITR value mask */
@@ -355,6 +357,16 @@
 #define I225_RXPBSIZE_DEFAULT	0x000000A2 /* RXPBSIZE default */
 #define I225_TXPBSIZE_DEFAULT	0x04000014 /* TXPBSIZE default */
 
+/* Time Sync Interrupt Causes */
+#define IGC_TSICR_SYS_WRAP	BIT(0) /* SYSTIM Wrap around. */
+#define IGC_TSICR_TXTS		BIT(1) /* Transmit Timestamp. */
+#define IGC_TSICR_TT0		BIT(3) /* Target Time 0 Trigger. */
+#define IGC_TSICR_TT1		BIT(4) /* Target Time 1 Trigger. */
+#define IGC_TSICR_AUTT0		BIT(5) /* Auxiliary Timestamp 0 Taken. */
+#define IGC_TSICR_AUTT1		BIT(6) /* Auxiliary Timestamp 1 Taken. */
+
+#define IGC_TSICR_INTERRUPTS	IGC_TSICR_TXTS
+
 /* Receive Checksum Control */
 #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable */
 #define IGC_RXCSUM_PCSD		0x00002000   /* packet checksum disabled */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 9c8abca08b90..a29b99f88177 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -102,6 +102,9 @@ void igc_reset(struct igc_adapter *adapter)
 	if (!netif_running(adapter->netdev))
 		igc_power_down_link(adapter);
 
+	/* Re-enable PTP, where applicable. */
+	igc_ptp_reset(adapter);
+
 	igc_get_phy_info(hw);
 }
 
@@ -4277,6 +4280,24 @@ static int igc_close(struct net_device *netdev)
 	return 0;
 }
 
+/**
+ * igc_ioctl - Access the hwtstamp interface
+ * @netdev: network interface device structure
+ * @ifreq: interface request data
+ * @cmd: ioctl command
+ **/
+static int igc_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
+{
+	switch (cmd) {
+	case SIOCGHWTSTAMP:
+		return igc_ptp_get_ts_config(netdev, ifr);
+	case SIOCSHWTSTAMP:
+		return igc_ptp_set_ts_config(netdev, ifr);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static const struct net_device_ops igc_netdev_ops = {
 	.ndo_open		= igc_open,
 	.ndo_stop		= igc_close,
@@ -4288,6 +4309,7 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_fix_features	= igc_fix_features,
 	.ndo_set_features	= igc_set_features,
 	.ndo_features_check	= igc_features_check,
+	.ndo_do_ioctl           = igc_ioctl,
 };
 
 /* PCIe configuration access */
@@ -4588,6 +4610,9 @@ static int igc_probe(struct pci_dev *pdev,
 	 /* carrier off reporting is important to ethtool even BEFORE open */
 	netif_carrier_off(netdev);
 
+	/* do hw tstamp init after resetting */
+	igc_ptp_init(adapter);
+
 	/* Check if Media Autosense is enabled */
 	adapter->ei = *ei;
 
@@ -4629,6 +4654,8 @@ static void igc_remove(struct pci_dev *pdev)
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
+	igc_ptp_stop(adapter);
+
 	set_bit(__IGC_DOWN, &adapter->state);
 
 	del_timer_sync(&adapter->watchdog_timer);
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
new file mode 100644
index 000000000000..aaf10617d222
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -0,0 +1,349 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c)  2019 Intel Corporation */
+
+#include "igc.h"
+
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/pci.h>
+#include <linux/ptp_classify.h>
+#include <linux/clocksource.h>
+
+#define INCVALUE_MASK		0x7fffffff
+#define ISGN			0x80000000
+
+#define IGC_SYSTIM_OVERFLOW_PERIOD	(HZ * 60 * 9)
+#define IGC_PTP_TX_TIMEOUT		(HZ * 15)
+
+/* SYSTIM read access for I225 */
+static void igc_ptp_read_i225(struct igc_adapter *adapter,
+			      struct timespec64 *ts)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 sec, nsec;
+
+	/* The timestamp latches on lowest register read. For I210/I211, the
+	 * lowest register is SYSTIMR. Since we only need to provide nanosecond
+	 * resolution, we can ignore it.
+	 */
+	rd32(IGC_SYSTIMR);
+	nsec = rd32(IGC_SYSTIML);
+	sec = rd32(IGC_SYSTIMH);
+
+	ts->tv_sec = sec;
+	ts->tv_nsec = nsec;
+}
+
+static void igc_ptp_write_i225(struct igc_adapter *adapter,
+			       const struct timespec64 *ts)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	/* Writing the SYSTIMR register is not necessary as it only
+	 * provides sub-nanosecond resolution.
+	 */
+	wr32(IGC_SYSTIML, ts->tv_nsec);
+	wr32(IGC_SYSTIMH, ts->tv_sec);
+}
+
+static int igc_ptp_adjfine_i225(struct ptp_clock_info *ptp, long scaled_ppm)
+{
+	struct igc_adapter *igc = container_of(ptp, struct igc_adapter,
+					       ptp_caps);
+	struct igc_hw *hw = &igc->hw;
+	int neg_adj = 0;
+	u64 rate;
+	u32 inca;
+
+	if (scaled_ppm < 0) {
+		neg_adj = 1;
+		scaled_ppm = -scaled_ppm;
+	}
+	rate = scaled_ppm;
+	rate <<= 14;
+	rate = div_u64(rate, 78125);
+
+	inca = rate & INCVALUE_MASK;
+	if (neg_adj)
+		inca |= ISGN;
+
+	wr32(IGC_TIMINCA, inca);
+
+	return 0;
+}
+
+static int igc_ptp_adjtime_i225(struct ptp_clock_info *ptp, s64 delta)
+{
+	struct igc_adapter *igc = container_of(ptp, struct igc_adapter,
+					       ptp_caps);
+	unsigned long flags;
+	struct timespec64 now, then = ns_to_timespec64(delta);
+
+	spin_lock_irqsave(&igc->tmreg_lock, flags);
+
+	igc_ptp_read_i225(igc, &now);
+	now = timespec64_add(now, then);
+	igc_ptp_write_i225(igc, (const struct timespec64 *)&now);
+
+	spin_unlock_irqrestore(&igc->tmreg_lock, flags);
+
+	return 0;
+}
+
+static int igc_ptp_gettimex64_i225(struct ptp_clock_info *ptp,
+				   struct timespec64 *ts,
+				   struct ptp_system_timestamp *sts)
+{
+	struct igc_adapter *igc = container_of(ptp, struct igc_adapter,
+					       ptp_caps);
+	struct igc_hw *hw = &igc->hw;
+	unsigned long flags;
+
+	spin_lock_irqsave(&igc->tmreg_lock, flags);
+
+	ptp_read_system_prets(sts);
+	rd32(IGC_SYSTIMR);
+	ptp_read_system_postts(sts);
+	ts->tv_nsec = rd32(IGC_SYSTIML);
+	ts->tv_sec = rd32(IGC_SYSTIMH);
+
+	spin_unlock_irqrestore(&igc->tmreg_lock, flags);
+
+	return 0;
+}
+
+static int igc_ptp_settime_i225(struct ptp_clock_info *ptp,
+				const struct timespec64 *ts)
+{
+	struct igc_adapter *igc = container_of(ptp, struct igc_adapter,
+					       ptp_caps);
+	unsigned long flags;
+
+	spin_lock_irqsave(&igc->tmreg_lock, flags);
+
+	igc_ptp_write_i225(igc, ts);
+
+	spin_unlock_irqrestore(&igc->tmreg_lock, flags);
+
+	return 0;
+}
+
+static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
+				       struct ptp_clock_request *rq, int on)
+{
+	return -EOPNOTSUPP;
+}
+
+static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
+				      struct hwtstamp_config *config)
+{
+	return 0;
+}
+
+void igc_ptp_tx_hang(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	bool timeout = time_is_before_jiffies(adapter->ptp_tx_start +
+					      IGC_PTP_TX_TIMEOUT);
+
+	if (!adapter->ptp_tx_skb)
+		return;
+
+	if (!test_bit(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))
+		return;
+
+	/* If we haven't received a timestamp within the timeout, it is
+	 * reasonable to assume that it will never occur, so we can unlock the
+	 * timestamp bit when this occurs.
+	 */
+	if (timeout) {
+		cancel_work_sync(&adapter->ptp_tx_work);
+		dev_kfree_skb_any(adapter->ptp_tx_skb);
+		adapter->ptp_tx_skb = NULL;
+		clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
+		adapter->tx_hwtstamp_timeouts++;
+		/* Clear the tx valid bit in TSYNCTXCTL register to enable
+		 * interrupt
+		 */
+		rd32(IGC_TXSTMPH);
+		dev_warn(&adapter->pdev->dev, "clearing Tx timestamp hang\n");
+	}
+}
+
+void igc_ptp_tx_work(struct work_struct *work)
+{
+}
+
+/**
+ * igc_ptp_set_ts_config - set hardware time stamping config
+ * @netdev:
+ * @ifreq:
+ *
+ **/
+int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct hwtstamp_config config;
+	int err;
+
+	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
+		return -EFAULT;
+
+	err = igc_ptp_set_timestamp_mode(adapter, &config);
+	if (err)
+		return err;
+
+	/* save these settings for future reference */
+	memcpy(&adapter->tstamp_config, &config,
+	       sizeof(adapter->tstamp_config));
+
+	return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
+		-EFAULT : 0;
+}
+
+/**
+ * igc_ptp_get_ts_config - get hardware time stamping config
+ * @netdev:
+ * @ifreq:
+ *
+ * Get the hwtstamp_config settings to return to the user. Rather than attempt
+ * to deconstruct the settings from the registers, just return a shadow copy
+ * of the last known settings.
+ **/
+int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct hwtstamp_config *config = &adapter->tstamp_config;
+
+	return copy_to_user(ifr->ifr_data, config, sizeof(*config)) ?
+		-EFAULT : 0;
+}
+
+/**
+ * igc_ptp_init - Initialize PTP functionality
+ * @adapter: Board private structure
+ *
+ * This function is called at device probe to initialize the PTP
+ * functionality.
+ */
+void igc_ptp_init(struct igc_adapter *adapter)
+{
+	struct net_device *netdev = adapter->netdev;
+	struct igc_hw *hw = &adapter->hw;
+
+	switch (hw->mac.type) {
+	case igc_i225:
+		snprintf(adapter->ptp_caps.name, 16, "%pm", netdev->dev_addr);
+		adapter->ptp_caps.owner = THIS_MODULE;
+		adapter->ptp_caps.max_adj = 62499999;
+		adapter->ptp_caps.adjfine = igc_ptp_adjfine_i225;
+		adapter->ptp_caps.adjtime = igc_ptp_adjtime_i225;
+		adapter->ptp_caps.gettimex64 = igc_ptp_gettimex64_i225;
+		adapter->ptp_caps.settime64 = igc_ptp_settime_i225;
+		adapter->ptp_caps.enable = igc_ptp_feature_enable_i225;
+		break;
+	default:
+		adapter->ptp_clock = NULL;
+		return;
+	}
+
+	spin_lock_init(&adapter->tmreg_lock);
+	INIT_WORK(&adapter->ptp_tx_work, igc_ptp_tx_work);
+
+	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
+	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
+
+	igc_ptp_reset(adapter);
+
+	adapter->ptp_clock = ptp_clock_register(&adapter->ptp_caps,
+						&adapter->pdev->dev);
+	if (IS_ERR(adapter->ptp_clock)) {
+		adapter->ptp_clock = NULL;
+		dev_err(&adapter->pdev->dev, "ptp_clock_register failed\n");
+	} else if (adapter->ptp_clock) {
+		dev_info(&adapter->pdev->dev, "added PHC on %s\n",
+			 adapter->netdev->name);
+		adapter->ptp_flags |= IGC_PTP_ENABLED;
+	}
+}
+
+/**
+ * igc_ptp_suspend - Disable PTP work items and prepare for suspend
+ * @adapter: Board private structure
+ *
+ * This function stops the overflow check work and PTP Tx timestamp work, and
+ * will prepare the device for OS suspend.
+ */
+void igc_ptp_suspend(struct igc_adapter *adapter)
+{
+	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
+		return;
+
+	cancel_work_sync(&adapter->ptp_tx_work);
+	if (adapter->ptp_tx_skb) {
+		dev_kfree_skb_any(adapter->ptp_tx_skb);
+		adapter->ptp_tx_skb = NULL;
+		clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
+	}
+}
+
+/**
+ * igc_ptp_stop - Disable PTP device and stop the overflow check.
+ * @adapter: Board private structure.
+ *
+ * This function stops the PTP support and cancels the delayed work.
+ **/
+void igc_ptp_stop(struct igc_adapter *adapter)
+{
+	igc_ptp_suspend(adapter);
+
+	if (adapter->ptp_clock) {
+		ptp_clock_unregister(adapter->ptp_clock);
+		dev_info(&adapter->pdev->dev, "removed PHC on %s\n",
+			 adapter->netdev->name);
+		adapter->ptp_flags &= ~IGC_PTP_ENABLED;
+	}
+}
+
+/**
+ * igc_ptp_reset - Re-enable the adapter for PTP following a reset.
+ * @adapter: Board private structure.
+ *
+ * This function handles the reset work required to re-enable the PTP device.
+ **/
+void igc_ptp_reset(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	unsigned long flags;
+
+	/* reset the tstamp_config */
+	igc_ptp_set_timestamp_mode(adapter, &adapter->tstamp_config);
+
+	spin_lock_irqsave(&adapter->tmreg_lock, flags);
+
+	switch (adapter->hw.mac.type) {
+	case igc_i225:
+		wr32(IGC_TSAUXC, 0x0);
+		wr32(IGC_TSSDP, 0x0);
+		wr32(IGC_TSIM, IGC_TSICR_INTERRUPTS);
+		wr32(IGC_IMS, IGC_IMS_TS);
+		break;
+	default:
+		/* No work to do. */
+		goto out;
+	}
+
+	/* Re-initialize the timer. */
+	if (hw->mac.type == igc_i225) {
+		struct timespec64 ts64 = ktime_to_timespec64(ktime_get_real());
+
+		igc_ptp_write_i225(adapter, &ts64);
+	} else {
+		timecounter_init(&adapter->tc, &adapter->cc,
+				 ktime_to_ns(ktime_get_real()));
+	}
+out:
+	spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
+
+	wrfl();
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 93a9139f08c5..b5c72430a18b 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -209,6 +209,30 @@
 #define IGC_LENERRS	0x04138  /* Length Errors Count */
 #define IGC_HRMPC	0x0A018  /* Header Redirection Missed Packet Count */
 
+/* Time sync registers */
+#define IGC_TSICR	0x0B66C  /* Time Sync Interrupt Cause */
+#define IGC_TSIM	0x0B674  /* Time Sync Interrupt Mask Register */
+#define IGC_TSAUXC	0x0B640  /* Timesync Auxiliary Control register */
+#define IGC_TSYNCRXCTL	0x0B620  /* Rx Time Sync Control register - RW */
+#define IGC_TSYNCTXCTL	0x0B614  /* Tx Time Sync Control register - RW */
+#define IGC_TSYNCRXCFG	0x05F50  /* Time Sync Rx Configuration - RW */
+#define IGC_TSSDP	0x0003C  /* Time Sync SDP Configuration Register - RW */
+
+#define IGC_IMIR(_i)	(0x05A80 + ((_i) * 4))  /* Immediate Interrupt */
+#define IGC_IMIREXT(_i)	(0x05AA0 + ((_i) * 4))  /* Immediate INTR Ext*/
+
+#define IGC_FTQF(_n)	(0x059E0 + (4 * (_n)))  /* 5-tuple Queue Fltr */
+/* System Time Registers */
+#define IGC_SYSTIML	0x0B600  /* System time register Low - RO */
+#define IGC_SYSTIMH	0x0B604  /* System time register High - RO */
+#define IGC_SYSTIMR	0x0B6F8  /* System time register Residue */
+#define IGC_TIMINCA	0x0B608  /* Increment attributes register - RW */
+
+#define IGC_RXSTMPL	0x0B624  /* Rx timestamp Low - RO */
+#define IGC_RXSTMPH	0x0B628  /* Rx timestamp High - RO */
+#define IGC_TXSTMPL	0x0B618  /* Tx timestamp value Low - RO */
+#define IGC_TXSTMPH	0x0B61C  /* Tx timestamp value High - RO */
+
 /* Management registers */
 #define IGC_MANC	0x05820  /* Management Control - RW */
 
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
