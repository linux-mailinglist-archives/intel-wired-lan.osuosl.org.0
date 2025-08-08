Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A775B1E7AE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 13:48:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3608F81470;
	Fri,  8 Aug 2025 11:48:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0cTtxxtJYC0N; Fri,  8 Aug 2025 11:48:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8541881471
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754653686;
	bh=B+RKtHZ0yun/ROIu3EFARC/jL+dywoe7JbtGOISfEXI=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=snPOtmTPqwpN/+HumZIs/grdfUv+e+gDtynliH63jrfN1DwjH+nnHc23e1VUSPaYp
	 VkFzLwdx/eJFXznY6KWJsW/FysftFbYAAO+6VsSIrkEkuJk52ktov+pkfRitaVV+Bz
	 f8LGG7ScOIZZS+v4Z1lY++Ls2IqZZLCBJxy2tg0ej1W0fn7756jtSK/74fMJlVXdeX
	 04Vfw2OMUbTWk1Q25uznXoYy/JQhsnKiK5chFDOzntxX/BrPPNFm8YW78gqWGYLU+7
	 MnYvY1kmxTjYCtVSsT/XQSiN7BaiOnYKM6jXkAmsR5BCXiQKyMqV7ZBqcM7ZCJBVJX
	 NEzYV/bYrVcOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8541881471;
	Fri,  8 Aug 2025 11:48:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6BABB31
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 11:48:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 538DB60723
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 11:48:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LgZpmHuE1pHm for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 11:48:03 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Aug 2025 11:48:03 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B193160717
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B193160717
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B193160717
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 11:48:03 +0000 (UTC)
X-CSE-ConnectionGUID: 3l/uiKzzSf61O6RshEDVdA==
X-CSE-MsgGUID: bZwQ4sj2S1uKgfqMlEYXOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="82442935"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="82442935"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 04:40:56 -0700
X-CSE-ConnectionGUID: xZP6yuEkTTG6UFdgVmoAoA==
X-CSE-MsgGUID: w+UquRHkR1ytcESdCjacgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="169771737"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 04:40:56 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 04:40:55 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 04:40:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.87)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 04:40:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q3jZJS7M/uaMQl0v++6Wq8KuqYlcJ1U0hbLi1ndIyeK4WUlkeQ3CFOj3GPT2/f7uWitidIL9JwgMe502y+DX6HpGNJCKbSzIPxjsK1abrqf91tuGf/cW4qmuQ9pvyevhRjE7rNDR3z4ihnAUN5R1g81dLprmHXQh56xDB0qrd2qJG18nn3gpkdYbI+I97XcGfrNpJe03mk7bD9wO0bi05IzMxZeWG0EKpVhs5B9LyAl5JM8dEAxUIFsWTeRWGHxNdluMDEvPMVTRXqMjjVppQ2hZTtTt7IzdQTF2UjG1CJSrbLOw5b8dWBgzSnXBgixqSbuaUapzid3MEBV3aAsWSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+RKtHZ0yun/ROIu3EFARC/jL+dywoe7JbtGOISfEXI=;
 b=L2aJQK5yyxpe+qtknSZ2rn/1Y7FYiNlPDfq3rbz5sihb/0soKvWEh50I65kyG8ySXuvLhs4Gp8XAy/QXHX3PzD555z7VpM/Gb6DBVuzJZVWdDEUwqNlnKVgRk2OFgWFRb1cNOCas3uV4etP24v66b/MQqH57bj/baHQAYMtKxd3JzSlx2ZWS+NT6ZMq9klHDiO3paC3Vi2ZAzD1cEAghRm++qP9hgA0kzAxh2Fvq53EUKLUvgDJbyeiNEP12a4a6ujJRGoiCHAGyssZb7RgjzkqHeQ7ncGCJKcsfzSAl+AbwwLNGXMSIflZpz8Jfdhlq26jo0+Nz7PPUC46k5dgs7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 SJ5PPFEF71E136E.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::85f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Fri, 8 Aug
 2025 11:40:53 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%3]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 11:40:53 +0000
Date: Fri, 8 Aug 2025 13:40:47 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <aleksander.lobakin@intel.com>, <larysa.zaremba@intel.com>,
 <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <anthony.l.nguyen@intel.com>
Message-ID: <aJXiP-_ZUfBErhAv@localhost.localdomain>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-4-michal.kubiak@intel.com>
 <53c62d9c-f542-4cf3-8aeb-a1263e05acad@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <53c62d9c-f542-4cf3-8aeb-a1263e05acad@intel.com>
X-ClientProxiedBy: DUZPR01CA0176.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b3::12) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|SJ5PPFEF71E136E:EE_
X-MS-Office365-Filtering-Correlation-Id: c196e901-fd51-4a6e-7ecd-08ddd6706dfe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6FJ2353G1CGAZ4CLr1UZvOGWwscqwuDcLr8MWx8QcE2/bn5ZVvEbC2EwwSz+?=
 =?us-ascii?Q?eMrfUh2Ch6iXsDbGksiAOryz7AUgrFFFkSGi4cilzvNyGv3/y6ygjOdNtWjn?=
 =?us-ascii?Q?z+P39LbZX73sI7LdGI+nTol1qMOJ4pMxlnWM0u15hdb40sXOLKmNt5QUJPWW?=
 =?us-ascii?Q?Chf28KZg7/j5MTRSVHS3oQiTGpJCIsm+OeN+f1uxbqffusH91/zdO9H7SCD/?=
 =?us-ascii?Q?3SLc6UOiYDtMbAQDTzzOeFZAGpWUqh0vcdt+Nu1wbSF4pg0sWShuveG2w1ug?=
 =?us-ascii?Q?9TR6q76zuuUL85KnQImbWGRVPHH1UP4gJ7ltF23lEjelpyK7/cRNdiU4o7Zj?=
 =?us-ascii?Q?4dLXboy0fYlt9rHgePgwI5MTw2Gbnf9MStkArYs0/qcr+FJaOhiI5UTlslSf?=
 =?us-ascii?Q?ZsqtexCwSkZSpw+HpdszsGAST7COsO+vHYB4kRUvVVD7xmwg+/sQVVf83thv?=
 =?us-ascii?Q?UDDbd0xdOyvI17Q1m1FRS22si/RE5t9AMb10CU7JRYW8vV7Rz2Mi9Sj6yEZR?=
 =?us-ascii?Q?PoAdfMDTxh3lTXcIlOZrQ2AY6qG0DADfIFdd+vbQb3NDDvwIzDiU/5euzZre?=
 =?us-ascii?Q?+GUOwpFEtslctA4JsIGOwOjHW0EwtIqU6ikRGDmydmeTFqS629lEMbmrIT2b?=
 =?us-ascii?Q?eV2qAlKrXrjJnjPH3T6wHG4Twr5vnU0offvRL6ABCMDksow88ZISWxbZzsY5?=
 =?us-ascii?Q?kEbGpQq9Rj5UZJRRgtC6JQLdorIR7XVMOCiyZGtI/MTWvSkngwuuIhhAxuYy?=
 =?us-ascii?Q?/RapCrbGrnp7zDKcpqTjW7ygOnze9QiiblgVv77qdkhhdqLviDemw2TVgrvT?=
 =?us-ascii?Q?CLeQviPCEZ0ggXr2XIBgImj966BHXXWaGryu25fmfOdngw44Tts29x7Wbr/o?=
 =?us-ascii?Q?XzH/eDTqa3RotnqJhKld3oIKhe/W0I1MEFMreJkEMJ8udvKi5oj02kt9qdf+?=
 =?us-ascii?Q?j4ef8dQepTTUZbNQj/WdzwzOzXx+co+sdnvZlevEaJlG4GmzNuiGftait9G/?=
 =?us-ascii?Q?0EP0Nkp6z611PzvienKBdQALdiSp2C9mJd3FXqM84obzGW3V7YXGe3EESDAO?=
 =?us-ascii?Q?LImJy6orSwANr7eSxJL5FYc7y+4VzF5eqsV2ftAC6wJF1fbTrnCTfP5HbTUl?=
 =?us-ascii?Q?mLMpDOooEIqYAFULNTPLbJeC8m4qtUnQ9hrZzRDdW1NeS/i3aaR6GgpUMvSR?=
 =?us-ascii?Q?4SzNeaTMCCmi2K1i7VmPVSDeuF8DnBQ29OVm6LRqVZ/kSe0KfkbesZb2/S8P?=
 =?us-ascii?Q?8Z1JgssDN4Qe0EjFuxmuOGcMSQWLymyBaJtOfLgtpxrzTrcbfUbQW9XZO/dt?=
 =?us-ascii?Q?NEhLxR4X83yhdS6gp3DqdmufF7wUAtOSMSXEQycoAWKcp1aRWYpvHd3oCVw+?=
 =?us-ascii?Q?k0Uld2Wvfnq88dLJMyAwE9e8Up3M31/p43SERWFrFgodkvHTkw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?B6wa2CvFI4nJUnSJpulPD++ic252sI91GHzahltXwrq6fbX//c1SJytIVwoW?=
 =?us-ascii?Q?gvtorjPXD2FPiuzg7SUbIbe20oRWaKyfLG1PSKiXFyGi+5mVsPhYgDq12tvT?=
 =?us-ascii?Q?W+R8MyF+l3DrHlpoIfJw1JssWoJILuUnsUWxasN07Qm5+P11jRjQ1iQyoJHL?=
 =?us-ascii?Q?ykqWisY5upZ9qo5gvQ5c0sOnF3Z62vSZnP0bTQcpaOllmIW/U2mEcYyJpKwv?=
 =?us-ascii?Q?cpKGnfXl3QNmJtoEjWM6atfIMmESjdncg7hIVexOs8t9e8wD+vB0QqnCp+MY?=
 =?us-ascii?Q?2lNA46U/2fSQWIdsDnr38r2pJUnndB1nDD8kne8kn+K59KP15Bd/GIu7eXQv?=
 =?us-ascii?Q?YZ6e4MShPADWeHmz3foobOmDhytBCO1HlcK7qMn7ygyMvswvuW5EXvkInVv4?=
 =?us-ascii?Q?wMC4ZnD8empCvdhp6eO0NEBdl2W5M6GiJXxa6RS2Ut5d5zxX+a+s8JjhAfL9?=
 =?us-ascii?Q?Ctu9xKGXozIiSuT5jbIS1uOZ1MyQfIDLitdNwDLJeBK4n4mBaHSNCza2URiU?=
 =?us-ascii?Q?gwkfy4Z6EKSL4IgZKJUaWaW4+SpUGtXa0q76Vlyr8WETO6HKrNDPLkBQQbWp?=
 =?us-ascii?Q?r3V+YWeZDlCmogTv87oApdhymZi31wVo8ntdPjvtNq8g87pcEdzcat4Cgpsk?=
 =?us-ascii?Q?Qe4Fm272SHu4DqABq+qDdTzhN4vfMpnW1epLO3juuC/IzchfZCLRJWoKgy3w?=
 =?us-ascii?Q?YnB2nZg/PXYr6a++ErWwyfj5qgKtKwDLOLUNI9OivmnDrQjI7tMNZukNfegM?=
 =?us-ascii?Q?42VMfTYYa9RNSFILy8WzCb6GiJKRoN3SPgnTlYJcI43dnoTipU5+N1S4Crai?=
 =?us-ascii?Q?jsVVZcm+84UyEyuRpk1E4tfHzfkMFqeB67jMkZXanjkbTd3nhlSO9ZeNGhRj?=
 =?us-ascii?Q?KnBCgUCY9Z3lBPuMT6G/c1m+A9YndhdG/b5fVfIe61u2i5zvIeDATzCNTX/7?=
 =?us-ascii?Q?UxERWiMNd40H5+zI982N5w3p5bxsilkdOJyeBeKdo/ky2Dd/KjM/ZUJKCezP?=
 =?us-ascii?Q?ZB2SVGbTZhB+s4ZUIfqMj/eVg0lrNahS5xobkQtJvqKDCg0Lt7iBmPAF/eDq?=
 =?us-ascii?Q?EBy3GS8q7siZXaFg+8T2NHrS4/IFNCDWrQszc63d9H487Ppk+ynBPEF81RoI?=
 =?us-ascii?Q?DvGxJJ3tK7tfYkThYPtHyvTJlYkysb0S8RKVDA57tKZq8Ff+VnOA3SBimuly?=
 =?us-ascii?Q?MlnJQwxOiOc2sZnDK+AUu8E9SKQ4Rpu7zCH3sjv/BTiZSbeRej+t8sTa/3cF?=
 =?us-ascii?Q?IAc6PinR2XL0nEchHP+wNX1/EGNReULkAwmAzBw5mCuQHPc6GTMaaE0t6LEB?=
 =?us-ascii?Q?nI5d7AK1PiWjnYRaiC3vLNA2tukHQ05SROsL2iA95siWHXunEK5y3c2+ru2i?=
 =?us-ascii?Q?Pn1trzeTpPMFv9MuyKjYo8vaVJA/NZW5aE2ILjJBPwYwXxiBbfoGFqVIz4gG?=
 =?us-ascii?Q?ZaTWjeL0twCJoUVQf14EADY2+E3BRUr1M5NbSFUyKOHjcV6/HmxM+yCxqUaD?=
 =?us-ascii?Q?7uljW7alBi+47Cq3EEd37+43ZhpTpOYTE98jOlU/FyrnTBO6kOvHLGcDbLY+?=
 =?us-ascii?Q?W9X/es8GiYs+QKLAABuBMoYk8yVQYbWQOfhtWLptz8yP/Am3AY08R3SuFOrf?=
 =?us-ascii?Q?/w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c196e901-fd51-4a6e-7ecd-08ddd6706dfe
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2025 11:40:52.9631 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1XoLb3q00abja16gGahnRAaRJx58wActq/RUbvreONVSN3FR7DvoyOVth1iLgZNRUYThFeLU7ySzM/+HzCN9oA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFEF71E136E
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754653683; x=1786189683;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=r4Vn5blF6jh607DIRYhrCFXl2zTqv1d/tpWeByxvmfM=;
 b=PMeNxNe3ieXg9Grg54RwnAR83KmYbGbwSSgZGGdxhkusRGrFdDDPEDQQ
 +mbmxF/nEMBxzpo04+IqYPWAY0iRtZY3V4mUeR7ngPEasbxSmOxQEJNfJ
 u7Mbp15EcW+N/s7iUyF8t3x9mipgEaFjkIi4MpnpaU2BaiuQCw9hnFTGr
 PqegMU9byplVw+vPwlISxm3PVKcO87ktquDqmSGtHZBaj1GcMRR9JTz1e
 J4w4NfqAekFtCdSEZdrpeO5u/9d/zBuSGzDFa+0lyIuYVbrt6CGPW+98Z
 KjMZ4LiWy/IwegMCQ0tn+BCkJC7CXIY6SZeSiimpTabGDYI8+AS4osijD
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PMeNxNe3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: switch to Page Pool
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

On Mon, Jul 07, 2025 at 03:58:37PM -0700, Jacob Keller wrote:
> 
> 
> On 7/4/2025 9:18 AM, Michal Kubiak wrote:
> > @@ -1075,16 +780,17 @@ void ice_clean_ctrl_rx_irq(struct ice_rx_ring *rx_ring)
> >  static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)

[...]

> > @@ -1144,27 +841,35 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> >  		if (ice_is_non_eop(rx_ring, rx_desc))
> >  			continue;
> >  
> > -		ice_get_pgcnts(rx_ring);
> >  		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
> >  		if (xdp_verdict == ICE_XDP_PASS)
> >  			goto construct_skb;
> > -		total_rx_bytes += xdp_get_buff_len(xdp);
> > -		total_rx_pkts++;
> >  
> > -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> > +		if (xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
> > +			xdp_xmit |= xdp_verdict;
> > +		total_rx_bytes += xdp_get_buff_len(&xdp->base);
> > +		total_rx_pkts++;
> >  
> > +		xdp->data = NULL;
> > +		rx_ring->first_desc = ntc;
> > +		rx_ring->nr_frags = 0;
> >  		continue;
> >  construct_skb:
> > -		skb = ice_build_skb(rx_ring, xdp);
> > +		skb = xdp_build_skb_from_buff(&xdp->base);
> > +
> >  		/* exit if we failed to retrieve a buffer */
> >  		if (!skb) {
> >  			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
> 
> This is not your fault, but we've been incorrectly incrementing
> alloc_page_failed here instead of alloc_buf_failed.
> 

Sure. It's a good idea to fix it while we're rewriting the Rx path.
Will be addressed in v2.

> >  			xdp_verdict = ICE_XDP_CONSUMED;
> 
> xdp_verdict is no longer used, so I don't think we need to modify it
> further here. It was previously being used as part of the call to
> ice_put_rx_mbuf.
> 

You're right. I'll remove it in v2.

> > +			xdp->data = NULL;
> > +			rx_ring->first_desc = ntc;
> > +			rx_ring->nr_frags = 0;
> > +			break;
> >  		}
> > -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> >  
> > -		if (!skb)
> > -			break;
> > +		xdp->data = NULL;
> > +		rx_ring->first_desc = ntc;
> > +		rx_ring->nr_frags = 0;
> >  
> 
> The failure case for !skb does the same as this, so would it make sense
> to move this block up to before !skb and just check the skb pointer
> afterwards?
> 

Yeah. Together with Olek we re-organized the logic here, so in v2 it
should be simplified.

> >  		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
> >  		if (unlikely(ice_test_staterr(rx_desc->wb.status_error0


Thanks,
Michal
