Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7871DA5E130
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 16:55:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32D9140B4A;
	Wed, 12 Mar 2025 15:55:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ta6AlsgnpVtI; Wed, 12 Mar 2025 15:55:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 544FB40678
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741794934;
	bh=Zpeh+JWSdfC1eghSEPaP1TCaKvhKugSlHjxXOKdD7lo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3hmBd5mJguFC7Si3/yhTUjhmr0OdMugaXMg0oI/a3s5n2V2HdEX6OfUqKaYzRPnWH
	 HnsNt5od6xmebznxgKyh1gbDHIfWfmjAZN+RqP8ABHFVCzV+y6BUjqW8VbghtkgRbv
	 BMwtKwl00vv/LNOlKb/ivLOA/N6h1Bva5WAp+NQlV63yUk+YrJ6h3w6WZ30SnqG5T4
	 e2vsvVaoIX9z4XQe6L8cnynT4Y/wIpFRedDM4ZuL6KeuXDqQAYSvP2fvfZ2RdGjAhg
	 NUTOr3ytBWoehmL5aNBfQgnwAHfBDAczPLs042sboIDpB24RUDRzkAMIPm3uTzDuPM
	 2I9vt4wsPzrgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 544FB40678;
	Wed, 12 Mar 2025 15:55:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 183771C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 15:55:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 076D860831
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 15:55:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bR6WrfEOc1kf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 15:55:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.70.0;
 helo=as8pr04cu009.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 31EDC6081A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31EDC6081A
Received: from AS8PR04CU009.outbound.protection.outlook.com
 (mail-westeuropeazon11011000.outbound.protection.outlook.com [52.101.70.0])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 31EDC6081A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 15:55:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GK78duC4gWB17TfTrp7TeLXO9WxeNcZwi1Wc9IkpuyMK5uv2iVjsjaqtVhf1DTASuZNj69H4xdQc3YzgBr3Pgf1k2mdAyqw4okh/JYl/JPH3e3sBUVeh4fImbbz3kbK59HzyNWR36xcRBuYJroBR8MQ6iXBuEzWbVLibY648ERPll0PN1hGPnTh9uxjmDz8w/3wP3IeRM/ek9Onktw2asqrGTj70R/IGmUBeuITukUXzPyYWgkY44ep7TrKrQCDoIg7V7zbLTZvTXkNljfhU1w9zyCHzPIjLBGDLos8rCaTgpJAoZnAmjk3bSHPH1JzbgAhucLp4g0jDmZN+YaOZ3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zpeh+JWSdfC1eghSEPaP1TCaKvhKugSlHjxXOKdD7lo=;
 b=Zk09F0F9eTpsqA7466VFVCXt968lZogLaLIOXRHNG3avnagVp1HJDF5CGqluKgWtGszoA8UzJPUBO7Y6ibsSCp6gqlUCb27UsHgHclC81Zq3rA3+yn80gaCFT1Ty3bXlyJTxg6vB/muxT+4A6Ppo6akd3+OA9WL7tga8J3atC5P7sipzbPUxGFo3A2oHuznUJHkH2p+dJcXE+kGMIfCCv4e0jumAjT9sSsNpdNTNwRMz8DJdrfu6lHMD9A5+Xaih9ddEzPPvG9NKQgQEEhr6NgTOS4U+puGAML/ljFh5tMTxM+d2YgV4rdLEOgUwkCqVhU/cbpAyoq5PfXcynEkenQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PAWPR04MB10008.eurprd04.prod.outlook.com (2603:10a6:102:38b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 15:55:27 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 15:55:27 +0000
Date: Wed, 12 Mar 2025 17:55:23 +0200
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
Message-ID: <20250312155523.rs6544cbsvyn5ojj@skbuf>
References: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-14-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-14-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250309104648.3895551-14-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-14-faizal.abdul.rahim@linux.intel.com>
X-ClientProxiedBy: VI1PR07CA0282.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::49) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PAWPR04MB10008:EE_
X-MS-Office365-Filtering-Correlation-Id: 59e2fc16-dd60-4576-d856-08dd617e4f00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Cb7vBEyWouJeaC+e9SBxE2B83CFipG1nqee8BFe1lTfwJalQmWILumO4Qusw?=
 =?us-ascii?Q?u+tTLcGGaf0InryIEDK7YGUsz3qdpPG9YSLHkiZ4dYVY7vfO/iRuf2JAOcTw?=
 =?us-ascii?Q?RHmxvKCLzBJP7j7oYgWMKc1wD5pH4yOtrHpozlOJablN/CyMTqRYkH4vq2tO?=
 =?us-ascii?Q?wPwDHKZ3fj39sFVS5hdIL7OtRpXNAW0E5bfeLONSwe6wZLaf5jpB6ySWVDht?=
 =?us-ascii?Q?W45A/erKkG1isvft9nxkVb8N4ZlJrLZphdBSyREp7tTqZl3ooTGEkEYNga7a?=
 =?us-ascii?Q?cDM7DOaK/HLyLqV009qAAE8mpJMWhk5tIQ+NV4rdOgLjP8FMF+brLQSoUKop?=
 =?us-ascii?Q?246IOZvijrreUbeZaO1pyNjmIhuJhlkOxM01ytaxLVp2ChNXSw283wedSoyW?=
 =?us-ascii?Q?KOql7ZABvFlYrqABq3tRq3VsIn0mZJmvsO7nhyInwP/WYM5ldFm4jkbchV2l?=
 =?us-ascii?Q?Xk2lzvegVvtuUkFQZHUsFaBFwaP1/rXAthNknrNd24rfsZJvULiYNS6PqdCm?=
 =?us-ascii?Q?+uJ+n5RF2z3xIqHxii1RdGryEJMOcUpz2lXfHM/hFCXDwryNgEC81WUs0FdO?=
 =?us-ascii?Q?Cjn0ONn9rWw2mYqO8xiZzcrfmlHzv/1rV6pwgFCyhxeRGYE/X+IlHZKvkosd?=
 =?us-ascii?Q?jPMSpxbhVxMfPgmLC5vUWBJlEca2UCsMb3FQ+GHEaoxOChOeRXQoKVOJg/DU?=
 =?us-ascii?Q?6C5FCFFtU6LIN8mqeAlXBCMoKZ07A7/qoDjFmd6qc1oMd0AgRM4BwDDf4Egn?=
 =?us-ascii?Q?ieWw+vPb88yzzBY6adtaDLNo5gH2iVGr6V7n6J/LED1JgWJ/I9Aa0Nof/DsB?=
 =?us-ascii?Q?7t70/MmcPac15Wf01fjbawQC/Sp8WG8b4UIZZgrnbv0IfkFvyNTpkH9oOfuM?=
 =?us-ascii?Q?1sYXYY1vyLVoX8qsUH5n6vtp3kLOOYTxc9anzaOHiwdu6ECQGiU8TF3YX1K+?=
 =?us-ascii?Q?oyKAt6rpRMNSrK//7gCnOLYWC5zvGp5iXFk12LdS+2FA8VORWytsuLTdUXkF?=
 =?us-ascii?Q?Dr3+tGjt6BKpmwmAcW3BMhPdNy5YwfdI/qcRg79TGWIsXWJhty0NnZLNMexJ?=
 =?us-ascii?Q?bLszn9vmJvO+xVWImd82wHj9gU4WAfVYwWb1CVzeGrjLQiif/WxqOW3Ka4x8?=
 =?us-ascii?Q?ZoREx/KjWRSqMIRQL56mP1h58O9/7vMnnHJbW68oOU85aYEkPDvMIZtcoK7h?=
 =?us-ascii?Q?NWU151nIlsZn1N4hHnuruo0Uk2j9dOSURTsLSbtGDCznkhfKcI8vXAfvUJCj?=
 =?us-ascii?Q?AXrAUHS0BRFclABjypGh7+2Ihk8Voq/zJQY9Gc7e/i4pnIl7brnkYI8Hv+l/?=
 =?us-ascii?Q?Kv/cDp6BjL04mM03l7DHSdJnXOKP52Qle01LqQyEhTkqqB7mZ8tx5LjanaZp?=
 =?us-ascii?Q?B9S4g1+RclptlpuY20r3XwIj+cEv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jd716TYiww8xBRCw5c4P77R83kIoHzAzrI6f91df6htWqRX/b/wWOWB9UMUU?=
 =?us-ascii?Q?KPCbofi9pePtAnRdKE+D4zj1l3Wh05LIyGgXs34m3RhNhTlkL/HtGTH0NIyv?=
 =?us-ascii?Q?3dK2TF/LaWfoA0b/vK6rBHW2aoVi/+9Pghw2t/gFtpcn1btOk9DkIpT8cEI1?=
 =?us-ascii?Q?RZYtvRXqYrldjaa0euvWJn79NL5APMB12AimsLeuBOn8QlP4T5NfZCBJwmnf?=
 =?us-ascii?Q?wRD4xLrhg5S8Io+JcG9KgLd+YRpkrEUhzdQqy3Tzdj0sYT5/ZPER4SJZpOm9?=
 =?us-ascii?Q?Q9/Q6/uB0Im9ZM7NH0BBNiB/D6IOaVC0bg9Nrc8p7xZbOfTlWBSv7T8rQFA1?=
 =?us-ascii?Q?DB18Ij4gbfsXNMxaqKdcId/4C+Wl8zszT1/L1lpdSgwqHiuDe2N/gST0Fe8M?=
 =?us-ascii?Q?cbYl3XyWkiLojBwGf3EirQnayCXOPGz+2SwXG6fXX+wM4PK5BkN2AoVk1I01?=
 =?us-ascii?Q?YwyvIfV69b7AugbaxnjoIlj3jJ12YuzQeFiA2jdJ4YmuJaxYj4CYyXNQwyi2?=
 =?us-ascii?Q?7wjk+cZ+5LbUdp0WTudSSLsOcyt0Qll61jq8kyCB8chFHlwaW3pzajOzW0DR?=
 =?us-ascii?Q?tJvPYuysXiMhWCYhbZ+jw1cxV6FjA90qarwchw1QtYkgRIeZbTcqSBQN6CXU?=
 =?us-ascii?Q?TIb6UhnEHjD8KDGL3uBJXsUZ0jN2i8E9bStRFFr5ELFnzApiCDawTvkPPT4q?=
 =?us-ascii?Q?JkstChFAA4xJWI6wcO6AJ8zN0NWdZv2j3gz2vkHjhVz5bgPz2IFldZZdbRU7?=
 =?us-ascii?Q?m18Hapu0ceQZzH46PMLb6WO8lArxySfCf+lMB6hqGGi7qZDS4xg8gtnNDMqF?=
 =?us-ascii?Q?u6TIAbDoflH6Q25Za+LayWqfpZ7cftDPTV9zsnlgsdXiLdHZZ+zIbeX7/sTQ?=
 =?us-ascii?Q?uaHNWJv8PUK7caKZCD+Uxuet3o7UDlegHqj+H03TjjIc5J5qveYU5hU19S0G?=
 =?us-ascii?Q?uDIaWrT/uQoaGhdrjEYtMb7arr+Gep9YCVervrgF5R2KbtWMq2lj6XKwStJi?=
 =?us-ascii?Q?qJYZwtmXy/XXz2kmDXdP5jTA+o6iObv7j8e9SxmLMFwl9RKdRJQ2NXcH9Rg1?=
 =?us-ascii?Q?w9NBQ/UBz5wwSjunK+gIOH2hArPuzPw8IqT1/9MnPAetCZjAXEjcncr9NCz3?=
 =?us-ascii?Q?/scQV6fdAs35dHZ2Z7BizNXrggfncBlF/jA++pT+nOmAJa8oRG9y2AoR4wtq?=
 =?us-ascii?Q?J2f0WeP6eXlhXMefaszoMbhyS3dWlPh2Z789kMy03Mnomuxnh7ReLGNBfGFC?=
 =?us-ascii?Q?kfGE1DX84JgEfhEuLGGiadPQBE10Sj0vCoO4tppTlLs5vkJjXRLQSZu7pxiY?=
 =?us-ascii?Q?d/4iWHaT11OTjABfWnbc9+fTkJxhjUXMlT/40tHATiufe5yVhfX8ZV4ANm28?=
 =?us-ascii?Q?XkjqLxbCzunEXlWUQI/6gVbMz+d0rI2DNK69c+qtIRn7awaOwuI5LX0qdDUW?=
 =?us-ascii?Q?ScEU5xdPs8hGLdi5xBcStKqSwMe8ZMW8fFkUZVL7Eu/L2JEveTc8ylSJrCLI?=
 =?us-ascii?Q?3QP/ZrBeNy1orHcZqtPUKAJcz4DPPve98/AQgiP575mSQlEBQWyzo6B9LwfS?=
 =?us-ascii?Q?/m2ITjt0v4s4g+xYdRZrEh1ErGFZYqfxJ7uF3iPk3RzKS83W/88JpzyCs/gE?=
 =?us-ascii?Q?+Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59e2fc16-dd60-4576-d856-08dd617e4f00
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 15:55:27.7016 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Y7qEV4yfLc5cGB+D/iAnJ17MYOcPUu+uXWC2EkCeUqFF9O0HvF+gHOe6Bmx6y4rPsHUIeL3HFGzKHyQIDVrlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB10008
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zpeh+JWSdfC1eghSEPaP1TCaKvhKugSlHjxXOKdD7lo=;
 b=L/lnu3kh+F9xj7Y72IX9+DBFXp+a0xW5psO6Lrn/zDwdzcTS383SlSg6mAHUIf7SRUy+HJYI8VEwEHuU6fYMjVgfOV4+bA8z3flgruQsvRcKtbCq3utWe2DZBnFxXgHlKvmju/P3tpgR1khHxd/NtxitnGfQRlPhp0SnH6/YCGEuN7xb7mkF+IpQhtTEpcTCoYGExkOVwdMUTfJ+5brL97Kh643EopFk7VDXN+4L0hCiF0FEgNPoEBCPAWV6PCZSAVYbGhULThTlS8DUUvjw8Vw1YCsfE00e4b8Vi9ErhxJUy6/MuzNPRZ8tHvJb0e1xxH/+rhA6RmYVulpRbhpuVQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=L/lnu3kh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 13/14] igc: add support to
 get MAC Merge data via ethtool
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

On Sun, Mar 09, 2025 at 06:46:47AM -0400, Faizal Rahim wrote:
> Implement "ethtool --show-mm" callback for IGC.
> 
> Tested with command:
> $ ethtool --show-mm enp1s0.
>   MAC Merge layer state for enp1s0:
>   pMAC enabled: on
>   TX enabled: on
>   TX active: on
>   TX minimum fragment size: 64
>   RX minimum fragment size: 60
>   Verify enabled: on
>   Verify time: 128
>   Max verify time: 128
>   Verification status: SUCCEEDED
> 
> Verified that the fields value are retrieved correctly.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
