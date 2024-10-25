Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4759AF8C8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 06:11:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5E67813D7;
	Fri, 25 Oct 2024 04:11:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vAsNx_-Sz0EB; Fri, 25 Oct 2024 04:11:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFD3E813D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729829510;
	bh=71xegJEHIUU7PrWdJTYva0LtFOnnCbLFk53jLAgMggY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6b5qfGppBJXBGAkHdLtGotwFDly/N3V7nBHGOutKfCEU0cIkpKgG4aeNCr8Yn5FMK
	 ZJF8TTEmpVo32tCACPNhxgfGgmgEgHUTVazlciJJt+DJB5ey34EEXvfLJ4UepSPhPx
	 Yb2pktgCdq25wmJMsmedi2y2yYgJA3YTggQSKKCKjKNaJkTJtyCUFrv4Qw72Nj1JuR
	 xclqVrKcuM8zlSKhxvAZHpdJoAuTQ56g/LcrHVbaxLAqpmBf7+Lp5N9lbY8KDLtHSL
	 fccH3yGxFXIawxea2fvyDwUE5p9hDJKFq0u4BZGrc71oJj9TLkKdvKAjaWuk5qP0Zv
	 NLow5Sg0WrUBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFD3E813D8;
	Fri, 25 Oct 2024 04:11:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 93175497A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 04:11:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 73CF640907
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 04:11:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id As40gnbGifbb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2024 04:11:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6A446400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A446400D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A446400D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 04:11:47 +0000 (UTC)
X-CSE-ConnectionGUID: 9cDEMTblR82iyd4f0mTZfA==
X-CSE-MsgGUID: rinac0a8TiOs8thoN0sBsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="54891981"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="54891981"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 21:11:47 -0700
X-CSE-ConnectionGUID: x6gt3bUeRCmDS55MR7F9DQ==
X-CSE-MsgGUID: 9SGqycADQb6e4lNnpgVuiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="85565736"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 21:11:47 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 21:11:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 21:11:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 21:11:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YRcy//uaoLDZlCL/4rARZwGToHhgjf0i38nzZx17g49Z+NLr6rx8v8Rj0AdOST9TgF5NXltM/s80fAj/seK+TuFbKxZb1xtB4lKE+rdkt7QLbSzFqw9QmRzutjLD6mcpqeDoDje0tRk1HNG7Z7hFeuUUiXzbWLJWVlxHJh9ldq1DIdp4VsG9bwFg+bIIi7VO4s/eXaMxjwDv12p/VsfXeHBt+7CJZ34r7Lf8cpUIONgm4iPn0FAudFuM1TqriKxOvaXt0JsuIZyrHbL4dGJhRLsU1/fjL0bkYe6ZEF9FagD5bHyfbkKPp2UnNbreTKRLMxROQHaz8JxD+gCEW49oAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=71xegJEHIUU7PrWdJTYva0LtFOnnCbLFk53jLAgMggY=;
 b=x8izqv6215txscrY7ySbSNzvYzXKaklKGYhzbG/rNORaOGoYTN73q54U6/Z5goTeKBeRaftQoRqi8yopqOMs4SMseHkJEr3Q+B4ysh+gWle2sUaEUa0ioXdKFyNuo0Nwp6s/m2yNOlrm//SebBQxWWTKjyA8LKgq7NdU+1Y0B3GXc+fiADxjwu2DVqP9SGTurSYISoLpGA2sniKpzHY6iGFh1fZj+KdPG43leoQY2yFdqV1pNY01zBOJLSi4INo070laYYKwJx8LtQ8mbYrirQxxKNlCP/2uh+t7H1OCmE6kDdtCiSK9fSHm7vTz0F/8SH0N3vd7VJzQMmUBdvWAkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Fri, 25 Oct
 2024 04:11:38 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 04:11:38 +0000
Message-ID: <44cb986d-5b5a-4243-b89b-382f098e96c4@intel.com>
Date: Fri, 25 Oct 2024 06:11:31 +0200
User-Agent: Mozilla Thunderbird
To: Yue Haibing <yuehaibing@huawei.com>, Jacob Keller
 <jacob.e.keller@intel.com>, Simon Horman <horms@kernel.org>
References: <20241022065623.1282224-1-yuehaibing@huawei.com>
 <20241022073225.GO402847@kernel.org>
 <584b87a4-4a69-4119-bcd8-d4561f41ed53@intel.com>
 <b4332982-2b57-9e54-8225-cd6bee7d2cf8@huawei.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <b4332982-2b57-9e54-8225-cd6bee7d2cf8@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0033.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::13) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: decad76f-57bd-463c-19d1-08dcf4ab1f62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmxMT1lHdko0QXBWc3BsWWtYbG9acW51cDAwTjNxNFpLOXB4RWdQWHBtbFV0?=
 =?utf-8?B?SDdMWXE4Zyt2UjhnWWlsQUpjRVBTaEZaR216SEE4UkxVbk52QWplUjdLTFh6?=
 =?utf-8?B?SnFSSHF2elROZDZXajg2YkxMOXNzbFI5Q1phSmc1M1NONHJpdm85UGFYMVov?=
 =?utf-8?B?U2tnSWF2ZXpZSExUT05tVWFGcys2YVhZZVZMVEgzWWxjc1pqUmM0RStmVzV4?=
 =?utf-8?B?dXZyNFpTRjRNeEhiWXVUTUdhME1rZGwxVFNkQi9qZUVHcUI5L3JFOTJPV3d5?=
 =?utf-8?B?ZTJUQjRGWm9TUTlWM1NtcWtSVHZodlVVVE5GM0lpci9xd3l3VnhMcW52djZD?=
 =?utf-8?B?ZTdZellaWmZUeUNoR1ZEdE5BODNUaUMrMlJzNzBaTmxHSmUxUksvcFNBZ3RG?=
 =?utf-8?B?SmtndzN4d1F4RWVhWGJqN0R5dWhSNGVheWpZRTFWeDNtazA1ajZWN2dleGYv?=
 =?utf-8?B?ajgvalFITXhUUGhtVVhWVGhaV3VITFFvSXEvbWM5QkVJbVF6aFdnSkQxaHV2?=
 =?utf-8?B?aE9iUVloekZwWk1veldjMEdxR3VaQTBNOHY1ekI1bUgyQ2xIL1Zac0xsZmZt?=
 =?utf-8?B?SmRlS25Lb0xvd3BXbkQ3V0xNazBoMUZmMDdsYlRnNEtwb3ROQXdOWXJmWUNB?=
 =?utf-8?B?aU40ZHBuOGJYbEhFNDZGT3Fsb2t2NWsraGh1eWRMcnZuc3ZmVTlySGY0K1B1?=
 =?utf-8?B?VGJadVNkMWZBOHJlZTd0RzZ6eHBhb1lWZ1Z6OVArYzZSSWRFWnFrdE1LWito?=
 =?utf-8?B?Y2JWYk1mNFV4clkzK3pEbkhOa3VibVZtc0RnUlNhQzczbFkzdVhSbFdRUUx1?=
 =?utf-8?B?eVN3M1VFYUVEZWpHNWZLeDN4OExzdjRkRFZsejFYUjVxRDRPNjExY3MweFlp?=
 =?utf-8?B?MkN1ZWNSVHFYNkgzTWN1OTBuMHlRVGNmTExXZDNSUHVzVEM1SE5jRFdYblNm?=
 =?utf-8?B?VE1ENllSenQxWHhGY2hOTE4yRkFDWWxXeW9SNlkveXg2UFVaN0s0cVNJd0Q5?=
 =?utf-8?B?NmlkK3dMMGR2cVp2K3UzT1BQTHJRU2xLRXRCTGZWaUt1d2I0YjNkR3VnN0g2?=
 =?utf-8?B?NUMxdVhUdkQyaTdtZS9BTGFZdFpjS1haL2dJdG8vaFNzbUpuSExQbjJ6cVpX?=
 =?utf-8?B?Yi85TmhPYkRqRnRYMlpGVUJ0MEdIakUzY1ZybVBKby9YZWVoZ05oSGdSTVZR?=
 =?utf-8?B?K2ZIRUo1eG5qT1FCRytkeTNwZVJRVnl3aGg5NUY0blNsdnRFbkc1SXpmTGZr?=
 =?utf-8?B?UmczYkhUZ2hPamNLc2RxQlYvL2g0TDFLUGI3a0dLNUEwWU9VYU5DTkR1R3JM?=
 =?utf-8?B?VFJyeVBXN3ZJb3MvRkVBeFVNWFJaeVQ4ckdrazB4TExmeHdVSWYyYlZmUU5X?=
 =?utf-8?B?TmdnMTZSR0UvcFJabml5ZWh0YmNQZ1BicGZDSW85OVJBb1FVM0FMQ1V2OEJI?=
 =?utf-8?B?cDIvTis3Qm5JNmcvalVZOHpJYzkvS2R5c0lRUXlmR1FZdjFZc0ZoSklUd1Mw?=
 =?utf-8?B?OWppbnBDT0RpYTc4bkIwMmNyR21lTEJ6cXVVSlkwamx2aW94OTJDN0djSjE4?=
 =?utf-8?B?ZUFoVWowYWJQRTMzenhTdEN3OGFobHBubzRjWmFibWlQOFFxTGorS1U0VXZu?=
 =?utf-8?B?dU45cmlsY1U2d1lsRmRRRSszYU02Y2RCY1haL21xUHhVSWxJNjFQZGpLMUpO?=
 =?utf-8?B?MDdiY05GWGxVUk9NWDBIbkM4eU1xZGliRDRQTjg5Y2dqMXZ3VVZqTDRBb1I1?=
 =?utf-8?Q?aFiBmreWQn+TaxUBszR7MQN5VXnONJCNUu3X+EA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnhEVEN6SlQwNmY5NTduUXFqY0VVVkVaeGNwNklpQ0JwRm9obTZ3dExlNWhz?=
 =?utf-8?B?ajRrc09LVDcxRnorU2QrY1VqNGJTOG9KS0o0S3c0Y2gwY01GRGZUcXdoZ1Z4?=
 =?utf-8?B?U0RLNDJ0ZExSVXZFaXpablNMSzMwMkhJNDJYaFc5NlJQQlR1MU5Zb3ZVZHRn?=
 =?utf-8?B?ODdKVndyYytlam1TR3FLRnRxK3BWSFhVN2FiTmkwNmFNN1BUNnllMnJjaUdW?=
 =?utf-8?B?em5DeHZHSkx4VVlHVDQ2dnZNc3NhcG5LRTdkVmRkNlpDeE50bXpHZ3d0RW9H?=
 =?utf-8?B?WXJyOEJ0WUo4YVhoeWtxbjk3VGU1ZjZVTDJhaW9KcDIzRzM0MmpMRFp3WTZ5?=
 =?utf-8?B?dVR2WjZZWjFhT21VY0JsZk0rVGwvYkx2N1YwSUplOXhybjl3UVhUbFYvbUdo?=
 =?utf-8?B?Z1Z4VklsM29jdjZUa0lyK3J4eVJkYW1ESEEyckpSSlFhWTE3M2JJNlF2TCtz?=
 =?utf-8?B?MEYwVG1IUlVkYTVBSjQySHNkV3lBQjZ1RElNSHgzQytNaGVOWHFWMzNQN0NK?=
 =?utf-8?B?NGVCZjJRd1grMlMrV0ZJZVozZUtoTUVqMnRIU3BiNjhvc0pmd0Q5YlVSWHU5?=
 =?utf-8?B?REFNR25sMmtYWVhHYUNJY3oyYm1xR2ZobU9ZbHVualZQc0IvY2IwUmVueHoy?=
 =?utf-8?B?UmNaWmhHODhBcnNpaHd6eHRyL3ZZVmFxaStMdmVnSUhNMGtFR1cvcmUzNU85?=
 =?utf-8?B?ejdoeGxYRDVVQkdFT2c5d2FOVFdOSWZJY3gxREJLNlFVc3l6dDlPcW9LVzd1?=
 =?utf-8?B?TlJ0aVBuTXEwT2dJSzE0L1paNHdzZ1NwcjhJWjg3MDdQbjFrUitKd0o0OW4y?=
 =?utf-8?B?eWhnM0YrWHFRaDgwRVVqSHl4TDQ4OGtBME81dHlsWS9sUHY3eXZhOHRyK2xN?=
 =?utf-8?B?ZWI3cXI0eHpQNndKc1NRNVlBc2RKNDk4em1BMGE2TndwZWhLUTZuSHFrMWZN?=
 =?utf-8?B?dmpKaHFZdTRaOFJEM21MY0hpWFNBTlNoWnR0VE9OVlB2MUFaVmw4VFZZbFVU?=
 =?utf-8?B?UmlUc2U0ejMwbjV3Q281bTdmUWgyVSt1S2ZnZ3BFMWhpb3oxc0xIaEc5RHZV?=
 =?utf-8?B?RGoxQTlRaXBWZjFmUjFHNG14d3hjMzNXdVFtLzhpNVJGZi9rZVcveFFUbUhu?=
 =?utf-8?B?bDdzemt1aDFaekI2T1JTdFdHelFnc2pVZ0dyTHVveWwxQThPWklYVkRoQjFn?=
 =?utf-8?B?Nm41bm5HWXBRSmIxU2RWV2NCTk51K0dkeUJsTU5adzBSNVAvS09RL0p0UFZE?=
 =?utf-8?B?RUk4T1AzK1FRZE5qNnZxNmFGOUlZN2JnMjdBUGl3MU51WFlaWWxuYWNTWXZH?=
 =?utf-8?B?TFF4dThPSTNvMXVEQUoyWjRvSFpnMStwZ21UK3VzZ0xhWjJaYW1JdVJiYWxX?=
 =?utf-8?B?UkdLMEg5Q1hSeFZ1WEt5TzBRWnlkakJIM0pVOTRSN1VadkQwd2FsSmZmM0tL?=
 =?utf-8?B?RzFWcW01VTdwSmhKUFdXSm9sOGRId203YzBubjJFVXpPQyt0TVF6c0lQeklo?=
 =?utf-8?B?dkE4enhLR1NqYzJuQ0d3OVRIWHhXdUdHamp0UnRQNFVpbElFSmVOZDhIN2ov?=
 =?utf-8?B?NUM4Y1BYZ2pCV25idXJreHJzOGZYdENXTStxY2I3TWFCK20xN2ZHdU9aZHdN?=
 =?utf-8?B?NVhqNkRIY082d2VXMTNBUTdqVlRGUjZJbkNxQnhoSG5kWnhTbjBNODJEdW5u?=
 =?utf-8?B?NEdoOGZ3M1VPOTRMalJrRy9oWGRTZzZSdGxRL2c0a3FZbzhwdzhhRlV6b3h5?=
 =?utf-8?B?MjNZakdjSHdQMmxISGxQbkdpME1UTU9ZSWcrRU9DYTZuLzR2b0tYY2I3Mzh0?=
 =?utf-8?B?azg5M25ObmR4c3lhUWl1Q3E2N0o2K3dUOTVkNEdxYUllZkdkWFlLaGlSblZp?=
 =?utf-8?B?OFgrK1JIQ202VmdGZFpMT1o5TlNHZ284T2g5WUYyK2VhMGdkNzNrY0lqa2RD?=
 =?utf-8?B?VFljOFB0WW56aXJ3OHFNc3NrRVVJeElqdVJBbG9qTE1KVWI4YWdJbkFVVkN1?=
 =?utf-8?B?eVc5Vnp5QXc1b1FVNVNqSGVXUENWNUhlMjZRTDV6THhJSEVpQ2V1cGZtMzdM?=
 =?utf-8?B?cWVjaGFGWi9ESGdTSDhvcEY2Y3VPT0tHTFp2THRxdC91bDUrSXNRVVlwVWtI?=
 =?utf-8?B?MkoyNnZZbDZFZ2xzOEhSVmdtZStwaFRHV1pvT1k0akpOY1B5N0hGd3AxUkdz?=
 =?utf-8?Q?tFtG7LqLxKFqOoZS9ljrTk8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: decad76f-57bd-463c-19d1-08dcf4ab1f62
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 04:11:38.4873 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g25kymatiqp+qcdZl+GTWDp/Sxfhns/7inPMC1xz0n1lmldtTe6eeFMJc/OGqhRhWRE5DwmFwp1qwJK6hsyFhXcp3LCvhTEcQzdyl7VZOpY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729829507; x=1761365507;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MUIwsb0phQ8XStseorY1lI4Y5Z/8E5nR0DK7gWVHymA=;
 b=W+b7VsFxTbjiUfDzGiMSAJq3FQnRBlVVsKlweGVD81JwkprJ1mOpNVIu
 9ynWIYRUto6ZRg6WLB5k7321Wbtl0kiTKYc+e0+WxCNE4pu88lUQNJQDA
 7uC1ESoXtTbqtCvz6usJtnTXhgmQg8k7TLI7W0QIF8h19cWGNZSJAnHba
 J/4Njx7CH+y5jdyhM82Ouk6ppocRxs/Jyk5wvU5BImDXEuLlBAozRi+M1
 YlR3uaC3ryxMfQP5aFT8Ok98QK2mwgI/mJUo89dvplGAf5X4pGDIdg5g7
 JqP3IU4F2yfF/lfmmXuNm5/m6e2i6IUfODgtG0H4IAO+xeMH+TI8kJLNS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W+b7VsFx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net 0/4] Fix passing 0 to ERR_PTR
 in intel ether drivers
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
Cc: alexander.h.duyck@intel.com, andre.guedes@intel.com,
 maciej.fijalkowski@intel.com, hawk@kernel.org, daniel@iogearbox.net,
 jithu.joseph@intel.com, intel-wired-lan@lists.osuosl.org,
 john.fastabend@gmail.com, ast@kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, bpf@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 vedang.patel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/25/24 05:30, Yue Haibing wrote:
> On 2024/10/23 3:17, Jacob Keller wrote:
>>
>>
>> On 10/22/2024 12:32 AM, Simon Horman wrote:
>>> On Tue, Oct 22, 2024 at 02:56:19PM +0800, Yue Haibing wrote:
>>>> Fixing sparse error in xdp run code by introducing new variable xdp_res
>>>> instead of overloading this into the skb pointer as i40e drivers done
>>>> in commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c") and
>>>> commit ae4393dfd472 ("i40e: fix broken XDP support").
>>>>
>>>> v3: Fix uninitialized 'xdp_res' in patch 3 and 4 which Reported-by
>>>>      kernel test robot
>>>> v2: Fix this as i40e drivers done instead of return NULL in xdp run code
>>>
>>> Hi Yue Haibing, all,
>>>
>>> I like these changes a lot. But I do wonder if it would
>>> be more appropriate to target them at net-next (or iwl-next)
>>> rather than net, without Fixes tags. This is because they
>>> don't seem to be fixing (user-visible) bugs. Am I missing something?
>>>
>>> ...
>>
>> Yea, these do seem like next candidates.
> 
> Should I resend this serial target to iwl-next?
yes, please
(please also link to v3 from v4)
