Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3429A18080
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jan 2025 15:53:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B1C1811A4;
	Tue, 21 Jan 2025 14:52:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nm4BpRyEC-ql; Tue, 21 Jan 2025 14:52:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CE1B811BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737471177;
	bh=reMVX1PuB/uZ8vb3Kf8BdWKAWaSnoAyGXWmyRewpk7s=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J+evcIcdjmOxv7Zc5W9t2PcYyKAEHDyN1iUY9k/xLZ4QOiekuARcsAcE5WEoZaCP6
	 dPYg/JbJt2+n43N16DBo8ICAV+roUk/LkmQcSLYkuJeU/fIAbt5QSMo41YnlgtiTOL
	 ox9V37sWIklNnzG24ak4oIB1FJ/5Mqum8k9r8Ic8ighTwXhtMP2S0SQYnmlfT0DTfC
	 ScicnXKGERmFx3BDrGGhq1LUCVTMa3SlXf/iekqzl/AIqv5+Tw2oJaNp99F4jNl8Wq
	 /Mtf6j6izrqDXFUsvRVjmyqk6qsUIGLhqrGgOwtOTgwy1lEOUUDzddcg7MmIpZN6ej
	 rjHjNHsebknQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CE1B811BF;
	Tue, 21 Jan 2025 14:52:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 18A75959
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 14:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD3AF606F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 14:52:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g0YVzRZRzNUo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jan 2025 14:52:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 17372606A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17372606A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17372606A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 14:52:53 +0000 (UTC)
X-CSE-ConnectionGUID: Doem7RafQRSAOS3is3z3QQ==
X-CSE-MsgGUID: z3DqrX3wQGmJ9YKDRnm3Og==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="38132470"
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="38132470"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 06:52:53 -0800
X-CSE-ConnectionGUID: /Y4HRA7UQoeaES++Flbl7w==
X-CSE-MsgGUID: /vwwA7A+QKW9l1E5Hay9mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="111815296"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 06:52:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 06:52:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 06:52:52 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 06:52:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JX9hobF6tCSqlUm/Tdm1ddNJRDCMEYBlovshjEk0ifqVZhjuKa7RHyORh/lxCZlAZydpzW/yq58FZkpp2Uy3zCBUvMWNhuDtN0HDIeXMCxYMiB7Uwe/eyQcwS2gvT9SYhulxckBo20xNGZ1eq8JVCmx34MgL5jEXdwIloqJDyDHO6Ff9vzWtMPW9SrQPKf0XkkYwIak/FMVziwfxSgX+EIfHLsdlh8ZoGvi3uC4cego5STh14pwrLiupO2D2yMIZrETVrD3WhXjEpE8NdyKwxptUVU2bxUdYiT8XF0K17MyYj+QOhdoEJpKRwCtc9tLFNgPmC7f2LeqLXd9Ol4wPmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=reMVX1PuB/uZ8vb3Kf8BdWKAWaSnoAyGXWmyRewpk7s=;
 b=kQ+FmXz04UYqunWHqZ1UglYMujpGUqVUJOmcm4OZIAiPv/257LX+xbqHuTwZaEqg1jhJ9vfgOlLaAG7sC2SLS0mlgyJd7GUQdbyZqj59lPYdukVa1KpemLVTndZSI1yWxQTOXCmYjBizvbWVKi9NlBd8CbEQSDAqBCI4XtePzRiwfpkly+1I2RF6sXgtyHPYRgtzMuBOT/oGhTqxa85cXc2EiFREtCVoR8U+DiqtvHeBmhByq/FnP3PQYi/FCmkvuwV/z7FaImj2i15dC71qbE6H3aGizojf6+3s9wCra+Kvxobi2rOgYYOVKmUFNUecRYJBnazWn4psVIGUC6eznA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by CY8PR11MB7363.namprd11.prod.outlook.com (2603:10b6:930:86::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 14:52:33 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 14:52:33 +0000
Message-ID: <69154395-38f4-44ff-96db-7c383a97ddb9@intel.com>
Date: Tue, 21 Jan 2025 07:52:20 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <horms@kernel.org>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <michael.chan@broadcom.com>,
 <tariqt@nvidia.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <jdamato@fastly.com>, <shayd@nvidia.com>,
 <akpm@linux-foundation.org>, <shayagr@amazon.com>,
 <kalesh-anakkur.purayil@broadcom.com>, David Arinzon <darinzon@amazon.com>
References: <20250118003335.155379-1-ahmed.zaki@intel.com>
 <20250118003335.155379-2-ahmed.zaki@intel.com>
 <20250120165927.45ef723b@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20250120165927.45ef723b@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR06CA0019.namprd06.prod.outlook.com
 (2603:10b6:303:2a::24) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|CY8PR11MB7363:EE_
X-MS-Office365-Filtering-Correlation-Id: 5532b8b8-ea27-4541-61ed-08dd3a2b3c99
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eXVtZVg1Znh2Vk5zd2Y5L3lUR1ZrSUFkWVBFOVRMWGwrUUV1dVBFdUNxcGNj?=
 =?utf-8?B?ZmNFbS85bWtqbHR4MEp1NWhnYkFRdk5pL3JWTy9RK3NPempLVVJEUkx2VFdx?=
 =?utf-8?B?T2tqcmFCNjdJZWNKZDExNlVNKzRqYVJYbFJrK0FGMmdzSGxBNklJdnp4NlhV?=
 =?utf-8?B?SS85NnNWOXBkWU1WVHlQUCtFZDZmcnY0L0lKaStOWnBjL3U3ekl6Z2JtMHZ1?=
 =?utf-8?B?T0dDZ0hUMThQb200SDM3TCszSnJ6c21NaWo4TEh3S0hObThSSkdqbmYrVnVm?=
 =?utf-8?B?QmpOK2didU9rSXZsaUhsd011OTdSOVdVb2llVGZIQUZtbnltS3I5Vm9GRGt1?=
 =?utf-8?B?QU90NkNDNS9Sb1VYOFkxbEJEMzd5SDZ1ZDRTdi9rWDA3Uy81VHo3UzJSdDV0?=
 =?utf-8?B?K1lDSWdSeGRmcm1sbHRTRXJnbEpBTGw2RHdmczhveklUY0xyRmFLRmtZSDYw?=
 =?utf-8?B?MUxwNTJDQ2JiOXRSMmxTUkVZRjJDNmlTWmJ3bDhxWjcxdkRwNzZJc1drTWdK?=
 =?utf-8?B?RXdaOHJKeEFJUHR3YWhVRDJpSG9FSUxRVm5LYkhlbjhML1g2dG03MVBvMElN?=
 =?utf-8?B?RUpJWWdiaWdtS0plQ0FvRXpJWjFvU2FCRHBWU1JGemYvSjI4cFRHTkU2VUQ0?=
 =?utf-8?B?ZVYzU1ZMcmhoZTJGcEtGMWRmcitQWGt5OFNReXIyMUFhV0FvNUljV00ycTNq?=
 =?utf-8?B?SlN3Qm9YVE9VS050eXJ0R0w2RllZcTRzeDdzWnVSMzlVVGRqcU9JaFcxRFVh?=
 =?utf-8?B?WE1Oc1FzY1R0T3FWNTYwR1VDT0pQN05EbktXTDZxc0txN2JKTWpwUWtrTmFU?=
 =?utf-8?B?azQ4NzNLWVJkR0YxK2g5dGIvS0ZNYmYxSmlVVDh6UkFDZEtVUmIybUQ0MlR6?=
 =?utf-8?B?NlU2MS85OTY3alJxakZ4dStmOEt4K1lvOWxITjVTdnk0ZEUwdGozNWhJVFhD?=
 =?utf-8?B?d2tieHArNkQweWhPUHUrTnNFTU9Ub3JmK3QwNm1CQ3JoYnhVWTlhYkdITG1w?=
 =?utf-8?B?MW9HMW9KMHU4d2Eyd2l0bitoZTdvYitiQmhYaS9NSWtDeEwzWVRlRWM3THIz?=
 =?utf-8?B?eVNheXdBT05LeTZZalJsK3RQM1BHUm13UDNXLzkxWlFVUElnVHdYOW0rZHZO?=
 =?utf-8?B?bXBRNDczRitUcGVRTWtNVVJva3o4WlpKbFpFcDN3VUFXOUZ6eGpMbXJ4c1RZ?=
 =?utf-8?B?VlR2anMveFpFbFVyOW1CMFNvcnFjdk5MRDJ5YmV4YjlBVFdyWjhWT0N3OTUr?=
 =?utf-8?B?OEdhM0F1dktaaCtFVWEvTmhscFlWUm1pSndoVU9lc0Rxbk5aYzNDMjNkd1pu?=
 =?utf-8?B?bWh4V254dDlFNEwyUXc5SmsvUklwM3pVOFRWRnJ1QXBQSkg5YzIxUkkyWFVi?=
 =?utf-8?B?NU0xQ3QxTlZnbFhZd1N4TFZiN1FsbEcrTnZsTkhNTHlCallwOEtHaUZzcGJy?=
 =?utf-8?B?V1F5YlRXdHZxT09WZ3MwZ0JTeXNmS3V6WVBJVHJtbnpDa1pHUTdndUE3RWgw?=
 =?utf-8?B?MEc4K2Z4WU1YOTdpRzgyNmhLWWpBZUFZWlp6THA2L2FqNkVjbVI0SWZ0cXdt?=
 =?utf-8?B?Q29rU2ExaER5UjRvREtCUFRDMzJYeldkU210UmlqcHpxMGR6akN6djRNMFp1?=
 =?utf-8?B?bFQwR3hUL3BhOUcraDBUbXZKTmJMa2t6TXIxSkRIcFRKL1VSaFZiSExSZ3Fy?=
 =?utf-8?B?c2N5N0FDcm13OXl6aDdiUFQwVVFXdUVZN3BCODhDczlOakFNS29XaEtnWTY5?=
 =?utf-8?B?dGpDT05Td0tSanZUN1BCdXdBbEdyT1loMjAwenRNSEVlTkRkYWZtMytDeE1T?=
 =?utf-8?B?MngzTHdqZUxhcXpFR2cvYkJYUlVvRitNMCtQQkZYcUNRVlJjNGdleUZZWnBo?=
 =?utf-8?Q?k0nRRPzJNaJ3X?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmRoeDdjcmVvTmdMN1NIekEyMlR6ZWhZTTlhRWZERFpPM3lHa2pxNlNPL3Zy?=
 =?utf-8?B?U2trSFhwWnRWK2JseTFXZnJpcEJ0eHlQcC9KYURFOG9hWVl6WENUSFFrYyt2?=
 =?utf-8?B?VnhwcTBkc3ZNdDZsc1lud0Qxa0F6OFUvRmF1OFRUMGlyclVBTmplWkVEZFZJ?=
 =?utf-8?B?TUQ0OFhHWnBvakIzUkVZenAwUlpiMllRSnlDbGVpY1VEK2tFeUdiWUdkWG9v?=
 =?utf-8?B?eUgvMlhDSG5JN0FNeXZBZUhmUDB1Y2tDRlNPVmxrNzc5WU1JeWFQY3ltN1pp?=
 =?utf-8?B?cGt6blA0enZwL0xJelFLeUdOWTJQcUdSL3ZYRE5uOTkzVG9kKzR1TjB5U0RH?=
 =?utf-8?B?NjhkaUU1b2krbThxbWZ6M1puenZPUDR5OGJ6UCtGTC9mWFUvWVA0WTdMTks2?=
 =?utf-8?B?cnJDUUpmYWU5NnVDREtRaFQyUHk5OHpwLzkxODNUSHd4Rkk0dGtuTjhQc24w?=
 =?utf-8?B?TXpsL1FuVllHWUo1VWp4Z2ZIM1lPaXY1R3VnSDhTRzJRaDEzanZsMjgrWjRI?=
 =?utf-8?B?Z2Z2LzVTRThudDZONjJUdHdZb3daWGJNS25LekVUS1JsNDNueFp0NkVaaXRW?=
 =?utf-8?B?eElITVh4RUgxSDQxdXFyR251NklFbDBNTHk0dkUvYkVBTmkvUFc3WXBsOThy?=
 =?utf-8?B?ajJObG5nMVhUOFhRNVlMcjlUWTRpMU5MNzJqcWxQRkdoZFEwNUJFRjNBY3BI?=
 =?utf-8?B?Qm5haEpySXlsUmt6SEg2UnRDa1FBRU44Ui9GcFdISXNicXdWeGlIaG5vWmNm?=
 =?utf-8?B?Qml2c2tYYVZQSzlwRkxIZDhwVkJPSm1yMHdhUHEwRzZkVHgrV0Q2VEk2NkFr?=
 =?utf-8?B?UEh1SUJueEhPUHovd2JvMlpEb0k0bVFmWlNJOUFNaU4vZnduVXEzaE1MeGtH?=
 =?utf-8?B?QklPKzZyY2FYQ1dwbFJaM1czZGo0eGFuMldBTDB2bC9zb2k2QXVZZFlNREsr?=
 =?utf-8?B?M3hvQVFHZGVxdzUxeTM3Ky8zYXVKWHVCT2hnQ3pVcGVJV3gvaXVZN0k4aENl?=
 =?utf-8?B?eVFqVFFCUnlKT3c2QlB3Z3dSSUNnakcvTnN4RTlsd0s2OFpNcldKdkkwRG16?=
 =?utf-8?B?MkJlbUtVVXNTam9hbXFwbmtaSXBuNHhZNk1HRnRURHZqb0dCMndFdDhmWGF1?=
 =?utf-8?B?aUFEeC81ekkwNWRpWHdjdmc3TGQra24zam05L3I3N2x6L2JnVXRNVEQ0anRQ?=
 =?utf-8?B?WFc0dncrYWNEcjg4RjJMUDZJck55YlY3eWRCajlmVGF1UTV0VVRhZ0NZZVBO?=
 =?utf-8?B?SVFWZ3NBVFMrZlhzQW5NMHRxT3RSaG8za21GYmxNVkI4cEZFTXp6cmVWQ0lk?=
 =?utf-8?B?bUU3SXMvRFpBUS8xZWhMUllMb0ZJVWEyaDRBMkRwSmVhSWpzcFhhWXFUcG1Y?=
 =?utf-8?B?d1pkMGJLNExPUXFwdm5YbXozdENiRjh4bGdSNEZWbFpXMWo2K01WK3RSdU9h?=
 =?utf-8?B?c0dmVWFQRzNFN294YnAvZEdEbUYvUE9yeDNNVnovbE1ObTZod0F3RzVGQ3Ix?=
 =?utf-8?B?dVhyRlU4WHVzSTc3dFdycmwxUk96dWRZL28xVVNBQiszSms5UTdGVHk2QXhK?=
 =?utf-8?B?bGtDMVZ2UlhVSDhyK08rTWJtbkpHVTlhN0hDV0RvWU9Qc1dCNEsxOG9uNzBm?=
 =?utf-8?B?ZzJPaXFydXJzb0ZiRFJjSjRSMEVkUkM3dU41Y3pXVEUwVVpsLzRzVEhxWXlP?=
 =?utf-8?B?dTZRbXgxS0VhV3NTU2hqaUVZRFg0Rit2WXovdzJrKy9rU29LdzN5UVk2Vi85?=
 =?utf-8?B?WlBlTkgyd0Jlc2tGbTlkNEdsdnFlSFIwbGlOOEZ3THB0Vk45SkEyWkFnTlBp?=
 =?utf-8?B?WGxObU8vNkt5OXNnSjJILzVIOGxOSGFPbFJNcFFKdUhUREZ2eGpSQzVUaTlt?=
 =?utf-8?B?MC9yeVZLVy8yQ3p4SzZSMTdleHMzTCsvWkthT0x2aUtEd1ljS2lVSGRPTk56?=
 =?utf-8?B?NW1Vd3hCQ1VhVHZWcnE5dHk5RVdRWWFJTDBjV3V1dTBuYUhvbEZVaDM3Mnhj?=
 =?utf-8?B?b201azJ6RnZvTlNqY3l1YldpVXVwNU5mSUFuRzFNenRGM21TaGtXVEEwWk5R?=
 =?utf-8?B?dWdjVXlnZ2d2MGZwY202aUJjT1hDMU8vZ1VMM0Q0eFNoQ1NpOTVlNVlCMjdD?=
 =?utf-8?Q?XNf1f5JLMljaamloS1MIne/+z?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5532b8b8-ea27-4541-61ed-08dd3a2b3c99
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 14:52:33.2742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jCy0RB611xswn86GE1p8uRPhw7P1zhd3eyhWOiu06UaLWssaeMZaBWTihTx6wpPzIAq7dzUvYkJVpqhNodo8SQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7363
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737471174; x=1769007174;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OObYyg/PcMm2r1zLYkI7NAU1zbjfZWwzW3G+TzWVKxA=;
 b=KlPAmZr7vOyz4S0YvzTakg2Oo87m4n1TeaQnkHRnU80W2Srrza+4wgku
 /o9/tRl4b1/FKMTIfCP2EmPDtXGRUCPXTuxSaVv78c522y4f0QFrpv5WG
 d7f0iIhHROGaJhHrt+U8XP1EtWzOowAt6k21a77FqgpOwG5mJc77DVTAr
 DN4EH96NJA4zInnMYijJSox6GfWLADt7+S5XSQbk3XQrK14yTM6K2XR9V
 r7EU+PqWcHLUWOzp8h2DRMvDA+kELlGlSmOLnIk8CdQCdFzifGOjFlMmL
 d6tg601PGl+JI8pCcWvdGbfeCO+ibxn1+7pPPWxr8eQoBFNhbTqYlUse9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KlPAmZr7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/5] net: move ARFS rmap
 management to core
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



On 2025-01-20 5:59 p.m., Jakub Kicinski wrote:
> On Fri, 17 Jan 2025 17:33:31 -0700 Ahmed Zaki wrote:
>> +#ifdef CONFIG_RFS_ACCEL
>> +static void
>> +netif_irq_cpu_rmap_notify(struct irq_affinity_notify *notify,
>> +			  const cpumask_t *mask)
>> +{
>> +	struct napi_struct *napi =
>> +		container_of(notify, struct napi_struct, notify);
>> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
>> +	int err;
>> +
>> +	if (napi->dev->rx_cpu_rmap_auto) {
> 
> Can this ever not be true?

It can, but not in this patch. I will it move to next one.

> 
>> +		err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
>> +		if (err)
>> +			pr_warn("%s: RMAP update failed (%d)\n",
>> +				__func__, err);
> 
> netdev_warn(napi->dev, "...) ?
> 
>> +	}
>> +}
>> +
>> +static void netif_napi_affinity_release(struct kref *ref)
>> +{
>> +	struct napi_struct *napi =
>> +		container_of(ref, struct napi_struct, notify.kref);
>> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
>> +
>> +	if (!napi->dev->rx_cpu_rmap_auto)
> 
> Similar question, can it possibly be false without driver bugs?
> I think you disable rmap completely if we can't add a single IRQ,
> that may be too drastic. Better miss one IRQ than the whole rmap, no?
> 

Same. This belongs to next patch (when the notifier can be set because 
of ARFS rmap or napi.irq affinity).

>> +		return;
>> +	rmap->obj[napi->napi_rmap_idx] = NULL;
>> +	napi->napi_rmap_idx = -1;
> 
> Why do we modify NAPI here? Shouldn't caller be responsible for this?
> 

This is called when the notifier is set to NULL.

Setting  napi_rmap_idx is not strictly needed but the idea was to have 
netif_napi_affinity_release() unwind all changes made in 
napi_irq_cpu_rmap_add().

