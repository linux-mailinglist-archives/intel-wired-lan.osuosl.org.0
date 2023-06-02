Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7527771FF81
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 12:38:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B7C54272C;
	Fri,  2 Jun 2023 10:38:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B7C54272C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685702329;
	bh=r2sQl4ehJ/4Ni5KRQhDU89EDWFNugPywEXAyTQNHGcA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ra/PEqqvx04Qp+wOyCBl87chJBCjyNXTYp0RogVk3noD0BU9ROXhODZrCjoHF1Z0k
	 yp9L97e4vT3eR5NlkFBHER7JCTwT4nKvRm6yBJB7QCtw5A9aPEaLsi6u6+TjwSiEqd
	 HysRg53BJ+WK/QHzk7lEu1xqahZVco6TYmc/S/aTHhCaGITVINuA+hUnnBXeAZmcxQ
	 mMemXv7dPYtx6GzoSeRrkhAbmir2Ze3MZLZte+49jP/zk8904pVOwqo/XsJW9PcCq4
	 sxP8ANRNKIuRs+maKNgmhhjOBs7XG7JQ0N9bNJe11mR/pAIQJwAwXpN4nImgSQMBjv
	 dpKcGKaj2/xRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fbBf86QZHm8m; Fri,  2 Jun 2023 10:38:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A35CC42014;
	Fri,  2 Jun 2023 10:38:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A35CC42014
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 68B151BF29F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 10:38:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B937408C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 10:38:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B937408C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PH6V4-XdM4as for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 10:38:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE2C64026E
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2055.outbound.protection.outlook.com [40.107.20.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BE2C64026E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 10:38:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YeWcpwZ6zv6Mi2sKZc7at9o5nPD1OUwtZ83tX0vRxsd5A6q49q7OYNwPwAVrRPn4bCmJ/Kvp5mNcge6QW2DGAQgKw61gwYNusj64E2RqFYyb06N/x7uG4uwbhiiw+m/BBBfpjQbHmAnvMgb+HIgzYBybZaB9oM7YbQxpuqRCiRfJSxx9WrHYpIw8PrxlFoRTkQNsXjYujOWBanoY9Sn/aw1SGFTl5pYSGINTbD09jWpI+NT2LiuBKsCRPwiebflFhToEn2lOSfeGbYetO0tOaJei5aps14xwhsppaQJm3mdEWa16zqrXFODoF3OsyecgnfPq41f5kzyoTP273hrzSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0+NnOWzbxJHD6HQCG3aosuF8S27pqBRZN6+CHoAK7RI=;
 b=njsJKAgcN0scK0G/mXMKmsHwokUUg1tbkRDEsVWQVbVBghbwfOJw8JlN5ASyFhQCI6I9FZUAbfPZvtWPL3cWKM5Q2nAQ8+QOEeVrFvKsPsHayO8CaHtrtCJksn0Yja7eQJK7/WR2PXp06/Lg9/VCyJ2K1nBhhx01NIIjaKYO7CZwZNZe+cRiUbDusjhAOSOs0NA53jUlS3gocMZglqZ6/UvHLiwo46hlaBM/aYSi3Z1uDdyS3DFpJQXywhzZjgEYUyVSvqCDCFSBKvzPrHyioo7HWAoZJNSDbAuZx7O0/O2OBc47SZWCUEHv8UUcoaxEQDolgv1VjUu1C8N44vnrHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by PAXPR04MB8926.eurprd04.prod.outlook.com (2603:10a6:102:20d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.24; Fri, 2 Jun
 2023 10:38:21 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a%4]) with mapi id 15.20.6455.020; Fri, 2 Jun 2023
 10:38:21 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Fri,  2 Jun 2023 13:37:49 +0300
Message-Id: <20230602103750.2290132-5-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: BE1P281CA0095.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:79::10) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|PAXPR04MB8926:EE_
X-MS-Office365-Filtering-Correlation-Id: 1708cbfe-17bd-43fa-424f-08db63557c63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZdmT4vFIWXX1pHaAF7t0pRdozQMMFEUpgDv2AbpMQ7EbUA6YApeyqMBeuNH+tNnQembLwXtrqEqr883XkAJ6zWG1hxxSAFizCMnrctb2EqBX6Ue+6g4zvpcik7DazSqEM30XOTZyTLtALP5BlCFEslG6kfeP4ILSMcdRh5dtJkPjPq69CSdodOOXp3eG72DoPdkrZfq/TMf6eyS/n+16cdsaXYjtr06GIrPO7OExmxITms9FtR2POt279j3eJiTr4fPEgxxXue0aFgJt6RtJ6QHa4jiLgnPZ1giPNYu+naGTvZq+OZO7ltCS5u24+Kfd6mLqCeAcSvVS8+aMtAUKmbH2vvss7dsOrmpaA4Y2ntnON4Y8XryKU+Ff31dX/e9O2KoHkaSl/8kQsYOcWO8xt0jufbVvT+HoCMAZgKmgjWtuBsnN0ItZO6IR13gMc5NqDjpvi8UXWhlbWI4UPxwhXpBZ41X8jSRd8VSAuPO7VkVI68bxQae9zMo+ENLcvsN3KfX/SYEwwujkKj327y6WzuvbHi4myOP3LhQ3m/HwJhY2MFiDk66XRBZTNPMw+OTA7zP9wHmS+3P0X3CDRT2x+Uyv5LuVIyiSfN8RfWAP3/S2T3bbnyD6r9P8IePiErRS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(346002)(376002)(39860400002)(136003)(396003)(451199021)(8676002)(478600001)(6506007)(1076003)(26005)(186003)(6512007)(6666004)(52116002)(6486002)(2616005)(41300700001)(83380400001)(316002)(2906002)(44832011)(8936002)(5660300002)(7416002)(66476007)(66556008)(66946007)(6916009)(54906003)(86362001)(36756003)(4326008)(38350700002)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5wUo5hx1WWbgsUAn3CrKvu47D37CnEp3BHq/AwL5YoB4YWNf3wtAyYwj57a1?=
 =?us-ascii?Q?BBQAFjN+vnU53v55W8bdAJX7NjBJU/hl+Nc8cjg99qaATgqhVLB/4P6ysjS9?=
 =?us-ascii?Q?394bP7cEY61y+81TvrrtZaY7GhronHsIDBiKdlh8v9DctvuTNaXJ2BHQ544Y?=
 =?us-ascii?Q?sjmFGBrWuzq7xLmXFt9t+LrcNcXkQS0sw3usHCIi+6D8872+q1HlR7br059C?=
 =?us-ascii?Q?aOKKbF7IgyuwIeyAoBzmL6qzuiXuptCNsymFfk+MXIC6bD341hS+FPU0IjVj?=
 =?us-ascii?Q?stkqf+vGF6hxcCE/4TfT6vZ8uEPRsUz+Fac/B/Whj4YNcxQe9O3kMcVtSRNS?=
 =?us-ascii?Q?L7qHHiyDtZq+hOL9ieSbqZQ1AI5uUFEvlE/QLtvkpy/lBpRVV8XaGux8QaCF?=
 =?us-ascii?Q?2i0AtfayM1gHcxdkPwNhcfUQsAtZdqfAAysNRWbbo05zNxFwCAoxX0o/V4Vd?=
 =?us-ascii?Q?++BOMwIi08h74S3g2NrV6N0aWbALEXCnN/SF0rXcxCn5pVMhkRjChFfdMh29?=
 =?us-ascii?Q?1nBLy95Sc5xgXrudbVFtN3vjLZUQ4kq6L7ydOsu1Zy4C0qlP/21MZplbj+yu?=
 =?us-ascii?Q?pALNXyviD+rwk/MKq4CZwlEFzRLPMSnJZh1KCZpEjzcl+/z64kaYrUa+1xni?=
 =?us-ascii?Q?BuIYFVHTQfC7cjQRSXwFz1leL5YsNo2B9CYw2j75NSv8Bx4s3iF/tdt82t7v?=
 =?us-ascii?Q?KdHmwTghT6DCVTKW9G8ZttJ0tzlPp2m1h4Km5mAXpDtENKFc5XvJwsh6ZOIW?=
 =?us-ascii?Q?FrUL1mat5a4bBOOQjuYkby1sva+PKVPajf4mW+sbGfPfJf5xf5w4sdXQ1Evk?=
 =?us-ascii?Q?JL1KvBux0FSdBXF43jvljLJQLuoKm7p3Cz5X4LWj+uuKKBqyysk403yeWE5D?=
 =?us-ascii?Q?309yMZheHUfKXIhe1iWSi9Q+G0Rs93tsYxj/wxy5I+YBZh92gDDtyee6DhWu?=
 =?us-ascii?Q?EuI68H2lXG46/Q7Jo26gfNWYVzGO6Yn8aQpJ2gKIQuSV4GmbQEbpzmGZcFXR?=
 =?us-ascii?Q?aMIZja0XHFTWyVYPsn018b6te1UxhufuPZK5jRDf4g8P/YsqmfECjms+L0Gy?=
 =?us-ascii?Q?CuOxQtHYVA78MlagBWD5/jVcZMk2XedhFdD78eOc1+j5tC0opQSCZvPfXrEB?=
 =?us-ascii?Q?WJvZyNIVXE03lOXQUmp2is5XcSN3EpS1aomvQB14lVEd7iDI5C1EOtoX2FxI?=
 =?us-ascii?Q?LCM1MfXN9cjt0Yybh3cN/keqSYSKYPsuTdSjMAYcYbNsPkrWTZRruVmWRFQZ?=
 =?us-ascii?Q?9XMTlgDWNqmkZ/psxOtIy2rg9kCtqfjXyCKr3wkpmb7N3LPgdsZRkq9snsO0?=
 =?us-ascii?Q?BKk5kxXPiCQM4JMNm/9SNZZt6wEit9PRsMpy3oX/NPbMBP9BWkuSiigjsk0T?=
 =?us-ascii?Q?X/jpK9qu2V0qz36tv7R3/7hj12ICRRJQGqVSAKnnw5EQYh4aTGrNxTAgZXXw?=
 =?us-ascii?Q?gcGNfgw0MrlDG+309B2L/3UaTyI4PGfk05pJrFB+tiLIAhkPb0t2NcnPWlXw?=
 =?us-ascii?Q?7dfyEh0zsIO51IKkQ/E4vDI17RYPqfClq2384aKscTPHQxuk+M2I6Xw/HHss?=
 =?us-ascii?Q?UQztCwopNoTbJkJLu4WhQHn12hLQLY/ALV9UliUpJEWzcBIox7Ht2/mM+Ojh?=
 =?us-ascii?Q?tQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1708cbfe-17bd-43fa-424f-08db63557c63
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 10:38:21.5272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mmo6/kc9MWV/wvrbG4gprOQ4exyFZerVft5Q/jKhV2kP4HkYzJTMDYxNousPCxAkALzpDDxYpl4v9Bg32s71ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8926
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0+NnOWzbxJHD6HQCG3aosuF8S27pqBRZN6+CHoAK7RI=;
 b=Ue25/lEc6AevfYvmvt0MPEyDZdq/K1TOaPZKpCDdbvW3ttlZsqlf4SrUQbN0XZinuQiiGKQllAeeuA+6rtqcWgx3ZR6aYA255XcgMGv0nE0gLMC9Zod9ddOjrIYVUFawpu408VzziNX7DRGAHhU2nd2EXrJV/fMOTAtaTM62kl4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=Ue25/lEc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH RESEND net-next 4/5] net/sched: taprio:
 delete misleading comment about preallocating child qdiscs
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

As mentioned in commit af7b29b1deaa ("Revert "net/sched: taprio: make
qdisc_leaf() see the per-netdev-queue pfifo child qdiscs"") - unlike
mqprio, taprio doesn't use q->qdiscs[] only as a temporary transport
between Qdisc_ops :: init() and Qdisc_ops :: attach().

Delete the comment, which is just stolen from mqprio, but there, the
usage patterns are a lot different, and this is nothing but confusing.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 net/sched/sch_taprio.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 263306fe38d8..cc7ff98e5e86 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -2084,11 +2084,8 @@ static int taprio_init(struct Qdisc *sch, struct nlattr *opt,
 		return -EOPNOTSUPP;
 	}
 
-	/* pre-allocate qdisc, attachment can't fail */
-	q->qdiscs = kcalloc(dev->num_tx_queues,
-			    sizeof(q->qdiscs[0]),
+	q->qdiscs = kcalloc(dev->num_tx_queues, sizeof(q->qdiscs[0]),
 			    GFP_KERNEL);
-
 	if (!q->qdiscs)
 		return -ENOMEM;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
