Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A96A3E7BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 23:46:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBD1F60820;
	Thu, 20 Feb 2025 22:46:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pGlXmSQ_tGWz; Thu, 20 Feb 2025 22:46:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D6556076B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740091608;
	bh=qN1ijTH/xayEnIWbtIpAZYCUim2ZZ0JPMODMghEgQgQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0CDptIbyjX0OOZS9biFl2AKaHjT+3BhD/TKHQTBDsAxQ3xNv3y3zHcJgY2gHNXRjY
	 dZ3J51VOILWryXZSRZ/jH0DpVhZuX8T+GefGdQbKF4RPD0sh0T81XXPzaF1GwlOwiq
	 oc7zBZcz4RrbEQD1i5NPe8zINwXNINGhmhR5NdduyEKATCd8W0VEUzQAweQlTSlxqs
	 3wkKMQyepkedrlG3wKcP50kdwyxQNyvyspHyHdkmcfTOj3qdGw8K8OT86wntqrTZao
	 p1WmsyZn8Vwv9+dCqJ9sJMkjxJqA8XJN30CLq/Qwa42W2t3ekGbKHmF3aLZnrL/uTx
	 N1K/hy8J1w2QA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D6556076B;
	Thu, 20 Feb 2025 22:46:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 00EABD92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 22:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4A1160794
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 22:46:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wcDhyypNfgLz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 22:46:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 002336076B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 002336076B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 002336076B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 22:46:44 +0000 (UTC)
X-CSE-ConnectionGUID: 2bZzMuYiQgGx8FXNx8NUjA==
X-CSE-MsgGUID: vJnONwJBRfCpI4UKChnIQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="28492172"
X-IronPort-AV: E=Sophos;i="6.13,302,1732608000"; d="scan'208";a="28492172"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 14:46:44 -0800
X-CSE-ConnectionGUID: AwgNWtCkSQGU9qOLqEPxKA==
X-CSE-MsgGUID: P1TzwBdXT+uzl9/+p/J3yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,302,1732608000"; d="scan'208";a="115184108"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2025 14:46:44 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Feb 2025 14:46:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 20 Feb 2025 14:46:43 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 14:46:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XcTZNodeJG8SFfvYm3EXQapnBNS028U5jz615Dop7YPBWw9uJNry50MX3lLHlR86WgHoMQ+JQ6BSKgi6NBGy9mpk+PRYWopGlH4sYKJDfj9rsriBJI3c1Eih+YwIKHmQzqKHdVMxELMuBe41hz4VVcoc9PekZdco9ivV6wkJjeJOEQF4m+wswR3lP39jXTwQ8tuBNdnTcYkfqRHph3Qdyi+ftwIaphkYxAYuo7i3XMLmO8Xy8BDp6wQN0gvxVba+dtdwusasIQFqWfVzhDwDPXNvwm2n1RAg1v3GlrIcteuv71gB4gwOFuLXETQ2Ap1mfTPLx4VSNliYhCMHwg74fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qN1ijTH/xayEnIWbtIpAZYCUim2ZZ0JPMODMghEgQgQ=;
 b=OJuFHtPFDkDzXY8gh3IFSWVtiGcQdeFL1BqsLE2Y/XJN1PO1J5MmNRK1sHHbhYqezHW1kHFTQMxFVE/NPzZceWPhvigfp503t2A7dZ8CGC01Prdc/CtDE5RqWsF2aEdcAW9rClPB0Z6gbpgovgGiAhWOCr4gX+egeqqEmHGqeahmxwYUIq3fGO3Rrxu4mI+Mmg1WRcGEcMwoQQ7zE6TWPSjKjfDNmDaH2vDfrMNBiyQhw8kF/ESjRQAytyfr/XX0IZO4+mQQVVaHnhlSjaU/A2BwaUKem28Rxzo1oNgBdv3RWwIhAtF1HqPKL3qBJxT8+qO6RsG3Qyl2e0EfKXtjJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB6847.namprd11.prod.outlook.com (2603:10b6:806:29e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.14; Thu, 20 Feb
 2025 22:45:42 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.8466.015; Thu, 20 Feb 2025
 22:45:42 +0000
Message-ID: <55fcbc58-fccb-4db5-afa2-21b53a89fdc3@intel.com>
Date: Thu, 20 Feb 2025 14:45:41 -0800
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Paul Greenwalt <paul.greenwalt@intel.com>
References: <20250218-jk-e830-ddp-loading-fix-v1-1-47dc8e8d4ab5@intel.com>
 <Z7WmcXf8J5j/ksNX@mev-dev.igk.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <Z7WmcXf8J5j/ksNX@mev-dev.igk.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0128.namprd04.prod.outlook.com
 (2603:10b6:303:84::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB6847:EE_
X-MS-Office365-Filtering-Correlation-Id: 85786103-19ce-4bf2-ea3e-08dd52004e3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWdJbjlieEJ0cjQrU3ZxZ3M3ZnVzWitNZFZBQ1VsbXA3R1RBbkxGVDFHWDZT?=
 =?utf-8?B?OTJ2UDJURDUzZHpUTDVUcFhrUWhFS0tEdVdCQnZLczdXdGRuMWZ4ei84azI2?=
 =?utf-8?B?b3JjZ1R0VXBYNXM0bFFLYnFyNEwyVm1RVW5KczFJSXhZN3AzdzdRSW9VNVZj?=
 =?utf-8?B?WXNYUXZPS3pIVUtqRE1yVzBPSERubEkxV05hcExNMGR6QTQ4aS9lUUoyeU1Q?=
 =?utf-8?B?YzVhVnp3R0tJRmtDS1ZERS9UVFFnckFCMHhOaWYwaThQOGQvZW02VGx6Zmd5?=
 =?utf-8?B?dStzejNvaXR2ams1TEFXK1lNa0M3d250QVJCbWd6RGsyaTVKQU9URG0wanZX?=
 =?utf-8?B?SDlFOStlVmpWOUpXdkxrQ1NBcnZXQ1RKci9wcUN3cXNEMEhXNVVrVGNCZnlj?=
 =?utf-8?B?MjFhNWRrYktlRE9iUFROdWs1QjRRV0loUGN6T1pDY21NNVFSUnlzam5Vbzh1?=
 =?utf-8?B?OWtCNEMyek0rbXpET3FSU085cmU5TGtzOG16eUhURHp0UVZySVVLTGZXdWJG?=
 =?utf-8?B?cDA4Y3B3azE1MnI3NURvYnpQQjNNaFVMV05pTGk0Z1lGNmhnVWVxUTNuekZ4?=
 =?utf-8?B?WGFYb0hBWDVjd1J1d21DTW1lUWZnWUZrTWpTR1ovNVBIZEltOE1Ea2JvbEF4?=
 =?utf-8?B?RVJUL0VLa2J3YVlmbTRXYXhRcjZGWEtEd0hPWHRRdmxPWlN0ZDFmaU9IWWU4?=
 =?utf-8?B?a2hSR2F5SWNwVi8xY3dBR2JqakxVb0VobHRiVGt0ZlVzKzVibDBSQThsdWpC?=
 =?utf-8?B?ekYvdVdWenpEekFWb3QrSU9yNU1CeWZOYlc4eU1yNlVOQUc4ZDFUeGpydVJn?=
 =?utf-8?B?YW9sUXhLV2d0L0Q1bGIzR0ROeldHT0ZRWTdRd0pkM1IveFFPRlJPN0FLTHVj?=
 =?utf-8?B?U1djdE9HREhxMkZ2SzF0c2pTNVFXa1VMYWswaEZKQ05Nd1kveTk1VWpaWG5v?=
 =?utf-8?B?dlMySWFWN202amVGTHh5L0oxUHpUOEJKempoMmxwckNGR3prRzREMUw5NzdW?=
 =?utf-8?B?eEpBUUJGRnRwSFR5Rm5QK2EwWmwyNXlMUHpGd01vY2l0V3FEcVcrNFQ5YXNk?=
 =?utf-8?B?bFJ5dGQzZmNONlJ6dXBUeGtFbC9xWDIzS2dnYzRIakk5WUNFR3Q4UWRQbG50?=
 =?utf-8?B?V0NtMzZ0Z3pVeU8zcFp4dnhzVkFVd0h2RTcwdEhLR05VU1hhaVFjT0xCV1hs?=
 =?utf-8?B?SkxOVVB4cEp1VW01VytjdzRjb0htTlN4aVAwdGo5N2xQWGQrVGJoZjZSYWNw?=
 =?utf-8?B?RXJjTDdjS3o5Q3BLdUZUVnpVZjYwNHJhcmd5RkFEQ0xuSHp4Zk1yUEZBNFdu?=
 =?utf-8?B?YjZUNWRreUFLYVFCbEdHYnpxelR3cU5xSUZCQkFzMmE3aFZEbkMrRnFGR2dT?=
 =?utf-8?B?ZDV4Y3l1UUt6U0ZYY0dkQlNUYzVEMi9PSDJ0L1dCU2dPZEs4eDBOTzFYVWQ4?=
 =?utf-8?B?Zi9CMHVDS1hyY0JzeEw2RHhlUlU4aSs4eEdvNjA4Mkt1MklWeDlUOTFYbCtI?=
 =?utf-8?B?MDhqd2MraUZxRHdGekcyZ2UvOEp1SEJ2VmVqY2ptYXd4dzhUb1FqbUVIRUZZ?=
 =?utf-8?B?UXE0VXd3THl2dy8vWEs5VEVva3JDMmVxK1M3UnNLMVFISzNJcFdTekM3RHRY?=
 =?utf-8?B?MnpXSzdnbHVLVGRKRm00QnN0ZCtnM2RBeHloSkgxMHFPNUk5YkRMbzJaRGRT?=
 =?utf-8?B?aDZYTWUvVWxXRC9PV3UzSGt2aElNSHZSdll3WjA0cHJEODZ2RFFIMGtrcW44?=
 =?utf-8?B?ZEpjQmU5UWFXVmRvbXQvSDd0NnhTems0YnIyRE5qVFl2MjdsZWtkQ2dhdzVo?=
 =?utf-8?B?dVI1SXZXd0dwZ0l0c1Q5RDhSTEhZNnFXWTFjd2V4azlNVFNNL2pjVE5RUE14?=
 =?utf-8?Q?s/rBGyRch0K4z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?LzUxcUxXK2Z2OU1idmYzcXNhRmNQVFZsUVJadndEN0lYbUlXbkl4cFhtdlJ4?=
 =?utf-8?B?eTdwT3dGTkZDdVV4U1JsbURISEtoa0F1c2RYdC9HcWVGRzFWSVZMcGw3c1Yx?=
 =?utf-8?B?bEJXRXE0MTRoL0FzYWtvanhtaWZJNXpUWk1adnZ3ZEU3WjRzTmwvSUZBUVEz?=
 =?utf-8?B?T3JxYzVMc2RGV3B4R3J2VEJyZW5qeHZPTjZiTklKL2lhS2R3OUJPVURrbnlm?=
 =?utf-8?B?c3Q3UVdWQkhwVC84UVpBMkErclZYYlZHWU9tYkV4YnpFUUFvRkRqSFM0NDM1?=
 =?utf-8?B?bXRUTWIyTU5HbHVYaEtXVHROTnkyMUdPTGhuSHpjY1IyUHFHcFhHU3BaQnRu?=
 =?utf-8?B?OXFsNElBOFZHNTBjUWw3L0ZTTmFaUTFoTkczT3g1YzAwUG9GNXpFSGRhREdJ?=
 =?utf-8?B?cVRHZ2VZUjZYZzJucUJKcDZOVlVlODUxbXhRT2QxaGM5dXpIL0V2Vm9TY3Mx?=
 =?utf-8?B?dlBVRml5Uks3THVvMkJRWVRpcTFOQ2lWUytWVXU2ZVk5c2w2MjVNQm5tVmgx?=
 =?utf-8?B?eWNwbUcyalhIbTRCQmJxVFdoTE42SFpwSTdnWUdHT1NXN0oza1IvMHhQeTVL?=
 =?utf-8?B?SUhYd3U2UXV1N1RmNTdUdXJLRDhScm1DaE5GQWpVa0ZSQms0UFA2WHVwN0FX?=
 =?utf-8?B?Ym9lN3BDNm5BSmMwYndtU1gvaEhJTlFFT3A2ejhkc1B4anAvd0l5SEhTTkw3?=
 =?utf-8?B?dWZaS1pwM3ViVEV2MnZnZWk0cXRURVR0aFBnTldoQ0QwZUkxMWZsbHBodnUy?=
 =?utf-8?B?V3ZiZzFtT3dzNk82S1I2akNMMHBIZEZtZUIwd21iRVNzb3pnYkE3bGdEOUE5?=
 =?utf-8?B?UHVrWCtXS2VUa3RtUG0xb0RHQklnK1BuSTBORXBLOGphOG1hK1cyRGg5Z0FD?=
 =?utf-8?B?YlJPNkhkbkhTY0JCTEg1c1A4NGZWQWJMUDM4Si9hZHhxYWc1T2lQaldyR1Rj?=
 =?utf-8?B?Si9tYnZtTEQ5WTIvSW1MWEZyYXhKKzlHSnVPdUVMbE56Y2EvK2ZmNlJsQzd3?=
 =?utf-8?B?eTZhT2lSUXZWeno1WThyY3Y1MkRXRVI4M3l6emFHVWFDeW1EUjhhUGFodnRr?=
 =?utf-8?B?TU9MYlNsWlA0ejRtS1k4N25NTDhoZTV2RUhQNjVJYW14dmVzM0ZFSDJQdDJw?=
 =?utf-8?B?aU5Yc0VvR1BXVGtWem8vYzQzdWRIK1V6ZFphcEg4R3VvUkl4NTUrZ1JsU2J0?=
 =?utf-8?B?eFVsdUpteGU5dVUrV2NLNFFIdkM0Vmd6V2I3VDRlelpxVmxYaXVOSWIwaTdq?=
 =?utf-8?B?ai9mSFJOdWF4TjVXRjBQTE5iODJqWDBvVE9rdnpubnYrV0Z5Y2hSM1ZvL1hJ?=
 =?utf-8?B?ZVNtWVNUdG9GVnQ2bVdJWTJJc3Z5Ky85NmpibGFuRktwWjlwVDR1dmNWRUV1?=
 =?utf-8?B?TFExS1gwMWpNWCtESm9RWEtlNFBpRVkzL2MvclUvNy94andxTUNpOHZQSEdt?=
 =?utf-8?B?emZQeEpxaHlKYlBLRHNGZUtNRFY1R1JKWmRPcnhyNW9ESGpnWHNkanFrQ3By?=
 =?utf-8?B?NlV2WXl5dHRkbmJ0b0JQRnN3S05IOVh0QzRvVGtFNllFdjhYYllLNDcyQk5Q?=
 =?utf-8?B?dElnYnc1MU9UUTVlZUw3aFl1QklZSTBpR3Jzb2M4akpuUHNrWjB4WE9FOXRQ?=
 =?utf-8?B?bitvaDViZHNTMS9GSHZGZmVIT2NNMU8zNXdCeFpMUGREZWNOVVd2SlJGZ2c4?=
 =?utf-8?B?VERROTdQK29KcXYzMDVCWHpkRVk5bEtvRkx5MXJ6N3YwRWR3dmdGVm5JWEcy?=
 =?utf-8?B?aDBXMFF1Qy9pL0JzaG8xbUpZWDJ4QVovMnpQanZlWGp0R0lXWFV2RGZJQ1F0?=
 =?utf-8?B?TzlFRVF2akxtdEZUNzIwVkhJRktBazJubUdIZkpSaG1xUEpuTVlBZ1RCYkQ5?=
 =?utf-8?B?ZHdkeXlvNHZ0Vnp5ekJiVHFDY2kvM25tcTlWY3VZUXBiQk4wRWgxS1BrUEp2?=
 =?utf-8?B?OEVySHR5N3JkeDU3cytIU3NhV3RWaTF0TksvQ3I1cys2OTRueW5oaEtDTElP?=
 =?utf-8?B?SlBhdVVDajFiQTNwQzlsak5NVldYemgrbzBhOGIzMFRXRFNpN2dzRUEwRnZN?=
 =?utf-8?B?Z0JtVFpGYlZUZjBtNkZheG1GR1BxaHFrOHB4bHVlZW55R0lITXV6c2Q1SFVz?=
 =?utf-8?B?SjVlTkdsd2NOdGFFaHozRnZQQ0tZcGJ2ZGpkNkFURXhuTjVQUEZsUEJnemdM?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85786103-19ce-4bf2-ea3e-08dd52004e3e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2025 22:45:42.3835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GfUBRxL430dBuZjFGKvI03QvS9OXYubyh7O7j/Bya1+6Y8UCDZR8V1yrVXyfUtLBejYElFz5D14AmQ3t32e8S83wyRSDk5V48EDvsjovgOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6847
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740091605; x=1771627605;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CTPO/zxkUwVLzEWLxNkf7EVL05KPIf95nCNPD7vFdN4=;
 b=bJlgDIA+e8hoV9sCg2uAJWG+o/TJEsHqOf0Q2iNjHbNF6xZ0AcpKFtPG
 gcnQcF1p+aq8UdW9fevO1YRmD5K3ovS7kZd6M69E0fD0d4dx82N7PhXCi
 //5SvcvJKIqEaKtHksPQFtIMM4oZJVTMDxbLsBlCZRqGHXnjA74JqU0WT
 XuLCw6a65pHNPWqT+ithFYgAm05AOXIPcUeLYDB2b/QPaA2gyv4K2JuQx
 KVlLQTeTjSOgoTdJxWZkuaJ59vlkp7t0+3eQfb7vbt7G+4T8WT0PQuKKu
 mMutfTGw2Vpm32o+zinnnhG+NPKI8BhZnDvC4i6l0MYvXPFdzH/zXQ5GB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bJlgDIA+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix Get Tx Topology AQ
 command error on E830
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



On 2/19/2025 1:37 AM, Michal Swiatkowski wrote:
> On Tue, Feb 18, 2025 at 04:46:34PM -0800, Jacob Keller wrote:
>> From: Paul Greenwalt <paul.greenwalt@intel.com>
>>
>> With E830 Get Tx Topology AQ command (opcode 0x0418) returns an error when
>> setting the AQ command read flag, and since the get command is a direct
>> command there is no need to set the read flag.
>>
>> Fix this by only setting read flag on set command.
> 
> Why it isn't true for other hw? I mean, why not:
> if (set)
> 	RD_FLAG
> else 
> 	NOT_RD_FLAG
> Other hw needs RD flag in case of get too?
> 

From what I understand, we didn't anticipate this flow changing. E810
and E822 hardware require FLAG_RD for both get and set, while E825-C and
E830 expect FLAG_RD only for set, but not for get.

>>
> 
> Don't you need fixes tag?

You're correct. I'll add it in v2

>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_ddp.c | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
>> index 03988be03729b76e96188864896527060c8c4d5b..49bd49ab3ccf36c990144894e887341459377a2d 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
>> @@ -2345,15 +2345,15 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
>>  			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
>>  					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
>>  
>> -		if (ice_is_e825c(hw))
>> -			desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
>> +		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
>>  	} else {
>>  		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
>>  		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
>> -	}
>>  
>> -	if (!ice_is_e825c(hw))
>> -		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
>> +		if (hw->mac_type != ICE_MAC_GENERIC_3K_E825 &&
>> +		    hw->mac_type != ICE_MAC_E830)
>> +			desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
>> +	}
>>  
>>  	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
>>  	if (status)
>>
> 
> In general looks fine, only one question.
> 
> Thanks,
> Michal

Thanks for the review, I'll send a v2 with this cleaned up and include a
fixes tag.

> 
>> ---
>> base-commit: f5da7c45188eea71394bf445655cae2df88a7788
>> change-id: 20250218-jk-e830-ddp-loading-fix-9efdbdfc270a
>>
>> Best regards,
>> -- 
>> Jacob Keller <jacob.e.keller@intel.com>

