Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 916A5A50EF3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 23:45:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5172781136;
	Wed,  5 Mar 2025 22:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lOGjnZ_CDKlo; Wed,  5 Mar 2025 22:45:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81D218114F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741214747;
	bh=74sK4bwNfKjJi9jvQjtkRj3j9Wu3z9liULdHAtabAj8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XQ05MqlPtsHvmMbWSREElJkzgw0Ly9miVO0Ctdbopq3NjUJ2Wpc/rt03isVora9qX
	 Psk0yExjzXYEKLT9bK7Bd1XzN4fBA4aebT+VPSIiiNHjYniPnxZGaiSXexETveNMog
	 7qVJYkA8719P5o04Jxpk0P1NBQ8sri/vq50Uc59bObRwFOAw2H45xBe+LQyjTf0//S
	 uwqLvZH0Ze27P/42yTp3eSb85nogpuAlWSxgx7Yzc3Cect4GdoHU74HyqsQStI2UT1
	 qqGLmGib+HuI6uIdZaqifMOjY5a3ayA2qg4+AKfkEmxJAKVqAl12UhXfih1mJaI7bC
	 1UznPzNUKF/Ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81D218114F;
	Wed,  5 Mar 2025 22:45:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DA3E2194
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 22:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C9F8E40D9D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 22:45:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8WDIME505L6d for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 22:45:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.66.60;
 helo=du2pr03cu002.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CCA3F40DA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCA3F40DA7
Received: from DU2PR03CU002.outbound.protection.outlook.com
 (mail-northeuropeazon11012060.outbound.protection.outlook.com [52.101.66.60])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CCA3F40DA7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 22:45:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jKDiaZiGdENVfWLJKrokW4A/ecUNm9tvAWPR6sCLOsRfnJjca3ZhKMftdSdRYSMyktokktPyySC/syGfcx3dGl+Rq9qbyaSEG64J0yoQ5zgd9kpz59IGYtd19W6RtweokYzH223fUOMGTzOUiClQZ50aai6eRhOW7agOcSat6lHKF850fwdgRqHrQr8uA7cfYz0YIW2iTd0G/2sgrlp9Jawv80//FXucmQxw1qHSGO8Bbviqrbt90GbC14Kg1YD/r1PbZ+VALVzKBB/0eckOlcwxN/RmgWL5dl36FQyJKXZu+ml5hwkOIgxYheoZ+B9u31OTqY6kHzFcFno09AnaYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=74sK4bwNfKjJi9jvQjtkRj3j9Wu3z9liULdHAtabAj8=;
 b=eaOdWchwYmtQe0qjbHBq/jm1WbjNlMDQVf5MUi1KHLIil5t8my9btCw8iA8OT/YS3KqKAzxfkodMRuYOOOYU2LKo8U0WGvt9GJu9ElJW0SH/PsMNCyt2HcYYMjlPwueKFG7i2n7MOMWKWf3LWRQSV+D5jvug8r2QrJVIX9TrSsKydWETVBKpQYrkmWinRDaETCXqJijhU/HoV2PgYPZdnMhDigAKOZc+XOhXxPR2q7RgBUouKi5eMdGnxuIp8sziNyVGZc52X87mIJs+dvhvfwzgrKciZf+mBkwEHm5VNygeHvry7EBPzvm5/JDXf5kglAqXn9/whwfnkhSggnNqwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AS8PR04MB8101.eurprd04.prod.outlook.com (2603:10a6:20b:3f6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.16; Wed, 5 Mar
 2025 22:45:42 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8511.017; Wed, 5 Mar 2025
 22:45:41 +0000
Date: Thu, 6 Mar 2025 00:45:37 +0200
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
Message-ID: <20250305224537.77vatd2553pna7wq@skbuf>
References: <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
 <20250305130026.642219-4-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250305130026.642219-4-faizal.abdul.rahim@linux.intel.com>
X-ClientProxiedBy: VI1PR02CA0065.eurprd02.prod.outlook.com
 (2603:10a6:802:14::36) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AS8PR04MB8101:EE_
X-MS-Office365-Filtering-Correlation-Id: 03443deb-fa41-4b12-cde4-08dd5c377549
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|366016|1800799024|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?T9qrowAX9kRSW+P5+pIAsGDzApg6OgaJQ2Ve5+K/JvvAyr7TJArIsfVHbbiN?=
 =?us-ascii?Q?D0YvfJgCGUNN+qIeYEI/qTiexyBSiQZ6qWxQMSoa1zjAWJ1kUVWdgcJXmb1b?=
 =?us-ascii?Q?iTHE5BMnk60Kd/TxVus79FgZUAeC++9FMqEbRinrZ/86T0GKCtGirn/2scRo?=
 =?us-ascii?Q?5kKXT5nxz7Ln69Vs2/bzUAqWM17hiowt9byfWI/T03K1IFSqvclW0vh0To5o?=
 =?us-ascii?Q?3T8AH0/3y1XMqTdAHh9yYHKjqh+ddQAOPNQYf76oBorQ7nV21PHPZ7PS1yBt?=
 =?us-ascii?Q?+LCdt44LjBfxo1BFOkFIZZXx4qCjBIuQadkBQs46G9nfLjA0nCKYP2dMlNHH?=
 =?us-ascii?Q?Vo0yJ4ZE5/3h8lnjkkXvrM54O1JVhmkndbZLKYA4VAOBJyc7fEB3+hYqORPU?=
 =?us-ascii?Q?wntdROgZC+r6cjngA/zsI5jXGbH2S0WQH4RVU2Uwy373hDZu40NlZn46DXcL?=
 =?us-ascii?Q?mNdA4hOttm7mwb3bL9dw9yheaHJh7mNR/l8tzO4FlWkljIgfacSUGHQG4fJc?=
 =?us-ascii?Q?qWArzG6+NH31EZoO03ju3SGlO4APdI2pcKNrds5+dLb/CMQ/Caz11U2bsVAG?=
 =?us-ascii?Q?36vzBwa/H3Wi7sRM1E1ADKiBOWiDMA/GPrJrW8VR0VpGMZux6sVDupx/+xV1?=
 =?us-ascii?Q?3YJCEgqpFQGNwalh0SLwlWm4uR/zukryjcucKHFucTmeRFid64UAOZbAvngL?=
 =?us-ascii?Q?9+H1fmDkO8XTU52Y1eiFWWe997NvC8x1h7tFJOMJRmtNtNxM0pKDzhjk/hL+?=
 =?us-ascii?Q?Ov3CyW/9+6Jkn5u6+jiZ1nq6h1CaX89imEY3Hx/Fy1CTiXEkVuw8Ck8sO2IF?=
 =?us-ascii?Q?LQLvXHzXoxg4oD2bPVbkkVt1ykVjRePP2N+oMGKUfrvm5btA2BmkKmVMWKHS?=
 =?us-ascii?Q?m148hFo6/ulVYCftgYrije6x23Eb+sIe1YWiHtO0rB2lNp2j2zN7GNPOh1aW?=
 =?us-ascii?Q?e9sR1oM8qoOfAWY620baTcrHX8kxZ8R6Rg+AdnaVsc5QfacdgPiV8DHPJV3f?=
 =?us-ascii?Q?C5ubzBlzeuAOVVuORR5VAdh8RbLkdSxB+fahlaKHd+ls4wR3/shV5y/+dZN0?=
 =?us-ascii?Q?kFaGEt/5gX2UQOu5KKbV93R6kv8o1eVkACZbBCRBiQtTcf9OFJP3sePdCzDo?=
 =?us-ascii?Q?dhBxX09eZruFQenjt+hq70LjQfNZlA0kZcnjVWf9K5FbbQFZ3aIA0AE96BTg?=
 =?us-ascii?Q?WjNscJUESi0Gb6RLE+5MEe1Bbi6XLefsu+CgjSpSZ1JNultkj+RL60D73Nhu?=
 =?us-ascii?Q?62aCN4OmVyQ0mLp5m9CDF67zotUwkagjxFmwrxEoWhD26OQg9pJOxSKTm9z9?=
 =?us-ascii?Q?EhUSo19+u5y1Nqaqjt46HcrzPV0BRjGCMIL/U39CQBMIZm+c7WduW6IvazIL?=
 =?us-ascii?Q?icua8TtOdxHVzqOPLOgR0P6ejfH5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(1800799024)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/y4rErHDiOGrbuw+MzrNBTSftJENApyFYu8n+9ys1AbPR09Q0P7K2ugRsEWq?=
 =?us-ascii?Q?dhI1yZhO/PMfjWGq8BWs3d+KLk3JWn+l2lwve9rZarIQRKX4RKCPnZ+SbbD6?=
 =?us-ascii?Q?7QsH0qp05jSsrYxss75AHkR4sYV9KoWpbkdh1kioEajKn0h1UQThU3DvDW9Q?=
 =?us-ascii?Q?JB48pkhpOoQ8yPgwE/nLJp+7Eu4Wcpd1TTyg9n5G19fh25GKcICFStZf0Ilv?=
 =?us-ascii?Q?7x4Wo6anvXMxSCtJIBLQ60bv3DyTsReJarDbXFZMIbqmOeRU6IhM3a1hvZtq?=
 =?us-ascii?Q?5CXaj5JRxawGClZFM+oaLUarpq7WFpY3WQPdvq1QV8JML2q8GFYDwfT6XDCp?=
 =?us-ascii?Q?MmeTWM8T/i9w9rqcoVUrrXb8L4wEOSxX4JCUuDVOY9BWo7KSnaTQr2npV12m?=
 =?us-ascii?Q?wBhUi2TqWNSNqlhca9UukRoX/Mk9I1/+B89nuUmDGpAQNpqDovURWuKP7KpR?=
 =?us-ascii?Q?MIiy2k28+LxBjfSLuylKgrdMRF08YkqK68k5nB2Fh9MJ/1FuSzTiujh/VHMA?=
 =?us-ascii?Q?G1uomNKlu7Ax217w6VB8ZIFeVDnddWGTIYDIKvnIbPlFFjcgQc9bUw4s4HI6?=
 =?us-ascii?Q?qN6kn0taxouZ+vZv3Pg4xJfkLzHqmrbUi3aFo13mMG9R256Azqp/Xem/42h8?=
 =?us-ascii?Q?Ed5FPN1ae7Lv9IBxb/vqh4aYX1ZRpNELgwowGJ/SsOQcRcqvNdmC+952R8tQ?=
 =?us-ascii?Q?U2mWkNBygwtTkQWApzAaC62P0evcdqLpBdFJ+wuqwHGByr9wucw+iT6fQ6gZ?=
 =?us-ascii?Q?lm7j+o9g8vtrAMiZUdSe1NP/3TB2EtQ5c/7qnEGO/jZjztS/JXqTv8KuwyrQ?=
 =?us-ascii?Q?1TIAc/Sf/Gs7EPXYr8M6m09/+DbDfJhc/lQ3bJx3wjNd1RpxOUPCku134EZW?=
 =?us-ascii?Q?o/85xvWdppyCfxEN2Ss35UwM/B54SGqZ2ME3TXhyc80FDcygLWVpJqheUCUI?=
 =?us-ascii?Q?qdx/2moZz/Tfgn61RV5l4bCZjxbryAfFAb0X8MMsizoEtHuOPHfNu2Ce0VVf?=
 =?us-ascii?Q?xSp9vyK1RppHQw1nytFaJDNfJZsCEu7UCIANoCdBZ4cPwljdM5c3vYLU+BX1?=
 =?us-ascii?Q?sCtJGrAKF5AO1PTgyjS6DzUnnXmtm/Pvi0VlraaZ0/p8uRwok4udk7DmuN6K?=
 =?us-ascii?Q?G5X5GtqSMFvXhXLxu0siycAALcO+YB5SCKpcsyQUBRMV07oXP7GlHoYgBPiP?=
 =?us-ascii?Q?1mzduwxyMaK8WC0Ab9Tcg3JpjdBtAA50lDDMLVKcHX6UhUw6gFDWJAAEe9Cg?=
 =?us-ascii?Q?nMxdnRQuYXSG+ag0jh173imlntLaRSb1mFM1/VMqGfQEveMBungkhg/TpxMR?=
 =?us-ascii?Q?xHXfgIGk1P6OGB+F1l6XCePd4B1PZhpMjJZfbwAL8gZf/LSx9LDEDT4VAvfU?=
 =?us-ascii?Q?FEwMD+GSy3LJp2+u5q3WZ4mR8DDh852VpE3CTkpbXgtBn18eItJXbnhhxHL9?=
 =?us-ascii?Q?AiY6L0MxRpUTZPcxAPobIkNmwmwjTvN8ir/9g64ubrVS9nRVTskgpr9TXuu4?=
 =?us-ascii?Q?J97g2PmYw6Sz4pUZypVcwY2zVHA1v2/+gofPTScIE/DoB1NPOV24t/sOVhYT?=
 =?us-ascii?Q?H65S8RgOQbW2xgf7PAHtxiibLDfF7o1wMJufN6M6rQY7aL8neQKbBVLuC868?=
 =?us-ascii?Q?OA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03443deb-fa41-4b12-cde4-08dd5c377549
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 22:45:41.8497 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k9NbO42usLJwXjasTf4MBDuvGHEU4op6zLz3YBFJ/fA7V8fkrjG6WwhyIkSSgw3U28JOO8yiJlwvem6P11XB9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8101
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=74sK4bwNfKjJi9jvQjtkRj3j9Wu3z9liULdHAtabAj8=;
 b=GmBJaPGTpMVdYgtvZKf/q31MwQ16DgbWuH3jWCCl0nFrDU6yGWsAPzSMIqOdYywgghLw/4CPCTd5Z/TqGMCFm5rHHOXDtVWIRd+vrOBh44QPjXILb+G2AeQ0gOiXN56oLpQqTRLxBC2eJ8oM4ApeRQFKXd6VswhuSZ7ectZtanAhHRmzTpEmT3/A83xA0R8gPNLwrUCQ56JoeyXmCmdZ1HqOLiNHUTRW69E8CNbxrOA5tsZfsdxrDUhlIkSSvAbEhEdp3cXEYd9eCNC3zxtRG1ffqT0VTiY140tDvecohfCXwacm7Vk1gBWrpo89zh/Hjj6VXzbOD4Bcks6KkrF4Tw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=GmBJaPGT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 03/11] net: ethtool: mm:
 reset verification status when link is down
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

On Wed, Mar 05, 2025 at 08:00:18AM -0500, Faizal Rahim wrote:
> When the link partner goes down, "ethtool --show-mm" still displays
> "Verification status: SUCCEEDED," reflecting a previous state that is
> no longer valid.
> 
> Reset the verification status to ensure it reflects the current state.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>  net/ethtool/mm.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/net/ethtool/mm.c b/net/ethtool/mm.c
> index aa43df2ecac0..ad9b40034003 100644
> --- a/net/ethtool/mm.c
> +++ b/net/ethtool/mm.c
> @@ -415,8 +415,9 @@ void ethtool_mmsv_link_state_handle(struct ethtool_mmsv *mmsv, bool up)
>  		/* New link => maybe new partner => new verification process */
>  		ethtool_mmsv_apply(mmsv);
>  	} else {
> -		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
> -		mmsv->verify_retries = ETHTOOL_MM_MAX_VERIFY_RETRIES;

This is not what I requested. The lines with "-" here should have never
been introduced by patch 02/11 in the first place.

> +		/* Reset the reported verification state while the link is down */
> +		if (mmsv->verify_enabled)
> +			mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
>  
>  		/* No link or pMAC not enabled */
>  		ethtool_mmsv_configure_pmac(mmsv, false);
> -- 
> 2.34.1
>
