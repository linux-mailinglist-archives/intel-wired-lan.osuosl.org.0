Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFD076BC56
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 20:25:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F121060E63;
	Tue,  1 Aug 2023 18:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F121060E63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690914318;
	bh=Kz++FuOcVdDH8Oef2jqVYj+MfEYTXJ6Vo1iDg/a268Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qRwYZxCmrhkx6IEamqTNi+6Rl9a5FTc31SrLKD5poXZqQzLwkWRYcM9OLX3wqTkzx
	 10uP73m9zlqmy6Sk6AAng+BznIcaEVpCf0/VHqbwPsGdzf6/UAHzaT+nhk086YIxDQ
	 T3a9iubCz4b3omuKWor9UFAhQen9ZCSgz8L0Dm8zjDo8UdDfZOY5Oj5VpQWJLLH/xg
	 b0qiwYAVQt8wl+N46R2apJHElg1EMTW5gcXZOHhNbzYRgIqqIZehEmiB7EBRWsTh8Y
	 0SUdNxD1/FFvKQeJ3p0jU2/Gaqj+il9Rohbojvo8eWEyTJM9KS99ASckald+Y3pJWv
	 NH0QYexniRGWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Yf89ziPNakw; Tue,  1 Aug 2023 18:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFB7F60701;
	Tue,  1 Aug 2023 18:25:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFB7F60701
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 39FFE1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D77640894
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D77640894
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eS6fcpRaL3zB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 18:24:50 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur02on2081.outbound.protection.outlook.com [40.107.241.81])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21BAE400AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21BAE400AA
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KtlWqnnuP/sQ25x5N9Ad47EtRomq4og5NCT8ZPCUYl4dPXG7IdJfG5KtFAS85LX29MfDNplCLaGO7K8c5A0y+bbgKeBH3MlleqRHh7dbFL3471OY+KdL12g772I5xmxlfYIYMsNqwrBeaO5hnQwK65qZIonVRTVjADzL+kO6t/22cuvC4aQ4K+jI0Oq2NrhtmqU8GZoiFhKBvD5JEZ6FpgxheRHn7FuEUddS0H3rRDlufXgZQQn7odxw9OPr6w6DK9uIZEK/CTWScgSm7aIT91i/uB0L1nZ4F91m28HYq+fxbgWeF+EMvOeXIVFIvRyGySYHB2EBryuX09jXP+QJGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t04J+PnhrMeedST7ETnsj6KGwBzM/nxBIR3qjm9z+dk=;
 b=dxDdk9aYCzJp88E6Y986Z0wvk3Sk5CVFbYdEoEzs1DUL1/J9/081h6PHMP2cjwTGDkdknQeU3G70brO32OOH8/0hX9N8omCoATTaNyuU55bn3T3TXYkMiilKiR7c4B7N99Kw4EFIC92BmiN7Za9OLRxF0szIuJT4i8aKsSSaDwbr10A5W+L0hBtczHnpYx26thMOB1qhy7G9hSy06WF9OcZB2d3txT5NqWut8CCscaR9HSFOQ36CaQY96NwMg/q+jvw540XUwrjBPtRJxUmqFagZ0k/oEqi9IrqAmhNIXP95iQKNqiIQRsHa41RPKtgHfIKH1B7SIP9CEQ3b8V+zLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM7PR04MB6839.eurprd04.prod.outlook.com (2603:10a6:20b:103::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Tue, 1 Aug
 2023 18:24:49 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194%4]) with mapi id 15.20.6631.045; Tue, 1 Aug 2023
 18:24:48 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Aug 2023 21:24:15 +0300
Message-Id: <20230801182421.1997560-5-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
References: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR03CA0030.eurprd03.prod.outlook.com
 (2603:10a6:208:14::43) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM7PR04MB6839:EE_
X-MS-Office365-Filtering-Correlation-Id: 22557206-a4f5-44ea-c2bf-08db92bc96f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oRmZ4VQle2hIc61cAqpq6kNpadh/XVlKoyeZRu/cdAkHzMNQQhAb2kR1y2D9ScUceH/NIuz/PNU7j416P+X8NCkHgpkpaKyb3a0hIrS3ZleFh4XTclLMShv1HuSCapwidY6yOALCdzGUWEQWVfkyuUUU8iCs8b7km9A6sNxZeFoD2ATTnmJwqqXaYInS04ykhIBSuLL/jgtHSCidisJLVvymBh0qtkdCtp2t0YPlcTs3oApJebSnQxHrz7gPX9zqUgD846QmS8c/H35Sls9Loo3qarjF+gGyOHj4GBdZSwKISA4HPp2VeOxap/pqw0xWFQXXwqo/qqNwUCTcNmmCTK+Ma7A2jOhstnD245grfaZb+kxL/RX7UaU++uDATLMVvOsnlMBzYV64qpR5opzN2n15KhFcCjJPQLEVLMIFT18SEnzeGNQ610agPSH4xtgdbHap9p0GzWGnKA11er9RhAeWeHXwu4rfMq1FCwVrZvYryUv1HKH29KZESDCBoEp9f51DeFD4aHBxtKmXdifKzCqoE3F1NIEE/Smcvsd/odNor1FdDLwtZ57e2DQb7PLOGjmI81qXWe3c1dvfxQ+sLNm8mExmki5LsjOnzKqcxYZo/Aaez0ejkgf/h+WcWTfk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(346002)(366004)(39860400002)(136003)(376002)(451199021)(6486002)(52116002)(8936002)(8676002)(478600001)(6666004)(54906003)(6916009)(316002)(66946007)(66476007)(66556008)(4326008)(83380400001)(6512007)(38350700002)(38100700002)(41300700001)(44832011)(186003)(7416002)(26005)(6506007)(5660300002)(36756003)(1076003)(2906002)(86362001)(2616005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?91+Wh0SroYw752px8ThXk98RiPsZzwb2J+xz/6WAx3Mq/YiRi8pLZFmw9gKr?=
 =?us-ascii?Q?w/1DYhnbJ948QbsMudfCo37gYLSmTIuCjYBuCTKRAvhYeDE5o58f/OKvhxAR?=
 =?us-ascii?Q?lx66ZAG85VrRh6thQX1y1qIJ9i7NcgNiDCOEi3aoE5YIwaQVH0hZN+bEjDk9?=
 =?us-ascii?Q?Crz4CiAyPy1nyahP850NJlat4q1nJtkP1Pjbk8fqGSPBh0CvzVvoXQu9EyWa?=
 =?us-ascii?Q?PHEKgOn2mqAHIR6zBVOsCMPlFP6GMaKdh9jumbH/mtXGhBhCJWUAWKPgtLmV?=
 =?us-ascii?Q?93b0PzRH5OZOdJv92Gc1e82bajxOZqZvU//ibY8ywUUyNQHQ7+O5wR72Srnd?=
 =?us-ascii?Q?8qzjE5QK7uQ54CyyGKIjHqkltJ6edphsdDKRzIAeujCc/OMYBKwoafWcUhzY?=
 =?us-ascii?Q?6esJRja8f9c4w/H6bRMWvOxIiDKOFTiaUuf7NmlxU5x8IOLYV6woJFykixAj?=
 =?us-ascii?Q?cniRXIECSMjW3zBSkxzvhIofOKF36Kjih1Q1QSfy26ISPSi4pDuAmrO35hZ/?=
 =?us-ascii?Q?HqCi4HjpkXB1p1+/0OVwOegDQKoxGB5l6SvS7t+/FZwn5JkPELt+2drtaCfS?=
 =?us-ascii?Q?jk9cman5CV9t63fgOtpRgzD6Ym/nDeDwDD6FIv6dhy8JFs7w2MTnBaYTc/4D?=
 =?us-ascii?Q?qXI1gRQfbbtEZySN+cqgzTSzaI0DottChkslLgCMeVkmV61YbBhcuRadKlNw?=
 =?us-ascii?Q?/h/lquZVzPAGDjmGk6OEJsEPqeCIi7B3qgS2Sav6WwM65V+ZqFWPKy/sYbLM?=
 =?us-ascii?Q?ER8r4ezyllcjcUytMnwuDnILe6M+BsQtQRstPKjBbiCvszlC5P7yFudcve40?=
 =?us-ascii?Q?DlWc//Xsvb+opbOvZzBzviENvT7A559nBaDRT+VJ5/xm0p7EIB8wNn2N9jlr?=
 =?us-ascii?Q?2ERRWt+TsSStO8mNmrl8l4ReBpN+vPlUaPzfaV4yXAe5JLqScvndjnTevoyn?=
 =?us-ascii?Q?m5msiANC+mdjW5XlSs8q+FT6Xh5RrJSWiAkCDQEvYt9GhNszyiDC0G8ozJus?=
 =?us-ascii?Q?zZhU+kghJ9aHTx2zZxU7xraeOi7CchkUIAHGi7VMuxPBY2iOSoOE7h40059/?=
 =?us-ascii?Q?lOwjvz3iHD4dw3chzpGBHG0D6/o+1guXIrToOFfg3+aAanSB9pFM9C53RcHX?=
 =?us-ascii?Q?LrlEyu1q98/jCYox0PAahuhGDVD9rq095aJ3+j+roSmUauYKkVjTxO70qLYM?=
 =?us-ascii?Q?N7QjnDlQO3PqMaTTI9/LQsnQ60Sq+ZPPbwzoJF0kBDRWQHY9KDCXHLQFtfpx?=
 =?us-ascii?Q?1LhpfiEmD9XxD9+I53bLTS5n/Kf3yBBfks4nEyR3dv/PrkUgPpOkuP011TnE?=
 =?us-ascii?Q?7z7wyHUiUcmUV4dmHAw9iHyfMvlI9kH7ItcxDPefKfl/VQysOobZplTDe7Hu?=
 =?us-ascii?Q?ElaoSO1SbdWiNcckPpmg/eesd8udPkqOwcDuO9oGrPiRPAt7L0g/eWzWyJZ4?=
 =?us-ascii?Q?MZwMG9ypSQ/m/ZqSXP0FA91tCYFVYAA9pSVcG3uih7Ef/fi5uMmWwNKFRzRo?=
 =?us-ascii?Q?b763d6OMUnh4nyfTUkP7patFTggBr9lORrPX5J8b7wvrD8XKxBRoTzdPmlBT?=
 =?us-ascii?Q?q4AVGqAZZ8FyAVIwqDnGF0FWTXoAuLn7amSZMYsMB28XocgPKXTo5EKja5P3?=
 =?us-ascii?Q?pQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22557206-a4f5-44ea-c2bf-08db92bc96f9
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 18:24:48.9019 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kYO3GYIXL9MctvIr8ToFHs9wHWQUOWzadawLMUTrjGNhkF9pH9i1iKJxEfprgLHWF/epxymuVLeeAdm7x0wQPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6839
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t04J+PnhrMeedST7ETnsj6KGwBzM/nxBIR3qjm9z+dk=;
 b=bTB2i3Zv+QB4Bq+rt7FqlCEHdJLeGOwqhMaZdw8lbkkt6ZmmU4ohEajjvUOPra0+KjRUN63XGKge3yqvS22CetuEIWFGZHMrdWOQMeB4qullNBfZBSJRvUA7Xg8wm1/AJRA1gH/hx3/Yd1leTwp3NG/SG30rOjoGP4N3TWktMc0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=bTB2i3Zv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v3 net-next 04/10] net/sched: taprio:
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

As mentioned in commit af7b29b1deaa ("Revert "net/sched: taprio: make
qdisc_leaf() see the per-netdev-queue pfifo child qdiscs"") - unlike
mqprio, taprio doesn't use q->qdiscs[] only as a temporary transport
between Qdisc_ops :: init() and Qdisc_ops :: attach().

Delete the comment, which is just stolen from mqprio, but there, the
usage patterns are a lot different, and this is nothing but confusing.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v3: none

 net/sched/sch_taprio.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index c9ad585b5dc7..06397300b40e 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -2088,11 +2088,8 @@ static int taprio_init(struct Qdisc *sch, struct nlattr *opt,
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
