Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD67A5E12A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 16:54:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EC0340623;
	Wed, 12 Mar 2025 15:54:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id va9mxwozqzli; Wed, 12 Mar 2025 15:54:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54E0D405AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741794894;
	bh=0d/yDGJSGsDP//ryL5DPeYz2E6S0n8DlMP9MQOBXlEo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oP/LlAQEDGjmdmtm7bbXQCCpHv1HEMqIR+JYu6lKs9XKAKML8y8Lreq0qAc75TZs/
	 kKypR+E3PnNNreQDDbgH/AiExrT7vLBYMShIvzqlMt424uzBI9mxMPAMGRuimVyfiG
	 2t0gi3NfPT0hYyFY3qJNQhEUdmxkUd4mWkltH1uJAZWfcL4rZF6KGVc49Kcl3eiVoO
	 YOHuqezGbZnKg5Z7T4HRoLlgU/EDBw8iHnJL80UxYcZDjml/3leocKCKSnrWAhcAOH
	 m3CahiWTHLiQZE6J3OlWodH87XlHk5zLiAHQsKps25Ct0luj5eOZwuELIZ2vGabfJk
	 fUy2uV4HFWQmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54E0D405AC;
	Wed, 12 Mar 2025 15:54:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7AA001DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 15:54:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F1716067C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 15:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NvU1BxIQZtAP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 15:54:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.65.34;
 helo=db3pr0202cu003.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8DA1C6001B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DA1C6001B
Received: from DB3PR0202CU003.outbound.protection.outlook.com
 (mail-northeuropeazon11011034.outbound.protection.outlook.com [52.101.65.34])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8DA1C6001B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 15:54:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pktdrc/VmxKbl5EwI5y8erZYtvVnUC03J3+HwxZiJQuKncTXHI4JfWfDvKaRD+EWOuZiy8uQYjXMgbLHesJWYkt+SwwIIVhxhQnUn4uYCalBUdBI0oEN/Qt4aUeOSOmjN0DYYvaQCIdUvcznpieuL0cDRbNdDv5tfngWY7Xx7Edbk7OgldRN8I7KEfSXnkQ+iJ/uajTLpcH8DjP03XW+JdhkCL/lp07luz803uJx/QCvpF443K+4m1+hFSS3KfIkoXKTr5wh1YXtNA7rtRuVLusEPltItuNCDqObUPF9qs9CYnBraBKXmFdgdIYSqluYRSq81Wc/wiv0az+0Hwd7fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0d/yDGJSGsDP//ryL5DPeYz2E6S0n8DlMP9MQOBXlEo=;
 b=wOSuqPmJZSCqAmW2uu2aReZ7BzKyzJWUxufnY32fEmHTuHZ3VyD0YAeDFu4T6GwOwDjL48BTH0y/9nhuI0CR/vZAyq68nQXr7/7k4xdS7//6qOhVQHoYJb7KcX09XZQ0TScslM1tSTPYmXPvzF4nO/g+/lgYhdXsSWXcc7TGESion6F9LNfi1HwqkWe8OKxGjXy3whCOfhtXOTLX8lQRu8JGkthpqjwrWgVS/xxfzCt/8iuOYhlGzj6UKi69xmtsxHP3TDyphVbPZGiCY4zC6g+Ps2OE85lopSGG4wUDq8d1s/v+i6jEMjP7BMYKw0k3uIpysaOPC+rMiATJruDWKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PAWPR04MB10008.eurprd04.prod.outlook.com (2603:10a6:102:38b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 15:54:48 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 15:54:48 +0000
Date: Wed, 12 Mar 2025 17:54:44 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250312155444.366m56g3fsvn5qdy@skbuf>
References: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-13-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-13-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250309104648.3895551-13-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-13-faizal.abdul.rahim@linux.intel.com>
X-ClientProxiedBy: VI1P194CA0048.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::37) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PAWPR04MB10008:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d1384e1-9c59-4519-912c-08dd617e374a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Z+DbfKRwijd15fmaNihzMnBLLQdRio1/N729mpujQ4vcBRBOOUlHfvzBvFXz?=
 =?us-ascii?Q?KxYFwyAFXAP6WqyuwAnMtgiOK6+UyVdMbKQFRpXwdUU38GffXsEsyaEBTFMW?=
 =?us-ascii?Q?JebWbR47FpcoI6uaIFYZ7Z0xZXkUrv6ioKxqDHzxvZisGd8mIxY7mFMwDXPY?=
 =?us-ascii?Q?D6nSEays70hjBN4ue4ZaGvi8M+fZSBQp3a4HMCiOmTJesvz60wfD3b5KmrLW?=
 =?us-ascii?Q?ZcoxgL2znT7hCxV4pKdpUjKvi7OQ45PGevWkCZE6vnW5QsG+YGUlWA/DBfwa?=
 =?us-ascii?Q?BtDl4gtUDIv2vzoa03lHq+VezEKeZYj84rEoGMtwPbeXcNPYaBMKLM+zq6p5?=
 =?us-ascii?Q?fTA515hOoJ5+W+nY1anh4NzQGyLJyh94F1x+hHgkGcSEDndx4s9vXVivZU2z?=
 =?us-ascii?Q?9SXWH5BiPOvgndyV4qpRYpY3qNu5ousQNQbOHtv+EGMGofDU6XqBaqtezj/F?=
 =?us-ascii?Q?kys5gqx3wrE4v/NNl/A053lIanQ6Zqj5ZcTwLE4y1Xanep1icYhQdUguV0+3?=
 =?us-ascii?Q?QmyJ271Rdn0QOrh+65MJqWh75DMmT37WUj5LFumXCkVbWnJzzQN3spmVCkUQ?=
 =?us-ascii?Q?sGGAq7DXmlaq7dPROJjQtewg4TXwSW1npcxoCRCD8NQNGvczxoxIH+SeUzAe?=
 =?us-ascii?Q?R6t+pLj5aA4qq2cxkA5XLPybYFP0KidsFwnIbdoz4VDTLqExSfYBRS97tNIW?=
 =?us-ascii?Q?CvP1CnHp4UcckPKXL8CZJL1TtfXd7YZR59jtt2l5rYIlDqhzLjEDzjJQ0q4c?=
 =?us-ascii?Q?23yworclpuqP0eAwcjJREILxnmyqBVVVIoqVJisSvS+aVXC8kQlrHssI5r7D?=
 =?us-ascii?Q?9fW3JLOz1NbkI2MBsna9e5nLSTlwbPODNyohCP5XbHYjkdCIVBssj7jutU2A?=
 =?us-ascii?Q?IEDsgkEVu0sUo0mF1G4X9ArVj3q1dL+41Wp9lqCRz9a8DJAEuhnnOEdT+gbF?=
 =?us-ascii?Q?3jyOqH1JZ90ZbkC/CGn830XrGKdetHdu2lT5B/oDPpbd95Qon6Vli6AfkXjX?=
 =?us-ascii?Q?dHqqaBZSvsUKNPfnzlxITbyNIjigdSr45CZBLoaiOwVAniXuLnjGn2POHO9k?=
 =?us-ascii?Q?o+ZxASRqCDCBz1NVDNqTGX6rTUZe8mTDTKkCO6MB2r6BOy7FvpPqhJX+dNuV?=
 =?us-ascii?Q?HGyt9W51p1yEfCisM4Syl2tKXvvI6qX88yP46bxXE/lUXbYZXCnz0F1Uxsb5?=
 =?us-ascii?Q?66dRMYr9JkhGFXIOrt8nujVJB1+obHYma+QFjHrz6CbadyJJ2pVGJzQEssev?=
 =?us-ascii?Q?p+E0rNvjij5jlimaIKzd3N2ZuHrmD3aueOVijfOPzuQ6JPhu6LnOcMn8yoPc?=
 =?us-ascii?Q?eEvyncjV67k5wcvi/KgkhUju+F9iHLSgOBWCbcu2n20/wyX6ZFESxdR6B9JD?=
 =?us-ascii?Q?or48ItmplGX3zX75fYfuJNpDEGwo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yrNgHcNibaVVlLmxVwxcsloWPN4495n9oZ4aUp3ZS4x3kDmIdrUkBSYUE/Aj?=
 =?us-ascii?Q?7Wnzj5ro1PUQWfbJhrBhLmMbZFnA+K9PA/fEUH49tJ8x0tmSe7j5v3V9yyHP?=
 =?us-ascii?Q?3IQB5Wx4jrTA7BXA7MbR3nTna4c7jxuc3nfJ6hWAIL9Jfl5REPN+DQ8J+L9K?=
 =?us-ascii?Q?REttwNpQvnDOpUA15wRh+3DnJ7ITOZdwZNNg6Z/DzSbm1R79SQilgpakQeDp?=
 =?us-ascii?Q?RxGmc4QCOTo6P1nmdM7FKS47hD+o6rR+I+FIDHlHvlJzcal1irasNR54MCgq?=
 =?us-ascii?Q?5/cnAUTsk9ctU6JetPlHiSMVE899laZd3n3TMNvO3vOQixEgvH5tnsax6fgB?=
 =?us-ascii?Q?tGYq9v1AsQ2qzjdAjmfII/d/cSQN7QBLMAFSS4WepDUcURumkkBf93TN4lgr?=
 =?us-ascii?Q?aX7QvUY6Oqzt7bTIJs8AlXRS7dHFdVrtIc40iqcM4xiQf4aH5PfeqISL43Vy?=
 =?us-ascii?Q?YRZyi80uEYLogH4B/7IhFOsw1OKlxm6bwdEhotuq5hY4IwFDZLgyOCGQiTS4?=
 =?us-ascii?Q?5nvBiL5R/qn+VH/Eia/31q+gYT9sLZMWF65WNrWqOBrFT8G7csWErpIZxorJ?=
 =?us-ascii?Q?l/w9cgsveobD80V8kbsfubEANZjHMpsDAbDEAFK5yti6dKTlgMOd5cDvO3Se?=
 =?us-ascii?Q?rlA8XZyOqpj02SUleKNRNoBR6qgK7QREIuNE+ILXp8Pkp2GAgcQPQecz7/TK?=
 =?us-ascii?Q?PAdY3U7hGzsKr33NylqVBzXhTicqR7H3kbLFLX5zaZ67h2DIHeGhreCNn0xm?=
 =?us-ascii?Q?Ov6gxxZ4RuBbzjUbi9vkNbcEBvbOM4AEGe2iBvM2UuJ5toCokJtyTcdr3szu?=
 =?us-ascii?Q?bUlqZtGi54wRzG1uo5063VpgzAmXreJO7ujFVjuVtuaZlI/l/enrPm1ur8pz?=
 =?us-ascii?Q?tMpTVl8UvbJO8SWhrjJ1B4u4HkMI5+VBgl/kQiTtSNHb66PNA0QP9xnoYhqa?=
 =?us-ascii?Q?UYBihacBpeufDdizPRAK8pB09t628OjPoCnqqwZXAGFN2cI5Bna2L+H7liY1?=
 =?us-ascii?Q?MdX8RrSIs5VJKsA26sXynVjyFe9YzTAq3zj7OiXl+ajjZ1ErErrX1bNzUm50?=
 =?us-ascii?Q?j8+le3WyJdzJ43/Myt5FAS3+cOdh/j/cDY4Bub7hoF5Nel9tk1Irq+/e5nVd?=
 =?us-ascii?Q?eToo950mnE2uvix0Do+J2lZjMHaq10hHq28zB+2zj3JDnhAux/AF/WMYpjT8?=
 =?us-ascii?Q?AbbgZHLWuCjXpHcHKp+nq35xVLIKT88lVsfyyEu5BYtu6btYtjjwFONNWz3g?=
 =?us-ascii?Q?RAJHsKQSvW64wsTYGkM5utIc8j2fdX1N8AzjEbveCB5SkvFuXZ1jDfidimkh?=
 =?us-ascii?Q?rxItlr5l+QbGC2NCwtPjvj+BwFjJvPEwVcMEu5YW9J9DLTaRoxblEF+uJqrQ?=
 =?us-ascii?Q?Cn1djXhn9U6tZuYjmofAjYUdtIj9Wc28d4ABKUrmAlKJAsv03GB5cB6f7gTs?=
 =?us-ascii?Q?c4YRdJgFQN2qsSgfOVUuQyAW4cKYM1OH6Ya4tLTHYbtAk58oAec3D1JkuVDS?=
 =?us-ascii?Q?4f+T+9YnmUjtsFg6QP/hX3OHl29S18rbZUN7azBhw7DChpj7Hnfufs/b86F2?=
 =?us-ascii?Q?fmMUAhPk0+lgxZsp6PHs/Mqy2IuFlBxex5R6Y2MBgiYGSsDs+bX02+gls3Oc?=
 =?us-ascii?Q?Pg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d1384e1-9c59-4519-912c-08dd617e374a
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 15:54:47.9839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9hCH5R8D+u0mcaLIZ2QCvMfUYU+zpWhiVY/Hc+BkJ5RQkgIO5//utXVALrjAQJJgrKJILsu+Q4zCqOTWZZbPpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB10008
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0d/yDGJSGsDP//ryL5DPeYz2E6S0n8DlMP9MQOBXlEo=;
 b=UafPErTRPn8AaIa+CtB1ybO4la7+wGPaBmqHfTQe5wZlmsGV85cMfUnTD2+0JPq2MmTYnq2ttTMFiBYuwv469w2/LuJ2cEmXLCC3z3goVX83lkPbCcLxtWRJi0wM3FBcse2/bA3Xa0Yx0Wt//RQFYkfo6dOByZIjMIb5MWHINIRH/SHDEwmFLd7fpuw0vCw9+LDwK03DY6Z1IRujV95O8yEG9heXIV6PQMq4xpEebH0UJQzmZVGo6UPsq38t5zCJDQFY0DCgN/sQ+iZzx3x3JqHSkAWHduRNprgHp8fZE1YzYLIM25YD/yMFnUH0exXLfT6QFRRws7h9ZDH169RUWQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=UafPErTR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 12/14] igc: block setting
 preemptible traffic class in taprio
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Mar 09, 2025 at 06:46:46AM -0400, Faizal Rahim wrote:
> Since preemptible tc implementation is not ready yet, block it from being
> set in taprio. The existing code already blocks it in mqprio.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
