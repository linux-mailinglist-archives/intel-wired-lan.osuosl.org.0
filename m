Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1341D2DA090
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 20:34:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C816886FA0;
	Mon, 14 Dec 2020 19:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QDp0P6V8a7nv; Mon, 14 Dec 2020 19:34:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8569186FB7;
	Mon, 14 Dec 2020 19:34:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C1F1B1BF969
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 19:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BB33E865CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 19:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53kr2NoHDBg1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 19:34:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9E3A68675D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 19:34:06 +0000 (UTC)
Received: from pps.filterd (m0170398.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BEJVRbn010378
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 14:34:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=xvmG8Q5rsxwPyDc6mnDal+BuO2euFZKiNZCYA/NPjwE=;
 b=LXb8x6RN+5pmCWe5NFYVKVib9qgQCOT2SIlfOBss0BEmEM/bxoIDJ3ypNFPHDiuHwx48
 L2q1zW68834lEvMSBtrYuWqWkUekV/+JWrrKAybQj+iMt+r6EfZmu96ZpUkeJUG1RJJd
 RuOxTbLNP1xLbM3W2I70jzQFTUmEiwlIvPNVQdPOHIttmMmc2E8iBWtA10XYpSth2tTA
 ucp4Al1d/T4A9YZlCSFw2b6ZddteBVwvVevVGxvvHAZZ4/UC/AzfCVygh6WnrTNlxqyt
 phhtAwXnSI9fq1eo9ETm2ZI0mwqJ5/3IgGuYDxPfS6W1v0HAHHKxBr1oNVPNU5243QsT yQ== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 35csydxkw0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 14:34:05 -0500
Received: from pps.filterd (m0089483.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BEJUJct002538
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 14:34:05 -0500
Received: from ausxippc110.us.dell.com (AUSXIPPC110.us.dell.com
 [143.166.85.200])
 by mx0b-00154901.pphosted.com with ESMTP id 35edpk0mdq-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 14:34:05 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,420,1599541200"; d="scan'208";a="1020795055"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Mon, 14 Dec 2020 13:29:35 -0600
Message-Id: <20201214192935.895174-5-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201214192935.895174-1-mario.limonciello@dell.com>
References: <20201214192935.895174-1-mario.limonciello@dell.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-14_10:2020-12-11,
 2020-12-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=678 adultscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012140129
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=834
 suspectscore=0
 bulkscore=0 phishscore=0 adultscore=0 malwarescore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012140129
Subject: [Intel-wired-lan] [PATCH v5 4/4] e1000e: Export S0ix flags to
 ethtool
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
Cc: Hans de Goede <hdegoede@redhat.com>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Mario Limonciello <mario.limonciello@dell.com>,
 linux-kernel@vger.kernel.org, anthony.wong@canonical.com, Yijun.Shen@dell.com,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This flag can be used by an end user to disable S0ix flows on a
buggy system or by an OEM for development purposes.

If you need this flag to be persisted across reboots, it's suggested
to use a udev rule to call adjust it until the kernel could have your
configuration in a disallow list.

Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
---
 drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
 drivers/net/ethernet/intel/e1000e/ethtool.c | 46 +++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  |  9 ++--
 3 files changed, 52 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index ba7a0f8f6937..5b2143f4b1f8 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -436,6 +436,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca);
 #define FLAG2_DFLT_CRC_STRIPPING          BIT(12)
 #define FLAG2_CHECK_RX_HWTSTAMP           BIT(13)
 #define FLAG2_CHECK_SYSTIM_OVERFLOW       BIT(14)
+#define FLAG2_ENABLE_S0IX_FLOWS           BIT(15)
 
 #define E1000_RX_DESC_PS(R, i)	    \
 	(&(((union e1000_rx_desc_packet_split *)((R).desc))[i]))
diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 03215b0aee4b..06442e6bef73 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -23,6 +23,13 @@ struct e1000_stats {
 	int stat_offset;
 };
 
+static const char e1000e_priv_flags_strings[][ETH_GSTRING_LEN] = {
+#define E1000E_PRIV_FLAGS_S0IX_ENABLED	BIT(0)
+	"s0ix-enabled",
+};
+
+#define E1000E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(e1000e_priv_flags_strings)
+
 #define E1000_STAT(str, m) { \
 		.stat_string = str, \
 		.type = E1000_STATS, \
@@ -1776,6 +1783,8 @@ static int e1000e_get_sset_count(struct net_device __always_unused *netdev,
 		return E1000_TEST_LEN;
 	case ETH_SS_STATS:
 		return E1000_STATS_LEN;
+	case ETH_SS_PRIV_FLAGS:
+		return E1000E_PRIV_FLAGS_STR_LEN;
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -2097,6 +2106,10 @@ static void e1000_get_strings(struct net_device __always_unused *netdev,
 			p += ETH_GSTRING_LEN;
 		}
 		break;
+	case ETH_SS_PRIV_FLAGS:
+		memcpy(data, e1000e_priv_flags_strings,
+		       E1000E_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
+		break;
 	}
 }
 
@@ -2305,6 +2318,37 @@ static int e1000e_get_ts_info(struct net_device *netdev,
 	return 0;
 }
 
+static u32 e1000e_get_priv_flags(struct net_device *netdev)
+{
+	struct e1000_adapter *adapter = netdev_priv(netdev);
+	u32 priv_flags = 0;
+
+	if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
+		priv_flags |= E1000E_PRIV_FLAGS_S0IX_ENABLED;
+
+	return priv_flags;
+}
+
+static int e1000e_set_priv_flags(struct net_device *netdev, u32 priv_flags)
+{
+	struct e1000_adapter *adapter = netdev_priv(netdev);
+	unsigned int flags2 = adapter->flags2;
+
+	flags2 &= ~FLAG2_ENABLE_S0IX_FLOWS;
+	if (priv_flags & E1000E_PRIV_FLAGS_S0IX_ENABLED) {
+		struct e1000_hw *hw = &adapter->hw;
+
+		if (hw->mac.type < e1000_pch_cnp)
+			return -EINVAL;
+		flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
+	}
+
+	if (flags2 != adapter->flags2)
+		adapter->flags2 = flags2;
+
+	return 0;
+}
+
 static const struct ethtool_ops e1000_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_RX_USECS,
 	.get_drvinfo		= e1000_get_drvinfo,
@@ -2336,6 +2380,8 @@ static const struct ethtool_ops e1000_ethtool_ops = {
 	.set_eee		= e1000e_set_eee,
 	.get_link_ksettings	= e1000_get_link_ksettings,
 	.set_link_ksettings	= e1000_set_link_ksettings,
+	.get_priv_flags		= e1000e_get_priv_flags,
+	.set_priv_flags		= e1000e_set_priv_flags,
 };
 
 void e1000e_set_ethtool_ops(struct net_device *netdev)
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index b9800ba2006c..e9b82c209c2d 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6923,7 +6923,6 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
 	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct pci_dev *pdev = to_pci_dev(dev);
-	struct e1000_hw *hw = &adapter->hw;
 	int rc;
 
 	e1000e_flush_lpic(pdev);
@@ -6935,7 +6934,7 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
 		e1000e_pm_thaw(dev);
 	} else {
 		/* Introduce S0ix implementation */
-		if (hw->mac.type >= e1000_pch_cnp)
+		if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
 			e1000e_s0ix_entry_flow(adapter);
 	}
 
@@ -6947,11 +6946,10 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
 	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct pci_dev *pdev = to_pci_dev(dev);
-	struct e1000_hw *hw = &adapter->hw;
 	int rc;
 
 	/* Introduce S0ix implementation */
-	if (hw->mac.type >= e1000_pch_cnp)
+	if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
 		e1000e_s0ix_exit_flow(adapter);
 
 	rc = __e1000_resume(pdev);
@@ -7615,6 +7613,9 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (!(adapter->flags & FLAG_HAS_AMT))
 		e1000e_get_hw_control(adapter);
 
+	if (hw->mac.type >= e1000_pch_cnp)
+		adapter->flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
+
 	strlcpy(netdev->name, "eth%d", sizeof(netdev->name));
 	err = register_netdev(netdev);
 	if (err)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
