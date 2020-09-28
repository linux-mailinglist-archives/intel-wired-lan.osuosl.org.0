Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B67027A7F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 08:54:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 166D186FC6;
	Mon, 28 Sep 2020 06:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MPnk1ut8eLBH; Mon, 28 Sep 2020 06:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6296286FA9;
	Mon, 28 Sep 2020 06:54:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE1C31BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 06:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D95BE84E97
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 06:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e-QzkUgl4vMl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 06:54:00 +0000 (UTC)
X-Greylist: delayed 02:13:22 by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D34F084C44
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 06:54:00 +0000 (UTC)
Received: from pps.filterd (m0170392.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08S4dsge018041
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=TxXwByPvQqrKog77tzisD1pIbKV2xgT5oAHWMFylCJI=;
 b=edsD95oVViugCRJO/xqtzNI0PqYy9B+OpSQc4imVZDG9Tzza3OFZo+zaXHg4T6ePScWF
 LpHeKEvlCyl/iIZemWgSDBM/z3S3PhS3dwAVHS/xpolhCxj2ID04f+W1CgJWpZK/e5J/
 PCcD+K2p2CBbsHcgVv2Igw4DKQLaeXRtWBr1NK3X+uxUT0rk9IUdQ5phARR2dPuSWNkS
 Oidz/hKiU8yfmG0RDoWphay8GcCCYp7IoD2k18fLZBWrSNQrzPe1KwwMss8Ktii1I/Gt
 2XuMUkW/2m+odVbdeVDA36/DNCl0vw8skrWDvAiHTa5IIT2eNNG0yAm+Y7Sqr4xOUtLi XA== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 33t0te33pp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:38 -0400
Received: from pps.filterd (m0142693.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08S4ZiSL092934
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:37 -0400
Received: from ausxippc101.us.dell.com (ausxippc101.us.dell.com
 [143.166.85.207])
 by mx0a-00154901.pphosted.com with ESMTP id 33u8s2g4xs-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:37 -0400
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.77,312,1596517200"; d="scan'208";a="1434187425"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org
Date: Sun, 27 Sep 2020 23:40:23 -0500
Message-Id: <20200928044024.7595-3-mario.limonciello@dell.com>
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
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999
 adultscore=0 bulkscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009280037
Subject: [Intel-wired-lan] [PATCH 2/3] e1000e: Add Dell's Comet Lake systems
 into s0ix heuristics
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

Dell's Comet Lake Latitude and Precision systems containing i219LM are
properly configured and should use the s0ix flows.

Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
---
 drivers/net/ethernet/intel/Kconfig        |  1 +
 drivers/net/ethernet/intel/e1000e/param.c | 80 ++++++++++++++++++++++-
 2 files changed, 80 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 5aa86318ed3e..280af47d74d2 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -58,6 +58,7 @@ config E1000
 config E1000E
 	tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
 	depends on PCI && (!SPARC32 || BROKEN)
+	depends on DMI
 	select CRC32
 	imply PTP_1588_CLOCK
 	help
diff --git a/drivers/net/ethernet/intel/e1000e/param.c b/drivers/net/ethernet/intel/e1000e/param.c
index e66b222c824b..58e6718c4f75 100644
--- a/drivers/net/ethernet/intel/e1000e/param.c
+++ b/drivers/net/ethernet/intel/e1000e/param.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 1999 - 2018 Intel Corporation. */
 
+#include <linux/dmi.h>
 #include <linux/netdevice.h>
 #include <linux/module.h>
 #include <linux/pci.h>
@@ -201,6 +202,80 @@ static const struct e1000e_me_supported me_supported[] = {
 	{0}
 };
 
+static const struct dmi_system_id s0ix_supported_systems[] = {
+	{
+		/* Dell Latitude 5310 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "099F"),
+		},
+	},
+	{
+		/* Dell Latitude 5410 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "09A0"),
+		},
+	},
+	{
+		/* Dell Latitude 5410 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "09C9"),
+		},
+	},
+	{
+		/* Dell Latitude 5510 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "09A1"),
+		},
+	},
+	{
+		/* Dell Precision 3550 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "09A2"),
+		},
+	},
+	{
+		/* Dell Latitude 5411 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "09C0"),
+		},
+	},
+	{
+		/* Dell Latitude 5511 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "09C1"),
+		},
+	},
+	{
+		/* Dell Precision 3551 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "09C2"),
+		},
+	},
+	{
+		/* Dell Precision 7550 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "09C3"),
+		},
+	},
+	{
+		/* Dell Precision 7750 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "09C4"),
+		},
+	},
+	{ }
+};
+
 static bool e1000e_check_me(u16 device_id)
 {
 	struct e1000e_me_supported *id;
@@ -599,8 +674,11 @@ void e1000e_check_options(struct e1000_adapter *adapter)
 		}
 
 		if (enabled == S0IX_HEURISTICS) {
+			/* check for allowlist of systems */
+			if (dmi_check_system(s0ix_supported_systems))
+				enabled = S0IX_FORCE_ON;
 			/* default to off for ME configurations */
-			if (e1000e_check_me(hw->adapter->pdev->device))
+			else if (e1000e_check_me(hw->adapter->pdev->device))
 				enabled = S0IX_FORCE_OFF;
 		}
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
