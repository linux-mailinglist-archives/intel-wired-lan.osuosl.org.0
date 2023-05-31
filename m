Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E4271889C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 19:40:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA64A61215;
	Wed, 31 May 2023 17:40:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA64A61215
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685554810;
	bh=3pntlnq+BQGk+t/Fh7gYbdMJQEg5r/4OkIKplafq3ww=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FT21nP7Qmb7Xc0sl2G+RjkdAapHEKAHLwm+XDOL7UZNHzT6uFqaHOpvElXHZtZjSL
	 JggwXKU9WqcTVpO4dWztpT4XsNTVPz1nMKsk4ZqePqJFUwQXM4g1F2W+i00WhPPRKu
	 4gOvGko6LjWwu1zIFjrrUgnxwHnU1TCbLZnWqF/kvobA5V8bDnXVNnnaTaV79PFllB
	 7Ryc24yf3jnI3c/pDwWvesDp21eKhFt+NsdDpXyf/mjLORw1Q15SLLz5jZ5hlT1W81
	 f0tdqQTZRAF+0/NrbDLjERi602b2zF40fe3ztLWYkvGwR62VWx5fQ3VBXzQIODonwW
	 X0BfwO3fK38hA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EklwniP_Z10A; Wed, 31 May 2023 17:40:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C95360E3E;
	Wed, 31 May 2023 17:40:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C95360E3E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E9371BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:39:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 061DA41D8F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 061DA41D8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SEc1M0rN9fTL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 17:39:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E137341D8E
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2042.outbound.protection.outlook.com [40.107.22.42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E137341D8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:39:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nAlCv4ox4bA9xDYZqdPSd4NIxN2E6JTWb6eNw19ZS0omTV7jRgMSFdNoDxQt2a4ZKj3fzU+bJALYS7OKV0bvd3DlxZWYVEbiC7eBJ5y7CuMUchORLEAkFFi4oeUHyo6S8djLY//jNlZyVDSgELSm2eolykOR5Nr/1bgtmpJd+MZ0C7iL2QZn3IloFejWpuLRCqrEVoxnNcVj0DbqQZKIPRg2/idhTfamHbptfFeZSx/jmIdUkgqq7jQKwpIKOKDomUVcs26GnzFdsZdy2nUqZLFqvwgGi1VGIY7Km+o04dZ12tu3O/rKlmk2f39fj8pDuaG/hRbOxaCMCtkv0mcEUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=90aNbYjsFEH0b2vRKI+gD4P2mkOvRG3stxDnfBaWs+U=;
 b=GV2QRgahxZYJuj3BVJ0xsTaru4DYCLIlWcm1yRZN8/cwdPnLu2LX/fEtHyg6jE2343M5RtGf/LDFPSyGucCOds0hJ6g3uWB/wuat7fX7L+86Wl1nfocNjE6tFjr/k1V8bSOD9vEWPVud8XOCCInPyFnoRwZwjJK9Qs+DhbOp5Rq53tFFaI8oiSgAevhYCJtccGFqxhO0ndsSxXzrB9z1ah4zdXzmq0QYYohF1fmqgWhIp6TOUkgwd4/KMK2W6tihlWax7JhzdvmeuDnO1hha7S7n4qxS4O5nwfZ/lwA4xG4uqeYQPgJOaYhMBdXyMthe9Yny/lzZTyDdQ/DGbEuuYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by VI1PR04MB10050.eurprd04.prod.outlook.com (2603:10a6:800:1db::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.24; Wed, 31 May
 2023 17:39:45 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a%4]) with mapi id 15.20.6455.020; Wed, 31 May 2023
 17:39:45 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Wed, 31 May 2023 20:39:26 +0300
Message-Id: <20230531173928.1942027-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531173928.1942027-1-vladimir.oltean@nxp.com>
References: <20230531173928.1942027-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR08CA0104.eurprd08.prod.outlook.com
 (2603:10a6:800:d3::30) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|VI1PR04MB10050:EE_
X-MS-Office365-Filtering-Correlation-Id: bdf7b1cb-ec94-49a7-6396-08db61fe05f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T94K+Jg2DiVhsNZiRuthS8k3vw1TfjQBDYkV9kF/gDVvBDbLhtEpuiR909ZZthX2F9ZQNRDM9HctVNaylnCvETplCJs00XCR6J3aSVn/2KSxmqv3Sm2/67kMEp4tNIukW4ZP/BD6AZ/INsin8qmYSn0BN3JXcNFY2BGCvBStls/TkyxIxEW6P6qOE59ukioCGE6wfw57IFYWzcKutsoDQMqBE2+MQciCQbA8AYeULqw2YCP5u3aPu5TcaLRDzKneJOMb9a0HCsrD63MeKWZ7HomR3kEQJqwR9FELjqnPcA/latZitXG0aT/vXIOk7ajSh6cTDKbDREVDjRwNJWGaskS08Y/qKYdz6rGcOoeGtEIAyj3Xmfa7eeyPk7F75w1aK1EL/4f3fbgK5XNcnOrBxnyc0rLD8PjbXNtbusJPo7Fag3PHHY0qKGi4/0KAGtoisFDrEd69RsYkHBSfPqQmHoYNEeRcVk8SNF6f2qf3n/GmcErkCqdRkaRy3LMjHObCnm+u9qcJJ484wRVojpV1W0AjlMtCazeqXMEf/ePPqWsZjWi+wkKyMuM2tuYcE2qIHaLiCKT92s9B2Z4D2djLN7S0XPd3DEAKAn0+uqgDn+9hfM1z4/V8qjjCkW4CFYND
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(39860400002)(366004)(136003)(396003)(376002)(451199021)(2616005)(83380400001)(2906002)(186003)(6666004)(6916009)(4326008)(6486002)(66556008)(52116002)(66946007)(316002)(66476007)(54906003)(478600001)(26005)(7416002)(6512007)(5660300002)(1076003)(6506007)(44832011)(8936002)(8676002)(41300700001)(38350700002)(38100700002)(36756003)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jwuC8KjMP/HIqGiHurK1r6Wai/19KJblJiQOZhKyk9BpxD8HwbK0Kg+HmHmu?=
 =?us-ascii?Q?7lG33rbWzfXwPrqAxgPQe3nA52oKcuPfV7QqLqcCYla+a7WRnQuWTl6RAffY?=
 =?us-ascii?Q?Ka5YxPHalDvJRWQisFxGfVL/ZHLGDEok+cLpU1hmttteZNvtiqOH5DUevP84?=
 =?us-ascii?Q?rLoT75G9LUDYCZ989NVniLvf5nYd6CzYA7VqC9Ko0LAlbDEnILAk45qK/bqt?=
 =?us-ascii?Q?b2La5r+WGv/cQ5APDNC6OgDXOfQNC8dbQ0PKD8hkwhZGrrhFYpMihDxFisez?=
 =?us-ascii?Q?C2K0c1ofdVnjSyaA0stQvNSELGSrliE4B4xrp93dKxSEWqZinoWDS2/JdWZv?=
 =?us-ascii?Q?mdBn9FKp09F5vRT3JsIWhnfU0PGHz9FrLuQ/aYk9Su+jYlXWgYONGkDeGgZT?=
 =?us-ascii?Q?Z1RHsBXFepHJxCvwQRHJqOWt1VwdjpJiPzXYjy5BJgU/XD+IFAYig3D/MGMb?=
 =?us-ascii?Q?/if1xvu93TyI0RVONZuF3phUmy63MufHwEuvH/Cj5Q1Fbk9tK2GF6rxaFkmY?=
 =?us-ascii?Q?SmmtjrUPTsh0fBJZc7aaM+QUaVWEIQVHZJ+jwuretViVcL7vIoLRGU/1gm7z?=
 =?us-ascii?Q?GW5Qj4cuYfIMEZ+pG0lt5gfHS8hW5zUor1d/Isr8KbOpUCTdnYen5qcKT6Nu?=
 =?us-ascii?Q?MjzNoL7hbk+eCvfzB3bX7Rxr33pxzjxiTWhFUD5SYclbLAvVL2LRjJEQSHb6?=
 =?us-ascii?Q?8B9DbuYDtSSdoFpJ5LLS8yR/mEVrBtSbYhP19ulv31DBuZUVBOK5VX+smMFo?=
 =?us-ascii?Q?tFgTWNtrIzzARfe5WVmqUA0NlxJGdf8RbHYXo6gUP1/3G+X/611ZJDlzJtM4?=
 =?us-ascii?Q?MiNe4yLXPzfjBTB12pfZNKzVIg+lgqQYbfxymwpIgg0WOHlCtfC/HtWdLK33?=
 =?us-ascii?Q?S6zjE42tDHj0pQhjXHlQLDFjtANWXgPjmZYqRTBwcG5kpyD/inicw9DqYwUi?=
 =?us-ascii?Q?+vlXft/uiB2bmKkIAfj/LGC0I5M62zKbzXSkJlw69mHCywSnD8cfM3be9Hjw?=
 =?us-ascii?Q?xa9LAiFRJu/C9JjIBrVG7Gy4sJN8rLznAcFfyz+IWizp19LZqmCDnbw48WWr?=
 =?us-ascii?Q?YFvdVwMc8t6AGDzendIgHLOIZiMvfM5x0YAv8a11AtJeGaqsSkSKT1bHu0mO?=
 =?us-ascii?Q?e65DzUGQoU8zuTxWkdYFxZHzkyPcO7QF4Tx9FHmJn7QOMzOQUtZZwR2bazmE?=
 =?us-ascii?Q?35iVR53vMj8Khh3vPT1JlT8YYcoVTHMyZj59MM7V46ipduUCbZsxce71l1ZO?=
 =?us-ascii?Q?kM5hPEZSC6MQwYzEjOx39Cz0a/2+qTN8fqZCC+Frev5Z0mkcLO3B95vTA7Wl?=
 =?us-ascii?Q?91m16Gfn50DbcB0LTemBw8HoJkcGLaDDVjTnSjr3wI7XLUGZmFGJA8Wv2XD5?=
 =?us-ascii?Q?U6acmI2qORXveMzjBWXqCpaePLbJxKYV3/URzC1AIzhtQf7TwhEDw9VBy3fR?=
 =?us-ascii?Q?XjjwTI/yRBP9hcnSqcfWqK0hFkX/ep2KhWLWFXU7svJurH3Al3xxORuc42+P?=
 =?us-ascii?Q?fw+eESmqBZ9f/Vs39R8eatnrdQilp5g3PjLrEXArnDsIuTWBEJgkx65LzMZ5?=
 =?us-ascii?Q?dKJvYd98+bM5UcZkdN0cJnXg4PVciYluknSrZexqk3ZpYV7oCL7tdLodU0z2?=
 =?us-ascii?Q?Ng=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdf7b1cb-ec94-49a7-6396-08db61fe05f8
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 17:39:45.4658 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NA4TMc8A0k0G7h8Vcl4LIshVTn2PO/Xi63OFJGfAAJXUXL1TPyIGF0ioeR0S75jpXoXnF6B3ZnfbtY9+lxpTxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB10050
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=90aNbYjsFEH0b2vRKI+gD4P2mkOvRG3stxDnfBaWs+U=;
 b=KhgGkPqSL9ig16TMLxBXKZ/35IQhtqgYHz+6cG5ObDret59duRq3AlZ9oMZCS24FAvbG7a0UfYQp5pzyWVp8BA9Mg7DiJZ016ecTuoYNmByMStXc7JFWkYU9Fs2epik4hKUqNW4ZQ6H5tNqInrxPkak8vmtIAVdVTySmxuZqeWk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=KhgGkPqS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH net-next 3/5] net/sched: taprio: try again
 to report q->qdiscs[] to qdisc_leaf()
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
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Cong Wang <xiyou.wangcong@gmail.com>, Peilin Ye <yepeilin.cs@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is another stab at commit 1461d212ab27 ("net/sched: taprio: make
qdisc_leaf() see the per-netdev-queue pfifo child qdiscs"), later
reverted in commit af7b29b1deaa ("Revert "net/sched: taprio: make
qdisc_leaf() see the per-netdev-queue pfifo child qdiscs"").

I believe that the problems that caused the revert were fixed, and thus,
this change is identical to the original patch.

Its purpose is to properly reject attaching a software taprio child
qdisc to a software taprio parent. Because unoffloaded taprio currently
reports itself (the root Qdisc) as the return value from qdisc_leaf(),
then the process of attaching another taprio as child to a Qdisc class
of the root will just result in a Qdisc_ops :: change() call for the
root. Whereas that's not we want. We want Qdisc_ops :: init() to be
called for the taprio child, in order to give the taprio child a chance
to check whether its sch->parent is TC_H_ROOT or not (and reject this
configuration).

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 net/sched/sch_taprio.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 8807fc915b79..263306fe38d8 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -2433,12 +2433,14 @@ static int taprio_dump(struct Qdisc *sch, struct sk_buff *skb)
 
 static struct Qdisc *taprio_leaf(struct Qdisc *sch, unsigned long cl)
 {
-	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);
+	struct taprio_sched *q = qdisc_priv(sch);
+	struct net_device *dev = qdisc_dev(sch);
+	unsigned int ntx = cl - 1;
 
-	if (!dev_queue)
+	if (ntx >= dev->num_tx_queues)
 		return NULL;
 
-	return dev_queue->qdisc_sleeping;
+	return q->qdiscs[ntx];
 }
 
 static unsigned long taprio_find(struct Qdisc *sch, u32 classid)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
