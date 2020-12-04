Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2818C2CF54C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 21:09:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 675F587DCB;
	Fri,  4 Dec 2020 20:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BdHeS8dBibpp; Fri,  4 Dec 2020 20:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4F9C87DD1;
	Fri,  4 Dec 2020 20:09:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3FC9A1BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3695487DC8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8N2OL0bPQfhm for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 20:09:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B57BA87DCA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:30 +0000 (UTC)
Received: from pps.filterd (m0170393.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4Jr3BP002387
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=nsnR6oUO6VlQfGFg+Y3eEMgKteKYlrr0xitGicF9Gfo=;
 b=ybKtQn5cHlPBUYwZUMmDctHN01on8T6BjFsM9WfkTxUGTyyw9T6dFjEFSrYJW19R1YyW
 uAp715YwbKa0NLYw0qzXgzm6khTwrxPWDSprmmorj6VxDORc2ANGWo/smo49wknrcMkI
 Z6xDhpLcnQU034U1ZCopXs5h5n9lw/XG7IMIySgqMD7KzGFTroyfqtemmwaNzs1xtala
 wIlPDFLQCfJTr6PomxVLFdA3XUoLxvhfoTLXTdENLO2sWRgRMwOLrsAfNrrveUU7bQxa
 CpF96+wZcpn7G2ZLzddejvZ8FOPNWZhmNvFNQ8fAEge05zXCQ6kE22BISpkQ+UCg9VxR Ug== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 353jrqby97-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:30 -0500
Received: from pps.filterd (m0134318.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4JwCqe006894
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:29 -0500
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0a-00154901.pphosted.com with ESMTP id 357ur1g5kj-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:29 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,393,1599541200"; d="scan'208";a="573039893"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Dec 2020 14:09:18 -0600
Message-Id: <20201204200920.133780-6-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201204200920.133780-1-mario.limonciello@dell.com>
References: <20201204200920.133780-1-mario.limonciello@dell.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312, 18.0.737
 definitions=2020-12-04_09:2020-12-04,
 2020-12-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999
 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012040114
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 bulkscore=0
 suspectscore=0 adultscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012040114
Subject: [Intel-wired-lan] [PATCH v3 5/7] e1000e: Add more Dell CML systems
 into S0ix heuristics
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

These Comet Lake systems are not yet released, but have been validated
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
