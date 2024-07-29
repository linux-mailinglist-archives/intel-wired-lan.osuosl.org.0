Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D6493F05F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jul 2024 10:55:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0107F4023F;
	Mon, 29 Jul 2024 08:55:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ccJmqCCTVJGu; Mon, 29 Jul 2024 08:55:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 231A3408AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722243306;
	bh=vL5uUzaJQexl3vlx3HRQrgXD81z4LNx6Mob93aHQeoA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WpT/Rkiu9Rnw4RHjYvV2APX5wRl88rdcQT0CxcEXmm+6MH5Lw5wSGTaY9O7J/boV4
	 LpRs7kL86SRWK7/5VsVYwgLpKgA+pQLL8245VYrgTzA4d2d3OI8oTNqZdCZdNNXs+/
	 y/SBXscAh6mcqdPrLGtvwig4hBGVMd8yZ9cjD2z7dkrW3Fxj4oPEtfeaKjc+6IaEiC
	 Hv9/ByKH6v/5mXOjU/qOpTzyFQw/dU1yoPOFcNprKly35/97M6Ee6+ZSMh+jMlOTxW
	 CiPABSQ0y9L5WlIZz0pYk7tINyuYBZs0wqzfC5qXeXSPh3zZ1ZFf7EKT+LshAB5Ncy
	 khQ5Fe6ZTSM5A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 231A3408AA;
	Mon, 29 Jul 2024 08:55:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 557F81BF591
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jul 2024 08:55:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D61160815
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jul 2024 08:55:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x_8c9OGOgj8O for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jul 2024 08:55:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7574260810
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7574260810
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7574260810
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jul 2024 08:55:02 +0000 (UTC)
X-CSE-ConnectionGUID: d1yIAxpfRuuVhXLeqdyjGg==
X-CSE-MsgGUID: VeCzGZq7RRqeGjhChPSzJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11147"; a="12766003"
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="12766003"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 01:55:01 -0700
X-CSE-ConnectionGUID: 3QBidqjPQeCXOzBZ+76MAw==
X-CSE-MsgGUID: yWrw1rriTgaiCgFujILq7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="54016657"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 01:55:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 01:55:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 01:55:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 01:54:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G64A5PgjnhFqOLmUQvDlh2bgQpuDveBl289TAF2+xf0CYQaOXCZ/DrKf6Q61L/oKHRG6zg83BAxbThjZ6rWVTwATGyRe4U2goEErp4ZZR/1YWFZ/H5Hee/Ze0Kg6QnLYVWPZFpkMKr+SJP6eJLjTpOMSfnQ2js6fHpmZ0LpB98YGsKvHmz4+gZ1U/LZ2CF3/Phykz2XM4EfOROluYEEH2aQL7BV3ocswdeyWJkEkFGW74TvMNuTcy7f3dB7FW2K7qlmo0B1ZvttsFkiPdXYTGDqFqWlPxokTsYpGkDV/3EpGJ2+0udgdsLZZ0y4J0BEW8huJGs8erAQIihP3M4r5dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vL5uUzaJQexl3vlx3HRQrgXD81z4LNx6Mob93aHQeoA=;
 b=pGHSzq0P/C5q7TFL2obTf7rlBYqaRmiH5oCpzNY837rKqyjaBSjtKUXGy8OMmCFtj+6pySHb/SehV7ZSyBylAYaHsHIh1BF3Z9Jefsr5X572coSW/l+J2cFfJTa40GOmSi8mFMwnQWygFlLgmFphXtTszYF6bki0Qlxgh71cfPnFU8wnf1WB+DUW+0eit3YyWVRdybnDaj6hEQXssHhJ+YfFq8fpuAhpMmJCPqp4cNwAa8L1dWrifGVk1/qgKOgF2g6pgFxXmsgEraJodUMcqzs9F42h6hYeaCRcINExPvFGdoHAnmEEmU16JllFja28DW8v/2qpx8aChn3yr0wOgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Mon, 29 Jul
 2024 08:54:57 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 08:54:57 +0000
Message-ID: <870cd73e-0f87-41eb-95d1-c9fe27ed1230@intel.com>
Date: Mon, 29 Jul 2024 10:54:50 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
 <20240724134024.2182959-2-aleksander.lobakin@intel.com>
 <20240726160954.GO97837@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240726160954.GO97837@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0106.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::21) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|BL3PR11MB6435:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a534947-ac4a-400d-52a0-08dcafac1f13
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c082NFVsM0ZoVkFST2hnekRPWGlDTGVVZG9sRTJFaFRxam9LRDhoWlNlZTVp?=
 =?utf-8?B?anhTTEpCUnVjU01UWmlLUHlHTkh1QXVTam14dUNxWXFQZ0Q3SDZFcUJNelpo?=
 =?utf-8?B?Sjc5UzhyZnBwYXdIWS9zM2pEUkdNdmdObDRNYWNNUEtZUENCeDJ5bi9nYWJZ?=
 =?utf-8?B?Q04vc0Rsb0tIakxoMVcxZnhQTElPUmZYenkyK0J3WHdvOForNFlsK0hmdGJa?=
 =?utf-8?B?d3hjdkk1YlRwOVY0MkhtdFJMOFJqUXpzS202aVNvODFoTGNmKzhLY0NxM1c4?=
 =?utf-8?B?dW1TSHZ1ZXRoTENTY09DL0w1cktUNlI1MWdVOXJycGVoUzdkTW43eFdtaDhM?=
 =?utf-8?B?Mld2WXgrM0gzbEx6bmNjYWtac2ZvcjZSMFNzVHJSS2IwTTRESC9RRHhEWktG?=
 =?utf-8?B?dFpHMDRLaGlJMi8wTTRrbnZhbzFabkhjc050SmRpTGdRb2FXQndtai9WV0dt?=
 =?utf-8?B?SXk2K1dMTUpCMk90aE5VR3h3R0tHQkNBcEVNNUM5WW5vQW1LNGhTdmMwQ2d0?=
 =?utf-8?B?SG5jSlpnVXdWZElrMjhmRHBIMXdNVTErKy9vTFdLNmx3dG5vck5mbEZ0cVlk?=
 =?utf-8?B?aTdiS0FvWFdjUEZDbHRlTlBSNHhrNG5HVXd0VEdKdXp2QTloNEJUNWtWYXN3?=
 =?utf-8?B?K2FLaDdHbVNJem9jeC9zOEJSelpVQjlDUGFJRmZERC91Njk5TzVUcmg4ZGl2?=
 =?utf-8?B?VGNlTFhyN0l5eVBxVkhHa2E2aFFIK2VUMEpRT3paWi9XSGZON21KNmljRC9O?=
 =?utf-8?B?U0h0NEFyRGN3eCtxSVlsUEdwTXRTUno5NTl4eXlFaHZiVUNZb1htdHB1TkNk?=
 =?utf-8?B?Q0E4UGdBd3dQcVJFcG1NNzljNEpFWDJBMFBRMm9MRXEyMG5BckJETGQ0dGRK?=
 =?utf-8?B?MEZ5Yi85UzBUVEFaVFFtUXk2ZVY3dXpWSW9RNlNOWXZVK0N0ai9JdzQ3ZXFs?=
 =?utf-8?B?R1lKb3ZwN3F0MmVJWTc1eXFpTnRsM1VpKytwRi9BeDRqYUQxdE9MY0pQb2RW?=
 =?utf-8?B?TSt6Vm9pajZZS0dFOVpEMkpkSVRmZXg0bVJRRXRFa29IdDVnSkZyNExYOHpa?=
 =?utf-8?B?R1c5VFNRRmtJcFI5QU02RXZlV3VrSmdxWUYyS3cvb2I1d0pIalFGWjkzdTgy?=
 =?utf-8?B?Nytlem04bjllVmkyRkF5Wmo2bzJEOThyRkJOd3I0aUFHVjFybmdlNVhzTjZD?=
 =?utf-8?B?MHd2eFQwbVNKZWZwaFowVE03UElTc0xuZDVvUDZRZWRLenhjMTNDRHRscEN6?=
 =?utf-8?B?dE1iWXNGM2t5WEM0eUl2cnJHa2hNbyt3SHFWWFEycHc5U0FIQ25LS3N3WkV6?=
 =?utf-8?B?MktMVHhJVEJYWlVSTjVrRG1MWHMzZjhmb2tRcGxuWW1BT2R4ZnNvai84RmE5?=
 =?utf-8?B?UjFwSDhSOXV3UWdIUVpaVHp1dTE3S3J1RTU5VGx5aVg5R2NlOHhnekMwWnJt?=
 =?utf-8?B?NjBRTER0UW56RG1mOGpnU3VodHJwS0tkTUUwemh6c0QyQXVQcWVmU3pNYXBn?=
 =?utf-8?B?TFlKY0VCM080anBlS1g5SmhFSHE0cERvZkFIbWI2VlFLZEtmOGhCQ2dQWElo?=
 =?utf-8?B?YTZpTTZGMHVRand3T3dqcUZSeVM5TFNDUXVaK1ZjY20zWStEZmFTWXNzSjVj?=
 =?utf-8?B?SE5qM2NCK0thME1NaFpnSDhya095VldaakR2WGFnL293eXhmb3RINk4zR1BV?=
 =?utf-8?B?ZmI2cExlaitZb01JOHNGaVFSQWVtSTY5M0NDaE1Days2MHV4OFkzSTI4d3pT?=
 =?utf-8?B?TlhWV1NyZEJqTDdrWDEzeDJjUE9tTTZWTXFrTjF1bit4T1ZKK1d6T3FDWGpO?=
 =?utf-8?B?S2RiNWpHeXpjMDZ4N3FBZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2ErWW9vZlRrRnB5eldWbWNSWkpqS2EyUjg1Vm90NU1HZUFhdlZERWhBY1d5?=
 =?utf-8?B?MVR4Rk9PU3ZPVStTbWV1VllHNCtudFlRajhlSzFCQmZxQjZBQjJxbGp3ZmpR?=
 =?utf-8?B?NSs0UE83Y2lUZDhlL081NHoxK05KZjMzcTB3eHJqSTc3U0J2anZobThwRTYy?=
 =?utf-8?B?R0FJeW5DZkVpS1ZDa1d0cC81b3dpL2p6SG5zQzN5MGZFSVRac3J1MFJvNE9s?=
 =?utf-8?B?QWVNdDRxcDlHOEJvaXpqUG5QVHFsRGttVDBDa29BOUN5SFh4NFg3aDJsOUdB?=
 =?utf-8?B?dldlWnZaRGpJZ210cGhXbWk0L01HZTlFai8xd3lsKy9MV0ZIakFoanhQUDR2?=
 =?utf-8?B?U0ZMVGxlbnRyMS9LeTRXQnBnYXNZUCtoN3FHREI3RnhiOE12NytKTG8wcHNy?=
 =?utf-8?B?Y2o2dWlVakcyRGZrTVlzOGpOU2hVbHM2VlRSSWlpK3RSTDA5N0tQQXIvK3FH?=
 =?utf-8?B?a3B2ZEcxZGxXcktpMExIbnBwSHlROUNSempiRjB6bVBRQkpXWmVEdVdiUHZW?=
 =?utf-8?B?Vm9NR3ZtVHJaMWRBNW40Y2Iya3BZeDJpMkFsckVxdURLMlh1QWxFY3RzeUNl?=
 =?utf-8?B?aTZFT1ZualJBaGR4S09xVXFEclEyNjhOelc0bTl5bVVIZlBJRDlxZzZKVktq?=
 =?utf-8?B?T3hqTmIwenNydVQ0WnhQS1hXQ2VKbnFEWWI4WHpldEQ2aVBla0RzTk5Zbjg2?=
 =?utf-8?B?aUJYMHVHWFpMQ3hES3llY3ZIbUJYbUs5cEUwVndkSWJGbGpDcnAzMDRoemZ3?=
 =?utf-8?B?U3p6b0ZHOXFqTVB6Q0tOY2IxZDF2aXFieENycDlrZGMrMGx2eUtwa01kbWVj?=
 =?utf-8?B?K1ZLM2NvR3hRWlZBRERvaFMvbTJFWHpmM0xNZGkwZ2ZpendjTnIwRHdQRW85?=
 =?utf-8?B?Mk1sbjdkSXoraDBVdzMxU2JUcC81UWVuQ1NYTXhlSFVkeTlDRGZmNUh1RHdk?=
 =?utf-8?B?VlhnODdpOGMzUGJLR1NaK2xaL1dBTkg2OEx1RW14bUgxT2VzTGFnNEpoL3lv?=
 =?utf-8?B?VEZaS084cE4rV2FZMUpMT0JoV05VbkM0VmhNbHI1cXBidVlqaE1NKzBzdmF0?=
 =?utf-8?B?LzhCNWthTjh1Q1FoZ3pRNXF2Q3NHMEJSY0xQWDlJcWg5UXdtZEpYd3hjT2h2?=
 =?utf-8?B?bUJ2YnQ3SUk2M1JSSVlUR1JjenFTa1FmYXB1ZTZUaVFmUnRtZ1hOMjM0bEcy?=
 =?utf-8?B?UEJrOGlJNURlQnpWcWdYOFBCbDJqb3dIVkxkREw1cGlZNVFGSGF1YmJFL1NI?=
 =?utf-8?B?eklSTEtiamZFeUF1NnRWN3pKTTNlMFlIaTBqbFBIOFRFY1YwRFFNejJsQkpp?=
 =?utf-8?B?QmI0SmdRUzhyWWpCTUExNXNMcW5UaGc0MVMxUEVEbG9pN0UrOUloR0o0Ukda?=
 =?utf-8?B?U1NUaXNMNnh5cGEyU2V1ZVRON3RsTEdoYnhLZUhzbndMd0JLY1hQV0hyVXQ2?=
 =?utf-8?B?YXE5b0w4dkxlK3Z3Z1BDUzBLSEIwR3o4R0MzMWQrejlKZitlMXI2L01ET1o4?=
 =?utf-8?B?Ykl2Mk1TR2xDSEdBUFFFb21hT3VwekpqK05FT3ZmVGhhVTNyK2UydVVYRmxt?=
 =?utf-8?B?OGJSUzhOZmpsT2N0NjJXRUNUbjc2aFRyVjB5bGs3VWt1OXhiWE42NTVOWU9x?=
 =?utf-8?B?T3kxTWt1aFhjL3pPZE0vR0xRenlHVHhyWXNkaFdoUWFGODhOOS9kMjh5WDM3?=
 =?utf-8?B?WU5wWWRwUzBmdHpxZVRRYm82OEZIMVNNMldvU3Q5RlM2NXl3RTNOZ3UwcHhq?=
 =?utf-8?B?bGVIY2ZjVExiVFN1bHloQWk5aUtmMS9vK2hFeXhlRHNQc3lFNFN6RVdtWkVG?=
 =?utf-8?B?bG8xRUhyZ3VZalRiM3hxWXZ0Y0NoVkZ0MjZmNlRScFREZmVkVDk2ZzF1eita?=
 =?utf-8?B?QkJxY3BwYzgzSTkyYm91RVgzd2ZXLzAzb3RRM1pQeE1UZ3RvY0JZUHNXSXcz?=
 =?utf-8?B?dkdkdG5NUFFtVktXS2RpbGVjTFN6Yk9hTEZEejVMdXJURHJDNUI1S2RreE9D?=
 =?utf-8?B?bkJXcm5GRmJwci8yb2o3cml5YnI1VEcyQUIwYTdMM1A1NkM2bE8vMUd0L0o0?=
 =?utf-8?B?Zlh4M3hFMzZ6MVdjeGdzK3ZySVROcjlHTzdNbzJPSUxtVks5elZLeHBHeTVB?=
 =?utf-8?B?cVdkY080R2xLRExPaGI3U21JYnNpSXBNSlkyWGkwSEx1U3NmR1RlMHR2M2I5?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a534947-ac4a-400d-52a0-08dcafac1f13
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 08:54:57.2837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hYKzhf0ML/1SOwCiKy6SzgpHxcqHPlAq68I4DFJpC8nPdwgGdqHl0dCChz9j9DLb4zVmNoM3jewm9FapoF69TgTfI1N4nleud6JX8LwhdAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6435
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722243303; x=1753779303;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ePxpgPiG68pCGlHuNuzphzVL3yztTduxtjsc39rm+Vg=;
 b=Zilv2V2du4RsPpqtFG/jCGYkTbsqn1Nn2XirM4FnHtMPcy3Tr2iH2jxn
 tw/gHjGvvQlOk1JeEEk6MeycBNTcNLHtS2hjiUABc+tPZOGap/7xhBEI7
 G+wJFD87gO2S8RuywbYJVJklqHIHWYNfghAuWuxiKEyR17CZr4rNgesX0
 HBmAJV6TT2pxaT0Lg0nej1IGN9qMU+DvkYtZViW5Hn/d0DRRu7cfCGueg
 Xwl2F3BNrDpT6O2/LkSYA8PqjIf9/OVglKTNk5nYEQYY0ibyDlNlAz0yW
 4vrsDxB0Ss3rdookd1RLxzziQSZBP+35X4SDlOB3eiAb4wnPs2PLvJqif
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Zilv2V2d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: fix memory leaks
 and crashes while performing a soft reset
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
Cc: nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Simon Horman <horms@kernel.org>
Date: Fri, 26 Jul 2024 17:09:54 +0100

> On Wed, Jul 24, 2024 at 03:40:22PM +0200, Alexander Lobakin wrote:
>> The second tagged commit introduced a UAF, as it removed restoring
>> q_vector->vport pointers after reinitializating the structures.
>> This is due to that all queue allocation functions are performed here
>> with the new temporary vport structure and those functions rewrite
>> the backpointers to the vport. Then, this new struct is freed and
>> the pointers start leading to nowhere.

[...]

>>  err_reset:
>> -	idpf_vport_queues_rel(new_vport);
>> +	idpf_send_add_queues_msg(vport, vport->num_txq, vport->num_complq,
>> +				 vport->num_rxq, vport->num_bufq);
>> +
>> +err_open:
>> +	if (current_state == __IDPF_VPORT_UP)
>> +		idpf_vport_open(vport);
> 
> Hi Alexander,
> 
> Can the system end up in an odd state if this call to idpf_vport_open(), or
> the one above, fails. Likewise if the above call to
> idpf_send_add_queues_msg() fails.

Adding the queues with the parameters that were before changing them
almost can't fail. But if any of these two fails, it really will be in
an odd state...

Perhaps we need to do a more powerful reset then? Can we somehow tell
the kernel that in fact our iface is down, so that the user could try
to enable it manually once again?
Anyway, feels like a separate series or patch to -next, what do you think?

> 
>> +
>>  free_vport:
>>  	kfree(new_vport);

Thanks,
Olek
