Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C267159DE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 11:20:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98AC7611CD;
	Tue, 30 May 2023 09:20:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98AC7611CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685438435;
	bh=RSys8dIDLIO/lb0Ayr17cjLwQFw6MV6Pn1K9ma/EgI8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vHQXiFI4/47QVhyInjtaRUtgFCgAkFXO3C2DG+cSa4J4ylxk8tR10ehzBLDZtGSpe
	 NcQyJ0s1+CvtJAIbHlGDbBdRkoYdeuR4hDw0yfpDH42mkli0VVzOa0xdYeN5K32Suv
	 MrrMEjKxFCFLGLjbb0zOVa+0T8vtkbKsKEnEHs6vscHgkAa0NNFyCV0v0FatQ7tyAx
	 4AT5DRrX+pFmI+oG102OF8rzVmtZkNN9JO+3jg+fjyEybzLSuoLiC4fVgiVvddsaYg
	 oFzN/PKwssz0OxKuUqv7uIl3tVM3oSX42DNx2/pArA8SzgPDDMA2v8Zjj060Ktcp6G
	 J+ZQxrTbxftyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B0D0gjLx_aaY; Tue, 30 May 2023 09:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1490360E17;
	Tue, 30 May 2023 09:20:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1490360E17
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F6A91BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 067CC404F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 067CC404F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RfK0Yn-HRT-M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 09:20:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6058402C5
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04on2048.outbound.protection.outlook.com [40.107.6.48])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6058402C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:20:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R12HKXN5niykvp6saiMTU4S+yQO9nLIOfg3Pe4/wTkLuQPEjJY8UZ8R0pmK5Zulxg9X+qyhKxNDF2Z0MEDljVQI62mU02MLoUtux2+GlWfXIhyT6hJKkq7H5Tyds0zjHszkficqOwe1jUeM1Vu11hsiZcNAGjqvVUb/NbdyWBPzzX6I4Fu+N1S9wNTK64jvs2UQXbNJSPiQcis+gQvwntjp0p78vJegUA1NAmSIsMgv9J12jpyoKLm1DV0CoWueATo/TL1oiYeJgvUlFoc3Dv6ewe92eHskzh/qA1Wb2qdd4g0d6PHjC2gJzZJ6YhGmmlPg3XHz6asnizNWBJnUNcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zXykmMVoPdtSlW5voeAPPQCj2SjCtgOMs+g79ehzeWw=;
 b=cvkCEgwypALTbTPhCGn+1ZCsAZzeBXnX58SdUtaWBcTZkkk/lwvqxSiYUbtpAbxhZRq4KgcVOtoA067dQOsFIMvSE+YGLWRH1bjL/4/D3uqSghWxaLyd/H7eEGcpHnifKuwdnMlEIHQvMLjEoavYPylPC/zGIWHubxMRLas3Z3Cet55FfnYQPW/mHcVkAuf+xgCeHGJRhNHXzmD7i77pNBzkzGL+1GvYNv8EzoO03gmfx4Du8QuzlqJzwJ8k25UyGkroMS+SWIXUa8rSbAfRXe5hKjxjzCTIoRPoCEGcZ1AbVLHv7HKZu+Xs8Zv9UCeMR35v6IxQ3D8aIcSf556L0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by VI1PR04MB7167.eurprd04.prod.outlook.com (2603:10a6:800:12a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 09:20:15 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 09:20:15 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue, 30 May 2023 12:19:47 +0300
Message-Id: <20230530091948.1408477-5-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR0P281CA0155.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::18) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|VI1PR04MB7167:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e22f244-79e1-452c-d0e8-08db60ef13b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MTUmCkkCXqdytEPvfrMfA1Ue3jrnqT8d1PIqKOUFo/Z+tPd8DeEHaxsWX+ehgQQtXGhQfvPLutXRNRC5VTYMb4wgD/x7GHbKDhJ35zv6ArUcynWZkh35aAHeQQdXrzC5Cmqh+pBM7VM+USRp7LaD2hNRKAiHN4G8muD0/Q4EkhCjo3Yf+6Y3xOgJdJ/Ham7o5PPESx39nPtMc66deHdIOj1bU3qgvGAtNy7fCzcxsH6h3HXt5IgWZh0kcLIBToUX3bT7L3ujbTdNqlYlYjERVY79n3lrgdbnfZU7O8hoRvS+8+OWsOk7bkoNo+xKKvOMoSOezJaLBqQ7aZyL+Uzeb/JNUo3wwo2sRdXTsRyIc+9ON0YmHRJgobn3qN7b6CUYa2S7YYrOPtcHzq2OSkL6+HoW5mQRt0KWKbqDmPDUypzTs2riMsNjUJ2rnpvzSjcEERuYKkFai/CAuuawJOf9Yf0pYgDONFTqR34fC1vD140gvU0mtmhkKUFOc4amlvAAbjsWRDO26mWFqbCYhZtSmYVUechp0A/ag8Gbo1odJ4rSNvd4XYiJm+FCcl6GrmK652SySMDBKjxtTrF2fRuOS3UBVVDvYKFgR8ZAEvwn0pAyo7OOeXiun/v4d24OAaBq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(39860400002)(396003)(346002)(366004)(376002)(451199021)(54906003)(478600001)(38100700002)(38350700002)(66946007)(66556008)(66476007)(6486002)(41300700001)(52116002)(7416002)(7406005)(8676002)(8936002)(5660300002)(86362001)(44832011)(26005)(2906002)(186003)(1076003)(6506007)(6512007)(83380400001)(6916009)(4326008)(316002)(6666004)(2616005)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/5LtmqJI/mLDNvzM0Bqpi8yBe0Ospo6C59nU0vkUYm2efIBVtqHev4rL+bkZ?=
 =?us-ascii?Q?luzEYSj71alDFa1jjKmcxL20tKt1Je6CGDSc+LEhw/9Qu4E31lpWgL+Fcjco?=
 =?us-ascii?Q?luT77G8JNsKPt/squw1XqsGsK9XU1vuCH60dIU5jAie6w6xuj17ffjGBGw5g?=
 =?us-ascii?Q?hyK8p/j2A3E+hW7bWb+Ct3GYE7ymDjqKbkC4BgeN/Tp1cymXTwNJsZFd+QKO?=
 =?us-ascii?Q?TMwgc1/ciReY4grhNiKgqqw1rgww5aaZ5tl3pU8pyT9gjb+4cT9MS+mocq+d?=
 =?us-ascii?Q?90MuCOpauNP4SKCllztujwwsiCVNNE0NbErgPKgIif9ogFAIBOm6XVP7+FVi?=
 =?us-ascii?Q?p3U2SnOozEe6fJD+HvPQ1jWwXnC86pUq/vcGuVCqz3Yhl3gfhho9szigQCLm?=
 =?us-ascii?Q?ZsylO1SD5M53WL+8z46HDhegmlpoXqOdfzcUyqMtPTMLnAj8CdgMaaVEqaTC?=
 =?us-ascii?Q?iQlZglxXjk5uwXpP/SEiInIlcbaNcUIHWcsHEwIGy5wdAB5NJYgqNlG6K7OE?=
 =?us-ascii?Q?hT7eymC7tGPMbEsy0EY5xPi+daHfR0D+UHRktHkYqXsxievtJlc8CfKMltqL?=
 =?us-ascii?Q?ou5cJJvGAE9vVmGdDjFnEV/gl90Hl1lr920eBWd8rf1I6+vXkIVXLDIOgpP9?=
 =?us-ascii?Q?FGmIa+grEEMO4i9ZCrG4taRSAWoYNruKR+txuxgXB29YdSA6Vhjq4H/martz?=
 =?us-ascii?Q?GUTruMP+yRC0GE/FglV+Z6ASPfzz+QUrzgmPa6yIjbUkTo0b0JifAyyeKRri?=
 =?us-ascii?Q?+0j/NB+YZu7rdszxqiH/EapFxL6/TFUNi2JRDg9nc6JDKI/FFJw/2O/GqX6i?=
 =?us-ascii?Q?W0aN7nBAeEV7vFnm88x3nIKTi84ebC5Cgva2J6Drn4QABomIJa78S5qtS7xH?=
 =?us-ascii?Q?fNvTWYb7q2o3fepxAFJhKo/Pq0Ut0pI7mirJSQy2VnqiHp2J3T9OMptHrLJz?=
 =?us-ascii?Q?BKXEID2OykWs7F9mD2nOdca5+UYb1VUoHzRZWuUi9uk2mug0SwIeko3vBxh+?=
 =?us-ascii?Q?C35S4e62GOMS98YQMq1odrCIt0rwobEvui4yrqV9V54e4FSKoryKSY+z01+g?=
 =?us-ascii?Q?4WDUwI/tFO0ILZCTFmA7ngAGJy+q374vNERDCeolS5Bgdwx3yB0QpFC7w96k?=
 =?us-ascii?Q?gDbd9hEouYmHjVx78sy3LdG3iChqZf2qkAhDrF0aWXKBmhiCxwQhWV8izkpC?=
 =?us-ascii?Q?Af81p0Vdv8cbXUnH7bToGLacJzsAR4uBl3MQMsY4rZ3E2gSUfbb3RJa4JBlK?=
 =?us-ascii?Q?Gent3647xAZhOw84u3kAOpq9rWOrkHSccIkn9tGLVyD9goWNO3G2yoQyilgi?=
 =?us-ascii?Q?y8KIXR8SLSjeFB0y0P1Arg+09g7XDFatzJWNKMqK+vQ1K6f7cKOAvAmXSMCJ?=
 =?us-ascii?Q?KwUPsAo5eT774OmFfQiG2uHnVvDgI/bnn+FEpf5bdPvC6XHtcs7N6O4Kxbjj?=
 =?us-ascii?Q?8D2ZHSTm5dFHW0klbMT23BTASoAd92Y2E61URusd18Hbs9BXJEf+PiWbWE6w?=
 =?us-ascii?Q?F45dfjF/kJizorceqShJ0eGT/fh4M8pXauv8t0aSQogzxeoHy9PXHehadDGe?=
 =?us-ascii?Q?NOxwXOpM0vkUkaajQJzSz9Y2xn+Db/hI3TqW68gbhfFPJGgX4H19d++bEcs7?=
 =?us-ascii?Q?aQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e22f244-79e1-452c-d0e8-08db60ef13b9
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2023 09:20:14.9849 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5X4yuLYom0V0LH+dL0qfqVhPvuMt6BoL1zUT07UhOjVGkuz0ExmcEQN4MnG15zpgf8hQYVL3l1T2yx1c8P1cSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7167
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zXykmMVoPdtSlW5voeAPPQCj2SjCtgOMs+g79ehzeWw=;
 b=IomA5Bko+QjAy9mYhR2wnKZHcsIUE1Ee8HDeFpHX+e5ixBTnrUWaPZ83P3Yu/359Gmc1q4+mg5vsVIV9WEu+Uz2GAcwdMz0KOPkw+y4NnEjIhguwRbq36bEAI6DER4QsXoCZLGT0Edywra16b6u5lTkZ9b1qGBJM0dFHOxnC6cA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=IomA5Bko
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH net-next 4/5] net: enetc: refactor
 enetc_setup_tc_taprio() to have a switch/case for cmd
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

Make enetc_setup_tc_taprio() more amenable to future extensions, like
reporting statistics.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/ethernet/freescale/enetc/enetc.c  |  3 +-
 drivers/net/ethernet/freescale/enetc/enetc.h  |  1 +
 .../net/ethernet/freescale/enetc/enetc_qos.c  | 79 ++++++++++++-------
 3 files changed, 54 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/freescale/enetc/enetc.c b/drivers/net/ethernet/freescale/enetc/enetc.c
index 63854294ac33..3aa31a760657 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc.c
@@ -2624,7 +2624,7 @@ static void enetc_debug_tx_ring_prios(struct enetc_ndev_priv *priv)
 			   priv->tx_ring[i]->prio);
 }
 
-static void enetc_reset_tc_mqprio(struct net_device *ndev)
+void enetc_reset_tc_mqprio(struct net_device *ndev)
 {
 	struct enetc_ndev_priv *priv = netdev_priv(ndev);
 	struct enetc_hw *hw = &priv->si->hw;
@@ -2649,6 +2649,7 @@ static void enetc_reset_tc_mqprio(struct net_device *ndev)
 
 	enetc_change_preemptible_tcs(priv, 0);
 }
+EXPORT_SYMBOL_GPL(enetc_reset_tc_mqprio);
 
 int enetc_setup_tc_mqprio(struct net_device *ndev, void *type_data)
 {
diff --git a/drivers/net/ethernet/freescale/enetc/enetc.h b/drivers/net/ethernet/freescale/enetc/enetc.h
index c97a8e3d7a7f..8577cf7699a0 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc.h
+++ b/drivers/net/ethernet/freescale/enetc/enetc.h
@@ -429,6 +429,7 @@ struct net_device_stats *enetc_get_stats(struct net_device *ndev);
 void enetc_set_features(struct net_device *ndev, netdev_features_t features);
 int enetc_ioctl(struct net_device *ndev, struct ifreq *rq, int cmd);
 int enetc_setup_tc_mqprio(struct net_device *ndev, void *type_data);
+void enetc_reset_tc_mqprio(struct net_device *ndev);
 int enetc_setup_bpf(struct net_device *ndev, struct netdev_bpf *bpf);
 int enetc_xdp_xmit(struct net_device *ndev, int num_frames,
 		   struct xdp_frame **frames, u32 flags);
diff --git a/drivers/net/ethernet/freescale/enetc/enetc_qos.c b/drivers/net/ethernet/freescale/enetc/enetc_qos.c
index 7aad824f4da7..2b8fdfffd02d 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_qos.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_qos.c
@@ -43,10 +43,9 @@ void enetc_sched_speed_set(struct enetc_ndev_priv *priv, int speed)
 	enetc_port_wr(hw, ENETC_PMR, (tmp & ~ENETC_PMR_PSPEED_MASK) | pspeed);
 }
 
-static int enetc_setup_taprio(struct net_device *ndev,
+static int enetc_setup_taprio(struct enetc_ndev_priv *priv,
 			      struct tc_taprio_qopt_offload *admin_conf)
 {
-	struct enetc_ndev_priv *priv = netdev_priv(ndev);
 	struct enetc_hw *hw = &priv->si->hw;
 	struct enetc_cbd cbd = {.cmd = 0};
 	struct tgs_gcl_conf *gcl_config;
@@ -60,19 +59,13 @@ static int enetc_setup_taprio(struct net_device *ndev,
 	int err;
 	int i;
 
+	/* TSD and Qbv are mutually exclusive in hardware */
+	for (i = 0; i < priv->num_tx_rings; i++)
+		if (priv->tx_ring[i]->tsd_enable)
+			return -EBUSY;
+
 	if (admin_conf->num_entries > enetc_get_max_gcl_len(hw))
 		return -EINVAL;
-	gcl_len = admin_conf->num_entries;
-
-	tge = enetc_rd(hw, ENETC_PTGCR);
-	if (admin_conf->cmd == TAPRIO_CMD_DESTROY) {
-		enetc_wr(hw, ENETC_PTGCR, tge & ~ENETC_PTGCR_TGE);
-		enetc_reset_ptcmsdur(hw);
-
-		priv->active_offloads &= ~ENETC_F_QBV;
-
-		return 0;
-	}
 
 	if (admin_conf->cycle_time > U32_MAX ||
 	    admin_conf->cycle_time_extension > U32_MAX)
@@ -82,6 +75,7 @@ static int enetc_setup_taprio(struct net_device *ndev,
 	 * control BD descriptor.
 	 */
 	gcl_config = &cbd.gcl_conf;
+	gcl_len = admin_conf->num_entries;
 
 	data_size = struct_size(gcl_data, entry, gcl_len);
 	tmp = enetc_cbd_alloc_data_mem(priv->si, &cbd, data_size,
@@ -115,6 +109,7 @@ static int enetc_setup_taprio(struct net_device *ndev,
 	cbd.cls = BDCR_CMD_PORT_GCL;
 	cbd.status_flags = 0;
 
+	tge = enetc_rd(hw, ENETC_PTGCR);
 	enetc_wr(hw, ENETC_PTGCR, tge | ENETC_PTGCR_TGE);
 
 	err = enetc_send_cmd(priv->si, &cbd);
@@ -132,29 +127,57 @@ static int enetc_setup_taprio(struct net_device *ndev,
 	return 0;
 }
 
-int enetc_setup_tc_taprio(struct net_device *ndev, void *type_data)
+static void enetc_reset_taprio(struct enetc_ndev_priv *priv)
+{
+	struct enetc_hw *hw = &priv->si->hw;
+	u32 val;
+
+	val = enetc_rd(hw, ENETC_PTGCR);
+	enetc_wr(hw, ENETC_PTGCR, val & ~ENETC_PTGCR_TGE);
+	enetc_reset_ptcmsdur(hw);
+
+	priv->active_offloads &= ~ENETC_F_QBV;
+}
+
+static void enetc_taprio_destroy(struct net_device *ndev)
 {
-	struct tc_taprio_qopt_offload *taprio = type_data;
 	struct enetc_ndev_priv *priv = netdev_priv(ndev);
-	int err, i;
 
-	if (taprio->cmd != TAPRIO_CMD_REPLACE &&
-	    taprio->cmd != TAPRIO_CMD_DESTROY)
-		return -EOPNOTSUPP;
+	enetc_reset_taprio(priv);
+	enetc_reset_tc_mqprio(ndev);
+}
 
-	/* TSD and Qbv are mutually exclusive in hardware */
-	for (i = 0; i < priv->num_tx_rings; i++)
-		if (priv->tx_ring[i]->tsd_enable)
-			return -EBUSY;
+static int enetc_taprio_replace(struct net_device *ndev,
+				struct tc_taprio_qopt_offload *offload)
+{
+	struct enetc_ndev_priv *priv = netdev_priv(ndev);
+	int err;
 
-	err = enetc_setup_tc_mqprio(ndev, &taprio->mqprio);
+	err = enetc_setup_tc_mqprio(ndev, &offload->mqprio);
 	if (err)
 		return err;
 
-	err = enetc_setup_taprio(ndev, taprio);
-	if (err) {
-		taprio->mqprio.qopt.num_tc = 0;
-		enetc_setup_tc_mqprio(ndev, &taprio->mqprio);
+	err = enetc_setup_taprio(priv, offload);
+	if (err)
+		enetc_reset_tc_mqprio(ndev);
+
+	return err;
+}
+
+int enetc_setup_tc_taprio(struct net_device *ndev, void *type_data)
+{
+	struct tc_taprio_qopt_offload *offload = type_data;
+	int err = 0;
+
+	switch (offload->cmd) {
+	case TAPRIO_CMD_REPLACE:
+		err = enetc_taprio_replace(ndev, offload);
+		break;
+	case TAPRIO_CMD_DESTROY:
+		enetc_taprio_destroy(ndev);
+		break;
+	default:
+		err = -EOPNOTSUPP;
 	}
 
 	return err;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
