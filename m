Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FB672EE5A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 23:55:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 839F04097F;
	Tue, 13 Jun 2023 21:55:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 839F04097F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686693318;
	bh=1I/zzE/wZV+C2OnzqxRW4ISL4eeP8Jq4JFeSs0SVG7k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bYlplavuALPmDF9ZBVVuO8IBsE04qULFR6+XuBS+c2ONkdaM/B8hcyoFlbr+Jw9D7
	 XA/Xda0W/2u2GC65CceRl32C26pyNpyfyFs4GyBDTTQe5PKEW6n5VrmRv6+XMAcN9y
	 V+s7TZWD0mZyIg55FfSva6qp2DdUCuZA17435ev1RDOaO2N06sKghevpsi4j8HvAhv
	 849/cHV1/iotElvjAyn1MjcARpLGqVsQTK34x9+gcQ7EaLbx2eChPCGhwEJgaJpYnr
	 TqbNOs/xjlPUxlxk/mhzEI0SRYj7mJ5RYOdzwalQy7k/pXxHotlgDNBIDt3ZXVOoQz
	 AtKqrvcc5tq8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LYvgC1NFTL5A; Tue, 13 Jun 2023 21:55:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F2EB40944;
	Tue, 13 Jun 2023 21:55:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F2EB40944
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 85DBD1BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C92C840BFA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C92C840BFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nLOvltKKz8sy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 21:54:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C77A740BC2
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2077.outbound.protection.outlook.com [40.107.21.77])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C77A740BC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:54:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c4orWfmbKD/99sp/B+qWfo7//cl0MMiMnEGicrwlw4fG8L2Ri0TlToz97yhUjE5PcjdfxQh+aMFerweD3MV7smsdCubcjA0j+9jXGprdPULuL7jixZMe7eWF95D7qYa0/ykXQxvqVDhX+M0xZtP+ocxtGPn5ITU1x2+WfH1tqBmwb4ZJlaOW2Lemx7Ubb3LbBJM2OHD7h7MdbaIEYo+8WE41Oes70jK2XzOK87/an5BjyETY/PIz1pRXDXxZRG9DlQA6bgHarzGULafhh6DelT42Y7L1tAxmlSlOA9aYZH/RVY3r5HaHtAO7VeNR5PysKuoJ6TTfdYIGj20KIqC8FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gXqsxyTcNdi0rJ3gF6pbv2TOSMGV5sZGMFTjQSS/6+s=;
 b=eimiNss3pfyn78wVZZvHexGQyc1ihklh0c2jkTHug5+jkYs5FZLRKZisPU2OcTmd9/JNngloLRzHtVXn3/fPiDFHNzfNXEV7UbhqRXL5Pz85rzqQroIYWM4FYMf8nOcA8S/yzcvq0xop/pfLG1FNNEOYFCXrXJuGvoTH/7ODkog8yMX6UyLyfyjNtXiguKQw4nSqTz8RtzEi6EQGw1ycXE10aiDw3CngQLTZF/qAe69A7/Q4o81DfMSTIGzS6nIKWhfNf4v3WYz+59SWAfAgk/tDt+fzZyFKIk5jWzG9ToqX3ub6OYxH2CwovjqN+7kZl+3pEjTiyayWKDiX1yAstg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB8081.eurprd04.prod.outlook.com (2603:10a6:20b:3e2::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Tue, 13 Jun
 2023 21:54:55 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.045; Tue, 13 Jun 2023
 21:54:55 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Jun 2023 00:54:34 +0300
Message-Id: <20230613215440.2465708-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR04CA0044.eurprd04.prod.outlook.com
 (2603:10a6:208:1::21) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8081:EE_
X-MS-Office365-Filtering-Correlation-Id: 402fba01-dace-4e23-7666-08db6c58d2a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SUexz1rET30jwIYCf5nr0iCVDDX05Ov92ybz4pllw1OchIIMOBfuWpNp+C4B69N5eLuZQw+VDH/yWivBwqAO1zPBxJSaQphzZLmEBh91AbVtio2fhtcBeo9BUWODkxsIY8pfRDP1bNbcYD97rz1yf3HCo5CPcyxGn5NGT6PH36neQQIsdWpHV6EKSriPZd4z/tVKg3BkiD4KhJgxEegT4eTabGrCtk+VcbVJsWCmfHh1HRevuN9seA0Up1sDqzngqZrLUL/8LJkMbxvx+Z6Qh2GvEseaajxSTdInvf9tf+eqpPJA0QUjKX4Or2SiMBtMrd7pIvLI6iG4ARBdUDcFLQxWEUZQcCFCBeIS3HQqjtTiNDDG/Xw1UjRCbz1kQnWPDKD8/IRKU1OySrTjDwFfor8DcqC9JHUO829FWO9pM55RiXumB1G6KuVaNXqjmFvqbpkLsThFbiQgATNbzZzlhiQMx+1tJJ9YVu1q/1rKSM/Ii28D5t8L+R6CLEmx9hVfPCCzkHTj+TUSyrAFLF48b0ujsOYLRLlFy1X0nyETbERtqTbHkOQR6Nc6c0OeSCPqTOOmpypKUxTIwnZOObfChiOaJDCvra8Dd/EuF/wGGgdfdG8g4etNpM15N84CDSO1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199021)(6916009)(66946007)(4326008)(66556008)(36756003)(186003)(54906003)(478600001)(2616005)(2906002)(66476007)(8676002)(6666004)(316002)(41300700001)(86362001)(6486002)(7416002)(6506007)(1076003)(8936002)(44832011)(83380400001)(26005)(5660300002)(38100700002)(52116002)(38350700002)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HdfRJboseWcgx/8M/zLytk9HdfK1gfoDgu0B1SHDOxfjQT0ABl0j7N7MHPkN?=
 =?us-ascii?Q?F1+pQvLoNh7o1y5D2WcDJldy1pwh71GdAmJLisJujzbUTvmgUYM1e5kLdWwY?=
 =?us-ascii?Q?AqyxIO4sTleXl6ESORSgDCkBqN8hH4/E2HBw1NuIFfKy3YV3Ekl6RO/67IPi?=
 =?us-ascii?Q?4/V0vtw/1jJMO53i7ideSysayrI6L4Tng7YQnEjTLuIL59sIIwAFQXCuSm5f?=
 =?us-ascii?Q?ejKQch2g8eNc7xv9eWHJQ//b11Z3oCC8eEChIvtNQ4XuW5XgiIVddlHQll9S?=
 =?us-ascii?Q?9Tx25PFtAaJo2ianquIkwNJPyyljyxdl9vBCwhirU+HopAwdS64wqUHOrR4C?=
 =?us-ascii?Q?m/K/GENqWVssNhIRi/8df1Jmz0y8sbC6/Y9OpNCg2S7hmUh6vCcmhj6iMH99?=
 =?us-ascii?Q?cmRTci2irUxVMAeRcYWy8r34P5QrYIIv8W/3e2cW1W85daHoDnYcFYPY0wH2?=
 =?us-ascii?Q?pdonES/VuWsZKTONq3A/TJzNii5s7QlYI7wutyzz6uwNHvL2ng4/7mCyOgUI?=
 =?us-ascii?Q?6PrPWP8FFdSr6wXCMCIw8K1grCYu+N8BGIa5wKVyezg7uzSxLmlbFNWVEw9O?=
 =?us-ascii?Q?648RdGTL8QEeeirN3dA6+vgrz83pxAhmCBFa+CdKNgyimKAnOy0q41+XDV8u?=
 =?us-ascii?Q?8NCfhYAKNwluva3Z3e0q0pWabwOd7xgMiyp0r+HHBqXB7D+p+797PjHtmSil?=
 =?us-ascii?Q?5vxb6SCcm/0hEDhXnS1j5Iyc88q9KH/r9pqgV3Y5QwOoZ6XebFjkjbqVksLt?=
 =?us-ascii?Q?NKG+y2+/gkWECMRZgDksgfVbsfe2awNyPVILXiXbbLlHl8jXiTZZOh8PtrYP?=
 =?us-ascii?Q?73SfoAGgsUs2kaR/FMrQoFhzr6UH3AZhEvWLxZs0Ju7+Tk52DcPggv4qH/Hp?=
 =?us-ascii?Q?iIPePEvR/SP7j/ADVLjKXlZL0HljhW+EmG+pN5tGiBZqpLpyb74pZbu7QJbh?=
 =?us-ascii?Q?sOvi34SmVv+0FEWLgT2vC6bd7f8yOF2pK3yKzyy/P6yaNpOj/5EIEGErx0Ah?=
 =?us-ascii?Q?zcEmWWafSUFhbACdpoOIqKNoRjfxdGhJQDVhD+T8I1gVIXxgn2BPzgRgBzGe?=
 =?us-ascii?Q?QETk7DjXn2RKfsKMA/dNNb1lAS/zhUskCoE6G873gJkBPNzHrlXucZqSk6Nr?=
 =?us-ascii?Q?KDSMxPOgfUjjN9UCCIak13hPzOkORkPG9ge4AtkLn4XMwlP1xX3iBoSD92Jr?=
 =?us-ascii?Q?alZTHMjebWe0O+yA4buJ5/Sz35RImXHtxXhHfEOIu/L+J58ApifcxURi8SM0?=
 =?us-ascii?Q?dv4SMuwQGVmX54BmWID82twahyd+srHMsubsThAL8tdsgEOqL9wtct3Yh+Xt?=
 =?us-ascii?Q?yTx1AZsqjL7F700z45jKqKc49NMW4UCXMu/POZIfuXqqpqLPg+fTqKKk/VSq?=
 =?us-ascii?Q?4X+5d5qrprNKtHo9z0/+Fvv7NCpFlDMGsOWKROx5J0qMyoaq9N/y/Jwvd0O/?=
 =?us-ascii?Q?YNUJdQ6MSnQlQoF9OUxZPvr6QhXSPWgOIM74Ji6iQWmnub3zm7sNX1sR6Dqf?=
 =?us-ascii?Q?W7l3icn1eN0jKRpz0f1EQOSA3ns6jb/SKszZIlqkXV9x+LLuCtUtAqGn/tq4?=
 =?us-ascii?Q?WI0agOVEaK+VjAqzN+YkJpDxqEIMO312KaXmhkjzp6dQ9iG/5sIKP+LyU/pe?=
 =?us-ascii?Q?Pg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 402fba01-dace-4e23-7666-08db6c58d2a0
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 21:54:55.1497 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J2+rR5t3sbS26AfIpoRB+C+5skYqmtQnfZOzsQTJ9b+mtK7svSyd20buyKZucd6SvL4SUWv/7ip20AXGFDtgAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8081
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gXqsxyTcNdi0rJ3gF6pbv2TOSMGV5sZGMFTjQSS/6+s=;
 b=EYU5zvnezGCbgKDy4nxmfswzHDNJeSG182E6wh119nI5uqri2/9ilP9CwJEUAeNzqzwTvdUDpi8V3m+4+1VZMQZ1Df4t+vCIsT54dHGx6AeieU5sR6SkwGKmylyipuAV2IbRwouOpju1Pw4osMXeMBSbq+KFguAD0SngzTlDKEc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=EYU5zvne
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v2 net-next 3/9] net/sched: taprio: try
 again to report q->qdiscs[] to qdisc_leaf()
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
v1->v2: rebase on top of rtnl_dereference() change for txq->qdisc_sleeping

 net/sched/sch_taprio.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index b5f533914415..14d628926d61 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -2439,12 +2439,14 @@ static int taprio_dump(struct Qdisc *sch, struct sk_buff *skb)
 
 static struct Qdisc *taprio_leaf(struct Qdisc *sch, unsigned long cl)
 {
-	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);
+	struct taprio_sched *q = qdisc_priv(sch);
+	struct net_device *dev = qdisc_dev(sch);
+	unsigned int ntx = cl - 1;
 
-	if (!dev_queue)
+	if (ntx >= dev->num_tx_queues)
 		return NULL;
 
-	return rtnl_dereference(dev_queue->qdisc_sleeping);
+	return q->qdiscs[ntx];
 }
 
 static unsigned long taprio_find(struct Qdisc *sch, u32 classid)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
