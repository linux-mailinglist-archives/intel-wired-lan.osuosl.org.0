Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8058668D9D7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 14:56:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10E36402BE;
	Tue,  7 Feb 2023 13:56:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10E36402BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675778192;
	bh=gYOGavxW2wOyVfSo5/NeKfl3GX9sc9mTGhOW/hGDpsw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xe4x9yZIxwoTcmaO3TUb2hST7bPqcwi6EP/BPcG2mGeuPlEZu4yE77l7LDPvYjzga
	 bMqb9gzf4O1k6HcO6+D3rDm82se1ty8TEVc15x8tA7P72fPxiAbOkJtNiv/wD3abBR
	 0kjtnTxZ5cWC8Zu28aamj9ZdJZxzvTB6jBCn7le0sVZqcwFmI2BvfwyYnGjONO4zlE
	 RCkJZ1pSkFSLbWPMhG1G+ptsr5qE+Q2qs60mjJChNhHVEfRuSawh24Aip4G4f4ERSs
	 2vwYeTfv8iykgWKJADQFMX5NXkHmXSVGRj74Cne3Ol3S8Ev9oYZTHCSSAbRveDw3ae
	 yJRM2Ai+3dGow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z6s2nwMfZQYk; Tue,  7 Feb 2023 13:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F5BD40248;
	Tue,  7 Feb 2023 13:56:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F5BD40248
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F42D1BF376
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA27981DF0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA27981DF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xIIqC5WSez3M for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 13:55:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9B1981DA3
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04on2053.outbound.protection.outlook.com [40.107.7.53])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9B1981DA3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P76rZqtAnI2eld5HxlQQpBkdmTI0vmSuMsqz4s/jquIkPUE+5Ke1EiHrNu8OL0QK7WckoiyYUEZwieGXwr1qMgPlB1zT31yevU3cx84CsIjz8XV2Y5OunF8kWQdR8oVL9TkyLyZp/Ng9gcKTy2KmlcT1ejwJHMAiFGu7I4oNo9omJshC77a9Qcy5gDoX3PEZ0cJainVVMt7rWqfmwDBGbZ+hwVfzbxZFrfxq/0BxzIDT3sFDV/dqej5qIytEq1bYEQQ9+KdNiy/bAbx4v/tNMy7EG3tMW6i0QzJWiWhNzXIFmt4gcy4SqpzaJg4vU5bfzSMHkHZeVgfhoyEoTOvPEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UYmIk7rENYdzMcDEaZURe/aJbzqRvZhq4vacexnvWmA=;
 b=F6FzaIlTeLlH/+ub70/gGNN0R8SV4elQZ4d1vU324Ib7ZwMw8UagYXSluSXpXpzK0F/5uBVnGKv5vodHCUKHdh11bE5eA4vBjXKEiFyk+qcK8+g1zf0EkNRlHt9UPJkevyfwHFfiiJg9RhRM6QTseUYWUnjcozz0axRERKcRsg7P3LF746QakXQmP2d2T4gAI/mrpiBWAHrol9yV0FwXGB8rwQNdWgMkoib7TosCfViQYHJnD6gnxcsXIIGjPxiTcQ3PzmLCh+8EVS01LCnxG1YK2KRhZWEvrKWjNdK2/f+P8frBNWx82WYgSBio5+O7YIZjmaO2frwy8SgrvqXAjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM9PR04MB8115.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.36; Tue, 7 Feb
 2023 13:55:34 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b%5]) with mapi id 15.20.6064.034; Tue, 7 Feb 2023
 13:55:34 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue,  7 Feb 2023 15:54:40 +0200
Message-Id: <20230207135440.1482856-16-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
References: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0023.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::15) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5136:EE_|AM9PR04MB8115:EE_
X-MS-Office365-Filtering-Correlation-Id: 792a76c1-941c-4fa8-b1d8-08db0912fbe8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9jSPNVlBW7aCM8YmvmKU9eI/MeQv9oOkieRK+Dx1XqCGzWrWHBW2M8ANnFvbGmrVZ9U1ExYjWwmLCqq9vAdvLovumaNar4uX3z1TUWqSmDK0vfrTo5XYPX5nlUWfe0v2Yg8DIR43aCrEQxDWJ4GN+h9p+OzWgC2f2gCb+GgqU7OBmAxVHP+jzfdWookZE1Ku7ggG29ZfHGk+mBjy7qEHKoVXYntDOhDknKxjkkjmoQZTAfYaecu9umQtSsqd8SyKvz0esRGB4QTm5b+t9RYwNn1yVRaC2e78hEIWguFwsxaQOO2VmJ2md/2nF0dGYyJFM+dbAZs0ok5ior5E2OqLELUgXLjTwsek71iVwAtflzl858rsRYl9RmDvNSLYUH47HQl0YQrCy413Uo6hLui2flmTqjQavEOprtBVwxV2ghYNjQsSRF0P/xNxsBmayNjpZqXb2JByrckRYIfspiGH0m1fZuA79sgiF9xcHOq3gqICyuW92KR7G1fPaZfNdJWjgDm30b6da8Oz/JItB+NXXPvTz5zLLkcKb6UoR947qG/LDnsi0MTGAQJIBADhOD/uGp9uDG2ahYHRw9BqqaT6I3nnqOlYWk1zh1vuV/3q36ZDkRkTAH2oMtGOaBWxpzR6wRNjcJReLQ65zJhGgw0o6FgU0mRpXTS374VshAAXUR1iGgHgnaOF7lzwcvfXU3/O8ieTKzC80LjUgaMoRq2asw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199018)(2906002)(8676002)(38350700002)(38100700002)(316002)(83380400001)(6916009)(66556008)(66476007)(8936002)(4326008)(41300700001)(44832011)(5660300002)(7416002)(66946007)(2616005)(6666004)(1076003)(6506007)(478600001)(6486002)(186003)(26005)(6512007)(86362001)(54906003)(52116002)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rALJWC5CDNAmjOKhT8RVgdnv5wq79rfbpDBfT6TXVNGRa55hOKfzKNlNAV+0?=
 =?us-ascii?Q?0CS9twwQscD/amWS/SK5bOwZ0o3Od/bjWs3e5da8/E5nkNJtN1Fi4BqKTehy?=
 =?us-ascii?Q?fqZPdKnkN3Ka7uDyvUn9mbcrqmwRcntC+QonsUjOGA97XPUBa+BANDqz969o?=
 =?us-ascii?Q?UeBv9lo+HN2zbnK8+5KZ926tFDk640ZEblR3RdMMIw+Hg+qj8dmRT2+w1CRv?=
 =?us-ascii?Q?7oyUhObJSDPx7nR7KR73j4ili+eSvBVK4a6m8NYYWXj/b96wZ36Mi6ScjYVt?=
 =?us-ascii?Q?QhYrbj970fI4jphz+sc4q1wX5+47ZIxh6jjtxY/6fQINhs+6Lkos3EANKSJm?=
 =?us-ascii?Q?7U9/OXsvfqvVGfxXV+1eeITobcVXa/oIcoxgQzv1dCxnOwKpWrtdxJbej/0q?=
 =?us-ascii?Q?pxVP6+IRP9fGzQ687hmrF6goz6FbhjuaShHtsBTN4ODJ1rnKDUR9rk6jeX99?=
 =?us-ascii?Q?toVcmB1j4kK3lmt8QeA54RdGQU1fZHZgcxsOoxjgDoEI/9QT86FctvBeJFOY?=
 =?us-ascii?Q?iZa1tB1YJbH5oSB+9AJrr56BO69K+9cclRSFXb5qgdWCYYSEe8vBwumEEwt8?=
 =?us-ascii?Q?Kf+i0cvc3rAHJbAdDdwef2ZFX5NJRQQoCRgEVEngLkSqzP6pY4iU65J3wneX?=
 =?us-ascii?Q?CEG8P3DkyKqUsMBmL7grvRaw0P3Avz6X/YlPbKSkDKv2tHQHXl/zKigCVgO/?=
 =?us-ascii?Q?BpwvanH3tuGgfIhRh/ypUwngt6SQaeD9d7XAj8bW4GWqd591qQ5VVjJcx9Lx?=
 =?us-ascii?Q?/axFZptYOkS4cGmUCf0T0fVAnqvZ/saWADNeet5cXquQvwDUMHmku96Xjjlt?=
 =?us-ascii?Q?a+3iF7Im1GQVQkSf7ZdrJ8XMQrSq2QIHtclQzgNn07bPzjY1wmVf24geAeKY?=
 =?us-ascii?Q?uly5CZP7CkKxerMRHIwlcrrZBjTBkitLBRsBsQoYB5B50/GCKaeyvx1QNOmT?=
 =?us-ascii?Q?RAFS5oaOGqL3+gacUvaF0Fjlk0EIXVN4sHfjCjwc30vVjYHMAC/RCXaWcoKW?=
 =?us-ascii?Q?LcO4bwqZ9e0ttVkIjbcLHcaD7yPlEyJb5cVklNAFgccB8MLr7wzrtCgfVWKE?=
 =?us-ascii?Q?kbtMQcFBzBET6wtxqn1C24yYoTSwzlgnzGy8n+1WWqe3Cb/1Qj2F8571jnbJ?=
 =?us-ascii?Q?aUZFo52xSt2lHLOybc6k9xVBhMePb34RS4ftVRamL3vQhW6CoXnUbUUvPdt3?=
 =?us-ascii?Q?l86M7d83FZxaD+uFSVbl52emKD/SNvJDq+XMQCH17IyFqVHatnHXOeb0+KIq?=
 =?us-ascii?Q?8/6ftnBXxa4plzQ/mzNGiTqu9XeVtfB1SskDt8mj+qO4WbjJh6vRMCyI7XZj?=
 =?us-ascii?Q?O/198ak53i5rPvuhM14T/Ud0USSj1WO0PtgOv0a8pXVT4DJjDn1Yzfy7nqPA?=
 =?us-ascii?Q?bQCZa9Uf53lPVQsj5JTqNAQFBABde2LC98+BbonclLhGoTDtTOCiP2/wt7+L?=
 =?us-ascii?Q?FBQEWHlxMNJ617ZT1Qq3h/px5wJlxKXXMOE16u0iReeo/UGAURVWCii+o2XV?=
 =?us-ascii?Q?7m81psHTSNiibBYuod4ajLfxsJUuVwIuRfUaHTDlj4ouKq2Cg8DAqMKSZVKd?=
 =?us-ascii?Q?G+cfuqHfBCXy5jXhjEjl3onUs0CRHcu2Q7iV3mItjY1RyW4s3+PIqs88rrKe?=
 =?us-ascii?Q?SQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 792a76c1-941c-4fa8-b1d8-08db0912fbe8
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 13:55:34.7668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: plxzQm1YpCAVFFtSxrnA79KLNJovioQ6CH4Wpgfr6utjtLateSLU29PZIuBtDnmagvbcZ4EZh6360ESxKgdLBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8115
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UYmIk7rENYdzMcDEaZURe/aJbzqRvZhq4vacexnvWmA=;
 b=pekwINkQ9EjqfDczBsSX4vEKq66KhnbnTEYnarTRQXt4/StI+w4kMWIQXqj30suOZqbDasgPlnlGQUd3c9iMKv7tE0i+nJQWtQcEXtNqQDL9EXHkkmOKuRqp6AmqCGqWPZ9wN11J6s7h4x2JWBuOZquix9/w2iSz6X8mXuslxSI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=pekwINkQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v2 net-next 15/15] net/sched: taprio:
 don't segment unnecessarily
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

Improve commit 497cc00224cf ("taprio: Handle short intervals and large
packets") to only perform segmentation when skb->len exceeds what
taprio_dequeue() expects.

In practice, this will make the biggest difference when a traffic class
gate is always open in the schedule. This is because the max_frm_len
will be U32_MAX, and such large skb->len values as Kurt reported will be
sent just fine unsegmented.

What I don't seem to know how to handle is how to make sure that the
segmented skbs themselves are smaller than the maximum frame size given
by the current queueMaxSDU[tc]. Nonetheless, we still need to drop
those, otherwise the Qdisc will hang.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
v1->v2: use the new taprio_skb_exceeds_queue_max_sdu() helper

 net/sched/sch_taprio.c | 31 ++++++++++++++++++++-----------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 839beb599f55..9781b47962bb 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -566,9 +566,6 @@ static int taprio_enqueue_one(struct sk_buff *skb, struct Qdisc *sch,
 			return qdisc_drop(skb, sch, to_free);
 	}
 
-	if (taprio_skb_exceeds_queue_max_sdu(sch, skb))
-		return qdisc_drop(skb, sch, to_free);
-
 	qdisc_qstats_backlog_inc(sch, skb);
 	sch->q.qlen++;
 
@@ -593,7 +590,14 @@ static int taprio_enqueue_segmented(struct sk_buff *skb, struct Qdisc *sch,
 		qdisc_skb_cb(segs)->pkt_len = segs->len;
 		slen += segs->len;
 
-		ret = taprio_enqueue_one(segs, sch, child, to_free);
+		/* FIXME: we should be segmenting to a smaller size
+		 * rather than dropping these
+		 */
+		if (taprio_skb_exceeds_queue_max_sdu(sch, segs))
+			ret = qdisc_drop(segs, sch, to_free);
+		else
+			ret = taprio_enqueue_one(segs, sch, child, to_free);
+
 		if (ret != NET_XMIT_SUCCESS) {
 			if (net_xmit_drop_count(ret))
 				qdisc_qstats_drop(sch);
@@ -625,13 +629,18 @@ static int taprio_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 	if (unlikely(!child))
 		return qdisc_drop(skb, sch, to_free);
 
-	/* Large packets might not be transmitted when the transmission duration
-	 * exceeds any configured interval. Therefore, segment the skb into
-	 * smaller chunks. Drivers with full offload are expected to handle
-	 * this in hardware.
-	 */
-	if (skb_is_gso(skb))
-		return taprio_enqueue_segmented(skb, sch, child, to_free);
+	if (taprio_skb_exceeds_queue_max_sdu(sch, skb)) {
+		/* Large packets might not be transmitted when the transmission
+		 * duration exceeds any configured interval. Therefore, segment
+		 * the skb into smaller chunks. Drivers with full offload are
+		 * expected to handle this in hardware.
+		 */
+		if (skb_is_gso(skb))
+			return taprio_enqueue_segmented(skb, sch, child,
+							to_free);
+
+		return qdisc_drop(skb, sch, to_free);
+	}
 
 	return taprio_enqueue_one(skb, sch, child, to_free);
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
