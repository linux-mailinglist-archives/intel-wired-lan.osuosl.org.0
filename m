Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF17772EE5F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 23:55:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59F38418A5;
	Tue, 13 Jun 2023 21:55:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59F38418A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686693327;
	bh=/+CaxmPvfhxCvAbt4lqMCE4rte/svXhNnDwGvWgYgFU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=o+xBDzEFHUw/5L7nfHGwzXqOVaFSLNDa9pP1rzs7jsoea+rUucKS6Xu55zHpRgl3s
	 h4SIptvc5YCsRsj/MmlsFdPS5CcaxZ1z9z4JnpLW4q5YPi3RQKnSlSKfmwNQnFzmcY
	 hJ2F1amFd8XK11A46kpw30zyCMPlIIgXBhAGpAqzLciS0H+vv0Wx/K8YGE9yfbcui7
	 G1uW9yN7Ff62S+fpBu3mxur/tYR2R5CzqPLwgcyu4Wp8PfEpU1srEEjdNa1rsz+M7X
	 TlihFUSqaU+uNZAio0LNY20I5IXu4qrF3iDQ1N1eqs4TXA7Eku7TNe+dBL8brE8DA2
	 4Fx9gT+4GAA2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yJQPOXRUXQgo; Tue, 13 Jun 2023 21:55:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BAC040944;
	Tue, 13 Jun 2023 21:55:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BAC040944
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A5011BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C04140BF5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:54:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C04140BF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z_JhFWMSJBgq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 21:54:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE18D40BF4
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2077.outbound.protection.outlook.com [40.107.21.77])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE18D40BF4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:54:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E947hhT7t5i88vVy7F6nA7F5BRM/o2mXW4iFfEkmpzooxKoOXbkUwyq7cyPHgMgY4IG4c46nTmU6BrWZXQxbRVz2VDu8TxEIEzNPP+xfHtBwpHZFeidZL7s5/URMdzwDjN6kcMoDPEFXDVpmigc+QElJ1fpszonumsrlv7yyad35ocPYhElI69xpvs/iLtj6yDTDUidH8HHk+ijFIP4ei+YJrH8lTN4f/zFjNfArKAunGlEJwf9PX6L0fRvc8V+IklM9KnEGIuCwHmdojIjZLuuIdnUTPKcREPXfOfie38+1JQYdTu0SSLrjSYe4Ke2p/kEESQU8Tl5sKF8HtJuGPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1s3X56HaGVXHVNIT5AVnfdlfDvymYHNfKJ3qdeDdAUc=;
 b=l7MbfU8hqzyt8QAzynm62tQ1dF/UZkTHI5gbPfP3A0MQtq9WN4ndD5kUiLv85+kGV5UwFVE8+iL3kr1cIaJDtIAAtT3nqUcoCKiOFL7LPajlQU103xa+5TIZfaFX8a/wa7m/eIpmKcBTHSWDn3W72k2NBCRWnLMHLCQ7nqwkZVjcfqmutYTxA7d+DPTvmKSRwdsOMdDI6pjEF2/xy3V01DiS12Z9F9gHkdcSCVKQay9mQf1zkI132kpZci8PdfOPaGLhMgoNiH41CUl4h/COl9m/niWjIdEQxvaLwx4GBxU03iqfu5W9EKIJMtZrMXMjZI4btVWMgr19c5UEGa550w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB8081.eurprd04.prod.outlook.com (2603:10a6:20b:3e2::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Tue, 13 Jun
 2023 21:54:51 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.045; Tue, 13 Jun 2023
 21:54:50 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Jun 2023 00:54:31 +0300
Message-Id: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AM0PR04CA0044.eurprd04.prod.outlook.com
 (2603:10a6:208:1::21) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8081:EE_
X-MS-Office365-Filtering-Correlation-Id: 9755816b-6024-4c18-5063-08db6c58cfe8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5Nw9x2IDAosetVWkbgEFQ7eO3+uvLfBDWWFjs0RV7HGpSdgMvH69iypUwt/qSCjJ5xZ6IGrc7+Xc+2QT4cV8TrYG5fcmqz0h58MbDp/p3+ZQtSMxtYGyywHYsMKU6OlCz40p+tjGFUzlGL+wwiaLOcTLMok4R+8pGwB3UHnFqy6UfhQZ4IMWwv2eJxA7oHUa2969MeBbHPi86khRoMXt9fDL3wNPvrbt5VI0Czwao2ZLVr603/mfPvnOEjNeh+993ayoU4kLl2jVErdU5bdsntZUXUPzClybjJ4PHOtte8KFzuQ/UhaT5QtpZo9bxcbHMBCWNMxHmshDng1V//OAU2r17OXxmDDyYDjzqnEXFxhYQIl8KFYQhJPLNuxxpUC3eHCiJ51GGIXi0YK1D4OxFMixU2RDLrfZkuntCyJZoUYPQ6WLL8MoFAOMmLpUkLUpkYU3ktWACBTd5/bmo4P/9tXGftza4MYJjwkbdfzxNeaK6EL1IDKvwPw3CBcRWU3S7T1vvmruVCnI+YOIBCzsOBg9ZiDbr/0qkDLASCmKoB45IrRr07kyjsYdc9Qt/AqrBplDKIySRyOXSzGpJgaqEWih9/W+s9FwyOPn7MnvIfM8kOiUk4SjifGWd70PUlxyDYiIEiCLdWWpd+u/DYX3AQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199021)(6916009)(66946007)(4326008)(66556008)(36756003)(186003)(54906003)(478600001)(2616005)(2906002)(66476007)(8676002)(6666004)(316002)(966005)(41300700001)(86362001)(6486002)(7416002)(6506007)(1076003)(8936002)(44832011)(83380400001)(26005)(5660300002)(38100700002)(52116002)(38350700002)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dFCoxXf+Ma3E59fuYmYnk/mAdHtA25Tm5P+Kto1TiyEdPhkHcxoBlij3NeXH?=
 =?us-ascii?Q?67yTzLoa7rV0cOEl7SZpv/mTnggAgRLsGNTRL6A7SfegLat9grk3CX2QaDXB?=
 =?us-ascii?Q?X6ATGGsIWQ8nB5pdZE0hVPLJuHAJyXPHJiKYtDnnC7l93yn0/S52P5guIkX0?=
 =?us-ascii?Q?4L9uQUYLh6KTJkBzS1D9NFfEeJpcwkePucaufxmlAt8SaT9p7WDCHo0UkKPB?=
 =?us-ascii?Q?DsCdFW4TxhGHk+K+7A/8KmXwPJA2TbFbxSYhWE61r2UjDrK073JJX4XHF+Yi?=
 =?us-ascii?Q?BWpENLvvwVIdXIkLaiBFzcERsW68Gn0QVYW7XOgcATSYiRhDWLRwGOT9dzuD?=
 =?us-ascii?Q?6aAjRletUdX65jighmHU5+/xDMiOwPfuesYsfKzXLz2Jj/+zTn+F7VIYc5vO?=
 =?us-ascii?Q?+yOIVjY81QNqIutexXlPmLiOfKwimwDgCMM+CCdLAzBJjWqVbYRKgDwjrDSq?=
 =?us-ascii?Q?VIEqcXpUWVRSf2TDF9wjhokEaGO2uu3x7F4iWTecnnaZHoR9OJMQfWKK4Cej?=
 =?us-ascii?Q?p0eqt52wTUBQ5QImlnbnLTgHKjTYRaBWX0JkVFGqhnKtgrzQ/68XrXNihTBL?=
 =?us-ascii?Q?ThWmmIaH9f8Lfs6fIrVaYjisDvOXtJLPFHr6l1na8ISqnTtezC6WPDVvKeeF?=
 =?us-ascii?Q?AQy8BA/EAq1mKYdw4A5ZcFQuLLcb3/g/KCifinTJoZqNGaArJN7/FfVOoj1C?=
 =?us-ascii?Q?wZKiRixAeDbxVyU9UJ01mW7oOtHBOnC+p6dFiT3KowI7Y6z4jjdPpzsR3kbw?=
 =?us-ascii?Q?VlY5XVJn1f3vo0QHQGHuRldlSRAg0tjXg4I9pIhSxJgJPjB9eQEzrCGG/U6t?=
 =?us-ascii?Q?cF2kWqqgLj/edCacAx2vH5viFrsWzplYxKa+mqdf+vc+mPwtDdTgsdkrXSJ5?=
 =?us-ascii?Q?ZtVv59VXXvYsqZQLX30HsILk15eToAH1PL8KdEHmkfR/f2Sfa5epRsqZtLqm?=
 =?us-ascii?Q?JkojOjYlwShNhnTZ4aVZQBbeJP2XsvcfFuBcO2ZHVBzS/wsszrui0GEUeUet?=
 =?us-ascii?Q?rn4LwwAF2LjgQG/V2G6M1lQUEPMIp/fP+wuR0xOYB6PG47LK2sgfj515Cgf0?=
 =?us-ascii?Q?9hNRGDtmwBvkq/IFvmJ83TB1foEOvgduX8XqInfZFd9Yf6nhVetrtRaKWUNu?=
 =?us-ascii?Q?xxOpAXQQ3/9JsXGewudFqn4+DJgg1Zu26/SRLs6gjdOMXWycDk9twmvJnnHw?=
 =?us-ascii?Q?E/zkw2Sw25oyNzYGZnQM6Yrze/qLzpcbAgndzclE7J/10jgdJxTcTFNxHV/b?=
 =?us-ascii?Q?icWC2rKgJsBARgulj48FTfXrkbqZqYDvgGmgc+pmSdJsQjEtoj4RcEpXJhzQ?=
 =?us-ascii?Q?79AuRFaUW4MBUn/zg6AjQhkO8NlvZVOFEOIWdYGRw3N3PgczdtjjVgZJRM/Z?=
 =?us-ascii?Q?taxVnQblP6VhoH1E3lgXef+JCSY4IwFI55pkxCqs6IYKSLMmur9iP3CUMpuj?=
 =?us-ascii?Q?2DXeb+/vbClSN+WEaFDFv7TU0G9M+KBDKeYkp31cMTkgCanOMMg18kwXsE1y?=
 =?us-ascii?Q?V82XK6bfUVkAPpXnHzU7I8MDzGEnbIqvZBcVSKaYIFBMnu7SpL1CeXimgI2I?=
 =?us-ascii?Q?dLRyMfR/7aYFX/dQ0HI1THSsKMLteY0hznFbfSL6jEHwBtt0TRmQb7v+C7u0?=
 =?us-ascii?Q?wQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9755816b-6024-4c18-5063-08db6c58cfe8
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 21:54:50.6709 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SjKWCsIo0WaTFD/ce5KUyiBacU90Pn4rjCZTL+GIbGf08CTak663UYZ3Ma/I7Txa+iX9MgVkrcsshGz/DHM5HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8081
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1s3X56HaGVXHVNIT5AVnfdlfDvymYHNfKJ3qdeDdAUc=;
 b=fePOgM2bIbQtiGIIF20DzBH8Rfm6ZbQ8GlZbJFA7wIZfkZOxsU8sUXCRwtk1Iql9YVMJ/16kQYalAuZNCd5UR+Y/xHidsgjibGdEbbZktb41D82ytdLnI+dnBmhkK6N9Eqg+K3e1B8qQmGCduuEvPxY7u60bzSx/SrPCdOd58aU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=fePOgM2b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v2 net-next 0/9] Improve the taprio
 qdisc's relationship with its children
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changes in v2:
It was requested to add test cases for the taprio software and offload modes.
Those are patches 08 and 09.

That implies adding taprio offload support to netdevsim, which is patch 07.

In turn, that implies adding a PHC driver for netdevsim, which is patch 06.

v1 at:
https://lore.kernel.org/lkml/20230531173928.1942027-1-vladimir.oltean@nxp.com/

Original message:

Prompted by Vinicius' request to consolidate some child Qdisc
dereferences in taprio:
https://lore.kernel.org/netdev/87edmxv7x2.fsf@intel.com/

I remembered that I had left some unfinished work in this Qdisc, namely
commit af7b29b1deaa ("Revert "net/sched: taprio: make qdisc_leaf() see
the per-netdev-queue pfifo child qdiscs"").

This patch set represents another stab at, essentially, what's in the
title. Not only does taprio not properly detect when it's grafted as a
non-root qdisc, but it also returns incorrect per-class stats.
Eventually, Vinicius' request is addressed too, although in a different
form than the one he requested (which was purely cosmetic).

Review from people more experienced with Qdiscs than me would be
appreciated. I tried my best to explain what I consider to be problems.
I am deliberately targeting net-next because the changes are too
invasive for net - they were reverted from stable once already.

Vladimir Oltean (9):
  net/sched: taprio: don't access q->qdiscs[] in unoffloaded mode during
    attach()
  net/sched: taprio: keep child Qdisc refcount elevated at 2 in offload
    mode
  net/sched: taprio: try again to report q->qdiscs[] to qdisc_leaf()
  net/sched: taprio: delete misleading comment about preallocating child
    qdiscs
  net/sched: taprio: dump class stats for the actual q->qdiscs[]
  net: netdevsim: create a mock-up PTP Hardware Clock driver
  net: netdevsim: mimic tc-taprio offload
  selftests/tc-testing: test that taprio can only be attached as root
  selftests/tc-testing: verify that a qdisc can be grafted onto a taprio
    class

 drivers/net/Kconfig                           |   1 +
 drivers/net/netdevsim/ethtool.c               |  11 ++
 drivers/net/netdevsim/netdev.c                |  38 +++-
 drivers/net/netdevsim/netdevsim.h             |   2 +
 drivers/ptp/Kconfig                           |  11 ++
 drivers/ptp/Makefile                          |   1 +
 drivers/ptp/ptp_mock.c                        | 175 ++++++++++++++++++
 include/linux/ptp_mock.h                      |  38 ++++
 net/sched/sch_taprio.c                        |  68 ++++---
 .../tc-testing/tc-tests/qdiscs/taprio.json    |  98 ++++++++++
 10 files changed, 415 insertions(+), 28 deletions(-)
 create mode 100644 drivers/ptp/ptp_mock.c
 create mode 100644 include/linux/ptp_mock.h

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
