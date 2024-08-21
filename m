Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D53109596C3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 10:44:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C71A660AA1;
	Wed, 21 Aug 2024 08:44:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ffb9Q5ubd7jI; Wed, 21 Aug 2024 08:44:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B925560ACC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724229851;
	bh=WWARpTBX5TQ4d9ecE2I8rVsTHbAdpgLTAWYAErhfgrI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jZ36sxwvGRQp35EfHG6cH7sawhJSWKJQXs/3gLIwlJn/zP3/rXoJp2jDibcLj/jGe
	 s0aBxo7DyLH+9xPobNApgl98IUOPGLSkQ7zECHQ7yNje2WyrtmJf8q0SKAPvyYRKtV
	 Zmlb0/DHbwHD2tmtULuGvqsR38Ig/RE3JVF6KdYoPdhE2RESBxot5nK0R23xVu6s4d
	 bC73d2X0LThMFcKbR+6Qo+qpiUbRRAYAVTaTTCd8nR9v5H9JsAg9MtBjGj4zSDFoGt
	 zVIsT2ONEdl8Xc4RafQHxOITACSiv5l0rHrQPy/drNWcheRkb2J0cBJUIcHBAGPwvP
	 OyqbOq9GMaGXQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B925560ACC;
	Wed, 21 Aug 2024 08:44:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B7C51BF97A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 08:44:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 24001402EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 08:44:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZxRESb2jFg5y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 08:44:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 62CC540266
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62CC540266
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62CC540266
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 08:44:08 +0000 (UTC)
X-CSE-ConnectionGUID: COwpa7P6ThKA1viTYgwuCQ==
X-CSE-MsgGUID: dhP7Qa0iRKWIsPUCoX+m2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="25473314"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="25473314"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 01:44:08 -0700
X-CSE-ConnectionGUID: ASdwLhgJSZm3yLxPHwib2Q==
X-CSE-MsgGUID: LXaz1GzJRm+b+tEpDDoWkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="60750158"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 01:44:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 01:44:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 01:44:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 01:44:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pzvE7rJJe08uMXtBg3yfZqHtFly/L0cVpwHz/jGg++qXffCUgz2mGguyrUi8UAbRBuqnnlNi9q+3X9L5SNbfbvmdKtALJe2IZbUYgs5TwSoSJcmjqf2Z/lCtTvgLMMyUq1WNtiPLMBNYwHrf5Vmr2Le/7/f3LMUlJ/MvhuMWsBIosxLrIZwJwXG3PsUih+s8t8grAQrMBvXlz5NAKSL8Cu3MIpdUcjhdkzGMNa2qfMNi9795gviY2U87kNfyCqThzW76exXdZSHZQlh91Wls90yHJtcprmNel757mbgaa94rdfLDB8GIkeuckLzhUFAvhtO0XLC32tFV7OYu7nfnEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WWARpTBX5TQ4d9ecE2I8rVsTHbAdpgLTAWYAErhfgrI=;
 b=bjuISTvNro/WNLzONF5SzEiWCoby04VkyaL4yR2pU7E1nmvtYAPoU6X2xH9YPwDPzHOAhQGGI7BXGrl5fMrnAgMmGOp4sYfG9Ye8OaRFa6oaclfelQIDibAXNjUcD5ne9mTFQdHvJ7wG0+llvgwVouFC2xP9CeBoRf5R5zedWsmU5WHkBoQhm7p4l4lhmsCbzVZW/8lpRbTdWnqMT/f9sLWYK5rSWDccGlELI38npD3UwvFRo9lrD/PSuOV6yTiRfKqN/iUjh6ekgZ6czEfF+21rS8Nda4IRL7ss8WjXj9lA8K+ig3EtWjFw9uqO6cMDomUEpw75he8oGsPoxjMfsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ0PR11MB4974.namprd11.prod.outlook.com (2603:10b6:a03:2d6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Wed, 21 Aug
 2024 08:44:04 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7875.023; Wed, 21 Aug 2024
 08:44:03 +0000
Message-ID: <190cec09-37ef-4649-9a69-7cab32b6d35b@intel.com>
Date: Wed, 21 Aug 2024 10:43:58 +0200
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Dawid Osuchowski
 <dawid.osuchowski@linux.intel.com>
References: <20240820161524.108578-1-dawid.osuchowski@linux.intel.com>
 <ZsWHsaUbYo9Qb6v2@boxer>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <ZsWHsaUbYo9Qb6v2@boxer>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0227.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8c::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ0PR11MB4974:EE_
X-MS-Office365-Filtering-Correlation-Id: 078180a3-03a7-4bda-4d15-08dcc1bd6915
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YW9VVXlKWUdZd0ZhYm5WNlNib2FqSUdPZU51WkpxbE9MS3BLRElCY0FhOWJH?=
 =?utf-8?B?ckczNjFUMkVwaVJmcUk4Y1lpZE5OdWJlZjhRNzc3eVNLcVFxenNEV3VwbzlG?=
 =?utf-8?B?U0ZkblV6aVhER2NXVXo4TUFBL20wMGFtTnVBVEQ1VUpoNDZDLzZkWnQxMjBQ?=
 =?utf-8?B?UG9EYnhBYjN6b0g5Z00xakJBVW9ISW5mVjh2WFYzSmxPaER2YmxZR0RPSExU?=
 =?utf-8?B?bzJyUERUUFdWNTZpQWxKRVhZdWJxdys2bHJ2WjhEaUFhcnArbVpNN2lsTEto?=
 =?utf-8?B?YU9OMGN6bjVxSGdOYjREMTRPK0F5L1VXSDI2OUlldE83VHVkcWEyZzBFbG9H?=
 =?utf-8?B?ZXNURk9kMnBoNmtBNjA1dHRKWlNxVENyOVF4Y2l2RnoyRWZrNkhST3huMUFW?=
 =?utf-8?B?blhVTTh4Z083VlAvUTNGVFJhRWQzbE96ZHM2QzI5YVozNEtMNDZyMEo2eHlu?=
 =?utf-8?B?M2ZHTUN1enhoZXJuQ2wrQ3lieXpSS3FNbk9hWmMvWFNBditUa05mUmVQN0ZD?=
 =?utf-8?B?S0xtcEFYcEE3ZHZ0dVdmUWNxUGt4OEdFTDYxaWlRMU5va3M2WjhsYjFOWnpC?=
 =?utf-8?B?TXpydlNOb1BqTGc1Sk5SeDZSRUhNQm5oUGpqbkhsWFI0N0UyQzFZeWVoRVM1?=
 =?utf-8?B?YTBjRHB3LzN2RnRFT0U2b1dOVWZrMUI3OTRjSW5peUZDaGtjbWVKdDNZTDN0?=
 =?utf-8?B?U2JDaS9yL2VmUGlxZmZESlhOelFiaWQzdDAxK3V3aGR6eHlHdjM0K0YzODEz?=
 =?utf-8?B?SWtEbGE2YkdsRnVEYUphSWlNeVI3Z2pMajFHQWQwdTZNZ0M0VG9MMUJNM2lF?=
 =?utf-8?B?b1JrK2Z3ZG9SSTlmaEh4amZ2eTkzMmxNUTFOVXk1ZDVWbXpwYkpLbHQ4K0JV?=
 =?utf-8?B?cDI2YVN4bmNZZGovRk9RdVdSYmRoQ3FxVTFZZ1VCbVAzanV0SnBidzlKOU1o?=
 =?utf-8?B?emc0NlJLRXYwcFJmTExOVnVXT2pBbWJJcXlKS0l4eS9CMHdkd2NhbmI3ZGFN?=
 =?utf-8?B?cEpwSzBmSEFPZGEwSGJqaDRoaFEzQlB5ZlZUaUFQL09MdmlXZXdZcXhHYzJ5?=
 =?utf-8?B?Y3JRay9DOE5kakQ1dklMcG40anZ1QkZCcllOcGk2eGVuN0MraXVXcUtnT2lW?=
 =?utf-8?B?RDFQVnJDK013RjYvck5sbTZxY2xwUFExR0FpSTJ2OFlVQlRLTUNFTnF1YlJR?=
 =?utf-8?B?Tk5VUnArT0lOTFF6N1NlRDFPNnZLa2pFellYQXNtYzBERWxuL2ZNWWtWUkR0?=
 =?utf-8?B?OXR6U2ZGdndsMFJRWU1VeW0vZEM3WmhxK1VYRkxkQTdObXduZ1pqMmNuOGZ1?=
 =?utf-8?B?cmlRSWF2eWxPS3RPT2NrUXZ4dU1BeklqRWhjQ2pObTFDSDhiaW4vQnRlano5?=
 =?utf-8?B?SVJKQzBzZTVWTVpWclNRQnY4cSt4cFJCQmtBZm16akJnMlpHVWZYYTZhZ2FI?=
 =?utf-8?B?ZDlDU05ZbXAxUElzN1JHTTJTM3NjRm91RFJDSXpsYVFrSlBScE9aSzJueE5j?=
 =?utf-8?B?UkhIWjlXdm1iYWVqQlBKaDlMY2RWNTh2OTVSeDZjdXBIeWN2eU9TdStjWENS?=
 =?utf-8?B?TzIvSTRUem9aczloZGw4RTRoNTI4TkVvSG5pbnpHdjQxWEFwb0syc1NmdU1m?=
 =?utf-8?B?b2JSTTVZMUxPRW53c3ZtNERSRlJOeGgrYzBqTjMzSWNFQklPUE9PNUV1R04r?=
 =?utf-8?B?aHg3SXRqWUhEbzBYWnZmTTEvdE12b0J5d1dqTWpsWmJNcXZ6azB4RlhTdWd2?=
 =?utf-8?Q?PGzaI4uCuVfqtWq4LI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEN5MjRCbEJNY3daUGFBSFlWYkV5clcyQ3VaNVBOcXltQTVkUkEwVWw3MHZ1?=
 =?utf-8?B?S2lVaG10dndjb0ZPV1pXbjdabWQxNDNmWkdWVlRwYnlRM0tSakVUV3FnbUZw?=
 =?utf-8?B?OGg3blB2SWJDWjNXRUJJOFY5SWxDZG1STGlTeFhuNlE5WXBMRDlqNGJ4emxz?=
 =?utf-8?B?bUF5RzVoSHV1VkhOcU5QTUlOVS9rdFZMcXA2S1BsOTRPU2pvRytOZU42VHF5?=
 =?utf-8?B?c3lzSWU0b3hZaWdubC9sOFFaRGRtckg2RWRBMytMM3ZOL3U5bk82OTBtYkxa?=
 =?utf-8?B?b1ZSUnUxTUw4ODRkRDRXNURwU2YxQVJwUlMyL0NBWVZUaEJtV0lQTVVFNTNm?=
 =?utf-8?B?enFpVVVtcnBTNUVURTkwdVRaTENGUEZpSThERDRwejY0eUZoZVU5MkJoNmtn?=
 =?utf-8?B?emorTFZ5ako4MkF0TGNzNUxoSWhQMUtZZjRKZWt4SDBVaTRlSDFKMFlmSCsx?=
 =?utf-8?B?SlpZZm5Tb24ybVhxd3NVa0ZrMU1URXJZeVlpVkpyb25EMGNsdnNuN1RxWnlM?=
 =?utf-8?B?THU1NCtYcG02SXFqOGJhT1VmRjd0STVnZTU5R1dRaC9lRXYyV3BUUytvditE?=
 =?utf-8?B?WEw3UVpHYWhUMU5kTG8yQUFsL3pXUDZpcUdnazJndnpvbDl5Nis2aWN2akhK?=
 =?utf-8?B?NmxyanB4TG1ERkZOd0xZQnBYRUdhUjc0UnAvZ1VZa2lHQUdobHZ2dG1ITDNu?=
 =?utf-8?B?NFVTUUo1RlJXMXFsUUhvN1drN0NDRkd6Qi9TYURLcFJ0WnQwcXVuQk9GazhZ?=
 =?utf-8?B?L2VWcTdNU1JtUWNHazNteCs0c3h0eWRuN3lvY0NCRnc5K25ZM0F2L1NDVUJv?=
 =?utf-8?B?THdOY1RUakZKT2RxNkQvOGJmeVBNOHBNVEdBMm5udkdFN0VqOFltQVh0VXU4?=
 =?utf-8?B?S3ZKZkt4TFV5UGtBWG4wdnFIVS9iUGMvOUtDTVltZnUrWnJtNW52dEl6eUpW?=
 =?utf-8?B?enlRR3FzYVpybXAzYzB2V0pmQTdZMUxQRkZyRlJGVXhwRWNjYWtsR1I5dmU2?=
 =?utf-8?B?WGEyZnlsaHVnZUMyTGdRbHVjNklrVm9jdGhvN1JRSEp0TFdqVWpqb2tyT0xr?=
 =?utf-8?B?Q2RkbnpBd0l6YWMwVjVzd2d2aU9ZWU45bzc0b3Nib0h5VEpaVlE2Q2F0RWZn?=
 =?utf-8?B?RVE0Q1pCY0x5bEZaaG5JM0NGOU9OUThWN3FhSkNCRHVlOEhyUjVsN2MrbmJY?=
 =?utf-8?B?K09ScEJYQkoxL0RyWExvK2dzRExqZzlmUk83SytIL0ZFRHlTb28zdXpIb0dC?=
 =?utf-8?B?OENGcU9LSEFxTlV0L01vcXlRdzgwejcwV1JSMzlUV1doUEJwcndsb3JmU002?=
 =?utf-8?B?aTFsOTR4NzNPd0dxd2RBclN3Q21PRzJhdVlxc2NmazVCbXdTYXRXcFRPL2Vu?=
 =?utf-8?B?cVY3eVkzV1EvbUFKSlczL3ZYOGFhSDZGaldxc0wxTDMwdWxyaVRzWkRhaTRQ?=
 =?utf-8?B?N2xha1F1V3YwdGdWZHlRWk1iUTAzMXFiVDU1NUFUQ2ZJNnAxUDlRendvRG54?=
 =?utf-8?B?MTVRbG9HNG53aFRQYXIxSWtYcnJIcEpUb3ZxMkg5a1l2d0o5bCtJR2t5cU10?=
 =?utf-8?B?KzRrWmpqVUNMdUNzbDdpZEZiL0dwaHhhOTVycE1ieUNEV2xuSWMxMFN6cUo4?=
 =?utf-8?B?R09FZDF5c3VVRE8va2tUQWRyek1iU3VhWS9ISGwxVnFnTmUxdjlhMGdPVUVX?=
 =?utf-8?B?RE15ZXV2azAyTGJqRFVGN3NRV0JFMDJUeTE2N2FmdmcyVEoydkZZYjF5S0U0?=
 =?utf-8?B?cWt3MVY5dlMyWXF0SmE1cDZER09VQjBUVEVmb2trdTdrQWx1R0ZJQUdWZU5F?=
 =?utf-8?B?cHMzaUJIMWRIb295VkR4bUFYdTMybzBkRVpXTWdkbHRoVUZoY0JraUp5S2Vr?=
 =?utf-8?B?MU9rTGFJZmNUNzVVS0JTSmpGQXA5dXJua0JmM1hseE83Wk5Gb2g2empZLzFy?=
 =?utf-8?B?RjhEL3h2L1ZZTk5rTU1Bd252ZzNRbDZnUUFlNDVmVDVOdWFncmt2RGlUU3do?=
 =?utf-8?B?L1NGaEZhM1hXSFZzNThiOVQ5UXB2QlloVGMyWjVPV2tKK2EyRjBMWHduUXh5?=
 =?utf-8?B?U1RzS1plY1Y2K1c3RUc1TG9RWEVveXZuK1RMMmE2VDB5Rm1nUndmUmIrUTVw?=
 =?utf-8?B?RGxybHErTEsrRTV6czdzRkVEVURudUlDSlV3RTNHNTlZbUd2YjdNYnJteGRJ?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 078180a3-03a7-4bda-4d15-08dcc1bd6915
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 08:44:03.8104 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nFPCpNopB6kQvjc27m7WH3H3fpAfOhvkW2sLEIfcxboXdLddFZHfqpgjWAUIvxxIfxwiu/dHTZKHtA/GLFjW7hfT5BXlGiYr2fD9H6ir5Qg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4974
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724229849; x=1755765849;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=otlZ+Z/Wn6XINTsuADaWYJ80LS9OqiJNNiMQSGF+sJM=;
 b=Re8dA/KcvmFnW5AtTuHv1qCbrGsS1sVVPKw3esOIT/zxdUDV2fvUiHlr
 iJQvea4MZqm+osR8CxWSEg5Z98ExFcbalLF3LhBtEo4b6mqY23MI6TeT7
 KnxyrtXA1K/KMqJsybR+zVN47mxBvmKDRyMMHYC45bY7qrxRaAcNomDB8
 /syN4XgCJzO1O6yfNjkNYDQlWCT/pY/7qGtX6yAVajv3DWC+vDRcT+Cyw
 EGNC26oabSfTfS5rju1voghrKg3xpbnAyznhIoI0Srsv8103cBLdyH399
 wr7CaOIRrWgKrM4RDQnOMmOxDeQEGWBVMxRKVam93o+yzYLXL9Y4jOvZ/
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Re8dA/Kc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: larysa.zaremba@intel.com, netdev@vger.kernel.org,
 kalesh-anakkur.purayil@broadcom.com, intel-wired-lan@lists.osuosl.org, Jakub
 Kicinski <kuba@kernel.org>, Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/21/24 08:22, Maciej Fijalkowski wrote:
> On Tue, Aug 20, 2024 at 06:15:24PM +0200, Dawid Osuchowski wrote:

>> @@ -7591,6 +7594,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>>   {
>>   	struct device *dev = ice_pf_to_dev(pf);
>>   	struct ice_hw *hw = &pf->hw;
>> +	struct ice_vsi *vsi = ice_get_main_vsi(pf);
> 
> we have an unwritten rule that is called 'reverse christmas tree' which
> requires us to have declarations of variables sorted from longest to
> shortest.

Hah, the rule is written down actually :P
https://docs.kernel.org/process/maintainer-netdev.html

