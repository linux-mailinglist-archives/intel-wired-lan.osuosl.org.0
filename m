Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 879EA7159E0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 11:20:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25F8361186;
	Tue, 30 May 2023 09:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25F8361186
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685438440;
	bh=FczuLyUntEFeSr5f75ugJD7PZ6UpfF7JH6vfRHr2U0o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WqgE6IcKagumRcf9Lj9XJ/VdXNE8bhymNEb1HMmskzGQOplUqBjhIOwV30mX/cSdn
	 LDIQVMipioUxZZIwuaVHJ8cMTvriI/+P84pPV5BxjOkDSrCWJ6R0Rpyn4OG6v32aWx
	 XhAzzZDnirY+mohc+Vwg5+Z1XZGRzisJ1n7I/m8+Sxqp1INjZnYPMWJnjj1axH1dvP
	 lCoWk81VK/QgPBAc2+eVj/z8dzW4QWcCGiCI0Otfc3qjTPPAfdB+T8KG2oRO5HAtWU
	 l1sb/VO4wOgXZ7e8rJXSZRd9F/Ik3SYfKeJCT6yZawy+CBoxzjqa4lF2NB2MhfnqRx
	 naq01v+MWwwKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vAO3oPwvBStX; Tue, 30 May 2023 09:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E770860F02;
	Tue, 30 May 2023 09:20:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E770860F02
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 842611BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69CF6417E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69CF6417E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dwulwMGCL8_L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 09:20:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CD034015A
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04on2086.outbound.protection.outlook.com [40.107.6.86])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CD034015A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HXer0ZCosmU4PSf+Wbmtww02qRhVkO8XyxvYcXiqHgGqdR5gYGm1NzyWz/jiN3g+fwuF4ggQ9lyjJIXmyxGE3aa2fOC9FDG5Ot2JKzXAXetXTEkcQIIoozDQN1eUw1QRSH0TtVMFwZZDvFkM0bTfC9SPKL41oEzRudcyhsUnX1/RZ4dFfSg8jDqiyVmqBjw94x8ALnx4meyX+x5uScIkXiL5ZGrIB6/056FqGpTVljuUq7HHCsazIrCXBczOknDi897IL2LY/xQCKGffU0RB8kxMxMtnvhx67nJ+7Z/XtJ69iYTnbqfwMpLFsUFWeQdvEbxmygYa9F2PqtkTsHWojA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AE0bfkRAlzb6TGZS6z1c/EA1t0PmP6mUJUN9ivt0eMY=;
 b=YpXsXE60C6ndOWjmvps0a7GtnPDviVVTXkL46kpOGdSslSmXVtz9yIlz8lPXK3Ed6gauU5q9IB+NmvU+fixM/6QRY1Lb691f5M5KpzCnoWrQRF0p6l0RRBJnOA7bYUyVrz+/FOoMjfN8/f3q7qdR4JlCAm8U+3IvkX6ZQAB2vy78gDDyGfemkkPdpuvd/HsLJB/DlnHZmMWFWAMcmDow9H7wn6V8r5GhOdDpA9drmejcf/FCGKDNH4lH4hNJgU4VhirDoMmPTmN2CRRDXSg9DpewP+VcVdb9hT0HtA6JM4aVXxVIZpTvHG6UynCevhqFispzcLKiwWXSpWXMvWhGjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by VI1PR04MB7167.eurprd04.prod.outlook.com (2603:10a6:800:12a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 09:20:17 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 09:20:17 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue, 30 May 2023 12:19:48 +0300
Message-Id: <20230530091948.1408477-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR0P281CA0155.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::18) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|VI1PR04MB7167:EE_
X-MS-Office365-Filtering-Correlation-Id: 5948d08c-d2eb-4a85-33b1-08db60ef1505
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wyqQhSJJUt3g7hYwFyjgcMbh+U/qztAbS0B7n4bQC2XSGpdfCa8QhC0Q31/rtJlApCtXQ1PpUnBThbrh16n6/zpnH3DLQEDfQWRgQQ8UkOOsuN1dD31D2bFQqv5pffS03W+PkrTZdcNie3R2zpAu+GUY8Xe3INSyZ4HOUdkBVYa6rsWsOwFNEiftw41GQMSJRLsnHO9FcQBlWLeqXvhpXVN7VAj9Weio9qi0/ng5QApQUKWxUCL6M3dUr4/rHOvCkh3GPJIEN/W3//O6z/zyhQr+LjwfOsllMv+5WzsHZQ5Hx2tDPN/Vbc+Yv2KDhpb+H5OyqyOyBSAIoMNRzi1u34xAH0am4tf/ZAj8RMJ/puhTT1SJCiwFHPVt8HmMNiJFoOrysPjtXy5M10R8ccwEA+aKHYp7V+TdgT2yzvYe5VZCa4tk9IV9SE1Vgt0J4xke9+eBhVw5rBzurlMJw7KxHi52NFffGPFdacnzrt/f85W11UgMK6bFkGiD2jBdYvL3AQjmBxbdj9TUh9Q/eoQHsS/cqnTDDocwh357808Rtn2qUTuTlvuxxLehiOWTgPcvWLKlqOM2XW+6H5z5irIW2ARmbigLYsdVZYPhb8dkM3UgRwe3aitpBOzJwtGCZ9cg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(39860400002)(396003)(346002)(366004)(376002)(451199021)(54906003)(478600001)(38100700002)(38350700002)(66946007)(66556008)(66476007)(6486002)(41300700001)(52116002)(7416002)(7406005)(8676002)(8936002)(5660300002)(86362001)(44832011)(26005)(2906002)(186003)(1076003)(6506007)(6512007)(6916009)(4326008)(316002)(6666004)(2616005)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QoXt3TZ/TciUeHfupOCAcdSPA7eg4atG4kjupoQjidwd6QaZgR+RhFK9xDYl?=
 =?us-ascii?Q?VRW3v/R4M2vX0KtfXi+/D25wKR9DTTvqaHXrzfGp5IoIFK1UFhnGDy5KbTYa?=
 =?us-ascii?Q?vYSVHVH+nVl1xdJTCGbxgKS12vmbmfhPTLL3qhGpayD6ZfjKKde/xjqMKlCs?=
 =?us-ascii?Q?lVRDWYtVU/u+uFTD1Z3xKf5gwy8uNNXn05LceJm4X9i0gztp8U1vJrNAkrHf?=
 =?us-ascii?Q?PFEMi0aV8/wgcdH93cqAYnwDg0+/4Iad/KVqmda6YW/Xwk2Ll5TZOegYOIK7?=
 =?us-ascii?Q?MApDsFIBMYEQHCQtAyC3L2yDGhGZx03gVM+2amN5yXCYzpGDYfMpiB8U91Zb?=
 =?us-ascii?Q?CEIDIkBIQysw35OOntPk45q8zAwoc6LShUELF5hCTL/lmmqBJD3hW1ofbGwV?=
 =?us-ascii?Q?0l8HBFsySHLUwu9RM6kWaUnKqZZVYB9k3joGpPfjs0CPg464eINSjyvwIiQF?=
 =?us-ascii?Q?1e8K9unWkY3UuY+3R2OWMirLcVR31V5VDAfNVlV0nO9PZSqqGvy2140C08T0?=
 =?us-ascii?Q?hYLfjup2iOocGYfbOXk5saTDJvxnfbI4kEro0iWrLZhrp6sfVd1KmoefylqL?=
 =?us-ascii?Q?GmxBLO9XGB8e/R1fEqe5M85QKu575Lw652IV/cdwILuEj5iT39IdYoJl2b63?=
 =?us-ascii?Q?LJCYjWHCc5Ctq0tkgW9rJKFDGb+p2oI//c+XWPZ5hWxTR1PFRW2/p18ry84Z?=
 =?us-ascii?Q?pyMvEZaQ1gk8snK7nIUFhsoKY03QP3ugLBdfpG1HmhY4OYeyGpiA6pgAx8LN?=
 =?us-ascii?Q?J/OGYQR78vKoR9JRkPWlQljD27hgM3nRxEwl0syMC04ENwsoAt1gPSwGMN5J?=
 =?us-ascii?Q?R6c9HrDkq9caLZ4LatHi9DlKQNdC+WGG5cLE44OTyfnYF3lsHBqNqsujNtLn?=
 =?us-ascii?Q?qf+mu9YNNQCvyt52d1qa0cjIPDtDUXfNddZAqZpedpMbXVNVQOUUP0BQ3Zyf?=
 =?us-ascii?Q?yUxV/fa2ohS97s9dtfmC1gNmI1YPK9fCqyaTsCpvOf8tnfKfpb5CDzujw0pq?=
 =?us-ascii?Q?TdS/9x50Y2Kph3fku1TCpRC08mNBQ+bWbJJHNcQsCou8sOo5WaKPSYvKqrPD?=
 =?us-ascii?Q?s3v7J3I45umncxstNGymUdlCanBa/K9Cuao0hq7/WCK20wtlu/jWuhRmzely?=
 =?us-ascii?Q?XTEPZgq2vBp8d9oWi0cRF0tJb8rVPwgDKY+wpUA9S5AQy8nEw3f41dvOiqmp?=
 =?us-ascii?Q?RFfnjQkR1AwJ9HyVO4SsoIPdzZKFATIs3Z41zoX7oGW8PmkxaHZDtnQRyvNm?=
 =?us-ascii?Q?P+jDXaIJR2eZAN8Boe0V41d8wq06wEyJwO7otR4zWHzc/WRw7TXstNatByBg?=
 =?us-ascii?Q?N1h2NevicxwkuBxNmtObKFvjc/uqUhOIvC55j98HEbK1z6J4UGhwQKu9KlEX?=
 =?us-ascii?Q?riWZwD+jx3P2j003283l5GaNqIDAYO+GpMAnMsA7CCA/JE3Y6dcjigj5iyXB?=
 =?us-ascii?Q?Q8rwRc40XpBzSNFbT4kSwqEa7Way2I7yoicgkmt64ySqDXWJKwTSxvH7mQX6?=
 =?us-ascii?Q?fj9M7BJMGlu+hS8UR9JB0+540VkQSSUO602KR2GbwAuHAU2k1Et3p7LScmXS?=
 =?us-ascii?Q?dTqFZJBQNv6TInNaN4SeXOOgOAWLdBUG3fMZcfoAbpSKgyUIJNTkLPh1IoST?=
 =?us-ascii?Q?bQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5948d08c-d2eb-4a85-33b1-08db60ef1505
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2023 09:20:17.1270 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lxqamcUZLGV35CxSsaBDA3/wx2vygfXtkg/jsqibWHoN+oJdaDWxzPScTMo6/mzd9Dtkt7ZojmUkmga5kuLLAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7167
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AE0bfkRAlzb6TGZS6z1c/EA1t0PmP6mUJUN9ivt0eMY=;
 b=aQCWkk0+BLyBxpW7ltJxj80AXx+R31T/18iqv0/tizU14Su2ypAfSZ6jIEQM6H8DLctQ/Nw1VV4BLpbGVk2I8SmCpYWYn/9i2iiiYRybt2DRXkp4G+N17dJp5vvWmxATnCs1/4163LhSfXh7GDIYmsGSKfYHV0+5Kcqtdl4hrJg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=aQCWkk0+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH net-next 5/5] net: enetc: report
 statistics counters for taprio
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

Report the "win_drop" counter from the unstructured ethtool -S as
TCA_TAPRIO_OFFLOAD_STATS_WINDOW_DROPS to the Qdisc layer. It is
available both as a global counter as well as a per-TC one.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 .../net/ethernet/freescale/enetc/enetc_qos.c  | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/net/ethernet/freescale/enetc/enetc_qos.c b/drivers/net/ethernet/freescale/enetc/enetc_qos.c
index 2b8fdfffd02d..71157eba1fbe 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_qos.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_qos.c
@@ -147,6 +147,35 @@ static void enetc_taprio_destroy(struct net_device *ndev)
 	enetc_reset_tc_mqprio(ndev);
 }
 
+static void enetc_taprio_stats(struct net_device *ndev,
+			       struct tc_taprio_qopt_stats *stats)
+{
+	struct enetc_ndev_priv *priv = netdev_priv(ndev);
+	u64 window_drops = 0;
+	int i;
+
+	for (i = 0; i < priv->num_tx_rings; i++)
+		window_drops += priv->tx_ring[i]->stats.win_drop;
+
+	stats->window_drops = window_drops;
+}
+
+static void enetc_taprio_tc_stats(struct net_device *ndev,
+				  struct tc_taprio_qopt_tc_stats *tc_stats)
+{
+	struct tc_taprio_qopt_stats *stats = &tc_stats->stats;
+	struct enetc_ndev_priv *priv = netdev_priv(ndev);
+	int tc = tc_stats->tc;
+	u64 window_drops = 0;
+	int i;
+
+	for (i = 0; i < priv->num_tx_rings; i++)
+		if (priv->tx_ring[i]->prio == tc)
+			window_drops += priv->tx_ring[i]->stats.win_drop;
+
+	stats->window_drops = window_drops;
+}
+
 static int enetc_taprio_replace(struct net_device *ndev,
 				struct tc_taprio_qopt_offload *offload)
 {
@@ -176,6 +205,12 @@ int enetc_setup_tc_taprio(struct net_device *ndev, void *type_data)
 	case TAPRIO_CMD_DESTROY:
 		enetc_taprio_destroy(ndev);
 		break;
+	case TAPRIO_CMD_STATS:
+		enetc_taprio_stats(ndev, &offload->stats);
+		break;
+	case TAPRIO_CMD_TC_STATS:
+		enetc_taprio_tc_stats(ndev, &offload->tc_stats);
+		break;
 	default:
 		err = -EOPNOTSUPP;
 	}
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
