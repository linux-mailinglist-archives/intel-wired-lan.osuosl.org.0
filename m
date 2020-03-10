Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C119180C46
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2020 00:23:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C8C1285F56;
	Tue, 10 Mar 2020 23:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YMt41zFOlOV1; Tue, 10 Mar 2020 23:23:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B11C685F60;
	Tue, 10 Mar 2020 23:23:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7AD11BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2020 23:23:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C2431877CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2020 23:23:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bNMKBhHkanLG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2020 23:23:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 34A328777D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2020 23:23:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 16:23:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="236217266"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by orsmga008.jf.intel.com with ESMTP; 10 Mar 2020 16:23:03 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Mar 2020 16:23:01 -0700
Message-Id: <20200310232301.2470904-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v2] net/intel: remove driver versions
 from Intel drivers
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
Cc: Alek Loktionov <aleksandr.loktionov@intel.com>,
 Kevin Liedtke <kevin.d.liedtke@intel.com>,
 Aaron Rowden <aaron.f.rowden@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As with other networking drivers, remove the unnecessary driver version
from the Intel drivers. The ethtool driver information and module version
will then report the kernel version instead.

For ixgbe, i40e and ice drivers, the driver passes the driver version to
the firmware to confirm that we are up and running.  So we now pass the
value of UTS_RELEASE to the firmware.

CC: Bruce Allan <bruce.w.allan@intel.com>
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>
CC: Alek Loktionov <aleksandr.loktionov@intel.com>
CC: Kevin Liedtke <kevin.d.liedtke@intel.com>
CC: Aaron Rowden <aaron.f.rowden@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
---
v2: fixed Co-developed-by: tag

 drivers/net/ethernet/intel/e100.c             |  6 +----
 drivers/net/ethernet/intel/e1000/e1000.h      |  1 -
 .../net/ethernet/intel/e1000/e1000_ethtool.c  |  2 --
 drivers/net/ethernet/intel/e1000/e1000_main.c |  5 +----
 drivers/net/ethernet/intel/e1000e/e1000.h     |  1 -
 drivers/net/ethernet/intel/e1000e/ethtool.c   |  2 --
 drivers/net/ethernet/intel/e1000e/netdev.c    |  8 +------
 drivers/net/ethernet/intel/fm10k/fm10k.h      |  1 -
 .../net/ethernet/intel/fm10k/fm10k_ethtool.c  |  2 --
 drivers/net/ethernet/intel/fm10k/fm10k_main.c |  5 +----
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 -
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  2 --
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 22 +++++--------------
 drivers/net/ethernet/intel/iavf/iavf.h        |  1 -
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  1 -
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 14 +-----------
 drivers/net/ethernet/intel/iavf/iavf_type.h   |  8 -------
 drivers/net/ethernet/intel/ice/ice.h          |  1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  1 -
 drivers/net/ethernet/intel/ice/ice_main.c     | 22 ++++++-------------
 drivers/net/ethernet/intel/igb/igb.h          |  1 -
 drivers/net/ethernet/intel/igb/igb_ethtool.c  |  1 -
 drivers/net/ethernet/intel/igb/igb_main.c     | 11 +---------
 drivers/net/ethernet/intel/igbvf/ethtool.c    |  2 --
 drivers/net/ethernet/intel/igbvf/igbvf.h      |  1 -
 drivers/net/ethernet/intel/igbvf/netdev.c     |  5 +----
 drivers/net/ethernet/intel/igc/igc.h          |  1 -
 drivers/net/ethernet/intel/igc/igc_ethtool.c  |  1 -
 drivers/net/ethernet/intel/igc/igc_main.c     |  7 +-----
 drivers/net/ethernet/intel/ixgb/ixgb.h        |  1 -
 .../net/ethernet/intel/ixgb/ixgb_ethtool.c    |  2 --
 drivers/net/ethernet/intel/ixgb/ixgb_main.c   |  6 +----
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 -
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  2 --
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c |  3 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 10 ++++-----
 drivers/net/ethernet/intel/ixgbevf/ethtool.c  |  2 --
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |  1 -
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  7 +-----
 39 files changed, 29 insertions(+), 142 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 1b8d015ebfb0..91c64f91a835 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -150,8 +150,6 @@
 
 
 #define DRV_NAME		"e100"
-#define DRV_EXT			"-NAPI"
-#define DRV_VERSION		"3.5.24-k2"DRV_EXT
 #define DRV_DESCRIPTION		"Intel(R) PRO/100 Network Driver"
 #define DRV_COPYRIGHT		"Copyright(c) 1999-2006 Intel Corporation"
 
@@ -165,7 +163,6 @@
 MODULE_DESCRIPTION(DRV_DESCRIPTION);
 MODULE_AUTHOR(DRV_COPYRIGHT);
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 MODULE_FIRMWARE(FIRMWARE_D101M);
 MODULE_FIRMWARE(FIRMWARE_D101S);
 MODULE_FIRMWARE(FIRMWARE_D102E);
@@ -2430,7 +2427,6 @@ static void e100_get_drvinfo(struct net_device *netdev,
 {
 	struct nic *nic = netdev_priv(netdev);
 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 	strlcpy(info->bus_info, pci_name(nic->pdev),
 		sizeof(info->bus_info));
 }
@@ -3167,7 +3163,7 @@ static struct pci_driver e100_driver = {
 static int __init e100_init_module(void)
 {
 	if (((1 << debug) - 1) & NETIF_MSG_DRV) {
-		pr_info("%s, %s\n", DRV_DESCRIPTION, DRV_VERSION);
+		pr_info("%s\n", DRV_DESCRIPTION);
 		pr_info("%s\n", DRV_COPYRIGHT);
 	}
 	return pci_register_driver(&e100_driver);
diff --git a/drivers/net/ethernet/intel/e1000/e1000.h b/drivers/net/ethernet/intel/e1000/e1000.h
index 7fad2f24dcad..4817eb13ca6f 100644
--- a/drivers/net/ethernet/intel/e1000/e1000.h
+++ b/drivers/net/ethernet/intel/e1000/e1000.h
@@ -330,7 +330,6 @@ struct net_device *e1000_get_hw_dev(struct e1000_hw *hw);
 	dev_err(&adapter->pdev->dev, format, ## arg)
 
 extern char e1000_driver_name[];
-extern const char e1000_driver_version[];
 
 int e1000_open(struct net_device *netdev);
 int e1000_close(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
index be56e631d693..303e2e47d189 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -533,8 +533,6 @@ static void e1000_get_drvinfo(struct net_device *netdev,
 
 	strlcpy(drvinfo->driver,  e1000_driver_name,
 		sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, e1000_driver_version,
-		sizeof(drvinfo->version));
 
 	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
 		sizeof(drvinfo->bus_info));
diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index ac5146d53c4c..804414e8db43 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -10,8 +10,6 @@
 
 char e1000_driver_name[] = "e1000";
 static char e1000_driver_string[] = "Intel(R) PRO/1000 Network Driver";
-#define DRV_VERSION "7.3.21-k8-NAPI"
-const char e1000_driver_version[] = DRV_VERSION;
 static const char e1000_copyright[] = "Copyright (c) 1999-2006 Intel Corporation.";
 
 /* e1000_pci_tbl - PCI Device ID Table
@@ -196,7 +194,6 @@ static struct pci_driver e1000_driver = {
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) PRO/1000 Network Driver");
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
@@ -223,7 +220,7 @@ struct net_device *e1000_get_hw_dev(struct e1000_hw *hw)
 static int __init e1000_init_module(void)
 {
 	int ret;
-	pr_info("%s - version %s\n", e1000_driver_string, e1000_driver_version);
+	pr_info("%s\n", e1000_driver_string);
 
 	pr_info("%s\n", e1000_copyright);
 
diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index 37a2314d3e6b..f1b1c8df00f3 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -460,7 +460,6 @@ enum latency_range {
 };
 
 extern char e1000e_driver_name[];
-extern const char e1000e_driver_version[];
 
 void e1000e_check_options(struct e1000_adapter *adapter);
 void e1000e_set_ethtool_ops(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 1d47e2503072..11de79e49661 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -633,8 +633,6 @@ static void e1000_get_drvinfo(struct net_device *netdev,
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 
 	strlcpy(drvinfo->driver, e1000e_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, e1000e_driver_version,
-		sizeof(drvinfo->version));
 
 	/* EEPROM image version # is reported as firmware version # for
 	 * PCI-E controllers
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 1e1625122596..115a1a6c55d7 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -28,11 +28,7 @@
 
 #include "e1000.h"
 
-#define DRV_EXTRAVERSION "-k"
-
-#define DRV_VERSION "3.2.6" DRV_EXTRAVERSION
 char e1000e_driver_name[] = "e1000e";
-const char e1000e_driver_version[] = DRV_VERSION;
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
@@ -7803,8 +7799,7 @@ static struct pci_driver e1000_driver = {
  **/
 static int __init e1000_init_module(void)
 {
-	pr_info("Intel(R) PRO/1000 Network Driver - %s\n",
-		e1000e_driver_version);
+	pr_info("Intel(R) PRO/1000 Network Driver\n");
 	pr_info("Copyright(c) 1999 - 2015 Intel Corporation.\n");
 
 	return pci_register_driver(&e1000_driver);
@@ -7826,6 +7821,5 @@ module_exit(e1000_exit_module);
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) PRO/1000 Network Driver");
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 
 /* netdev.c */
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k.h b/drivers/net/ethernet/intel/fm10k/fm10k.h
index 5b78362b82ac..f9be10a04dd6 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k.h
+++ b/drivers/net/ethernet/intel/fm10k/fm10k.h
@@ -476,7 +476,6 @@ struct fm10k_cb {
 
 /* main */
 extern char fm10k_driver_name[];
-extern const char fm10k_driver_version[];
 int fm10k_init_queueing_scheme(struct fm10k_intfc *interface);
 void fm10k_clear_queueing_scheme(struct fm10k_intfc *interface);
 __be16 fm10k_tx_encap_offload(struct sk_buff *skb);
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index 68edf55ac906..3cae18a3bcf0 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -449,8 +449,6 @@ static void fm10k_get_drvinfo(struct net_device *dev,
 
 	strncpy(info->driver, fm10k_driver_name,
 		sizeof(info->driver) - 1);
-	strncpy(info->version, fm10k_driver_version,
-		sizeof(info->version) - 1);
 	strncpy(info->bus_info, pci_name(interface->pdev),
 		sizeof(info->bus_info) - 1);
 }
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
index 17738b0a9873..05e9bdb5f4aa 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
@@ -11,9 +11,7 @@
 
 #include "fm10k.h"
 
-#define DRV_VERSION	"0.27.1-k"
 #define DRV_SUMMARY	"Intel(R) Ethernet Switch Host Interface Driver"
-const char fm10k_driver_version[] = DRV_VERSION;
 char fm10k_driver_name[] = "fm10k";
 static const char fm10k_driver_string[] = DRV_SUMMARY;
 static const char fm10k_copyright[] =
@@ -22,7 +20,6 @@ static const char fm10k_copyright[] =
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 
 /* single workqueue for entire fm10k driver */
 struct workqueue_struct *fm10k_workqueue;
@@ -35,7 +32,7 @@ struct workqueue_struct *fm10k_workqueue;
  **/
 static int __init fm10k_init_module(void)
 {
-	pr_info("%s - version %s\n", fm10k_driver_string, fm10k_driver_version);
+	pr_info("%s\n", fm10k_driver_string);
 	pr_info("%s\n", fm10k_copyright);
 
 	/* create driver workqueue */
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index e8a42415531a..6bea849410f7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -972,7 +972,6 @@ static inline void i40e_write_fd_input_set(struct i40e_pf *pf,
 int i40e_up(struct i40e_vsi *vsi);
 void i40e_down(struct i40e_vsi *vsi);
 extern const char i40e_driver_name[];
-extern const char i40e_driver_version_str[];
 void i40e_do_reset_safe(struct i40e_pf *pf, u32 reset_flags);
 void i40e_do_reset(struct i40e_pf *pf, u32 reset_flags, bool lock_acquired);
 int i40e_config_rss(struct i40e_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 317f3f1458db..0ed4e00a9009 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -1893,8 +1893,6 @@ static void i40e_get_drvinfo(struct net_device *netdev,
 	struct i40e_pf *pf = vsi->back;
 
 	strlcpy(drvinfo->driver, i40e_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, i40e_driver_version_str,
-		sizeof(drvinfo->version));
 	strlcpy(drvinfo->fw_version, i40e_nvm_version_str(&pf->hw),
 		sizeof(drvinfo->fw_version));
 	strlcpy(drvinfo->bus_info, pci_name(pf->pdev),
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 942d86219fc8..7c5651cd50ea 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5,6 +5,7 @@
 #include <linux/of_net.h>
 #include <linux/pci.h>
 #include <linux/bpf.h>
+#include <linux/vermagic.h>
 
 /* Local includes */
 #include "i40e.h"
@@ -23,15 +24,6 @@ const char i40e_driver_name[] = "i40e";
 static const char i40e_driver_string[] =
 			"Intel(R) Ethernet Connection XL710 Network Driver";
 
-#define DRV_KERN "-k"
-
-#define DRV_VERSION_MAJOR 2
-#define DRV_VERSION_MINOR 8
-#define DRV_VERSION_BUILD 20
-#define DRV_VERSION __stringify(DRV_VERSION_MAJOR) "." \
-	     __stringify(DRV_VERSION_MINOR) "." \
-	     __stringify(DRV_VERSION_BUILD)    DRV_KERN
-const char i40e_driver_version_str[] = DRV_VERSION;
 static const char i40e_copyright[] = "Copyright (c) 2013 - 2019 Intel Corporation.";
 
 /* a bit of forward declarations */
@@ -101,7 +93,6 @@ MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all), Debug mask (0x8XXXXXXX
 MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
 MODULE_DESCRIPTION("Intel(R) Ethernet Connection XL710 Network Driver");
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 
 static struct workqueue_struct *i40e_wq;
 
@@ -9840,11 +9831,11 @@ static void i40e_send_version(struct i40e_pf *pf)
 {
 	struct i40e_driver_version dv;
 
-	dv.major_version = DRV_VERSION_MAJOR;
-	dv.minor_version = DRV_VERSION_MINOR;
-	dv.build_version = DRV_VERSION_BUILD;
+	dv.major_version = 0xff;
+	dv.minor_version = 0xff;
+	dv.build_version = 0xff;
 	dv.subbuild_version = 0;
-	strlcpy(dv.driver_string, DRV_VERSION, sizeof(dv.driver_string));
+	strlcpy(dv.driver_string, UTS_RELEASE, sizeof(dv.driver_string));
 	i40e_aq_send_driver_version(&pf->hw, &dv, NULL);
 }
 
@@ -15771,8 +15762,7 @@ static struct pci_driver i40e_driver = {
  **/
 static int __init i40e_init_module(void)
 {
-	pr_info("%s: %s - version %s\n", i40e_driver_name,
-		i40e_driver_string, i40e_driver_version_str);
+	pr_info("%s: %s\n", i40e_driver_name, i40e_driver_string);
 	pr_info("%s: %s\n", i40e_driver_name, i40e_copyright);
 
 	/* There is no need to throttle the number of active tasks because
diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index bcd11b4b29df..563da1f95b67 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -357,7 +357,6 @@ struct iavf_device {
 
 /* needed by iavf_ethtool.c */
 extern char iavf_driver_name[];
-extern const char iavf_driver_version[];
 extern struct workqueue_struct *iavf_wq;
 
 int iavf_up(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index f807e2c7597f..4064c84e5ed7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -560,7 +560,6 @@ static void iavf_get_drvinfo(struct net_device *netdev,
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
 	strlcpy(drvinfo->driver, iavf_driver_name, 32);
-	strlcpy(drvinfo->version, iavf_driver_version, 32);
 	strlcpy(drvinfo->fw_version, "N/A", 4);
 	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev), 32);
 	drvinfo->n_priv_flags = IAVF_PRIV_FLAGS_STR_LEN;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 2050649848ba..6d0174b88954 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -21,16 +21,6 @@ char iavf_driver_name[] = "iavf";
 static const char iavf_driver_string[] =
 	"Intel(R) Ethernet Adaptive Virtual Function Network Driver";
 
-#define DRV_KERN "-k"
-
-#define DRV_VERSION_MAJOR 3
-#define DRV_VERSION_MINOR 2
-#define DRV_VERSION_BUILD 3
-#define DRV_VERSION __stringify(DRV_VERSION_MAJOR) "." \
-	     __stringify(DRV_VERSION_MINOR) "." \
-	     __stringify(DRV_VERSION_BUILD) \
-	     DRV_KERN
-const char iavf_driver_version[] = DRV_VERSION;
 static const char iavf_copyright[] =
 	"Copyright (c) 2013 - 2018 Intel Corporation.";
 
@@ -57,7 +47,6 @@ MODULE_ALIAS("i40evf");
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) Ethernet Adaptive Virtual Function Network Driver");
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 
 static const struct net_device_ops iavf_netdev_ops;
 struct workqueue_struct *iavf_wq;
@@ -3967,8 +3956,7 @@ static int __init iavf_init_module(void)
 {
 	int ret;
 
-	pr_info("iavf: %s - version %s\n", iavf_driver_string,
-		iavf_driver_version);
+	pr_info("iavf: %s\n", iavf_driver_string);
 
 	pr_info("%s\n", iavf_copyright);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index 7190a40c540c..de9fda78b43a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -192,14 +192,6 @@ struct iavf_hw {
 	char err_str[16];
 };
 
-struct iavf_driver_version {
-	u8 major_version;
-	u8 minor_version;
-	u8 build_version;
-	u8 subbuild_version;
-	u8 driver_string[32];
-};
-
 /* RX Descriptors */
 union iavf_16byte_rx_desc {
 	struct {
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f237df923ea1..fecf3e5c7f87 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -53,7 +53,6 @@
 #include "ice_sriov.h"
 #include "ice_xsk.h"
 
-extern const char ice_drv_ver[];
 #define ICE_BAR0		0
 #define ICE_REQ_DESC_MULTIPLE	32
 #define ICE_MIN_NUM_DESC	64
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index e3d148f12aac..4c1d28279572 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -174,7 +174,6 @@ ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 	u16 oem_build;
 
 	strscpy(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));
-	strscpy(drvinfo->version, ice_drv_ver, sizeof(drvinfo->version));
 
 	/* Display NVM version (from which the firmware version can be
 	 * determined) which contains more pertinent information.
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5e99b100fcb3..d6cc0f0afc89 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5,21 +5,14 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
+#include <linux/vermagic.h>
 #include "ice.h"
 #include "ice_base.h"
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 #include "ice_dcb_nl.h"
 
-#define DRV_VERSION_MAJOR 0
-#define DRV_VERSION_MINOR 8
-#define DRV_VERSION_BUILD 2
-
-#define DRV_VERSION	__stringify(DRV_VERSION_MAJOR) "." \
-			__stringify(DRV_VERSION_MINOR) "." \
-			__stringify(DRV_VERSION_BUILD) "-k"
 #define DRV_SUMMARY	"Intel(R) Ethernet Connection E800 Series Linux Driver"
-const char ice_drv_ver[] = DRV_VERSION;
 static const char ice_driver_string[] = DRV_SUMMARY;
 static const char ice_copyright[] = "Copyright (c) 2018, Intel Corporation.";
 
@@ -30,7 +23,6 @@ static const char ice_copyright[] = "Copyright (c) 2018, Intel Corporation.";
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 MODULE_FIRMWARE(ICE_DDP_PKG_FILE);
 
 static int debug = -1;
@@ -3116,11 +3108,11 @@ static enum ice_status ice_send_version(struct ice_pf *pf)
 {
 	struct ice_driver_ver dv;
 
-	dv.major_ver = DRV_VERSION_MAJOR;
-	dv.minor_ver = DRV_VERSION_MINOR;
-	dv.build_ver = DRV_VERSION_BUILD;
+	dv.major_ver = 0xff;
+	dv.minor_ver = 0xff;
+	dv.build_ver = 0xff;
 	dv.subbuild_ver = 0;
-	strscpy((char *)dv.driver_string, DRV_VERSION,
+	strscpy((char *)dv.driver_string, UTS_RELEASE,
 		sizeof(dv.driver_string));
 	return ice_aq_send_driver_ver(&pf->hw, &dv, NULL);
 }
@@ -3359,7 +3351,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	err = ice_send_version(pf);
 	if (err) {
 		dev_err(dev, "probe failed sending driver version %s. error: %d\n",
-			ice_drv_ver, err);
+			UTS_RELEASE, err);
 		goto err_alloc_sw_unroll;
 	}
 
@@ -3684,7 +3676,7 @@ static int __init ice_module_init(void)
 {
 	int status;
 
-	pr_info("%s - version %s\n", ice_driver_string, ice_drv_ver);
+	pr_info("%s\n", ice_driver_string);
 	pr_info("%s\n", ice_copyright);
 
 	ice_wq = alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 0c9282e2aaec..2f015b60a995 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -642,7 +642,6 @@ enum igb_boards {
 };
 
 extern char igb_driver_name[];
-extern char igb_driver_version[];
 
 int igb_open(struct net_device *netdev);
 int igb_close(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index f96ffa83efbe..168d2c71ec49 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -850,7 +850,6 @@ static void igb_get_drvinfo(struct net_device *netdev,
 	struct igb_adapter *adapter = netdev_priv(netdev);
 
 	strlcpy(drvinfo->driver,  igb_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, igb_driver_version, sizeof(drvinfo->version));
 
 	/* EEPROM image version # is reported as firmware version # for
 	 * 82575 controllers
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 661255500d66..c1408664c2e2 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -38,12 +38,6 @@
 #include <linux/i2c.h>
 #include "igb.h"
 
-#define MAJ 5
-#define MIN 6
-#define BUILD 0
-#define DRV_VERSION __stringify(MAJ) "." __stringify(MIN) "." \
-__stringify(BUILD) "-k"
-
 enum queue_mode {
 	QUEUE_MODE_STRICT_PRIORITY,
 	QUEUE_MODE_STREAM_RESERVATION,
@@ -55,7 +49,6 @@ enum tx_queue_prio {
 };
 
 char igb_driver_name[] = "igb";
-char igb_driver_version[] = DRV_VERSION;
 static const char igb_driver_string[] =
 				"Intel(R) Gigabit Ethernet Network Driver";
 static const char igb_copyright[] =
@@ -240,7 +233,6 @@ static struct pci_driver igb_driver = {
 MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
 MODULE_DESCRIPTION("Intel(R) Gigabit Ethernet Network Driver");
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
@@ -666,8 +658,7 @@ static int __init igb_init_module(void)
 {
 	int ret;
 
-	pr_info("%s - version %s\n",
-	       igb_driver_string, igb_driver_version);
+	pr_info("%s\n", igb_driver_string);
 	pr_info("%s\n", igb_copyright);
 
 #ifdef CONFIG_IGB_DCA
diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c b/drivers/net/ethernet/intel/igbvf/ethtool.c
index 3ae358b35227..47fc5bb92370 100644
--- a/drivers/net/ethernet/intel/igbvf/ethtool.c
+++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
@@ -170,8 +170,6 @@ static void igbvf_get_drvinfo(struct net_device *netdev,
 	struct igbvf_adapter *adapter = netdev_priv(netdev);
 
 	strlcpy(drvinfo->driver,  igbvf_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, igbvf_driver_version,
-		sizeof(drvinfo->version));
 	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
 		sizeof(drvinfo->bus_info));
 }
diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h b/drivers/net/ethernet/intel/igbvf/igbvf.h
index eee26a3be90b..975eb47ee04d 100644
--- a/drivers/net/ethernet/intel/igbvf/igbvf.h
+++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
@@ -281,7 +281,6 @@ enum igbvf_state_t {
 };
 
 extern char igbvf_driver_name[];
-extern const char igbvf_driver_version[];
 
 void igbvf_check_options(struct igbvf_adapter *);
 void igbvf_set_ethtool_ops(struct net_device *);
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 5b1800c3ba82..07740654df5c 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -24,9 +24,7 @@
 
 #include "igbvf.h"
 
-#define DRV_VERSION "2.4.0-k"
 char igbvf_driver_name[] = "igbvf";
-const char igbvf_driver_version[] = DRV_VERSION;
 static const char igbvf_driver_string[] =
 		  "Intel(R) Gigabit Virtual Function Network Driver";
 static const char igbvf_copyright[] =
@@ -2987,7 +2985,7 @@ static int __init igbvf_init_module(void)
 {
 	int ret;
 
-	pr_info("%s - version %s\n", igbvf_driver_string, igbvf_driver_version);
+	pr_info("%s\n", igbvf_driver_string);
 	pr_info("%s\n", igbvf_copyright);
 
 	ret = pci_register_driver(&igbvf_driver);
@@ -3011,6 +3009,5 @@ module_exit(igbvf_exit_module);
 MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
 MODULE_DESCRIPTION("Intel(R) Gigabit Virtual Function Network Driver");
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 
 /* netdev.c */
diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 4823b8ead547..bd324e15775f 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -238,7 +238,6 @@ void igc_rings_dump(struct igc_adapter *adapter);
 void igc_regs_dump(struct igc_adapter *adapter);
 
 extern char igc_driver_name[];
-extern char igc_driver_version[];
 
 #define IGC_REGS_LEN			740
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 7e4ad4e9f8ad..824b1a973429 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -129,7 +129,6 @@ static void igc_get_drvinfo(struct net_device *netdev,
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
 	strlcpy(drvinfo->driver,  igc_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, igc_driver_version, sizeof(drvinfo->version));
 
 	/* add fw_version here */
 	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 9ffaabfaa93a..78549911ac84 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -17,7 +17,6 @@
 #include "igc_hw.h"
 #include "igc_tsn.h"
 
-#define DRV_VERSION	"0.0.1-k"
 #define DRV_SUMMARY	"Intel(R) 2.5G Ethernet Linux Driver"
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK)
@@ -27,12 +26,10 @@ static int debug = -1;
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 module_param(debug, int, 0);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
 char igc_driver_name[] = "igc";
-char igc_driver_version[] = DRV_VERSION;
 static const char igc_driver_string[] = DRV_SUMMARY;
 static const char igc_copyright[] =
 	"Copyright(c) 2018 Intel Corporation.";
@@ -5444,9 +5441,7 @@ static int __init igc_init_module(void)
 {
 	int ret;
 
-	pr_info("%s - version %s\n",
-		igc_driver_string, igc_driver_version);
-
+	pr_info("%s\n", igc_driver_string);
 	pr_info("%s\n", igc_copyright);
 
 	ret = pci_register_driver(&igc_driver);
diff --git a/drivers/net/ethernet/intel/ixgb/ixgb.h b/drivers/net/ethernet/intel/ixgb/ixgb.h
index 681d44cc9784..81ac39576803 100644
--- a/drivers/net/ethernet/intel/ixgb/ixgb.h
+++ b/drivers/net/ethernet/intel/ixgb/ixgb.h
@@ -163,7 +163,6 @@ enum ixgb_state_t {
 void ixgb_check_options(struct ixgb_adapter *adapter);
 void ixgb_set_ethtool_ops(struct net_device *netdev);
 extern char ixgb_driver_name[];
-extern const char ixgb_driver_version[];
 
 void ixgb_set_speed_duplex(struct net_device *netdev);
 
diff --git a/drivers/net/ethernet/intel/ixgb/ixgb_ethtool.c b/drivers/net/ethernet/intel/ixgb/ixgb_ethtool.c
index c65eb1afc8fb..582099a5ad41 100644
--- a/drivers/net/ethernet/intel/ixgb/ixgb_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgb/ixgb_ethtool.c
@@ -458,8 +458,6 @@ ixgb_get_drvinfo(struct net_device *netdev,
 
 	strlcpy(drvinfo->driver,  ixgb_driver_name,
 		sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, ixgb_driver_version,
-		sizeof(drvinfo->version));
 	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
 		sizeof(drvinfo->bus_info));
 }
diff --git a/drivers/net/ethernet/intel/ixgb/ixgb_main.c b/drivers/net/ethernet/intel/ixgb/ixgb_main.c
index b64e91ea3465..46829cfd54df 100644
--- a/drivers/net/ethernet/intel/ixgb/ixgb_main.c
+++ b/drivers/net/ethernet/intel/ixgb/ixgb_main.c
@@ -9,9 +9,6 @@
 char ixgb_driver_name[] = "ixgb";
 static char ixgb_driver_string[] = "Intel(R) PRO/10GbE Network Driver";
 
-#define DRIVERNAPI "-NAPI"
-#define DRV_VERSION "1.0.135-k2" DRIVERNAPI
-const char ixgb_driver_version[] = DRV_VERSION;
 static const char ixgb_copyright[] = "Copyright (c) 1999-2008 Intel Corporation.";
 
 #define IXGB_CB_LENGTH 256
@@ -103,7 +100,6 @@ static struct pci_driver ixgb_driver = {
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) PRO/10GbE Network Driver");
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
@@ -120,7 +116,7 @@ MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 static int __init
 ixgb_init_module(void)
 {
-	pr_info("%s - version %s\n", ixgb_driver_string, ixgb_driver_version);
+	pr_info("%s\n", ixgb_driver_string);
 	pr_info("%s\n", ixgb_copyright);
 
 	return pci_register_driver(&ixgb_driver);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 2833e4f041ce..a229be4d75e8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -847,7 +847,6 @@ extern const struct dcbnl_rtnl_ops ixgbe_dcbnl_ops;
 #endif
 
 extern char ixgbe_driver_name[];
-extern const char ixgbe_driver_version[];
 #ifdef IXGBE_FCOE
 extern char ixgbe_default_device_descr[];
 #endif /* IXGBE_FCOE */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 7c52ae8ac005..9e1ff76de3ba 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1004,8 +1004,6 @@ static void ixgbe_get_drvinfo(struct net_device *netdev,
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 
 	strlcpy(drvinfo->driver, ixgbe_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, ixgbe_driver_version,
-		sizeof(drvinfo->version));
 
 	strlcpy(drvinfo->fw_version, adapter->eeprom_id,
 		sizeof(drvinfo->fw_version));
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
index ec7a11d13fdc..d278751505a1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
@@ -5,6 +5,7 @@
 #include <linux/if_ether.h>
 #include <linux/gfp.h>
 #include <linux/if_vlan.h>
+#include <linux/vermagic.h>
 #include <scsi/scsi_cmnd.h>
 #include <scsi/scsi_device.h>
 #include <scsi/fc/fc_fs.h>
@@ -1001,7 +1002,7 @@ int ixgbe_fcoe_get_hbainfo(struct net_device *netdev,
 		 sizeof(info->driver_version),
 		 "%s v%s",
 		 ixgbe_driver_name,
-		 ixgbe_driver_version);
+		 UTS_RELEASE);
 	/* Firmware Version */
 	strlcpy(info->firmware_version, adapter->eeprom_id,
 		sizeof(info->firmware_version));
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index ea6834bae04c..cd684d4aec79 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -28,6 +28,7 @@
 #include <linux/bpf_trace.h>
 #include <linux/atomic.h>
 #include <linux/numa.h>
+#include <linux/vermagic.h>
 #include <scsi/fc/fc_fcoe.h>
 #include <net/udp_tunnel.h>
 #include <net/pkt_cls.h>
@@ -56,8 +57,6 @@ char ixgbe_default_device_descr[] =
 static char ixgbe_default_device_descr[] =
 			      "Intel(R) 10 Gigabit Network Connection";
 #endif
-#define DRV_VERSION "5.1.0-k"
-const char ixgbe_driver_version[] = DRV_VERSION;
 static const char ixgbe_copyright[] =
 				"Copyright (c) 1999-2016 Intel Corporation.";
 
@@ -165,7 +164,6 @@ MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) 10 Gigabit PCI Express Network Driver");
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 
 static struct workqueue_struct *ixgbe_wq;
 
@@ -11160,8 +11158,8 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	 */
 	if (hw->mac.ops.set_fw_drv_ver)
 		hw->mac.ops.set_fw_drv_ver(hw, 0xFF, 0xFF, 0xFF, 0xFF,
-					   sizeof(ixgbe_driver_version) - 1,
-					   ixgbe_driver_version);
+					   sizeof(UTS_RELEASE) - 1,
+					   UTS_RELEASE);
 
 	/* add san mac addr to netdev */
 	ixgbe_add_sanmac_netdev(netdev);
@@ -11518,7 +11516,7 @@ static struct pci_driver ixgbe_driver = {
 static int __init ixgbe_init_module(void)
 {
 	int ret;
-	pr_info("%s - version %s\n", ixgbe_driver_string, ixgbe_driver_version);
+	pr_info("%s\n", ixgbe_driver_string);
 	pr_info("%s\n", ixgbe_copyright);
 
 	ixgbe_wq = create_singlethread_workqueue(ixgbe_driver_name);
diff --git a/drivers/net/ethernet/intel/ixgbevf/ethtool.c b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
index f7f309c96fa8..89ed381f043e 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
@@ -218,8 +218,6 @@ static void ixgbevf_get_drvinfo(struct net_device *netdev,
 	struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 
 	strlcpy(drvinfo->driver, ixgbevf_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, ixgbevf_driver_version,
-		sizeof(drvinfo->version));
 	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
 		sizeof(drvinfo->bus_info));
 
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index ecab686574b6..a0e325774819 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -440,7 +440,6 @@ extern const struct ixgbe_mbx_operations ixgbevf_hv_mbx_ops;
 
 /* needed by ethtool.c */
 extern const char ixgbevf_driver_name[];
-extern const char ixgbevf_driver_version[];
 
 int ixgbevf_open(struct net_device *netdev);
 int ixgbevf_close(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 4622c4ea2e46..5ad533bf3d34 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -38,8 +38,6 @@ const char ixgbevf_driver_name[] = "ixgbevf";
 static const char ixgbevf_driver_string[] =
 	"Intel(R) 10 Gigabit PCI Express Virtual Function Network Driver";
 
-#define DRV_VERSION "4.1.0-k"
-const char ixgbevf_driver_version[] = DRV_VERSION;
 static char ixgbevf_copyright[] =
 	"Copyright (c) 2009 - 2018 Intel Corporation.";
 
@@ -81,7 +79,6 @@ MODULE_DEVICE_TABLE(pci, ixgbevf_pci_tbl);
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) 10 Gigabit Virtual Function Network Driver");
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
@@ -4893,9 +4890,7 @@ static struct pci_driver ixgbevf_driver = {
  **/
 static int __init ixgbevf_init_module(void)
 {
-	pr_info("%s - version %s\n", ixgbevf_driver_string,
-		ixgbevf_driver_version);
-
+	pr_info("%s\n", ixgbevf_driver_string);
 	pr_info("%s\n", ixgbevf_copyright);
 	ixgbevf_wq = create_singlethread_workqueue(ixgbevf_driver_name);
 	if (!ixgbevf_wq) {
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

