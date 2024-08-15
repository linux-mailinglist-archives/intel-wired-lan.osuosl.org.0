Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2226953D3D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 00:16:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D847D60B23;
	Thu, 15 Aug 2024 22:16:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X5Bs7LdVZFkN; Thu, 15 Aug 2024 22:16:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2750B60B0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723760184;
	bh=mlw0vTZgEGMpAcaUX91AksMCXSYCOTL/cPvYOhEAQzA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z3jy/lzCorJLGeS/Ov5lQHgAn5LhvDJNfmvyHacS5BV2E1HW0TeHKhCeXvWhMvTa9
	 fVWvuMwNzFsNuUoIPBm+fR+q/joUa1HURZbNcjOVOKu6d8VbCd+HlF0XVWJ33zS6x2
	 VY6fruSChwlYz2jrwrXH889PjI1C0vyKbhhwl+MR7tRQPSBBBHG8q8Oq2QWoBdfzdp
	 pXEa1qc/cgc+Bsu67PVThL2XJOE94hh1ZL18AlrOhuJ6qf6e1OEUn4X/epDjqy13fX
	 PupFnF/clqGULypkClXM7dlJ/aEToz4bUh+hkW4bi9ESU0EpRhJ4aCQjQaQzBQqCq4
	 H3n58cUXbsDnA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2750B60B0E;
	Thu, 15 Aug 2024 22:16:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80CB31BF325
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:16:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A53940290
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:16:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vdGpsukMeWsq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 22:16:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E8B59403EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8B59403EA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8B59403EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:16:18 +0000 (UTC)
X-CSE-ConnectionGUID: KdN5w7/gSUm410yFDWDmPA==
X-CSE-MsgGUID: Ym0ZZL2NRUud2nIJZD1bdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="21592657"
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="21592657"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 15:16:18 -0700
X-CSE-ConnectionGUID: dKGDY51HQr2sXujq15Eq7g==
X-CSE-MsgGUID: WNlsZC1lT22jtjcb+YZibA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="64377591"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 15:16:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 15:16:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 15:16:17 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 15:16:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oRLut9Nrl0JiF5KWuKHvJDzXIMcXH2UikoJoECdGG4/9JHKnXupRcBuyHXB06W8P/F6kF+O0hsld6EVrZMrupiINhtsjtF59RwqOT4Nbp1q6eBC3d9HgOitC95mvDidT99oKR4I9UdrZHuPdML5zej9nnWTKESc/ieRfcjT2jMbtCe54P4LC91gNK4Js03DwtuBPSxk8JYPGEK8ebbL7jRCFeuO8W0As/MKFh0qVD5Skr9WnGdMuTrvFcHS4yPaz9Wfey6sYpFAfzWAxlabscUb832JQSskpSkoudtL8D3UYg9XJxd6SZD3CqqYljIXho04HAfzVqJeEP1kjzm/8UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mlw0vTZgEGMpAcaUX91AksMCXSYCOTL/cPvYOhEAQzA=;
 b=TlNGDbvxuQ0bBYSBxRsm3Mx69E/1opK7OsVzzcrx5MoEx8Wx8gPcR7aBo/4gT5bxl+FyMxSj3I0AIlLkIJvq32IXq2jX+/k1BJRAcRrTZBQiO7lDOPtwV75sFM7BuEhLNBf8kOEA0DGducxQgE25LdPx1/skG1wKe5ggD/fGPh9eXUv38778FPeLssdgWEdClOxtveZAmVILYQiJrMbCeXuDnhw8D+06qVc14/6ujwuJrIrhB4RasB4Gb1mAPgHvlakrbhtnFjzqnHfFpch63Iqm1j6m/Jv1ip15APFIr6FB0WL4xlZi+/mgltCyV5XyNbP5TQdnPwuXDgh5JDvoLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA2PR11MB4971.namprd11.prod.outlook.com (2603:10b6:806:118::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.19; Thu, 15 Aug
 2024 22:16:14 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7875.016; Thu, 15 Aug 2024
 22:16:14 +0000
Message-ID: <b9ed4b41-98c9-a562-ea6c-efdf3d9d3f62@intel.com>
Date: Thu, 15 Aug 2024 15:16:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <aleksander.lobakin@intel.com>
References: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0048.namprd02.prod.outlook.com
 (2603:10b6:a03:54::25) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA2PR11MB4971:EE_
X-MS-Office365-Filtering-Correlation-Id: cf82d8a5-3e78-4ad1-fbc4-08dcbd77e035
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEhaMmhZVU9CZlJHT28zS0UwZlpKeFlZaHc4RHV4d2UvUzBvc05ZSzVQMlF6?=
 =?utf-8?B?WWdzU1dsM2JSd3ZqQWM4NTRpMW5xK3Zya0dDT1FDZkJiU00rV1M4bStpY1lR?=
 =?utf-8?B?TzRRU0lXeXRXMURzSmhSRUdUZ2c3enh2V2JMSlpwN2QrZ3JaeUptVXJaU0t6?=
 =?utf-8?B?ZGJpUW91VUVaUUVkUzNJa0xUcTVEUzBPYkl2V2l6b2R6QWFQWkMzYWw3eGpJ?=
 =?utf-8?B?L1FVd1Vld2xKQXBVK0U3Y1FUanlTRFRWbmVwSlVxNW84QWpNL05PaDF6UEdh?=
 =?utf-8?B?dlZLcHY5MnhCVHA1MlBzYm5icTg4LzYvQUx4bEJUOEJwVUpCc1pOZ3YzQ2t0?=
 =?utf-8?B?TjN2aXlCQzVEZGs4Q0Nmckgyb3d0WXprNFduOXBuaE9WanpydW1DYTFMRVZ0?=
 =?utf-8?B?ellneWpxYVRoRU55OFpJSXhiVnFRWkdyZTcwdWJtejRnWFkxR3VIeWNPeE9L?=
 =?utf-8?B?NExIdi9IQkNMVGV2R0EvR2tqYUtsWHBvWE5BVGRhSW0yQjBMM0xwY0Z0VXh2?=
 =?utf-8?B?cGxZa1NNMERmUjNjUHd5ZEUvQ1ErS2o1U1MzeG1ucnlRQ2FlZW01M3NHUzBh?=
 =?utf-8?B?eFRvU1VtbWxWY1hZUWVyTSs3WmxXQVYzd3hTZG0zMktCTnRwNjNpMVZNUlRE?=
 =?utf-8?B?UzlPdm9OcmMzOFBPczhoSVQ4M3d3ckdpbFk1UHVnTWRpK0Z4bmgxY2k5aVdy?=
 =?utf-8?B?MTBaUmYvMXprRGdMaFVEa1BqMDZSOVFZRE43QWNQMk80RHRmY2tHSEFiQkZw?=
 =?utf-8?B?L0FEVmEyaWRNOGdieXhWMWkyMGluMHliWVJjY2dsMkh2elM0b2JtaFk3c3I0?=
 =?utf-8?B?V0dMaTQwcGJpcEk0aVdHWGd2WEZMNlVWa0c1cWJJMXJoT0Q5NEw2ZnQySlgr?=
 =?utf-8?B?VCt1U3ZWYmxIR0dpeVcydTBqc3NLdGFiaFNkdUhxTTVWdm5BUUh4cEhocEV5?=
 =?utf-8?B?WjdwaktSRkQ0UkZxVGM5dFNrZHhzNWpMVFhRSzVIY1FHWHNwU3lJaytoT1lS?=
 =?utf-8?B?Q2srQXVmN2hHOU1WK1ptL2VjL0RDWTNiektJNkhPYVlYYy9hSnlpRUJTM1U5?=
 =?utf-8?B?N0NjWjdFRFpxVDZLdnVlTXpyKytIL3NLNENyUmlvR0hqRURUcUdyNFFkRUM1?=
 =?utf-8?B?ZWNzN3Q2VDNXTVg2WWVjQ2hMVlduNXZrcm9COGhyRWJiOFZRbTczOGxTWCtK?=
 =?utf-8?B?MWxpRldhZEVyYnNpQm1LRFNZZ2ttNGtNc0RIYkx2VDR6aXVrMnpFVnBRYk5w?=
 =?utf-8?B?VjVlL1FRb1JkUHRPalB3Wms3RFRIdGlMK2xKaGppazhvZWNpUVgvSnB4YzNv?=
 =?utf-8?B?UmJKN0RLUEJaczFYbTB0RjJTbEdSdG52OUZIRWZCWFhFdlcxSWtYVk54R0RW?=
 =?utf-8?B?VkIrdHJYdlBaaWFjN3R2TUIrNVFIOWpXbmxzODJMWmlYQWRKeEpMdGxwbGtO?=
 =?utf-8?B?Q2tuV1E5UVd4OTVjZ2tmaFMwdVNaTDJHMGIwMm5OczFLNnMzei9POTR3Y3Jj?=
 =?utf-8?B?emw4azJpTTJkeXlPSzBIemhpTk9rdmZjMVcxeW81TWZ3aVFYaXhmWVM3R0tJ?=
 =?utf-8?B?a2NHNHVtN3daeExIbnNZRUI2Q3NYS1E3QWJObE4xdk5vVHdUdnRiQkRsYnhu?=
 =?utf-8?B?dWp4RHBzMUpjUW8xSGxkMWw5d3RXWmFLMExpUm40cWFRMElKK0lUK1VmWTh4?=
 =?utf-8?B?SmxDQ3FTaGJ6V2ZwaE84dVhZVDNrZXdVWWxmSmgxdzZiVWFXWEtFOWJSa2Vk?=
 =?utf-8?B?Vmh3NmFiRlRZcW4rS285c2JOSmh2U3BidUFxUjVMSXNrUktZdGR1cERmVVM4?=
 =?utf-8?Q?oW/8phRJPJQKT11GlwQjbjsACCTiJrHkrLM4U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0tBMHJkM1BtUDNkdCsyUHdISlcvSW5mekFDalhiUlBUVWlpZFVTU0pQaC95?=
 =?utf-8?B?ZjlsUTE0QjUvcHExQi9ISlVvcHozUzBZNFJ1QkZ3M0hjeHRUS3EyS05OVHdm?=
 =?utf-8?B?cVI2a3hlMXk2d21sUzNvN3JtUkdnWU9Ia3ZsTHlwQkVKaVV4N3cwa0JyOVMw?=
 =?utf-8?B?cE5Ha0dhTFFab2FZVW80bHYyU1BBNnEyek5Jdkd2SHo4V25TZW1DaVh6Qlh5?=
 =?utf-8?B?Tmx6YXRrYUg0NGcvRWh0MkVzaU4xenlYcVRKZWNXSVhOVTl3eUkwamlCcHVH?=
 =?utf-8?B?RjhVaENJUkZ0c1lSS2toMGhFSm1FbGVkT1QwSVErUkJRaWdvTnd5aDZiRE9o?=
 =?utf-8?B?RWhSeFlkejVZaGJvejV2dmY2c0c2Y0VvL3Bnck4rREpXMXAyZ0FQcDRkY3VR?=
 =?utf-8?B?ODNFaEJKSGlnK0NGWUp0bFllNkRrQWJDREFsOU9pZGFHRTFIaEFIMlFENEdo?=
 =?utf-8?B?R2hVTDcrRWhIYkFDZmpqNUdVNWZqMzNRR3JNWWtHUTJZais2SE9FYWFZeDFD?=
 =?utf-8?B?dnRVUFE5UFRZK0h0UlNVdGxFZ0xZRjBtZE1mMHBqeGxJSDdsMEhlK0NQTndR?=
 =?utf-8?B?bzdpNndYOVlTUm16WW9sUUdpRXpwY0FjV3NOQ0psN1RVZEQzZUkwOVJsYVhS?=
 =?utf-8?B?ckRqNERDWDhDUDVOczM2Q2IzOTNuSUxsSEp5MUhVbUZkSG5IZmpqYzJPQ3dx?=
 =?utf-8?B?YjRVOEptWWZTOGZFR3FmWTFRUmNjd1BkTUVwak1RUXJHRmRSQ25nNHJxU01W?=
 =?utf-8?B?WkxJclh0RXdHM1Zya3VVNm9KRXN2RmFMS3RyVkc3eXc3SkJXRmFzYWFmOGxt?=
 =?utf-8?B?ZS90TGxUUks3Wm81b2JldHNjdEVZWkZFS2trWFJDSUtGelUwMXUvRkhGa1Ev?=
 =?utf-8?B?RFJraE9DdEdTL3JyY2RyajlhU0R2TlFZeWZkOVZMekJYeU9XZi9mYUxDWlhX?=
 =?utf-8?B?L2NFK2p6Tm05d2ZXQ0NpbWs4SHZCczdBMUk3cm5FRWF5djF2ZEFIQ0I5R0t3?=
 =?utf-8?B?SEJ2NWxCZW81TU9jd1pFTW9OdUltbkk2OHNpaUwvY0Y1aHJ5N3NYQTVJQXhF?=
 =?utf-8?B?M1paallxSi9seVA4UkZwa2IxNlM5c3VuYTY1NU1aZVRpOEQrZmI0VkdxTkVn?=
 =?utf-8?B?NUEvbTFOWWlFQk51a1d1QWRDT2lGTEtXUGhlU1JxTFRrT1lCU1BjVDdXUU9X?=
 =?utf-8?B?ektEcDZmVlZObnZFZXFEbVRIUGM4clVSdHdiWE9kY2FkTTNBOHllWUh0NzZY?=
 =?utf-8?B?MHRySjFNN1hZZ1Q0NjZMNEpNTHZHQ2dYNVkzOEZIQW5mSTJ1bERUcUpjV1Ji?=
 =?utf-8?B?VHpIVUtlcGNWcFZUeVRXYXRseTZFcVpxTDJLZG4xMm15MnhSQ1JRdWJzWnNx?=
 =?utf-8?B?eEY4NDdxSkV2Q2JpMWZpblFPd1BVZndJSG1FRFAxREtab3hac1d4MllLczZT?=
 =?utf-8?B?V1lQeEp3UWNUTG1Vc1dqWUgrK09DN0pQU3B3Slg3QVNpcURIMG1SR3M4YzJP?=
 =?utf-8?B?VmVsc0o1MDAyeEdDZDVtSmFoaW9QaG9VTTdNZ2k3SHd6QTA1K2N0Qk9YS0Vk?=
 =?utf-8?B?SHJxTW10RlRRUlNUTXk1UHVyU0h3U1MxVlNxeU5DWkNDR3JrQlF4OVRUY0xa?=
 =?utf-8?B?b0RITkZkb1NKWXFSNW1YR2RwSlMwN29DMkx2Q0hBMzVuaGxrYUhXYW5leWRn?=
 =?utf-8?B?L1NzakNsTFgyeGMzVHVBMk9EeVVGZ1RrZ1M1SE9hSTZNWDZ1Z0VGczNWWmYw?=
 =?utf-8?B?cnlmL2pld2JsYWlxWjJ6MitDWEZoSDdPdXN5VzZLSmVzR1o5VHBCaFlnYUFL?=
 =?utf-8?B?aHozSm1HanBoTkJCQ1d6dm1HSG5RL3JUT3FXRlVtNHZPVFRSaEhES1NJby9w?=
 =?utf-8?B?b0VES1FmT255RkpTOWVLaXpTRlZLWEdINm1ZeTRHcHczdnZpME0rTjFQS2Vw?=
 =?utf-8?B?RkYwdTZXWGJvMjl5cVRjaXRQU0lIcFc5bEZmTnhkWUxxS0lRTE1DTlVUVTJE?=
 =?utf-8?B?cWR4SDltOFVKdlJ0TDJqSXBTc0x1ekdtTVFFZTBQOGMzTVhmejVPTWk5SEVr?=
 =?utf-8?B?K2FjTDRTTnprR1hCcDlZeXpVSnBqMlN1VkNxSUJZb1owUWJBd0tPSFRQVlNo?=
 =?utf-8?B?RG5TVGFRaVpEMWVsOFZzMG1JdXpwS1NSejQ0eEhFdGhISjliQThXYlQ0eWs0?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf82d8a5-3e78-4ad1-fbc4-08dcbd77e035
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 22:16:14.2364 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PetY8P3AWfHyWwleNRYcq/zkbUHfvXDRFaD7mqxL1qaZAIUucI8JlSZZGZz1fJVJbEWVxeNEaXqbKjs9aeaPk4xQaaXuSPz/9ekcWOCQZxo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4971
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723760179; x=1755296179;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ljTgiaUkq7yizJvxosCLffo0k9vKqoOdYK3SAhLktsU=;
 b=b5uB+vqCaFX31y4tW9orwiPKUUqxQ/mZmtO4giO+Y5w9YEnnNDZjG78r
 949LFJttZ7Z7OYNL2M03ibK2dOOMx6vDyc/wHxEo2s6ApV+tY+EANVxfK
 7maeaWzDHdxHoCQhYjF9k/dLgKkUEoEc6djaPjNVtcXefYIthbMDDV5+1
 izphucvvGkqNsTxYP/Y16XaC8OZFnBvldhHRl73ofh+1rufsh4193tq3X
 Xlra5tRrTjJYSoQseoz0qNzvziQlJ6nV2szzH7GEW76sM3Yk/3E4YAqrr
 2lGuSyTZUcBPjnSidnz66xnc41oUM07bNRHYKpCmEDwir5cL8bmslkP5s
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b5uB+vqC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 00/14] Add support for Rx
 timestamping for both ice and iavf drivers
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
Cc: netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/13/2024 5:54 AM, Mateusz Polchlopek wrote:
> Initially, during VF creation it registers the PTP clock in
> the system and negotiates with PF it's capabilities. In the
> meantime the PF enables the Flexible Descriptor for VF.
> Only this type of descriptor allows to receive Rx timestamps.
> 
> Enabling virtual clock would be possible, though it would probably
> perform poorly due to the lack of direct time access.
> 
> Enable timestamping should be done using userspace tools, e.g.
> hwstamp_ctl -i $VF -r 14
> 
> In order to report the timestamps to userspace, the VF extends
> timestamp to 40b.
> 
> To support this feature the flexible descriptors and PTP part
> in iavf driver have been introduced.

Can you check that each patch compiles cleanly? Some of these are not 
(especially w/clang).

Also, there's some scattered checkpatch issues if you could run and 
correct the applicable ones.

Thanks,
Tony

> ---
> v9:
> - another big refactor of code, again the list is too long to describe each change. Only
>    patch1 and patch12 has not been changed AFAIR. Please take a look on v8 and changes
>    requests from Alexander L. (in short - fixed structs paddings, aligns, optimized rx hot
>    path, renamed few structs, added "const" keyword where applicable, added kdoc comments
>    to newly introduced structs and defines, removed unnecessary casts, simplified few
>    functions and few more).
> 
> v8:
> - big refactor to make code more optimised (too many changes to list them here, please
>    take a look on v7 patch9 and comments from Alexander L) - patch 11. Because of that I
>    decided to remove all gathered RB tags.
> - changed newly introduced spinlock aq_cmd_lock to mutex type to avoid deadlock - patch 7
> - adjusted function iavf_is_descriptor_done() to extract fields from descriptor in a new
>    way - patch 12
> - changed (and removed unused) defines that describe specific fields and bits in
>    descriptor
> https://lore.kernel.org/netdev/20240730091509.18846-1-mateusz.polchlopek@intel.com/
> 
> v7:
> - changed .ndo_eth_ioctl to .ndo_hwtstamp_get and .ndo_hwtstamp_set
>    (according to Kuba's suggestion) - patch 11
> https://lore.kernel.org/netdev/20240604131400.13655-1-mateusz.polchlopek@intel.com/
> 
> v6:
> - reordered tags
> - added RB tags where applicable
> - removed redundant instructions in ifs - patch 4 and patch 5
> - changed teardown to LIFO, adapter->ptp.initialized = false
>    moved to the top of function - patch 6
> - changed cpu-endianess for testing - patch 9
> - aligned to libeth changes - patch 9
> https://lore.kernel.org/netdev/20240528112301.5374-1-mateusz.polchlopek@intel.com/
> 
> v5:
> - fixed all new issues generated by this series in kernel-doc
> https://lore.kernel.org/netdev/20240418052500.50678-1-mateusz.polchlopek@intel.com/
> 
> v4:
> - fixed duplicated argument in iavf_virtchnl.c reported by coccicheck
> https://lore.kernel.org/netdev/20240410121706.6223-1-mateusz.polchlopek@intel.com/
> 
> v3:
> - added RB in commit 6
> - removed inline keyword in commit 9
> - fixed sparse issues in commit 9 and commit 10
> - used GENMASK_ULL when possible in commit 9
> https://lore.kernel.org/netdev/20240403131927.87021-1-mateusz.polchlopek@intel.com/
> 
> v2:
> - fixed warning related to wrong specifier to dev_err_once in
>    commit 7
> - fixed warnings related to unused variables in commit 9
> https://lore.kernel.org/netdev/20240327132543.15923-1-mateusz.polchlopek@intel.com/
> 
> v1:
> - initial series
> https://lore.kernel.org/netdev/20240326115116.10040-1-mateusz.polchlopek@intel.com/
> ---
> 
> Jacob Keller (10):
>    virtchnl: add support for enabling PTP on iAVF
>    virtchnl: add enumeration for the rxdid format
>    iavf: add support for negotiating flexible RXDID format
>    iavf: negotiate PTP capabilities
>    iavf: add initial framework for registering PTP clock
>    iavf: add support for indirect access to PHC time
>    iavf: periodically cache PHC time
>    iavf: refactor iavf_clean_rx_irq to support legacy and flex
>      descriptors
>    iavf: handle set and get timestamps ops
>    iavf: add support for Rx timestamps to hotpath
> 
> Mateusz Polchlopek (3):
>    libeth: move idpf_rx_csum_decoded and idpf_rx_extracted
>    iavf: define Rx descriptors as qwords
>    iavf: Implement checking DD desc field
> 
> Simei Su (1):
>    ice: support Rx timestamp on flex descriptor
> 
>   drivers/net/ethernet/intel/iavf/Makefile      |   2 +
>   drivers/net/ethernet/intel/iavf/iavf.h        |  35 +-
>   drivers/net/ethernet/intel/iavf/iavf_main.c   | 228 ++++++++-
>   drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 481 ++++++++++++++++++
>   drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  26 +
>   drivers/net/ethernet/intel/iavf/iavf_trace.h  |   6 +-
>   drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 425 ++++++++++++----
>   drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  22 +-
>   drivers/net/ethernet/intel/iavf/iavf_type.h   | 272 +++++-----
>   drivers/net/ethernet/intel/iavf/iavf_types.h  |  36 ++
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 223 ++++++++
>   drivers/net/ethernet/intel/ice/ice_base.c     |   3 -
>   drivers/net/ethernet/intel/ice/ice_lib.c      |   5 +-
>   drivers/net/ethernet/intel/ice/ice_ptp.c      |   4 +-
>   drivers/net/ethernet/intel/ice/ice_ptp.h      |   8 +
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   2 +
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c |  96 +++-
>   drivers/net/ethernet/intel/ice/ice_virtchnl.h |   6 +
>   .../intel/ice/ice_virtchnl_allowlist.c        |   7 +
>   .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  51 +-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  16 +-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  19 -
>   include/linux/avf/virtchnl.h                  | 131 ++++-
>   include/net/libeth/rx.h                       |  42 ++
>   24 files changed, 1810 insertions(+), 336 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.c
>   create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.h
>   create mode 100644 drivers/net/ethernet/intel/iavf/iavf_types.h
> 
> 
> base-commit: d1815992133ebcc6007009645571f322f4bc7c44
