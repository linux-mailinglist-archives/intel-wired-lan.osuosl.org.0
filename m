Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA00718899
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 19:40:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21EF6611DA;
	Wed, 31 May 2023 17:40:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21EF6611DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685554802;
	bh=s7hxNHK6m4Ns3Gs01pxSsgIeMoNcFA5mnqM7/pfQlr0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4OEOZ94IZ7ZmpPE5prEh2K5YCSiDWRTzlXBtoKe9pnFzkaX2bFMgYpA0Rh4QQQIwv
	 HXdUG2kCVLCtyx5rWzwpwts3VvSJ50X1ViJXQ0cRPwtRtIO4P7VFGdk0WeDyftsyur
	 p5rz2uX+dnN7cxeqU8uJYtZSETHWu1egbk8jBzbikUOIWXO8IdBqD2QpFaoGXcKOtv
	 4w5Y1L2teJY/lGrwa1T2hHsLOfjWsAgTeyp6DwaKIYwtIt64uozuP6VHnDik+lfdeY
	 c3pcJW3Zr0MLkyOLNpfPHxaPVZE7J780MvQY0vXi3pJu5a7/BJ8MIFcPXl8VyvU8aU
	 XITnaStI41S4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aQCvFOP-sIgf; Wed, 31 May 2023 17:40:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C684C60B96;
	Wed, 31 May 2023 17:40:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C684C60B96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B531F1BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 89AA141D8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:39:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89AA141D8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SgC_9ZXjjgYk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 17:39:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A867641DD0
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2045.outbound.protection.outlook.com [40.107.20.45])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A867641DD0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:39:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bBL5Wq8VZw0Yllvm7nPkv0GnZDf4N+e+G8RaNWlPKlrISDOH2niKqD95f+vBU9V+GsxYGwgGxIWZXBzRr8kXqiEkKDbu/jN8i/xIowYiphrA89biJm+CThjkbS7WKsdIlJLUJ04OnkWy13OKNO/513pTB3hwKs2Rdymv2IErp4lOOu18fnqfLZOI8K2bMNXOooLkgCy1pQ9aK9k/Z96F83FGnerdnt5b7CEhoig2PbvlIXaC3nSBriKXzcK2cmHapkhVBT9egWdliOxNKe26o/gC0zubhJ+WlrP1ZzWi+ZxqK42bewgIYgBp+DeaXsiw796gZKICsodGw3ow9DZ10w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j2NIe3uM/y4O56qmrtdqLZ6MoKG1xfC+qdNDtgfdlP4=;
 b=OS4KRO/ANrecVJWosNLhbgnVt50sUZIleRu9K+J1NxjLwx5B3vEchtPBnB077eB5DgTiNC3QbBWZUz//QkXH73ZoK2W3ZNnMcm56+4kDO7rHXW5Yk8RDhFZrRNsZ3a6bFat/Kkt/Nu5j/F2opkudi110ZJNReGgG1OmkCErkkGwgUn/P7gfemP+9yLLRmjkoWAbw+TPR6Qdea5ongli694TMH2WvGp4Ge6cVPpQQWlVgjtZcDD/r5JQIWJZ4WcUd3wMH7nqKbELw8sVsxmP1W7Ky+BSzcI/PXu219gtPeB8b25I2f86Pu0761m//X9vQjKgAUu3phbLvAdRne7HZng==
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
Date: Wed, 31 May 2023 20:39:25 +0300
Message-Id: <20230531173928.1942027-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531173928.1942027-1-vladimir.oltean@nxp.com>
References: <20230531173928.1942027-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR08CA0104.eurprd08.prod.outlook.com
 (2603:10a6:800:d3::30) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8571:EE_
X-MS-Office365-Filtering-Correlation-Id: 84939dca-fbd5-4749-1e28-08db61fe054f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MTD2espPGsy94iLpGMzoLEfDb8AwFmUEUCSUj5ua501BOZ7Qz46nLp2gm1ezoC/hBerJolaK0R6ehW5r9/RXyU6KST1RIXJ1E2J6RXjK6moHDM+Lri1M2znXh+Q5bXKBSZdp8lMPSXLP1MaOib0wykBC7rq7BSVAtcZFZZ6H6HCFWCOd287iy/Y+QkJldE4XPudoZ+QZh+zv57XZFHUKTnnZZ8yr6GJQoPRonmKTE0xWLb8cREm6205L1D/K3CenELP3eHWpv6uJh0sAB5tisxGQXKAB+a3qKiWrnuoPsiDTemUqCfsPBE2BvfSQxKreRRzHeIq1vxGuLkCmw4fyphbBwHVCE7MLoIU1smL4dgCbltDMM2KKwfJXB+t9sYWkjYYdlNxojIw/O1zUby0iAwBfl/ZC+32QX0NmfhbY90cCQRpsLuQQyvaVgGYQW2tmxCz9C0XNSuA0xgzEGLHtT2XuxIPc+kmi/L7Woc/MUI/GAiZwWlktIRqas+IUkt6Qhmrh/dJkltRFp2Zch5f4J7dv3QPL0XNpU/sWQvSxFwwuEj7NtUs58VOdx91o6kPg+BHVPyrIqUBRttFCzgGR9myrN3RBZXkI1uHgceTiEvZQpwn0Q5yPl5Qp8u3V+5NXrQ2yDIDO66Wsl2FVj4qcm6pkrMeHeTA0zKjOThNNzCM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(39860400002)(366004)(136003)(346002)(376002)(451199021)(4326008)(86362001)(38350700002)(38100700002)(478600001)(2616005)(66946007)(66476007)(83380400001)(66556008)(54906003)(6916009)(2906002)(6666004)(1076003)(186003)(26005)(6486002)(6512007)(316002)(52116002)(6506007)(36756003)(41300700001)(7416002)(44832011)(5660300002)(8676002)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gJVJCApdLkGsa+O4MpwSZbYHaRA6l+GaNuIh4UuBYmzv/FkhfblxNdO9hchk?=
 =?us-ascii?Q?p/Kmzhp2aAzKY5R8p2dv4vJvLAy4+FvJR+eerwW9Cbj3V2mk58Tm3Dhi7KBg?=
 =?us-ascii?Q?/fRMiDzrKfVwte0CAz+k3phx1cGSEU7S58rm7kBceJZiyCHI+1yLaxAm6hEC?=
 =?us-ascii?Q?DQ7hd7FT3feG+AINdxZ66yhewlTfC0gldETD7qK6c4qyRj7vCpY9Wu7CCxxq?=
 =?us-ascii?Q?h0l+bcAJdXV9x6LibG+d59iJVcosZ0USNfDF1Zt8eGX/6Lj90OCPFz5jSV5n?=
 =?us-ascii?Q?GvE5nZ1KXEzlAT+7O9ZxtjUmuaPLAyh0/H7uLVra+4W9TxqTKrRWA8OeAuOM?=
 =?us-ascii?Q?Dc2iW0+QivweTT6hF+LPDc12nZy3cLzQ9qCydRnau/rMD9J9aRC0VhvSr4HG?=
 =?us-ascii?Q?a1jxjWHFTk1KETa8u0tF4isBRs6UZkYPX4BIbB3r4aVN313RV5y1vRtQeMKJ?=
 =?us-ascii?Q?lSfMYoI6prVWBefNxmedFE1BAYMOuYVj3BqOPZH0/B1VGbz65QSE7KNJ/3ci?=
 =?us-ascii?Q?OBghB5V3T64jFzIJbtsGAtLAvvUVo24knYMnBGjZ2TnS1iQ3Bmv5CwlIvljd?=
 =?us-ascii?Q?ZzapnVwpSXoN7HzkbE08vPiADVpFMKtPU15A6T84gOIG/VRUCcSBl0q+sHdT?=
 =?us-ascii?Q?ww/v78B3bL2K+vhQ6nfRRfxFAyUO90MfSmxjfW3Y+xUP8pzQQ8Mxsa16me0V?=
 =?us-ascii?Q?VsUovTcNajN9igWO68Ev0BkFgmCPIor/3vRgzF1b02I+Jn5O3Zt/DAvPXNCR?=
 =?us-ascii?Q?QG311ruy2zyG03UFqscF0bSAN/NBOxAsUoMEVOw4R4NpXFL+lQajlCcl19IK?=
 =?us-ascii?Q?vpfheBB1ehqJcyhrVqovmPSL5q6jOadqiUuEPr9qPBQrJZU3rETWNuMk8ue6?=
 =?us-ascii?Q?2IPaD3H69+MaGDOkwN/R36AkguBZgpeqQQP6M32hUmGiDHbnTjNhstiMw9mN?=
 =?us-ascii?Q?fJDI+mgPbSoOK39g+SD1bcots6cOmhziMnzUBy4qqXoAOS4xK11W5Rbeo/dk?=
 =?us-ascii?Q?u042GVGOtmZlEIpd+HfqUdyIlcuqORjar/WoHQ92ft9XPWyq1+fRxbKwUWOM?=
 =?us-ascii?Q?CQO7C+1RO8UehHjS3wkUyVnOkv5ethJvvuiHEPNLlDMKZvp5GB/ijS43eUvv?=
 =?us-ascii?Q?k4Hk+0BSsHs3tnHg9bp00mJmqQn0lu3rz/CiREHAbYjc9yfn7gZaybPPGqqT?=
 =?us-ascii?Q?hSPrbmcceXTF9KU8Z0h4FKuWS2N6Vzjt/H+Lwrjd0rNDGCysyLdknblHPf6I?=
 =?us-ascii?Q?bIzOtrNiu9ttjmV1Hkf3CzII2aXFgJTzS/R4N+oAGYdRFvvKyIxNudqsBJwy?=
 =?us-ascii?Q?mwdaMAKyfklfy19aQCE3TUCAY0+50dIlLMv0tq2x0ZItn+LUR55cCrXTCfDc?=
 =?us-ascii?Q?zjI2IheXVRksk7uI++5dznDfDjIYidMOajAXjQwqFR8VreQaFWAKE5okRP5r?=
 =?us-ascii?Q?a2CdOgBbx3410yexvOZIlOmoaLklUQ70zkZvt7YDlyHrXAobGMGOAeKl0QyY?=
 =?us-ascii?Q?g/jhPWqEGRHTtg7o1/iEDOP14B2fhcaiIj7Hk4C1SoMygFXOh6IH1gAOQjD2?=
 =?us-ascii?Q?RDwU5RUUhPg/S5D5PHWhPvOUccyzPVfJGvEC72wLhy/RYUyQ6jF7OJHSBbvj?=
 =?us-ascii?Q?MQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84939dca-fbd5-4749-1e28-08db61fe054f
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 17:39:44.3423 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3JeTs6GRglSvhlP6QrrA/ZrhIi+PAYP15HzUYIjwR7L9MXljdic11S9Qtcn4TRf62yySjTp9f6PMmTXFjetrLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8571
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j2NIe3uM/y4O56qmrtdqLZ6MoKG1xfC+qdNDtgfdlP4=;
 b=VGwVRj9b7ODhCPzMRHiySbjIqrZgdYDnMptwZgrXxsUf33Lc+8tlNODfaBUBe5lh/keaEFgKpAt6WD0nmUzzPtg6AME8Q3wHHmYcJxNA1BJwgpdoaC0L1TfRBM+t8IzghyDWDiy+vpByQhIXRtjNnkTKTzRZ3TegKUn17wJamEM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=VGwVRj9b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH net-next 2/5] net/sched: taprio: keep
 child Qdisc refcount elevated at 2 in offload mode
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

The taprio qdisc currently lives in the following equilibrium.

In the software scheduling case, taprio attaches itself to all TXQs,
thus having a refcount of 1 + the number of TX queues. In this mode,
q->qdiscs[] is not visible directly to the Qdisc API. The lifetime of
the Qdiscs from this private array lasts until qdisc_destroy() ->
taprio_destroy().

In the fully offloaded case, the root taprio has a refcount of 1, and
all child q->qdiscs[] also have a refcount of 1. The child q->qdiscs[]
are visible to the Qdisc API (they are attached to the netdev TXQs
directly), however taprio loses a reference to them very early - during
qdisc_graft(parent==NULL) -> taprio_attach(). At that time, taprio frees
the q->qdiscs[] array to not leak memory, but interestingly, it does not
release a reference on these qdiscs because it doesn't effectively own
them - they are created by taprio but owned by the Qdisc core, and will
be freed by qdisc_graft(parent==NULL, new==NULL) -> qdisc_put(old) when
the Qdisc is deleted or when the child Qdisc is replaced with something
else.

My interest is to change this equilibrium such that taprio also owns a
reference on the q->qdiscs[] child Qdiscs for the lifetime of the root
Qdisc, including in full offload mode. I want this because I would like
taprio_leaf(), taprio_dump_class(), taprio_dump_class_stats() to have
insight into q->qdiscs[] for the software scheduling mode - currently
they look at dev_queue->qdisc_sleeping, which is, as mentioned, the same
as the root taprio.

The following set of changes is necessary:
- don't free q->qdiscs[] early in taprio_attach(), free it late in
  taprio_destroy() for consistency with software mode. But:
- currently that's not possible, because taprio doesn't own a reference
  on q->qdiscs[]. So hold that reference - once during the initial
  attach() and once during subsequent graft() calls when the child is
  changed.
- always keep track of the current child in q->qdiscs[], even for full
  offload mode, so that we free in taprio_destroy() what we should, and
  not something stale.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 net/sched/sch_taprio.c | 28 +++++++++++++++++-----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index b1c611c72aa4..8807fc915b79 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -2138,23 +2138,20 @@ static void taprio_attach(struct Qdisc *sch)
 
 			qdisc->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
 			old = dev_graft_qdisc(dev_queue, qdisc);
+			/* Keep refcount of q->qdiscs[ntx] at 2 */
+			qdisc_refcount_inc(qdisc);
 		} else {
 			/* In software mode, attach the root taprio qdisc
 			 * to all netdev TX queues, so that dev_qdisc_enqueue()
 			 * goes through taprio_enqueue().
 			 */
 			old = dev_graft_qdisc(dev_queue, sch);
+			/* Keep root refcount at 1 + num_tx_queues */
 			qdisc_refcount_inc(sch);
 		}
 		if (old)
 			qdisc_put(old);
 	}
-
-	/* access to the child qdiscs is not needed in offload mode */
-	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
-		kfree(q->qdiscs);
-		q->qdiscs = NULL;
-	}
 }
 
 static struct netdev_queue *taprio_queue_get(struct Qdisc *sch,
@@ -2183,15 +2180,24 @@ static int taprio_graft(struct Qdisc *sch, unsigned long cl,
 	if (dev->flags & IFF_UP)
 		dev_deactivate(dev);
 
-	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
+	/* In software mode, the root taprio qdisc is still the one attached to
+	 * all netdev TX queues, and hence responsible for taprio_enqueue() to
+	 * forward the skbs to the child qdiscs from the private q->qdiscs[]
+	 * array. So only attach the new qdisc to the netdev queue in offload
+	 * mode, where the enqueue must bypass taprio. However, save the
+	 * reference to the new qdisc in the private array in both cases, to
+	 * have an up-to-date reference to our children.
+	 */
+	if (FULL_OFFLOAD_IS_ENABLED(q->flags))
 		*old = dev_graft_qdisc(dev_queue, new);
-	} else {
+	else
 		*old = q->qdiscs[cl - 1];
-		q->qdiscs[cl - 1] = new;
-	}
 
-	if (new)
+	q->qdiscs[cl - 1] = new;
+	if (new) {
+		qdisc_refcount_inc(new);
 		new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
+	}
 
 	if (dev->flags & IFF_UP)
 		dev_activate(dev);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
