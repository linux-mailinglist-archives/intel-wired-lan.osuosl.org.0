Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 894D099508B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2024 15:45:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30FF340521;
	Tue,  8 Oct 2024 13:45:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s-Clkpm0sXqN; Tue,  8 Oct 2024 13:45:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0469A404E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728395153;
	bh=A4jeWc5H0VS2+mPI5zFsb3Hfxy+EiUu6IZAgDXbTpO8=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NlyVLv7H9QhlYxI4n18Lpm+DejrOO95Lv5YvWe07bNQVNPJRdtT1wIvBMgiMbTCtI
	 fgop3HUzmOa2lEKSc09KruPcs0UAiD8hBXc5lDFES1hH6MiGdrhKFDLf0Y+zy/kI2k
	 hRTuB9n6AwLa3tk47Ple0axnY9eXdcCnVa2pBoZemdkaZ6ZoFkNfBTsSFlPfA6zRez
	 9zRWgUTsiz+gWXe6bn0cpfS67Es0BSaxDoCjo5XUB1bVjQT/kHsro3Y9TD6G9DRzOH
	 rfA2+RARo09HrpHrOLWlwB4vFIYnJazInpd0oJDkNkbvk642MN9vRbEc3jtsi4maMB
	 kcj5Ru3ejD0RQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0469A404E8;
	Tue,  8 Oct 2024 13:45:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73A3D1BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 13:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 609CC400C8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 13:45:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wb2dY0hOlkkC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2024 13:45:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1C8A1400A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C8A1400A6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C8A1400A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 13:45:49 +0000 (UTC)
X-CSE-ConnectionGUID: g9d7jLA0QXaYPbWExml1wQ==
X-CSE-MsgGUID: 1Ly7Uz6nQBSnzWw7o7EhTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="31376186"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="31376186"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 06:45:49 -0700
X-CSE-ConnectionGUID: aBtBre3iTrKK/ybWxSjPeA==
X-CSE-MsgGUID: BmYSb/4bTqCnvNqkHVpftg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="76218466"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 06:45:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 06:45:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 06:45:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 06:45:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PJl3Gx91JBBDc+O6NWVlBkLapTafxoMenHFHGJADonjdode5HoOz1kt1ou7I/9l6+8Qayr15cptZ20MABIH886oB/Uj0pgRLEJZQl68jLADvfziP3e7mpuj2pmVhmvUavEGr6bgTwCMmRQ5pWarv7klF4L9hpBHL1uuWABBAIgJ169yQSqSxbo+mkL7v8u51vCaR31QdPWgrQh3K39KYIxOyQa3Cy3xMaIdBgWUfQW+zj3ORJH8ky0n4xWgpLyrTPhAfbRqfvouAqkSuJhA+UxEgkwcxX8WgcC5o9uSYU/XKvCqnHnW5svNhZdcmpl8SicsiwBhYwgiqm3YQs/hmfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A4jeWc5H0VS2+mPI5zFsb3Hfxy+EiUu6IZAgDXbTpO8=;
 b=uYPCndz6oKUvYP0zxMyUWOG0StbkccKhmWEt6BwKc6CQw8kR3pgxERlfaln72umf30fwzyMTfkH/g+Usf/qvmvETQQZeLnY7TeXlZKsyR0fANB/SMLckTKFIzP+Ah+XzKLlMU1TZEO9vQjW+CY2GnuqdbYgwV8pA93hqM4D7Gg1jvqkS81aR1/spnWOOhmST4mvTvWrTxXSaupdwIuWWAM+RqSgYiXcLSDjQ04XyvHT2pHyZhOEXsN/FEg3uvsrCYhNZ1nEGH8TvyJMsg3+vLlV7u+wrWvi6Sx+SBsiY75Nai2u0+04NhmMeHfG2Tf9YpuwhE64osVy14DQonjEl7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4194.namprd11.prod.outlook.com (2603:10b6:a03:1c0::13)
 by MN2PR11MB4744.namprd11.prod.outlook.com (2603:10b6:208:263::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Tue, 8 Oct
 2024 13:45:44 +0000
Received: from BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61]) by BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61%6]) with mapi id 15.20.8048.013; Tue, 8 Oct 2024
 13:45:44 +0000
To: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>
References: <20240930171232.1668-1-jdamato@fastly.com>
 <20240930171232.1668-2-jdamato@fastly.com>
From: Avigail Dahan <Avigailx.dahan@intel.com>
Message-ID: <c6210bf9-be61-4d57-faa1-962c3a51ae87@intel.com>
Date: Tue, 8 Oct 2024 16:45:38 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20240930171232.1668-2-jdamato@fastly.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::11) To BY5PR11MB4194.namprd11.prod.outlook.com
 (2603:10b6:a03:1c0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4194:EE_|MN2PR11MB4744:EE_
X-MS-Office365-Filtering-Correlation-Id: 6beb44a8-6f3f-4402-6158-08dce79f81bc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TzBET1JrdHdMa0RNbjVWZE1tWDZxOVI3SGs1ZUNoUXdyRGhmZ21DTjgzTFFh?=
 =?utf-8?B?YTFXd0NZUDR5TDNkYzdRNzBzazNMbVVOQm8zbUVyK0tzOHlzZjFINGx0Mk15?=
 =?utf-8?B?d3FMd25jejFzZDJKakg2TXd1ZTJUVzhhTjhQUjdwQlVhS3kvcFBCdzJLR2d5?=
 =?utf-8?B?QkpZM1JZZmI5T2JUck4rVVJuajBUTDl0SVlMeDAvbndlZXh5NmdMaWJ0QzJB?=
 =?utf-8?B?cVo2aFovRW84VHR1SUV6dlJ5cHdGcjd3eWI4UitwZ1NzTzkwck5ZVTdILy8r?=
 =?utf-8?B?SnIwYUtSc1RyeTNYOEdWNnlNRXBDVVhBYTBvVzFGY3pmTFl6YlBjcHUyYnI2?=
 =?utf-8?B?cWtqSis2SzVXbFZmNFo1VkVMY0VNQTVXS3JEcDh4Sm9rcTRaa0RjeHFqaEw1?=
 =?utf-8?B?dDVsdTNtK2Vqbi93RW1PUGZFdTBNZ0pwOUFlUnV3dXVhVWhaOG8wRzIrb21i?=
 =?utf-8?B?VFJ4bXJKaUtJblBTTG15MjRQVTQ4NnN4eUdkaEE5bU5zd1hyd21iak1rZ3l4?=
 =?utf-8?B?WEl5N1N0a1EwRHBSR0RheXNiQ3hOdTZna1JWY0hmR05FdU5GalB0MlRFZENz?=
 =?utf-8?B?dm9WWFBRdXlQUjg4Z2IxN3FIdzd1Z0ZYaWdWM1RHWkVhZ21RVXpRK1lqWTB2?=
 =?utf-8?B?T3dwdktxcWlBOERBV0pWYjBWd2VJUGgvU25XQXVETThJWGM1eXZYMmdRMnZO?=
 =?utf-8?B?UEhGWkQwOUVpZ0N4UjhYK2ZvajMya1dnS2EzSXo0N3dDaXh5Z1ZnL0JHM3J6?=
 =?utf-8?B?bklqZG1aZnpuT0E1N1RPNmZudFJMTFBtTWhQT041TVMxTk9ORFV4Z0czRDlR?=
 =?utf-8?B?eUtaNGlCcXNHdHMyeTZldjBFd2QyalFrWURWb1NESjgxQURjTmUvaDYzVWxV?=
 =?utf-8?B?c01UMGdjMVZsWm9lWE1HREVJLy9YbzdDS2hURVc4eVlqa1lFWWdXMC9VQXBP?=
 =?utf-8?B?V211KzRKNHpFMVBWVjdtaXNPYU9NUXhCRDNaanVJaXIwQTFFYXNiTjR6QnN2?=
 =?utf-8?B?Z0tuVEx0bldEK3FEbHNpZ0FPdW5wSGZBNkdIbk9sOTFtcXRxOG1lZXNmS3JO?=
 =?utf-8?B?ZmVqZlVxWFl1SFpldzh0RzRuZTRjUW5vL3JadVBYMi8rSGNjUFh1a1RscG5H?=
 =?utf-8?B?MytSZXN6cTd4ZVE4NW1IZHFLV1dWNTB2TGRXeWZjejBDUlNuUEVEY21BSm0y?=
 =?utf-8?B?TzMrME5hdms5a3ZvNVFxTXRPNHdvMEZULzZPUHhyc2I0TGFNZFJyL3AwVERU?=
 =?utf-8?B?NjNpUy9NLzhvK3RGNHZlUVJFWkxQQU5GMmplOCt1K2c2OTRsWEZ1SHJpYVB3?=
 =?utf-8?B?ZXdLOWd0d3FNUnoveEZGV0Q1aTZlM1ozRi9mQTBtbEJIV2hoUnR1TFJ3Z2Vx?=
 =?utf-8?B?Zy9JSllYb3djd1FXV080RzltMzhlOFY2cjVERDVjMnpPK0VPQlR5eFpNRTUz?=
 =?utf-8?B?QTRwYTE2WTRMQ1pXVTNIT0hmN0ZuYTd4MXhSNkhQd1NhSzJVUkZEV2dVRWRs?=
 =?utf-8?B?NDVnd0VLSHA3MTB5NXZVSGZYNzl5RlJSMld2aENzTnNJaHZGdElVY04yMytp?=
 =?utf-8?B?bXhrOFdvdVJKYWQ1SUM0anpnT0V2dk9jQW9hdkJWMjJuNkZIb1ZVYkowcnFO?=
 =?utf-8?B?K29ZNUpVN29WRFBmSnFMVnFzem96ZWtMTVZKVVZnN1hDeWgzNFB2cVp2RHJN?=
 =?utf-8?B?ZUg5aUZZS2VPSGQ4a1I1b3EvZWJRcHd1c1VZUFEwTHRaRG9JYVF2MVV3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGQ4MWRybTl5SGo4M1FwcThTMDV5RzBjL3Z5NGRjVmdySCtJa3hiQ1FIdjNy?=
 =?utf-8?B?N2FBQjBzaVhWdnZKZGVVVE1EM0lxaHN3MmhtVzY5Wm5RRkFZQkFFcmx5aWR6?=
 =?utf-8?B?REdKdTBVU0dKM1lEaHE3MWFuQzltdzZ5cURLSGVIVW9RWTlpQ1c4N3BEc2lU?=
 =?utf-8?B?aHRxZ3dmVlVtazVOdjZMVE5DOGlOMk1iUE5wSHRkeFdlak95SzZwUkQvaTU4?=
 =?utf-8?B?bHIvQS82MEs3OVFSVE5YcDczMTEwUlpWaDJXdFAwdWRRdWNrR1psSlpXL0t1?=
 =?utf-8?B?SE1weVcrSy85VDRPbUw3a1FyYmdieElHV2Q2UUttbWRrRVlRWE1QQ3NOeUtm?=
 =?utf-8?B?d3VNMXFEbmtHeGlpTzcyd0UyNXdaZUJ4NzhrblIvWXY5SklkdGNvV1JwYldJ?=
 =?utf-8?B?MG4rNXdrcUdwemZxdGhXMUtkaGJ5NDRaNTJmemkxSFl0V0lxbE1EaGNyUHFq?=
 =?utf-8?B?eGF5NnRhd2ptR2MyeTJ3UkNpbXdYRnErY1UrWDFPRkNpVVFyOURtQW5tSmFB?=
 =?utf-8?B?ZUlMeThDNXYwbW00WHpYTFRxczB0djcrWGs4YWNEMjRwelUzTTN1N2R3enl4?=
 =?utf-8?B?N1l1NHhubkxxRTAwcWFoM3hzSW8yMTdiR3paWUxMQUgxcTVpWEkyVUhzSFN4?=
 =?utf-8?B?RWJLaVRjZWNNMHM4MFVrQTU3NGllRmtuMnZyVkJ1L3hSOEY5RFY3ck1Ed2FK?=
 =?utf-8?B?YUU2VWo0YmFPaHBDMEFXTzNKNEgyY3YxclhFKzZjY1o3QUUzRVhKZ1BGZnp1?=
 =?utf-8?B?UXgxVFhxaWtITmxnT1dIbUYvVVBtV2RiNUszcS94akFFcUt3UFZYb0lyc25L?=
 =?utf-8?B?S09odURCREcxMEU5c1cxRktybXJzMnVNL3VFTG9yZkFQV3V4aEVzSndJZ1Jm?=
 =?utf-8?B?WENHZ2RKYlNLSVNQYkM1ZFdjd3ZCZEVpWG0vRlBkS1Yvd2FqSXUyT3dCdGw0?=
 =?utf-8?B?MGx6Ynk4Zm5SV3dEclg5K3dmVVFHOXZlU0ZQb1RzdEhOREtZUDFyZjZIRTlv?=
 =?utf-8?B?WlVTTnRlR1orTlJpYmErcDM1cU9UMXpUT2ZVTHFTdU4vLzR3MnZMNVdlUWY5?=
 =?utf-8?B?RU94YUpQNHd6OVNGdnA5Ukg5TytmMXVmUmFxRVNLSE9OU1RieUduUlNXUzlY?=
 =?utf-8?B?OFg0dXVWNE5EdFNpREZjd0RCbHRKMnRyNDFDT3E2dlVVcHc0MTRJSlMxaitR?=
 =?utf-8?B?TFAwT2dQdjdJUHZneXJMZldYYVkvbnFiZlpJeVN2aGRNT01jazRsNzFIbXF4?=
 =?utf-8?B?TUlPMktuSUhYWjlOM05GSGJqdVk4cEpIWk9MUnlIZ1IzRGdtNk1VTTVMNU5u?=
 =?utf-8?B?OHA2L21IMm93amlIT1YxaGdrU2s2TmNXSG5KUHBRRHVTbTlzY2hyY25nOFZG?=
 =?utf-8?B?KzgwUHRKOG5Ob0hxMi8zNXZKajdzaDV4V0ZKQTVrNHd1bjZYdXFzeUFiV1Bs?=
 =?utf-8?B?cU94OGowZjVKYlY0U0dTYnl2WG0yYm9FeW5Mc1ZYNzhVS3JQT3dLL2VxejlY?=
 =?utf-8?B?UExWVmRYTUh5SWtZQkludFZLaWNMVnRjckxxZTh5eG9SV2JUVTRIVWp2ejgz?=
 =?utf-8?B?SzdHSHZPa09udXdSL0cwbVN0cTZEOVBBRUFuQ1hGZnNYUGJLcnpramRyb1FH?=
 =?utf-8?B?YThFMkV0WHdlR3hCZU1yRGYzY0JwVWh2b2FNK21oMGxxQmRsVjBWMno1QkFw?=
 =?utf-8?B?cDBkMUd1Tnd2K3ZETithYWU0NHJFcGhhSUgwWlJlakwxZkdiOUtHWlFqelhV?=
 =?utf-8?B?RUVwdFBPUHRWbnpiU3dMdGY4QlpFbzFRaUFMNno5UUY2TUdnOHd0SUtDeWlD?=
 =?utf-8?B?eHIvSGJreGVRNGNVT3dTRE9qZE4vc3NpeTl2VU4zeGdYNksyMXFBTTJMS2px?=
 =?utf-8?B?ZzVjTmp1bVdGdmthaTgxZGk3S0xZQUtaODNvR3QxN3NLWTBubUpQVmFhREw0?=
 =?utf-8?B?dHFPYVE0RkI0RTFabGpKZ1JxclJDOHZ4OWhFWmxrZnh3bHY3R0NEMWc2aTZB?=
 =?utf-8?B?K0c5ZXdwRC9MVnlZSEs3RGxOVVZ3VURsUjhXSzlSMm80cXgvUkxraFphQWlk?=
 =?utf-8?B?VHVhTWdlclZ1TjZodVNVUGdhckxaM3VxMVpKbWdCZ01zQWZCejR5bkxHK0Qy?=
 =?utf-8?B?S3pyMGdLZUxmNzJ4VzUyNmpCOWd3TmhtL3c0ZG8vR1FJRDIvYkh0OXp6US9R?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6beb44a8-6f3f-4402-6158-08dce79f81bc
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2024 13:45:44.3403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VJmAp4MATHbsq2IxEQDcx9syGoU+xBV0xLIL8OgxWX+2dz8nYYe1qVAXKtYTdZumJyk3ZO9kI1VytgwyndnfrP4FOlhUitFzW/z/h7rI2aE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4744
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728395151; x=1759931151;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jnq+GTSTOxTBBm2bODCDznhrfcA+TiEguIUp+7EQnvU=;
 b=ZWD3VQw3RT3vGEsfRxzp3J+mWJKZ6+QnT6DPxS+R7JLJFOpmjCle1M00
 qtv/dC874W4V0QwFU3uXBYiFMWMySsJ/VjjFyzm1+NyaSQ6Srv6RPsgyq
 TY+kILT+CWQnRneE7B8rfohkVsURQH95hWPhEqlyTLBryNfgVkeApMN1N
 Rg/asswFZCqZhZe0R1KfgNNmt82mH9HvWA28gqc6OgshBL+FVlDaHZSj0
 MAKSrfkuNe7cUzrc6Pmkcu+P3TLTdmAa+WTgPoF29xbXHTXmPicTfRrBk
 sZeIsP3uJNxhwrsqdOXAX7q/Hjo3SntYcs7HoybRyKfnANLDUrHPfkcjK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZWD3VQw3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v3 1/2] e1000e: Link NAPI instances
 to queues and IRQs
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 30/09/2024 20:12, Joe Damato wrote:
> Add support for netdev-genl, allowing users to query IRQ, NAPI, and queue
> information.
> 
> After this patch is applied, note the IRQs assigned to my NIC:
> 
> $ cat /proc/interrupts | grep ens | cut -f1 --delimiter=':'
>   50
>   51
>   52
> 
> While e1000e allocates 3 IRQs (RX, TX, and other), it looks like e1000e
> only has a single NAPI, so I've associated the NAPI with the RX IRQ (50
> on my system, seen above).
> 
> Note the output from the cli:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                         --dump napi-get --json='{"ifindex": 2}'
> [{'id': 145, 'ifindex': 2, 'irq': 50}]
> 
> This device supports only 1 rx and 1 tx queue. so querying that:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                         --dump queue-get --json='{"ifindex": 2}'
> [{'id': 0, 'ifindex': 2, 'napi-id': 145, 'type': 'rx'},
>   {'id': 0, 'ifindex': 2, 'napi-id': 145, 'type': 'tx'}]
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
