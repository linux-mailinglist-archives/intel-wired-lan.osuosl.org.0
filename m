Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABA87159D9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 11:20:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB78D610F4;
	Tue, 30 May 2023 09:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB78D610F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685438426;
	bh=d0lJZaGWNvw3DBHB7VxKoM2ucTndjd6UQlBK3h9VMUE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9ywVNG9NXDjQFR0mRgM+qIi7BlvSCsZWbLuhabe0XtcX8N/IRrJptVJ3+n5LLWaUG
	 +G2S23R4OxYBGtXZ6kgdCFtGXF3fQwmRR3U2etESG0xvjKpIbozulHucrTEAIlU+Ne
	 XewDKvLuUMiTB9kPFY97/r5IET+Q0NUT7JVdid8sdXEHrsTGTudJl30E2DvumBSEgQ
	 mbwuRpNbQsivg/fzWdUHee+E02RVU+L3URHqo6Q9vWUg5l2/zH1/CQFumCQgd4mF2O
	 jV/ADqhn/dbvhBTA5IDvfhR1K3jfL67k6W/t+09DdUTc1A7HsMwGq4csR5ujjVpU9L
	 bFLpPcYNayQAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kuV8TCHtVeoY; Tue, 30 May 2023 09:20:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE17960F6C;
	Tue, 30 May 2023 09:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE17960F6C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7519C1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4DB2882298
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DB2882298
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ds4j9-f7vWmw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 09:20:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA70982167
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04on2061.outbound.protection.outlook.com [40.107.6.61])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BA70982167
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GD6S0172gp/dxAB7VGPTfKOuHvwmZE42QiaObYfftAB06hJnWu41TCWEKCDKWOQrtsvmv2DrEdgHsUoPeeeBC9LfimQmSpYSGv0/GVEEznA+Phtui/ZmVigjbT78vHsiGKHWRvZoV0ulIU6mix7f4T8vyasygCGcF7cD4wlO9BqIfZfm5gmt2uLljKf3XMBQg/Y2VS666s5KP00qlri76OWz4hV8SrpNHyE97ZDCExO5X74CKtlfwg1ltw1gdGzCAf+5iF/Gb+by8KtlFixe+g0ujIeXXOwsOpjTgMd8JdjJtf11nZxCjbBkcW9NAAW5/zFLNQJxMdGGxgHRglEbaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VBEaqDy4D9tDKHQXfkKfLhwcS25P9ekNXEIOL6VR3Jg=;
 b=bSptYvfkmulpsCQmHghpplnEwXIFunaWXuovWIgf8Mb+qvKLLuuHlVeBDeNPC9t9rvJwXANOskU8dG0JmpvFCcmJ3zdLR36OYqVj/ElRzxjvhRw/P9HCW9DULYkk8D2PqK4dE/W9Qna/6JY2GT2K6e/bnY/7xFVSIgHLH7qxscAzvDQqyBc2b6+5vzMpCjfGfxVgRhTyTfX5xN4Gc/619j/Av3FLRV0LdfKnLCuYgq12x/ErxxPPWR6TN9EiO+5LGXSxOQyR5kr8Ora4VBUbu/MzhULHgsPs9l8F1iUxHs16Av8u77LjErPCU9D8aw7hM3X+PCKyem/bE1Ox1EyyCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by VI1PR04MB7167.eurprd04.prod.outlook.com (2603:10a6:800:12a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 09:20:10 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 09:20:10 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue, 30 May 2023 12:19:45 +0300
Message-Id: <20230530091948.1408477-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR0P281CA0155.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::18) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|VI1PR04MB7167:EE_
X-MS-Office365-Filtering-Correlation-Id: 641ad1da-0300-4f30-3229-08db60ef112a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pRr+lyU1vSqRGuetY5wz3uxCGCgkp3oo0Dv+1dKZDb8axylKF35lPpHgwJdNVHDsVTWvIaVjcgva4jnaaOb2V8OPRBK1q/8csfRMDR2fxJVOL2nzjQQ7dZ2sCZ6j+QhNrrJ2AvatpoSgM7pmrD33v/h1QzMcDkm+nei++AwA9oYbGsofzaJwSL+7yTurXU0bWGc84qGAGebdw30+ley76YBG6lsRwCOy483vf8jxaUuPheeMfOtNg84vyKj5JE99fnMdfREFxDd6nps1/HH+yl5s9vPq2XdKN+rF6He14zxAeGkJOhsr2m8VN2QfJVZKZBCpk1eHSp49mxyylaXtITa4xv8kQ5OVaFLfwWMWqBPrEheunmoIYq6KYcX09cjsMwaeH6ZEZy9EPOU4/w9CeKi2nGM9D9X9YP4djb+g+LDt2Saq7q6HoOjSAY74cAWYGXejpiLf2CjVBVrGL7so83Hu6PKcq/n8Jmh3qGYL10CNgnwqGmFC6CKNYhCebdfHiG060JoD8hpMNS4UL0l0DkbPg3/BNv3i+WCa9CQg8AZfz6PRvpYHfMIYkkh3BFFoMj72/3l9ceW3XlaInrVlXrlSnsAiftKUGnZi8vYkPgWrpTSrAiW3qvYmsVpIShAa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(39860400002)(396003)(346002)(366004)(376002)(451199021)(54906003)(478600001)(38100700002)(38350700002)(66946007)(66556008)(66476007)(6486002)(41300700001)(52116002)(7416002)(7406005)(8676002)(8936002)(5660300002)(86362001)(44832011)(26005)(2906002)(30864003)(186003)(1076003)(6506007)(6512007)(83380400001)(6916009)(4326008)(316002)(6666004)(2616005)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HwxojWV5yVuCrj+SKS4IesAzrWcn5DjEIGawKifkZ5RcKfds0cxhF3ScnAYw?=
 =?us-ascii?Q?SR8i9sJnpKg6HVJHQbp+AoMvZO4gR6FxaAferthA5ZPP7XOBbC9IDE98dUOX?=
 =?us-ascii?Q?WXd8wS3/0Mj9pt4Cp3XQpMHF1Gud8uJEAbCheEtT3jqnSfrrg5j/2e00sZGy?=
 =?us-ascii?Q?92MFyzi8mk1FUWg5T5VgxvkFR5xRz+QJH5fBem59d1L//ePOzbEEmcuxZGLl?=
 =?us-ascii?Q?AqY9sCpmdXcqA2qC1s8uutP8Y3u4kolokhWdVsTIjj68jPs/1rmZHAqWEVY9?=
 =?us-ascii?Q?GiHP/AiPnfx+PDHipsLkEutcmsXSpk6dgsfHA/XQesy04yRzgUKL8ibNyaay?=
 =?us-ascii?Q?ZgxZ3CJ0HCj4H5teJmrq0oKFeceI7M8z31+BsPHPrMWBFz0mhyf/rhjY7jwL?=
 =?us-ascii?Q?7gXyWx9riXqvihxO4d3AJi3k51a/Up8EgZ6qY7AzV3L4Mu9SEowhDCeO1g24?=
 =?us-ascii?Q?57X4ui10SjcItWze4g++MU37TfGOaBSDEb073eS8srq+QgJtwplF6IMxxR6P?=
 =?us-ascii?Q?95L/A/iV2TyrfOB+hb14BksmA/Je4Fv5K/mCNoFjlhDd5n9ZgLvArjj4Vc0v?=
 =?us-ascii?Q?TFJ2TtcOsm8y88ReNcOlg5eVfhmN+z76QYVZM59Z+67wykT7UiUEJJxH1e6e?=
 =?us-ascii?Q?ocvsJRn7NljwsUXMfLdWayG1bP1D3aWZpdzHROA9LRuabRSjsBqjRkZ2D2qq?=
 =?us-ascii?Q?/3CuTRw2ix3RMiZPjbfcZQke8+nS7QJuoPHbJa8lBcumsdVp3eKFYs/5GLrC?=
 =?us-ascii?Q?jrfVt6mjDgzKdLE1TH+tnUDCgMWlI3B+vqVOrqg6JATzweOuGK9pHgFNSXvG?=
 =?us-ascii?Q?NwKmQEzdwO9UrqAVtc8juegQ7JwRR9F3aHn4MD3iWvfNrPBUYrP4ZVZuShfy?=
 =?us-ascii?Q?uPzhAcst6qQwl+gkUSh838wgXVgvPixxdi3kNAgmUcpu6U6jA1hNtMHL8u5w?=
 =?us-ascii?Q?5uEKerWIiD/epD8C+oMxv0hXnlZp7qLS6R53wBy+BiSVwHXRknnQxtw9NU67?=
 =?us-ascii?Q?ndPp21OtaLygrZT3MbfaODxQAhNmajqWbD8rWO/LZBOK3OG/2au0jsJFxKke?=
 =?us-ascii?Q?1SXlhlgS0a26OA0t0w1Jf8jCR9QHvtHXH+cOrJa7/POHWCHq3YfX49dY3+ej?=
 =?us-ascii?Q?vasrudcnhhTBPU2Ff61Hpa1xTeptw/CIuzqXTSQ0p8+ro7v/cDmux37dXyyu?=
 =?us-ascii?Q?e89PI80Dwo2j6txO+4PNzbIyhk1qkIX2nG/6lGRFNKsoorURZWoIA+tNKb4a?=
 =?us-ascii?Q?hbvRXTJcVW6MY1RDi1/FMjVFIoXpWufis0sfPNVULl8hnZdJ9WoENyROecFU?=
 =?us-ascii?Q?DvSYNunA5o1SjJ0iN5DM9XYBGY+VHogblu18gn2/w4TBjnxrI0NIjfWgpwx1?=
 =?us-ascii?Q?A82S1F2V9ctM0q+SSdgsSv7WlpF7kx62RGysme8PGKbZEUkW0KunIgirt79J?=
 =?us-ascii?Q?O7DDnQNqkOf4QZ0eYI/i6teCndVKlv1mQYxQUccaF8GPKJIEfwmywugSNTC9?=
 =?us-ascii?Q?sJdRbMnGEHbKS3dls12FEXla1tvOg8T8dumWKYM0fbxQviCOwk+KMmDcGg8I?=
 =?us-ascii?Q?ADRYDB0W2MnXvK2MwpsmUf8g7Isoa+F4BzP1iyx5in63IVBTXDrUHWUlP6IE?=
 =?us-ascii?Q?qA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 641ad1da-0300-4f30-3229-08db60ef112a
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2023 09:20:10.7362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CdjHhUtIi2ofDj9YnCPL6kU3JiDZ02VU39hsHyF6tT2sZXStpzwDqv1KF2qEMsSiVfuNt7U53PtWaluitMDrrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7167
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VBEaqDy4D9tDKHQXfkKfLhwcS25P9ekNXEIOL6VR3Jg=;
 b=O8fUw2OpkMlzI8UpVDFO6GcfaxDVkaW2gzz3z17PLKL3mQfpDyGe+7xDDUTUowPPNsMAIKtt9HrUPzJERY9nIgNMwDetL4wzu11AukhfWcJnek5XXTAYHFSiyN7Y48dOzaUFJbcY8XvipB4ley7KvDzCltrWx6/g8Uo17IDqji8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=O8fUw2Op
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH net-next 2/5] net/sched: taprio: replace
 tc_taprio_qopt_offload :: enable with a "cmd" enum
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ferenc Fejes <ferenc.fejes@ericsson.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>, UNGLinuxDriver@microchip.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Xiaoliang Yang <xiaoliang.yang_1@nxp.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Mohammad Athari Bin Ismail <mohammad.athari.ismail@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Pranavi Somisetty <pranavi.somisetty@amd.com>,
 Jiri Pirko <jiri@resnulli.us>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Roger Quadros <rogerq@kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Michael Sit Wei Hong <michael.wei.hong.sit@intel.com>,
 Harini Katakam <harini.katakam@amd.com>, linux-kernel@vger.kernel.org,
 Jose Abreu <joabreu@synopsys.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Inspired from struct flow_cls_offload :: cmd, in order for taprio to be
able to report statistics (which is future work), it seems that we need
to drill one step further with the ndo_setup_tc(TC_SETUP_QDISC_TAPRIO)
multiplexing, and pass the command as part of the common portion of the
muxed structure.

Since we already have an "enable" variable in tc_taprio_qopt_offload,
refactor all drivers to check for "cmd" instead of "enable", and reject
every other command except "replace" and "destroy" - to be future proof.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/dsa/hirschmann/hellcreek.c             | 14 +++++++++-----
 drivers/net/dsa/ocelot/felix_vsc9959.c             |  4 +++-
 drivers/net/dsa/sja1105/sja1105_tas.c              |  7 +++++--
 drivers/net/ethernet/engleder/tsnep_selftests.c    | 12 ++++++------
 drivers/net/ethernet/engleder/tsnep_tc.c           |  4 +++-
 drivers/net/ethernet/freescale/enetc/enetc_qos.c   |  6 +++++-
 drivers/net/ethernet/intel/igc/igc_main.c          | 13 +++++++++++--
 .../net/ethernet/microchip/lan966x/lan966x_tc.c    | 10 ++++++++--
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    |  7 +++++--
 drivers/net/ethernet/ti/am65-cpsw-qos.c            | 11 ++++++++---
 include/net/pkt_sched.h                            |  7 ++++++-
 net/sched/sch_taprio.c                             |  4 ++--
 12 files changed, 71 insertions(+), 28 deletions(-)

diff --git a/drivers/net/dsa/hirschmann/hellcreek.c b/drivers/net/dsa/hirschmann/hellcreek.c
index 595a548bb0a8..af50001ccdd4 100644
--- a/drivers/net/dsa/hirschmann/hellcreek.c
+++ b/drivers/net/dsa/hirschmann/hellcreek.c
@@ -1885,13 +1885,17 @@ static int hellcreek_port_setup_tc(struct dsa_switch *ds, int port,
 	case TC_SETUP_QDISC_TAPRIO: {
 		struct tc_taprio_qopt_offload *taprio = type_data;
 
-		if (!hellcreek_validate_schedule(hellcreek, taprio))
-			return -EOPNOTSUPP;
+		switch (taprio->cmd) {
+		case TAPRIO_CMD_REPLACE:
+			if (!hellcreek_validate_schedule(hellcreek, taprio))
+				return -EOPNOTSUPP;
 
-		if (taprio->enable)
 			return hellcreek_port_set_schedule(ds, port, taprio);
-
-		return hellcreek_port_del_schedule(ds, port);
+		case TAPRIO_CMD_DESTROY:
+			return hellcreek_port_del_schedule(ds, port);
+		default:
+			return -EOPNOTSUPP;
+		}
 	}
 	default:
 		return -EOPNOTSUPP;
diff --git a/drivers/net/dsa/ocelot/felix_vsc9959.c b/drivers/net/dsa/ocelot/felix_vsc9959.c
index 030738fef60e..5de6a27052fc 100644
--- a/drivers/net/dsa/ocelot/felix_vsc9959.c
+++ b/drivers/net/dsa/ocelot/felix_vsc9959.c
@@ -1411,7 +1411,7 @@ static int vsc9959_qos_port_tas_set(struct ocelot *ocelot, int port,
 
 	mutex_lock(&ocelot->tas_lock);
 
-	if (!taprio->enable) {
+	if (taprio->cmd == TAPRIO_CMD_DESTROY) {
 		ocelot_port_mqprio(ocelot, port, &taprio->mqprio);
 		ocelot_rmw_rix(ocelot, 0, QSYS_TAG_CONFIG_ENABLE,
 			       QSYS_TAG_CONFIG, port);
@@ -1423,6 +1423,8 @@ static int vsc9959_qos_port_tas_set(struct ocelot *ocelot, int port,
 
 		mutex_unlock(&ocelot->tas_lock);
 		return 0;
+	} else if (taprio->cmd != TAPRIO_CMD_REPLACE) {
+		return -EOPNOTSUPP;
 	}
 
 	ret = ocelot_port_mqprio(ocelot, port, &taprio->mqprio);
diff --git a/drivers/net/dsa/sja1105/sja1105_tas.c b/drivers/net/dsa/sja1105/sja1105_tas.c
index e6153848a950..d7818710bc02 100644
--- a/drivers/net/dsa/sja1105/sja1105_tas.c
+++ b/drivers/net/dsa/sja1105/sja1105_tas.c
@@ -516,10 +516,11 @@ int sja1105_setup_tc_taprio(struct dsa_switch *ds, int port,
 	/* Can't change an already configured port (must delete qdisc first).
 	 * Can't delete the qdisc from an unconfigured port.
 	 */
-	if (!!tas_data->offload[port] == admin->enable)
+	if ((!!tas_data->offload[port] && admin->cmd == TAPRIO_CMD_REPLACE) ||
+	    (!tas_data->offload[port] && admin->cmd == TAPRIO_CMD_DESTROY))
 		return -EINVAL;
 
-	if (!admin->enable) {
+	if (admin->cmd == TAPRIO_CMD_DESTROY) {
 		taprio_offload_free(tas_data->offload[port]);
 		tas_data->offload[port] = NULL;
 
@@ -528,6 +529,8 @@ int sja1105_setup_tc_taprio(struct dsa_switch *ds, int port,
 			return rc;
 
 		return sja1105_static_config_reload(priv, SJA1105_SCHEDULING);
+	} else if (admin->cmd != TAPRIO_CMD_REPLACE) {
+		return -EOPNOTSUPP;
 	}
 
 	/* The cycle time extension is the amount of time the last cycle from
diff --git a/drivers/net/ethernet/engleder/tsnep_selftests.c b/drivers/net/ethernet/engleder/tsnep_selftests.c
index 1581d6b22232..8a9145f93147 100644
--- a/drivers/net/ethernet/engleder/tsnep_selftests.c
+++ b/drivers/net/ethernet/engleder/tsnep_selftests.c
@@ -329,7 +329,7 @@ static bool disable_taprio(struct tsnep_adapter *adapter)
 	int retval;
 
 	memset(&qopt, 0, sizeof(qopt));
-	qopt.enable = 0;
+	qopt.cmd = TAPRIO_CMD_DESTROY;
 	retval = tsnep_tc_setup(adapter->netdev, TC_SETUP_QDISC_TAPRIO, &qopt);
 	if (retval)
 		return false;
@@ -360,7 +360,7 @@ static bool tsnep_test_taprio(struct tsnep_adapter *adapter)
 	for (i = 0; i < 255; i++)
 		qopt->entries[i].command = TC_TAPRIO_CMD_SET_GATES;
 
-	qopt->enable = 1;
+	qopt->cmd = TAPRIO_CMD_REPLACE;
 	qopt->base_time = ktime_set(0, 0);
 	qopt->cycle_time = 1500000;
 	qopt->cycle_time_extension = 0;
@@ -382,7 +382,7 @@ static bool tsnep_test_taprio(struct tsnep_adapter *adapter)
 	if (!run_taprio(adapter, qopt, 100))
 		goto failed;
 
-	qopt->enable = 1;
+	qopt->cmd = TAPRIO_CMD_REPLACE;
 	qopt->base_time = ktime_set(0, 0);
 	qopt->cycle_time = 411854;
 	qopt->cycle_time_extension = 0;
@@ -406,7 +406,7 @@ static bool tsnep_test_taprio(struct tsnep_adapter *adapter)
 	if (!run_taprio(adapter, qopt, 100))
 		goto failed;
 
-	qopt->enable = 1;
+	qopt->cmd = TAPRIO_CMD_REPLACE;
 	qopt->base_time = ktime_set(0, 0);
 	delay_base_time(adapter, qopt, 12);
 	qopt->cycle_time = 125000;
@@ -457,7 +457,7 @@ static bool tsnep_test_taprio_change(struct tsnep_adapter *adapter)
 	for (i = 0; i < 255; i++)
 		qopt->entries[i].command = TC_TAPRIO_CMD_SET_GATES;
 
-	qopt->enable = 1;
+	qopt->cmd = TAPRIO_CMD_REPLACE;
 	qopt->base_time = ktime_set(0, 0);
 	qopt->cycle_time = 100000;
 	qopt->cycle_time_extension = 0;
@@ -610,7 +610,7 @@ static bool tsnep_test_taprio_extension(struct tsnep_adapter *adapter)
 	for (i = 0; i < 255; i++)
 		qopt->entries[i].command = TC_TAPRIO_CMD_SET_GATES;
 
-	qopt->enable = 1;
+	qopt->cmd = TAPRIO_CMD_REPLACE;
 	qopt->base_time = ktime_set(0, 0);
 	qopt->cycle_time = 100000;
 	qopt->cycle_time_extension = 50000;
diff --git a/drivers/net/ethernet/engleder/tsnep_tc.c b/drivers/net/ethernet/engleder/tsnep_tc.c
index d083e6684f12..745b191a5540 100644
--- a/drivers/net/ethernet/engleder/tsnep_tc.c
+++ b/drivers/net/ethernet/engleder/tsnep_tc.c
@@ -325,7 +325,7 @@ static int tsnep_taprio(struct tsnep_adapter *adapter,
 	if (!adapter->gate_control)
 		return -EOPNOTSUPP;
 
-	if (!qopt->enable) {
+	if (qopt->cmd == TAPRIO_CMD_DESTROY) {
 		/* disable gate control if active */
 		mutex_lock(&adapter->gate_control_lock);
 
@@ -337,6 +337,8 @@ static int tsnep_taprio(struct tsnep_adapter *adapter,
 		mutex_unlock(&adapter->gate_control_lock);
 
 		return 0;
+	} else if (qopt->cmd != TAPRIO_CMD_REPLACE) {
+		return -EOPNOTSUPP;
 	}
 
 	retval = tsnep_validate_gcl(qopt);
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_qos.c b/drivers/net/ethernet/freescale/enetc/enetc_qos.c
index 83c27bbbc6ed..7aad824f4da7 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_qos.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_qos.c
@@ -65,7 +65,7 @@ static int enetc_setup_taprio(struct net_device *ndev,
 	gcl_len = admin_conf->num_entries;
 
 	tge = enetc_rd(hw, ENETC_PTGCR);
-	if (!admin_conf->enable) {
+	if (admin_conf->cmd == TAPRIO_CMD_DESTROY) {
 		enetc_wr(hw, ENETC_PTGCR, tge & ~ENETC_PTGCR_TGE);
 		enetc_reset_ptcmsdur(hw);
 
@@ -138,6 +138,10 @@ int enetc_setup_tc_taprio(struct net_device *ndev, void *type_data)
 	struct enetc_ndev_priv *priv = netdev_priv(ndev);
 	int err, i;
 
+	if (taprio->cmd != TAPRIO_CMD_REPLACE &&
+	    taprio->cmd != TAPRIO_CMD_DESTROY)
+		return -EOPNOTSUPP;
+
 	/* TSD and Qbv are mutually exclusive in hardware */
 	for (i = 0; i < priv->num_tx_rings; i++)
 		if (priv->tx_ring[i]->tsd_enable)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c5ef1edcf548..88145c30c919 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6113,9 +6113,18 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	size_t n;
 	int i;
 
-	adapter->qbv_enable = qopt->enable;
+	switch (qopt->cmd) {
+	case TAPRIO_CMD_REPLACE:
+		adapter->qbv_enable = true;
+		break;
+	case TAPRIO_CMD_DESTROY:
+		adapter->qbv_enable = false;
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
 
-	if (!qopt->enable)
+	if (!adapter->qbv_enable)
 		return igc_tsn_clear_schedule(adapter);
 
 	if (qopt->base_time < 0)
diff --git a/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c b/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c
index cf0cc7562d04..ee652f2d2359 100644
--- a/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c
+++ b/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c
@@ -21,8 +21,14 @@ static int lan966x_tc_setup_qdisc_mqprio(struct lan966x_port *port,
 static int lan966x_tc_setup_qdisc_taprio(struct lan966x_port *port,
 					 struct tc_taprio_qopt_offload *taprio)
 {
-	return taprio->enable ? lan966x_taprio_add(port, taprio) :
-				lan966x_taprio_del(port);
+	switch (taprio->cmd) {
+	case TAPRIO_CMD_REPLACE:
+		return lan966x_taprio_add(port, taprio);
+	case TAPRIO_CMD_DESTROY:
+		return lan966x_taprio_del(port);
+	default:
+		return -EOPNOTSUPP;
+	}
 }
 
 static int lan966x_tc_setup_qdisc_tbf(struct lan966x_port *port,
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
index 9d55226479b4..ac41ef4cbd2f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
@@ -966,8 +966,11 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
 		return -EOPNOTSUPP;
 	}
 
-	if (!qopt->enable)
+	if (qopt->cmd == TAPRIO_CMD_DESTROY)
 		goto disable;
+	else if (qopt->cmd != TAPRIO_CMD_REPLACE)
+		return -EOPNOTSUPP;
+
 	if (qopt->num_entries >= dep)
 		return -EINVAL;
 	if (!qopt->cycle_time)
@@ -988,7 +991,7 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
 
 	mutex_lock(&priv->plat->est->lock);
 	priv->plat->est->gcl_size = size;
-	priv->plat->est->enable = qopt->enable;
+	priv->plat->est->enable = qopt->cmd == TAPRIO_CMD_REPLACE;
 	mutex_unlock(&priv->plat->est->lock);
 
 	for (i = 0; i < size; i++) {
diff --git a/drivers/net/ethernet/ti/am65-cpsw-qos.c b/drivers/net/ethernet/ti/am65-cpsw-qos.c
index 3a908db6e5b2..eced87fa261c 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-qos.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-qos.c
@@ -450,7 +450,7 @@ static int am65_cpsw_configure_taprio(struct net_device *ndev,
 
 	am65_cpsw_est_update_state(ndev);
 
-	if (!est_new->taprio.enable) {
+	if (est_new->taprio.cmd == TAPRIO_CMD_DESTROY) {
 		am65_cpsw_stop_est(ndev);
 		return ret;
 	}
@@ -476,7 +476,7 @@ static int am65_cpsw_configure_taprio(struct net_device *ndev,
 	am65_cpsw_est_set_sched_list(ndev, est_new);
 	am65_cpsw_port_est_assign_buf_num(ndev, est_new->buf);
 
-	am65_cpsw_est_set(ndev, est_new->taprio.enable);
+	am65_cpsw_est_set(ndev, est_new->taprio.cmd == TAPRIO_CMD_REPLACE);
 
 	if (tact == TACT_PROG) {
 		ret = am65_cpsw_timer_set(ndev, est_new);
@@ -520,7 +520,7 @@ static int am65_cpsw_set_taprio(struct net_device *ndev, void *type_data)
 	am65_cpsw_cp_taprio(taprio, &est_new->taprio);
 	ret = am65_cpsw_configure_taprio(ndev, est_new);
 	if (!ret) {
-		if (taprio->enable) {
+		if (taprio->cmd == TAPRIO_CMD_REPLACE) {
 			devm_kfree(&ndev->dev, port->qos.est_admin);
 
 			port->qos.est_admin = est_new;
@@ -564,8 +564,13 @@ static void am65_cpsw_est_link_up(struct net_device *ndev, int link_speed)
 static int am65_cpsw_setup_taprio(struct net_device *ndev, void *type_data)
 {
 	struct am65_cpsw_port *port = am65_ndev_to_port(ndev);
+	struct tc_taprio_qopt_offload *taprio = type_data;
 	struct am65_cpsw_common *common = port->common;
 
+	if (taprio->cmd != TAPRIO_CMD_REPLACE &&
+	    taprio->cmd != TAPRIO_CMD_DESTROY)
+		return -EOPNOTSUPP;
+
 	if (!IS_ENABLED(CONFIG_TI_AM65_CPSW_TAS))
 		return -ENODEV;
 
diff --git a/include/net/pkt_sched.h b/include/net/pkt_sched.h
index f436688b6efc..f5fb11da357b 100644
--- a/include/net/pkt_sched.h
+++ b/include/net/pkt_sched.h
@@ -185,6 +185,11 @@ struct tc_taprio_caps {
 	bool broken_mqprio:1;
 };
 
+enum tc_taprio_qopt_cmd {
+	TAPRIO_CMD_REPLACE,
+	TAPRIO_CMD_DESTROY,
+};
+
 struct tc_taprio_sched_entry {
 	u8 command; /* TC_TAPRIO_CMD_* */
 
@@ -196,7 +201,7 @@ struct tc_taprio_sched_entry {
 struct tc_taprio_qopt_offload {
 	struct tc_mqprio_qopt_offload mqprio;
 	struct netlink_ext_ack *extack;
-	u8 enable;
+	enum tc_taprio_qopt_cmd cmd;
 	ktime_t base_time;
 	u64 cycle_time;
 	u64 cycle_time_extension;
diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index d29e6785854d..06bf4c6355a5 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -1524,7 +1524,7 @@ static int taprio_enable_offload(struct net_device *dev,
 			       "Not enough memory for enabling offload mode");
 		return -ENOMEM;
 	}
-	offload->enable = 1;
+	offload->cmd = TAPRIO_CMD_REPLACE;
 	offload->extack = extack;
 	mqprio_qopt_reconstruct(dev, &offload->mqprio.qopt);
 	offload->mqprio.extack = extack;
@@ -1572,7 +1572,7 @@ static int taprio_disable_offload(struct net_device *dev,
 			       "Not enough memory to disable offload mode");
 		return -ENOMEM;
 	}
-	offload->enable = 0;
+	offload->cmd = TAPRIO_CMD_DESTROY;
 
 	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
 	if (err < 0) {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
