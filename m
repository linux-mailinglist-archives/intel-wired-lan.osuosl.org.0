Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B572CC1E4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 17:18:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFA4587966;
	Wed,  2 Dec 2020 16:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WwGReIqMohtr; Wed,  2 Dec 2020 16:18:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BF198796A;
	Wed,  2 Dec 2020 16:18:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 035151BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 16:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F109886B0E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 16:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OXjJh5E6uUaQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 16:18:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 86568870E1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 16:18:07 +0000 (UTC)
Received: from pps.filterd (m0170389.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B2G7LXo015542
 for <intel-wired-lan@lists.osuosl.org>; Wed, 2 Dec 2020 11:18:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=IyMWWnKQSyY4DTy0ZiGDx8F1IPhaoeAaUvuyrjPQq7I=;
 b=u7z7F0+G47B1rsYCXglam3xoeW7Xr2OpWnDAZInv1YxHgJK3s7csF+diO63impHQ3j+Q
 ed5KTiqH4zm/bLKpWt4Sr+kV9tBPugirByGRqsMkO/LxvTmWid8jXXz8BEaKNAlMru0o
 LhzOkN5T7LcKyuKGIQql0SrH1wNaGkzA0wNMyREE3EoAoFH7Rjv32Kz35AiyCu61Uj8w
 krH0cai/kWUCu6VgyHwV3UxNbvlqLX/TR3CuM7mnTqVdzYjpDw/EzLZvOr/lAfaiDq2N
 g0Bjp9h8/FJkCjTfJhkXkx/ZEPevPnqeMDNA9MKib4Sz9G0CJ5hTwhzs123fgg890M09 rg== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 353keq8mqy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Dec 2020 11:18:07 -0500
Received: from pps.filterd (m0089483.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B2G8Lig187446
 for <intel-wired-lan@lists.osuosl.org>; Wed, 2 Dec 2020 11:18:06 -0500
Received: from ausxippc110.us.dell.com (AUSXIPPC110.us.dell.com
 [143.166.85.200])
 by mx0b-00154901.pphosted.com with ESMTP id 355k81u0ks-5
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Dec 2020 11:18:06 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,387,1599541200"; d="scan'208";a="1013735380"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Dec 2020 10:17:47 -0600
Message-Id: <20201202161748.128938-5-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201202161748.128938-1-mario.limonciello@dell.com>
References: <20201202161748.128938-1-mario.limonciello@dell.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312, 18.0.737
 definitions=2020-12-02_08:2020-11-30,
 2020-12-02 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0
 bulkscore=0 priorityscore=1501 mlxlogscore=999 malwarescore=0
 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012020096
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 suspectscore=0
 malwarescore=0 adultscore=0 spamscore=0 mlxlogscore=999 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012020096
Subject: [Intel-wired-lan] [PATCH v2 4/5] e1000e: Add more Dell CML systems
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Mario Limonciello <mario.limonciello@dell.com>,
 linux-kernel@vger.kernel.org, Yijun Shen <yijun.shen@dell.com>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

These comet lake systems are not yet released, but have been validated
on pre-release hardware.

This is being submitted separately from released hardware in case of
a regression between pre-release and release hardware so this commit
can be reverted alone.

Tested-by: Yijun Shen <yijun.shen@dell.com>
Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
---
 drivers/net/ethernet/intel/e1000e/s0ix.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/s0ix.c b/drivers/net/ethernet/intel/e1000e/s0ix.c
index 74043e80c32f..0dd2e2702ebb 100644
--- a/drivers/net/ethernet/intel/e1000e/s0ix.c
+++ b/drivers/net/ethernet/intel/e1000e/s0ix.c
@@ -60,6 +60,9 @@ static bool e1000e_check_subsystem_allowlist(struct pci_dev *dev)
 		case 0x09c2: /* Precision 3551 */
 		case 0x09c3: /* Precision 7550 */
 		case 0x09c4: /* Precision 7750 */
+		case 0x0a40: /* Notebook 0x0a40 */
+		case 0x0a41: /* Notebook 0x0a41 */
+		case 0x0a42: /* Notebook 0x0a42 */
 			return true;
 		}
 	}
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
