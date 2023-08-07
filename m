Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E16AF772EF9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 21:38:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F35A81EE2;
	Mon,  7 Aug 2023 19:38:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F35A81EE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691437102;
	bh=NZ7Ye4eExCocs5M8Ig8Gn1qI1EAT+GApPFOsYQQgX70=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=egUx+Eo1XeJSwRigpENOH1+DWgM11telcBQmp/J/6X2UvmMEc8V3VqUP8UT2Mi9o4
	 GmiuLq2U3XIyhQLxTOC2qYKtcGDZ+JhB0GvbNLX1amDIWqAtoCg1tJroG8heKM94r/
	 nUHKf8R9XX4U+5GssxQfoZfiyJ55bTB6e9NstwoMH6NsS/3KmyoNQ3rCGOirafZlHK
	 4g8fpRr7P1UaSg+Ve20btrtuoG4XQI2EXNVzrhGgZ9SjHbOwuTEHOUotg8f1NWIngQ
	 FpztNvenDDan3d4WfZ9Jak7woz/ae7+gIZ43qTs3d4Mqx4LBLk2EdAC78dXO9EVSEH
	 wHOPXRaJtSqog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uv45G_KU9LoW; Mon,  7 Aug 2023 19:38:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 595EA81E82;
	Mon,  7 Aug 2023 19:38:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 595EA81E82
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2EB081BF284
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E8F4240929
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8F4240929
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w5M7jePH23hl for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 19:37:44 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03on2041.outbound.protection.outlook.com [40.107.104.41])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19580409F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19580409F1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZeIpxcy62o39xSVdIHpfAyjFkVNYjJT+Cxy16i16UcJDlpOdZ1BuRcnwk4aGfbvxNalS773TavzFXL5Sys8/6gmlHplDOhwjg0RZtAYXhAa00zAFkGv2TsNy91wvcLyomUytM9Lp1p5cK6Fc6oy6N684HSdmPaB+OxgoBjPydCIVHKuvujxrHQtqf8fRqgrbB3lVZEsD7PSjYtfRBQRWXAcDMMd46pTflhr9wLSYrMRL7Z2B30PbVmmA+6vtMHz53QpoOOXVbRKYoKqnCZoSewXS1qYZnRKeVT7q7j7NzVDNPKsValHliKSd3JGVv6OzqRz+6lhQOt0c11KNun+kBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ec+hvhmb1NwBXUODdrdxAAF6frPZkuXpBjTF2kk5A90=;
 b=ZwQ3iEjdJXcHWaC7+eXWFtlAiGqFeoM86t4P6VHdUL7TfaJxKmo0yR/TYZyRS8LXcp0HfIP+4EgsgP9DO3JQzfsYyzr5E6b5R7EmQ94Y5pBIZWPrjYRBODq1MRf3tr/b5QG+Rqvj4Omab7H4amua/Bss2G6gdvd3SLdltMJZ+uAqnFFeV5iN2yeXhwOfKXJE9d8Ul4yf/ZSdcvo3beQfO1JzslYJ82hqWq+S8wDd3TVoIk+Hw1sxDocZ3JyWUj26r31ukX7X7DMWCpZBGrTMxKeDjVc8Xji1pXRkc0J6WVsnZZLkoPrRb+WO0Y2CzQ70/KI83QZemLpPqGiWHgGAmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DB9PR04MB9451.eurprd04.prod.outlook.com (2603:10a6:10:368::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 19:37:42 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 19:37:42 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Aug 2023 22:33:22 +0300
Message-Id: <20230807193324.4128292-10-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230807193324.4128292-1-vladimir.oltean@nxp.com>
References: <20230807193324.4128292-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR01CA0136.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::41) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DB9PR04MB9451:EE_
X-MS-Office365-Filtering-Correlation-Id: 04863b86-9d9c-435f-0998-08db977dc488
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: McfWql2TkZYnz0orXTOgtNvNcda/xnHkZFUGvrU9VsLQWmt0oxrTWjQVKjifS04fIbrpFiy+r32LHhSNovfJj+5tCxsqOk93Pk5+zTwesbEsys6bixdBDBkenuJrg6il7hU1MCd8R82HLC4IEXDxdAPwSjw0G3IS7EtoTdqyeauCnp8BKnHmD41eCMv09fchQXFBSkEwuQ3RIshLcA4WJe7V46jgCcLUSRJ+o1yirM7ycHI0q09Vy5EjlhmPIiMbIvdFn45Yw9meiuVH9lF94wSg1FyXHp/pkDZ43DIJ0UxrT3wqLRvL8PxzhAwDUiy3MYSw3y6NTaJdl/YDRLdFZx9ev4kxhbF/03w2PbMxsVBwKITbxXE8MoRRWm+65RO5RFvVdfoEl0mRXthFlNJ2k57wvTlxyVw0Jy9HXvdzPfhup8u+02/AsSHS6KqI9AplZJaBF4aEJBAYF4u0JYoSgogQWiIAr9uwz7uEfrKrEv6P7XJFgLrt5ZAiMXv7hQxCmndWAdPdf0Jt4RTi0Z0csEABEhF/7KsCUcPR7Ivh+/R7NT6WZdvNJc9Lx6c6IXI9x00MCom8ZMdC1+3GIO8rtNT1BmylnIe4LmpJ+Vd8wODZMgBsuckG1Cw0/+SUdTAt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(186006)(1800799003)(451199021)(1076003)(41300700001)(26005)(2906002)(5660300002)(44832011)(83380400001)(7416002)(8676002)(4744005)(8936002)(2616005)(6916009)(86362001)(316002)(6506007)(54906003)(38350700002)(38100700002)(6486002)(66476007)(66556008)(478600001)(52116002)(66946007)(6666004)(6512007)(4326008)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IvcgsayO5XijRQ+jLGsD2jEu+MaUOiZRuD5e11b/3aSdWMOBK4b6Z4bBFHXg?=
 =?us-ascii?Q?Pko82sXb3EyIlAtWlofVtyFFSuPiFvscG3NqBhQpOXmwN1/ElxnxvDiemNZr?=
 =?us-ascii?Q?rq2LxtctMGFpsp9fB7vDCouVnRTDhFuK2j7vV4V3NPPgnziNMYuBhli5XF3W?=
 =?us-ascii?Q?2pZ+zgB9dMSOpnyk1YJB5wKssm7LqY2yDHjMQb+w5iuyBqDB1kFW2M4Ldz8/?=
 =?us-ascii?Q?MclSC+RWrDHopQ9AdDoSpJosIgme0/Lu4/iIsiwwwSlbnk+cxFpKj/0WfnSo?=
 =?us-ascii?Q?qTm9FKk/n00e4lZFUFH1zTEn0QBZTGzpuBTwuuGafnrMRef9EathS3nS4gAs?=
 =?us-ascii?Q?A8d20jJa99BKyFY3g2BPIixsACZ8xlzuIJffHjP6K9DVmJkb4bYs4YK89NPt?=
 =?us-ascii?Q?T4EWy+kR9Da7I9EzlEMt0lvEJTw++YHwfmCytJMf5CjgV6TIqwFnCJS779Qj?=
 =?us-ascii?Q?3EfmBlTC6OdF6XhQkMGmX8eMkxbIOawn3OoQ1hIpuHJa88Yjt/4kWSo4SaGz?=
 =?us-ascii?Q?CIWFYVcwi7GOOwhl8OhdmsZNNoWjAR+r+IgLs1KJzYSCuWjTKx1pGE4bQqF8?=
 =?us-ascii?Q?/q8BqjBxjcPbSQOy20vGXwQ1csFinpTDE8qjJz8RhomA8bWJVNTBqXk3wxEJ?=
 =?us-ascii?Q?Ip/LQZkaWx/ydNOFNikrLCKI+mrJbsMobNRvffaQKZ6hLJXd7ZLeRkFiFMBr?=
 =?us-ascii?Q?q542cyXhNQ8frBarpsCWwiZEgrb7k19Ga54ENZygAkTkoWuJxjTPGgCMFXCp?=
 =?us-ascii?Q?Fb5qjHVser47W5uRNMdimCmxsALwLjloyCTDPYszpFQym2KIEQgit5JMAIK/?=
 =?us-ascii?Q?k3axynhauV8mJp7U9G9+LvplSpN8NjSHyWY9QOclaZCjSVdf9oU6NrQp8L6D?=
 =?us-ascii?Q?I2OvDC2FbYMhuSdojBqx8lirCEYRuPVxK7YuuZnEQaUYymF2njxP8GrgcZ0r?=
 =?us-ascii?Q?BUCLSKWYf4vTBcT6NglBLqyjPA20lAcmb2TuVDikLQEyh08PI7F7tSwwt3Sp?=
 =?us-ascii?Q?1PU7E/qmEqxYZ11kLusgqajBOq2/mWmyQcNDrUNqiXO5VFxJ48h/ORElPDxB?=
 =?us-ascii?Q?V27qJx4VNccHjEI4NS5A08BhCWjYuCWpiLmlmLwq8HqB487N9MzjeJKPonFr?=
 =?us-ascii?Q?biuxmCnbxtix+yliPsaSXtGt4YoFYAYofGMkdTRU+ssGTIHxHbz0l7p9HpY6?=
 =?us-ascii?Q?58slRz2bDIKrSzEuQfZv8Ca4TS4KhAJVespHnTE9tzgfZcYYoaCWxc35mqim?=
 =?us-ascii?Q?XVHJBYw6Obdh6QjH53bnxUAYq0O9TisZOOi3J9MDg5C71SydCrHqPkljx2g1?=
 =?us-ascii?Q?sHM0Nq9kzfG9+tWdovf1KvpHqK8ofzyETHnU6FcqDxsA4IyM3IZIuVraKi7v?=
 =?us-ascii?Q?ox04xren1kc3fU9A8TTPRJF5yYngc7JyLRmtR6G07tPX7dBTml6Vd8kGE0go?=
 =?us-ascii?Q?8J/CRYBmoiZiLKqHBF4XbtXfn+uydTgjeROpTJlj8vBrLdExGEAEcYPNa4Z7?=
 =?us-ascii?Q?4FecOB9+AkkWAPIz3hu6GMujGTRTsLTSsOgn7TEfsqVRNLD6odywgPzKSNB7?=
 =?us-ascii?Q?FSWljD/VDRx5HhGvd2kIIIgmpHLykNO8kY9Fi9OzivLetM8yFMWZEkCKLCMK?=
 =?us-ascii?Q?6g=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04863b86-9d9c-435f-0998-08db977dc488
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 19:37:42.8449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TDFosRaq86HeAlgadBmembILNk+XdIw4XGPOvFEAQ+AqQUQtkyRLXXETpy9hu6dh4UJMyH+xu5E87F41PWlnNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9451
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ec+hvhmb1NwBXUODdrdxAAF6frPZkuXpBjTF2kk5A90=;
 b=OFbysyCqBRRjwmNbNpmtXt8MnId5CG+Hkd3nEhHh/yKAkW4+2BRWdQJxUxWH1Y48/9lOO7y5xJyowR7gERY757ok4272fTxpf6giJ9UiMrZIKNboBiNp04GOkZE7NARbRipECvgvmvywvKZoR6z8VpmEbdNjyyJcsZj9es6Ym+w=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=OFbysyCq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v4 net-next 09/11] selftests/tc-testing:
 add ptp_mock Kconfig dependency
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
 Victor Nogueira <victor@mojatatu.com>,
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

For offloaded tc-taprio testing with netdevsim, the mock-up PHC driver
is used.

Suggested-by: Victor Nogueira <victor@mojatatu.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v3->v4: patch is new

 tools/testing/selftests/tc-testing/config | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/tc-testing/config b/tools/testing/selftests/tc-testing/config
index 71706197ba0f..5aa8705751f0 100644
--- a/tools/testing/selftests/tc-testing/config
+++ b/tools/testing/selftests/tc-testing/config
@@ -96,10 +96,11 @@ CONFIG_NET_SCH_FIFO=y
 CONFIG_NET_SCH_ETS=m
 CONFIG_NET_SCH_RED=m
 CONFIG_NET_SCH_FQ_PIE=m
-CONFIG_NETDEVSIM=m
 
 #
 ## Network testing
 #
 CONFIG_CAN=m
 CONFIG_ATM=y
+CONFIG_NETDEVSIM=m
+CONFIG_PTP_1588_CLOCK_MOCK=m
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
