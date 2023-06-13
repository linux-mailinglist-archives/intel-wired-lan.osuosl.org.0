Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E8172EE69
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 23:56:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B6B6418A5;
	Tue, 13 Jun 2023 21:56:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B6B6418A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686693366;
	bh=xM+ufxjrt2oVnw1x+JqdL83T0IZFzlS0RqpYFf1wys8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xIS0k/KoWS0PPTxucS7COs8tcJZUX4sato0oPWL31dubqmQRkM+/5Or7E+djHe8FN
	 Di/krLvxqWvsibLaTsRko3Wekml7tuwB8eDedFogaUFGj2BXJrIr1Merj30PA7V8T1
	 Woj4cIaisEAucMf3Prei88F2SvAS7ZXRf1+9StRF/ynlGdanCSbVkrNBZxk5pehQXP
	 dSD474OwxNrwZSYkND13WxAOX8vzNU/jVisvrF08aB+qUHfYEJWZTRgiCLPpxNwuvZ
	 vzq4hXwA2Qh5hHWPgtM6FrUpUsd5VSzpgJXRMs7APqArJQQLPHckQffoaeJE0NU7io
	 Nyt8i9hvY9uzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2AgsXPvODTPm; Tue, 13 Jun 2023 21:56:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BECF404ED;
	Tue, 13 Jun 2023 21:56:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BECF404ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D28031BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:55:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0014440BF5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0014440BF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P-syPytnfDRr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 21:55:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA6F940BC2
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2077.outbound.protection.outlook.com [40.107.21.77])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DA6F940BC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:55:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z4Mw3ua9Kql10f9HCc4eZyzDEUh5DCg30pnHIt93z6VUX8i9DuavNe3rAS4GvNlSvcSH6K6+PtAXkbCZbjQqFTSWsW8ydlP4+9caGUmZkk+zekiHWY7DNYZswyoTAEGJ+pWEJ2OyJIi5QJH3/Nbe+aW3wXXCpnBLMBVggNECrvVUAqdPRmOrUTFbFpE9/RV3xgOpfQia4gGAIMLWinrnH+rWt8f+HaCZpt/xNKVtx3oe8PfGr4EfB8CNxKwiOeajzJVb5LkjEyZLoEos0ag6bHCrH995b6GCbPEqWZ1w3ogsJJCjNxw2+Wcis4420gRjwDYT2N9OYJbO7T/JS9SB+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wCftp1cdS1FFtKzgmkD68NiDDebqyLyRkx7wErceK48=;
 b=Q2zlVP6IUTEQ9StoB9yUtQ7os/vT2vSc2bvT5OqgxDtkB71Csgew76NuJu0yRNX4tSRh0ltUP+6zFNCRrMcDKyJ5k1BfZvMly9g/gxfKdk1Zg/QRhnuLq5mzbAU5MmXlfzWvs1gBoYYTU15IBOH0akEO/im9ZCVRvR99R3OcUD1tJ/kzm79CN5HLpyjwvPIweeIsCicweiVBwm29PX/teDgWRzHdaPk3hMt2TRcpjSo1R0xg94LWUAf2Mk1rJ9EX3Q9U8zl1xrk0RpsS23mair25KrGBZQwMKn/1oTfG7SUdmA83s+LUTovoWfsiQwliOhpOwX0prPQhP3SpytlOUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB8081.eurprd04.prod.outlook.com (2603:10a6:20b:3e2::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Tue, 13 Jun
 2023 21:55:00 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.045; Tue, 13 Jun 2023
 21:55:00 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Jun 2023 00:54:38 +0300
Message-Id: <20230613215440.2465708-8-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR04CA0044.eurprd04.prod.outlook.com
 (2603:10a6:208:1::21) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8081:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ca2572b-edd8-4eb0-e6bb-08db6c58d5a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZtxjQeBDtCe21aO0ERRk53BC1I7ChQEO7R87vzxpyjzkgut3opimk//XO0iDO4WQePgn4hUWtPGrmtlf0Eu3CcJafqkS83QFPWv5UOahGmbUWBQ3Z/c1cxfBQpPP1a3NL/+o7WV5PGeoCbgmzTO+hP/22Gu8LwA2V8Lni9AOrcuAzhz5yys0Spt2HFZf52nRgVQlAi4Rlg7Y8pfFUcZVvsPdie5musXypkmZ6fTai69rBoKbYdrs7d+oY33qykI4PIY6AGheWXTcamL4NOqbyds/vyQIJVR9zxwLZ9AQS8V1dg/WycteexzwdIERz1plqqe7YWFUVLNU4KmZ4uZLSZ8q9cYXm+XcTuVAqe1oVC2RulVkkBRhDwA2QzmSiJv9KH8YXSzyXtvfthGHi4rUtvmg4NG5Yy9UOCFWrKaIh3tpdjkDxIQA6KboLBgzIrR+hlKOJL0L/AkFkzuEvzHp6KqsukPbs4eWfHIrXwsBeB3Xgm601DqVRoimY/EU5ceSq42T9+O+SBmXnuhkD3juMp5WmqjAlYOkBSd+py2mCKcOwhBDN0CLsql0Z9O7SPjj8AK0LQUD0HZsVxyS1QrqZ4CEjRqCFNtGlmbX9ua+wzP3kkfdSc9Xs2Ehgl2De7U8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199021)(6916009)(66946007)(4326008)(66556008)(36756003)(186003)(54906003)(478600001)(2616005)(2906002)(66476007)(8676002)(6666004)(316002)(41300700001)(86362001)(6486002)(7416002)(6506007)(1076003)(8936002)(44832011)(83380400001)(26005)(5660300002)(38100700002)(52116002)(38350700002)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BztnzQfEcaeF1dVlBqysFnL61s9W9G5U48ynJ9PbMtri5q65ZF8O0m+ugjPr?=
 =?us-ascii?Q?PIbnNOpQ2BoVx7/bOsWmNau97/ow7/QEPR7LZfdEjBGcmXkkjfo8D/X4ieET?=
 =?us-ascii?Q?h4qDDwx2QI7ZGM6zI1NG1B7oT7yAGyAtGa5R/pFUIjvw4VA7ipYwiNioH6Tv?=
 =?us-ascii?Q?c7/CaNb2OuWzo3T0BlcY+YOz/bIucgUZQkr0sY+eBv90w0uHIb5OQG05g+my?=
 =?us-ascii?Q?QjkLDF4bz0h4KNL0Qew0BDoTpADt3MvcpH2RlExpTe0vM6m23BLg907U/DCl?=
 =?us-ascii?Q?Cn65zK7xyEYQ4ZOuiKd1/+uNsrT51DEjAdeH2kXTE4Lv1NK47JhdTumbxQW4?=
 =?us-ascii?Q?x6eskU1RcvTkxm7yis02ep+5I8Vrwh+cPjCX2sEVAUqQt6qXPFeH6+97IMAL?=
 =?us-ascii?Q?u/S3jHTRcNFEZdSq0AX7b5+C7xOup86VnL8XPBRM7Q3MF+B/tKM0tAmvQbSd?=
 =?us-ascii?Q?PSP35Q3y73gaoK/HJvLk4RKWGKNH23YB9sVPlcSyMZrVMblnd9pj1wm1Ypl+?=
 =?us-ascii?Q?j2HNjikGDfvoO0CKBu/O9LlXL6Zb6az4Ikg4gz40J/Zr18C+O1xMivXLKl9t?=
 =?us-ascii?Q?zXbD940/i+ny743/NEPUKBpTLiEU1b7s4/I9VM1YGa8W9/zS+MjzVjSngZr0?=
 =?us-ascii?Q?EAzJw/C6nNDI1f2AOh88rCQyGNJIJv9D6UOmMYGErmwGgQ12L5rr1Koyho4N?=
 =?us-ascii?Q?SkCcQFnikHUax//pXOxjGN9qQ8eyP6wrsQxXpkmVztA0nsVS/s/Vl38nEOFR?=
 =?us-ascii?Q?h34iCS5vrAvZCXQ3ZKa2Ou8MseGi6L81LQOkEOy6DK8lSEK67V8AyDs9STp8?=
 =?us-ascii?Q?HAlPtFHKrvYScnF90mZeJsq84o88d4sx+n7oh0aGSichtoko0SQCMD5H/MwU?=
 =?us-ascii?Q?/xD8BMtzJOIB1Up8R80lR7VSmNFBcXM+r/ZQsMdvVaeY8Wb70qtAMbNMqTk9?=
 =?us-ascii?Q?TbUcA3Ps/PcZRFMb4ac1daR72iDR4fOfmQ5AoV3QC2e4dnIvBfDWcQD+yC2P?=
 =?us-ascii?Q?3xFfUgz6F5jFwBtg29Qx9Aqij1yfEZO7bzazsfTltXLsqX8Py6YbyQgAs/3O?=
 =?us-ascii?Q?8i0WTm/rbTZZhfoK9xw+hCM2CiDSBLnvsCq5MP+nja0JSRZp+w5dTNVgO+WS?=
 =?us-ascii?Q?+RioBONZmLqwbZ3cIdF4OXP1I7mIqOAAfnOz2+PbViONQPP1vVDh/wjSc6Do?=
 =?us-ascii?Q?aX28/VS0zmTu8K+Mq/wO6fu4uHXgmt760f26G+uejGhjx4exUFtSnpVgfBnf?=
 =?us-ascii?Q?n/wrYnUXOwdad5yWhi01xblfd+KfRDsBZlp/mp7oBcy5YNhuzwgkh1Uo+YCS?=
 =?us-ascii?Q?9b6IVTgAk7Q5OnFcE4oY+uJjteJ9lAcMuyEprr/hns3exU51fJlI/s1iqM9o?=
 =?us-ascii?Q?1fnFyu4HhbIqa3zHDRmCjdyjdB649DR6RbkLRDzI5sNeuAMdrIW6MvJu/GMQ?=
 =?us-ascii?Q?gIyVSEGeTKgP3kpbo4/zp17itB0sB2cjZLmySAeb+fGhzoWUTxQdoMAd7m6/?=
 =?us-ascii?Q?lf84Gz+1ma0mf7R4xKAMyF8D3gIHScbwBSljf8nr/TW0hhRPDlXbBrVK8Kp2?=
 =?us-ascii?Q?mZAaoYLdnD8CoSEE+4L4u38GD/VZK1Rf025PvujV6uTx4U+nofPb9sI41tHS?=
 =?us-ascii?Q?sw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ca2572b-edd8-4eb0-e6bb-08db6c58d5a4
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 21:55:00.1857 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LPOym2CZD1pFRStEDOT8rs4duLh/7CtBGtB1nmgYsgtc/5UcDPQ0nOMV3MgFveNGvL20GYzxoON/eewsOoQmdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8081
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wCftp1cdS1FFtKzgmkD68NiDDebqyLyRkx7wErceK48=;
 b=lesRV7wbEKGpo0hiIRyjtI/jRR7PNNVMWy/VZVcvLVmK2n/WVET94HTpPCh8uTMPz+LWH99bBXV3XD9zUaAMXJtDzUlKea7NhON8Sd222NTjFEJLS/SEQPo17eHfHOcO0YUp7Bpq3LoKPYdk0Sdt+AyvnFynW0yqw6s4OzSAOVs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=lesRV7wb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v2 net-next 7/9] net: netdevsim: mimic
 tc-taprio offload
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

To be able to use netdevsim for tc-testing with an offloaded tc-taprio
schedule, it needs to report a PTP clock (which it now does), and to
accept ndo_setup_tc(TC_SETUP_QDISC_TAPRIO) calls.

Since netdevsim has no packet I/O, this doesn't do anything intelligent,
it only allows taprio offload code paths to go through some level of
automated testing.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2: patch is new

 drivers/net/netdevsim/netdev.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/net/netdevsim/netdev.c b/drivers/net/netdevsim/netdev.c
index 58cd51de5b79..e26be4bd0d90 100644
--- a/drivers/net/netdevsim/netdev.c
+++ b/drivers/net/netdevsim/netdev.c
@@ -209,6 +209,31 @@ static int nsim_set_vf_link_state(struct net_device *dev, int vf, int state)
 	return 0;
 }
 
+static void nsim_taprio_stats(struct tc_taprio_qopt_stats *stats)
+{
+	stats->window_drops = 0;
+	stats->tx_overruns = 0;
+}
+
+static int nsim_setup_tc_taprio(struct net_device *dev,
+				struct tc_taprio_qopt_offload *offload)
+{
+	int err = 0;
+
+	switch (offload->cmd) {
+	case TAPRIO_CMD_REPLACE:
+	case TAPRIO_CMD_DESTROY:
+		break;
+	case TAPRIO_CMD_STATS:
+		nsim_taprio_stats(&offload->stats);
+		break;
+	default:
+		err = -EOPNOTSUPP;
+	}
+
+	return err;
+}
+
 static LIST_HEAD(nsim_block_cb_list);
 
 static int
@@ -217,6 +242,8 @@ nsim_setup_tc(struct net_device *dev, enum tc_setup_type type, void *type_data)
 	struct netdevsim *ns = netdev_priv(dev);
 
 	switch (type) {
+	case TC_SETUP_QDISC_TAPRIO:
+		return nsim_setup_tc_taprio(dev, type_data);
 	case TC_SETUP_BLOCK:
 		return flow_block_cb_setup_simple(type_data,
 						  &nsim_block_cb_list,
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
