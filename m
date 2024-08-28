Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F5D962216
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 10:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5304F406F2;
	Wed, 28 Aug 2024 08:14:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vfRN5yoDdarN; Wed, 28 Aug 2024 08:14:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 563C3406F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724832890;
	bh=Y55n6oEYQuvuX1vk2rD9BPrLAooSl8q/v/uUzKZX7Qg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PWAuEcEY793hwjLLmIW9jY0AzPy1siN0Cvf0HS/JVxPOE+zn8OdCerg3/ri1b54/e
	 7tYzyX6jQ3yV7kko25MGFMsj8hvo6fzwNfHCPPqdomTS5ULiVpCMbkRfxXgjsJjThK
	 pXGs35MN4gkSrLgW/67ouFg6A8F9QyVn1EnU6oDSSO6mYGAxpEpeIcAmKWCTwSh8DI
	 KrUwhFuivIslvURXIv4lmnhqz65WhkcHSnN73NA9M5c4TCtJ4iYdGGvToCDfyIonEP
	 BiziJT9a+f6xZdUkxuL0v394wm4Wd6uc6E82dA+bhl4KIFyDKHWd/2iKg8A6Y4pLWY
	 Yk0M9vFzXlyow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 563C3406F3;
	Wed, 28 Aug 2024 08:14:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6EB91BF283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 08:14:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF44C60A70
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 08:14:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HrBMvNHbPNHV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 08:14:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BC67C60845
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC67C60845
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC67C60845
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 08:14:46 +0000 (UTC)
X-CSE-ConnectionGUID: SuGke3qPTnud3ij3OYSO+g==
X-CSE-MsgGUID: NpUYlwozSjaiEHfN1jb0kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="27145256"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="27145256"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 01:14:46 -0700
X-CSE-ConnectionGUID: LhQYyFpLQN6l3oC+KHDdSg==
X-CSE-MsgGUID: N/kbr2w6QLOUP69jggwUsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="68002366"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 01:14:45 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 01:14:45 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 01:14:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 01:14:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 01:14:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rAbg0Em7KL5AAb0vjp9IGxNBUYfHptomGzN0Z9MWKtRb3SLCjkLe0Rczs+xR3rugeG8ZcMSQuGMZ4Y2U7DC2MU7krbcIhr/T/qQxZfzOOrRwg3ahUeJ3m9pHEO3+rh3SaZd+IZrPJZGjNzjYyTYJYsjVaLjFD7x6Xtdzrei9kDbmCH05jrkDVMguDVxt4xaK8cUXBky816C+7A7Ja2eEL7jgbxJmIwNmbrx96ZhpgXFErbIVO2qBm1EjyOZ67IsFGb+4uKyG20U+0OmDTV5sHAj2SL4AgXs0k8rJfpem8BAKFJ60ZNx+qaf3fLsrtai+8MRGX4ySuX9sO4619B87bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y55n6oEYQuvuX1vk2rD9BPrLAooSl8q/v/uUzKZX7Qg=;
 b=RG4bblNV/pL5wyQpdYK5CYJs7q2YVsmOcVnT8566x86UjJJsJLq8wKeHpNAq8vamYCXoOrBF2BbU2B7mMY8xYe1+uFTsZEzdQCDfdgS0BSRVddF25+3OGPYqJhdQUpsf2rHxyJDw+8/IN+lirmu9b+yyz6muhTchz2ETVtuFsX3NrKtSF8DHAf7wt5hvKr/7bS4jlgBvrDqJ9wn1iDQKK4Olxvm4oEmPrmf2dx3hIjKWmAoc24u0+6MNlnUuPc9EAfCL8brgXc1D81UZouXPc0KPpc/xx5qKcW47aejYqHRlWaOr8smRbJfBBv4f76F49FAOoe5rSIaLylzwEiPjeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB6870.namprd11.prod.outlook.com (2603:10b6:806:2b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.27; Wed, 28 Aug
 2024 08:14:43 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 08:14:42 +0000
Message-ID: <6344e5bc-720c-4a5a-bd40-3a8d054f5b19@intel.com>
Date: Wed, 28 Aug 2024 10:14:35 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Bogendoerfer <tbogendoerfer@suse.de>
References: <20240826085830.28136-1-tbogendoerfer@suse.de>
 <ZsxNv6jN5hld7jYl@nanopsycho.orion> <20240826121710.7fcd856e@samweis>
 <362dd93c-8176-4c46-878d-dd0e1b897468@intel.com>
 <20240827211224.0d172e40@samweis>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240827211224.0d172e40@samweis>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0299.eurprd07.prod.outlook.com
 (2603:10a6:800:130::27) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB6870:EE_
X-MS-Office365-Filtering-Correlation-Id: 71d6fa42-b039-4ba2-a894-08dcc7397878
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEhTZWZDejBKSFA5clE5OC8raUtUNUdKM3djbTZUSjJzNzlIcHh6RGViSWFD?=
 =?utf-8?B?NGFVNFhmejlJR1Y4VVEraWo3Vit0Z1pqdSttR095UXhkVkFHbjRzdCt4NGhp?=
 =?utf-8?B?U1N6ZU1lSHJUeTY4ek10cnlUZ1U2WGF4UmtuQVVmSW5aRDdPVk5RQTdTMU9r?=
 =?utf-8?B?d3d1QTA5bEZQL3Z2azM1eFluZ0NoSTdZVU9LMDVCL2JvZ2JZN1Zhb04zS2kz?=
 =?utf-8?B?VW5OUE5TT1ZWek9IWFhFSjZuNmx3TVFQN3A5Vm9obG5uNDRmWjhNaGxCTEtn?=
 =?utf-8?B?TjFsSVd1OHpNKzFjNmJFTFY5Q2FJZjdrcmhONEJoeEhoWHc4dVIwZ3pHbWYw?=
 =?utf-8?B?ZXllbXcyN241eVM2UDlXNUdxbFA1MG9oUll5RkcvQmRDODJJMTljTnZsSDRm?=
 =?utf-8?B?Nmdac3ZTZEhzc2tLdFdVL3JrMUVCUWpIaENiSmdibnA1NHFvUTRGdk83NWpN?=
 =?utf-8?B?SWxsTnFzNEVpNDlMcmVJU3hBWnZUNEQzbjVCM29neVIzVUtuZHY2L3dmeGNs?=
 =?utf-8?B?blF0MjVpZk5MV3NTUkozejBVeDc4QjErMnRNMTQxcUJrNlpDc3BtUjNIZWhX?=
 =?utf-8?B?VGY4Zi9pd08zelpkY1JxQno5Tm1GNVJwdm0wbFFoVlhoSW5sbUZDbTRXb1Qy?=
 =?utf-8?B?K0dlamFoQjcxRmd1eW90ZDYvS0gySytBT1pjclk5SXl1bFpUSWRTYnFBRWVa?=
 =?utf-8?B?LzJYR3JZeW91S093TjU3WmlJOURkODR5eDVPVzBJVHBnOFhmRHoyWHorYW1z?=
 =?utf-8?B?VU1pVmRGTzJYUzlDb2E0MjJ1S1lhbGhTdHMzenVFdUZHemQyRXlUcnkzOERB?=
 =?utf-8?B?amhuMmlWK3J5SVdlQWJ1QWhEc1ZyQndzck1FWXl0MFh1YnZ2cHlpWEhEMmtY?=
 =?utf-8?B?NHllSTd5T0E1RnRjMGh1WGR2WWNKZkpJN291d2pKTGRBTHA3SjVzcHd4UndK?=
 =?utf-8?B?Y2tYWWw3S2RVNWU1QXJpWEp2c1lUT2FpNzR3dlV1RFlTcnFoQjdIeUFEMlJJ?=
 =?utf-8?B?OVE3ZUluTFFWQ29Zd2I4UkxlZVB2RUJXc25qa0FydXVRRWFhekMrUWRmUmE5?=
 =?utf-8?B?Mko4SlBNRUZHbHd1T21ac2w2YkJHWTh2L2g1c21MU3RoZE8raTJYZVh5dmox?=
 =?utf-8?B?bFJGd2FzdXFqZ21iREhaYnhwMDJ1eXFnT1AvYW51M1RLU1UvS3B2cnlPaUFi?=
 =?utf-8?B?WGVSWHpLTVducDB3bTRlSm9Jd0hjcytOd3ZyZ09VeEU2amdJaEdqKzJJeVFS?=
 =?utf-8?B?UnlJVkpleVRadnBIQXEyZmpiZWpuZU5SQS84bXRtOGQ0L1JCZGZhNHBRN3pa?=
 =?utf-8?B?MmlkTG1IbXBycnhjYytsK0JIblNySGhvcTJLS2lEMzNzcHlPMFVoMk00ek55?=
 =?utf-8?B?Ri9uMzdYY2FhQkNhaC82UHFzd21XU3BmcHpveVZZOW9FZU03Y243SFpMRkZN?=
 =?utf-8?B?eGVBcWhaUUkzRnlaNzhPc04xaTlzSi96Q0pubzJOQlpoRWRpSnIwdVNlZUQ3?=
 =?utf-8?B?SFU3dG9kM1AxQ2RHaWZGb2RPNDJzUEJPWW5vSVBJQTl0MXRQQlc5VGpnazJx?=
 =?utf-8?B?VEo3Szc4TW9ZajAzWVBKVHR5UmNoeWNaVlE0T044WHlibjlPMFJzZFhSMjlB?=
 =?utf-8?B?NkpTeWM0bW1wMTRHd1FOcDY2Um4wZHRwQTBLaHgyT3JLUnZvb2hGNkdRMGQ4?=
 =?utf-8?B?L1JTZExjMGNwYnhvVE5YNlZXS05iMjdaajRweG1oQVFLUEJRSGQ0eTkrYWp4?=
 =?utf-8?B?RDgrSWNmSmZXNVpVVzhNVEp1RFZ4N3lIZUlwakc5N2hHRXIxVm9ta0Zmc0N2?=
 =?utf-8?B?dUY4UDRVRUxlQUJDNXJFZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0M0VTNMVmtTT2lOb2JSVlhXck9LNXhmQUZSUldzUVpYWVV4bjl4QmFTKzlt?=
 =?utf-8?B?SEEvS2Jhb2xwN2ZDT0VFOFN6bjkrVnZUZ2Q0QVZiWlMxeTRTQ3JXbi8ramRV?=
 =?utf-8?B?VHNkQlZ6ZGRzb0R6eDNBRm5ZRW5KQ2daczU2RFNIZlpSOElEaklmY1RqZEMz?=
 =?utf-8?B?R2REckMzWWEvLytLd0NmQ2xGVEM0bGdBRExNYjduZzhrWjBwZ3J0Z0hoc0lo?=
 =?utf-8?B?S1RUbVJlM3BnME5qd1hEc3BJV3FLMGloYms3N0tqbHdyTDdHclJ3Q2RCV1Bl?=
 =?utf-8?B?bnh3QjRuMW93d21tWGpJcEl4OUNJVDZxM2RCTXMzaENRc21MS3c0ZEloRTRz?=
 =?utf-8?B?cmkxSTNJYWkzUk1LNk8xYUhPM1JEakRHUmpwUkZac3o3RzVqd0dSLzB2NU9U?=
 =?utf-8?B?S3RpaWFOSWNlS3NDQkJQb1lNQTBBc0Z4QVp1d2RiTU1aRVhGV29Vd0padkhZ?=
 =?utf-8?B?U29aeFNpdFUySXd1VE9sQmNiMWlFSXJ0VXI2ZDZRcUNlc2VZUGpxZVk4NWpR?=
 =?utf-8?B?R1ZDYkhrc1pjbW5XT3NsMUpja0dtbFh4RldCa0w4OHlBNUdIZnhWRk9qYW13?=
 =?utf-8?B?NzJBVWp3OUJvMmptSHZ1TzBqSm5iVFF1cW9WTnlQalR4cDNCb0Q1T25Ubkto?=
 =?utf-8?B?ZE1OdFpHM1hWWDZQdW1JTUJrUWRGOG8venEwajZVRE80MWFLQTZjU04yeGRm?=
 =?utf-8?B?QlZ0ZlFVdnY5Rit3cFhQVWdjNjlIa3JVUjlMckgvM256eTFxMGkzN1gyWGsx?=
 =?utf-8?B?RmJCN28rVzRUOG13MWczWVcyZEJKQm1ZZi8ydC9vWXpQZndZQUhjbkVHYUJl?=
 =?utf-8?B?TkRCUGFrUE91RVhjV0F4SDN5WTE1S3RBenZ2d3l2WjJKNFdHdGtXRm5hTWJQ?=
 =?utf-8?B?L1YwMC8yTWFwWnlkWDNVNnc2WjVHUjJHSWVZeVpodm1HTCt5ZWdQNjloUFFv?=
 =?utf-8?B?S2VSaWZqWFp1QlpKMDkrb3BVc1dncEE4aThuNWpEZy9zNVdCMm9KSkZjQWxx?=
 =?utf-8?B?UjlUaGF5bjVIK2F0Y29KenQ3bjFYMGZ2and3L09UVTJ6U2FhQURySkZJWFBX?=
 =?utf-8?B?WGI4bGM3dDUwNkxtWGFHSlJlOTNaZ08zdUYxdUF2YVVtM1M2VkNjQnA3SWda?=
 =?utf-8?B?TE9tVTBtQVBWQllmRElka1dMTUhMNlhTM252eHUveGZtbTVTYm9hK085S1h5?=
 =?utf-8?B?U2ZnTWU3a1ZpNTFNUUdQaG5RRk9rNHVHT0l3bVNZVzdkM1R5dHBqS2tsa3dv?=
 =?utf-8?B?OU45cnhKcFFva0dhUnRGMlV1V1BKSEozK2Q5ZXlFemdZNW9Wdy9PRUt1a1hq?=
 =?utf-8?B?K0N1N1pGaGJpZFhJZyt6V0JIMmtwb0QyTjl6czhuc2JoOUtIMWR5RENhbzNl?=
 =?utf-8?B?V1lmeldiWE9McTdYVkQ0aFkxT0NlZm5GWXgxMG5jY3pWdnlOWVFhZjRZVXBt?=
 =?utf-8?B?Z29FRFNoeDc5cEl3RTVZbE1IUTRkclFCaE5zOWMzTFNBRkY3YXFUUHpRYjBx?=
 =?utf-8?B?Zzk4Njg4L2hUMkduUUc1YVlLS1djMW5NS25Fa29udXRYUjlNcU5kR25mZjc5?=
 =?utf-8?B?aXIxYmZFa0ZCUFRSM0dtZ1ZZZCtNUDUycVAyQk5xeVkxdWRaTElORWRoeHZ6?=
 =?utf-8?B?czQ0YVhTVGFrYU9qN2wwWGZRZXI2TFU1NTVSdWM3bHlXdlBRWW1pejdod29C?=
 =?utf-8?B?UGxScDUyLzNVYWtya2Y2TDdPZXY1OTArWDMxQzFDajJabG8vMUFsUUVYcS9D?=
 =?utf-8?B?aEliUGJ1dnJXeVBaZlFCeEYvOHZuMjRTb3RFa290TjBTRktmeXhsMm51WEM1?=
 =?utf-8?B?L1IwQitCL0xOQzJCZGx4T0pIT2FrQXhQT3dtcHF4dCtGMU1TLzNGdjRIVGhU?=
 =?utf-8?B?S0U0RFUrdW5xN2xkSDI3QW15bXVDeUVBaTg5RmVLT1hrem5FYjVKZ3ZGM0ll?=
 =?utf-8?B?UFcvSjA0UUhENUtnL0VrUFhuU2JCSHNheFY0U0wydlR3SUY0bkpnUGptY0RD?=
 =?utf-8?B?alhLZXZ0NVl6czdQdEhxUnNTK00xM3ZVajJJUFJidk42OEJuNkhwdVVIdHZj?=
 =?utf-8?B?alRqY3BmQmJxZFNxV0ZKZWtlZnFSVUc3aXRUejhZN1hVZ0dLZ3RqdWpsQkpX?=
 =?utf-8?B?QnkrYWVxWnpPcEVPcjF0MWswckZjb0FjVkdTMyt1NDEvcjJOcTNOQnBndlVQ?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71d6fa42-b039-4ba2-a894-08dcc7397878
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 08:14:42.8896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QBXhd2HHTxesbRmROAfPDFiYIc+0nalW8+z3w6LSknYTOWNtxzwFf0s1r2nBwr9wvoLQJRYqY9Zj+2CjlmS+1wMKX74UZXXo01R+dGDDyhw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6870
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724832887; x=1756368887;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cG1pasf2c87J/1EjpT279aIXIq+/TgoSqIhRe56HyDw=;
 b=b5+X7BO62/VUqsumBa+nj7X0HfaY08j+E2B+RsrZEXKzaKDaYed4Jdo8
 r5A99Vld7DDi2OKP1Vztj7c7FqZHJeGv4wzyQcKf4lttBXdW8SWtDuvAK
 Fa706YoUbyrMK7zhCHBe8JtUEQNooyWzV2cdzeVc/egXWrt9zClv5URae
 ncKVbfHe7Bu64r10deeyUrmP0oGFNseIc2dsjBt5om8FEdZG5oOw3jQQh
 BKhWGIbWmZ9y4paxsIsCg/p5uDakRL3FT73LUJWFhWqPfscEVCIERq2Lj
 MyxFrvBMNFV/NcNUxuCI2/qoVjmfdjKqBxLkQPdxGzmCcK+AcDGOOMiBo
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b5+X7BO6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix NULL pointer access,
 if PF doesn't support SRIOV_LAG
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
Cc: Jiri Pirko <jiri@resnulli.us>, Dave Ertman <david.m.ertman@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/27/24 21:12, Thomas Bogendoerfer wrote:
> On Tue, 27 Aug 2024 09:16:51 +0200
> Przemek Kitszel <przemyslaw.kitszel@intel.com> wrote:
> 
>> On 8/26/24 12:17, Thomas Bogendoerfer wrote:
>>> On Mon, 26 Aug 2024 11:41:19 +0200
>>> Jiri Pirko <jiri@resnulli.us> wrote:
>>>    
>>>> Mon, Aug 26, 2024 at 10:58:30AM CEST, tbogendoerfer@suse.de wrote:
>>>>> For PFs, which don't support SRIOV_LAG, there is no pf->lag struct
>>>>> allocated. So before accessing pf->lag a NULL pointer check is needed.
>>>>>
>>>>> Signed-off-by: Thomas Bogendoerfer <tbogendoerfer@suse.de>
>>>>
>>>> You need to add a "fixes" tag blaming the commit that introduced the
>>>> bug.
>>
>> Would be also good to CC the author.
> 
> sure, I'm using get_maintainer for building address line and looks
> like it only adds the author, if there is a Fixes tag, which IMHO
> makes more sense than mailing all possible authors of file (in this
> case it would work, but there are other files).
> 
>>> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for
>>> SRIOV on bonded interface")
>>
>> the bug was introduced later, the tag should be:
>> Fixes: ec5a6c5f79ed ("ice: process events created by lag netdev event
>> handler")
> 
> I'd like to disagree, ec5a6c5f79ed adds an empty ice_lag_move_new_vf_nodes(),
> which will do no harm if pf->lag is NULL. Commit 1e0f9881ef79 introduces
> the access to pf->lag without checking for NULL.

Thanks for persistence, I do agree, will review v2.

>>
>> The mentioned commit extracted code into ice_lag_move_new_vf_nodes(),
>> and there is just one call to this function by now, just after
>> releasing lag_mutex, so would be good to change the semantics of
>> ice_lag_move_new_vf_nodes() to "only for lag-enabled flows, with
>> lag_mutex held", and fix the call to it to reflect that.
> 
> I could do that for sure, but IMHO this is about fixing a bug,
> which crashes the kernel. Making the code better should be done
> after fixing.
> 
> Thomas.
> 

