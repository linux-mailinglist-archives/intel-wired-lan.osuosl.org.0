Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83370947BE8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 15:37:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EC5B40233;
	Mon,  5 Aug 2024 13:37:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FpqsTiWaAYe5; Mon,  5 Aug 2024 13:37:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 782F340215
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722865036;
	bh=aerCLrUS8T2wZXoZF4u4HwRZ3ZI7sSvUc7xVVg7eKLg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=duAdM6zxQVANgHFgoOqWQsbaxeOkcsW4kmGrVr9JU7JK72svKGFQSio1zXFaxi8TQ
	 CWqNVKPFCy6p7x1AbzqWr/W1VXNmqzj2tENUI0RKzt9V0GGZSIQNuVxVLzGR1XnLd/
	 fhrW9F4Q8yJCDjUtCLVk4w6FZUVA1YKHc2Oh6VqpD8MZKzBD1g76v/hcDcCINXC7do
	 kb2mclEPg3rfkSm4syXsduXtCCUEgNCmtZzUr5lk4374v/0XjjPhhoHARrzzZD2BnV
	 GqWgwVOZL6zHNnVTPtp+YKa4LGaOrdI3vpPJBS4M8IaN91A7wdl0CXh2Pr+jJjT+wQ
	 tmoVwDG83iMTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 782F340215;
	Mon,  5 Aug 2024 13:37:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24CA31BF334
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 13:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 104BC40178
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 13:37:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IU42Deyk-0H5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2024 13:37:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F267840167
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F267840167
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F267840167
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 13:37:12 +0000 (UTC)
X-CSE-ConnectionGUID: 7ABXzUc5TWeAR1/4WI5V9g==
X-CSE-MsgGUID: 9mS+LJT9RWO1bwGEOJmgUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="24695524"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="24695524"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 06:37:12 -0700
X-CSE-ConnectionGUID: 3kjNiBSHSwqQhhO7ZaIFEA==
X-CSE-MsgGUID: cAuyVC5fTJGPWKqCBRdgyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="61020312"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Aug 2024 06:37:12 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 5 Aug 2024 06:37:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 5 Aug 2024 06:37:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 5 Aug 2024 06:37:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PQl5WI/Flo7bV2o8j/eC6W3aXVjrtQE+8+bhb63ekEDGjg5Ul4J3NyQUwtzHe1yMpg6RY2EMZgzTiJ4RFGUIu9pRFS9FcuwE2kDRBKNOOMpFEFbihgZGtux0wO719vml/GG/A/bOIr2oSAh+HaxAOxyuFB+CPO+llRj6A0g7KxojsFr27JNrw1Fcgo+d/WodXUzpAPnyIfoeLSpRtQExQLs13dcz1kBGRyauN3uulEtOy3B7/2wzdHIBHdglLBGuptu3b0rIZU0mQdhG/GuVvfuRRneS9Y/RhFB5D+vVGM/kIISjwNjkCXID/furnLOTtR5uP7YX0hrqxih3b3fK6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aerCLrUS8T2wZXoZF4u4HwRZ3ZI7sSvUc7xVVg7eKLg=;
 b=rg91uvmdQh9TknUyxCqIFLhMRsA/OaMrDt9btTR8tgBwGwTaNy8zIGsJE+hX+YTIizAEzaRhDsavyC6JqqwT4ipLRhKRrYj6XPCz5l209yulTXfaA6/KjNU1mRHx/1m7J0JjQYU0BNnFtGzMd2LYvOzNTPSKyNML9x9TCICarLpIoWtdkx3+T0i348GO5tlPs+885oxbmJP09D5715zUiDwoiXz677pbD1lam/a79ncKyAvbjfk75l9pGavrEVcl/w138ZxG8rfiyTwGhwJ0nw69wulK2zsUL26LnTkJTCTYJ03vSRKtXIvUGrqacOtHfvvpLx00+7Cf9fxb/HYw7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Mon, 5 Aug
 2024 13:37:08 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7828.023; Mon, 5 Aug 2024
 13:37:08 +0000
Message-ID: <6830e66d-e019-4197-ba40-0d1662360fdb@intel.com>
Date: Mon, 5 Aug 2024 15:37:03 +0200
User-Agent: Mozilla Thunderbird
To: Manoj Vishwanathan <manojvishy@google.com>
References: <20240803182548.2932270-1-manojvishy@google.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240803182548.2932270-1-manojvishy@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0379.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:80::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CH3PR11MB8185:EE_
X-MS-Office365-Filtering-Correlation-Id: 479e3713-d139-4cf2-2ca9-08dcb553b3c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V1JIc2hFUlpYNHVIcU93NXBucEhlV3IvcHdWcy9LZ0p5Zm5MdnViTDJIcVha?=
 =?utf-8?B?MElJV2tFcDBXb204VmY2WnU2Z0dHd1VGTUdsTzFEdExHWXVQS3h5RGMvZlBi?=
 =?utf-8?B?VUdMWkozWU1lUEVRdFhPZktDdyt3SldtdW51RlJHNnB1eXdVMDB4cC9mNVJU?=
 =?utf-8?B?SkJDcmZid0dMVG1DVmRGNlBLVFNaSlRjOFR3akRMRWEvM2pZY3E1VE9zMXJk?=
 =?utf-8?B?NFY0UnBDbUJ0enJvK3FpT09hQ2R2QS9KREJ0T3dXTFcyUXZ5cUNDUXFrQlVP?=
 =?utf-8?B?VGdEMUpOWHBKcWV0QVIxY2RYMjNlU3RnanFTWjJJcnFMem0zRGtrR0R3aEcr?=
 =?utf-8?B?TEpZdDl2TSsvN3h3c1cxcUN5S1ZDT0FBTlp4bHh0b2ZscjhyRU4xenZrQlM0?=
 =?utf-8?B?Q2ZOVGJpMU5MZHJBOFhmRnJkK1kzdWd6dEJmV01LMi9iUGFweExoM1hJUklx?=
 =?utf-8?B?TWExQ0QwRGFZWkxyV1FPdUZTL3dpMVBjRjNteEcxQlZpRktKcHl3NlQ5V3E1?=
 =?utf-8?B?QlhyQ24vR0RTcys3NUVCTXFIQkN5NUYvQmlRNHpXRHJZZ0tUTFh4V1Q2YkZm?=
 =?utf-8?B?OEhUZ3Y0TEF3SkJQUlBWYVF5dW1KYjRxdW13UlY4WUZHc2xYMXkxK0ZMRWV2?=
 =?utf-8?B?K21EY0U3ZHZKNmRDRFFPcGZkaURtWU5YZG9tTXRBblRnQmNQUnBxd1htSWhM?=
 =?utf-8?B?cXg1OERnV0xSL2VHbHBjL2V1S3ZRcTdwcGowTlRIczBkTGxPeVhjUnRWRUpG?=
 =?utf-8?B?anllbFlMaEMyampZNDJtZ1pFY0NuM2dRS25MRE05SERPbzRpWjUzWjlMK3ZT?=
 =?utf-8?B?bzBCUXNkUm5TLzhCV1RsYTVYR1R5Zm4yV2tBbTc1YVFYbzRiL2dyRFB2YTJZ?=
 =?utf-8?B?QmN6UG9SclFjc05yZG94eE5Yb1NoOGdTKzdnZjRDNHMyOFA3bjRxVGtKemwy?=
 =?utf-8?B?VW9wRHl0bnMwRzMvYm9hN2JYblgyQ0ZjQzQwQ05vNXN3cm13eENTZUN1OWlX?=
 =?utf-8?B?dEUwZ2xhYnVnaFg4YzZ4d0dodWFwKzRVT3NsY0xUa1A3RngzZGFqc2RyQmN2?=
 =?utf-8?B?UVBMNzZkOGVNcS9KSGJZY05sdEhxdWNNNGZVbnloR3JHQmh0a3BrUnkwcDc1?=
 =?utf-8?B?NjBuRlNIdVJ0MUVzdGJMYVFxSzBrVTg1anR5L0F3TGM0T3ZpS3BHak1QOU9w?=
 =?utf-8?B?Q3RBN1BzNWFUMy81MU1ZcHBkMHByUk5zK21oM1Q4cGZXOXJlR3ZCYm5GekhD?=
 =?utf-8?B?Qmo0MzlPM3E4R0ZyWlZGdUNTUnQzOUk4Qk5YaXpnd1BXeDM2aTdQWDZOaURJ?=
 =?utf-8?B?cHFsM3JTTmVEMkxsUmFTK0lIcDZYbFNQWHVSSk5oSVpOREYvRWJaT3E4QVhC?=
 =?utf-8?B?ejBlOGgyNE50clZLdFVjUEZWV1k0a3hLdUVoKzZyemlsbTR0QTA1bHpjd1hI?=
 =?utf-8?B?RzlyaGZZMUJpREFTbW9iNUE4eFUxREhmV0NZa1F2bzhMNVh1OGpMUDArY0NM?=
 =?utf-8?B?YzRGOS96YnJoaXBZdzV1T0FHUk8wUmduMkR1cHp5bGRUWGM3MXlZZWR2UCtC?=
 =?utf-8?B?YXdpUFNVTmkvRkJPRGM3RDEvNk1MS0loN3Q3ckhBeFYyNE8xNlhQMGZ3NytB?=
 =?utf-8?B?U2pDa3ExWVlhZ3N4UE5OUCtkZytJekwyaUlUQ2I5OWo3KzlNRGpHY2JYbDNJ?=
 =?utf-8?B?cmpObGVZaTg3YmJEZWp0eUJ4cWs2NlhWZitJUmRyQks5ZjNZQXloNDc1d3lN?=
 =?utf-8?B?bmRMay9BdEc2NmNRaU5qd1QvM0FvWmtuaTdlSkdIVlo3Ym5pWlA3NVBaQytl?=
 =?utf-8?B?Zm9TTSs2SzlwdFVFU1JoZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TE04bVFqanN6dDJnaVRKMlZiK09WS2xSd0FlMWEzWW5GZG13RmpyRElOaWhP?=
 =?utf-8?B?em9oMDFJa1BweE5wWTNaN1dyVEhtQXRpQ0xVSFNGTTFLditxQmxwZGQzUVhE?=
 =?utf-8?B?QkRhKzE2MGdwbFBOSzlFNlkxVlRYT1p5Vk5FMVBYazkyeCt3dHpHVzZsSWhY?=
 =?utf-8?B?bTB0SWFGYUNSTTBNRlV4ZXQvSHZ5V1RpTzFhYWN5TUNYaHNSYk9TL0kvRHps?=
 =?utf-8?B?UUpBc2M5dklFS0hBYXB6NlVEUFNiNFRKK2ZROGVZZk9vUGFTQ291Sk0zMTBO?=
 =?utf-8?B?a2Q5dmZRNWpQYjdLZytDY2pla3pYc1kxV1pJMHZOSkFib0svS01iUk91OHlr?=
 =?utf-8?B?WC9KTis4V1VLYktBSXFlaDVKaE9PUE5ld21oRVExNm1ITnFKd0h4L3YvMy9U?=
 =?utf-8?B?NkRjbkxHY29QaG5BTmJ4Z0g4K3pWRjBHS1ZLa1pMV0kzWUJvNTFDNEtDVWlh?=
 =?utf-8?B?RU9mTjJMZm8wWDRWMXBlUWJVbnhsS3I3WlRQZVRBWFhnRHlxSnJEYnl6QmlF?=
 =?utf-8?B?M0VRb2VMeW1kdXRLRDVvakpETzUwQ2FFRG92azYwblZ4bkFEVWJWVGUvNTZ3?=
 =?utf-8?B?YjRRbXRjTG9lYlltU2IzbDFiTGd2UmFoVmdEZHVLdUxEMTdSeGl4WUM3NEtw?=
 =?utf-8?B?T2VBdmlNcW1QaUNhY3A2WWVvVEptc2R1bFVMYndIdk01cElITjYyRnlXVmZR?=
 =?utf-8?B?R01Xd09pODlac2ZLZWVEZThPMjkyeEpIWUhFaHFCYlpQbjhuZ2U5Mmt5RlRV?=
 =?utf-8?B?UmpzOWs4SnF4QmtIOEppMHRnQXdaTUJFZ01OVzlTekZqWHZQRTlOZER6dzgv?=
 =?utf-8?B?K295SXdXY1BLbEl6SE5xNXlJemIwNHdrTlpIK3d3WjVwVnhCb3FFcUs0NUY4?=
 =?utf-8?B?dGE1cDBOVkt0TjV4YVd4ejlMN0lqUjU4SmZtUDIvZEk2bzI1WXBic0dBQTlr?=
 =?utf-8?B?cC93TFpOVktQZjBMN2pUOTZZMXhYQys2SDlCYktVWUtYaGFrWVYyTFVWa0RB?=
 =?utf-8?B?SzBYdlR6bU9oY0RRMWtWVnhLWE1ub0dTdHE3WlR6SUxSTnZrNlVXb3RZQ1ov?=
 =?utf-8?B?SEowZXdaQzhPYVM2WXRGRjNNbHQ0R0ozdlBFVllSMURFdkZDc3NVemw2UE0w?=
 =?utf-8?B?Nk54K2Rqck5XUkRHNVRITng3UWFtZTUvejJNc0h4QW1TS2tSWFdmNVRMdkFv?=
 =?utf-8?B?NHBUcFlaWWVpM3Z0eEltYUl4VWFoLzNsclgzZEJHbk1BUGxnbERIYlZpdTB3?=
 =?utf-8?B?dm1UeGo2cGwwclNGZE1EWmVyV2pZSVA1ekV2MS9mTW0vRkx4M2tuRFRNcXd1?=
 =?utf-8?B?M3pHczRPcEJFUlM4SDM4M2V4aklGMXI3RDNLZCsxbkcweGErZ09Nck1FQnJW?=
 =?utf-8?B?VFl5a2dqU2RnclZMOFZqVHhFdmE5ZXZIWDhjMEI4dDlpUldiZDRsNWRhT09j?=
 =?utf-8?B?K2xsUzZrMjJjY2RiNFBFUE1HVHIzakt3R2VmUDJPQW9ZbnIvK2pWb0ZQQUkw?=
 =?utf-8?B?ZjVCU3ZQc3lERG42MDZHNkp0ZmlIbzdZdUl3MWpEVGsyMEQxN0ZjVFdwMTVi?=
 =?utf-8?B?T0F3dVNJRmhtbXd4NWRQcU1zck94UlZiRXA3VGkrbjM0ZUdabE12TVVpZmhP?=
 =?utf-8?B?bEdDQ2dOYzkwU0ZITWdld25qb3kzTzF5Nk9UczgyUUhpYlJDYWEzdlhHL2lC?=
 =?utf-8?B?WlJvWGxJODI3THNRdnYzajhRbTMxZWhtY1JjekpJSmRJRVRncE5OZW9IRDRu?=
 =?utf-8?B?emF5aFlndzF4OFRvOHliZyttZWlIY0QxMHJLc0tIYWFvQnUyT1NNN1Y3czBL?=
 =?utf-8?B?RkZ3emZ2RjArWk9YK3hDckUxaFBOcDdHMlBvaFdOKzBuWkZUZnVPeHBYNHNM?=
 =?utf-8?B?ZFd6WDhndE44ZmI1TUZnNFVMa1p4T3lCc3dYU1lxeU1ydmVBUVU1czlSS1V5?=
 =?utf-8?B?K05mWkJHV0F6Y1NpeHNxSTNqQVNRa3JId2NaendPOFF3R05Ba3RyQWRWK3NN?=
 =?utf-8?B?UTlWWWh1bmVuYTBXMlliSkRieHZ3R2tHZ2lDOTJGSGQ4NC9DS0lYSTdhQXlE?=
 =?utf-8?B?ZkFUeXdkKzBWd0V2M0FSY0hBOHVxbFJaNXhuMzFBSEN4Mk1kTWcvLzBUU29Q?=
 =?utf-8?B?cWc5U2tMYUM1VG1QeDNkVm41WlczWXU2SXBuOXl6WTUrTkk0ZXEyb1R5RUhq?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 479e3713-d139-4cf2-2ca9-08dcb553b3c9
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2024 13:37:08.4816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JdSnCe8PV2U3anYlxQ6qzqRAentr48W8lKBURRSyYYx2b+kKj8b0RBb8QxxxnXzHEtQaVjfPyj6YOcmkvflKpxbFnTTCdtqY0duKPf4oW3E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8185
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722865033; x=1754401033;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cRJ7dSlMRPQSC2mqUZBB+wcv7Au+trbIU3Gr+nlwN4o=;
 b=BDljBhR1DaiwiTWFN+spMuSt+gNC/BsB/AmXq0PncgSiAYNah7E5gj+i
 pPODg6egZMgWl3FT33ibtfaa+ksJoHdLjxNyp5w9/eLsr0Dohhhj9On7h
 iFhVl/lUUhntAMcUB0mpQMyKpnWgcWBAM2lNs4y64PSOl0nonaLEcCbmt
 ZdOGAEuwvmLImu9Gt0FJaCqieZJMEx0q7fA0Jmx8iwy9ArKnwXuGjxApP
 WcggmBkGxjsvTp7Cj1f98RudHpkkruQTAZDqDMiARxhz4G9Qk6HFQ7KpY
 JhVM4hKuxOOKHowmB8RnP5JpP8yNu93ZcnWSge2ZVzMXcGtHNE0xXxXlI
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BDljBhR1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] idpf: Acquire the lock before
 accessing the xn->salt
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/3/24 20:25, Manoj Vishwanathan wrote:
> The transaction salt was being accessed
> before acquiring the idpf_vc_xn_lock when idpf has to forward the
> virtchnl reply

nits: This text would fit into two lines (the column limit is 75).
Missing dot at the very end.

> 
> Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>

thank you!, code looks fine

it would be great if you could add a Fixes: tag, and add iwl-net as
the target tree

> ---
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 70986e12da28..30eec674d594 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -612,14 +612,15 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
>   		return -EINVAL;
>   	}
>   	xn = &adapter->vcxn_mngr->ring[xn_idx];
> +	idpf_vc_xn_lock(xn);
>   	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
>   	if (xn->salt != salt) {
>   		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
>   				    xn->salt, salt);
> +		idpf_vc_xn_unlock(xn);
>   		return -EINVAL;
>   	}
>   
> -	idpf_vc_xn_lock(xn);
>   	switch (xn->state) {
>   	case IDPF_VC_XN_WAITING:
>   		/* success */

