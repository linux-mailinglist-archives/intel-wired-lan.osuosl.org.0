Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9298027A699
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 06:40:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BECE86FF3;
	Mon, 28 Sep 2020 04:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ICpH9xRBoab4; Mon, 28 Sep 2020 04:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94FAC87017;
	Mon, 28 Sep 2020 04:40:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F4F51BF309
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 04:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2BAD786FFA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 04:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8v0Y8B5CDlAx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 04:40:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1407186FF6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 04:40:39 +0000 (UTC)
Received: from pps.filterd (m0170397.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08S4bLY5030131
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=YMZ/Tde5EraBtjSNL6Tu0vJ4tjgNeR6/0vpRNSL8rsc=;
 b=e7lIFP/qZI7edjIE+jnZ6dXsXdU2RyyhdX4fy2LDzhPW0wPZfNy+x/kfmSJCCnKob0h7
 LA8HHE33bOMLbuV3ffmkVXAuWc82EKm/WWMXcQugF3xS+FX0UW2ErRtDn87tQjyta27/
 cICLvkswzGDUpIh+OtzEcTQzVfaA4eKXyID6ltmzd6qt0CysNwUakWtjfqN/S2EW9TxT
 Nc54MNbWl+OuenIrI96kn1m3A3ylZGJ/09XI9jLTmMBFBwZQdrdrcrD+Z386Z4KjfpJN
 3GH9HqLUdMz7scVf5CGvlWO5oDyUh9VCr/jNYZOS06tjE5m/vaZ7F2BznWUZRurSHZnU 5g== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 33sxqu394e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:39 -0400
Received: from pps.filterd (m0142693.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08S4ZiSM092934
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:38 -0400
Received: from ausxippc101.us.dell.com (ausxippc101.us.dell.com
 [143.166.85.207])
 by mx0a-00154901.pphosted.com with ESMTP id 33u8s2g4xs-3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:38 -0400
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.77,312,1596517200"; d="scan'208";a="1434187424"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org
Date: Sun, 27 Sep 2020 23:40:22 -0500
Message-Id: <20200928044024.7595-2-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200928044024.7595-1-mario.limonciello@dell.com>
References: <20200928044024.7595-1-mario.limonciello@dell.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-28_03:2020-09-24,
 2020-09-28 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0
 impostorscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1015
 spamscore=0 lowpriorityscore=0 mlxscore=0 suspectscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009280037
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 mlxscore=0
 bulkscore=0 mlxlogscore=999 phishscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009280037
Subject: [Intel-wired-lan] [PATCH 1/3] e1000e: allow turning s0ix flows on
 for systems with ME
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
Cc: Perry.Yuan@dell.com, Yijun.Shen@dell.com, linux-kernel@vger.kernel.org,
 Mario Limonciello <mario.limonciello@dell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

S0ix for GBE flows are needed for allowing the system to get into deepest
power state, but these require coordination of components outside of
control of Linux kernel.  For systems that have confirmed to coordinate
this properly, allow turning on the s0ix flows at load time or runtime.

Fixes: e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
---
 .../device_drivers/ethernet/intel/e1000e.rst  |  23 ++++
 drivers/net/ethernet/intel/e1000e/e1000.h     |   7 ++
 drivers/net/ethernet/intel/e1000e/netdev.c    |  64 +++++-----
 drivers/net/ethernet/intel/e1000e/param.c     | 110 ++++++++++++++++++
 4 files changed, 166 insertions(+), 38 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst b/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst
index f49cd370e7bf..da029b703573 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/e1000e.rst
@@ -249,6 +249,29 @@ Debug
 
 This parameter adjusts the level of debug messages displayed in the system logs.
 
+EnableS0ix
+----------
+:Valid Range: 0, 1, 2
+:Default Value: 1 (Use Heuristics)
+
+   +-------+----------------+
+   | Value |    EnableS0ix  |
+   +=======+================+
+   |   0   |    Disabled    |
+   +-------+----------------+
+   |   1   | Use Heuristics |
+   +-------+----------------+
+   |   2   |    Enabled     |
+   +-------+----------------+
+
+Controls whether the e1000e driver will attempt s0ix flows.  S0ix flows require
+correct platform configuration. By default the e1000e driver will use some heuristics
+to decide whether to enable s0ix.  This parameter can be used to override heuristics.
+
+Additionally a sysfs file "enable_s0ix" will be present that can change the value at
+runtime.
+
+Note: This option is only effective on Cannon Point or later hardware.
 
 Additional Features and Configurations
 ======================================
diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index ba7a0f8f6937..32262fa7e085 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -436,6 +436,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca);
 #define FLAG2_DFLT_CRC_STRIPPING          BIT(12)
 #define FLAG2_CHECK_RX_HWTSTAMP           BIT(13)
 #define FLAG2_CHECK_SYSTIM_OVERFLOW       BIT(14)
+#define FLAG2_ENABLE_S0IX_FLOWS           BIT(15)
 
 #define E1000_RX_DESC_PS(R, i)	    \
 	(&(((union e1000_rx_desc_packet_split *)((R).desc))[i]))
@@ -462,6 +463,12 @@ enum latency_range {
 extern char e1000e_driver_name[];
 
 void e1000e_check_options(struct e1000_adapter *adapter);
+ssize_t enable_s0ix_store(struct device *dev,
+			  struct device_attribute *attr,
+			  const char *buf, size_t count);
+ssize_t enable_s0ix_show(struct device *dev,
+			 struct device_attribute *attr,
+			 char *buf);
 void e1000e_set_ethtool_ops(struct net_device *netdev);
 
 int e1000e_open(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 664e8ccc88d2..4359e809d684 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -103,44 +103,16 @@ static const struct e1000_reg_info e1000_reg_info_tbl[] = {
 	{0, NULL}
 };
 
-struct e1000e_me_supported {
-	u16 device_id;		/* supported device ID */
-};
+static DEVICE_ATTR_RW(enable_s0ix);
 
-static const struct e1000e_me_supported me_supported[] = {
-	{E1000_DEV_ID_PCH_LPT_I217_LM},
-	{E1000_DEV_ID_PCH_LPTLP_I218_LM},
-	{E1000_DEV_ID_PCH_I218_LM2},
-	{E1000_DEV_ID_PCH_I218_LM3},
-	{E1000_DEV_ID_PCH_SPT_I219_LM},
-	{E1000_DEV_ID_PCH_SPT_I219_LM2},
-	{E1000_DEV_ID_PCH_LBG_I219_LM3},
-	{E1000_DEV_ID_PCH_SPT_I219_LM4},
-	{E1000_DEV_ID_PCH_SPT_I219_LM5},
-	{E1000_DEV_ID_PCH_CNP_I219_LM6},
-	{E1000_DEV_ID_PCH_CNP_I219_LM7},
-	{E1000_DEV_ID_PCH_ICP_I219_LM8},
-	{E1000_DEV_ID_PCH_ICP_I219_LM9},
-	{E1000_DEV_ID_PCH_CMP_I219_LM10},
-	{E1000_DEV_ID_PCH_CMP_I219_LM11},
-	{E1000_DEV_ID_PCH_CMP_I219_LM12},
-	{E1000_DEV_ID_PCH_TGP_I219_LM13},
-	{E1000_DEV_ID_PCH_TGP_I219_LM14},
-	{E1000_DEV_ID_PCH_TGP_I219_LM15},
-	{0}
+static struct attribute *e1000e_attrs[] = {
+	&dev_attr_enable_s0ix.attr,
+	NULL,
 };
 
-static bool e1000e_check_me(u16 device_id)
-{
-	struct e1000e_me_supported *id;
-
-	for (id = (struct e1000e_me_supported *)me_supported;
-	     id->device_id; id++)
-		if (device_id == id->device_id)
-			return true;
-
-	return false;
-}
+static struct attribute_group e1000e_group = {
+	.attrs = e1000e_attrs,
+};
 
 /**
  * __ew32_prepare - prepare to write to MAC CSR register on certain parts
@@ -4218,7 +4190,7 @@ void e1000e_reset(struct e1000_adapter *adapter)
 
 /**
  * e1000e_trigger_lsc - trigger an LSC interrupt
- * @adapter: 
+ * @adapter:
  *
  * Fire a link status change interrupt to start the watchdog.
  **/
@@ -6949,7 +6921,7 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
 
 	/* Introduce S0ix implementation */
 	if (hw->mac.type >= e1000_pch_cnp &&
-	    !e1000e_check_me(hw->adapter->pdev->device))
+	    adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
 		e1000e_s0ix_entry_flow(adapter);
 
 	return rc;
@@ -6965,7 +6937,7 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
 
 	/* Introduce S0ix implementation */
 	if (hw->mac.type >= e1000_pch_cnp &&
-	    !e1000e_check_me(hw->adapter->pdev->device))
+	    adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
 		e1000e_s0ix_exit_flow(adapter);
 
 	rc = __e1000_resume(pdev);
@@ -7629,6 +7601,13 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (!(adapter->flags & FLAG_HAS_AMT))
 		e1000e_get_hw_control(adapter);
 
+	/* offer to turn on/off s0ix flows */
+	if (hw->mac.type >= e1000_pch_cnp) {
+		ret_val = sysfs_create_group(&pdev->dev.kobj, &e1000e_group);
+		if (ret_val)
+			goto err_sysfs;
+	}
+
 	strlcpy(netdev->name, "eth%d", sizeof(netdev->name));
 	err = register_netdev(netdev);
 	if (err)
@@ -7647,6 +7626,10 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	return 0;
 
 err_register:
+	if (hw->mac.type >= e1000_pch_cnp)
+		sysfs_remove_group(&pdev->dev.kobj, &e1000e_group);
+
+err_sysfs:
 	if (!(adapter->flags & FLAG_HAS_AMT))
 		e1000e_release_hw_control(adapter);
 err_eeprom:
@@ -7684,6 +7667,7 @@ static void e1000_remove(struct pci_dev *pdev)
 {
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
+	struct e1000_hw *hw = &adapter->hw;
 
 	e1000e_ptp_remove(adapter);
 
@@ -7708,6 +7692,10 @@ static void e1000_remove(struct pci_dev *pdev)
 		}
 	}
 
+	/* only allow turning on/off s0ix for cannon point and later */
+	if (hw->mac.type >= e1000_pch_cnp)
+		sysfs_remove_group(&pdev->dev.kobj, &e1000e_group);
+
 	unregister_netdev(netdev);
 
 	if (pci_dev_run_wake(pdev))
diff --git a/drivers/net/ethernet/intel/e1000e/param.c b/drivers/net/ethernet/intel/e1000e/param.c
index ebe121db4307..e66b222c824b 100644
--- a/drivers/net/ethernet/intel/e1000e/param.c
+++ b/drivers/net/ethernet/intel/e1000e/param.c
@@ -138,6 +138,20 @@ E1000_PARAM(WriteProtectNVM,
 E1000_PARAM(CrcStripping,
 	    "Enable CRC Stripping, disable if your BMC needs the CRC");
 
+/* Enable s0ix flows
+ *
+ * Valid Range: varies depending on hardware support
+ *
+ * disabled=0, heuristics=1, enabled=2
+ *
+ * Default Value: 1 (heuristics)
+ */
+E1000_PARAM(EnableS0ix,
+	    "Enable S0ix flows for the system");
+#define S0IX_FORCE_ON	2
+#define S0IX_HEURISTICS	1
+#define S0IX_FORCE_OFF	0
+
 struct e1000_option {
 	enum { enable_option, range_option, list_option } type;
 	const char *name;
@@ -160,6 +174,45 @@ struct e1000_option {
 	} arg;
 };
 
+struct e1000e_me_supported {
+	u16 device_id;		/* supported device ID */
+};
+
+static const struct e1000e_me_supported me_supported[] = {
+	{E1000_DEV_ID_PCH_LPT_I217_LM},
+	{E1000_DEV_ID_PCH_LPTLP_I218_LM},
+	{E1000_DEV_ID_PCH_I218_LM2},
+	{E1000_DEV_ID_PCH_I218_LM3},
+	{E1000_DEV_ID_PCH_SPT_I219_LM},
+	{E1000_DEV_ID_PCH_SPT_I219_LM2},
+	{E1000_DEV_ID_PCH_LBG_I219_LM3},
+	{E1000_DEV_ID_PCH_SPT_I219_LM4},
+	{E1000_DEV_ID_PCH_SPT_I219_LM5},
+	{E1000_DEV_ID_PCH_CNP_I219_LM6},
+	{E1000_DEV_ID_PCH_CNP_I219_LM7},
+	{E1000_DEV_ID_PCH_ICP_I219_LM8},
+	{E1000_DEV_ID_PCH_ICP_I219_LM9},
+	{E1000_DEV_ID_PCH_CMP_I219_LM10},
+	{E1000_DEV_ID_PCH_CMP_I219_LM11},
+	{E1000_DEV_ID_PCH_CMP_I219_LM12},
+	{E1000_DEV_ID_PCH_TGP_I219_LM13},
+	{E1000_DEV_ID_PCH_TGP_I219_LM14},
+	{E1000_DEV_ID_PCH_TGP_I219_LM15},
+	{0}
+};
+
+static bool e1000e_check_me(u16 device_id)
+{
+	struct e1000e_me_supported *id;
+
+	for (id = (struct e1000e_me_supported *)me_supported;
+	     id->device_id; id++)
+		if (device_id == id->device_id)
+			return true;
+
+	return false;
+}
+
 static int e1000_validate_option(unsigned int *value,
 				 const struct e1000_option *opt,
 				 struct e1000_adapter *adapter)
@@ -526,4 +579,61 @@ void e1000e_check_options(struct e1000_adapter *adapter)
 			}
 		}
 	}
+	/* Enable S0ix flows */
+	{
+		static const struct e1000_option opt = {
+			.type = range_option,
+			.name = "S0ix flows (Cannon point or later)",
+			.err  = "defaulting to heuristics",
+			.def  = S0IX_HEURISTICS,
+			.arg  = { .r = { .min = S0IX_FORCE_OFF,
+					 .max = S0IX_FORCE_ON } }
+		};
+		unsigned int enabled = opt.def;
+
+		if (num_EnableS0ix > bd) {
+			unsigned int s0ix = EnableS0ix[bd];
+
+			e1000_validate_option(&s0ix, &opt, adapter);
+			enabled = s0ix;
+		}
+
+		if (enabled == S0IX_HEURISTICS) {
+			/* default to off for ME configurations */
+			if (e1000e_check_me(hw->adapter->pdev->device))
+				enabled = S0IX_FORCE_OFF;
+		}
+
+		if (enabled > S0IX_FORCE_OFF)
+			adapter->flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
+	}
+}
+
+ssize_t enable_s0ix_store(struct device *dev,
+			  struct device_attribute *attr,
+			  const char *buf, size_t count)
+{
+	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
+	struct e1000_adapter *adapter = netdev_priv(netdev);
+	ssize_t ret;
+	bool enable_s0ix;
+
+	ret = kstrtobool(buf, &enable_s0ix);
+	e_info("s0ix flow set to %d\n", enable_s0ix);
+	if (enable_s0ix)
+		adapter->flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
+	else
+		adapter->flags2 &= ~FLAG2_ENABLE_S0IX_FLOWS;
+
+	return ret ? ret : count;
+}
+
+ssize_t enable_s0ix_show(struct device *dev,
+			 struct device_attribute *attr,
+			 char *buf)
+{
+	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
+	struct e1000_adapter *adapter = netdev_priv(netdev);
+
+	return sprintf(buf, "%d\n", (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS) > 0);
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
