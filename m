Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B322CC1E3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 17:18:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D67532E280;
	Wed,  2 Dec 2020 16:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m5jdhRY03ffn; Wed,  2 Dec 2020 16:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 77B422E270;
	Wed,  2 Dec 2020 16:18:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 522591BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 16:18:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A55587154
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 16:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C392AdGCroqu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 16:18:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 80F08870E1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 16:18:06 +0000 (UTC)
Received: from pps.filterd (m0170397.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B2G6SOX032304
 for <intel-wired-lan@lists.osuosl.org>; Wed, 2 Dec 2020 11:18:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding;
 s=smtpout1; bh=KKtMcRRuRaa2iQTACw2ISjeqc+9U7fbuIz2AU7EVIX4=;
 b=RSwfAinnEjKSdhouTovNqDIZFP4gK+1vPNV2VFLLUTPIpyZP05TTayCgXr5lHcUdJagr
 +yrQXxUpUi4BxXoZXcC9C4eZSX0qOYJxL/HlxNg7TFOio0LSiEm7PDq7qNQZjnsrOM7R
 I8kJTbHLi4jGw/NgGt4txftDGJe8jfPAQysSwF6Uv/zARjfPyZW0BHe8kYy8g9m9OSRl
 pBNcYD6eDBgC5DJ8RFk5UT/LRHCS/yELMBxggmThrqdNILkPBm1f/M8PeWh4VFaxOQvm
 mc0Nk5u1XIxeNqPmSIzZRj495Q51FRk35A/VdghN1U8TxRSSnGrYNTHAFLDxlDDPOrf8 Dw== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 353ggyrwc7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Dec 2020 11:18:05 -0500
Received: from pps.filterd (m0089483.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B2G8Lid187446
 for <intel-wired-lan@lists.osuosl.org>; Wed, 2 Dec 2020 11:18:05 -0500
Received: from ausxippc110.us.dell.com (AUSXIPPC110.us.dell.com
 [143.166.85.200])
 by mx0b-00154901.pphosted.com with ESMTP id 355k81u0ks-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Dec 2020 11:18:05 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,387,1599541200"; d="scan'208";a="1013735359"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Dec 2020 10:17:43 -0600
Message-Id: <20201202161748.128938-1-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312, 18.0.737
 definitions=2020-12-02_08:2020-11-30,
 2020-12-02 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0
 bulkscore=0 priorityscore=1501 mlxlogscore=574 malwarescore=0
 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012020096
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=686 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012020096
Subject: [Intel-wired-lan] [PATCH v2 0/5] Improve s0ix flows for systems
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
 linux-kernel@vger.kernel.org, Yijun.Shen@dell.com,
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
series allows turning on using ethtool.

The flows have also been confirmed to be configured correctly on Dell's Latitude
and Precision CML systems containing the i219-LM controller, when the kernel also
contains the fix for s0i3.2 entry previously submitted here:
https://marc.info/?l=linux-netdev&m=160677194809564&w=2

Patches 3 and 4 will turn the behavior on by default for Dell's CML systems.
Patch 5 allows accessing the value of the flags via ethtool to tell if the
heuristics have turned on s0ix flows, as well as for development purposes
to determine if a system should be added to the heuristics list.

Changes from v1 to v2:
 - Directly incorporate Vitaly's dependency patch in the series
 - Split out s0ix code into it's own file
 - Adjust from DMI matching to PCI subsystem vendor ID/device matching
 - Remove module parameter and sysfs, use ethtool flag instead.
 - Export s0ix flag to ethtool private flags
 - Include more people and lists directly in this submission chain.

Mario Limonciello (4):
  e1000e: Move all s0ix related code into it's own source file
  e1000e: Add Dell's Comet Lake systems into s0ix heuristics
  e1000e: Add more Dell CML systems into s0ix heuristics
  e1000e: Export adapter flags to ethtool

Vitaly Lifshits (1):
  e1000e: fix S0ix flow to allow S0i3.2 subset entry

 drivers/net/ethernet/intel/e1000e/Makefile  |   2 +-
 drivers/net/ethernet/intel/e1000e/e1000.h   |   4 +
 drivers/net/ethernet/intel/e1000e/ethtool.c |  23 ++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 272 +----------------
 drivers/net/ethernet/intel/e1000e/s0ix.c    | 308 ++++++++++++++++++++
 5 files changed, 341 insertions(+), 268 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/e1000e/s0ix.c

--
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
