Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D1271FF7F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 12:38:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 688594204F;
	Fri,  2 Jun 2023 10:38:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 688594204F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685702324;
	bh=3pntlnq+BQGk+t/Fh7gYbdMJQEg5r/4OkIKplafq3ww=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dnFa9/ttZ6nnyi+Ph/NSaLdt2ZAOhAyh9c8XnuzK0IemtFkOAbIiYQlNPMqNt9bob
	 ILe+B9EPoUjQ4xgdu9vG8PY/SvosDs1NFWiHY5xVrQWaU4bRQnBesgBJ5s+x+zIXeX
	 uG9LrdwKU2QHC1LIRSacXLyNc0wOf+BWpoSP0O9IGNxmbtVBbzaOqZ7FmjOIV8/T2b
	 oi56Cks0p1D9v/KXXnzsOLOlzpT58IrtZJqt42s1oL695Q62C9hiJwdZY9B8kg3BuX
	 yvP7UNSLZos/8sOleC2uYr8YAl6TdwBuqfBoqmt2KKp0tJRXd6Ga/qBdHO1Ay9T+W+
	 StM6Ev8D871Bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rWRIU15uMYJq; Fri,  2 Jun 2023 10:38:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2614423FF;
	Fri,  2 Jun 2023 10:38:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2614423FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51DD71BF29F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 10:38:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2524C40A55
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 10:38:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2524C40A55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kCHY3lrGxar1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 10:38:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 510D340186
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2055.outbound.protection.outlook.com [40.107.20.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 510D340186
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 10:38:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z5SDzo/B3k0LcinO8ZGzjPCcQn3ZYW+O44C/acCd9k5/KuYbEDCvvjYltH1LFJ+HycIYfNjrsh97PqIEBvellcjxfgkB7wFY+26PL+G/BjJdHR7mezcMW9yWzHaKlUaUs3s2zCxMr6FwZmITGm1GdCJG3Fuzltcw0o0ETWtGCorDQ/coHDKQ8OFOpeZtcDZJd3s5k94kMQkHtEWT13JU3v25fb/YxGh8u4J4nT28+JCHHjnZ5mRVwygusdtAAa9Z9+6JYzp6IjMzivQSSYGLxIL8xO2i1/XrjoblY0B+2xlmtAwb6y7DVB7YSahc0V0BXJInuMI6DFjKLX3GrnKTyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=90aNbYjsFEH0b2vRKI+gD4P2mkOvRG3stxDnfBaWs+U=;
 b=exa0jmMrbSuilWB7at2RnXbv8ex7UN7vgFzP0Ga0O5OL+JNuF5K4Kv8403/17X61KTApGHPv7KTFc2nNvz8FR6l++PLfWLnhljFbzH6mJL12TkgU152Ob0qYP8YQ0GZdVH2Lhp2MCFzSAudEeGGFWkiEprsGHTAOVyp2UVTQ/+ANBIDfjD+68qXtOu/EqZ9oiQOdrHX/78M/kgYgLAGv92DCOuZsWszTXfuG87UwT0Btami140rMk+ZhtqX7PxZPTt3AgieTZifSkU8ZuptjaeIdtzC+nZ3rwZcGo2nAzRK/2xiCnOCKSKQ/S76jw3vqi1tR4sqFT766eHiWl77mqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by PAXPR04MB8926.eurprd04.prod.outlook.com (2603:10a6:102:20d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.24; Fri, 2 Jun
 2023 10:38:20 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a%4]) with mapi id 15.20.6455.020; Fri, 2 Jun 2023
 10:38:20 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Fri,  2 Jun 2023 13:37:48 +0300
Message-Id: <20230602103750.2290132-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: BE1P281CA0095.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:79::10) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|PAXPR04MB8926:EE_
X-MS-Office365-Filtering-Correlation-Id: de803088-807a-4dd3-38cd-08db63557bb5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cb9Zsz+qh1ZKRItWN1qNNi4q2uj7kgEwpaAENDV4j7YvLrNuGZD0IpbbznyoCUC9LmjO/HB3eBcwkXDufHAcyl+MYwf4511w1qUYL8RXPwnn6si4fyT4P8hBjjBQPK5uFBrmCmKi/1iegicWky3sZt+lT/WTHocZ31QiP+AxwahXx0I5aHiTPSmbHQhHeXXbvpqHD+664XR7ASUGboBgF21aCWKqZf+7c400l2SpynwrEwGW2y6+Jo0K+xjqDr4Q6RYYLWv7Zkog5z8eCGid8pqxKDr8e8/sr8zC/RCt6Wc9fA0bQYBobiAuFzkJ1n3wEiCk4t2XKQWRQhuU2TSgEV1UdnvcunALMqQCD2uzpnqkI4QMkKMroEVVG63WodrTn6HjflsNEbiJC4dMA5hWF4oHelOE12RwbZeED7GVqBtkCOovGHjvkhWRZySPmAQWrnBmXlmEhftMVqFxPBvggRvrniellv8R7byreKrneueAKRAyr+uuszxvtHDhlccY7wvzxK0vluYVsoeLED0C4mocv3L3S2Ygub3MlI001omd2CjpO2id4x+19H9MappsqIKu+NTx+oIOJN+5wviPqOg0rT2omTwBJCjrpAB5ruRsA/BvWd3HfGJkjR+pW3Z9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(346002)(376002)(39860400002)(136003)(396003)(451199021)(8676002)(478600001)(6506007)(1076003)(26005)(186003)(6512007)(6666004)(52116002)(6486002)(2616005)(41300700001)(83380400001)(316002)(2906002)(44832011)(8936002)(5660300002)(7416002)(66476007)(66556008)(66946007)(6916009)(54906003)(86362001)(36756003)(4326008)(38350700002)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?irPoHh5sN4Ff/dRLmXeKKEX5bn/K5ptcoH01sTqGWwuZWHftqrWIMe+Vr6Ve?=
 =?us-ascii?Q?NfULWcpvE+/O3aBxHyXKjSXFHEwV5X6Na5SFD1zAkF54tntksBa0gRA7XL5s?=
 =?us-ascii?Q?WpR9zzKXvdpbUFE6m6e31Xu40/l0yHqvZk/bSN3pn2QOmDdRLv15LLmaAgWT?=
 =?us-ascii?Q?pV/w7z5z4BXLkOxoqA86yFoHVq3MkOYSRdoQAjH+JYlk/XVppmpBiygUh9aN?=
 =?us-ascii?Q?rX5uGiAG7Jlj9yzuYpekJaQspVLA+ZNJDwZM/PUTrOoFoCHTqEbArMsZIkkK?=
 =?us-ascii?Q?k51SX9euhIGC91T/g4xFb9z4KspZ8QJMVq+5AnvDfYP+O+pCRv0Jubor8PqX?=
 =?us-ascii?Q?yQXIamuRq+eN4LjCpJvATaVfpHq5DjVUak07Ja2o43bGHz4eEl3FqVCTUiJo?=
 =?us-ascii?Q?DwX6LZc2w9T4uTqsVsPF279QR5KmWLYgkGjfZYphQvoHXT6iBiJklSmVyf0U?=
 =?us-ascii?Q?Upt1PR+PEtASZjKMBRMXbRGfvuv1gvcTuh2PS8PUtD8LLlyGtpM0D+ijp3q7?=
 =?us-ascii?Q?fS84pOFvEIyki2wKBqmxM73nLakBt7SYXkdSCPqFvEcWeGctyNz0HHUvcHeC?=
 =?us-ascii?Q?6BAjkgKkduNSqYZ5xhVbQKgXAi33X+RNVsMrEheCL/KRhQw9bg67xtQwifAO?=
 =?us-ascii?Q?KFwAyV3bYekcQjTUDfL1/GLGEDKN8k/DZ8BmEEY9WmiNOmtk9dd//+UErkDN?=
 =?us-ascii?Q?Pas2zS0S5+JPSC+dm02YkZlhPULriIiF2Fl8Mgd/uwFAbmZD71dajX3BKoxZ?=
 =?us-ascii?Q?/XCm6P9BiSI6itawfC7T/N8Xoc9Ro/Z8mfo6+3CZTqtm4hVmRA1FvzrAww+Z?=
 =?us-ascii?Q?I6I7mGIUZfCJoy973tfFIYEcPH8mJK+mLuT5DtxGpB+nnuTXIy6NDdsQDL6e?=
 =?us-ascii?Q?USXYA/7x7fb77U2+ujMcmgD0QWKXece/dtFh++OQS1xnLHAhzogQwy7hx5eq?=
 =?us-ascii?Q?ljjIaAo8qwwfxYe1F2zGMq5pN8NWXDOzJKlz8rR9BRYBvEvIHyxOyiT0DOWT?=
 =?us-ascii?Q?cRFRTdwCqPNGym/JV4qZ07g/yDtST4kgY75gMu6AKvR592xkJ6Ev90gS2a6q?=
 =?us-ascii?Q?XUyipJoJ78Sp+iIRZvThy141GXAYIyD4hWaSxrUph7pFwCStjbqNoZB4RR0A?=
 =?us-ascii?Q?DxyBRS2cb71QxPS2SiCoOHmUYKiJELtjNvykjkwFh34CPsVABnuZ33KLipuP?=
 =?us-ascii?Q?g+/pdNjT61ENn7gWtTZzngVdYbljJ/tSy8lmDYEFCd6Baf9JVl8mB6k9uXp0?=
 =?us-ascii?Q?IvQ8opIG4W+PjmLLMGNKzr38KiaK/hPE5ig/vRyyattfJaef546sQ0i85lX+?=
 =?us-ascii?Q?1H5ImKfyADa0Pn/brXnGHTgrf/nuH90EopmavbiUQRNgBzZ7pWO0B20O/4EQ?=
 =?us-ascii?Q?GMvYasbe7POTN33uKMM6WlgTk5sOOiT8zzq9grxLBejRjtj7a2oLYaRR7T6s?=
 =?us-ascii?Q?C3kNSDQwEhozJwhmlUEhM/LFzgbbT9K+quJEdmzQ/F9zxr7fw69SP3PcRj9n?=
 =?us-ascii?Q?IA5Tl63WL+XNOJsdw1qZ6aVrwCXLn6cenz1dnwEpUHCIa5A1uanJ/EaZIV5p?=
 =?us-ascii?Q?fKYMcvLuBANK+WN29soHVSMPA5WkweB90vVj0g5rxLMqrZ9BlH258OKU3Q6N?=
 =?us-ascii?Q?cA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de803088-807a-4dd3-38cd-08db63557bb5
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 10:38:20.3559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vsWKN8GEDeBS11iNDT0L0LxBZsyRMUyfnb8khdtrZE5qVDq9bmgpJ+s0bAJxdBMnYL0yUGLeOSiaFJGGrJyG2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8926
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=90aNbYjsFEH0b2vRKI+gD4P2mkOvRG3stxDnfBaWs+U=;
 b=pEVZs/rR4jbQTCSIMfVZiPZbHZysJLfXvDtQfHbSfL9oHZ5FcdFDigAtnfvkzqwA9lYUg54VgNkiSRql1zWpDojKjNwQlGnMAj7XNEX+bZ9u2jcEmyc+EhYvf5svhxzv9QB3gzIhimOlQ2j2++icUviGmYLYYk0D1fN2ipyFAaU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=pEVZs/rR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH RESEND net-next 3/5] net/sched: taprio:
 try again to report q->qdiscs[] to qdisc_leaf()
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
