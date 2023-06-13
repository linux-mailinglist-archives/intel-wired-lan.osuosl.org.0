Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA4F72EE57
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 23:55:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48C8540474;
	Tue, 13 Jun 2023 21:55:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48C8540474
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686693308;
	bh=1+hcy7OeOvzoPKbe6o2aEzk/UPCccSj7TSG+Bxzytuc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NMQCls+rFMnDUOWCyFjrkJmXKbC4BzWjzs+EHV3RO0QRG7Ek9mDElKIhwF1w3nql7
	 0+DgoqclOhGO8ku/JR9O2+2UbGPi71KxCjVmBdHqhvU40CFOvUGzuzy95/8udBAvYh
	 MytuT/7/FlvfTEQNJW/iszs5mKIZ9C9jhCh3SmL4Sakd8mmQ62sBXAx9FfLelBykIM
	 aGTO8ew3Zj9ZPDYyySxdBBAn3hdzT1L5tbcwA0y/3NmnsgdSJ1NwzI7yLhVboRGJI1
	 RUWTfIjbyxBQQ/Hy5/Q1n8fzJhxiuVkb3Pg+ziSf62xQ73y4AR/W4g8pYOM6pOJebe
	 pD5C2vcBz6PMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tr3_-EOK1R0Y; Tue, 13 Jun 2023 21:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0023340944;
	Tue, 13 Jun 2023 21:55:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0023340944
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 65BE71BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E65140BF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:54:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E65140BF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r_aRTzBh0Ez1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 21:54:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15A2A40AB4
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2077.outbound.protection.outlook.com [40.107.21.77])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 15A2A40AB4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:54:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oVFesdFlWl9LLn8mlWNz5ZlZKRMMBbH6UKhrIuPQAysIoiPdMfXplbw/vjUd9fATSNdm1eraxOPeyKzBarIl5ElfFtRq2zEXl6KhKDNkDqf2IknJTvZ8rulVVQa7JShuSLmdZA9y9ikYxkGyaonndkrwt2Sr9ulq6BwpYySbnIULyhQKyivwmajBnAttRZsBEMKSLX2IzL9xm4x/2bwLzZbVxpEf38Wn1qJpQhUZl63/VQpgDishd3fXVk3bqE9GuuI99eYL2N2Rdu7xvzxTAgl+NSvB/gCUDIpqV/KpQ7+h46b9STbXRFhZaoe9aNKBzDbCxEdInrFnVuVySzWS7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NkgevA1g4+u4PjuFAmT0IroGZ7q5zm3YQuPKnu6OQYM=;
 b=F1mjRcCbhQSSVfceqpNjdvFSEvT69PudMrEXPoz8ldDmVNCk7MGt2eVnTCF4Up5nSVn9dG4E+XQAXy/K3Z9tz5/J/BwucY/X5oLQp4OACR8MVtwGyiMNvsSEGjRtfOHgirKzrVAlq88ceFWSOiaTuwYuyXlpZfIxDVll4XtBlISAvdECvydPYoTeEhZoQ1UXQtVJhJ4m18GRYuyUTnVUHBWKX3ltQIjepKNFXHgyFk6pK1ZYtDApnNqlFccFpqwjnWpwPGYreLWjayXKP5aKa++F+Z0KH8CZ9V5IIwBCpc0UpYec5aQibMSVBQ/MMgOBOSbFa5cteNRwbJ+GpGaO6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB8081.eurprd04.prod.outlook.com (2603:10a6:20b:3e2::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Tue, 13 Jun
 2023 21:54:52 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.045; Tue, 13 Jun 2023
 21:54:52 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Jun 2023 00:54:32 +0300
Message-Id: <20230613215440.2465708-2-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR04CA0044.eurprd04.prod.outlook.com
 (2603:10a6:208:1::21) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8081:EE_
X-MS-Office365-Filtering-Correlation-Id: 54e67235-69dc-4355-ba78-08db6c58d0b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QR/leZdl7hEiJRPqSfwCdwllNlhuqUDkUAxAKoUMyHmHtHhUfUwkwcSTMkr8iHrk2y8TvlYrBUey28pC7DlJYhAk4h918yhU37SWZPdpeJUV+GTMV2fkesFhqFUMXiAb0YBkZi7jEsUpap6ezyTOUURSsPumg6HzR/eN/+2eUGfxMynP5nnTwO/mzMisRzJndu7Gs2CKlDbs46rxolX+tzXZ0Fd/3QZnJTxtI+uRgxHzoX3pzTaexHMYmYElKUt9dEd2vELdjDy5JiNDxfl6BVXrHVJrSGoZfqKq6S6EuQvz79nzWhs6hoR1MYb72Z+lRJNy/pGtrdTNshXHVzqb7Gm4ugj3uC7vXvdXdpjQfueaH6E0irII66x3/177B6Si24A2IWKFwuS6rPbflB2zRGvyHGEhFq6CXGSoKU9TE3JmckeOKhrkp25atxx/EkAddLSkt5EYQQTiAz8Uw35LCNGWeFa91Dvy4TL5AMRLJaK6sFtaTxMQ9AiK6tk1rRbPSMMgY8HYbWeTH3Mrd/+rTlgJ8zj6wDccHYGBoj9CqAFG4ROuj0PI6o2zurWTP3dsiVPOWU6MdbU1IzePTc6PySxHkS3A0hr6kmj4gkuPSwNajh3WJRXLZS9KE2FqdYhg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199021)(6916009)(66946007)(4326008)(66556008)(36756003)(186003)(54906003)(478600001)(2616005)(2906002)(66476007)(8676002)(6666004)(316002)(41300700001)(86362001)(6486002)(7416002)(6506007)(1076003)(8936002)(44832011)(83380400001)(26005)(5660300002)(38100700002)(52116002)(38350700002)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2L/vo6S0ff/1rrwNORA5UEP0tRMkC+sgID88/nstO46gb2HGJ0Me0+daaXnI?=
 =?us-ascii?Q?2g68jM5dADcUwagHUVAazNOh+6927xA4kKHuSWt2tyHndnQ2YfrtovUuv1o7?=
 =?us-ascii?Q?5YoPMjI3Y3hkuz2XzevlD7r5GtAc9uDErtNamwBJIXeSH2dWL58aaRnU2tDj?=
 =?us-ascii?Q?VObbanCqMUeRifUGaejUNSMC4p9jUt8EMVzBOJ040xSbiJ90m6QIbNBF6VHk?=
 =?us-ascii?Q?0udb8119KXi7mEMvt+BumaENyCO1i3BG35918IMwJOIe0bWxzYgYg3ZuQzdJ?=
 =?us-ascii?Q?yaiPuYNckm7enyY3YMAyAP1B7YB5A5M0GuMI7bE9FhbotJs++MG+1HMTa+Y8?=
 =?us-ascii?Q?+dP0YNmOFeKyP9CYvtVGRGXKXhxp+cH09ReDs6CGomhEyd9u3RjS2b5l/bF5?=
 =?us-ascii?Q?WyGKqUAEznvquDvk+YydFNem8UBs9/rhz8ocsi52mWnwoeLTkxJiCY+vFD5f?=
 =?us-ascii?Q?PDboAj/H/36tfCoBA4b0qlZRPtq1klV4CBUEZtAEczDF7oEbBh1rxgtlod2W?=
 =?us-ascii?Q?vVm6+s86LqxUuBJwHbAJ6/27FyKd6KvI9Rr6Xzv1n++UJbmxHfKQIzAhUpxF?=
 =?us-ascii?Q?a60WbsqhzyGKYxceK08O4J2aCt01NXUXRatR9+0JLR5IjQP3CyDqCkMepWE8?=
 =?us-ascii?Q?ZZq4EvNfCwtBWR4Ek5+xAakDzwRnJEPuHDah8uhS8qqs6nnuJ9wCjVsgxwd2?=
 =?us-ascii?Q?5PrTMlSBHu3nMRXv+VTCC0NxoWcgjtRGN92jnQ8kc6FVhm2klgeDL1Pk6Ph3?=
 =?us-ascii?Q?fcX9eAGP2mr83ebZ1vRi8wzZxe0958WWtzGtiaQzU9/n6p2couSKw+QmpCxL?=
 =?us-ascii?Q?QR+TsJ6MntPSKL+cpVTZOJraXtF//VFgtFRvrxoOpRBrAgZdUAWH6ZzvZxGS?=
 =?us-ascii?Q?XkytLYqwCITxLoJEXAKe4vsuUerVCmiPKC8ploVQLXQyyrwE7mgX4AbLPnmm?=
 =?us-ascii?Q?zQllnbf4VQnC7s0q6lFIukT4fcysnx2rxmsKOmxGWu6IUJweVsK8zwdi4ekM?=
 =?us-ascii?Q?yEh2qLzv/jrXDiuipgDVNQfAGlQzQP0vKzZdyM0PdM0W+c4hbVRMtMN+vR7H?=
 =?us-ascii?Q?z748RTz6BV8AW+KndAgrG7GoTyJ70M0bOdxumGrBnhH6dQUXmLntXR80qf7W?=
 =?us-ascii?Q?CdThIZpMbC3fP2uk/yk5MFGhfhMo6q9QMLPJaLqfErKSPAFdCKA1xayJYvWp?=
 =?us-ascii?Q?GPbvzb6PlD1myANGptro4csCziMrqvsVnHCMqCOICl4XCojkuj6DMc7ARXDi?=
 =?us-ascii?Q?s+vAUeksay2zqF/bblv9p50Dxk1IdA4L7oAMnUlhy/PBubHmRBmay/yDqqOu?=
 =?us-ascii?Q?3IDyHhN6NapSYLkIMAS5zq/4NX9cydY7umKky8zKub644Zd9p8mYyR4hAR0L?=
 =?us-ascii?Q?Gd2j074gaqKYMFjdwMXqbQq1SkqE85TtUAJ33UaaSFMj/S7+jIy4TlpYhvEU?=
 =?us-ascii?Q?s8eYusiR8ChWLSvpSrrqLyZLS+OgQiXHkXVH02PO6buXEF9oqHp6Y0bjd9Np?=
 =?us-ascii?Q?YI64kSTW1TefRI/WQwegqSEtJOqsYobB1ExDVUVdOkdJSfvxHj33mSXrhtvw?=
 =?us-ascii?Q?O8z5oR8rmd/b/jSHd3Z/AQIPMMT+B95MIrP6iRYUrv3UfJgyw/mfsB2m/P25?=
 =?us-ascii?Q?Aw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54e67235-69dc-4355-ba78-08db6c58d0b7
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 21:54:52.0093 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uQeVilbYZuSLAjXLfah3x5Zy4psHsJSHP2UKvWyqLVF0oTG3ujTdIIKSdn3TqMieM/uyGILqUYo8wL9+QsiACg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8081
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NkgevA1g4+u4PjuFAmT0IroGZ7q5zm3YQuPKnu6OQYM=;
 b=X6iEPbpDlZuSG+dVSXqt7gWSuEVTRd4UTwLnXlGkppHn8xBWBKI46FpWMlqCQ6vuu4tbCGOGPe5fzEIw+OW/k6wZazutTNGDIfgw6mSoR3XnbIHMcrEG+IQmHpqOXnZB8OnULbFCaFw2NE5IdYG8qErblA8M5F575lyKdHSp+RQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=X6iEPbpD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v2 net-next 1/9] net/sched: taprio: don't
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
v1->v2: none

 net/sched/sch_taprio.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index c6627f5abdfa..3ee8a7cca786 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -2131,14 +2131,20 @@ static void taprio_attach(struct Qdisc *sch)
 
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
