Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 086FC96F511
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 15:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9C8281DFF;
	Fri,  6 Sep 2024 13:12:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5VgGInkWofuB; Fri,  6 Sep 2024 13:12:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1C1281491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725628328;
	bh=X+B1nvPl0zjqqahG7Zi2C7yIWasN8Vk2xMNslN2Fqkc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IRxv5ml/TIeLgFuPpJhoEbYNH5SGGMV3eck21gMNQHKDgRPJQD8JbdBho/NiIyvha
	 B/EnOiwWlWAHawVkbbYcs3Ktc2o7DSOFVBGLd/7RFp2zw5KqcmJnS0s47lwaHMBsP6
	 RnMG3XuDOdN8NL99BGDpzgPcGtiQhox/DTyGZetKcfDUuBJIJOerCjFc7BI0NSYUtZ
	 DYRgXaM/nK8s7it6IEJWVMriHbfMGUF/TdJ18eyx0p3eAFlfFU1nghqGO73I5xLliH
	 /FfMAf313DCiSJtF08PvO0092vu38OjUWhDacZ34a67VouZ/y5DylUHUvxXVsZpt3Z
	 fyT+y0NfCLT7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1C1281491;
	Fri,  6 Sep 2024 13:12:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 702141BF341
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 13:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6654540139
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 13:12:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3WbjoQQfgfgY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 13:12:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 124DE404BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 124DE404BF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 124DE404BF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 13:12:05 +0000 (UTC)
X-CSE-ConnectionGUID: TkhtlVDkTq+M8PXKC8tZDw==
X-CSE-MsgGUID: xRgnOZDaQsmZA8s7cMYcNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="27312510"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="27312510"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 06:12:05 -0700
X-CSE-ConnectionGUID: AATwgEyjRQ6VvF0RX7b9Tg==
X-CSE-MsgGUID: BIuKxmTnQX2phu6ZrOllaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="70089687"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2024 06:12:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 06:12:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Sep 2024 06:12:04 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Sep 2024 06:12:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VHhd7nnku4q+KCEo3qUEVkM0X3z3J1OFosBBJhD4FmqaS9AKr0U6MIedDbCfc4dEUoicdwYrSrUPGvRLxECrmWwpfiMxW1vdFhl0lCsKmuoZyd7Esg24iTF7dnvvEp9cFQcWLbyubBp2wijb7I8AatKMYBri2fcfUhww5pRAglmRxwh9DFWhZL7YLXYxVLWud5AQDDgRq05BYBYgPN/siNFl3G3GxHGg3pS0IpiDBMcPs0vn3FEnWxTxnp9JuFzPDjqNUOa/eWX4Isz3CwrE/wX5x+9y0O8NQtneRfGsRanRe/gbxat7ISvVbORjh06AU94EcZmNaqM+GznAswX1Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X+B1nvPl0zjqqahG7Zi2C7yIWasN8Vk2xMNslN2Fqkc=;
 b=cXpE17OzKUJFscoka3FOLG3qcoMF0UZN2fka1RkQsbc+0LuDbGsnuXar8daosnX4NwhCxeW4wfedsKj8xEBQmeD3AugmmJv39c21GEMlxp5WxOu4fwQ6Ixd+CPSG0GmP64t+dMdBPJDs/FX896p9Lz8uhVoYcu9yiRDGi+1c9HFPK2t6dnzhbgGiQ2AVSK4f3Ti2on1frTjbDkEYf66+sJdIfaxZ581lWPHz0MBzNbhbO6ZnwKsPpSnPNvbw5Oj+7+sqFzZxjKJ3kKStgjcdqg5kirsRoK0oqtcMQnU4J/TvYgyOwqKLhj2b+mv+i4+GVG7RoZZLK4Wb8irAq0g6kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by IA1PR11MB6395.namprd11.prod.outlook.com (2603:10b6:208:3ac::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Fri, 6 Sep
 2024 13:12:01 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7897.021; Fri, 6 Sep 2024
 13:12:01 +0000
Message-ID: <1ebe2e5d-3243-4fb6-8798-a331f1ce3539@intel.com>
Date: Fri, 6 Sep 2024 15:11:55 +0200
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240906125706.46965-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20240906125706.46965-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0492.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7e::11) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|IA1PR11MB6395:EE_
X-MS-Office365-Filtering-Correlation-Id: 55571a73-0f4f-412c-206b-08dcce757ebf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MWU4Vm9HekxlbUgrd05WZTJJRkRtbGJOWVU3aEs2dkg3RXEraHV2NDBvT29r?=
 =?utf-8?B?SkN0K04vZzJsMVd5dnJmMGRKTFB0WlpXUUhNcHhTckpidEpVWitNTFFtRHJn?=
 =?utf-8?B?UXlzWlREMlE5L0EzcitSNWlwNjNsREZEbnZwWXErZE1LenlKdDY2S0crQTZU?=
 =?utf-8?B?MGhqSU1jUkJid2V3c0lXdEJ1K2lobko1c3Iwb3FDblJpRlpCcDFNaVJuTWxL?=
 =?utf-8?B?ZEs5VW1iVVAzVVd2MmYyM21NM2hlVFF3M0FRTThBZi9TYkZrNTlNOGhKTWtm?=
 =?utf-8?B?eXJSRWZBaE04SFQyM1k1N3JQOFpSdlV5Mlc2K1Q3d3ZxOW9McjBQVjRhMy9K?=
 =?utf-8?B?NXhXbU4xT1IxQXdwWWY5VWZaL052cUtuVnNHMUlySDd6KzF0c1R5R1ljZm9X?=
 =?utf-8?B?Z0lYR0FIVFRJVnFsYVMrc3Ftc0wreUF4VE12alE4VlJ0YVBvZkJnYlJhVTNh?=
 =?utf-8?B?WXgyU2lFZ2xNcDFXUU9rcFk4UUxIc1dQT25SK1d6bmwvMjg2RnQyNGJsT1h2?=
 =?utf-8?B?OXE4RGFOZzNiUjBEbzVoUzNaRExiOTFURGJVS2hmNDdOM0xBdEphalRsSjA0?=
 =?utf-8?B?RHNubTZXN3Q4ZDlDZ0toR29KNFZPMjZQdXBrdVJYY1VCN2wvbDlmL1h6ZjZu?=
 =?utf-8?B?Z3hZMm85Vkx2a0NLU0tiR0lQRGVPRVJ2SzVkNFE5NkpKUWNORS9sOW9mQkV3?=
 =?utf-8?B?ek1UZ1NlQWxiRGlYYzdPRW5kNEM2dWVIbUdmNDR5cWJyTml2SkFmdUFBWHlB?=
 =?utf-8?B?RFRQOTVnM3NCd1JxU3NaS1dkVWtic0FGczd0aVVscmF6SlYySGI5VkxtcFpi?=
 =?utf-8?B?MDFoWmxVYmRqbkJJN1p4aWsrbERrNnpjMjhRZTlOSkhwZSt3NFpES2J0N3Nn?=
 =?utf-8?B?OFJLUk5DdGZpUTNNVWlHeUQrcEJyV2Q5bGRpNzB0Mlhtdi9oY3MzbFZpSjZU?=
 =?utf-8?B?Rit4SCtxSVBORmdBRjVVKzZ3QlJzTDcxaXZjWGp1NVhya2NSTnJ0S20rRkFK?=
 =?utf-8?B?bVg1UmhTY0NEcFI1N3FTRmZKeFZVemtVTUc4OFNSaEF6SXVJS0pPQnNVWmxM?=
 =?utf-8?B?K3lDandVTDNQWnNXMG10QTVGS1hnbzBET1dsUmNNVnBWcW42enpUUnFreVYv?=
 =?utf-8?B?by9Ob29QTE5mRkhxb001NWZXTmw5QUtXR1lHYmZLNk9pQlhmdDg3d3VTdEFX?=
 =?utf-8?B?UTc2cjZydzY2OGkrck8vdkovTDFCSzVmaEQ1bmgrNm9LYmhwRlE1Mllvc0c3?=
 =?utf-8?B?ekl6VmtPQW9pVjBFTEp6U2JvMWFsMll1TE5HRGpRcE94elNyZTVRWUZ2NURZ?=
 =?utf-8?B?M1VOUnRuZVR4clQ1VUQ2L1I0ZjBMZnArSHcyMm93UGROdHFFMHhoMmkzcnF3?=
 =?utf-8?B?RDJNVzNJT1RqK3NqT1RzNTlkQjV3eHVnQm42ZER3Q2k5ZzZOMGROaWhlNER3?=
 =?utf-8?B?dnRSbFVKLzJYeWxTS1NkeHV4b2grbUdWeXlYN3lZVWdxZnVKcnNmWUZYRHZD?=
 =?utf-8?B?TE80aWdlU213UlFETHQzVW1uR0VoZHoxMWJiWHB1M0llSkxCaVg1b2lSQmFQ?=
 =?utf-8?B?NWY0TGpOTUlRNWppS1llZUNOM0pMdkxpc3hRdVJtRE1tN2QweTMxSXZEU3dj?=
 =?utf-8?B?Sm5YN2d3cS94R2dZSVhRUENDeS9SUG1lcVkwT0UwMm1WS2RocmZwVk9ubEEw?=
 =?utf-8?B?UVVmZmNtWC8wVTl5Q09aYTgveDZ4ZURhbnVLVlpVbko0S05IUS8xZldoNmE1?=
 =?utf-8?B?S0FnUFlJTVUzdE9SZHRFMXFobTV6L1RISzdQZmVKOVpZaHZrd3ZIYlpRTUI0?=
 =?utf-8?B?OGMzWkFrdVMvQVhQVSsrUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2Y3RXE5ZkRzQS9LT2QwR09lbjJYRkw2R05BaGFVZHhwcHovcW1oNGlsR21Z?=
 =?utf-8?B?TlhZN0hwSVRlM3hnTEJsZHJtU1pqRFBJYkx2bURwSFk0bGU0Q0hudnRna2Mx?=
 =?utf-8?B?YlFXQVEwWDRKbHRncG1LSWVnUHEzbTM5SVZ4QTE4ZGl1V1d4RTdxdUI0RDJK?=
 =?utf-8?B?SHJ1Z21CMWpQZlVyZDFWZVdUUnRwSGMweWxpQXowMmI2TFNUbzFTRG9WN0s3?=
 =?utf-8?B?dHRyVWVqWm9JaGJvMW5hNDJoYUw1Y1JYNjJtbGxVZy9rUlpDT29nSUVGSmZG?=
 =?utf-8?B?MWNOZnU0MTA2a1pjVGRnWXVnN0NzNlZjY1Zha3NMM0FlVlEvL2RueEZ1ZXZx?=
 =?utf-8?B?OXl6UHNUYTFiWGZZVWFMV0U4YmVBTCtFSUNkL3VSZnAza3htZkFHWFVLbHVC?=
 =?utf-8?B?N0ZUYlFtV1ZYK2pUeGZ4QkR2WlBmTFZ0d3VqZHRHRTdCcjFzU1g5UVozN3Zx?=
 =?utf-8?B?RHZGQ1VyN25wVjdFSC9mMGtabUNDQzRGbVlYbi85eDdpYUdlcStXM2VrUzJJ?=
 =?utf-8?B?ZEVrUUVqaXFkcmxQa3JjMFBjZkFhNHBsZE41MmwvVHNqcnZyRE5wV1VxZE1r?=
 =?utf-8?B?SHQwbXQ1UzQreENScVdwK1YvNFVMcVRjWmhqcUZqajJGcDVnc2JyODh4Ny90?=
 =?utf-8?B?NmFTVGZxbWlaZlN4N1hEZ2NZNmIrTmVjbDdBQk91dFpyMDY5WGFmNFBSZG5B?=
 =?utf-8?B?OWVkMExSdmJ1OWc1NTdBWEd2d1p1TG5TM1oxbUx0Tk5DcGJ2NnhEOGVrbnly?=
 =?utf-8?B?M0UwNVRqR01ZK1NDRjM2NENnYXdrc1hLQjdxQzJSNDY5OU9vUEM1TFo4QWxw?=
 =?utf-8?B?akZWUkxlNGpJR0xRSnIrN0dHSE0xZ0JuMUZ0NFFPUFhJaXFMVHdDbzFHWnIy?=
 =?utf-8?B?ZHZxUUNSZlZ6MldnSUdFeTR3U2k3UkN4TTFyT3BKelZQMnFGZGd1UlhjSzZM?=
 =?utf-8?B?eTVIeldaMG42Zm56emNIbG1YczkrNjg1VVM1SXdFMUZoeEozY2Q2Z0gvNXQ2?=
 =?utf-8?B?aDZSTXQxWlFPWUx3d2VwdmFmeDlRNUJKZTIzTVo0V2thRVEvcDcxVFN6eXRP?=
 =?utf-8?B?dHVscUtpVVI2RTVtWG4yVWR6Mnh2UnQ1bERFSUVRTlVhRnA2OFFiZGZZOG1K?=
 =?utf-8?B?SFlDM2dOSmc4dFpmbllLdExIRnBHY2VubkcxOG53N2I0QXdiRTVSVEIyb0JV?=
 =?utf-8?B?QlNMVFEvOTdrNzVXbXZJN3BwTi9wSHo1dFJkTHNHOEI3NVQ5QUF3Y2RQd2E3?=
 =?utf-8?B?RzZoYXRzaEdCbmIySVRrdmE3aGIxZGZzYlJlSVpFSWVPVVdOZjU0M3oxSjJl?=
 =?utf-8?B?T091dEhrWjdiT2hxbVNIQSt5TkdiTkdSaGlxUWVTbDVYQ1lvZ21RYm5uQzRN?=
 =?utf-8?B?Mk84Z0I1SVlEaGlqQWlFMTBCblU0N0UrNDRDemRjRm5SZnFDQksyU0dHS3Yx?=
 =?utf-8?B?cFh4TTNKQ2p2QVhBRzlOWVJRTWFtS0d6UW9GQ0QwaUhrcWVxZjhuZEJ3NExK?=
 =?utf-8?B?cmVFTVQ0N1pZWXhJNE4veEZNNjJRL3o1S0ZkTzdYM3dxZTFUTitCODRlUWhp?=
 =?utf-8?B?ZStpaTVnY09ORndTeEZ5VUhyeVJ5dGtlaTFxdVZEQnVLZnhBQXVaZDJuVGxP?=
 =?utf-8?B?WWdYMXcrS21zcVpicFl2dTM0MGhYRzJpTUE4WUpYSDlTaVdXd3l4RVhhVkc0?=
 =?utf-8?B?YnJMTFoyWGEzMTBCekp3SGF5cm84L3kxbEpSUlJwdmxMQ3ZzUy91eC96WXVy?=
 =?utf-8?B?SjVmUHUyM1Zxa2Vtb2MwQ0swNmROU29pdE1tdFhjR3BQTmx4cG16MVY3MjMy?=
 =?utf-8?B?aGpFNU4wTnF5blcxSzRicXZFWDJ4a2xwbEFKT0ZxZVAvK1NKaHVRWU5tVEhI?=
 =?utf-8?B?dTMxWWcyYUNDK25LWXZrVWJTVlBVSGRuSFhpTXlmTWZ2N3hEUU5CY3d5Y3ZE?=
 =?utf-8?B?SEg0bzQ5ZUJ6NXpWQVNQZ0lpRGc3ZlFoSWlNRm51WmdzVkE5REMrMUVBaUUw?=
 =?utf-8?B?MnN0OXpaSE80bEVMeDlDYVJ6d0w4SXE1ZEFpdUJIOTFrNUVzekFFWGdpL1Bn?=
 =?utf-8?B?SmQwd2VaYVYwNXVnQnV5UHRuY0JpTWVjYUpBVFZGdk1YNkUvNFhkeDZaMnZm?=
 =?utf-8?B?bjRtM3ZJblZwelhPZzNjbUViNDhjN2FsTks2Sm9aZDRzT2ZZY254UVk3UWt5?=
 =?utf-8?B?MHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55571a73-0f4f-412c-206b-08dcce757ebf
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2024 13:12:01.5436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /zF98DfGd1tUQ2cNCQW4LfcLM2rdktvBl/xduB06tUlIjHSA+tl09JJRY9bv8BfKINqQBylhHf54XkWJAxkRMxb2Yc9kHuNgfR2/L8TpG1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6395
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725628326; x=1757164326;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VGSN210yuhg81kFuGuhfojEWHEDzKHqSvCs2+hrzzc8=;
 b=ENKtbvJGWwS1a1Ac18LqA1wFsh8rW+zQkRjNLeKo0HsRW6Xx8ryEFN4O
 zISgepsusAfDfgDZlqOuvtrPz100KEVLEe29Q752DqMOOBpnm5Ob82vie
 NmJOZFFGax+Bm0o09/jNVG84ByyE7wwUeBPe+LPsu5sazkP3Se3/1OQys
 /QYjTP3MeWs2W7COApL3uKaORIYvXmBh0JuK7cNJ0Tb8Md7395agJ19Ks
 vbifBlGaznsawnS1KAkwcQAuffu7UOmvj1AFTMIbwoQWNHoBUeOBIy8F7
 OauqV0NSvVkdFRLKxfaVgJo4LlbHKhIVnafqrfju504KMD+I2b7x5or47
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ENKtbvJG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: clear port vlan config
 during reset
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



On 06.09.2024 14:57, Michal Swiatkowski wrote:
> Since commit 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with
> ice_vf_reconfig_vsi()") VF VSI is only reconfigured instead of
> recreated. The context configuration from previous setting is still the
> same. If any of the config needs to be cleared it needs to be cleared
> explicitly.
> 
> Previously there was assumption that port vlan will be cleared
> automatically. Now, when VSI is only reconfigured we have to do it in the
> code.
> 
> Not clearing port vlan configuration leads to situation when the driver
> VSI config is different than the VSI config in HW. Traffic can't be
> passed after setting and clearing port vlan, because of invalid VSI
> config in HW.
> 
> Example reproduction:
>> ip a a dev $(VF) $(VF_IP_ADDRESS)
>> ip l s dev $(VF) up
>> ping $(VF_IP_ADDRESS)
> ping is working fine here
>> ip link set eth5 vf 0 vlan 100
>> ip link set eth5 vf 0 vlan 0
>> ping $(VF_IP_ADDRESS)
> ping isn't working
> 
> Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  7 +++
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 57 +++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |  1 +
>  3 files changed, 65 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 5635e9da2212..9fe2a309c5ff 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -335,6 +335,13 @@ static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
>  
>  		err = vlan_ops->add_vlan(vsi, &vf->port_vlan_info);
>  	} else {
> +		/* clear possible previous port vlan config */
> +		err = ice_vsi_clear_port_vlan(vsi);
> +		if (err) {
> +			dev_err(dev, "failed to clear port VLAN via VSI parameters for VF %u, error %d\n",
> +				vf->vf_id, err);
> +			return err;
> +		}
>  		err = ice_vsi_add_vlan_zero(vsi);
>  	}
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
> index 6e8f2aab6080..5291f2888ef8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
> @@ -787,3 +787,60 @@ int ice_vsi_clear_outer_port_vlan(struct ice_vsi *vsi)
>  	kfree(ctxt);
>  	return err;
>  }
> +
> +int ice_vsi_clear_port_vlan(struct ice_vsi *vsi)
> +{
> +	struct ice_hw *hw = &vsi->back->hw;
> +	struct ice_vsi_ctx *ctxt;
> +	int err;
> +
> +	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
> +	if (!ctxt)
> +		return -ENOMEM;
> +
> +	ctxt->info = vsi->info;
> +
> +	ctxt->info.port_based_outer_vlan = 0;
> +	ctxt->info.port_based_inner_vlan = 0;
> +
> +	ctxt->info.inner_vlan_flags =
> +		FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_TX_MODE_M,
> +			   ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL);
> +	if (ice_is_dvm_ena(hw)) {
> +		ctxt->info.inner_vlan_flags |=
> +			FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_EMODE_M,
> +				   ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING);
> +		ctxt->info.outer_vlan_flags =
> +			FIELD_PREP(ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M,
> +				   ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ALL);
> +		ctxt->info.outer_vlan_flags |=
> +			FIELD_PREP(ICE_AQ_VSI_OUTER_TAG_TYPE_M,
> +				   ICE_AQ_VSI_OUTER_TAG_VLAN_8100);
> +		ctxt->info.outer_vlan_flags |=
> +			ICE_AQ_VSI_OUTER_VLAN_EMODE_NOTHING <<
> +			ICE_AQ_VSI_OUTER_VLAN_EMODE_S;
> +	}
> +
> +	ctxt->info.sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
> +	ctxt->info.valid_sections =
> +		cpu_to_le16(ICE_AQ_VSI_PROP_OUTER_TAG_VALID |
> +			    ICE_AQ_VSI_PROP_VLAN_VALID |
> +			    ICE_AQ_VSI_PROP_SW_VALID);
> +
> +	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
> +	if (err) {
> +		dev_err(ice_pf_to_dev(vsi->back), "update VSI for clearing port based VLAN failed, err %d aq_err %s\n",
> +			err, ice_aq_str(hw->adminq.sq_last_status));
> +	} else {
> +		vsi->info.port_based_outer_vlan =
> +			ctxt->info.port_based_outer_vlan;
> +		vsi->info.port_based_inner_vlan =
> +			ctxt->info.port_based_inner_vlan;
> +		vsi->info.outer_vlan_flags = ctxt->info.outer_vlan_flags;
> +		vsi->info.inner_vlan_flags = ctxt->info.inner_vlan_flags;
> +		vsi->info.sw_flags2 = ctxt->info.sw_flags2;
> +	}
> +
> +	kfree(ctxt);
> +	return err;
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
> index f0d84d11bd5b..12b227621a7d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
> @@ -36,5 +36,6 @@ int ice_vsi_ena_outer_insertion(struct ice_vsi *vsi, u16 tpid);
>  int ice_vsi_dis_outer_insertion(struct ice_vsi *vsi);
>  int ice_vsi_set_outer_port_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
>  int ice_vsi_clear_outer_port_vlan(struct ice_vsi *vsi);
> +int ice_vsi_clear_port_vlan(struct ice_vsi *vsi);
>  
>  #endif /* _ICE_VSI_VLAN_LIB_H_ */
