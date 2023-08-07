Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB181772EEC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 21:37:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1594E81EB5;
	Mon,  7 Aug 2023 19:37:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1594E81EB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691437076;
	bh=de+jL31siMeY6O1+gePnPgEfVwvTc6M4OIWQ9Q3/+Zw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UajePTnOU6w9yoeBjWWAwmSlFvwUzafvUHTV7eoRIfTwbhesrcxeLPVOrZzrKhoHB
	 VFWqF6QV6spXJvtMzrxI/uHEaXiP9kw59AfC76IFKWipljKOt1TLiZpATeQn2tV0SD
	 LCRzPZ2dFPBuJBRtjZ4cQkWZMw/zTj4/n2vYZN0HFFiXtcYwT/sMJvirCItHvjse+R
	 demdK7ZeTkwsaX3+gb4/rgeRnuLqsJeMxQLlAnephkbI95SU6robg39lnQ4Q0r9aDq
	 9aAoQYNjOoxoEYipNx52nFk17VufCrltJYfcv5i3fMSjIm3gQerdrNoLe1y8XBy+MB
	 LFJ4a5COSB5uA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JawxDFIPrxGA; Mon,  7 Aug 2023 19:37:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E928E81E82;
	Mon,  7 Aug 2023 19:37:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E928E81E82
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C72701BF284
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C228840297
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C228840297
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xYbx_DvkDG-2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 19:37:36 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03on2043.outbound.protection.outlook.com [40.107.104.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59CA040131
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59CA040131
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lFA+kiJzH5THabGsvPmiQFGmJE8VfoEW0/zmcbexhvDfJs0q12hIaLD9GknrCmlMiPsFhN34vvyb0zdp6OoNFyN+eoYD/CY0YLPWMZyLM1VNIvUd1tLFMhvh04X6pjeuWVu3d84vVJvN9MmObwN1yea/ZsRPgnSlDpYT1Zjy6TmCkmNEgKXtiaVa52tu40xb0Ct1LDaNT5rAslGi8DPFwaqQ5PCug1cHCIchgphQ+erhkx6qiyzSMz+x/dXy3THP0sVz2X6Yl4s46P+a3kHtRj4Q9TYa75rP7pN3Uy+eCPvErNHbyrQPgANZtjsKe9KBX86mX0QJfxjGLeiYm1sKaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KA9qWP/QD//5GYLEtU+Tr6Q5f5gsyo7UYP90t7QvTlU=;
 b=kqJp41yIEhJZnmGA+P5nWcaF1ANNCNC+Y6cm8gc+7Jq+a7fcWbdLe+mQDERRJ1A6SpHPGkWdyy11KfQFNA1vsbtDrEYYtu1NbuUGt03EsRorayFmqqnXwTXQHOjpO4Ot3OF2sLqGxzkRhB8NiUj300Mu7N7LS+jousCm66bS4to9bU9XUIYehJ4QIQ4swrJEwR2y7lzIQ5rz0aMuw+PR+emLCpoT5NXvDqAcA8EvcLxuAzE4bkV6PRNhNVqbQA+LHkQulsIfE0IOShgTDknTrf/TGr4u1nmcy9J0o/q0yS6gzBeSlcx6dt9sGoqRecdluU/ELInRZWzZDJYWCZujaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DB9PR04MB9451.eurprd04.prod.outlook.com (2603:10a6:10:368::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 19:37:32 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 19:37:32 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Aug 2023 22:33:13 +0300
Message-Id: <20230807193324.4128292-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AM0PR01CA0136.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::41) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DB9PR04MB9451:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c7eb216-7661-47fa-ef70-08db977dbe64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Bt8LSXyqLeHpj/MhEu1rNvZZ3ZKalSGl5wgd4HuaGpplaRGMbskRehO/j5prGEu+gJP8yKouPLjmuo6k/2P1AGJBdBDR8omHo58FVF7b27J3gGLVObijKhGnY+l5I0MXCY+F14F/J9PKQCsyQT2ZBcXGEUdxmhmBF22h7OWC8EeW8NzRPSazza+LP36C4NytPEGArCmvJFHbnQf30IbgROytZ8ZT1YedQK8xsQUjma1cJ47dOdXMwXRwnr3VDV2OCCnI3XHVjmP1xmRBReKIsWdvVamLSoNuejU+NJ9473PRPHeTmKHKtfAZ0FzQHuTlhoS7YYC4mxU/+7/KN5ARnJSh/TLGKZzFnVSQM1DHIDXxb7ih433HxsN/vwbCQLL8niFsFKrfNPww4lZtGhNQKDbMcKx2CDdUCZAVysaYd4TKEth/PCwRsfslkWfmvOXKPpm4BytGrAF1oe1dbZxkeLamBV6gLCRxRCT5r6VaE/9bd4bMYfT44ug9K9r5Fg9zitlgS25+fJIuTKRdPqYXr/RBryp2ugwMYJ1KX7qg3UsKZhx7pYFkDHIq8nbdn9wggDPw94wWpQjgto2t4wMTzlYtKFglrKKOHz61X2u32OQr3Y2j/vp//u4o/hOBFuCOCV8Oa1oNdkehrjZUaHR5rQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(186006)(1800799003)(451199021)(1076003)(41300700001)(26005)(2906002)(5660300002)(44832011)(83380400001)(7416002)(8676002)(8936002)(2616005)(6916009)(86362001)(316002)(6506007)(54906003)(38350700002)(38100700002)(6486002)(66476007)(66556008)(478600001)(52116002)(66946007)(6666004)(6512007)(966005)(4326008)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mGpFF8b6FaCuw4S0BGyHWHlb9X2JhAkKizeAVxmm7Ph7IMzHj+AFk/svJ3ap?=
 =?us-ascii?Q?ysFIxi+npU5uzfgwNxvaBXZIDpqkLTZhBBrm3Lc2P4GUu3Pi18SZrF/VeRZu?=
 =?us-ascii?Q?hIAGN3eTmvuz7HaOzqCoVuPWFzQWAM9SN2MhsPdTiyCqLcdBgSI9/3H//Xud?=
 =?us-ascii?Q?24rVuZHSl5BTjAeAXI10FZtl3a9zHgUC51bkvinHAaLcjXJAuRBZrGIn8/tX?=
 =?us-ascii?Q?6Jte2HdCoNmlsbJu2Qz7Bb3iUg2Ja5a2CxZbbwN7TGMuRK45KtwOha7Ep3cb?=
 =?us-ascii?Q?muTXbeFzikwUPwRNNSi19dcBTbK5lDdbmzEQkzk4x82bk3r28FLVewCY2qQ3?=
 =?us-ascii?Q?Nq5nxoZESGtwkIMxka1v3t4IMq61zygScIWXH7Y/Nz0OjxU7zoysW6PtmaWd?=
 =?us-ascii?Q?DuB3ofX/dFezBugUSnz8ng7bZb2Dy4WxCFook4bafgBTS3DwNW3+sADXYwhU?=
 =?us-ascii?Q?VA00vO7r79a81X6XMI6RbbdmU2Zs1rL+De9OMDiDE+56oySCa6WlbJM28oCE?=
 =?us-ascii?Q?QTEO1hqZpP8oycM9KZq7L/Oo9OuEkNVZqb1Fe9KKdAZaf49FeWU2tn9j5aO9?=
 =?us-ascii?Q?EmcZlyT7LpVeZV4l4I/RVRi08nnpmFIQIQngmhUI5DWmmlRX3jLK0GAW6fMb?=
 =?us-ascii?Q?ewauu+dMdhHajutk2QoQ6DJLZ/k6Q38qYxRZlgSXIB2vnBqJVCXUwHuS+eBQ?=
 =?us-ascii?Q?qlh2qDrDJEET6/xkcwcalL2mz+7su2dm4iUoFAsl2/F787sZatxJsQeOmEQN?=
 =?us-ascii?Q?II2EzWXy5NnmxIjLwccdwEh7ACMz6l/1bvv20LkGRYFa+rXdP31EIabM09nA?=
 =?us-ascii?Q?ZbLQ7d8AvmmS+CyV978PnaXBovDR+CDMsbVv4F+L/RyULqsSGgZ21zyDw4bA?=
 =?us-ascii?Q?BnI4cgYdbn1KWzyvqZBSOOb5jJ5pnw2/svOq4AwcHmHnCMo3QRJORIhdiUln?=
 =?us-ascii?Q?IWfkCSh/yv8+gG1DfgjBLY30ryK8U5eYp04oDs1em3OrlMSse9ph/NTZId6j?=
 =?us-ascii?Q?gnoomWFUYcNq/GY9pH2AqZEMmEFE7tREMZr94lLQLr2vYfRqMsRlK9GOnavN?=
 =?us-ascii?Q?poSG3lOLDAIhXPFSeOrOTpu8eiwIB47VTDYhqzJTziJnfkvpGe/fDZwrdng2?=
 =?us-ascii?Q?OF+1zw5HnN/fGTg8ogVAkMElTlgP7TBAhzTp87MnwkppjKyoYpI5V619mxlB?=
 =?us-ascii?Q?5eJB8rHFXcYHZpIeTyCnm//sLAjpVNtOmFDzmoVcmjcdSeSTwd7uZUpekf/l?=
 =?us-ascii?Q?fpTVOuKddDHN5qp15evq8qkQfIuh53nMWUrKgbw2fWbJzHHwc9I9s/N3E+Cx?=
 =?us-ascii?Q?43z7vNIjJIDOXVmocMrLwJ6xif1kb8gumAcwqNBbS2EPmaFIYYQoB6/Fa0xX?=
 =?us-ascii?Q?RgcatSs2BmbNdcHIzaqZSGp3f1xn8/yUtCP8fPdlpG/8iJeeG+TThmxGZYag?=
 =?us-ascii?Q?48BnbIwGlS5MXQ7eG2vZAwfo8pgy/L2MW16vtOlC5gmKS8XSPldraDfwJE07?=
 =?us-ascii?Q?RV9dRBHwT9Y7+sPzlsE9zzWNvVbi/V+9aAZ0kX4tI4gYETIpWSjU3aeq0qdq?=
 =?us-ascii?Q?9sG3DUp6MwEEmsGsbmmByKnSDeVyFmON5k11Mh2+/WtKzW7Iliuuzf7iI3tf?=
 =?us-ascii?Q?sA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c7eb216-7661-47fa-ef70-08db977dbe64
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 19:37:32.5806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SafBbxiWHLGepREik2qF9iYyzJCpe0ki4MFLUY0HlfX4o4D7AoofG/HRW0uez+hTq+2tsrXDjOKPPvJ3tJU1dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9451
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KA9qWP/QD//5GYLEtU+Tr6Q5f5gsyo7UYP90t7QvTlU=;
 b=bqZGExy8GoeNCTU5+RWrrD70EWiOnfUGFHLEma/vqY7ELYbL5lGH4YhsiBvvnr2b6S5OJ7myB3BrPkkw9+Xy6ks8RRY3nJfXwgig9dKh3rAAdg5EnMkHP8jDZiO1sHnj9XcANELweQLrcYE+Q6rEAmHjbLPnWzj4aKArOap2BqE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=bqZGExy8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v4 net-next 00/11] Improve the taprio
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

Changes in v4:
- Clean up some leftovers in the ptp_mock driver.
- Add CONFIG_PTP_1588_CLOCK_MOCK to tools/testing/selftests/tc-testing/config
- Wait for taprio schedule to become operational in the selftests

Changes in v3:
Fix ptp_mock compilation as module, fix small mistakes in selftests.

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

Vladimir Oltean (11):
  net/sched: taprio: don't access q->qdiscs[] in unoffloaded mode during
    attach()
  net/sched: taprio: keep child Qdisc refcount elevated at 2 in offload
    mode
  net/sched: taprio: try again to report q->qdiscs[] to qdisc_leaf()
  net/sched: taprio: delete misleading comment about preallocating child
    qdiscs
  net/sched: taprio: dump class stats for the actual q->qdiscs[]
  net: ptp: create a mock-up PTP Hardware Clock driver
  net: netdevsim: use mock PHC driver
  net: netdevsim: mimic tc-taprio offload
  selftests/tc-testing: add ptp_mock Kconfig dependency
  selftests/tc-testing: test that taprio can only be attached as root
  selftests/tc-testing: verify that a qdisc can be grafted onto a taprio
    class

 MAINTAINERS                                   |   7 +
 drivers/net/Kconfig                           |   1 +
 drivers/net/netdevsim/ethtool.c               |  11 ++
 drivers/net/netdevsim/netdev.c                |  38 +++-
 drivers/net/netdevsim/netdevsim.h             |   2 +
 drivers/ptp/Kconfig                           |  11 ++
 drivers/ptp/Makefile                          |   1 +
 drivers/ptp/ptp_mock.c                        | 175 ++++++++++++++++++
 include/linux/ptp_mock.h                      |  38 ++++
 net/sched/sch_taprio.c                        |  68 ++++---
 tools/testing/selftests/tc-testing/config     |   3 +-
 .../tc-testing/taprio_wait_for_admin.sh       |  16 ++
 .../tc-testing/tc-tests/qdiscs/taprio.json    | 102 +++++++++-
 13 files changed, 443 insertions(+), 30 deletions(-)
 create mode 100644 drivers/ptp/ptp_mock.c
 create mode 100644 include/linux/ptp_mock.h
 create mode 100755 tools/testing/selftests/tc-testing/taprio_wait_for_admin.sh

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
