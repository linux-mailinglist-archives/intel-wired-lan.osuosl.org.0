Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD4676BC4F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 20:25:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41F8160EB6;
	Tue,  1 Aug 2023 18:25:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41F8160EB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690914305;
	bh=otgN76LlpNfgm6bSGpu/AIx0kj9fogpzGU1+rpu2Mnk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HhlzJdb5CSjuP5WaREB6c4KjDEG2fVgbLzCwJsmlxb1NFRPClJUNzB5z/SVq2YPix
	 sdtk808vQdXIq/cHcb1Xlw7QJOEpUghk0JE5PSghlF6ruNO4jeQC7HaJeFR/26T+HD
	 0LR0ecv6fNqZyMQeRaNWVo5X662Ythgy2szMqcYkKzs3xiXG/b7OlSdJU0nrXzPsNB
	 4zve9g1EpYZkgdLeskF+2T5FwKlcge1qcjdc1PxyBqP2fcGWm9tf3JLYUhVDwC4oQ8
	 fLCratTY4avrKvPxDCA9xvTvVv2+Gl0/UAf1xKALlyAgpBmuTo+x5tqyJrML3Ww0YU
	 ZsxY8wHlk83IA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yyHnzfKDfxXa; Tue,  1 Aug 2023 18:25:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2D4760BA0;
	Tue,  1 Aug 2023 18:25:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2D4760BA0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 669591BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83A7A41781
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83A7A41781
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t-rAfe84i5Kw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 18:24:48 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur02on2081.outbound.protection.outlook.com [40.107.241.81])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 66D75400AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66D75400AA
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JzGdMoMRl59keW6NE22HoHgrsXKkw1a9ykZErJA01QqbuU4zEqS06IYw2IIsuFvg6cD30ZXf0INB/QHPSGrjajMWNwhlJKHVF8oh+2YZQA+K+g2VgJSJDGEw8oU4VDjoQlt1AkMquDO2eDPwC5CqS24/iGSrtcnD43Fsk7sBR9LcqnSfNXosOH/gn1XE6TAjGUG1d6mi6c4lLDBHn1tBn6ofcNTFckXo3olQHojRXwX/ct9DLE47q8Oq9DJfOMK16N0BsyXJgLnulH3IULAWrSFsyiyxiYP/K9nPbwiw/jQeql/crsuJMLR0ytUQy/Si22u3QT1srUjUHLrxLWAZ3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bs+sLqxOuc2c0eRxmI9BMIlFXQRoVWDODlJ4WFUuy7A=;
 b=fWtxOuS3Grj/txPtzQN5WV++CEb+USG3vziGxn5BOIStJfQJI7bta4CFNd4Ac2U1pHqxgcUspR/flUJVOOtGD8ypplpM6qvc50o+N3AB9d/6REOenQbFEz0tEYiiVK3izaglF6GfAsUi+99sQzGq7LmS9kmGbwz7W2hXiQRMVJvtNPACg0XAq/I4UxzwH5uBtux5LypWKFqFyuDpIwhnrisrSNUbp77UuPpdAFblevhOgL9FihGElFdD0NXiavFWkVGYdH4GyFR06LHAi8TQ8dDuhcFjxGy71/i97RPyoqNoALDhHR/A5MTCOgSllCT6Y4mVkfY5QmBZbYX47rhG6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM7PR04MB6839.eurprd04.prod.outlook.com (2603:10a6:20b:103::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Tue, 1 Aug
 2023 18:24:45 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194%4]) with mapi id 15.20.6631.045; Tue, 1 Aug 2023
 18:24:45 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Aug 2023 21:24:12 +0300
Message-Id: <20230801182421.1997560-2-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
References: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR03CA0030.eurprd03.prod.outlook.com
 (2603:10a6:208:14::43) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM7PR04MB6839:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f122ed6-3f1a-47da-6af2-08db92bc94f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4hfMjEw1kaNqzfL9SUTb71RQgwnWPsznItD7P6CYdMB3QyFKq8xav/rnJmRFtNxA3oJXTbe4zTWAs4Yp6Idrfr1mKquPcrtr1IEmtaxKzj3L5ajElTmxMRi7mWWD/0RymYRuIPdai7hqUSP1isO98hvrKap5+64Z1C5zDMi+VEbuyQ7umfrMAKsZx5reQT1XqUoW3UwxsMIw43HxwHTBEKmbUhYxkgk70y5osCEiosLpknKLioMCM2sgVfbl1YNfIIp014IFcvFpeI/W2Vr43fCcVM/lbbvLJsaEFH1a7m3t4vsJ8y2dwb1HYec4H6LVjahDcr+OG+uF0+jJ6doa6ENCZ4M0hD+btPoqmDiyruc9Wbj4eAVGTNqeoSuydgvzThJnfuS4wi+qXPGN0XwvM3ziBhkXvOn4XEQk04EKqVCdb1y3PTTZPvHEMv8Iuvanv6fuGen+VHEMsox2qRiFXAGnCxdAb+6H8EnGLH9tcAYoZID4o0NODxf0Ig87rsDvsEnK9KSwoy0C+ZCrS+jlAFboJxAMsdpH7e5Fdka6IHDk32GShZjSvZT7uhrysUBXNO5efJSrFFThtDnXpUDfS2y4rRIc8hsnVso3UC4Laj7r/pylIqjHpUuQ8dmQ4XHQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(346002)(366004)(39860400002)(136003)(376002)(451199021)(6486002)(52116002)(8936002)(8676002)(478600001)(6666004)(54906003)(6916009)(316002)(66946007)(66476007)(66556008)(4326008)(83380400001)(6512007)(38350700002)(38100700002)(41300700001)(44832011)(186003)(7416002)(26005)(6506007)(5660300002)(36756003)(1076003)(2906002)(86362001)(2616005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V7ZqxpvWFMJ1ybQhn7emnJ1Cq9sgMOZKkKoMeQy6IlsnjHtEJ1CwF/mt4B76?=
 =?us-ascii?Q?S7cN0zmNZy+XnHM13yeUI+woj4Z5ViACJjihIM7BtFLCo2Szg6sTIege+Kcp?=
 =?us-ascii?Q?y6tk3ENaQBCrd+fku+e9jMl2YLdHaC7qJIzgH6N7Qw/uSDQ50C4c0KUn0BPT?=
 =?us-ascii?Q?FgzCoP9pW1ow6kU4JBVaQmnByJel5NUzb56COp0Xuzr4KHBATDXz4Zks5D71?=
 =?us-ascii?Q?haqNbuEeoDuqe3Tdj4dKiJkvzdXTieVBvn/OHYNX/hdNKGXSrnJnF4VHmJ9c?=
 =?us-ascii?Q?oe8NPFYgDpv33/pCqi3swdulDArxc0FyxRm3LkG1yjOKT1/dqwuDPZmhuNVf?=
 =?us-ascii?Q?5og2OkRzZMpnxxTCbc3qGcNTTQb36URD1xfMYNIM6XmyQrChPkTVDkcLE76P?=
 =?us-ascii?Q?tZNGrpaGqlRhPYUPsFmI87NCabswOnrVN2Dt/EZ6/vUt877GEW74AOp5oMB8?=
 =?us-ascii?Q?s+3dCW0BtU05AaSbGLkx7U6dHFuv1HWJhYqKKAoL+R0tA+SGjgNy8AEL87EF?=
 =?us-ascii?Q?YqKN5l2O2UxdVdBr/NwwePr+OWOr7MTI3oWgZdSUqAKwggn8lp34GrMwiVXH?=
 =?us-ascii?Q?ytz1v1l1QusNFgYcjVWixp3oQ8YSybHi5JsbXIr1DOc8/Ztd7mT/RTPSCavp?=
 =?us-ascii?Q?6s5DqbMNeNfK6q87bAinfQAA9iTi5UwU6JfCXZB1Um6tthxhREuSlbc6dHt+?=
 =?us-ascii?Q?0ThYCYr0HGn7E8NtbjhhPQC99uT7gty2xODJTc04VHj6rGG+eozzlKkDST+F?=
 =?us-ascii?Q?0B5+vetOI2ohafbs1gqsMf4QA+FJkj3Pvmdrjx4cspTcbxOhD0j7Y3pAeFYm?=
 =?us-ascii?Q?0zjj0QPDjybhg+vJwvupNQ8dx8E/SMyYKkuJHAk9QZwzUf3CkAH6MTl4tFbe?=
 =?us-ascii?Q?OIjNLHUBEU+I4Cmkrd7OhGwkRNGsIO01Tpz99s1KzxCbnRD70TLu1Jbum7Ax?=
 =?us-ascii?Q?dESBXFccd5jloYCfR8tcPDlDsZlxNkJqWsa27DUqMibSiOOunfN0dqoKN2hG?=
 =?us-ascii?Q?UQ8s+RUHToNZrTbTdWVEPb+vzVCsJ9BF5vuyDNWi2O+qUZ5o+FFQMmQgjAeC?=
 =?us-ascii?Q?W3UC/gR0sn52ujuzEgWf51X9sjEaya5qwdGdQTnApv7UsnY8q/3u30ylY4be?=
 =?us-ascii?Q?I0tz2YrkCra90u5N3QKjvPggOHYaEDRt3XuTrkq5xic76rhhgLxvugklYw4S?=
 =?us-ascii?Q?rJb3Ul+/8tpSDM2hUR+FRQrizQtcfyDGpjdGO5nOYNdZrjUIiga/N57wawpi?=
 =?us-ascii?Q?h8qOQUbr8zjVw2CYafZp4cAfDqKH5iETzIHxkPdn6UeSq02syic79mwOMQ/P?=
 =?us-ascii?Q?l5bk2J4WXZmPChLeMfZXprD+c+5bsWTaCG5MNanIb0xgLFBH0SD+IZTW55xC?=
 =?us-ascii?Q?P9U4ZggIpWEgq5aOlgldj2T7CBznHDJzMDdTVKTt0ra2xbx4iFzpSsAjnVkr?=
 =?us-ascii?Q?ogNFPPI+CHIb2ipMC4H16Dm/z69BgrLuWLsrKaQzBtXfAhNYn8747iXObUuF?=
 =?us-ascii?Q?6jzEU23lh/xCSxbWh5E/8iB8kQBxOJSv/HuORCnKfL1wonk3fHmwAKLb+9Sw?=
 =?us-ascii?Q?k7Py6JecrcK2Y1LHgF6BSntrPjUQB+Z1aQYnqHjNrN1wcaE3eiBgN6O+4/gT?=
 =?us-ascii?Q?2w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f122ed6-3f1a-47da-6af2-08db92bc94f4
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 18:24:45.5362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tqOqtK8bPRiD/Y+PcGCw6pRPQccFiQ3j8IbTntx8xU01TCkNMkFXir9zKPPyWqIeocqe3bjdCwdC8IVFh8NX9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6839
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bs+sLqxOuc2c0eRxmI9BMIlFXQRoVWDODlJ4WFUuy7A=;
 b=gAE5ebNMvclQfSUrVpOxsr+SQm3uM24bnF/zf/FNPICxrF+Is3djY2BtpxgvRqoqg5f0+RZmk+q+3SYXUNr6kdNVKJCBIXlYCd3sAsZbWO3g1jDZGui6lT+hms783BFjE91koQjdkak5EU5OwgAFw6O2U1g3vpWcIJPn0OUn81Q=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=gAE5ebNM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v3 net-next 01/10] net/sched: taprio:
 don't access q->qdiscs[] in unoffloaded mode during attach()
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

This is a simple code transformation with no intended behavior change,
just to make it absolutely clear that q->qdiscs[] is only attached to
the child taprio classes in full offload mode.

Right now we use the q->qdiscs[] variable in taprio_attach() for
software mode too, but that is quite confusing and avoidable. We use
it only to reach the netdev TX queue, but we could as well just use
netdev_get_tx_queue() for that.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v3: none

 net/sched/sch_taprio.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 717ae51d94a0..d9ff75a08e12 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -2134,14 +2134,20 @@ static void taprio_attach(struct Qdisc *sch)
 
 	/* Attach underlying qdisc */
 	for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
-		struct Qdisc *qdisc = q->qdiscs[ntx];
+		struct netdev_queue *dev_queue = netdev_get_tx_queue(dev, ntx);
 		struct Qdisc *old;
 
 		if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
+			struct Qdisc *qdisc = q->qdiscs[ntx];
+
 			qdisc->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
-			old = dev_graft_qdisc(qdisc->dev_queue, qdisc);
+			old = dev_graft_qdisc(dev_queue, qdisc);
 		} else {
-			old = dev_graft_qdisc(qdisc->dev_queue, sch);
+			/* In software mode, attach the root taprio qdisc
+			 * to all netdev TX queues, so that dev_qdisc_enqueue()
+			 * goes through taprio_enqueue().
+			 */
+			old = dev_graft_qdisc(dev_queue, sch);
 			qdisc_refcount_inc(sch);
 		}
 		if (old)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
