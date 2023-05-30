Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1987159D7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 11:20:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBC68610FA;
	Tue, 30 May 2023 09:20:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBC68610FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685438421;
	bh=KHQrPcRc7mWjW2BOoniSDMX7jmBygKJmY+P6BMCJOgs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6sUh53lElFpBRrpXX9o/JhDCrjPZot+b9GExe/kyGibcVnTbGUOB01P3rZUgyrSLp
	 vpiWDW33f0lvHyAk0TI392CLOzadTihhP/i2tc2jOxg5m7zqpuYCroHgi+gaG97vv0
	 UYn6U8frdbbFn7KhKYFLMYh2IVr5cj6OOhyTXyesLoG+YtTsYR+w4VKKPYykFBXy6J
	 PNRuYfesITnhYZ4hPen9bFZ4UoGFU7VtjrJsZG2o5QEdzFmthoc7bxovWrN6Z4SUcU
	 8CNwUjKpg5/+MDf5JDlHnYPaF7ePxp/dUHIaYM+Dkogyh9nFKiDLQExpkkfFQNWe6M
	 WrMgOuIQZhCEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x6wGJYAnmzb4; Tue, 30 May 2023 09:20:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9D1360A93;
	Tue, 30 May 2023 09:20:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9D1360A93
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D0EF01BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA29E82167
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA29E82167
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QktOEAmsYexr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 09:20:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08DAD82298
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04on2064.outbound.protection.outlook.com [40.107.6.64])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 08DAD82298
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fBpLdRWMN+0erOmuY9ehjKK3pMUTeXqN0NKzwUvXiwq5DCbsDnBhduknTRUERP1LCl9yAZX9PspShcZni6mgqOmQqbkhCkQLGOFLhivuN++R/niiQV7WKZebW5Zpl80DW2ZXGjHjZVaB8iaxJvUeRE8+b2JCGaf94YRHtMCxb2buWpAtH7PXD7+6wJs75do53HdpTz7Ju9NLPA4khvwJRps0dckOQhPRn7o7wTOQzSGTj9N4ZpPhKrGqBzfM3IYangVfGrHe1apbBEYAO0ClXee9GIPnBxVPRXbQYeW05LJe47gDe2GwbKyshs8hnS+pJiEN6bp1Ohpcue6VwByR2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5g/6xap3XUMNtS4JvEw30zPbTYCVwojNm6btWkb+G98=;
 b=a2oPNVgwmq9aBb+sYuDPc9w/kPEIao3gL/vDVHWjgKYi2cqfNTBPpNEKPvHvamc1QKT3S2KQQ7kTHXJfI5pGZXAxWQOc4hc8awjohRg9OQ3RqweWaMNRbNGXnlYPpkaupVW8zXPvCjX22fHrgEvOvu5g3GTz7JCqK9dCpf61zxLNKYqyXgZ/IQrdvBYFdYTesftA9y06KPrurSNhnEsNFnYlRxmw2ZupSaIWSnMbrN5tWp1ssxSuaGS8CwdvBybE0BKZKf9OiPItdDQAqn9ZChPC946gJwxAOwx3S+TqLWLNKLDFTOaih7482fL15gVxqLrucxfq4I9KRJEZi7dApw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by VI1PR04MB7167.eurprd04.prod.outlook.com (2603:10a6:800:12a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 09:20:08 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 09:20:08 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue, 30 May 2023 12:19:44 +0300
Message-Id: <20230530091948.1408477-2-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR0P281CA0155.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::18) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|VI1PR04MB7167:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c747841-e453-4214-f641-08db60ef0fe5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jM8KtKj/+X7u738DVFFvqyer5vNF9mmsHQ1/AQmfT077zzXk5+6UoCBKq53j24bgMMNKw38ahYRJu+1swmHFKn/hCtwxZcF/kRAidPvZglvqUjfbNMVD/53y6cPAOZ7xIZvjm5LXze33GZToAbPd4AvutfkN7bThyb2W5hAP9stp2VTkC6x25w8tgQ4znihehgbAN/w4tYl54sGA3Jaq3pjZeGuB92rIgKhKKo4n5YhS9N9ON6VGuWbznhWMKjdfFcjJ/SkRfS8yb2PY3DVi7UrpBzsGfqRp6mKIoQ381A4f0/UiSD3b9ZZ4hiBkxkk+Suw7Yn7hX7tUAZT98csxJ6joqbsfmqrYrhdSf2PrXDAsaz30ADwUzrx/ldPQzY62qpMHjJRX8M3bB4lyhHpdFHIpLHAFyZxPNXUdI3UwddnIrvSoc7MgkMueHcO5+tiCV21xPNETKzUg4XpPSXu8JOyXneusSBeBE+d0jLoOdm27MIXKpdBEdO6255BlJvkDzMuLSfUFu0tuu2u5ECTnBvntUFBsZqN4i9YI595XLCFsBpdqGhps4iTOZwOsT5rC5pOuqPOjUeJKRcmRYtEa5aHMga8+V1z2IfzvmBS0TIaIlBNg5ptNSP7i5xq/+BVq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(39860400002)(396003)(346002)(366004)(376002)(451199021)(54906003)(478600001)(38100700002)(38350700002)(66946007)(66556008)(66476007)(6486002)(41300700001)(52116002)(7416002)(7406005)(8676002)(8936002)(5660300002)(86362001)(44832011)(26005)(2906002)(186003)(1076003)(6506007)(6512007)(83380400001)(6916009)(4326008)(316002)(6666004)(2616005)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gxmhnbRTluNUeleYUB/RcUPKLISjXoF4i3pwCXhEvTAGZPZ15b8UtLhMuZ+o?=
 =?us-ascii?Q?uf4ofLCMvvXirXhl5CBQq88hTYUVVyzzBaVOByHemGG2YrdNreSbusKjzXts?=
 =?us-ascii?Q?LpVzHs6ssrGCECZkYSKbE+CFvn53ENKrNgHXPSHxNEs6dNIEVvCQVfZpNnZw?=
 =?us-ascii?Q?zZIvD8g07InCPNpCpzKNKucQdzL5hTu2uVabKQFs4o1y9QQrO+88fUrNGzw2?=
 =?us-ascii?Q?T5HnbhU8948g4yei2POykV/Xuc7QcwThvUABzTTTuDOxcPAu6axHT5Ou07Yl?=
 =?us-ascii?Q?+27/FqPofx4LcqcAnbgYo4fVwWM+yyQSMDjw2lO6OmIdzE2v/L8RwgSrd4SP?=
 =?us-ascii?Q?LjarDk7EQWj6uuonzyfRPLNyE+0R5Sd/O8mJ0KR/jgXZGvEA5k/1ljYd4fqV?=
 =?us-ascii?Q?Lv/Ai7Mb06jPjZtHRGzaXiQZaruBk8AOAf/+yrJehvt0nKFUSia4rp3s2pXX?=
 =?us-ascii?Q?XZGi5YV/ZogJ9rFaO5zQoM+4u/oNTpzQznozsKSnZ2NCelcfSxMgLcnTsF0+?=
 =?us-ascii?Q?7jjRERlq11EG25U/QHlrHD7fqf2Riam3rNWZWFDW6RogWNheEtqhcp829+AI?=
 =?us-ascii?Q?LSSbvWhMiix+F2F/xY50lSQ7Q0K762JvZIj0vTThxrscCpvp5qbFRtQAhD7e?=
 =?us-ascii?Q?G8BYjhR+V0JbODnmXe+14ny0hT8ywS/J21VyW43JLWYb009p7cW13y19ZFwN?=
 =?us-ascii?Q?ISFtroOyK1Sxm+drLw9JiJl8eC2HSHy4kCKHssBWejWsRGnnWP0SxReVmNsZ?=
 =?us-ascii?Q?zPXauS4udv5IOol7K3nelad15QbJ+Qlu9UZ6UMdfjVN96jFW/f9LBIMTFZJD?=
 =?us-ascii?Q?eUfzN5usSfCBaCEDmid5Cd8ePkO3dDrmsIJxCBAo/N6u4jtsnH6FWMxoTlVu?=
 =?us-ascii?Q?FgR+0zVVe9rOA46AbC62UbkT3gkfc1ONHeBfydeUhAndsPtnfp+dGx3HJYsU?=
 =?us-ascii?Q?8nY5dZnVdh3bn/0qgFuLaqI2BXxrACu7CXW4qhkVBjGUDTjhbsietPFUt117?=
 =?us-ascii?Q?kh9ard/oO2fQOECy3pWFXq7R/3a9v9GU+KsOVlzrcNnUq5t3fC0rFODRoAoP?=
 =?us-ascii?Q?cs18g+7/QsX3zD79U+vTjpE7lqA5aJ9Okqpb6QGNnRwjBZ/b7TGTYoVHcoom?=
 =?us-ascii?Q?Yt0TvUihNSIQcZwSabFcE69YPPtcg2akcKQdgK8kjumos4QS1M6GKeGMTpxg?=
 =?us-ascii?Q?KMaDQkS9qnoygd06MxGye+nE7xuvKI85uECBzWhNMW4yxCnptzK/0qPCPq8K?=
 =?us-ascii?Q?hnQyo0mOyj/BeviS/7MWnOuu+VtpqAyaLWlgMppJOOKvn++dijRr/kjLWFWm?=
 =?us-ascii?Q?C/kCYco1jryCP6rNf8NH1pWw6Zl6dTt4AHkgyVLYz86vLo27NTLh87LAKcAe?=
 =?us-ascii?Q?ESPbHxbiway18Oh3PWQ8xbpxj9yTXqk8tp0AErpy3tngGKJXaRchxiaAvNV/?=
 =?us-ascii?Q?NdPyV+wiIh+G0IxhvjfMrfx95Oq+bIX+HMfGQb85XuHAdZ97IRZx0Ra31ckH?=
 =?us-ascii?Q?aLUyeWymejm3UFyd2GBuKtgpvkUt7OHeCo9I/34BGVt6qjiHB3zldGlHskzQ?=
 =?us-ascii?Q?42+lNhkg1dNY1wj+ytZjQwOXfCO01Goq1JowvkEZNpTqV6a6SaVE0E7/9aQu?=
 =?us-ascii?Q?Lw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c747841-e453-4214-f641-08db60ef0fe5
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2023 09:20:08.5461 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pAahR1QXEwl5kAEfxcOEEEt9EzwhGBvZ1RZ66nvZcECuRLL6lprz+Sjr4gMeaidkHMeLi/N4A5T6cZbKChzUdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7167
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5g/6xap3XUMNtS4JvEw30zPbTYCVwojNm6btWkb+G98=;
 b=qeQsnPDltiqgVj5m9li79rYxGZqhffez+Or0sAAEk0hPQviP3fSO1JxrfoL9YYWGQrZ7a2yE5rlTdTM3eFInRVGhqV31B15G6vf78mQGlErZnQG3a8+oTQRe2RXPom2/+zx6bkN1lY1dYF6ivTsCZ+3Tfn+x+g5JfmV2hEcoUQM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=qeQsnPDl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH net-next 1/5] net/sched: taprio: don't
 overwrite "sch" variable in taprio_dump_class_stats()
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ferenc Fejes <ferenc.fejes@ericsson.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>, UNGLinuxDriver@microchip.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Xiaoliang Yang <xiaoliang.yang_1@nxp.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Mohammad Athari Bin Ismail <mohammad.athari.ismail@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Pranavi Somisetty <pranavi.somisetty@amd.com>,
 Jiri Pirko <jiri@resnulli.us>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Roger Quadros <rogerq@kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Michael Sit Wei Hong <michael.wei.hong.sit@intel.com>,
 Harini Katakam <harini.katakam@amd.com>, linux-kernel@vger.kernel.org,
 Jose Abreu <joabreu@synopsys.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In taprio_dump_class_stats() we don't need a reference to the root Qdisc
once we get the reference to the child corresponding to this traffic
class, so it's okay to overwrite "sch". But in a future patch we will
need the root Qdisc too, so create a dedicated "child" pointer variable
to hold the child reference. This also makes the code adhere to a more
conventional coding style.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 net/sched/sch_taprio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 76db9a10ef50..d29e6785854d 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -2388,10 +2388,10 @@ static int taprio_dump_class_stats(struct Qdisc *sch, unsigned long cl,
 	__acquires(d->lock)
 {
 	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);
+	struct Qdisc *child = dev_queue->qdisc_sleeping;
 
-	sch = dev_queue->qdisc_sleeping;
-	if (gnet_stats_copy_basic(d, NULL, &sch->bstats, true) < 0 ||
-	    qdisc_qstats_copy(d, sch) < 0)
+	if (gnet_stats_copy_basic(d, NULL, &child->bstats, true) < 0 ||
+	    qdisc_qstats_copy(d, child) < 0)
 		return -1;
 	return 0;
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
