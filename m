Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01786A331D6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 23:01:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 247F4424F1;
	Wed, 12 Feb 2025 22:01:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OwUDusMl3rSq; Wed, 12 Feb 2025 22:01:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17123424B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739397693;
	bh=xewWSnNNZqrgRtonI1dOD4M0xFibKRmbLIibf4IZPUo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wM34nWm9ErbDpUp90wEIjTDPfP1MLAWkj7lvjGWsZ7o/uzd19VXUthEFsqesdFNxZ
	 +W3Z0+fIh+z7SGC3MVR+UKGzpQ8rutZhSGo+bQC0ka6x5YIS4aGQc80hAZttqc7tQz
	 vxpGy4eSYlpVKISWWJiCh9s9XKtV75EfyWe4975+UKW4v5sM42q5iMwB1EWgau7oac
	 P2ThEv6YPOd/Oqf2rk8Xrldrja0v1nKRkVPqdi+OK9sPuez4HfvNCnNHZpBpLd42lY
	 JxLtEORoLOQ/vSJc+eLTVS8gVP8du7a1qnmyR95tAnjnAgkAk3Eg3OJ0JxjFOAaDil
	 VT5LZ8WAK/qNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17123424B3;
	Wed, 12 Feb 2025 22:01:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 36CEF1C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 22:01:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2623F4247F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 22:01:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fCvtFMwYfhUr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 22:01:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.104.43;
 helo=eur03-dba-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C3DC2416CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3DC2416CD
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03on2043.outbound.protection.outlook.com [40.107.104.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C3DC2416CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 22:01:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BcDpOAAwXN6id9lHDtrDPrDGy7JEXDbj1IRfCTGVMpEs5+NbzbqPpriidfG4WHpyKDE5UbJseCjbVU2ef74SH7gkYr9gGkTd7pddgZLQpy1GInbzhxis+RZ2Zle705pMVcwi1mnD5ByUAUutMGpOqaH6cvwz9ycKJb6C7jEUHnKylbdhiZGxypAT1bKQozV1ywXSAl8Lm9oNODCY1Kq6gxvafaRXWJc6Q861d2BXKRQSBehdQwyHDQMJMMKcGKHUQ2Ibk3uQYzqfXV6X6BgckKKGE28dtzKkvKxGIAO0MTbS/YiA7+DVa3ixPgO6mcfgML3d3IaMwWuCSyPLuxD5Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xewWSnNNZqrgRtonI1dOD4M0xFibKRmbLIibf4IZPUo=;
 b=ViL7xLDi37PHNn36G7hq+X0nWhtjborPONjrebVFVIXhFpUpVvwfIv2L/M8DBSlgZM18py72Pu70O+NhnJoGeAQWdTTYBjVzIukYHiO+QvVgp8DiMjDRayfK5p/VEmcpuHiM51ZfAAhoXjnRWTMC0mN8vQ7cdzrapQpnDrRpQWDTH6KZymEyTy2Mo1N2yLIegNRjBzk2TGDxNlp4wAdrG9HzbE9lra1r1Dgljkh6RxBsDqRHNbLJIhvm+9e8iu12XraSxHZ+rB8+Ha6x/7GZ90SE2rMNoCNDKZUJsns049+jWc7VYA7EV/4ctr6nDVZUWFat1n496uUIgDZwTIoeZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PA2PR04MB10239.eurprd04.prod.outlook.com (2603:10a6:102:409::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Wed, 12 Feb
 2025 22:01:26 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8445.013; Wed, 12 Feb 2025
 22:01:25 +0000
Date: Thu, 13 Feb 2025 00:01:21 +0200
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
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250212220121.ici3qll66pfoov62@skbuf>
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
X-ClientProxiedBy: VI1PR08CA0226.eurprd08.prod.outlook.com
 (2603:10a6:802:15::35) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PA2PR04MB10239:EE_
X-MS-Office365-Filtering-Correlation-Id: 16bf5745-10bf-47b2-b484-08dd4bb0cb1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SdM3Ce/NNpWirdqqNW9Bn8PZbbUkghL/xvybMJxTe9YsCfztA/KpRzxVAiGQ?=
 =?us-ascii?Q?Pe8t44Fto+ji01cN0e2tZghCRd9aeLDvAjY/plIesm97kYPXJUlj06NfOX9I?=
 =?us-ascii?Q?/RsCNtFUUPCh6HF7XbyXMz/+3vnTV9ZM85HnV6E/7VH/6ZZizycRM/ARFnao?=
 =?us-ascii?Q?M0ZH02bfgYjHOyh/ksW2o+mv5IAdVOy3ARDA5o3e8m7IVvuvBU23g4hgqgQA?=
 =?us-ascii?Q?OXOt6ISgXoCIsHbWS0su+R4hEUgFnsz2Wj5frR0RLmHriJyx0PcGwPPuFVa+?=
 =?us-ascii?Q?qxmsm7ofaxWc/ISmLnHkbddwy1fzkaNzi52dpCI/XLuTdbNSD8M5Y1cUsqSd?=
 =?us-ascii?Q?vLyl5YxPH7uYgY+ll3bl59HsKoaHZld/UUaieOjt7BsT4GKuevJdTg75aQtr?=
 =?us-ascii?Q?dvaCt1jtpXd7w33BsSf/DdqkBQd4MnCnztiWUgB6lzwyHy4IGXthj1hqDG49?=
 =?us-ascii?Q?PZ+gwXaQ40XONgUKdEVuegrNp1tDuGuuoqiYdSr6c0uSn+kfeEeAVrrAshhG?=
 =?us-ascii?Q?XSvmZ8LEagDTwTrMI1cbO8UbJVQM6Cf4snR9JfYFJEpTL4u59qgUfDHhuuVT?=
 =?us-ascii?Q?1+Z79zbjT9kLhDyYq2AMbxfHyMKKCntD3dMxk/Kjw0Hfztbt4l+EO1odTM2s?=
 =?us-ascii?Q?hVR9J4SY6cPkQ/zt5vFlPQDG4cTiRo3rhOj6RxEyrKauM67IzaP5Y3oslksj?=
 =?us-ascii?Q?ZBgxMnC6O13wM6SmYfiws7lC29N6uzPUkw9dsNbHsJbxM9BNnWHIZQE46Agc?=
 =?us-ascii?Q?eFKqyxASFrjATnNVv+BlDDto4joEne6YUFY31lCvT/BskIYlFITReceTPE5b?=
 =?us-ascii?Q?i1q+AZs4qYxLf9hqX8A/RGY3Z+eTVxhwbybhSx4sGnuKAmTwGmj5xuM54CHc?=
 =?us-ascii?Q?ZXfHcvKPL8J6PwY8bFOAjSANJJsZdpUIHR8tcKMR+rofGkcninoPtyp2D6ga?=
 =?us-ascii?Q?IxQyNNV4kGKeAft2t+UgQVD5Wq01j5NtwXpWJSHTcZow0zQUxdrJumD0TLw0?=
 =?us-ascii?Q?SnABPpOl51+VlOL/2YM0VdVWOJ7p/m9ADy9e1JxZgDSjFyqBRhaNnJXE2mGU?=
 =?us-ascii?Q?OWHYDNFIyv4jtmcm8+uPRd6eRZPOil8aHJVmuL/ia+Ivi430ze+ylhucqD0O?=
 =?us-ascii?Q?2Z+tmSc48luKlRbzLvOGIgFa4clMhUk5OtJeEFSWaPs5B+ut6MTyJjXeHlPt?=
 =?us-ascii?Q?T6o+l2rCnbbYwStfWSSVQ27v6ISjvKavYXlS74V4li/Gxf4yEWc0jGwthSIG?=
 =?us-ascii?Q?zUP2dwibIosvMA741X3Rl7bJOwsebTm1iCArb0Qtzwo9txAOIUTvuz7stNkk?=
 =?us-ascii?Q?GoqUuiiqmemhBdY0ao4X3ZskXzmdmi2iuWVKYF+da9LGsWruilZ1cxYp3CK5?=
 =?us-ascii?Q?d3jEFJS7/QGtrmIX6q0WXCpGBvlY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qJKrs+qaFkWN07aUIaDFp6YGq135HCJr7VGBGeqrEtbSeHga6x/OgLYZOjLc?=
 =?us-ascii?Q?97y5aXAsYf/rzP7HQMqOGQP2Cib8rYh3pWGMW8ip6BKvy9s49XTOzPhefXoi?=
 =?us-ascii?Q?V0zufRyDC6lVmtzfsowBo0R6FDspTgONpol4XEJd/dnHDGVWUlkhPziavwhp?=
 =?us-ascii?Q?DfXXNG/4Ss3ZxD0QmJU7y/V2fd9m1nS2DQfsvgmTzR/KPH5iy4GkiVmDfVaf?=
 =?us-ascii?Q?5bUKM1imwPhsra5hwgOgELMXJPYlJUeB7c5l9XrBpeIQhcyUMNUUXXlhqldx?=
 =?us-ascii?Q?716wodUOiKBEtetSK9/qtqb8DZaNa8h73DUijQQPKf2l0Am6Oplmhlz/b3i/?=
 =?us-ascii?Q?fpSJlR6FTP5vuE7EIanh9qVMTdMoJflAbQYMUuB7B/Vxqp+UyWvd5FD7HZh8?=
 =?us-ascii?Q?Mz5Q5mDtibRHwKpy9EgcZonHxYlg2f3PbkgFudwW/25EDMy2HdvtJuH8u5f2?=
 =?us-ascii?Q?8zyhV6L3skE16gZPZur+X2B1VwySl/c+6OREGxEtwJzCo7aWIIotb4TqBGCc?=
 =?us-ascii?Q?KGGh4GGsybHybCxl8ZqwZRJuw/ddJ8i9l/JaetTHnxFynrq9PQDp0oGdF/cB?=
 =?us-ascii?Q?sW6YtTfposZuN5p1+ORmUs3xlTLm7ahpHOTpIrclr/t6xsHYcp7hbG7V6y6J?=
 =?us-ascii?Q?IsfBpAmEfr8frOG5WqzXMC1ikfFZ6Zq6217rI4E81lUBnt4puQTHaxXYKL/+?=
 =?us-ascii?Q?fs0EznLCYysjNnabwZhiwJQc7RlTU9fK9o5HpAvGknazrDwRCfR/FA1vvL8g?=
 =?us-ascii?Q?PkhCGDRwHdgNQFGVECY5EJEE4AcBps/SA38nzeENxVNC599fQf1ZhB7+2zPh?=
 =?us-ascii?Q?ThK7UbQsc8WzLI9J4qaTVVZNjB8J9snZoT+8GdlI1JIFadjDJUZXhk3uz/5z?=
 =?us-ascii?Q?rioOqclI/9I+Rb0FB+OFx/H191xFVZmepxeiUhHIgoCp5QIsYL+WgxCu8FDM?=
 =?us-ascii?Q?qK+bgMvefgsFnEoIgKKnM5YMxmdquLi0yvDMzDD4SGM8WRvRFF9XmQtxl7lq?=
 =?us-ascii?Q?ZjJtHjC0i9FWFiL3HbqGK3G0V/mxL3gjO4oHaWypGVSavdX3cJxDu3UhYK1y?=
 =?us-ascii?Q?WxcAfP4y1eun8t3d1Z0uVszRhwDXecIrIjTuTo527bmosY1SNy/Sc/qYavfH?=
 =?us-ascii?Q?7FWbTMr3k0GBsbsH3BkYTsk4yv+UWhswDNKbAN0R4pPnr1QW0RJWKrGFz5nP?=
 =?us-ascii?Q?lqG6b3GI25Q8dtgRzJ1Oq4FzKZZxL98UFG0gVkY8CezNtWPed5D6EV6XJL6C?=
 =?us-ascii?Q?2Px9vvdtxBlA/Na0B6E3BtRae6YYE6T0lNW+jW7DLXVOSOpXGAjKuYzUpdGO?=
 =?us-ascii?Q?eOdAT9+i9QaB3hqpA5mwqmGRf/aY8xFHn7/3PBK9zheLv5fwjINGISUK9Sen?=
 =?us-ascii?Q?sK+ZBDx3k70dMruEZi07iEntS40HsjUjZdSrbDfOEWCP1WV8PqlbNO/bbQAx?=
 =?us-ascii?Q?Rm3dHjXsahnU5ZKMXccZhVjJoeF3h7jLSiGYiXk0RELcrB1aPNqe2p8NmL4R?=
 =?us-ascii?Q?LfG3KptotHO+4kbnPFO/aaLtqASw3/mcXPaSLVeWqfcMrIXVOa4vvrGZFOBt?=
 =?us-ascii?Q?epIUAVzxVyvJu+tBJscvVUfWjuNIfzv6+xZsUjC1ZPczjyzsm4b1SQ3TOwta?=
 =?us-ascii?Q?pA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16bf5745-10bf-47b2-b484-08dd4bb0cb1e
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 22:01:25.2617 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: epgfZm+U2O7k4jmSoLRaCAbAWCKxhDJlP4jb+43l4wWIqMftuV34xGwXuRZFbtbcz7btGmyNwkhkr32UDqF+gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR04MB10239
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xewWSnNNZqrgRtonI1dOD4M0xFibKRmbLIibf4IZPUo=;
 b=DfJgWMyICOGfDSaQPIYEiZFdblABaI6kaMJTDruAML+mxViZ9ck+1oE5hWSX0+HhoS7ZqUERapBA0+II2T5b8zJR5wm/0nlLsXfiYuNNoZ/bNh5VtGr4R6fx/m5HVKuUzX7KWK7np16vf7ubadi2+gRI32LUx7d38u7PQ5XDnzD0ZeE5SNKZJIp9b//RypjKgtVqUPJL1uBbI7V8n2gZbQYgqI2wipPUMEhUckj5v0cbwbzzskKFl6UT13wWy4b0MEoCRCupIoyrFwHQWUoqtXSngMDzDGJM7doLxvhfy7fKxzUG5LqhEgwcJmGcqcm0Cpeyf1BVU1icY6gdJT5ktQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=DfJgWMyI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support for
 Frame Preemption feature in IGC
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

On Mon, Feb 10, 2025 at 02:01:58AM -0500, Faizal Rahim wrote:
> Introduces support for the FPE feature in the IGC driver.
> 
> The patches aligns with the upstream FPE API:
> https://patchwork.kernel.org/project/netdevbpf/cover/20230220122343.1156614-1-vladimir.oltean@nxp.com/
> https://patchwork.kernel.org/project/netdevbpf/cover/20230119122705.73054-1-vladimir.oltean@nxp.com/
> 
> It builds upon earlier work:
> https://patchwork.kernel.org/project/netdevbpf/cover/20220520011538.1098888-1-vinicius.gomes@intel.com/
> 
> The patch series adds the following functionalities to the IGC driver:
> a) Configure FPE using `ethtool --set-mm`.
> b) Display FPE settings via `ethtool --show-mm`.
> c) View FPE statistics using `ethtool --include-statistics --show-mm'.
> e) Enable preemptible/express queue with `fp`:
>    tc qdisc add ... root taprio \
>    fp E E P P

Any reason why you are only enabling the preemptible traffic classes
with taprio, and not with mqprio as well? I see there will have to be
some work harmonizing igc's existing understanding of ring priorities
with what Kurt did in 9f3297511dae ("igc: Add MQPRIO offload support"),
and I was kind of expecting to see a proposal for that as part of this.
