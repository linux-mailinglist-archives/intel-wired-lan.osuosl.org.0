Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52894C083A4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 00:11:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FEC440C3A;
	Fri, 24 Oct 2025 22:10:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J1eGTDeJQapO; Fri, 24 Oct 2025 22:10:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D678D40C41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761343858;
	bh=5DyheNVJk0RAo2j9NK7DxNejn8gSv/FyxWzByNmjklA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6RqcSNHhSVGNqEUq429dBZwQZv/HRq1Kvola2cOyG/YJy6/M+QueorEi414yhRww8
	 ycDlp5zXdZRz1Qt1XJmjvRmnlHJ9WrTAMf0W4YWW0EPyypIMdbEd8DTsGbbdav3TD0
	 LMoPekwzyEz6aGWjR9U5hyLeNJlSpqRR+3jdQ30Rx/hiflfvFxQX1x/z1JR/exi5vU
	 YbBm8L18ARuXLHaYRWG0tG9v5CssOumqdhJtGoHDwrmepBKWZF44JLZwNWU1UzNzTZ
	 RmTjkRBg5uzwLLcuGqQQIvXUvq+xrCB9TGcWTliQyVZ85T6vWNNA9kCaKOLFa6qSjh
	 UERFqwlxxbufw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D678D40C41;
	Fri, 24 Oct 2025 22:10:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 44F0419D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:10:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 421B940C36
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:10:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CpvHilxs_4vr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Oct 2025 22:10:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EC2D940C32
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC2D940C32
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC2D940C32
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:10:55 +0000 (UTC)
X-CSE-ConnectionGUID: OaxPyBppSQGOJQSoG3qgaQ==
X-CSE-MsgGUID: Xc+1iUSWQEK1gefVPCnklg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62736818"
X-IronPort-AV: E=Sophos;i="6.19,253,1754982000"; d="scan'208";a="62736818"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 15:10:53 -0700
X-CSE-ConnectionGUID: hvFefdmZQ3qd3uzYjgVM4w==
X-CSE-MsgGUID: 7+68aIlXRCCo3gdmfNA2HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,253,1754982000"; d="scan'208";a="189660907"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 15:10:53 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 15:10:52 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 15:10:52 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 15:10:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IxDe4IQvt5MgvCj2UxWYUoxZmo4l2bEaFqKuFbT3LrrAK+RwlbiYY1M5mg7Rb9Nqirp7Y/pauIjd3lO63euzCx8zsJO9Eer7xG/BnPCOfECAnK+2Ccm7VkpVLkAFEjnckNR5Hz//DvGMedx7kH213avj9dXmfezFVlBZ0xTkmUI5OLj7gj6aKBQ0f0hNJXMmnuQaf9fmXatH9sLFJ8KlS+SC4j6NmvLEJCBU2uVU7aNdwVQa0eK4J0pK6uodbRMXsoCgparMnZLOlk+WsDtBQwrCa3JvdSKKWqDSuDcw/MSF0vbfi4Epqg6PtXBXXuIN3vaeGq+biwVNMr3WQ7zmuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5DyheNVJk0RAo2j9NK7DxNejn8gSv/FyxWzByNmjklA=;
 b=EYHhfTuPoyAdCLJHV0ftbLHihohNY0Xkrnig4y9DEwj9FM7tbLS4MMV3NualIEymPhtLBt5nqqG6yfCXsDg5iz4hmn6/yj2/n8YDDjc5223vnZBIn/K4/snAXLzhitEtkU8G8kFwGvof0n0OIcz4cnBn0BlSBAdVoGoCa/TOQOQidnML8/jlHUmiK//arV3M49mnwP/s1bTD0p9b3LiMH7HXSaxV1F2KmVDhmalx5O0iN8KVBsqNCsz2OJ4krrZxFDzfCB3+LeU/5XG5B04ozXAHhM88KcT5IpeM2zRDa7I0MfbL1nS141FQyRS28xl904fNBU6Wkf2HvnmltWynTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB5079.namprd11.prod.outlook.com (2603:10b6:510:3d::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 22:10:50 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 22:10:50 +0000
Message-ID: <e542d99e-8c14-461f-8c3b-28e111cbaa2b@intel.com>
Date: Fri, 24 Oct 2025 15:10:47 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <jacob.e.keller@intel.com>,
 <kuba@kernel.org>
CC: Dan Nowlin <dan.nowlin@intel.com>, Qi Zhang <qi.z.zhang@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Simon Horman
 <horms@kernel.org>
References: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
 <20251022131225.2304087-3-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20251022131225.2304087-3-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0244.namprd03.prod.outlook.com
 (2603:10b6:303:b4::9) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB5079:EE_
X-MS-Office365-Filtering-Correlation-Id: 8afdeec8-c6f2-484a-cc6e-08de134a30dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OUNyZkkvKzhtOFkxUjh4aGRKTk1pVXEydDBWckxmS2lIYS9ESW95TktvREQ1?=
 =?utf-8?B?Z294bElHWGFZSkdaTHBYNTBFWkk4bVZFOTR6U3dIdkNVdjZDNEcyR2RHQ1hF?=
 =?utf-8?B?c1BCZkpBR3pORUM2Sm1PSVpDWGVYYk52M2VCUndZRjFQc1BDYzFBOGZhQjdh?=
 =?utf-8?B?OUZTU0pzU1VsZmIrdXB4emxXSmFrbjVNemU4cThubC9QZWVtZEIzL2NVQ1Fl?=
 =?utf-8?B?azlwNEZuOFpkMEV5TllXQ3NKaWNweWJwZ3ErdmZRaGpEeW9UMlFYWmYzZVVr?=
 =?utf-8?B?c1hiOGJ5MC9ad1B1WldoOERnVmw5c3NKZkswbXoyWHI4ZGM5ZC82UnhzdGw4?=
 =?utf-8?B?bkt2VkVIVjlGK2FEUjl3ZzBTU2c2UU5CRUttbFhjS0dJKzVlb1AvVEpiY3VR?=
 =?utf-8?B?dW5DRTFWVEJlSGdyaTNpbjk3d1QwS1pHR1BMcHhCWjRvZTRPbGk0eFBtRUN5?=
 =?utf-8?B?b0FFVWZMUTlJM1dzVDNwbDRDQThPd1JZcTYwOTZFYlBqZE5VZW8vZmpWSm4y?=
 =?utf-8?B?enFuWHdEc3NxZDhVTDkrT0pQZXV1VloyaHhiVXV3YkRzckxFeEdWYXNMdW9k?=
 =?utf-8?B?em5xbTBnU0lpZmNyLzVTM3FMbDB1U21MUzlpZ01DOWd6bUtFWUpzOU9wczll?=
 =?utf-8?B?OFo1amxKT1czWEVjNThFOFJ1bTFQNnJaZzZranJsN3FNbFFYQ0FqRmtidWpz?=
 =?utf-8?B?UGhLaFc4RzJRT0dwYmIxU0J3am82NUl4cEVuZnZEcU9WdG5rYU9ncGJFaHA2?=
 =?utf-8?B?VllVNWlQN3JDODRZc2swclJJWWdxUUFUT0tDYUZnNGRuektJeXBtRFRMbXhZ?=
 =?utf-8?B?M2JWQkRQYVZMZ0tXeGFjK2dVeFRqVE5jWnRjNjljZ29BUVhaTkp5S2hRR0dY?=
 =?utf-8?B?Z1BJM2grQkdhbzRxUTM2dU1sSWpEY1FpZ2hPQ21rVEowTnRncGNXYVZnZC82?=
 =?utf-8?B?a1JwS09ZdW5JMndZbXNzb05LblFCdnRqS1I0Qml5Q1JZUHAzSWFhRWpwek9E?=
 =?utf-8?B?ZVpGMC9jOTVHOGZtUFdDbUJVNTNUeEQwbkNCSmxpRVFmckdVUC9uQUpaMlpm?=
 =?utf-8?B?T0laRmFBWVlDdnZZcXRDUCtQZTBZc2ZyQkF4dWdZSkFPckR0U0ljWFJXd3po?=
 =?utf-8?B?VXYrNGZxQlNpQ01BMDFibUVnSE1jdEN0VENra0VqVnZFZVJCY0lLWENuU1dv?=
 =?utf-8?B?T1NHSGova1ptRVhnS3hDMXU1bmRqeWtUUWh1dGhEcFdvTjhEVXExQWRkSmN5?=
 =?utf-8?B?dEptbmdUYmM2WjFndjZwWldycTdPamNBNmQyaHhod3g4K2JxNjlDOUV4d2M4?=
 =?utf-8?B?TlJsU0Npbm16RS9NZ1VVN0Izc2lzSC9mSGF1bzZMaEY5b1QvVjR4ckdkOGpJ?=
 =?utf-8?B?VUE4UTBEQzJVTlhoM1FEc2hFa09MWXRsQ01lQ3lDL3FCckdrbTlFWVBJUjhO?=
 =?utf-8?B?TjRIMXZpZjNHQURZcHdzQzJOWXJxSHcrb0pQY0FTMXJHZng1R0hlbWtEcXFG?=
 =?utf-8?B?OC9wUlNYZzM1bVErQzhRR2tUaEx0b2J4dWJncjRIdHAvN0Z0MVQ1V3l1cEgx?=
 =?utf-8?B?TmhhQnBGbSs0cC9kTWlOYWRDL3BYajh6ZzB5RTZueGVQNEpNdEtjajduLzV3?=
 =?utf-8?B?RFNZOUYzdjFETVo1SGNrUE5iWHNraFM2Y3NadlYxRU1TazIrbU95Z3kwbG1l?=
 =?utf-8?B?Nnk1ZDd2dDVQSmdjYTNFOEN6dkNwaFJvcXQ5QVJBMCtWU2VMS1FFazBCaWZ2?=
 =?utf-8?B?eWRDcnhVN2ZYeTE2WXNTTWozYXdaNWNHYi9ibHpEeTRoSmNWT0xuZWt3Q0M3?=
 =?utf-8?B?akd2MW1BUlUxaW0rb0RhYU1yQ1JoNUdyUTNjdVBFWFJvdXdzSzVnTER0STlp?=
 =?utf-8?B?QTh3RWl5b2RhU3hBZWJ5Q0pyT1NwUkFEb2VwMThNVWk0bldvcFd6cFgrck8y?=
 =?utf-8?Q?t+uMrdOX3jjSxHEun5TVtAcxirpcsaxQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWlhdXJKVkZ6TG5YbUdjb0VlTHpPY2gxcWpBZUdxRjlQODBENk4wc3NWQkUr?=
 =?utf-8?B?azJ1ZUo5UjVHQlZXMEszNFlPWDRNemlDN3ZQK2lCVktxN1A0cUg4R1AycVhT?=
 =?utf-8?B?bHZJblhEdTZ0T1J2RWo2citQczlnc2dBTW51RnNRam1PUDQ0dGpHWmIrS2JO?=
 =?utf-8?B?ZVhOakFDblU5S2VPVGxQMTVrZFVsaFkyMzhQa0diZHQzOUkyazNTUko0S3pY?=
 =?utf-8?B?THZ4a09aeUJsaHpja1dTNFZONXZVTGF5RHBoWWR1REJiRTYzTU1kSHN4NE5N?=
 =?utf-8?B?Y0ZlWFMwb3lqM2VLWHpDb3VUZWd1UlkvdjZZNXp5Q2RneDVWOGlROHdTTmJz?=
 =?utf-8?B?R29JMFhxcnNJYjJqYnF3Qm9IVExOVVVWT0prQWJrMVZndlA0UUpUeE9Ub0Jj?=
 =?utf-8?B?WWMxb2k4NEJEOFZZMldUUFFYN210QTRBTG45WmtlTVpkUVF0YTNCWTBNYkJ3?=
 =?utf-8?B?aFFEWUhoRWIzM1gwNUREWTFESGlXVnhGUThPZTR1VG1oNERrRzNGdERNUWUw?=
 =?utf-8?B?ejIzYnp4VzQ2R0Q5WTBrOEp6UGFncmVPdkVydlVpVFNPY2JJaC9OUTdZNVpt?=
 =?utf-8?B?d0V2ODJGMkwzb3ZHblV6d3BKVW80aFZmbzVvZ2kxdGxjZDZPYWRWVUFEZHJj?=
 =?utf-8?B?SEtYelZha0hCWGZPMmZCYU1teEdXRytUd2NJVjd5eFRhakxsRngwd3diSHky?=
 =?utf-8?B?TWlvdzZBc0w4VDJOaEw1TTBZQXRWaHBMeDdqR0Zxd3NKUDlzNkhsMHNENVRs?=
 =?utf-8?B?M2lGbnhyS0NXckh0VFVCcjNRc3FydUN0TUtjSjdvWnI2cTh1WWZXQzZWSTdz?=
 =?utf-8?B?dkNNZVVwbTJnUWVNamQxMDQ5VGJTOUhsU3hiNHVPSWJYeFh2TTY4NURsZCtG?=
 =?utf-8?B?T04yaVBVMWhlQWhhaHdXT2R0OGkwZzN3U0hxaHZOcGxqZFl6QXJsbk4rSXRW?=
 =?utf-8?B?VDNyOFFIdXBZQ0VOSkZTY01Pb3EwVmtzUDNBVUErRHFkbnd1bnVjcnZkbm42?=
 =?utf-8?B?NUluSkswWHBGRkhzNlprRy9vOFJHZk1ScGR2S21pZzk3MHZGL2RuTGxDV0xp?=
 =?utf-8?B?eE1DcmRneUhOQVRXNmovZFBDWmJYYndNV1FraFdDNFYwMXVQUUZYYXV1U0xp?=
 =?utf-8?B?clFoWVhaZmFnam9lWW5lVmJtOHovOVpYU2tmSTRQcHVzMFdMQlF3TnMwMXBp?=
 =?utf-8?B?TFRkWUFlTlNZNWwwQk9ZKzFPVGNuUWtGSUF5T2prVzZYTnRhQkdWSmVZS0lG?=
 =?utf-8?B?a3I2MWFId3BPQ0twa0Vsc1BtN0o1YzU3Nms0Ky96Vnl4THU4bk9aREpCajRH?=
 =?utf-8?B?RWY5M01hWHhPcE1LZnNtR04xY0ZQaUpvTXYwaXZVSFpYYjg3Wm5mMnNQc1hU?=
 =?utf-8?B?eXNnUkpLZjhBSnZ6L3U3SmdSMmpOUXE5M2E1L0NuQ0xTcWZXdEJ4T0FiQi8r?=
 =?utf-8?B?OWJSVzZ6YWdMTmk1bU9RVm5qM0hQS1MzU244U1ZkY3owUDkzQ1pFdkZTRms5?=
 =?utf-8?B?NkVqb3BoUVBhTndGY2t6WGlRazZ4amhsS3VqS3BRRUNYbnVJU1lnYWVDSVdZ?=
 =?utf-8?B?WTR6VUFwcnpNMDFXTUN3VjhWYjVkOE45ejg2VGRScldEVzlhQzNad0hLZXlq?=
 =?utf-8?B?aUluR0JESHZEV3dlc0NWek5aM0hTYVNSaFNRallLUXlweVNqUU11WERnNkxt?=
 =?utf-8?B?UnRvSTdqNkgyTVNEQldpV0xyTDZsaG51YkM5MTN4bG5Hakt3ZEYvOXd1Q0tx?=
 =?utf-8?B?dUxLbXJSeGZIT2VTdXNvbVZsbmRHLzRNbWFGNlpvcFpJOXZvVXNiSm54b3I5?=
 =?utf-8?B?UTB2SFFjODBBZ1hQUmZkQnBNaHhZMUJHRk53TGxSNnZGREpwTmNoZmFMaEpm?=
 =?utf-8?B?U0dGZmtZak5kOTlscFgrU2dURjJGZm1tUHJsN1BCaXRNWmhRQ3NsWjltUm5j?=
 =?utf-8?B?YXp6S1ZNZG1Lc2s4akdDMFU5Q284bzlLRFU1OGdXNGlxMnJQVzBOckRTVmVv?=
 =?utf-8?B?V2VnM1RuUlVmTEVyNlJNNjA3ZmVmNGNFZEVwa0dzY3d1emM2NXJ1ZGhXK04y?=
 =?utf-8?B?OSthbWwxWFVpT3VGdklvbFhzbEhuQkxwalRJTSt6dFhvemdaNFpXQXVFdnBt?=
 =?utf-8?B?YVZTc1dtT0dINU5sd0w1eXRnaXVOUUZlcHJLV2tZaXVZK2ZkL1JmVWxUcXlz?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8afdeec8-c6f2-484a-cc6e-08de134a30dc
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 22:10:50.4044 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BgelAzEXInbm+JRuRJCjMnUfX1CgD9SXdbyNXacw7WfocEg4r1GRQKaAdw6tjaKv3/LIV6BJPPOf4TCEboYrinKgr6vr/gaSYZLhY7Ov93c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5079
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761343856; x=1792879856;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MEy8+f9xwhvKaTC4QuLDd7ahPiUgxVGPpu2Qi6JxuHw=;
 b=O+RF4BcV5mwYU0O0C1zBI+S3TqP1rD4HcpPFLAusIFBTcZQDXu7iQeAd
 1BpV+x/g0Hg3AnMkQAHKChj6sFb4lnmIaep1OD2Bfub6xN0cOf1sUzs22
 KR1HwYjfnZ31Lpv02SQO8h1qrrkXYWQxVbK3MyYhRnnZcQwqGCwat6j+U
 RFZAgKxwERQFEUK+GzNB670SF/NDO49qnXQsXZzaOGY4zFckDN2QANl9Q
 2vh/YQIx0ljXSrbzsZTnCuLht6H2JN56Vfs2OGYRybuIeXWnkSlq8wLCZ
 gqBIGHRiOXdDSJzW+/R4HoHxfI102UWG4ysBFNUI1p/7usuF531B7bH8k
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O+RF4BcV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 2/6] ice: add virtchnl
 definitions and static data for GTP RSS
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



On 10/22/2025 6:12 AM, Aleksandr Loktionov wrote:
> Add virtchnl protocol header and field definitions for advanced RSS
> configuration including GTPC, GTPU, L2TPv2, ECPRI, PPP, GRE, and IP
> fragment headers.
> 
> - Define new virtchnl protocol header types
> - Add RSS field selectors for tunnel protocols
> - Extend static mapping arrays for protocol field matching
> - Add L2TPv2 session ID and length+session ID field support
> 
> This provides the foundational definitions needed for VF RSS
> configuration of tunnel protocols.

This patch doesn't compile:

drivers/net/ethernet/intel/ice/virt/rss.c:41:41: error: 
‘ICE_FLOW_SEG_HDR_PPP’ undeclared here (not in a function); did you mean 
‘ICE_FLOW_SEG_HDR_ESP’?
    41 |         {VIRTCHNL_PROTO_HDR_PPP,        ICE_FLOW_SEG_HDR_PPP},
       |                                         ^~~~~~~~~~~~~~~~~~~~
       |                                         ICE_FLOW_SEG_HDR_ESP
drivers/net/ethernet/intel/ice/virt/rss.c:42:41: error: 
‘ICE_FLOW_SEG_HDR_ECPRI_TP0’ undeclared here (not in a function); did 
you mean ‘ICE_FLOW_SEG_HDR_GTPU_UP’?
    42 |         {VIRTCHNL_PROTO_HDR_ECPRI, 
ICE_FLOW_SEG_HDR_ECPRI_TP0},
       |                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~
       |                                         ICE_FLOW_SEG_HDR_GTPU_UP
In file included from ./include/linux/bits.h:5,
                  from ./include/linux/ratelimit_types.h:5,
                  from ./include/linux/printk.h:9,
                  from ./include/asm-generic/bug.h:22,
                  from ./arch/x86/include/asm/bug.h:108,
                  from ./arch/x86/include/asm/alternative.h:9,
                  from ./arch/x86/include/asm/barrier.h:5,
                  from ./include/linux/list.h:11,
                  from ./include/linux/hashtable.h:10,
                  from ./drivers/net/ethernet/intel/ice/ice_vf_lib.h:8,
                  from 
./drivers/net/ethernet/intel/ice/ice_vf_lib_private.h:7,
                  from drivers/net/ethernet/intel/ice/virt/rss.c:5:
drivers/net/ethernet/intel/ice/virt/rss.c:167:25: error: 
‘ICE_FLOW_FIELD_IDX_PPP_PROTO_ID’ undeclared here (not in a function); 
did you mean ‘ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID’?
   167 |                 BIT_ULL(ICE_FLOW_FIELD_IDX_PPP_PROTO_ID)},
       |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/vdso/bits.h:8:45: note: in definition of macro ‘BIT_ULL’
     8 | #define BIT_ULL(nr)             (ULL(1) << (nr))
       |                                             ^~
drivers/net/ethernet/intel/ice/virt/rss.c:179:25: error: 
‘ICE_FLOW_FIELD_IDX_IPV6_TC’ undeclared here (not in a function); did 
you mean ‘ICE_FLOW_FIELD_IDX_IPV6_ID’?
   179 |                 BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_TC)},

...

