Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5932CF552
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 21:09:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94D682E34D;
	Fri,  4 Dec 2020 20:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BJFzXjgA6kte; Fri,  4 Dec 2020 20:09:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DD99D2E370;
	Fri,  4 Dec 2020 20:09:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E75791BF9CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7F8FF87DC7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hkvUSaEks8JP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 20:09:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9DB9087DC6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:29 +0000 (UTC)
Received: from pps.filterd (m0170397.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4Jun2b008947
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding;
 s=smtpout1; bh=dFXfLQm5P73Jl59mQybirbxXxGY/DsvJra5ASUwR8TU=;
 b=ll8BxRjfwTdjKWfHMjqcFE7bNvmL1vrrJNhJ/jk/XDcmlTAsm4grfb/1dVb9JhEk58AJ
 NnPLeHROqDWwwLfLSbAJSffEYy5Cra604NbN+WY1eVCjfku00FgBKVJJUln0iqRWArlc
 Hm7f+d/FEO32+wWEff9vcKJIhXgi6HDZ5QTLuji8Xs+WFAoaO5qoCsWJ7P8mLZzNi1AW
 FJAFm6UZzfeyXpEF2gxE+6nFnbsXIrSL+ScsDBuFyXRJ7jgdvHaC+h2HqP/qmExXfybe
 IADR7CyPBcO6posKpCL04ARvTkHd7+KtEBQB0xPVwD5+simy0+1WaXMaqraolVwEYuXT gg== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 353gh04809-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:28 -0500
Received: from pps.filterd (m0133268.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4Jr8ec069002
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:27 -0500
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0a-00154901.pphosted.com with ESMTP id 3571ucr9m7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:27 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,393,1599541200"; d="scan'208";a="573039887"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Dec 2020 14:09:13 -0600
Message-Id: <20201204200920.133780-1-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312, 18.0.737
 definitions=2020-12-04_09:2020-12-04,
 2020-12-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 adultscore=0 mlxscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 mlxlogscore=618
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012040114
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=659 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012040114
Subject: [Intel-wired-lan] [PATCH v3 0/7] Improve s0ix flows for systems
 i219LM
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

commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
disabled s0ix flows for systems that have various incarnations of the
i219-LM ethernet controller.  This was done because of some regressions
caused by an earlier
commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case")
with i219-LM controller.

Performing suspend to idle with these ethernet controllers requires a properly
configured system.  To make enabling such systems easier, this patch
series allows determining if enabled and turning on using ethtool.

The flows have also been confirmed to be configured correctly on Dell's Latitude
and Precision CML systems containing the i219-LM controller, when the kernel also
contains the fix for s0i3.2 entry previously submitted here and now part of this
series.
https://marc.info/?l=linux-netdev&m=160677194809564&w=2

Patches 4 through 7 will turn the behavior on by default for some of Dell's
CML and TGL systems.

Changes from v2 to v3:
 - Correct some grammar and spelling issues caught by Bjorn H.
   * s/s0ix/S0ix/ in all commit messages
   * Fix a typo in commit message
   * Fix capitalization of proper nouns
 - Add more pre-release systems that pass
 - Re-order the series to add systems only at the end of the series
 - Add Fixes tag to a patch in series.

Changes from v1 to v2:
 - Directly incorporate Vitaly's dependency patch in the series
 - Split out s0ix code into it's own file
 - Adjust from DMI matching to PCI subsystem vendor ID/device matching
 - Remove module parameter and sysfs, use ethtool flag instead.
 - Export s0ix flag to ethtool private flags
 - Include more people and lists directly in this submission chain.

Mario Limonciello (6):
  e1000e: Move all S0ix related code into its own source file
  e1000e: Export S0ix flags to ethtool
  e1000e: Add Dell's Comet Lake systems into S0ix heuristics
  e1000e: Add more Dell CML systems into S0ix heuristics
  e1000e: Add Dell TGL desktop systems into S0ix heuristics
  e1000e: Add another Dell TGL notebook system into S0ix heuristics

Vitaly Lifshits (1):
  e1000e: fix S0ix flow to allow S0i3.2 subset entry

 drivers/net/ethernet/intel/e1000e/Makefile  |   2 +-
 drivers/net/ethernet/intel/e1000e/e1000.h   |   4 +
 drivers/net/ethernet/intel/e1000e/ethtool.c |  40 +++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 272 +----------------
 drivers/net/ethernet/intel/e1000e/s0ix.c    | 311 ++++++++++++++++++++
 5 files changed, 361 insertions(+), 268 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/e1000e/s0ix.c

--
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
