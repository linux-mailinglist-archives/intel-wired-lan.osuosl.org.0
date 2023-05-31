Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB752718897
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 19:39:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B4F060E3E;
	Wed, 31 May 2023 17:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B4F060E3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685554798;
	bh=o37FiKKLAxWsS1ANtzOr5kn1bmw5Qe4bbXt7R9k+Khc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=067sNsRBMlwervLc04kjShycPJ//8ri5pGzd63pe7FPuDUPKnuHkQ0wa+BWdldPhz
	 3j9KOHsP3q7J7xdvkmORhGXnPBRqwKTyIsQGW3JXlyCZNJ+pJ/UDHh5pMHPuxe86FP
	 0+wW7EWGbx0B2tG3lTNbTsegE5uROs04kSZKM7IgclAL8sSo3GzcPQmfhUZnTkNcvw
	 wmEEeDknPaUSIaBGX2eDccdeKnR4ExJvQLizq00tlzyd6JdunAucLsuIQt00zgBRjg
	 mEfq2L/Q6cNivxjzjQ8d68gr/xd90qRD2Yk+NCMuySkoAKDiilXWpQPnZHthkNXn+s
	 nUufKVzvY4cJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-_RXEL9wWSI; Wed, 31 May 2023 17:39:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8935760B96;
	Wed, 31 May 2023 17:39:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8935760B96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C8261BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:39:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 470F941D8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:39:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 470F941D8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1NjsxJUW0eGH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 17:39:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 324A841DA3
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2045.outbound.protection.outlook.com [40.107.20.45])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 324A841DA3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:39:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jW62Z6LY0HmLCi/BwkIyd5E4uwUp4ayikY0xyCFNQdCly+rn2mUQjYpHkKShCCBXU1CmPa2/EuqdquGwG2BMbbjoipRx2lcVFna9BiDU+M/aE0880of82fRgJBmJW7p1CFH8ku00zNuQEpw3E41DxNZji6lY4BJ2OYq+zjRloIqNO8MhPFR1+vyGcoDdAHoAx/fhUGzidbELLo9P2b+MG9C97akvSs2B5ufTcaHSF6rIi/veJrrsLsrRghgJdfMQCVjZHBd6UX6vW1UztTPfXrBdW/uj/8O9LJV0ma+FzZTJqXP8XBNZJx38ooXJVyLjJnonvz1JaI2X0ZvUI4Ck5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ndLEqeL2b89Eb7F6s0vTT7jejVC7IkiJnJ7M56MCyXo=;
 b=cpyPTXGkSYsoSgab3n7Vdto/EvRjgaxPoEzuGjrCn1E/DFzmBmQXo17U90O8bbRGzlDipnUih/0fmiEsnAGKjmwx6wQQDyTdSz+1DfFcemFzxQN3f4FkgIo0w+oBKBSvrfNvM8tJk32cJSr3E4nyycwYRmXeJ5qfAvTi4M7Rsiu3DPycdQ7SLS60GQ7PCkUfizNFIYgzWs6VsH8/43Ufq1XoNeGyu5gJt+ppu1Q00Dw4Uo2YQaYKdKhx9U8KFgljpaet9xix2hmxdlTS0YGxsqHJG8LSXsY+V7OoeNHTxvbchbMjow2O3GSiTTBZgiWCrI5gO4qOH/M3AZXFYgU5Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB8571.eurprd04.prod.outlook.com (2603:10a6:20b:436::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Wed, 31 May
 2023 17:39:44 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::47e4:eb1:e83c:fa4a%4]) with mapi id 15.20.6455.020; Wed, 31 May 2023
 17:39:44 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Wed, 31 May 2023 20:39:24 +0300
Message-Id: <20230531173928.1942027-2-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531173928.1942027-1-vladimir.oltean@nxp.com>
References: <20230531173928.1942027-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR08CA0104.eurprd08.prod.outlook.com
 (2603:10a6:800:d3::30) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8571:EE_
X-MS-Office365-Filtering-Correlation-Id: f2864c92-14b9-42d2-620c-08db61fe04af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k0p581ESZcWM8uBthQkcy40wMKjXZ51uAthnCn/M9Jxqd/lSi2YWVvv70AtemOY/RL5KU13PAoZyo2r7+uDmNM2UHmH6zz9L3OP4DEgujDHCumBCtmv5ulQExdTpGnCTVwAxlYQmDWk0oR8iIY/qCIfnQv97XdDd6WCKkbqlXXKJ71sCN88lVB8jg75HrcE88JDm+ggWMgYcFdNyjgmWR/cLcZHo+IGHtFuHFXwWfSlH8TdHNgGzP+OGMHHfoJIcTglOLbkBVXkk57g9744ycQ8E5LZOWWmxAMUzzndXQiZ1pq6CIG8ASnyUyEKFr4juPHsnGTYFQSJ5j8LtQ13UC6C1bWNNv5xrqcz0mAMmWTvO/QuvfPCCiqYGm1c1ATrqrgRpRzORTSoREp6k5LFNx2vU6ZhFPmSnFOcm8bkR7bvkNQ1xCoT8/+qE8s3yGVrTiPxN5vd30m/S1IinZiUQZUXfgP2pnSA+KEI3MS7Y7durJfeWXAs2EC5jJfRlSFoI+iMIr/BJwuTWEFqY1OSvL9vmuPwcUDNQ/TKl8m+Q1dH279KVy+fcn0+QoJxVzQxCIeDWvBE02JwS+REj57qSBhQRl5XYd6OFybfpQGexHnTY7vGUBgQ6Bjrfr4g5FrAsd7co0LVMuQvhNOyx5JNrK+rv+LKoYcbYrhS7rlTbYC4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(39860400002)(366004)(136003)(346002)(376002)(451199021)(4326008)(86362001)(38350700002)(38100700002)(478600001)(2616005)(66946007)(66476007)(83380400001)(66556008)(54906003)(6916009)(2906002)(6666004)(1076003)(186003)(26005)(6486002)(6512007)(316002)(52116002)(6506007)(36756003)(41300700001)(7416002)(44832011)(5660300002)(8676002)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VbXoHy80iEo57Xp3XvmOOOxm/ir9Z62d3AR6eyo2SK95/Zq2FZKnABuL5H8p?=
 =?us-ascii?Q?OX+up8VYfejDNDuHvdVVSJvds1FjmMf9RBfR1b/m4yJyhJEXh9Xtg9wYWGqO?=
 =?us-ascii?Q?ZSpLDcePZn8+UrVCD0X97RzzMFKPtRxBdyzRL1ExgPAbTuuYCikvCRLTlb5C?=
 =?us-ascii?Q?seIJVyOcNBwXYvR8HGzb1Nlt54V188dobs1ELAXCkP3H0hvYRsB3KyNujg9A?=
 =?us-ascii?Q?yD/ZIQsgPkYtMzA+CnVMCL0hhD+qZ44BOEE5W0d+x6g47QRC+qjXOE8SRgVb?=
 =?us-ascii?Q?03yXZmr/CGDMdVkVtF/+NqSmE4gpr7jR6ROKdaw51JWe42DdUrCNNazvBZJD?=
 =?us-ascii?Q?wyr4wq8QCVPRNiaD5+4m7DV2ElFTAzpMZoowp8o+sk2SsxNm+EWeHKeLab2B?=
 =?us-ascii?Q?7Cg63ioLTrbHBuMqGKZP8pnR8Cdvu0U85srMZIDcdn0ElTyKGGVs9CmlaKYf?=
 =?us-ascii?Q?FBGJU7nCIBkQ6PDGjYWRslodH3zQ18MoSL8op/qC9o5pxxvB1MxMVzBdjL7q?=
 =?us-ascii?Q?chLlrSeVoW2D07/Hk4jKZD9jTw6omvW7Z0SwmkD+7hPTU9+5EjcND6rjw4Bw?=
 =?us-ascii?Q?lbH18i5hcc9CluR4Wn9icA5uH+RMkAH5hqKBiJq5oVUX/dcKWTGNxV+sqhpJ?=
 =?us-ascii?Q?56vUmI/E/m6KOqCyxh5+9Y8pBXqgqzNs4hOxXi+X4DewH5Mb5CHOPV9ThcT0?=
 =?us-ascii?Q?wLlMTF9YG4hF2bGw8Vv5LzB2DYmLwbmX3n9cVvyh+irX0Jp2udm75NrRMwxF?=
 =?us-ascii?Q?GAvDnH59AZbKiKF4Q63TjOqFb0meGiRJeOcockQ6arKmz+273cA+I0v9XZAm?=
 =?us-ascii?Q?O9pl2z1FDwGs0hJXVdHPpWS2rWdEE9enaEhuuyJbO+VEG85SA98DR13W1oDp?=
 =?us-ascii?Q?O1vrcoNzFR+2GG98LWwY9VK60Psaa5cgfXGa/t3R2iGCJCg84t1uU010k253?=
 =?us-ascii?Q?0oV/TXeT8j3UE7i7WPuU4FfOPTGE+W+8A/HOpEnUtA3H2eoxFKjmffWG+hu6?=
 =?us-ascii?Q?pfm68uNByYpdp5r5bse3JUlD+ZC/6mCRPpWlrQSpGF3+JEg3K9URNwxloKEa?=
 =?us-ascii?Q?ecc+DRAQQYXqVF+r0f+Z9L+s04Do9StznfWCAOWUVOkOTs16Ei3XHs3RsK1W?=
 =?us-ascii?Q?QzCj3TdQR/M4ldP76+ekP9/zjKmk90aT3Tzu5gYwHMdultjG5/W3tHJtmOT+?=
 =?us-ascii?Q?pnQ02MlWrhKK7Zt427aGfSrY0LLe2wOERKC8UEHAlAxI/BZlgNdYcwOpKlnI?=
 =?us-ascii?Q?3A+XcuM/cNHcmWwn7qNfJWCQ50Lv1mX58LMiz+12tz+mGPV0QaV8fDiblUzy?=
 =?us-ascii?Q?OetSx1NwO8OvNy/fJ1XNQKeZGv6PnfsKCWke8xLqteWeE+2M84wk21NqdiyV?=
 =?us-ascii?Q?S/BBlPNOlujwzsbHCzDgMoV3tfjsxh27fc+XaZo9M/Yhqcvvx0pkTLrbDxiq?=
 =?us-ascii?Q?O93n76KjfgNwZys2T3VrkZJgYiFsO3yPvt/UgnEHhk0aUeRbgYK9FqT7Fz5S?=
 =?us-ascii?Q?9bfojdC5Hf3L+wOtTm6Dz3p95FoHe5HSMhlUgXSAkt9bAgWt6WV/NlkMq3Co?=
 =?us-ascii?Q?kFe7KRVAlno8ghBbHTO5Jhf09b2BLbuA4QcN+CPeIygyfWUP6owEWAIam/zL?=
 =?us-ascii?Q?6Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2864c92-14b9-42d2-620c-08db61fe04af
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 17:39:43.2737 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nSvgYIHBhoAQ4D8L/00hStMn+FjOQWd7WrqiHtIPIB8+ibMxz5WkKuVq+WwJ2Q72dDEBUt7DZjgmRgfDXITbLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8571
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ndLEqeL2b89Eb7F6s0vTT7jejVC7IkiJnJ7M56MCyXo=;
 b=PMnkB9tHemwUleDZCj0z3IDxpdK2GyLXpIzf6wv5MReGOM45OS3B8QZej43n3cZKzpG1RyDi2AIVJ8dROVgVy3DH1VzjvEFlruGl3ggRLMsTDic29CWTmYlc/sJlV5EjoXaDIKWQCSnjXkUm7m7QrSFiwK57XED032nPr0IFPbM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=PMnkB9tH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH net-next 1/5] net/sched: taprio: don't
 access q->qdiscs[] in unoffloaded mode during attach()
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

This is a simple code transformation with no intended behavior change,
just to make it absolutely clear that q->qdiscs[] is only attached to
the child taprio classes in full offload mode.

Right now we use the q->qdiscs[] variable in taprio_attach() for
software mode too, but that is quite confusing and avoidable. We use
it only to reach the netdev TX queue, but we could as well just use
netdev_get_tx_queue() for that.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 net/sched/sch_taprio.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 3c4c2c334878..b1c611c72aa4 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -2130,14 +2130,20 @@ static void taprio_attach(struct Qdisc *sch)
 
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
