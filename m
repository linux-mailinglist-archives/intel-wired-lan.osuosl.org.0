Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3BD76BC4D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 20:25:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B065160BF9;
	Tue,  1 Aug 2023 18:25:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B065160BF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690914300;
	bh=Iz3wkmvN9vm5FCNoSQMuo7qcjYSj49Ei7EFIp76+XSM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=hPMtRDxAItC6eh8ozXweGMD3bFlalQ0s9+ZRi2jDvFWV0oWeP0sF3TZgE5XrLGOyM
	 mgwjTqFZ7BOrkawEgtxyaCix1VkfYU3L2/a/BAHxlQKnoAvzuSrUxxWhI4IsQmxbR4
	 RGK8ORiAwiq931uIufn22LjE9/BbDw3H6giAt7H8uzCB8TDCN6VPPmEIzeblzpLpZo
	 Hxo/no6m/xzBZuhcmvOooGhU1cqthmjbErngxvXEbSKlDnqixYlX+Tvjf7JxzddQvd
	 fEjU130CELSQUtCo2wcQeHdZulfFUe5LT5e1iR2ULfoh1qIVLSTPwts4SdFW/AB71z
	 rmMAGWLiNnmBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vw2-Of63RNj2; Tue,  1 Aug 2023 18:24:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77A1760C02;
	Tue,  1 Aug 2023 18:24:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77A1760C02
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 007E01BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DDB94097A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DDB94097A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DuS3Mt9KzSLp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 18:24:48 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur02on2081.outbound.protection.outlook.com [40.107.241.81])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D006A40894
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D006A40894
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BQL9it5otOD6LhCUEfXtZbu5M9J5nreCNy+qK0bblv46SueLiGxyWoYLWLBe65sip5+iU1fBB3+Cu7Wd2gjV2wTiU/ZHZeWcnhhKwHqDMQ7eMhmg6f5FUoDwDnxcRlUotHyaJwA6cD4cQXS/XwU6REY5xDoUcPY3yWRJlwHqhFcavhXEPzXOfwLPw2tnVK6azeKjjfpJKto7mj8lSylt+r6GIUNkASjEp1vq+VVJl1JGF4aJ16T8M6JJ14THNoTn1v9/0CMVZyrCPo7nHO0Mo92+ukLYi4/r+7wyuB+MKNLEyjg23G+fJRbhfc55nFzLMEkZiwZk5WGGk35qZvJ7Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2GBJ+rbPRsp3X/RmV5aEbScW3UBRckMkVFnhXp+Ub3A=;
 b=NM9TawEzTfKl3+V3w3mMyGMGrnEG3QDuURS0IF/xdGoxtj6hMMnozBTpQeKE9TknmbaygSUys81k0M4hoOpMm7F+0CNzVwjzHKruZugJRo09ajI/omh72fusyFxSzaUHMclouVvqEoeCFlMvSYsng4RcKh2jw4gxUTwaoNwwKnnj8OvbptYDXp2CTJa7ePI49Kf1cbwsVvBF9/ckPBzmXixyskEewQqzVVnWcWgtcTFjBqdc0hrp0p/CiHWnmV+rMv/3qQa1Tube5r72O4mCoWOLNVRbQI16dev6qjX9DyuUyBI0V15tnnwWeBQ0j0Xjtipi9av4bsECA1Xc+khYBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM7PR04MB6839.eurprd04.prod.outlook.com (2603:10a6:20b:103::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Tue, 1 Aug
 2023 18:24:44 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194%4]) with mapi id 15.20.6631.045; Tue, 1 Aug 2023
 18:24:44 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Aug 2023 21:24:11 +0300
Message-Id: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AM0PR03CA0030.eurprd03.prod.outlook.com
 (2603:10a6:208:14::43) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM7PR04MB6839:EE_
X-MS-Office365-Filtering-Correlation-Id: 1492fc26-3a30-4549-9cd0-08db92bc9441
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DJwOSXTBm8/28QXOlyjqdgOaLJE2OXJ+7+roRGSrj6IbNpKjUdvm3ZKpvsVzXpwFdkNGZoQgwjyyXk4of2Y/URsGdNZVmZXCfazHUZvNg+fguyyiVZLcreZ5R+L1GqGsgn9KHMAW7u1TDpWDjcBhcZKt1OrzA0mrkKAjI0m9VRcAhkz0yNOtnhIat9lEo5XwH+BJKHX6hsEuG2K+B6Xp1KM1gWqkbrQxn0lnELJF9z2QziDpL6+0E4ByPVhzsyqxPQvlMshgeZbczqNHFzHzLMX+NUH83xh6ouq9zVn5Z4JRFJW9AIH16xBi6Z6rbxxtHzIhFapm66MOnqaLEsfLQKdwNViYZlAfmRChF+TrZ3jCCX7C9PNRhGOwLTkSfb8aliqynYBcklHmp9W8ADYVx5S+fZzI0CVGsQavCtJ4+VR+koweo7ImQjjg4kX14s9LjLhTB6GDfMNeSUu9BrS8NAQrezt/dx87c/mRpn9YpGDVwNhLbDcxop48ee6h68mXXwNXz8OGwG7DCS2LgSaxVlK54HAP0VZB6aO7za9OVojU6sCO6IyBr3p9/7wCFKfHMmBtXFgkJvwWf4B6O7II5WW/3Ok6s8kDKHqq4HhWg7hG/elGGtFPdkRvz521geECy5hQS/Kxj2B0IGwfzaJb8Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(346002)(366004)(39860400002)(136003)(376002)(451199021)(6486002)(52116002)(8936002)(8676002)(478600001)(6666004)(54906003)(6916009)(316002)(66946007)(66476007)(66556008)(4326008)(83380400001)(6512007)(966005)(38350700002)(38100700002)(41300700001)(44832011)(186003)(7416002)(26005)(6506007)(5660300002)(36756003)(1076003)(2906002)(86362001)(2616005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zLBLWeMFd37hgwcj00ZN9xy6QVBjB9x135z5vVyGtJEPHGZ/ygkwxbptLIcA?=
 =?us-ascii?Q?OZ6JF7rF1e0UpX3z3T3H2oBCkXw7eh/C//ZVrJCZJ53t9k/YBEjggMHGmQXW?=
 =?us-ascii?Q?isCxhapS34V56q1ba3ck+KrWuCFc4BXOD6AAewrev2wp8MAZxSaJlzjPj30k?=
 =?us-ascii?Q?eLlhG3V6n0nymbOV6wEsphT3Aa59G2nTWsaYRU2VUvL2TAQjmwzM6ReWfmEO?=
 =?us-ascii?Q?hcSDwKDBOvLX//sjCcWNwslkNIMCb9Oy0R2FYoKGjtl6WeWqYrQBz0IJ/4OR?=
 =?us-ascii?Q?GcYvdQA4B7D5aHA/Sq+NW3eovHVC8KGMTaEdZY4Kf7Bwp+j9XP/oRS/rhuG8?=
 =?us-ascii?Q?/szIjX+DFXQo7pX1dKV8xZ9cOHv23vK1TjlpAxCPATcHO9+AcTQoOU4jz3A/?=
 =?us-ascii?Q?y8+TYM3xbq0hJv2W52fctKbRQLSSXuyq6NpwwcLt4ssPLwpgM36xFu+zag25?=
 =?us-ascii?Q?qkyFWns5NBIKR9IjdTBLOR1HQvqid1ipV1eZuY3U7pPmaZ5V5qLHMLHRn7BP?=
 =?us-ascii?Q?8NQhwKHo1Wl2vPIWQUOraK9oGnPRARYX0Q4XWrNAurYEpnuh8oMhDKOWuCmP?=
 =?us-ascii?Q?ETyvYSLrHtNpWxwygSqg1m2gTLaGbJRKMD2I/pF3MQYttRDoK1Gx+wrLDNpK?=
 =?us-ascii?Q?g2bJvxiqaCQlpVhKVQ9a+rLDusDl2409+7xCkWxJ5mUFt187E8DlNkws8KqS?=
 =?us-ascii?Q?TB0d4KGG+lTe6PV5n7Mjzn93IS6TrdMULUjNw5EtxxdpF/98oDrG2jQWM+/J?=
 =?us-ascii?Q?vVENs9kO4VTJBqnbLUVQmRXPf2r0jdbt0mA/gF3QDR/XP/xIdtDxLjOyPkWx?=
 =?us-ascii?Q?xo91r9N2QH6lRQZeZUMLCtUVkm6+BThwvYlOfta8s0O/utMu72/M8aaqWu7o?=
 =?us-ascii?Q?g2fCsXo2yQISy5usA95lRnu1EUw69VfDEitNYp64VI6x2TRbwi4pWr5xMaSv?=
 =?us-ascii?Q?QvaRL6Nc7hOeiAaWJcEMvOy4IkgipjLFR/gwaMzVgRK5JwHflA3WMCvUV0IB?=
 =?us-ascii?Q?EWfyFp93Z4lMpxE3SYQKqgSG0yZ9xUjycu/ypOV/QDO6ucRoFrrIwsi1+1s9?=
 =?us-ascii?Q?q0jBW5QprM1xoLBRzz9IPzw4mBwugXZvPR8xiCcko0P9Hk5SRfrugPAUgJo+?=
 =?us-ascii?Q?rbWymO2IFZ7XjQ4qpbwI4k0cbEbUeByoCOZyoA/yZXs3pupK4EqpaHCpOgwb?=
 =?us-ascii?Q?CZl5xNxDiwxTZMD7eqwew5NCCEQHDMFiEOx/nTp2msjg1DOhaBjGi7J9DfOm?=
 =?us-ascii?Q?8zuZ17f3NTRIBEV8+dt+o7M0RjCNNfJ019X00wypJhtfKVopfPLrCvvTIJu7?=
 =?us-ascii?Q?fH2rgwlfrkM44l9tfHp8VuWCwynD9DUgYC8oeLj1gG990vHyGj2SOVELvCP2?=
 =?us-ascii?Q?naMPIvMsDfSJLai6Iq1IKHrvXUVgGBYZcYnCkpnWuSRbjfzw+xOFL6eT21lE?=
 =?us-ascii?Q?+3wl8UbLOxW7FQqFuPXGb6rgCwGeXhAdr7uSmgEl8e+RXTp54jLp5F01m9wA?=
 =?us-ascii?Q?ddHFu/SrZE3pYuHe5RPOfyWqX6NQqJLLvdrBTpEd1nINp1qz4+ySDFnFhn8H?=
 =?us-ascii?Q?w9g4EQ1Hu08VwhVYZmSUQOe4QHX0W9p6hCXaagRhy4/78vWqtKQMymRCZqvA?=
 =?us-ascii?Q?Ew=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1492fc26-3a30-4549-9cd0-08db92bc9441
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 18:24:44.3770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6okMcVweiP5JTOQDLGMhx3viDurtj3zcKMTVouhyIL7n46Op3/btp4vLcwiY/ckZyECyp3ONq1/VNpIQtkjWaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6839
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2GBJ+rbPRsp3X/RmV5aEbScW3UBRckMkVFnhXp+Ub3A=;
 b=X24aenr5mrNMQTn5NtyQk+nJkpH3wde4TlU9mA+xElN6Ck2WpGMti5MU1TB+Ri7Lo+ntpuPCx5alDCUcOTfng8W4MZsSU+6pEeQ2K+KM5YzF6UnlRiXoXhT1RrH+M2DlLf5x483kfjuH7r0sVADkgZRkD0EfpQhxbvZ9PeHgRDY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=X24aenr5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v3 net-next 00/10] Improve the taprio
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

Vladimir Oltean (10):
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
 .../tc-testing/tc-tests/qdiscs/taprio.json    | 100 +++++++++-
 11 files changed, 423 insertions(+), 29 deletions(-)
 create mode 100644 drivers/ptp/ptp_mock.c
 create mode 100644 include/linux/ptp_mock.h

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
