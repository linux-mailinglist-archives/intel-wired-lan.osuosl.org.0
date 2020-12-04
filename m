Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473822CF54F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 21:09:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EBA6887DCC;
	Fri,  4 Dec 2020 20:09:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id koB+J5dScswD; Fri,  4 Dec 2020 20:09:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D8DE87DD9;
	Fri,  4 Dec 2020 20:09:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF8381BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BCB2C87297
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EpmSh7JjgMwL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 20:09:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C12FB845CB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:31 +0000 (UTC)
Received: from pps.filterd (m0170395.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4Jv5kV021529
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=Em2YhkrOBAbaK4LeEBHLRgC4Yg1dd17B4HORzBH6pd4=;
 b=CcOXpzm7zqowFXquMuox7UIXNgnRSQCgMURfw7i+3Thh4fEBjVbazlztHGlulljHrXOu
 MbLZIfpK2KDOnY9YJevSZo1wrRkM4en1hetHuSxGFpdkxC9tssB9alRu+LluJ1EN5Ela
 MaJ4VHnfz+MoQRE1Zh2DLYpLzaOxb5Prk0lj1hEebUkTfdi6HtPuD9XNJY4LYeur+12T
 yD1TUuc0ckwuVlr6W/eu+cTounlq9BBlNpnvOlebo82YPuQGxHDPtZ3jLOA6SjyhPyg5
 miK5uvRu8ruPAxskKMNS6nK0Z+2R2vjcJZ4rqGoVOG0C5uIIslIKYCw50Ywrjaur8At7 MA== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 353m3tm1kd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:30 -0500
Received: from pps.filterd (m0133268.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4Jr8eg069002
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:29 -0500
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0a-00154901.pphosted.com with ESMTP id 3571ucr9m7-4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:29 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,393,1599541200"; d="scan'208";a="573039892"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Dec 2020 14:09:17 -0600
Message-Id: <20201204200920.133780-5-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201204200920.133780-1-mario.limonciello@dell.com>
References: <20201204200920.133780-1-mario.limonciello@dell.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312, 18.0.737
 definitions=2020-12-04_09:2020-12-04,
 2020-12-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 adultscore=0 mlxscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 mlxlogscore=999
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012040114
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 mlxscore=0
 phishscore=0 spamscore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012040114
Subject: [Intel-wired-lan] [PATCH v3 4/7] e1000e: Add Dell's Comet Lake
 systems into S0ix heuristics
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Mario Limonciello <mario.limonciello@dell.com>,
 linux-kernel@vger.kernel.org, anthony.wong@canonical.com,
 Yijun Shen <yijun.shen@dell.com>, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dell's shipping Comet Lake Latitude and Precision systems containing i219LM are
properly configured and should use the S0ix flows.

Disabling s0ix entry and exit flows caused a regression in power consumption
over suspend to idle on these systems.

Fixes: e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
Tested-by: Yijun Shen <yijun.shen@dell.com>
Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
---
 drivers/net/ethernet/intel/e1000e/s0ix.c | 33 +++++++++++++++++++++---
 1 file changed, 29 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/s0ix.c b/drivers/net/ethernet/intel/e1000e/s0ix.c
index c3013edbd9e4..74043e80c32f 100644
--- a/drivers/net/ethernet/intel/e1000e/s0ix.c
+++ b/drivers/net/ethernet/intel/e1000e/s0ix.c
@@ -1,5 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright(c) 1999 - 2018 Intel Corporation. */
+/* Copyright(c) 1999 - 2018 Intel Corporation.
+ * Copyright(c) 2020 Dell Inc.
+ */
 
 #include <linux/netdevice.h>
 
@@ -44,6 +46,26 @@ static bool e1000e_check_me(u16 device_id)
 	return false;
 }
 
+static bool e1000e_check_subsystem_allowlist(struct pci_dev *dev)
+{
+	if (dev->subsystem_vendor == PCI_VENDOR_ID_DELL) {
+		switch (dev->subsystem_device) {
+		case 0x099f: /* Latitude 5310 */
+		case 0x09a0: /* Latitude 5410 */
+		case 0x09c9: /* Latitude 5410 */
+		case 0x09a1: /* Latitude 5510 */
+		case 0x09a2: /* Precision 3550 */
+		case 0x09c0: /* Latitude 5411 */
+		case 0x09c1: /* Latitude 5511 */
+		case 0x09c2: /* Precision 3551 */
+		case 0x09c3: /* Precision 7550 */
+		case 0x09c4: /* Precision 7750 */
+			return true;
+		}
+	}
+	return false;
+}
+
 void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
@@ -273,8 +295,11 @@ void e1000e_maybe_enable_s0ix(struct e1000_adapter *adapter)
 	/* require cannon point or later */
 	if (hw->mac.type < e1000_pch_cnp)
 		return;
-	/* turn off on ME configurations */
-	if (e1000e_check_me(pdev->device))
-		return;
+	/* check for allowlist of systems */
+	if (!e1000e_check_subsystem_allowlist(pdev)) {
+		/* turn off on ME configurations */
+		if (e1000e_check_me(pdev->device))
+			return;
+	}
 	adapter->flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
