Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7E368D9CC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 14:56:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07720417E7;
	Tue,  7 Feb 2023 13:56:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07720417E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675778162;
	bh=BmKO8+yvmDq95/lR5FxlzRPopUOqflvAxVXHl9Nu1ko=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F1MHr3lzK9wTgfklUyGeXnVb0e4Zwftsk7l0vpTWQuWtSej0HCR9OSp/8VS5aUiZL
	 1O52s3KfgDuPuEqGJBWRPmGBZrE5AKyN9I2IE8Nqmo1MXJBCYZ+mOMsSD6Ex2y3T7j
	 XlSw1a+ynbRD9LrvLLae8Ts8xoEa1LkWGMd/nHiGltKKminyr2/PbuMOzT503qyR3b
	 TVM28JX2OyPVzjEDy8cyLW74eFyz74yES6nR7fNGBVsjncJ2tCr5Lla6otstoNC4QU
	 kkntOlIhDkeNHa5nlpzQ2iCxoZVOAK9uNi2+SS/MRvAh3tvftgLv8YcqIPH8IBBNVj
	 YEO5YDZeJMhZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DzKm-DnLAHk0; Tue,  7 Feb 2023 13:56:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86970417D7;
	Tue,  7 Feb 2023 13:56:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86970417D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC1C81BF376
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0C9E417D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0C9E417D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x8QNCgTbCXrM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 13:55:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E65F417D6
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04on2070.outbound.protection.outlook.com [40.107.7.70])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E65F417D6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZhOctSsSn1rh/5cSX5yJZFhlQTFKdRs3f7qFKwhP4pVE7Vm/Ye2bSeWxm5QfxMCWpF5wWR1URFb3Z8vkvDFnjQf6Pz3T28KDZOECDWgMZtajPvE9JYIUklnFZDkc/Dx7iiSMTTolmVEJrfBHvAbj5n+3TKI1+1iSj4msSzLhQ5sxT2Ks6xikW7Inq5Y/pQ67TAKKClhXYpklOOVAPme1yvoy08Rm+UX5p03vu89odsOc9UnqQKHXOX3K/hWlVl4/xxFam6dzJBTQ0JPU7lpYwEp5G86sCxPBQOpO1OKIArvALkWNyPS9ghvP5iJHpIJ3owjUH0FpV8hjh/ELXNmPqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DMmFt6mlpFfnnPitylfG+Ez+lWXNDlzRbLVDgli5hm4=;
 b=QgIj5RCPSY794wGKsZdQGYK3R+BV+kxCsmiZBEanQxPIdgyqpNUzBgA9v2WrncXsckk9/yN7vZW9YAStRCWSHczh2Frbg4M3bohvXon9FxauylOBtFhlQ/tvr1kHkCD0TALStCjxq8efzqrumq6d+malok6oRgfJxuTIUngNKPoCTySeqEYl9CB6o4hHb7BCtK3zIVviqVlOb4Vak1FCmcTHxLAz+vwhwVn32IZfRqzSyFG+Vg0qU4TH/urG6QAiyKapU+X7lUDjHv7FIlriEHY6CmRMaJU3O8BaUe+S2+KaoRZWKUk5e1RYeq2w+Gcz8scytC1/s3xhRkpgJn/nSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM9PR04MB8115.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.36; Tue, 7 Feb
 2023 13:55:19 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b%5]) with mapi id 15.20.6064.034; Tue, 7 Feb 2023
 13:55:19 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue,  7 Feb 2023 15:54:33 +0200
Message-Id: <20230207135440.1482856-9-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
References: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0023.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::15) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5136:EE_|AM9PR04MB8115:EE_
X-MS-Office365-Filtering-Correlation-Id: 71294eea-7e93-4f8e-eab5-08db0912f274
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gE6BvCboGs/nNslhr6ZHOxfhvwgxHICJYdzBjdHrxHedw2WRcRqGW1bMz3CR4w8Oja0SB8qUpTeNTT1IpH9aKqnK7e68x6yF//mayw1O8F1zNE4B/+XE95Xj38DNIfNeLtm0K7/Vq93Qt2fhEqlLpC35z16oA2nau8uNBhj30sokIOQhR/RcxDqSAoImzQdi9NzmrYmZrhVUFkv7cRQWmEWeA3qAIXFNZ1NwWWK96ARyS7PVkTEqdEmqr5u/EC6410Q6yu1rzYMoRaxBBR01Bg0P18GioHZLjL3WrhQkjJE41pY70EgaQ+O7/LjPskuxz3Aw4nOWATZh0Ms1Drt6KsA5r+yGiYe37VKMe2PgKbPDFTNV4zhuxjCTVcJMhjcfawz1l/EDtN0rif0jHAEXPvs7yewkC91tGYg7/VG3gVORStdVZ7Q29s/zWBgL1EGiPhVm42mfyEQavMMxWOWOSg4mwyOFglgJqT8JG1VTazv0D/+O9N3JBpbKuoFYSRPJVMfh1KmNPlOvHLIA56t6JnB3OICju8Nohtyqn4Kb1t9EN1BNAKVBz6KjoBVCqiaKwfoCqzfcJN3thvYmjmJkDGtFC8rX/TR1L1Bl4YOgOohLjIw5x1/P160UPmItWXnTJi7Tcz7GtCPv27HlHgsSVoDjTI0eH7vxwFDEBhg6+MDYdY2vWmBfEOxFK45bMvbYxSaVerxc2+9rvoUc/iq4SA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199018)(2906002)(8676002)(38350700002)(38100700002)(316002)(83380400001)(6916009)(66556008)(66476007)(8936002)(4326008)(41300700001)(44832011)(5660300002)(7416002)(66946007)(2616005)(6666004)(1076003)(6506007)(478600001)(6486002)(186003)(26005)(6512007)(86362001)(54906003)(52116002)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?td58KToSpLsRlhFz8tQcW+DIix2M//3idArY3i5BTjW/ADgh8Mgn3gZDVwLb?=
 =?us-ascii?Q?g7Amv2f5fHrJBozqMifK8aFu6mmVb3vnHdCCOXdwYZJWXma7q6dMreLq0G3q?=
 =?us-ascii?Q?lvjVM0xDlQPJW/cSD/kZm3EfiBw76t74dehAvo2bFyrFi0mYqnnidLfokZ6R?=
 =?us-ascii?Q?0AFrzBT2dPd2QbwSOnuE4HMBcRYIq/yjM9oGp/jZVCBP+rtjvyj6bFmW6wjC?=
 =?us-ascii?Q?bZLqqj+0ramPPMTVIr7q569GRL3QlMqGzkYlE7CuCMzbBvB6aS5UDEJXg3rF?=
 =?us-ascii?Q?JSJPW9Q8Sp5/Fn8uoG9M/urRPE4uIeUUBqxq53z4MYQWKibExtJ6pCKY5f3k?=
 =?us-ascii?Q?kJn04alIX9iK6sbLUzp+RxR/o2CLW42U/XTKi7cM4PlXE0OCuVbbPWGjGbX0?=
 =?us-ascii?Q?5HLLAfdvB7l5QdbeX3iN8zRdLtmIO4h3xl+hC12rHQgXbY1lVYjviN5k/I9I?=
 =?us-ascii?Q?IsM3XR3lcFQxXKT0FbxeOSyWD1wO0XD0J6GtYBlgVsW/aQKAoMP8somGF8ff?=
 =?us-ascii?Q?aswxlTp2n2P3mRFG+XgjupL1wHvXutupL4kiX5BgHZrh/bIhGCL4x1RC9Mfl?=
 =?us-ascii?Q?KPkCGrTkPzR5JF5AAIRNGW4GeUcdaIG9VZ9dy4MAxxjrP3113OB38CAMDQhG?=
 =?us-ascii?Q?ClonJKCP86+5T7t9o3AMvhq7uzRkwua70ozuCEaGhvHcOnIHA5Flq6M8Jfn5?=
 =?us-ascii?Q?2iVaZOjbtBQh+d1Tp3Voc8VTr0Bo5PG5skkfmammk8IPnMSqssHGSuGOqUkp?=
 =?us-ascii?Q?GSuKXPu2z0mRo+0fLjrBO6sNWtJXrVLZjPzXnMKPIkAM6OGBoK+7brUTXnZ8?=
 =?us-ascii?Q?jRRquvYHYLTPrtd6hazsXYCJxrHJ5L3ICm4m2JzZK5C4F4a08goTBXftwCdX?=
 =?us-ascii?Q?4TVSY1Qx+QJ5h3onmBA7LHWsXzElTryX0t1a4iyAPIjgV+WamTvIU/JbvrRV?=
 =?us-ascii?Q?0flG8ScqA4FaUSjqujjsccnUsotiZNNMrxbR1QBEnfBjmJv/OZ4+8lHY8YTD?=
 =?us-ascii?Q?6fqSXtzHP6tS4hZD0etvp9cB/L/yqByf4glvpICrvsro5QLjJxfglfLFkSRj?=
 =?us-ascii?Q?I6y2CLDpVgYPVOzccnuXay70SnN+lNdcQ4UECTvSyE8v+YUIjNvDutV10JtM?=
 =?us-ascii?Q?tmf9Hueczr6fhRtvmU7UUV0TY/g1Taspi6MlqNJESn06V/PVkaKeDcxjV/sJ?=
 =?us-ascii?Q?1El5W+tDQ0F6k1kPrxBNqHMjP0jHegaw/n+hhnRMWewyJPN2z0qUmrJsZ/4o?=
 =?us-ascii?Q?aaFQtwRKDiE52cYRLKzNludl7VH8ciV70tneOmaeueNU4OWXrrLvVVB5SPDc?=
 =?us-ascii?Q?IjUT72dGFqoMrLTEjkj0OFTqi3IdIbVHZYSIvUr8JlNiCP5+asG2FnKsLjzy?=
 =?us-ascii?Q?QlvXxsPWoKd6rdLUD7BUfbg4GQdG9ggAvcuLhOXp2SVorWsyBmNc31XhyGiP?=
 =?us-ascii?Q?Yr7PBiB+9NHoeOIr7ZtdLNJ2WlZzxWgXg+7pHfdfCcZ9xyRGCOF8XYGNf+KZ?=
 =?us-ascii?Q?JqbjFOJeatf4Wt/4P+kDotFE7HpZvJCtMuMS9rR4FpJJ6zUEnz1eV2j4q6R3?=
 =?us-ascii?Q?jp+UP2EHXWjizR9mraPe4fQcG6uGEe2IFusg5qmb49CpegdAxtXiEiogOLoT?=
 =?us-ascii?Q?Mg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71294eea-7e93-4f8e-eab5-08db0912f274
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 13:55:19.0335 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Uhp2jhmKryxD3k5makB0ajgfovMDKe/CMJ6+ZjeW+PjLuy41ugUdPjrm1trquyfyFVy1cszEpXxka6SBE1A4YA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8115
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DMmFt6mlpFfnnPitylfG+Ez+lWXNDlzRbLVDgli5hm4=;
 b=hzBPlSA4PMGgAMrXft48trUik6mxEAlKlk4n7YUVpZlIoWGDYHelAevqboGLIFFUaVD6w8e48J+zpvstRzAjv2ddSOr/Dy2of5dCbNBcnKJPq2fSZ/3VnNIgtZQ69v0C5+xdEtWzG+Hxq0yZru0VlNS0LXhMNNB+NvVuObIKWR8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=hzBPlSA4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v2 net-next 08/15] net/sched: taprio:
 calculate budgets per traffic class
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

Currently taprio assumes that the budget for a traffic class expires at
the end of the current interval as if the next interval contains a "gate
close" event for this traffic class.

This is, however, an unfounded assumption. Allow schedule entry
intervals to be fused together for a particular traffic class by
calculating the budget until the gate *actually* closes.

This means we need to keep budgets per traffic class, and we also need
to update the budget consumption procedure.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
v1->v2: none

 net/sched/sch_taprio.c | 54 +++++++++++++++++++++++++++++++++++-------
 1 file changed, 46 insertions(+), 8 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 3e798c8406ae..08099c1747cc 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -43,6 +43,7 @@ struct sched_entry {
 	 * respective traffic class gate closes
 	 */
 	u64 gate_duration[TC_MAX_QUEUE];
+	atomic_t budget[TC_MAX_QUEUE];
 	struct list_head list;
 
 	/* The instant that this entry ends and the next one
@@ -51,7 +52,6 @@ struct sched_entry {
 	 */
 	ktime_t end_time;
 	ktime_t next_txtime;
-	atomic_t budget;
 	int index;
 	u32 gate_mask;
 	u32 interval;
@@ -563,11 +563,48 @@ static struct sk_buff *taprio_peek(struct Qdisc *sch)
 	return NULL;
 }
 
-static void taprio_set_budget(struct taprio_sched *q, struct sched_entry *entry)
+static void taprio_set_budgets(struct taprio_sched *q,
+			       struct sched_gate_list *sched,
+			       struct sched_entry *entry)
 {
-	atomic_set(&entry->budget,
-		   div64_u64((u64)entry->interval * PSEC_PER_NSEC,
-			     atomic64_read(&q->picos_per_byte)));
+	struct net_device *dev = qdisc_dev(q->root);
+	int num_tc = netdev_get_num_tc(dev);
+	int tc, budget;
+
+	for (tc = 0; tc < num_tc; tc++) {
+		/* Traffic classes which never close have infinite budget */
+		if (entry->gate_duration[tc] == sched->cycle_time)
+			budget = INT_MAX;
+		else
+			budget = div64_u64((u64)entry->gate_duration[tc] * PSEC_PER_NSEC,
+					   atomic64_read(&q->picos_per_byte));
+
+		atomic_set(&entry->budget[tc], budget);
+	}
+}
+
+/* When an skb is sent, it consumes from the budget of all traffic classes */
+static int taprio_update_budgets(struct sched_entry *entry, size_t len,
+				 int tc_consumed, int num_tc)
+{
+	int tc, budget, new_budget = 0;
+
+	for (tc = 0; tc < num_tc; tc++) {
+		budget = atomic_read(&entry->budget[tc]);
+		/* Don't consume from infinite budget */
+		if (budget == INT_MAX) {
+			if (tc == tc_consumed)
+				new_budget = budget;
+			continue;
+		}
+
+		if (tc == tc_consumed)
+			new_budget = atomic_sub_return(len, &entry->budget[tc]);
+		else
+			atomic_sub(len, &entry->budget[tc]);
+	}
+
+	return new_budget;
 }
 
 static struct sk_buff *taprio_dequeue_from_txq(struct Qdisc *sch, int txq,
@@ -577,6 +614,7 @@ static struct sk_buff *taprio_dequeue_from_txq(struct Qdisc *sch, int txq,
 	struct taprio_sched *q = qdisc_priv(sch);
 	struct net_device *dev = qdisc_dev(sch);
 	struct Qdisc *child = q->qdiscs[txq];
+	int num_tc = netdev_get_num_tc(dev);
 	struct sk_buff *skb;
 	ktime_t guard;
 	int prio;
@@ -611,7 +649,7 @@ static struct sk_buff *taprio_dequeue_from_txq(struct Qdisc *sch, int txq,
 
 	/* ... and no budget. */
 	if (gate_mask != TAPRIO_ALL_GATES_OPEN &&
-	    atomic_sub_return(len, &entry->budget) < 0)
+	    taprio_update_budgets(entry, len, tc, num_tc) < 0)
 		return NULL;
 
 skip_peek_checks:
@@ -832,7 +870,7 @@ static enum hrtimer_restart advance_sched(struct hrtimer *timer)
 	}
 
 	next->end_time = end_time;
-	taprio_set_budget(q, next);
+	taprio_set_budgets(q, oper, next);
 
 first_run:
 	rcu_assign_pointer(q->current_entry, next);
@@ -1091,7 +1129,7 @@ static void setup_first_end_time(struct taprio_sched *q,
 	sched->cycle_end_time = ktime_add_ns(base, cycle);
 
 	first->end_time = ktime_add_ns(base, first->interval);
-	taprio_set_budget(q, first);
+	taprio_set_budgets(q, sched, first);
 	rcu_assign_pointer(q->current_entry, NULL);
 }
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
