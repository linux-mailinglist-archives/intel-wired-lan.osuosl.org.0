Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3945A27A698
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 06:40:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA39A86FFA;
	Mon, 28 Sep 2020 04:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tWSvAHWU3gf5; Mon, 28 Sep 2020 04:40:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FA9F86FFE;
	Mon, 28 Sep 2020 04:40:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D1D651BF309
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 04:40:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C9F8086FF7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 04:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1LG37s4IBcag for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 04:40:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8384D86FF3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 04:40:39 +0000 (UTC)
Received: from pps.filterd (m0170394.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08S4dq1K023877
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding;
 s=smtpout1; bh=ZYYLOG7cjd2FFEodYR9sOCf8GNcOlT5pXjKUseFXTPE=;
 b=hMHXFRHy1PFW6mIbYcVha8lUwf7hgI65aQ1glKE8rAMcOhYuyQ4S95Y5o1XaAqSbGACl
 eF2Ldeu4wQlldq5C9aN3GvC+ZwIIvYwp+JMGclQFmjhKsPVZ2MvVHgk/7eaPZ9M3SW5h
 QXjh+nTMUTAvTeUqQM3KrceBLzqWJI8t/IE5ja4NslQCoQ/f5LkIOYPJIMArYsF/avfZ
 gXBA72IesX7bL/wLdvFDWUwDx74Afc1gYcnn/+pP9mIUmZpatV5q/RtaOXvmi/t198Vk
 Qj0cQXvYBIrCaNeUhHfO19cyDW8JrJa+rOw4yL48yjXxe7z4ke+zOLAfy/aSyx3mzK3i qQ== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 33t076b57r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:38 -0400
Received: from pps.filterd (m0142693.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08S4ZiSK092934
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:37 -0400
Received: from ausxippc101.us.dell.com (ausxippc101.us.dell.com
 [143.166.85.207])
 by mx0a-00154901.pphosted.com with ESMTP id 33u8s2g4xs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:40:37 -0400
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.77,312,1596517200"; d="scan'208";a="1434187423"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org
Date: Sun, 27 Sep 2020 23:40:21 -0500
Message-Id: <20200928044024.7595-1-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-28_03:2020-09-24,
 2020-09-28 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0
 impostorscore=0 mlxlogscore=504 priorityscore=1501 clxscore=1011
 spamscore=0 lowpriorityscore=0 mlxscore=0 suspectscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009280037
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxlogscore=688
 malwarescore=0 mlxscore=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009280037
Subject: [Intel-wired-lan] [PATCH 0/3] Improve s0ix flows for systems i219LM
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

commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
disabled s0ix flows for systems that have various incarnations of the
i219-LM ethernet controller.  This was done because of some regressions
caused by an earlier
commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case")
with i219-LM controller.

Performing suspend to idle with these ethernet controllers requires a properly
configured system.  To make enabling such systems easier, this patch
series offers configuration options to enable/disable the flows.

The flows have also been confirmed to be configured correctly on Dell's Latitude
and Precision CML systems containing the i219-LM controller, when the kernel also
contains the fix for s0i3.2 entry here:
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20200914/021361.html

Patches 2 and 3 will turn the behavior on by default for Dell's CML systems.
These patches should only be carried if that patch linked above is also applied.

Mario Limonciello (3):
  e1000e: allow turning s0ix flows on for systems with ME
  e1000e: Add Dell's Comet Lake systems into s0ix heuristics
  e1000e: Add more Dell CML systems into s0ix heuristics

 .../device_drivers/ethernet/intel/e1000e.rst  |  23 ++
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/e1000e/e1000.h     |   7 +
 drivers/net/ethernet/intel/e1000e/netdev.c    |  64 +++---
 drivers/net/ethernet/intel/e1000e/param.c     | 209 ++++++++++++++++++
 5 files changed, 266 insertions(+), 38 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
