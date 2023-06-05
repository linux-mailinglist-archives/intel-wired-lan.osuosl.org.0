Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5787221AD
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 11:00:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2AF260EF1;
	Mon,  5 Jun 2023 09:00:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2AF260EF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685955652;
	bh=m43qFuCIYQ9EdETUMDY5o/nIIhX/+/Hfts8fsDWjqIA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QLaFYNcZ9zzRlqiq9XBTW3tWM7W2EjWQM//CAZnxdY+cpFkFFiz9DNrAjkflcj1f+
	 2JTAmG1BeEVn2v6QkqCe55UIrK/PkdoBi0UBEokHg3eic1gJinOf/bYPiXI/BfCfCF
	 L8NRVBCGDS9wWEWaxXwOOaTsjO+2Fe0Yg3ln3fjLaul+x2MBpYDvF0Y3nkojs52TJ3
	 rUtNdu/s3G3sKgqVyupNnq4PVIbAeKZh21HRX49SZmd3bgAmM8iDQw+ziTfkSRdwt4
	 wmZPtUOvgLo60igsZ/ALX5byxdSkKCGa2Tx32jrxOSyzIN1PkY4A0LnFS6fuc6NJ/L
	 PQDxnZV5opsCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pNVBPIit_-Jv; Mon,  5 Jun 2023 09:00:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C08460E1D;
	Mon,  5 Jun 2023 09:00:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C08460E1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8141A1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5762B822DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:00:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5762B822DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9JlvW580is1j for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 09:00:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A8A3822CD
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A8A3822CD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:00:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="335934292"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="335934292"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:00:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="832733810"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="832733810"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 05 Jun 2023 02:00:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 02:00:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 02:00:34 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 02:00:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m3A3QeUhusIxjWJ4cs/56G2tqaE8Uy8TKlr+B8vqi7jwMzpR79Wgq4c9b+5BdG3Y3OCgwu5D4Jsb+ZcIbC5uVkO9lnIk28T/QlGg3O5sCCXGcoIsGfOylcJId6FSR5JYBtu9FifcM2syXDHJatIJb9H4NzcMxqd4NQyeOORldGUyF35cuqgEaRA49N5vLNjyEUQlHOzz/8ntM3uqEMiOl3JDlAV0MwnM+iJlYjlixmzLZCHrv4THzau91jNBOUFXX7UewhJZG5cNaSsy8zhZKM3ZXshWLtpdhWCmZ5Smwc916W5xevREYlx+Deljm+zkxA4eCcHE70cRMXbAkTPfIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WQO8RmFtu1bZ1aPIG7qto56GwFJq2ToM1L3l6I0cZv0=;
 b=UrNzkX4xfBh+ixW0afv/qCYyL0QhclVEE2eH9zrKSE28QEdNdrLSkjYjx4gXcjsNa2dWRtyrrnSOzB/ENR2dLVRKt/kIJCv2UlJ5GpzJBeeCdMZLFWK7kwWVWu5K88iAGsu82qtNUHNSJXK/Tx+iZsq9elRLYodDr7V6ACCtMMga+u9T6mm8w1N1+hE2G7077/rE5ORmniT0PRPOfRDFKoC489mYsHwQ1OXIORClqJUCBu/4N4MjD9ueeVPrKscA7QFyOPy+7RxHrmiQnsSh6vlJpg547rsoOIWwqbMXOAzd0HgofNa68Jv7Q5+sBdx5JHp9k2Tm1eWMpmZUlm+v/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA3PR11MB7414.namprd11.prod.outlook.com (2603:10b6:806:31c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 09:00:26 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%4]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 09:00:26 +0000
Message-ID: <add514c7-2f83-1386-3955-b03d700b96dc@intel.com>
Date: Mon, 5 Jun 2023 11:00:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jakub Buchocki <jakubx.buchocki@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230602152542.2951486-1-jakubx.buchocki@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230602152542.2951486-1-jakubx.buchocki@intel.com>
X-ClientProxiedBy: FR2P281CA0133.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::17) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA3PR11MB7414:EE_
X-MS-Office365-Filtering-Correlation-Id: a18c3464-2f48-4991-5230-08db65a34dd8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kcxydYyB83SlFN7JMPV2yh4BKEYIxGxmrVYDuH5fkBWXsyboEA+vtb8oxe30Fn2OBJ09oxytS4tG1gzx/bu2nj8YofxhREcoCqmnglI8/BFt4OItcTkCjRigabT0u1pjrQMmAb7t8KkAcEztUv8GoNG4NwLp5F60KoXC3FJ/cjoe5uREBfIQwFExtTHC13K5GCH0lZHDRms+0OvH5mkK4yi3CMGb0PUrlsSAhzBY449Mn/xMHSBfupJIWVpdxy8y6QCs6CKuF+ztZP8S0iR0USMkKFfsoqXs7JPwkcnUhX5aK2vwYltnloqiRqgatzEzHsvaTZYpbWpobRIyYwPzYr7fbxUxleFJvYtMCEkF3Yyw4gHFMH2D5zSbqRLslMPDcT+4g3gnjiW9cfzcuxo1nFYJcq1YcWvq78bmspoIEKvlXRGkHvtNIIyySTKoIAlbAPIAljDQDwG/PXoIvn9EPH14vYzJGo1QkrkZwn+hpBLv2Ede/Jx43RoezSO3BMaogxytcH/5aMkntWPsGEvIE8yrQkJmYZSvgmGOoNBBHSy3WTaTAezp/pObSOWh+lwxF7qP5D2CocCU9Lz0cxInYVyonpNUbl27eZHHYQ6IJu6nyllzPOrU8ObCgWis4V8tRgUdWLJAlMWNqyTr49VKBg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(366004)(396003)(376002)(136003)(451199021)(478600001)(82960400001)(8936002)(8676002)(4326008)(66556008)(316002)(38100700002)(66476007)(66946007)(41300700001)(2616005)(186003)(83380400001)(6666004)(6486002)(53546011)(6506007)(6512007)(26005)(86362001)(31696002)(5660300002)(2906002)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUk1Y0Z2TElxS1hLd0E0VXpIa1Q2bnZtRmUyMjFvbC9pc0k0S01VeTNobzcy?=
 =?utf-8?B?WjB1TFk2ZGN1cnUyRHpQZzdyZkQ4ZHQyc3JGM2l2eW84S3FaZXdNNTJRR1BD?=
 =?utf-8?B?Sm1WTERuWkM5N2cvTkVsT3crM0V1N29IWkVGQWFuUWRLeEZ3R3dlUVUyNitD?=
 =?utf-8?B?ZzdMWWovNW4wcFNxa3dTVnJEVWpXRTJEejV4N2N6UVBNam5UTU8ra1EzREpz?=
 =?utf-8?B?TnZMUFQvcUx0WEQzaG5lMk9MNSs1WkVhQVE3RTdrNklyY1daMzJUQVRLb2Ex?=
 =?utf-8?B?cTdIdFFWbmM2VE5FQW82UHRkeGJBekNycW9YdStwSFd2dTROSHpNYmE3aEhS?=
 =?utf-8?B?cnJlRVFNb2ZxNVhKaHNCV1g0ZEpNZWtubHVHS0h0ZWFyRWpaVURMeno3M1hQ?=
 =?utf-8?B?NDFmcjRRSG80OXBxUjBZMlVjZ01kR0FSREhXTFZuNnlmY3JNaThwOEZ1Wk8y?=
 =?utf-8?B?anM2TVc4UmlYUlArZG1rTmViZzZUS1VyZ2RLdXNGMHRvd0ZCcTBISGhtRHE5?=
 =?utf-8?B?SkJRS1c5Q01udEpjK3pZcU9lNnM4ejBoQXBpVWpFeE5ZeTArMk1qSDdLT3VW?=
 =?utf-8?B?dGUvR09oazF2VGtxa1hwWmJoU2ZENGV6a2hDV3BrUXpsUDNnMWUyQ2J0OHUr?=
 =?utf-8?B?OCs5b0dSM2dDdlVGVmo5aWRwczRWeFhjbDJGSC9jbDkyMUhBeE1qbWg3NHds?=
 =?utf-8?B?VExQZHJweEQ0UURPMWNDdWRyN296aHordzRwSWdjWVJzMnZwUERvSEdCdjVh?=
 =?utf-8?B?TFZwWm5lMHVIaVE4aVp0Qi9WbUZ5RWNvQXRrSnZIY01LVVdCMDk5QTZnRzU1?=
 =?utf-8?B?S0g0N2FhYmhXcGp4OHB5S2RvN1dVUVRIZTVpdUtTekZBc0NLRVFMZWZnUlNN?=
 =?utf-8?B?ckF0Nm9tTHJhL3NsbEpkR0dvc05VNnZrekh5MlJNVXNpQmZMNG5ocDdrVThP?=
 =?utf-8?B?OXRhUEVUOXlwUlRQZUhRYk9RYXVUM2wxS251T0FLRUl2ZVZRVEtHM3ZFalJH?=
 =?utf-8?B?N200RVpLTEJBYUxuZ2JNaEJvZkhrOVVOVHRZTS9WTjg1Q2dkOXp4RldOWXUw?=
 =?utf-8?B?K3FkekhqVUhkaVhZZEk4K1ZBTGZmSjVGMWZYVWtLS2hYdDY5NndqeHNxcCsw?=
 =?utf-8?B?K3BUNU9RaHNKMWdoLzdmVTJwQkZqNmtTTDZaeVVqaC9kc0dDWTJuV2hlV0hY?=
 =?utf-8?B?SEsvZmEzUWlZaC83a0w1Y1NUb3BFU0x3WHBpbngyTUZNUFlUZDIwUmUyOHBJ?=
 =?utf-8?B?TzdxVjFQZ0g2cHpETWtVdEpSS0c5TWNpL2EwSnRzNjI2MTJYM2pmQWZEZUpn?=
 =?utf-8?B?Vy9nS0lvMTlJVkhDbElvcno1T0szVSthZTE5TFI4RnFxdUhudDdTRFZtaCtK?=
 =?utf-8?B?V2RIU1FibVQzNlVJTUNPVzQwaTFKYmRFZURDd1BKbXY0bTBHUS9BZHI0ZzQz?=
 =?utf-8?B?dWRzMk9vNWZSWXU3Z2s1aSs5WWtPL0Z1T3RVRFRYZkxvUWhYamNMY3BtQ2VD?=
 =?utf-8?B?WWhXRlY0L0lvVStFNllBRjJ6SUkwSU9wKy9vcmhpOElSVDRaYVBFRmxib2t4?=
 =?utf-8?B?dUk5SXZRMElCRmtFc3VKVElIWW1HbUpCSThxNThEekNFTDk5SUNNWURZeEpG?=
 =?utf-8?B?RnNCcE1nczR3WTdpUS9IdWE5d3orcndNU0x6Rm9VdUdTRWUzd2dvSkFmUzFt?=
 =?utf-8?B?b3Uwbm5Sa0VnaFU4R2o2QjVQaTY1RWZMb2RnVVN5OWVsVlRHUzdHeWEySzdC?=
 =?utf-8?B?Qm5qdDZsOGdWOWp3NExLNTZ3YjUyd3pwcEJSaFFVenhzdXdvdzZzU1VSZXlj?=
 =?utf-8?B?cGNoL2ptcUQ0THJ4OTFiWDJIdDVXVWFmMmZYelloa1JKWmFiVFRSOVNMZ0dZ?=
 =?utf-8?B?RjN6RkQ2WFY1Uk1jU0RYZVBpcTVYS0xGQm1YTEJrcXNieFBWKzgxUjcralNv?=
 =?utf-8?B?WHVXcnd3b2hyODY0RDJEcGZTSldvSjQ2S3J6RjhVTkRhV2QxOWxxQjRIdXBL?=
 =?utf-8?B?ZVVQR0szK1d5ajNNTklqdFk1Qml1NFJYSlRyN1dqRE1SMGJ6NGJtWHNqWFdU?=
 =?utf-8?B?SUNaN2cvd2pFK3llRmFoeDBHemY1dU8vQWNNaHlGV2Rwc29KNGUyQUU5cEpl?=
 =?utf-8?B?SmJMZ0FRejZmOElONjVrRXlzdStrS0tYeXBUYUJCODkyZDUra3dIeHE4VUhT?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a18c3464-2f48-4991-5230-08db65a34dd8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 09:00:26.5060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4M6vl3xQ49PFrvJ9io+bepp+P6Bd54CNaDoIpMuKIBm/xshqJ0KO8O574oAKFVDVIggswwM4Gx4/Wd6dJ9FFs/YSbpgGerKV4nZxZ9TIXPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7414
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685955645; x=1717491645;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gJLS9HioUQPSWJlkChuPXulDW2sOnJ+nDtXegTCecMI=;
 b=RxvT6A02freKh+l6eQQvS5BvXmPT9eWTNkyjFFXWk+MKgDz0pGzhQK7j
 YmAW+qANmQDGgQ4WsvSVwpurrN6AilnXgqJPt08HniMZuRLRUlR+dcSVh
 lZxNQj0yBCC+cxwMYywWWM+VU1VSOLtGWl2hncOhStikN9uf2mV2Nu7yj
 3nNOGmAA5b2aUj/T0xQtqJrA/VEvDdCmy9RrCNzAntbDg8PvET9sIIywo
 DXWrLvRfsLD/UJPDTnMSlB5YEbuSXl0Y/N3wsmJcKk5fqCw6LXhYkD4zx
 gsCEghmmm0/OkcQ1or1DJu/jqoyQGppervBXYyYMR0LeF/L+S6zg8JLDe
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RxvT6A02
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix ice module unload
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
Cc: jiri@resnulli.us
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/2/23 17:25, Jakub Buchocki wrote:
> Clearing the interrupt scheme before PFR reset,
> during the removal routine, could cause the hardware
> errors and possibly lead to system reboot, as the PF
> reset can cause the interrupt to be generated.
> 
> Place the call for PFR reset inside ice_deinit_dev(),
> wait until reset and all pending transactions are done,
> then call ice_clear_interrupt_scheme().
> 
> This introduces a PFR reset to multiple error paths.
> 
> Additionally, remove the call for the reset from
> ice_load() - it will be a part of ice_unload() now.
> 
> Error example:
> [   75.229328] ice 0000:ca:00.1: Failed to read Tx Scheduler Tree - User Selection data from flash
> [   77.571315] {1}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 1
> [   77.571418] {1}[Hardware Error]: event severity: recoverable
> [   77.571459] {1}[Hardware Error]:  Error 0, type: recoverable
> [   77.571500] {1}[Hardware Error]:   section_type: PCIe error
> [   77.571540] {1}[Hardware Error]:   port_type: 4, root port
> [   77.571580] {1}[Hardware Error]:   version: 3.0
> [   77.571615] {1}[Hardware Error]:   command: 0x0547, status: 0x4010
> [   77.571661] {1}[Hardware Error]:   device_id: 0000:c9:02.0
> [   77.571703] {1}[Hardware Error]:   slot: 25
> [   77.571736] {1}[Hardware Error]:   secondary_bus: 0xca
> [   77.571773] {1}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x347a
> [   77.571821] {1}[Hardware Error]:   class_code: 060400
> [   77.571858] {1}[Hardware Error]:   bridge: secondary_status: 0x2800, control: 0x0013
> [   77.572490] pcieport 0000:c9:02.0: AER: aer_status: 0x00200000, aer_mask: 0x00100020
> [   77.572870] pcieport 0000:c9:02.0:    [21] ACSViol                (First)
> [   77.573222] pcieport 0000:c9:02.0: AER: aer_layer=Transaction Layer, aer_agent=Receiver ID
> [   77.573554] pcieport 0000:c9:02.0: AER: aer_uncor_severity: 0x00463010
> [   77.691273] {2}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 1
> [   77.691738] {2}[Hardware Error]: event severity: recoverable
> [   77.691971] {2}[Hardware Error]:  Error 0, type: recoverable
> [   77.692192] {2}[Hardware Error]:   section_type: PCIe error
> [   77.692403] {2}[Hardware Error]:   port_type: 4, root port
> [   77.692616] {2}[Hardware Error]:   version: 3.0
> [   77.692825] {2}[Hardware Error]:   command: 0x0547, status: 0x4010
> [   77.693032] {2}[Hardware Error]:   device_id: 0000:c9:02.0
> [   77.693238] {2}[Hardware Error]:   slot: 25
> [   77.693440] {2}[Hardware Error]:   secondary_bus: 0xca
> [   77.693641] {2}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x347a
> [   77.693853] {2}[Hardware Error]:   class_code: 060400
> [   77.694054] {2}[Hardware Error]:   bridge: secondary_status: 0x0800, control: 0x0013
> [   77.719115] pci 0000:ca:00.1: AER: can't recover (no error_detected callback)
> [   77.719140] pcieport 0000:c9:02.0: AER: device recovery failed
> [   77.719216] pcieport 0000:c9:02.0: AER: aer_status: 0x00200000, aer_mask: 0x00100020
> [   77.719390] pcieport 0000:c9:02.0:    [21] ACSViol                (First)
> [   77.719557] pcieport 0000:c9:02.0: AER: aer_layer=Transaction Layer, aer_agent=Receiver ID
> [   77.719723] pcieport 0000:c9:02.0: AER: aer_uncor_severity: 0x00463010
> 
> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
