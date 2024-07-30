Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF6794037D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 03:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9209240AC4;
	Tue, 30 Jul 2024 01:24:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CIkG8SupQEWZ; Tue, 30 Jul 2024 01:24:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEB8140ACB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722302644;
	bh=9qdHoupN7A/+GqOuVGilgzveFAauE5FW44v2aNAxbIM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VCd860qSdmxlP1uRM7z5G1wQxbMrUF5/aLuwOh16jI7WPwf7mHMxW0heMjnGE0yk4
	 ShGNV5Tej2hL/nfrFvRyRlG8WjFKU55wUnmDIgPKetmRDOggQ7Y0xI7Rfa7YbgJF1U
	 3zkZI49AA+ha8NEPxfwzK26hCSFYE9EePnTyzDU4DOLbziKd6Vgnh7ONrYpf1cb+d+
	 EP+tgqIVYJgDlhKYfMw5clrcI/H8oeZNT6c6z4slVwQGuWSfCENBcKFqEWk8vh8zMS
	 7muce3bHdvG7mQxKpLftYIzvMZ8bPknOtFhTdGjtcmcm3fyQkbBBcGFP5gnEOBX98w
	 xBMWl4BPsooAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEB8140ACB;
	Tue, 30 Jul 2024 01:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 95ED51BF414
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F3DB40AB7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:24:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7RdMb1xVAiWR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 01:24:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3068840A87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3068840A87
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3068840A87
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:24:02 +0000 (UTC)
X-CSE-ConnectionGUID: 0F1HHPSISyuAqSr/hRszlQ==
X-CSE-MsgGUID: i0y7AnPkRbymbSKt90Y3zg==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19894989"
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="19894989"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 18:23:49 -0700
X-CSE-ConnectionGUID: NipeZddZTauPmwsUZXEkiw==
X-CSE-MsgGUID: EI8p0QXcSCiwk94KhuloFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="59240054"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by orviesa004.jf.intel.com with ESMTP; 29 Jul 2024 18:23:44 -0700
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Shinas Rasheed <srasheed@marvell.com>, Kevin Tian <kevin.tian@intel.com>,
 Brett Creeley <brett.creeley@amd.com>,
 Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Sasha Neftin <sasha.neftin@intel.com>
Date: Tue, 30 Jul 2024 09:23:12 +0800
Message-Id: <20240730012312.775893-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722302641; x=1753838641;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6fA9RTyEjiNifxbl0Sg2Mfk6p9bgGUuXoF5o0fPzn70=;
 b=VH4ej0rovQoQXAGOGOumNA7mfzPal4YqCDnkbkc21AzxbHCiX+m54smU
 8deQVwE9IvamOlSu2fmC+ee77JyY5WtfQoOfnkoAizmOoLVVyif4RyM/6
 cS9GtTt5D3juGesU+ji6y4IjFfc8MFnL5XuJEryz+q44vU7ymd22b48DD
 Mn9M0m3WslA9BGVsLnOOYJlVPPk1cE4+FWuU6WwMBy4L8AIQj2PP34AKH
 HPuCIUXnAQRJxlS7u3V+pAbS0oQWAy+46nIa2UbWzHCqZoZwEqEg8nKtw
 8RRKdUx7eELMYcjpn+J0LVWRP+ypMAFAv1WzxMjpOzXCU//fmOK/REXXt
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VH4ej0ro
Subject: [Intel-wired-lan] [PATCH iwl-next,
 v1 2/3] igc: Add default Rx queue configuration via sysfs
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>

This commit introduces the support to configure default Rx queue during
runtime. A new sysfs attribute "default_rx_queue" has been added, allowing
users to check and modify the default Rx queue.

1. Command to check the currently configured default Rx queue:
   cat /sys/devices/pci0000:00/.../default_rx_queue

2. Command to set the default Rx queue to a desired value, for example 3:
   echo 3 > /sys/devices/pci0000:00/.../default_rx_queue

Signed-off-by: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/intel/igc/Makefile    |   3 +-
 drivers/net/ethernet/intel/igc/igc_main.c  |   6 +
 drivers/net/ethernet/intel/igc/igc_regs.h  |   6 +
 drivers/net/ethernet/intel/igc/igc_sysfs.c | 156 +++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_sysfs.h |  10 ++
 5 files changed, 180 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_sysfs.c
 create mode 100644 drivers/net/ethernet/intel/igc/igc_sysfs.h

diff --git a/drivers/net/ethernet/intel/igc/Makefile b/drivers/net/ethernet/intel/igc/Makefile
index efc5e7983dad..c31bc18ede13 100644
--- a/drivers/net/ethernet/intel/igc/Makefile
+++ b/drivers/net/ethernet/intel/igc/Makefile
@@ -8,5 +8,6 @@
 obj-$(CONFIG_IGC) += igc.o
 
 igc-y := igc_main.o igc_mac.o igc_i225.o igc_base.o igc_nvm.o igc_phy.o \
-	 igc_diag.o igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o igc_xdp.o
+	 igc_diag.o igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o igc_xdp.o \
+	 igc_sysfs.o
 igc-$(CONFIG_IGC_LEDS) += igc_leds.o
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index cb5c7b09e8a0..6a925615911a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -18,6 +18,7 @@
 
 #include "igc.h"
 #include "igc_hw.h"
+#include "igc_sysfs.h"
 #include "igc_tsn.h"
 #include "igc_xdp.h"
 
@@ -7069,6 +7070,9 @@ static int igc_probe(struct pci_dev *pdev,
 			goto err_register;
 	}
 
+	if (igc_sysfs_init(adapter))
+		dev_err(&pdev->dev, "Failed to allocate sysfs resources\n");
+
 	return 0;
 
 err_register:
@@ -7124,6 +7128,8 @@ static void igc_remove(struct pci_dev *pdev)
 	if (IS_ENABLED(CONFIG_IGC_LEDS))
 		igc_led_free(adapter);
 
+	igc_sysfs_exit(adapter);
+
 	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
 	 * would have already happened in close and is redundant.
 	 */
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index e5b893fc5b66..df96800f6e3b 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -63,6 +63,12 @@
 /* RSS registers */
 #define IGC_MRQC		0x05818 /* Multiple Receive Control - RW */
 
+/* MRQC register bit definitions */
+#define IGC_MRQC_ENABLE_MQ		0x00000000
+#define IGC_MRQC_ENABLE_MASK		GENMASK(2, 0)
+#define IGC_MRQC_DEFAULT_QUEUE_MASK	GENMASK(5, 3)
+#define IGC_MRQC_DEFAULT_QUEUE_SHIFT	3
+
 /* Filtering Registers */
 #define IGC_ETQF(_n)		(0x05CB0 + (4 * (_n))) /* EType Queue Fltr */
 #define IGC_FHFT(_n)		(0x09000 + (256 * (_n))) /* Flexible Host Filter */
diff --git a/drivers/net/ethernet/intel/igc/igc_sysfs.c b/drivers/net/ethernet/intel/igc/igc_sysfs.c
new file mode 100644
index 000000000000..34d838e6a019
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_sysfs.c
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2024 Intel Corporation */
+
+#include <linux/device.h>
+#include <linux/kobject.h>
+#include <linux/module.h>
+#include <linux/netdevice.h>
+#include <linux/sysfs.h>
+#include <linux/types.h>
+
+#include "igc.h"
+#include "igc_regs.h"
+#include "igc_sysfs.h"
+
+/**
+ * igc_is_default_queue_supported - Checks if default Rx queue can be configured
+ * @mrqc: MRQC register content
+ *
+ * Checks if the current configuration of the device supports changing the
+ * default Rx queue configuration.
+ *
+ * Return: true if the default Rx queue can be configured, false otherwise.
+ */
+static bool igc_is_default_queue_supported(u32 mrqc)
+{
+	u32 mrqe = mrqc & IGC_MRQC_ENABLE_MASK;
+
+	/* The default Rx queue setting is applied only if Multiple Receive
+	 * Queues (MRQ) as defined by filters (2-tuple filters, L2 Ether-type
+	 * filters, SYN filter and flex filters) is enabled.
+	 */
+	if (mrqe != IGC_MRQC_ENABLE_MQ && mrqe != IGC_MRQC_ENABLE_RSS_MQ)
+		return false;
+
+	return true;
+}
+
+/**
+ * igc_get_default_rx_queue - Returns the index of default Rx queue
+ * @adapter: address of board private structure
+ *
+ * Return: index of the default Rx queue.
+ */
+static u32 igc_get_default_rx_queue(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 mrqc = rd32(IGC_MRQC);
+
+	if (!igc_is_default_queue_supported(mrqc)) {
+		netdev_warn(adapter->netdev,
+			    "MRQ disabled: default RxQ is ignored.\n");
+	}
+
+	return (mrqc & IGC_MRQC_DEFAULT_QUEUE_MASK) >>
+		IGC_MRQC_DEFAULT_QUEUE_SHIFT;
+}
+
+/**
+ * igc_set_default_rx_queue - Sets the default Rx queue
+ * @adapter: address of board private structure
+ * @queue: index of the queue to be set as default Rx queue
+ *
+ * Return: 0 on success, negative error code on failure.
+ */
+static int igc_set_default_rx_queue(struct igc_adapter *adapter, u32 queue)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 mrqc = rd32(IGC_MRQC);
+
+	if (!igc_is_default_queue_supported(mrqc)) {
+		netdev_err(adapter->netdev,
+			   "Default RxQ not supported. Please enable MRQ.\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (queue > adapter->rss_queues - 1) {
+		netdev_err(adapter->netdev,
+			   "Invalid default RxQ index %d. Valid range: 0-%u.\n",
+			   queue, adapter->rss_queues - 1);
+		return -EINVAL;
+	}
+
+	/* Set the default Rx queue */
+	mrqc = rd32(IGC_MRQC);
+	mrqc &= ~IGC_MRQC_DEFAULT_QUEUE_MASK;
+	mrqc |= queue << IGC_MRQC_DEFAULT_QUEUE_SHIFT;
+	wr32(IGC_MRQC, mrqc);
+
+	return 0;
+}
+
+static ssize_t default_rx_queue_show(struct device *dev,
+				     struct device_attribute *attr,
+				     char *buf)
+{
+	struct pci_dev *pdev = to_pci_dev(dev);
+	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	u32 default_rx_queue = igc_get_default_rx_queue(adapter);
+
+	return sysfs_emit(buf, "%d\n", default_rx_queue);
+}
+
+static ssize_t default_rx_queue_store(struct device *dev,
+				      struct device_attribute *attr,
+				      const char *buf, size_t count)
+{
+	struct pci_dev *pdev = to_pci_dev(dev);
+	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	u32 default_rx_queue;
+	int err;
+
+	err = kstrtou32(buf, 10, &default_rx_queue);
+	if (err) {
+		netdev_err(adapter->netdev,
+			   "Invalid default RxQ index. Valid range: 0-%u.\n",
+			   adapter->rss_queues - 1);
+		return err;
+	}
+
+	err = igc_set_default_rx_queue(adapter, default_rx_queue);
+	if (err < 0)
+		return -EINVAL;
+
+	return count;
+}
+
+static DEVICE_ATTR_RW(default_rx_queue);
+
+static struct attribute *attrs[] = {
+	&dev_attr_default_rx_queue.attr,
+	NULL,
+};
+
+static struct attribute_group attr_group = {
+	.attrs = attrs,
+};
+
+int igc_sysfs_init(struct igc_adapter *adapter)
+{
+	int err;
+
+	err = sysfs_create_group(&adapter->pdev->dev.kobj, &attr_group);
+	if (err) {
+		netdev_err(adapter->netdev,
+			   "Failed to create sysfs attribute group.\n");
+	}
+
+	return err;
+}
+
+void igc_sysfs_exit(struct igc_adapter *adapter)
+{
+	sysfs_remove_group(&adapter->pdev->dev.kobj, &attr_group);
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_sysfs.h b/drivers/net/ethernet/intel/igc/igc_sysfs.h
new file mode 100644
index 000000000000..b074ad4bc63a
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_sysfs.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2024 Intel Corporation */
+
+#ifndef _IGC_SYSFS_H_
+#define _IGC_SYSFS_H_
+
+int igc_sysfs_init(struct igc_adapter *adapter);
+void igc_sysfs_exit(struct igc_adapter *adapter);
+
+#endif /* _IGC_SYSFS_H_ */
-- 
2.34.1

