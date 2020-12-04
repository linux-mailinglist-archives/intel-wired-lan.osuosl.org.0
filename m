Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 305242CF54E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 21:09:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DEBD087220;
	Fri,  4 Dec 2020 20:09:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mRr_nfNUtRCg; Fri,  4 Dec 2020 20:09:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 624BC8738B;
	Fri,  4 Dec 2020 20:09:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B14141BF9CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 96B142E34D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9VBpA4Mn3zE6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 20:09:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 4A3382E2FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:31 +0000 (UTC)
Received: from pps.filterd (m0170398.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4Jt3x8029490
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=AHnb657ZVkd3rGKeu3xGSOupjj5816VejdnfGan8hNg=;
 b=Z8O/Px1CkKM+v1MyLm/Dn8zln6nYo5D8n+xY26BzkpDHQDcCPUtruNIzv0b4QUSz9OGK
 oshN5D/5jy34i6Nz/xBNrXfBrgUlWXfYWUm0jTVBm0wNzfXS0eZJhngYzgL1wDCruE1n
 FpJbOO0CJMCYz5UH4QI46Hsq4pM0FWApHuSJnMZBJURI2YryC2ox3bQg3SlV9ub4uvh2
 n/IqNsr0i4a1xt1Z/Oe8D99N+CycNkO5ZtL9yhSFimNpbrm/sJwzTvWN0GXbFgE8f2oU
 ZJgbzqviqQyK7/d1N1lQMWxCeiUF5FjioicY1HWOTSft2jc3cErjAyvP2EIxUS3cqiAV jA== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 353jne3xwa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:30 -0500
Received: from pps.filterd (m0134318.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4JwCqg006894
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:29 -0500
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0a-00154901.pphosted.com with ESMTP id 357ur1g5kj-4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:29 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,393,1599541200"; d="scan'208";a="573039895"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Dec 2020 14:09:20 -0600
Message-Id: <20201204200920.133780-8-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201204200920.133780-1-mario.limonciello@dell.com>
References: <20201204200920.133780-1-mario.limonciello@dell.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312, 18.0.737
 definitions=2020-12-04_09:2020-12-04,
 2020-12-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=972
 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012040114
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0
 mlxlogscore=999 bulkscore=0 adultscore=0 malwarescore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012040114
Subject: [Intel-wired-lan] [PATCH v3 7/7] e1000e: Add another Dell TGL
 notebook system into S0ix heuristics
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
 linux-kernel@vger.kernel.org, anthony.wong@canonical.com, Yijun.Shen@dell.com,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This Tiger Lake system is not yet released, but has been validated
on pre-release hardware.

This is being submitted separately from released hardware in case of
a regression between pre-release and release hardware so this commit
can be reverted alone.

Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
---
 drivers/net/ethernet/intel/e1000e/s0ix.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/e1000e/s0ix.c b/drivers/net/ethernet/intel/e1000e/s0ix.c
index cc04aeaa2292..3f2985fac67c 100644
--- a/drivers/net/ethernet/intel/e1000e/s0ix.c
+++ b/drivers/net/ethernet/intel/e1000e/s0ix.c
@@ -63,6 +63,7 @@ static bool e1000e_check_subsystem_allowlist(struct pci_dev *dev)
 		case 0x0a40: /* Notebook 0x0a40 */
 		case 0x0a41: /* Notebook 0x0a41 */
 		case 0x0a42: /* Notebook 0x0a42 */
+		case 0x0a22: /* Notebook 0x0a22 */
 		case 0x0a2e: /* Desktop  0x0a2e */
 		case 0x0a30: /* Desktop  0x0a30 */
 			return true;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
