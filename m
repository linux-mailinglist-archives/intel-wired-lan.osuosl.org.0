Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E46CB68D9C9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 14:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 732EA417DC;
	Tue,  7 Feb 2023 13:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 732EA417DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675778152;
	bh=MZ6eJMkoP7uoWmsX9KaTXdeCUxsRKtJma5CSnQzH5PI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qm0U5VkYl+1fjzbK0cGM/R3bZR6krZF9xXbKV0zQuz6X//KTe9YwR9zGHU3C+a9Lv
	 iBfvxNBEEFn20dyXLEuCt50jw9LblhzPQW98jebWzAAMml5dlGerWtCWjKEp4BZNnQ
	 fy4YXa98kRmpiP6v6OdllLBObdxTt1S+6c7nIU1gzH5hC+wXo0li9G5xsIGgmNAxvG
	 ANyX+q2LiXqGOr7TuuYAZjVrl+NOQlPFGv3+payZfu+Ne/tI6WqKMtIywcyelJAXga
	 Qnm6YSsG7LCt0dAYHwtiEL4orOS14Wm0V8NkIAZDGc/ljzGukdHNqgXcOiWc5f5pnE
	 6s+k6zrh7ChHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hgf5oJlhrp8E; Tue,  7 Feb 2023 13:55:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7A5B417D6;
	Tue,  7 Feb 2023 13:55:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7A5B417D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 96DEB1BF376
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 630F460F66
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 630F460F66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pn1wq5hiJN9w for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 13:55:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F5EE60F81
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04on2087.outbound.protection.outlook.com [40.107.7.87])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F5EE60F81
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k3REPI6fRYeKrNa2BwSE/zagkI5fxIJz9O0ut3eGYgLcbijLZrNWEPb7cpmrnDIOXQwIUW4DEzVZsmcwFI1681GyBR+Sz80AgNS1SSB+gbPZ3sJLQM8sl39RUGrqguHPMCInHNQM+c+oafGq682pR9wyu2I+dd4LC4DpFYZkyvXPdhkwCXElJ0orVDJqFFJkJRv7EcyF9XihxY1SoGlJrs2l0lSIRECZRLJhs9xsAN2wVgfufcNMPIELoRzlpvV2oQsLqTlxr8wX0OL6xk/GWDi8Ay+r6C0nqkF89I4QpxrDdRTa1y+dJHHCwqlGNIzz8CfnsacWxiKUkCa6AEesUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u6Fr4Rdqpr4JQviI55Ygp77iGJtasSXSwdbN3XXp8d4=;
 b=AuteZoyYeDncA8EgM3vDHBR8RdySJBJMgxaySf25qQd6T5QAQ5Oey2BjALpsUDUGO7z6HcwCtn175gv1lf0jLzdmibR+k5sOa6bA/02QNyp0mMaD2eeNtrEW4hCvz3/PNI1itDJf1LaHLDlWRCSe7uNOpDM68B/xZxD+QuRRhVVPuu4Q+SXDsbd8ZeHItH48LA9+ucDa9fdGDUhYuZBcImfqS96FTWR5082Rh19uV3OUs8upE7zxGvgbEXRN2sb6A52Sno2iZxTybjQE23UKMMsBvUyJNfvUpqpucofDL+AVbanjvskZ8P2RnjiXl2NMhbyzqE1YfeaVXSPUdJWKlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM9PR04MB8115.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.36; Tue, 7 Feb
 2023 13:55:15 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b%5]) with mapi id 15.20.6064.034; Tue, 7 Feb 2023
 13:55:15 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue,  7 Feb 2023 15:54:31 +0200
Message-Id: <20230207135440.1482856-7-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
References: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0023.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::15) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5136:EE_|AM9PR04MB8115:EE_
X-MS-Office365-Filtering-Correlation-Id: a74c2a09-2596-415d-c2b0-08db0912f019
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ubJS1OF6HQMBYJlGfj1YGGJp/vRT3a3fUjaDLT3qWyNegwroSSZdY2uv88bMdeVAU3KUywGqkFZxxBrDO50gBmF5/fdiuavwb58B7kl8QIvu9IuHEwbGnsTTOsmJBJ0iFH3+N2MQvukSV2c0n45zfLb9ur8fXTkiwNuU+LpPSocWWmJfVxTNnS31yxZbtaNiNjxMulN1Xdm0s8NKIewX5W6fxeYTvfBd5gxugaaEvkzpIycG/BOXoaWT6/vr2zo1d2qjQ2M02gnqcsVvwl6qhJpIfjrtC5VMeb9C0cgg2XDAKnnnlYR/ziHtGS3lel7xJypI4vGdFNgcu8e+jEjVSC3obL+GklrNJppghM+7XhTkFAAfQgXZJiGk2GO9E+Zb50kRWRKDvtdiPGj2+XUxaLRMkvFex2MK65SDj9tSZG/fV+hq22lo38amHIgXwtuuuyI5FDp1z1Huq/NTC180ia+ATvbV9IDQ/rIkCQ28hJJz7fZvg82WlF38C+X4iYdF9u1OCDNa4RmyyIgwiYMubXaf/+6vrhoWl1SGf8ZUJYkADxKwqoYOtl0S+f4VGMuNtVP4manZATMdOIUPyXsqh7bJkTpCAdaUdbs3IX9wtnP8KBd6tvzYmnFeEtMtp9S6jLZ1sQF9teYr/xv4nS72XoUBKMgylbG/7IJG+S31K8MpJ6jQqMgXgRltKYUlOjnFFmL3RGtU3fuISkzgmGWzZg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199018)(2906002)(8676002)(38350700002)(38100700002)(316002)(83380400001)(6916009)(66556008)(66476007)(8936002)(4326008)(41300700001)(44832011)(5660300002)(7416002)(66946007)(2616005)(6666004)(1076003)(6506007)(478600001)(6486002)(186003)(26005)(6512007)(86362001)(54906003)(52116002)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MjicDT4IJHk8QZCBgAHlnJUTeqsStLllOeYiCHu9FB3alLr7mrTM1BPedi3R?=
 =?us-ascii?Q?PwR3Kk3nDxMJDpDz2g0GSo8Pwq3OOvHw9GD0SEmnRb0TqzG0ba76yuvQNmfM?=
 =?us-ascii?Q?4+i6j50CHea0TyJLDrJub/N9bjVsZ69HxkFtS9tYVKDlm+y3i0pMA7EgJn+v?=
 =?us-ascii?Q?7r5Zd0ieBQuUm3uZvRloW8l/UrQRbbOP4YPP2pm8TCHrp0aS//4s3b1YM8FN?=
 =?us-ascii?Q?0JCLY9PD40WaxWiO3yyDTeLHa0h6OwP9qknwrV/72i/VUEP1blFRVAaU+mc3?=
 =?us-ascii?Q?Yb4sBsMIY2f+tWuRbzIQ3uCXRbXC8bD3w59wU0d+puPmsa3KCANO76l1tlgY?=
 =?us-ascii?Q?58UXV7gEL3B7ThYKCCuWQ7J9U+dmPs/byfTXZHag7iICtIxyaSfuvjwZSWlk?=
 =?us-ascii?Q?grPvb+dS4gwFU6C9b67ZIDyWItv6k54rs595dC/NX3Z871BH3YCgXwsceiJx?=
 =?us-ascii?Q?2Dm7i6Wch+JybdW+0lomFNHoKStXQEiSYgP+Ri5aZVtG2DYOY1MGW8tZtHQf?=
 =?us-ascii?Q?eMWkc+RevYNe6zDzgzBO9b/LO1LtxisWUccT+bt2fmaqgwExnAbYMSuATu1p?=
 =?us-ascii?Q?oVEqc6htUE9F9i9iNBzYL9fq9T569B3AY257hde5bgK3S6kcXg8K/UpfTq2x?=
 =?us-ascii?Q?5hCl0FowUamNotzUc/52vGqipfDh49fxUMtWEIuQwVM5Rvyb+e0G6lmQRBmH?=
 =?us-ascii?Q?PSpXoiAX4XzhNm2NsqFjVI7jRuM9e/9fH3oj6btLX0icl37VIXCb3VW9CDwZ?=
 =?us-ascii?Q?uwRm7mbfagsZnAZ5f98uwxdBGBeT+VBGuvrER4U9R06ElzRDGzDrPoweisOI?=
 =?us-ascii?Q?MOymQh13umrHZ3hQq1+BGq+D4+tll4BB3otbpIPCesIsYqO/FWlHXeodMBBT?=
 =?us-ascii?Q?Fb4xgelYcsyzvSbkX1geiIu3yUeTkGR5GtsKOl6TubmKg9bbGoX19pXBJ05F?=
 =?us-ascii?Q?33Z7ED71sgvJPMvPEnNSTrTgJfUGe5RRddK9/NQHyxMu0q0uIjR6oY1kbqxw?=
 =?us-ascii?Q?7BFWz8z+f1SZ8Ot1nEqhAwDwjE76ClUtSJI6dCaDwpbuXqpVaaa0vbshVPEe?=
 =?us-ascii?Q?g3DwMZE/4wgN18FK4XG3VXSLIz2YH0OWfH4v/X5LbPjqIsBX/M1W45+eprDw?=
 =?us-ascii?Q?qwG2fGyDo5FJ6u9yArtBSHvRwpEialwAvo1nWvqhOx1fxjnpYH/Uvzt4FYJG?=
 =?us-ascii?Q?4GuB2QoHDo2BCJQoPr7SjZrCVYyF3u0UzqgcK5PqkFd1vqZdndI/s/cPukEf?=
 =?us-ascii?Q?q0gyWULDzAKvji89wMcT/4VgOmz5+Edylu5XlVX3JlDubflQGesP9QDX7WoQ?=
 =?us-ascii?Q?QpejzUxbaDxhpwK4h1e75Q/1ruEg0lSSnNWwPwfjX+qP2fRlrHtydyx2W3t+?=
 =?us-ascii?Q?BXxwgQsjnZIR4NEruCACsRDbLLVucdoc1Bn0Cblf7IKymBusPhr4nimTU64W?=
 =?us-ascii?Q?QjM0lkQtwt1s0yF/zfj6ul7abImAtREFU1oRPxCYnqxiIBMdLwNBV8o2TdpC?=
 =?us-ascii?Q?OiuyXiACOrbzFP308wvy1UiAP1bTkwnm1aDP2c+Xp5z6e5bOnfm/v04tqdFg?=
 =?us-ascii?Q?nGS7a63R/YmmGt9B5qFEiVhdxBnk9lxQFlYeurVbHO24aX47FBT31PEUb+pE?=
 =?us-ascii?Q?zA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a74c2a09-2596-415d-c2b0-08db0912f019
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 13:55:15.0806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1VFoOv6hbqakzEWnyhITby6R8W/enJKg6OEb/3we2ptNT52OsnFvU09SLg9mof6oELzoGoq+N1/BXtQ8u+nbPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8115
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u6Fr4Rdqpr4JQviI55Ygp77iGJtasSXSwdbN3XXp8d4=;
 b=b7SHpFXUkbv2BkpVjLbtqbPR6qPecnTezIgyyHME1GcAiPsD72YQyVxzJq7TjthxFLjEnm3KYoo7X+4DmtOMarm5Y9evjdMi3D7v0KyPcHkGdwSJoHLODKMVI/iQIq3yoQjo225RzjFMle/FwBZnFxrXknOioRTCuaPTAhvjpCM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=b7SHpFXU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v2 net-next 06/15] net/sched: taprio:
 calculate tc gate durations
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
Cc: Jiri Pirko <jiri@resnulli.us>, intel-wired-lan@lists.osuosl.org,
 Kurt Kanzenbach <kurt@linutronix.de>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Current taprio code operates on a very simplistic (and incorrect)
assumption: that egress scheduling for a traffic class can only take
place for the duration of the current interval, or i.o.w., it assumes
that at the end of each schedule entry, there is a "gate close" event
for all traffic classes.

As an example, traffic sent with the schedule below will be jumpy, even
though all 8 TC gates are open, so there is absolutely no "gate close"
event (effectively a transition from BIT(tc)==1 to BIT(tc)==0 in
consecutive schedule entries):

tc qdisc replace dev veth0 parent root taprio \
	num_tc 2 \
	map 0 1 \
	queues 1@0 1@1 \
	base-time 0 \
	sched-entry S 0xff 4000000000 \
	clockid CLOCK_TAI \
	flags 0x0

This qdisc simply does not have what it takes in terms of logic to
*actually* compute the durations of traffic classes. Also, it does not
recognize the need to use this information on a per-traffic-class basis:
it always looks at entry->interval and entry->close_time.

This change proposes that each schedule entry has an array called
tc_gate_duration[tc]. This holds the information: "for how long will
this traffic class gate remain open, starting from *this* schedule
entry". If the traffic class gate is always open, that value is equal to
the cycle time of the schedule.

We'll also need to keep track, for the purpose of queueMaxSDU[tc]
calculation, what is the maximum time duration for a traffic class
having an open gate. This gives us directly what is the maximum sized
packet that this traffic class will have to accept. For everything else
it has to qdisc_drop() it in qdisc_enqueue().

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
v1->v2: rename "tc_gate" to just "gate" to reduce line length

 net/sched/sch_taprio.c | 55 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 5f57dcfafffd..7d897bbd48ca 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -39,6 +39,10 @@ static struct static_key_false taprio_have_working_mqprio;
 #define TAPRIO_FLAGS_INVALID U32_MAX
 
 struct sched_entry {
+	/* Durations between this GCL entry and the GCL entry where the
+	 * respective traffic class gate closes
+	 */
+	u64 gate_duration[TC_MAX_QUEUE];
 	struct list_head list;
 
 	/* The instant that this entry "closes" and the next one
@@ -55,6 +59,10 @@ struct sched_entry {
 };
 
 struct sched_gate_list {
+	/* Longest non-zero contiguous gate durations per traffic class,
+	 * or 0 if a traffic class gate never opens during the schedule.
+	 */
+	u64 max_open_gate_duration[TC_MAX_QUEUE];
 	struct rcu_head rcu;
 	struct list_head entries;
 	size_t num_entries;
@@ -95,6 +103,51 @@ struct __tc_taprio_qopt_offload {
 	struct tc_taprio_qopt_offload offload;
 };
 
+static void taprio_calculate_gate_durations(struct taprio_sched *q,
+					    struct sched_gate_list *sched)
+{
+	struct net_device *dev = qdisc_dev(q->root);
+	int num_tc = netdev_get_num_tc(dev);
+	struct sched_entry *entry, *cur;
+	int tc;
+
+	list_for_each_entry(entry, &sched->entries, list) {
+		u32 gates_still_open = entry->gate_mask;
+
+		/* For each traffic class, calculate each open gate duration,
+		 * starting at this schedule entry and ending at the schedule
+		 * entry containing a gate close event for that TC.
+		 */
+		cur = entry;
+
+		do {
+			if (!gates_still_open)
+				break;
+
+			for (tc = 0; tc < num_tc; tc++) {
+				if (!(gates_still_open & BIT(tc)))
+					continue;
+
+				if (cur->gate_mask & BIT(tc))
+					entry->gate_duration[tc] += cur->interval;
+				else
+					gates_still_open &= ~BIT(tc);
+			}
+
+			cur = list_next_entry_circular(cur, &sched->entries, list);
+		} while (cur != entry);
+
+		/* Keep track of the maximum gate duration for each traffic
+		 * class, taking care to not confuse a traffic class which is
+		 * temporarily closed with one that is always closed.
+		 */
+		for (tc = 0; tc < num_tc; tc++)
+			if (entry->gate_duration[tc] &&
+			    sched->max_open_gate_duration[tc] < entry->gate_duration[tc])
+				sched->max_open_gate_duration[tc] = entry->gate_duration[tc];
+	}
+}
+
 static ktime_t sched_base_time(const struct sched_gate_list *sched)
 {
 	if (!sched)
@@ -953,6 +1006,8 @@ static int parse_taprio_schedule(struct taprio_sched *q, struct nlattr **tb,
 		new->cycle_time = cycle;
 	}
 
+	taprio_calculate_gate_durations(q, new);
+
 	return 0;
 }
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
