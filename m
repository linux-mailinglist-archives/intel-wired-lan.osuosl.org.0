Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1941748798
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 17:15:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F1F86107D;
	Wed,  5 Jul 2023 15:15:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F1F86107D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688570117;
	bh=309UpVTIDRFna1jcDFTSmOvajDCaQ2hrfc30B5Bs0hg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2A6XF3fdUGco/p8J7nmoJNqIXnaOD+6DFBNzZHQKn006nj4g9/q1AVZuBv1RJSDbO
	 OXrEP2SM1/liQX1BObhcj6ZBr/RQhIjIHh8QBV3RL3OgYkzGy+xu0eCtzWJP57K+6L
	 zPpsRbTvXwLoCNbDNvf+fQQoLkou/Zbit/khBpyFYBRKNIXFeyVFY5idZY9Mfofghb
	 5HcWwTxw75vRcM4up162ZU0hPHKkLMKhu38GJo+YrM0Qiynk4Xjk0hO/3H9KoKmxpc
	 TxJENO3WeqJWvy+sc0qwNoWHgl7VMKQtknwtMREqmfW6XdLSZ1qBzrxL976iQ3l5lB
	 0pSVziiS5chvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1NIIbw3I6lwj; Wed,  5 Jul 2023 15:15:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A38161057;
	Wed,  5 Jul 2023 15:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A38161057
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 237581BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 10:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EFD9960E48
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 10:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFD9960E48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jLGtdzUDtT9X for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 10:04:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E89B6068A
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04on2136.outbound.protection.outlook.com [40.107.6.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5E89B6068A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 10:04:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3U6v35lXGE6Vf7yEm07L1I6eMw4oICxLyQR761LgYvlKWXealg1Us2NsK7ERP9vnj3S8PHaBcgcszGYy+6rwKH6Ehtftn5wZRfYA+/nSHWIOgXm+mdH9YxAPnywZilZwzhZa7zgJ1Ofprmk+qvkN1mNdIk2J4yxY4x7SbsKfT/Mo/Hq1i5uckqL+M9D58WibscKX1NRnbhVR25tjQi//YnmfCwxho1SPcAP4hrfp+66KsaK7y6N42YM8Js0p3TCOV8W/NoOWdZo7QpeFi6XXRdjgMgFo67o2YI50V9tyeu8jkEoITBXS0xFQSk9PVRWY7QaZfgIZwwiBlsEmqEBJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RYwZMdPaWKzAkdnBL1SY8n4OunvZFxKu0r5poIt67d4=;
 b=hFzIvyQc3SDTrKumzHFEV8buFxyu8NZtJUrT6ubom98WOyyxr4I5M8iEZmrsgtPR8EYJ+PD32J+pNXkF+UkxZ0IvHqWgJOEj2xkJCiczVuldC4vVvHhzwXj/JWQP2NCFMpSSmd5hqa//Is1T2RJpN29ghx5bxfHH9yXkrFCSP4WH3Dc+OgxZXJvhAhMfypWnfchU20ieU0cdMOr58ZFXIrg3m4qzhmIxMO3CvWNZ1sJOxiYglrz3yRSQDPV9gSH2wr7BVML6TrNFOujB20Y1+mV5gH/ie2LSyAzZ4aKHKV1+1HyNWXXXJZdgr/88Ma+BmoLdvqUNG/q7OR/0zFt7Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:1e7::15)
 by DB3P189MB2624.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:438::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 10:04:14 +0000
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6]) by DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6%4]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 10:04:14 +0000
From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
To: 
Date: Tue,  4 Jul 2023 11:59:11 +0200
Message-Id: <20230704095915.9750-1-sriram.yagnaraman@est.tech>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: GV3PEPF000000D5.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:2:0:1e) To DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:1e7::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBP189MB1433:EE_|DB3P189MB2624:EE_
X-MS-Office365-Filtering-Correlation-Id: 211a94df-0f3a-4b60-e663-08db7c760537
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q7I9rykN13Zb2g70ImyMrxuMnAXsj0AmoO+0rXcSDJQFnYleKBC/j1hOMNsXh1gpjV2spTeBedi+7yi6FUnDwyop0o+WXLSDg3gqvGxA/fE8gh5EHzA71TJenuwPr2p6p1pTIpCogO+lJjMYjllF/wSRdovb2euVTE3BDlVmwULrF/xC0oQmwuZZti9WEKIb52jP+2ZIVc/m5OES6HsqE5n4gc5tlVagOES3RIyVJ8+XFdJN7rsDRqznryFKirtM2RnoAUZjqX2pHsXqFa+9EBRzZblzt5J5rneSguL1K5j7Sqkj14JXG1moIe2ktUMs8BaagbHa9+hBTCodAW4AshYhzspMvq03vRlpuO0UbnkPJ1tuFlRtafgK7J4BgoRH00S/Jmy075uhTDgvhv5i4Yh1HVCGmI/ZE0CqmD9JWt5wjbTIEnEqbVNsXQL2zD4/RmwJS7NHXHSrQ9ETGUpb7Ga+88Au0QEo6fNMbM6K36t6FKzNSN9o5pv2BRchl4xTjGefcqJYCDQYk8Lkd0ZIaW5ZNdBIChiqBRH9rXY0bqQ/c0msVCp/maGzXx5dYiL0ax+zbf2n2XBMZOI/3koCgWWd3QPsXwIAX5ZJNvHL9KfIDZzBYhaJ4lBXde1R1p5kpz/2jFU247CC1z9D5DiMcQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBP189MB1433.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39830400003)(346002)(376002)(136003)(109986019)(451199021)(54906003)(6512007)(26005)(44832011)(186003)(86362001)(8676002)(6666004)(7416002)(2906002)(8936002)(36756003)(6486002)(4744005)(5660300002)(41300700001)(478600001)(38100700002)(1076003)(6506007)(66556008)(4326008)(66946007)(66476007)(70586007)(2616005)(83380400001)(316002)(266003)(37730700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SqIn5U4rucOdDpoLQCf9SfpE/FK1AvVGKESG0iVFZx7tqvVMRJeGL5byEgUu?=
 =?us-ascii?Q?z89p95FwJdQR9fUgaBqQDHYPXpqDwRMno4VD5+gIz0jNFF+MLn1qc7YS9Lna?=
 =?us-ascii?Q?jJcAwm4u+RuRFtsRuM6o5azDN6L0OxiaG5Ahc0tanDoOP5idTM6V7WLo2ftg?=
 =?us-ascii?Q?g31u9gM8HnvXa+FYMF5ULXJCkEDBAhckTkJNDSr7qk4lSN7eGwVwTO92tKze?=
 =?us-ascii?Q?d/cfNph7ihnniZHLf4EebQ9mXBpIN6MJ60gbSY9X84XLHZSNUhfPGlQUQzNB?=
 =?us-ascii?Q?3JTmJgNRxWesKSk0EPUxyQY0b4HYXcWKwqnCAw54bft9AdFPIM4MPZIagwrk?=
 =?us-ascii?Q?/Op555/WJExT5B6Yf4VnCescxoAT1vj3LNyFSzYfHyNNnEQwPCi/E1Hf/t0n?=
 =?us-ascii?Q?CEwwZxi3bx717hVV1e1zq51W9suaSPs6IYx0XoKapyZnKZoDJgRSN9PWfDuP?=
 =?us-ascii?Q?W4tejz8VXIcBVScWPTx8/pQPDe29HxTOzbY5dn8NpV7wO1UA1UnQqswXxLaU?=
 =?us-ascii?Q?Th6hez4lQe8aAlBVSjTATKQwWsK1wN+9IRw412oLaSw9UfmQ/PjP0s04dFLj?=
 =?us-ascii?Q?Zo9H+UTZ5w7NBhkzcgJhDG7uvlkIPJkMyYvHWZMkxoFSoUH0XwMeEk8syMiu?=
 =?us-ascii?Q?aq6UkM/pARGijmbFEpJDKTJyjIyUTQet3Sn3c5dNHaefQx25Dhpq9wq5qrws?=
 =?us-ascii?Q?B8TVsGbkncn3g2+lIYt9983zb9jjT79GaASpJQK69CY1L7BUroQqtXVCx1ia?=
 =?us-ascii?Q?aJcR/Xb9L22TZnSTtagJrOdRrJQa4F38X69Yd5zi5+fzugpvK+poYE22ILbf?=
 =?us-ascii?Q?u7rD7aVquKEyLdFpTexQjb/fwmapVHEHbjgnI0GNKqPB7MTNsjJRfA25G/oc?=
 =?us-ascii?Q?HRv7GO1FpBxV6tvgLjHeyiRq1DtYM94j45Gme48vXd7ihVf8Tl0xk/dZG1Fv?=
 =?us-ascii?Q?JdAXy65fWshwMor5cM1TXwBN1zkV7QUgTmcXJUsK7prTm+1pxoTtXe4tz5Ag?=
 =?us-ascii?Q?+cx8iBFS9+bBvkLPaox75z6hZSdx7jU3KNxgsV4Iqqx5+Ky1AjfaEWchxPwP?=
 =?us-ascii?Q?pPqzl8OI8VYx5lR47M8o/lWmvQtUb5zzsesC6ZQd54+4L2WIS+spJkZ6VlP7?=
 =?us-ascii?Q?Q9r4//SoI3DXxHHHo+sQ0Y5kVZTOWXeTTSj68Oxy+cG34E10v/huZIIk3OfH?=
 =?us-ascii?Q?P/MA8k0Mne1pOdsaSRj4Q67cc6QUX6+lrMLpLrisnAKMVTzGt3M2P4P9qswn?=
 =?us-ascii?Q?vzZyjj1xak19RFIxzRnt9FZuyD0dqoal8iiIZazyyTR/wpad5TaPNXZ+I60F?=
 =?us-ascii?Q?sxaeLebaLbJkgZBTHFJ888m9zExzBFtTfO0MMPBcPBAmHsdzr0qjao84ZFj/?=
 =?us-ascii?Q?jjQBuVFNarbCcOq9dOF0XKTECaI4CwMZKVIdlt6ZnnLDAQcEieskWY1NwO+2?=
 =?us-ascii?Q?pzC7EYqd0t/s1tBvTvNGClUsxU4uYrOdFk+jfbkHwmNddblDsia8j+JVRJQU?=
 =?us-ascii?Q?mEjUAVQ/ESxKPZDhuhzhkYtHuyhSArNeXh7kTEdFq+i2zyxON+/hrspeDBqG?=
 =?us-ascii?Q?4cccnv6z6O+tx+fo4703RMnxxamLQc6Be2iH8NlK+FTLz33jvX7dfqwy4fnS?=
 =?us-ascii?Q?zg=3D=3D?=
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: 211a94df-0f3a-4b60-e663-08db7c760537
X-MS-Exchange-CrossTenant-AuthSource: DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 10:04:13.9850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r8fNgnQTYtS6874r/Dj9p53bjVGsEwqjgP8lpUL9QEUHUrl0KXMe+QvPQW4DArx5ro1byIyKlDvogwkyJ3xnTxfzzd1bPt2V5JhiAwvTfto=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3P189MB2624
X-Mailman-Approved-At: Wed, 05 Jul 2023 15:14:37 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estab.onmicrosoft.com; 
 s=selector2-estab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RYwZMdPaWKzAkdnBL1SY8n4OunvZFxKu0r5poIt67d4=;
 b=dhf8d19nFe8fnstpJIrffcWarzHUm/LBLuIixtfow23GchWRnBCKOl8/NJpoQwF2U725qDUTGONubqQvOhH/k9V+aKUi1x46XezvLxqgqEzdQFwTkLweID7mddUCqCV1xzuJmN9TR+VZlsOcFzgtru0M+0SVRE1VP3pz/TEweBM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=estab.onmicrosoft.com
 header.i=@estab.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-estab-onmicrosoft-com header.b=dhf8d19n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: [Intel-wired-lan] [PATCH 0/4] igb: Add support for AF_XDP zero-copy
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Disclaimer: My first patches to Intel drivers, implemented AF_XDP
zero-copy feature which seemed to be missing for igb. Not sure if it was
a conscious choice to not spend time implementing this for older
devices, nevertheless I send them to the list for review.

The first couple of patches adds helper funcctions to prepare for AF_XDP
zero-copy support which comes in the last couple of patches, one each
for Rx and TX paths.

Sriram Yagnaraman (4):
  igb: prepare for AF_XDP zero-copy support
  igb: Introduce txrx ring enable/disable functions
  igb: add AF_XDP zero-copy Rx support
  igb: add AF_XDP zero-copy Tx support

 drivers/net/ethernet/intel/igb/Makefile   |   2 +-
 drivers/net/ethernet/intel/igb/igb.h      |  52 ++-
 drivers/net/ethernet/intel/igb/igb_main.c | 178 +++++++--
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 434 ++++++++++++++++++++++
 4 files changed, 633 insertions(+), 33 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igb/igb_xsk.c

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
