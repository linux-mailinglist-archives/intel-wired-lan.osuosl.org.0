Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2254872EE65
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 23:56:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2364409AC;
	Tue, 13 Jun 2023 21:56:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2364409AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686693361;
	bh=Ik6gYxMy+U9DCq3Rqypnn4CDNSNm3p97g7niSxtYhwY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M/crQL+x6LX52rGUysYiwbNcbzXsO3LvxjB8gIks/m5VSn7WBbSKh3etQvtclw4Qa
	 nMkuvBi8D0aK3+/DIphuyIfhuuU0oijypRvxIZC1XmwNKlbV25ss+8GXLYaVHRUcMo
	 H53Jnd6Dxo4UHAQ4sR47tGsvhbkUSKpVui8lpY9zdHAo0ao9tJ6X6xDbJXZgoXxh99
	 MDdPSSXtncIQu1fVhjqce7cOuFxl9rYhU7yLUgR1kFjQ6UhWwDAxUqjebtdFAMhUZQ
	 Mi3VDe5a1wNCONg0514bOi0eJolm5P/LgaDoXm9U9kysguXMe2LVneLk8iJmas/nxu
	 W1DODoZ/Bzv2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TkLSyHbChdV9; Tue, 13 Jun 2023 21:56:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95331404ED;
	Tue, 13 Jun 2023 21:55:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95331404ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A42581BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F28540BF4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F28540BF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yzposvu6h_qY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 21:55:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEF11400FD
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2077.outbound.protection.outlook.com [40.107.21.77])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BEF11400FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:55:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MeKZHWyvu2YfZQ7rLrnfHtOllqJakuv/jRzAnMtpZWXsqubeJwRTq/R9hj9L/Liry4Fa9b88NBrFI9MJGch4XBF+9kprYIRxYF0payI103K9XEcGQjxvinRemlM6EAna5D6DjXtYpJ89E6kZPJFBWYGWNTyiqOCEf23NQw67x+euyJTivKntiy+ncfW6POrMgXkz5IvmXB4Xwq2RkrNo71WSRHfd8+wYHdj9qjRW17MCSyl60/2zposDpUjJDIMjy5lotgqHOzg1sOx5yhSPUqCtsQkXlw0k4Yf5E+jumjoxUp94q/aAm0drnJmzPi2nqtgz28GimRLxXu3IhDnabw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D3+odP0/iwhuTvjDZXBYX/wtgZPNBxfOCKYxPYNrpdI=;
 b=T/46hgtOKHgz2gPovty9cP/dlShsT0Gzq9so7Ffaiuo8NRNQiNOeQfQZtGRIxHCw18VGHJNyaKkYaQVD1T4txNwxEOhDHGvF8KAYrLag4K0ZqX4Yi8ziHuXjRXuRbnVxfILWg4pDpgo/2oLIeHxPdB8PASkPjCEZrqzJuxX6oPOoh2HIuBbBccFNzFuFqnaSWfadyPpzSET4FKkEAezMeOZvtVWn57ecmwEBQ1MlzRZrGdf2ZAJPO01tJUoU05iUWrVxrmxL3qXKxKQlSYVmin7L9wOjLno//eSeISpCqmf1L9hPw0aZanQ0Hm9fiZN3Xib0rQ9JJkipuC2DpkEz9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB8081.eurprd04.prod.outlook.com (2603:10a6:20b:3e2::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Tue, 13 Jun
 2023 21:54:57 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.045; Tue, 13 Jun 2023
 21:54:57 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Jun 2023 00:54:36 +0300
Message-Id: <20230613215440.2465708-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR04CA0044.eurprd04.prod.outlook.com
 (2603:10a6:208:1::21) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8081:EE_
X-MS-Office365-Filtering-Correlation-Id: d08a77cd-dae1-4c31-4c41-08db6c58d420
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YMQUISa29aRYYQfQCz/3nzkBJhaStcjZLocsfQWQ3ADjSdLEG8wduCjwU6GA+vFi3GExBxCSiUq/SQjBxwLyJ8y0E+2mt+auzAoEq871VfhEkwN4nFJPotzV3gZr1SJK7OWR/mxyJhNrEFnDFwAZmK/Osc0AL8Xl3vp1sA5y0+kjT6WAffPWxgWIOyNPFqjflMVDbfKSoubvef4ZlM7Y7APHH6kck62/uKrBrDU1nUzIsaPvJJwIOSkS8Ne8tv3IAyUcbkmOKMn0LBZix0910h1w/U/MvvHjsJNvB5aNY1cYv+0NszoNr+zWUQLZAD6J0U3RM9z+CzAf6d4S5ut3P1buBBOojfRG5YkIv4KHcD2uPbKOm+c3Ov9sZ/uQh8kjJpGmKs9fBu04h7DFLGGJkk8iRLVWGxD7mglDTTgyvqwjC6iGyuA8IMB37mWCPlfN0ZpZh+Q48jxNKRi4MZS3/HpZd4QY3mnq1VWVPN7AWLcuiioLi31Sy0YKXxmaF+RTK6ukBNxlGKZ6szP6wd4PDEJwxM3Ewi8p87f2ygMpAu4ljQ/WxQjSvthOOEp+TxFhn8Efm8hNloxfKadyPipONAhIWQdFfatjrvLc1XrYAm5wnZIdwlRlPO1B5/cq4TLj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199021)(6916009)(66946007)(4326008)(66556008)(36756003)(186003)(54906003)(478600001)(2616005)(2906002)(66476007)(8676002)(6666004)(316002)(41300700001)(86362001)(6486002)(7416002)(6506007)(1076003)(8936002)(44832011)(83380400001)(26005)(5660300002)(38100700002)(52116002)(38350700002)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nEqD2RkO45KgsneWhSUJluobznnSZtjee0DGlZ7SWymcJNs0GyVXwXt+f7AE?=
 =?us-ascii?Q?7Lr1JZdWZ0uRAKS2qdBvKXI8w0v0/TB73MstczCaFPULdSmGvJdHry0X+zMt?=
 =?us-ascii?Q?gFy7nT3Kxj9EFfAno0o+YLNbUngCh3N3rbHddHXpZAceR1IuW/V8KJTxg0n4?=
 =?us-ascii?Q?Lq+99cvES6LJ5M5V92SDtB/yjZ3Msu0oKAfVMsqeBZRVDvg+dRpLXnz+qCvx?=
 =?us-ascii?Q?EoP3tOS+0qgtZpUoJG/U2zqcxl6Piowsb1vxFChSfdf0UvrPHnA9obmSsZbq?=
 =?us-ascii?Q?p9Tokrvk9OWcjjXQSEJuNrrjcxZVyDOAPwpub4WstOkh0MfuJE58PNyQc0mJ?=
 =?us-ascii?Q?uxPlryhIqExsEYinAcdJBLStC6vFL9aR/OVJesGhWADU1WZXkSXDjmBMdK1l?=
 =?us-ascii?Q?NuDJVBRi3BUwhHH7QzfAvy8vcbTf7jAu0iqHlZdATWyMl7oqG+NIIqFHstsv?=
 =?us-ascii?Q?3n0Wc5jKDKB7U5SJSXywl7m6LUasUj39gW7ASJnB4FWSb3zI6G0BV84B8jtv?=
 =?us-ascii?Q?dJNgVYNIlCx3Ij8kKfMMT7r8IOUdqeCY6SyFxILb0dCRCJ73DRqXeeejzKM2?=
 =?us-ascii?Q?6dS1ONZWNpjtIPPN2IagzlX69RFI7g8VRdptJPKNL9/aVZUaVCr1FG3hLnZ4?=
 =?us-ascii?Q?k2XuXrU7n2/hh+TwV9rU+Rfshdr945ly5E9pUdEF506Cb8KIV7nj1XIVXKPI?=
 =?us-ascii?Q?PVc4xLGD5dxgRd+gkDllQ1zulSKYwfwA9hCB+m/i2bgRap5YrYELTWzYdWB7?=
 =?us-ascii?Q?i6tcURIuv0Ifgf+sMiR+NuRO8g1/G070Pia40g+Kmxh6dSl7z0PD+xFuJHnb?=
 =?us-ascii?Q?ybxlTN3RGv4VggMXxCSKLPF/zbYfcH3Z9BSbgKnaqkxSJRWG4OBo8s7lAd5A?=
 =?us-ascii?Q?9F/26exHECISG7SW0rxW5DRVOv/4fBkFndO9aEQFFyEDmJGKa/BTlvqpxV+c?=
 =?us-ascii?Q?/gr/vcE/cym/O7+uNO2ZZs515Svoj+I8HyEUzpByZ1U4mp+pOkDITetjz5mQ?=
 =?us-ascii?Q?fYNCJk2e9b0C0k1oyvI9ItkHNDdy6Q4B4M7d/aPmuUzU7MtYy9KC09zH8Es4?=
 =?us-ascii?Q?xMd13w7f5SbTkw8jSqBQg7WzCb2CbX8hjt4x52CvNeKJ1/9xWPbhtnLQoyOt?=
 =?us-ascii?Q?8D2np+bYkK7v+iZv3hSxnrhGcGxh2JXpSWf3AJek3aqrJ9X4FFkpgIsfdngg?=
 =?us-ascii?Q?42DeBuUvmxDv31wyBALv7EZjLtytU5j46ZCStalsYShnfSuPSQ4oSDgYariw?=
 =?us-ascii?Q?NSsTXsnuGpO8VTx3ZeXfBzqSMmJ0M4J2lXGWsPbeobDLxJH7OHE3VA2r6Ujl?=
 =?us-ascii?Q?Lbt1gRiV3h9RDaSztU0aVhi7Ji0mdP8y3/ILNEU6iwolgRdTFoiu6vMZtQKU?=
 =?us-ascii?Q?PNfdTEIew0JGra4CGvNB0AFUVEEviakUWp2dL0PDPwTBvlDGNbm8Z4eUEVym?=
 =?us-ascii?Q?yWLCGjuEGDiOnav/NlPtkScZps4o+qy2I6IxSbVVR5QLU3TK+ZNH/21PVsvb?=
 =?us-ascii?Q?HxrKPCvtRqClgtDmCqW7a66kwR9ODSvjwY5eQKqrb+rfpk0jYJ5KhCd3KzCc?=
 =?us-ascii?Q?Sdzfah3ie6bOyDDoiXXznf/16Lo/mjNplhL38Vk3hipq3mLMZDP/GPzrUdR1?=
 =?us-ascii?Q?qw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d08a77cd-dae1-4c31-4c41-08db6c58d420
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 21:54:57.6510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FzqP5lrK6efzRsQ6mQ7Qe3Y+oZ2DOCu5twNN/LeVxfupande5UrA3bMrigs5TQNQ2Y1YeJnAEXnUdp7uOF7GOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8081
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D3+odP0/iwhuTvjDZXBYX/wtgZPNBxfOCKYxPYNrpdI=;
 b=NOIDP+STiw2LQJK+6Xwpk2yze9sl+mjaLAw68txZD6G0VTmYZrUD+lFuniXPI/WzwcMyt5RfmpHCZ5ICDqd77YjNuNVK7TbHwRNzmJQybqHO9OHMRWaNrLw/ENK6Lm1gt00XikUXw529BQB0DuMxGj0lmJawHUWcWQXe7UwEjT8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=NOIDP+ST
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v2 net-next 5/9] net/sched: taprio: dump
 class stats for the actual q->qdiscs[]
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

This makes a difference for the software scheduling mode, where
dev_queue->qdisc_sleeping is the same as the taprio root Qdisc itself,
but when we're talking about what Qdisc and stats get reported for a
traffic class, the root taprio isn't what comes to mind, but q->qdiscs[]
is.

To understand the difference, I've attempted to send 100 packets in
software mode through class 8001:5, and recorded the stats before and
after the change.

Here is before:

$ tc -s class show dev eth0
class taprio 8001:1 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:2 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:3 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:4 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:5 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:6 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:7 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:8 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0

and here is after:

class taprio 8001:1 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:2 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:3 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:4 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:5 root
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:6 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:7 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:8 root leaf 800d:
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0

The most glaring (and expected) difference is that before, all class
stats reported the global stats, whereas now, they really report just
the counters for that traffic class.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2:
- reword commit message
- rebase on top of the TAPRIO_CMD_TC_STATS -> TAPRIO_CMD_QUEUE_STATS change

 net/sched/sch_taprio.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index c35e27d0e49e..86450e67be14 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -2458,11 +2458,11 @@ static unsigned long taprio_find(struct Qdisc *sch, u32 classid)
 static int taprio_dump_class(struct Qdisc *sch, unsigned long cl,
 			     struct sk_buff *skb, struct tcmsg *tcm)
 {
-	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);
+	struct Qdisc *child = taprio_leaf(sch, cl);
 
 	tcm->tcm_parent = TC_H_ROOT;
 	tcm->tcm_handle |= TC_H_MIN(cl);
-	tcm->tcm_info = rtnl_dereference(dev_queue->qdisc_sleeping)->handle;
+	tcm->tcm_info = child->handle;
 
 	return 0;
 }
@@ -2472,16 +2472,14 @@ static int taprio_dump_class_stats(struct Qdisc *sch, unsigned long cl,
 	__releases(d->lock)
 	__acquires(d->lock)
 {
-	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);
+	struct Qdisc *child = taprio_leaf(sch, cl);
 	struct tc_taprio_qopt_offload offload = {
 		.cmd = TAPRIO_CMD_QUEUE_STATS,
 		.queue_stats = {
 			.queue = cl - 1,
 		},
 	};
-	struct Qdisc *child;
 
-	child = rtnl_dereference(dev_queue->qdisc_sleeping);
 	if (gnet_stats_copy_basic(d, NULL, &child->bstats, true) < 0 ||
 	    qdisc_qstats_copy(d, child) < 0)
 		return -1;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
