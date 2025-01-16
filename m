Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D5FA13F85
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 17:31:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 293F7419CC;
	Thu, 16 Jan 2025 16:31:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6wh9XkhtebTQ; Thu, 16 Jan 2025 16:31:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F1214199C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737045106;
	bh=4JKulMebDyuEwyZI0+GG1mjZEBc/D6Bqs7taJsNmT7M=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YpdQLure1pqCB1mBw2DhD/U3vy1lV3E2HPkdta/SXtbz4cVjBPaOMMr5hIUJ4L6HP
	 KA/9aLCGl6c+OCDh8Ifyn/8iiUGfcDqgYHOxCo7Ls05iUSQHIKoTpSIqD0NaKmYpKo
	 zXeTo9MlH4WORYY3JkR1oosohUL4pvE4QXHArpbKWxK/6J523/l5/Zbk1hcdjnxKMe
	 kCY9Km/kXUnJMu/1zPjfUHN/DYdy/qGSsRawIkZYrzV4RJycsIxSyLYEUWUxUkvUsa
	 eazblwHRYDSeMr2hteXpSaRPu6UtJS0WZSxH7Dc7CQSaGXZkeOzb19g/cjSIcUt5MI
	 lCm3hzCeSxdVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F1214199C;
	Thu, 16 Jan 2025 16:31:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 099A494B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 16:31:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 037EB6116E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 16:31:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ygEFBlejR0W6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 16:31:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0E7C2611DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E7C2611DC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E7C2611DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 16:31:41 +0000 (UTC)
X-CSE-ConnectionGUID: CA7mZW86RZa9bw/KcZlMnA==
X-CSE-MsgGUID: 5AQIE+McTb+l1lPUVmmtzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="48838819"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="48838819"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:31:41 -0800
X-CSE-ConnectionGUID: t5GjnYtZTGKv8SGadcwHLQ==
X-CSE-MsgGUID: jPzOgaXhRg+quma1dqbmVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106427145"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 08:31:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 08:31:37 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 08:31:37 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 08:31:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a6+qMOfB9CAj1Ua2PCEj9yC1pXejchibfI0jrXIsBGeac9Dy6UbYr2it4Y6Y3PbMAZft90Lf4PhkbsydKTuPEp6umek66RBUBsFqCeVuAnieDPI8fuJqLbsUtWakh7XdB60Jo8zq+evF/fVgS7ynjo05jWI/rTQMa/IaG/9Mzw5l1TF8v8/8sUjEtCh38tpBllEut/Td/jQHywhHYYJhvDy0La502p8et4ATSTLcgomVQ0EG8rD4Vo+IQT+p59Huo098H0cKViu25+6PgIG04mBmCJeN6m5+FOqsEJGvK+D0DJZ7MJNN5EarpJgS99OKqzEI2NCAyWaq0eXiojVkQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4JKulMebDyuEwyZI0+GG1mjZEBc/D6Bqs7taJsNmT7M=;
 b=wBRl8UgSxwXDYfNC5Z2Rxe+3cuPznBAuL0a/ydMyf7tPf/jpiwUrRHUXLKv9YD+z9TMbm5YdZTrotp2Aal7RTvciWgt+Y5lJ0F/ogjh9P8E5WqScGIrxJOjxfNQQxVY1NtzQ/SUtCVqT4RTfoS9Ae89/REvD6nv6oJA2zdpOBHpSyFAzuRQ1y13GQBGwe7z9SUqvGBbok29hO0tqf3S3ZvHXGF4q7Iu9er/xnglpRuZZz0IjA/FOSXcu4NA0H3RU1NlhxfdRLS/hSa5+KgwpdvflGFrXMhiRc1YtmEuxwUnUFnndv2tgSiyNl2Veh8nOvG2Wit3ni6YFN6pXo85i3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 IA1PR11MB6218.namprd11.prod.outlook.com (2603:10b6:208:3ea::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8356.13; Thu, 16 Jan 2025 16:30:49 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 16:30:49 +0000
Date: Thu, 16 Jan 2025 17:30:43 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <dan.carpenter@linaro.org>, <yuehaibing@huawei.com>,
 <przemyslaw.kitszel@intel.com>
Message-ID: <Z4k0M6v3Pl8ozDvK@boxer>
References: <20250115145904.7023-1-piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250115145904.7023-1-piotr.kwapulinski@intel.com>
X-ClientProxiedBy: ZR0P278CA0117.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::14) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|IA1PR11MB6218:EE_
X-MS-Office365-Filtering-Correlation-Id: 7aaccc29-0d18-4640-3237-08dd364b22fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xSMGyD1q1nurckZKjeU/mVbH7kHbbVCvTubdLiTeIaxAbqxX6AGXZTxAsAWn?=
 =?us-ascii?Q?na6unQXn9iXfZvecvDlGYILSB/voKZsE6dX//tDxB5bu1C8nopdcet2YQ5B7?=
 =?us-ascii?Q?q9VGxmgJ0ZwfzU8BkpLrNKAdnu0XvwbbIKAPMYuxjSuidJKsLt2fHx9Bt1CC?=
 =?us-ascii?Q?+2aSCog88obGe7l/qkAYwUw/lrNT6jkjD5zKQ3D/JdtxFXiZRmMrkIRUu3vS?=
 =?us-ascii?Q?tF181UlvKE0lAMgXGDvzXqgiRC8TFu4SHGvxwXUy1leej9T0Au0S7ln4QXRi?=
 =?us-ascii?Q?q8Mms+1bIl6WaBdv9300lYzE2KQUrXJBIOGXAy/sVsj9OkhM3OPKHmBeQAxP?=
 =?us-ascii?Q?S5iYI3ol6Xld0kD65KZb2GrBHLM6VnVOHfHLzPrAtOVsKwkpYKky/2Nj18Pm?=
 =?us-ascii?Q?zp2pCDr5/xvmnDkArZoxfbK5gQapaQq9XDsfppM/Kwr7OC3rmI0g7K/azGPt?=
 =?us-ascii?Q?zgdxpo5x+24fRISx7jryT4XNOy3QyWZdgmCt6GkWloKk53pmDUPOUBJSfYMO?=
 =?us-ascii?Q?XWfkMXQwlIpHjU9omCkMdXsHJDly8bCftk+vf8GyAQDtRgHdfgZwLW8V5cz2?=
 =?us-ascii?Q?ejfkfhipshU5hrs666pR51R6AAoGUKBrzIhM8bFV6Nt4S1br8FzdgdTS6jom?=
 =?us-ascii?Q?U0tpl8PaIiTHb+hXJaz7xN9JMdDoFH997987b9kZoHoyfKIWAace53+mnA6c?=
 =?us-ascii?Q?R0weHNLEb9yHTGTRcZF9934swWY96RVXojB5RUDdbUSzQlowNx3m5aeaFO6S?=
 =?us-ascii?Q?cbV2XspRn/OCW32ORpG3wVjuZQ0xMi2jfmY9lbKlYPGdKPF4oKRtX1Ob+27K?=
 =?us-ascii?Q?1e/OqH2RGex1A4v9sUMTebdTsMEVbjjMqZGxwmyuQez3t5bauH42+6gwP96i?=
 =?us-ascii?Q?buXjkRuFpArvKYJmUAm++V4Bdv6qn20olhAlOgkXw/oNIgk7Gi5zqBHjb+p3?=
 =?us-ascii?Q?6HZkpL1jZQoAdNGAhqDYobomCA9YCs3Ouf8t2LAyvKo77pNpwohIlDpbEOir?=
 =?us-ascii?Q?p2FoxkhsAao62LdvMleFW/bN5qZnTpUDTixK6wyPpsvGBK54M0PHDBHUKTNY?=
 =?us-ascii?Q?zvyvnGFk1qxe1EKzGTK3c5jsiLNoIDPDvKaqPvUJcDtwV1WH1yv6Pk8CM/iQ?=
 =?us-ascii?Q?iObxLaPlUAIwd1Q9WIrCxJ3EynuUPpV/USuxdv8GKSVO41n0z68inTkTgv4S?=
 =?us-ascii?Q?9HPHO0fpgT0QheAAPJP3kZFyc8PtDTSLZzGqFK6VEn2KlbZ0dweVI32W5cxf?=
 =?us-ascii?Q?BTEdBHHX4XDPYV36LFM3jBCUwSxnZLucCY0H3hX7IEuBDwJAsmdlP2oyVo3W?=
 =?us-ascii?Q?NSmTLTt1ZlO3aWhrlNjxeP47aj4WneEes/Uxcm1y9bAKzAW/ZZz8AvWpm2Xa?=
 =?us-ascii?Q?GHrooj3KNs9nZlAhLV+DslTyJ72a?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fa3Rbta9TGyn1peq+WAsDEywohCqj2/sU3nAx68fD70NF2JqXmZvs8KRXqQy?=
 =?us-ascii?Q?TTkmJRmCiv+CEERw/c0PUqDH+PYnNUlanLEKJ2H2hIUmwkeBxN8hqj22XpKo?=
 =?us-ascii?Q?8Cj/Z1dMKv9TRKSGQwcjmti1wN2caSLa+O9DjI/IfDFoc41NeHpO06Aaj3Ku?=
 =?us-ascii?Q?rkI+OfnH4xfDC5G5T1W+TQYsF+5y7FnbrRfX+EBQQMGtDkYu7oPPGeErO34y?=
 =?us-ascii?Q?zWhW1CYZlZZik9MLK6MiS3xiDZGG6DlOsVTuRxqnAKZ5N2gWGWRtDAEzDR3k?=
 =?us-ascii?Q?cndfQ8YmINZpnQlpwntxvYI7o1/oCztTYtZ3/je8rBgvVw7RZa+696i/zmhc?=
 =?us-ascii?Q?YNZs/ADRNpw1bc+OB6pGQ5dshhQzl0HtIu7YBjtU6WFRkVVVptWD8WMc2Rod?=
 =?us-ascii?Q?+hO1nDmZWCtL69C7Q8hqOM//tKwd9CP2ngNlb4AXJHvEKe2AlEYqxff1s7U0?=
 =?us-ascii?Q?mb9No7D4HTRBF1eiROaUNBPDovDQzUk/sMWZ3CLfK/tpfjM2v95tHImRpnof?=
 =?us-ascii?Q?oPnjdvNlS7lIMYM9t8QPEBHLVOtbrfolZntnqOtzod5ytwGoO+3KQCUII23X?=
 =?us-ascii?Q?6ZJVVfZ252BUubCznaC1JgqVh5LLV3M9yIN5+F12d1g/tBvxdX2714EQFLTt?=
 =?us-ascii?Q?LrC3XyFMEbV+/kAcsEYS9zH2OKJpjkI3nWB9F1M+irOu5KNZNgdcnWKaLh5T?=
 =?us-ascii?Q?2p5fAEOWaZ7DV+eAdY5s5QUhxvNryP5h5dBONqB/JgkUp4B901EdxQwumsdS?=
 =?us-ascii?Q?e7tesPnLXzsrnIN0hYmglbkBQnF6vPq+8QJf1mLSFzn3XEGubM2hoaG+5dgn?=
 =?us-ascii?Q?bseAfjE6SfueRdIdf67IEwj8JXJFY7uk/8A+PDCwEmc2JFHo61SlXPCNVEgS?=
 =?us-ascii?Q?kwrEeWuwzB8TnLv8RiQPOE+VIEATRN31Yvh0fYkPHgRk39srN5QJmy8xWjcf?=
 =?us-ascii?Q?DbTl6Jk4chPXH7dWOfhkN8KEee6xDZ5V5ITwY2AosX7/aLdTGiwkXAnMtYxT?=
 =?us-ascii?Q?SfyHPl89hXUUy0sYFXsKChOowyWZ/iYJcLrWfDYLK9evnMCeEhwn5qpCbn0O?=
 =?us-ascii?Q?R7QrjcvMWIDflf0F2ZSOLM4IqM/QjnxhiyPhZx+TOvOSZ/EPYkcLQ21zRPHu?=
 =?us-ascii?Q?Nz+HDHcI4IOiFxxBY66uzx1b9+fo9LzTpVL470pEt97OUQfXNqTrJqakN9EX?=
 =?us-ascii?Q?OdN3G1xu+gVZk/127dp48glLNTdNbQ4xzEYnhI+vS/heCPlQ+HwV3LD7rVUJ?=
 =?us-ascii?Q?aUXf2ihkTn0e4bIHq8ENPvSa0Llfme1KBt9iZ4GRSI1xO1XLvaSNuDlJSrMH?=
 =?us-ascii?Q?SUjBtpUn/gCDeGSdJIg2/HtEZoLR8+ieJtPVA5HuUeTqNePqnzQ3daAliiC7?=
 =?us-ascii?Q?Lka/USypLb9TmVKh15DSdm0AGYoclZMJoqxoB7E+fSkY9Q3qlSZi7E13enhG?=
 =?us-ascii?Q?fJwODD8/vuCZtH41kAsNvqxIoP/OVkJDkX/LmzPV+QIbkWC5DUTTVZmsY4kI?=
 =?us-ascii?Q?EsFWz/C0vkz02ycGTiFzFdhPErZZYxFZn2btJ2E+Zit5UW97nw8ZGzncwTIG?=
 =?us-ascii?Q?pkMDo1S5qTMl32PZiSBmQMrJ+mNDcCyJmfw1+C5QoCBHYvkWB0MADclJJl+V?=
 =?us-ascii?Q?Rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aaccc29-0d18-4640-3237-08dd364b22fa
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 16:30:49.5151 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hy4ZOO60r47nQS37UDtUvNBv70aHSfbJmyllq9gDsqwiHCRtQy0QEp7AmxhY6NlvcWFhWlbq6nY1JtN8n3TbW6uu7VstJmlkdtGCV4ukKSs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6218
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737045104; x=1768581104;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PdHpBdFPuZkWQ9K7nIPHkftD1wOOEwidXN/eYpOYTxg=;
 b=UQ6iytCI7yUB3AxX3SXtIDpKCV3EzqWNZGnT7FNpBu8DpQKrHIBmTM1E
 cCvAGG6ze0TxQsGLtn9ElrjyD3ghbOx+9J8b/5TDUkWq0Wz0ABBBQbXAb
 LgveKPFhLXpqiZBp74tiYqpqeznxiHIUX/v8o/qfA5+3ZKzcKfIP+2GY9
 cVkHjH4CCjM+w3sVLrz8hhSGJrKqJCbq18HCWqeRrGMuU3gCDEiLcOnmK
 Zik2EP1iYyxyEZ7ZfLZR4tdG0BGb8lPeYnQ4vvIeQcIPO0O0LULELG4Wz
 K7AeYNFY8li7j1XDaHeyVrEYN7ymQHPrTcqfb+lXkcmB6SlOyBHv918mA
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UQ6iytCI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: Fix possible skb NULL
 pointer dereference
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

On Wed, Jan 15, 2025 at 03:59:04PM +0100, Piotr Kwapulinski wrote:
> Check both skb NULL pointer dereference and error in ixgbe_put_rx_buffer().

Hi Piotr,

is this only theoretical or have you encountered any system panic? If so
please include the splat so that reviewers will be able to understand the
context of the fix.

Generally after looking up the commit pointed by fixes tag it seems that
we got rid of IS_ERR(skb) logic and forgot to address this part of code.

If that is correct then you should provide a better explanation in your
commit message.

> 
> Fixes: c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()")
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 7236f20..c682c3d 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2098,14 +2098,14 @@ static struct ixgbe_rx_buffer *ixgbe_get_rx_buffer(struct ixgbe_ring *rx_ring,
>  
>  static void ixgbe_put_rx_buffer(struct ixgbe_ring *rx_ring,
>  				struct ixgbe_rx_buffer *rx_buffer,
> -				struct sk_buff *skb,
> -				int rx_buffer_pgcnt)
> +				struct sk_buff *skb, int rx_buffer_pgcnt,
> +				int xdp_res)
>  {
>  	if (ixgbe_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
>  		/* hand second half of page back to the ring */
>  		ixgbe_reuse_rx_page(rx_ring, rx_buffer);
>  	} else {
> -		if (!IS_ERR(skb) && IXGBE_CB(skb)->dma == rx_buffer->dma) {
> +		if (skb && !xdp_res && IXGBE_CB(skb)->dma == rx_buffer->dma) {
>  			/* the page has been released from the ring */
>  			IXGBE_CB(skb)->page_released = true;
>  		} else {
> @@ -2415,7 +2415,8 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>  			break;
>  		}
>  
> -		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt);
> +		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt,
> +				    xdp_res);
>  		cleaned_count++;
>  
>  		/* place incomplete frames back on ring for completion */
> -- 
> 2.43.0
> 
> 
