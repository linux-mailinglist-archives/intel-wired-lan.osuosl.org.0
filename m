Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD75927A69C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 06:40:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 003E5860A3;
	Mon, 28 Sep 2020 04:40:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M1JFMxMF9WeS; Mon, 28 Sep 2020 04:40:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0043D85C90;
	Mon, 28 Sep 2020 04:40:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DFCA1BF309
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 04:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 005B220355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 04:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5dEUhzQTk0UH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 04:40:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 88FD52034A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 04:40:40 +0000 (UTC)
Received: from pps.filterd (m0170395.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08S4VZCD014307
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=PjpbUsIvkkEsR7iBHvwZ6XcnYPvXCR37NLCWsXL5SQQ=;
 b=fIHaYrKqhfNj9/TTQZMY6IfPV22VtB4y1p+2ju3Q3THGbOmeKzjYxCw2zSmYYCRKUtD0
 4H2HeplUY/jSPA+8MP1nfHPUJSrF68Si8bYRYq/VXbt6qG1yzuJQoOh1yf3ianVz2I8p
 fMXHhIp+Rej1iGo3ScmYXpRDBcxXdVDyFjg8i+9DJE9KiW3Y000RwyJl1k+7PQ4eHS4+
 LmJ0HMyR8E0Uvnv4Q6P1Xx4nrsBhIL8I8oVPa+6KIxezUGcnzPyO30SguRL/O+RE7bzm
 jE70Vmz9lAQ5IpZaL4yWVLkZrcaIZzXcck1JdvRsb/j27U1+uN/hIzmcpEgRNCVeo1or SA== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 33t2antyt0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:39 -0400
Received: from pps.filterd (m0142693.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08S4Zia3092938
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:38 -0400
Received: from ausxippc101.us.dell.com (ausxippc101.us.dell.com
 [143.166.85.207])
 by mx0a-00154901.pphosted.com with ESMTP id 33u8s2g4xx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:38 -0400
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.77,312,1596517200"; d="scan'208";a="1434187426"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org
Date: Sun, 27 Sep 2020 23:40:24 -0500
Message-Id: <20200928044024.7595-4-mario.limonciello@dell.com>
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
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 phishscore=0
 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009280036
Subject: [Intel-wired-lan] [PATCH 3/3] e1000e: Add more Dell CML systems
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

These comet lake systems are not yet released, but have been validated
on pre-release hardware.

This is being submitted separately from released hardware in case of
a regression between pre-release and release hardware so this commit
can be reverted alone.

Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
---
 drivers/net/ethernet/intel/e1000e/param.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/param.c b/drivers/net/ethernet/intel/e1000e/param.c
index 58e6718c4f75..fe3157c8aa4a 100644
--- a/drivers/net/ethernet/intel/e1000e/param.c
+++ b/drivers/net/ethernet/intel/e1000e/param.c
@@ -273,6 +273,27 @@ static const struct dmi_system_id s0ix_supported_systems[] = {
 			DMI_MATCH(DMI_PRODUCT_SKU, "09C4"),
 		},
 	},
+	{
+		/* Dell Notebook 0x0A40 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "0A40"),
+		},
+	},
+	{
+		/* Dell Notebook 0x0A41 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "0A41"),
+		},
+	},
+	{
+		/* Dell Notebook 0x0A42 */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_SKU, "0A42"),
+		},
+	},
 	{ }
 };
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
