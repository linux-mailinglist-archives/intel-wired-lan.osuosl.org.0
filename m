Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 953E69B45FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 10:49:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D58C80F83;
	Tue, 29 Oct 2024 09:49:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yJQ5XMQcKoW; Tue, 29 Oct 2024 09:49:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58F9580F7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730195360;
	bh=NEwS+qUBRaTwdEw4NqP9OytA2Z977iea0U+Biihfz8Q=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dhQMds7hzqMaObzfKjTn2r8fHGUn/+7K5epDf5W7KiM0rxE0zokZAI/FwWtiJCUFB
	 Xeh0Wc6TwL9xSB+q69JowgNKW/Rl898ymyusyg8dPhx7aoPVc7abv1qqz5uA8uxIBE
	 ZKEj8vOeHM5IMVldITMklwuuSLRSXEyMhh8mBnNzZW+MDEhChwugNFxkFZThL4W5Mm
	 ArP6hJ915Qp0TrwITQpM/qpSAw1r3W3X+lGUC63j7tGA4c0+Fp/HRuLkp32V7+DkJV
	 f0x66N1nKAADhtnED0Uad3sToIWmTP0bWfEeM8VDOIQUEG/gLITfFO8qiTIBXax0eY
	 oEgVfQW5eBOdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58F9580F7A;
	Tue, 29 Oct 2024 09:49:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B1041112A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 09:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92C5660781
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 09:49:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sjYn0bJlmr9m for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 09:49:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0111E606F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0111E606F3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0111E606F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 09:49:15 +0000 (UTC)
X-CSE-ConnectionGUID: HRvV0wwiRMeHth7BFzQBjA==
X-CSE-MsgGUID: So850+AhQp2s0GOEOH3NeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29933465"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="29933465"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:49:14 -0700
X-CSE-ConnectionGUID: LGyZjXGmTvSEQerbmozNJA==
X-CSE-MsgGUID: g+LXvNIdTPanbbtxhX74RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="82051879"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 02:49:13 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 02:49:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 02:49:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 02:49:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kk5PPLC5Z0I6mYRR9VfVFEtOhuxTey12FlH8KFMGVvcXA/YmdK21kXagtX8mSuD+AJgGRt0u5wIebgD6cYH5mA9DzYUXoKDfgUdZuOEpqNALgLF+DqctWsjVtptVQcOhprC77efrlCymCr1WjHD4Uw2oKn2gd9utrjJ5ESlU41PrlS17vsHR2Ve1u0/ZiMLu6vI9SexstiRoWlu3HFo1OS0yj1mDW8F/Z0lDdSLPbZ4DUYn0K0zE90GkRY5mh1RFjKhNO6GdufKfw6czs6spgpAbbfR2uKWG0vJ0YdHtdCATbYLZQuVHxRvvObo4PZIJOP6X0OBuI8uF/1zVXagKSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NEwS+qUBRaTwdEw4NqP9OytA2Z977iea0U+Biihfz8Q=;
 b=JWwSNpG7S6yv/joaeta6Tkxhuka3cSPkAENsQQnTso8ekmCe/ALv44uzTKfG2CwRiy22nit36wc4jFhnsM0XmSYGEwToh78Wy/LF0OcfO4DX80QXt/LoIqz61qSZx5QSb++6SuvuDvc+8XAbeomjZXQhtRvrRYoztxBttBlhqETDDuqSOq/LdAY78EMBaSd+APV3kDizYAW4afKHvmIPlqtXYAHx0918DIziRex1Mg1Kmqj3wuur/eZojHYFwxg4aR2f1dctGO4/OBc4mhvNeAi0/FWPn0r6oQz8AuBypesVlUJckcgWzfUzC/nfWRwwDnKtXErexpKYHlpTcZET9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by BL4PR11MB8800.namprd11.prod.outlook.com (2603:10b6:208:5a7::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Tue, 29 Oct
 2024 09:49:10 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%5]) with mapi id 15.20.8093.025; Tue, 29 Oct 2024
 09:49:10 +0000
Message-ID: <f02044c0-1d90-49f8-8a2d-00ec84fba27a@intel.com>
Date: Tue, 29 Oct 2024 11:49:03 +0200
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>
CC: <jacob.e.keller@intel.com>, <kurt@linutronix.de>,
 <vinicius.gomes@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "Alexei Starovoitov" <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, "Jesper Dangaard Brouer" <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, open list <linux-kernel@vger.kernel.org>, 
 "open list:XDP (eXpress Data Path)" <bpf@vger.kernel.org>
References: <20241028195243.52488-1-jdamato@fastly.com>
 <20241028195243.52488-3-jdamato@fastly.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20241028195243.52488-3-jdamato@fastly.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0029.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::19) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|BL4PR11MB8800:EE_
X-MS-Office365-Filtering-Correlation-Id: adbc59ef-0e26-4ab8-863a-08dcf7feefb8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WGdmVmptVUNzblZBMnZ1RzhSTHJLSlM4Njc0Vkl1MnJZcDAzemJrTWlPWWkv?=
 =?utf-8?B?eXhmTlJzR0lvUmEwcVFibjhnYnlhTmgwSjlXT1JqUWxHTzExK2p2dDBsT2RI?=
 =?utf-8?B?U1FjTTE1RmlZdzVsWm5VcDlzREhvem9CWi81Y3kzN2JIbXZKUTQ5WXZyWk4y?=
 =?utf-8?B?WGluRHFJN3F3bWJYMGlPdUswUXdKMERSeHE3aVNObmc3NkxLN3A0VWlHNzFo?=
 =?utf-8?B?RW9KV0JXOWxhRDU0VHhPdXY5UmJ6YlJtSUxsS01KVXFCM1NlYW1LcnVCeWFn?=
 =?utf-8?B?VWRPWmU0QUpMcU5DYXJKRS90ZW5HbkJKRDBVa0lZQ0IzdThETkc2UFRRclQ5?=
 =?utf-8?B?VHdiVXlNdVFENEVFTWdrRVhEVU1JL3lRRUcvY1ppaVEzTzlpNHFqdGtlQVpL?=
 =?utf-8?B?Z0RGa2krSGE4YUdrZlV5STd1ZVllWlp5endzTHJac1pJaWozSS9qY1d4Q2dV?=
 =?utf-8?B?ZzBSY0VEeE1aM3puZFIxZk0ycUMvdE45VVlsSmpsa29jeTdCdkc0U1U1T1RK?=
 =?utf-8?B?YksrRS9iUlgrUGdaQUlnM1Y5WWNBeTdmZFdyTnl1OUtYdTVtSUdOSCtMVVBX?=
 =?utf-8?B?cUZwbjhwMGpwWEpoR0pvRmJ3Q1FTdjZ4c1VjYWtGcmRRZmJvU2hFTHlMVEVo?=
 =?utf-8?B?MHlmS2ZURHp4RDhYTUhHMG84ZExlNHZPYW5wem1BZDN5Yjc4YmZVRjBrYmhj?=
 =?utf-8?B?NklFZVZHNlc2RXdaeDVjM3J5NDVFR0RmNTdtbkREalVkRG0vcmIyZHZOVktG?=
 =?utf-8?B?cDdQNGxTZkw2eDVPbUJLamNWQkczMDVOWUVmVC9JY3Q0NnF3YUVNUTBPWjYw?=
 =?utf-8?B?ZFgrQS9hckZyVWJURkYvZ0k3ekZJQTFXbHZ1YTBOR051R21Jdm94bStCMHVo?=
 =?utf-8?B?S0huNU5mMllCaVJoak1SYmpGNHo1VEtXRTQ3REF0TjR0MlhUU3hkdG9nV2h6?=
 =?utf-8?B?Qmx4MnZEUC9BZFdOdnlySm5qOTk0UnltaWk0cDMvZjdlNEc1OVhkTnAvQity?=
 =?utf-8?B?N1dwc2hTZ1YzbU5jRGIxakVBU1MvRVhEdDh6S0RuSE1wM1prRkR2OFFsbXl5?=
 =?utf-8?B?ZDY4c1lvNWxMRVo4dFNRMTdwa3hiY0pMWWg1WDljWStKT1JqTmY0NTIwdmFo?=
 =?utf-8?B?Q1NMRnlzWktOb3U5bzlHeXNPUCtHQjYwbmRjd3FCZnBwRWVRamNjTzVJczVF?=
 =?utf-8?B?L0RmNjU5elRGUTZlaFBtUFI2ckFnd2RSOStreGtHYk9mdU9udXdJdHlDWXlC?=
 =?utf-8?B?VWVvRVJBZ0g4a3VQQ1Y2Qy9LVEhsYWZqdFBVR3dOcjk2NGxsaGRVSE9OZzYx?=
 =?utf-8?B?Kzc1M3o1Sm1zeHNnajlTMHpsRWljYUpZc2FtRVFIMXpyOHI0aGNGdmpWRUZY?=
 =?utf-8?B?ekNVOGdQWnNKTjhrakZJM3dwUEd6Q3B4SWlhN1FoODJxVWJUOEgwYnVLL0hz?=
 =?utf-8?B?My91VWtnQ2ZoNkFJMmd4RWpUNW1Tb1BHTGJWMW44YU90UVVDTE8xazdRdkVk?=
 =?utf-8?B?ZnJWcHNORTFBR0h1SFpFK2J6ZGdNTXJDWmliaHpYWWlvWjMwZ1Qydnp5NFZi?=
 =?utf-8?B?UytWNGtxSmhaQ3QxNE5lOFBZRFptNEJLNmJaZmcrN2F0S0YvVk9qdU5laTNP?=
 =?utf-8?B?Q0U1UGMxZWROajJ6TnYzNitYRERzZXNSL0IyNXZsaEhGQVhHZUlHd1lkMnUv?=
 =?utf-8?Q?ZHzHiZe3QdgnWqX49PMz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2RSa2RTS1AzalVMSGZJQjMvdGtPR2ZaTmM4UHRLWEdMMm5OS1FKTW9xMzhy?=
 =?utf-8?B?UExGQzdoVmFHN1dMR0NUTDk0RVY0SWZNNENjblhnRjNxM2ZlM0lpRXVQZE5M?=
 =?utf-8?B?c2xIa3owTXFISm1EZU15ZzBveGRkKzBVczVwK01KS1NTbllUb0pIZTJuT3Y2?=
 =?utf-8?B?N2ZvdUFQbHl2Y2xNVWw5TC9wZFMyZ2FBUlczSjhnYng1MDY3VmJQVUFFdDV4?=
 =?utf-8?B?ZFBISmdjNGJrL3JxOGdhRDc5RzExclhuSFpuUUZOYXZ5NU5iRFowQmxCNmgr?=
 =?utf-8?B?OE1CZW9xRTYybStnSWl6dHFlUVI1RlNBcDI0WnltMFZiRGd2N0tQVFZPVzlv?=
 =?utf-8?B?aHJ0UmRCZWZvajl5Qkl4QnJBWnYyNjg3cC95Z0tCdGR1cUxEejVNMWx3Vllq?=
 =?utf-8?B?SkF1aEpXdTNYK1VwZ3FFYjc5TlJiNUFTVFB1MmQ1anZJcVAxbFYvS3JacXFV?=
 =?utf-8?B?RGhiOGJIb3o2R2U3QTNFWEh1QktDZTZOTWJlU3hSbWorY1FhbUE5WWx2dDQx?=
 =?utf-8?B?VllnS0dHOE51ME9LT0xMSFZUc20wVUk0a05HbEtUN0R1UWRidlBPNHNGbkRS?=
 =?utf-8?B?eHg4ay83aXhWVlR1L2IybkhGY0Ivb0p4V2ZPTHJ2SkdtbDMxTzhudDcyUHNl?=
 =?utf-8?B?bjBGVGJsZEdhUS9VMTcyWXRaUWdtMTZJTUh5Y2Rmc1B1b1B0bWxQRExvQjBY?=
 =?utf-8?B?L1lsZGF5ZllzdnRSTStlbVVBQ3oyYVFTMGoraS84M3pDUElvUWtFR2xFL3Fn?=
 =?utf-8?B?U2kzeTlzbUw0a2JnQ3lxV1FTZ0JNcDQwcFNYalBCdnVBYmlwdVVqT0lLT1BN?=
 =?utf-8?B?MCtzQ2xXNUpmbEFBd3JZZ012T2pBOHZWL2lSUnU5SXFlejRoeXZJakIvRHlX?=
 =?utf-8?B?RWt4dmcrbitZUjZRd0NJbHN0Z0FmdGd0WDEyNmFPRUJsQms0UUJIOE8yVWsx?=
 =?utf-8?B?Nkx6S0NxeVY0UWlTcU9Cb3RBM1VJWnhyNmlWYmgrdExmMXpHM3NQK2ZaWUxF?=
 =?utf-8?B?T3lVVGdoZ25Tall2K3ZMNWtwT3pWcm1QSkp1Y3FxT0R5ZHJ4L0UxR3ZlM1Yz?=
 =?utf-8?B?YVlFREhCeWtEMVdhSHNHS3h0Y3pldFFjckxmY3N6V0tKeHV3Njlsc0NqeThk?=
 =?utf-8?B?NmdjajBHOVFWK2RvQ1VOL3gwRnMrclVGaGFtWkxad1lHL3Qva3dBN2JPTGZZ?=
 =?utf-8?B?dFMvbDhUbVYwZVUzbmxsZDNpQ3ZXLzhRTkdlZXowTUNaa1JTdmdSeW93TnZU?=
 =?utf-8?B?Z1JEM0t0Z1kyK2Jvb3VFUkF4cFdINnFJV2hXTWdvTFVHbGQ4dXlDbWFremNL?=
 =?utf-8?B?aktRZ1JrRjcwREl3N2FoRkRSZFJ3M3dmeTdEcW9mU1Z6dU4zelVQWWxxeUtm?=
 =?utf-8?B?NmNOOEQzWVFsdGp3dEVVZVRDcmdQOVA4bVFXMXEySEdPMVVZVDlSQy9yYjFo?=
 =?utf-8?B?K2Q3K3l4WWIwYnlQbWNwalQwdU05NXpPay8wQkppWnJKaTc3MnpmeUhQYm5u?=
 =?utf-8?B?NG9haURYK0RJTkhUY3VsaFVUcEZJanFuSi9TdUs0OWxTbFF3d1dGKzNUYWRV?=
 =?utf-8?B?aC9mbDVDNzc1amR3d2dBMHpZZVJHUlBDWnlkRUNTT1RnN1Q0MVJ6OXFxRFN2?=
 =?utf-8?B?aFdGYnZaVS9HU2hhTnNSRVQ1Y3N6eXY3L1d4eW9mQ0JwZ0hGa1R3WU50NXBH?=
 =?utf-8?B?cHhBcGhHaitNQ25VMGtjd0RzdmtaYkxJVUZsZjRWSE5vV2ZyS01xenoyaHIw?=
 =?utf-8?B?Y3hva1p3MjhoMFc5VG95eGR0VHYwVlZMZ1ZKTUdNcE9BN3lrTjFzNE5BczlF?=
 =?utf-8?B?Tk44OENwdFFZcWtYeG94U1I4d0dNMnZ3cmtKRG5rSVZBbnRUQ3NiOEZRQnBh?=
 =?utf-8?B?TGFBVFNDN1U0SnBvRXkwS2QvTGtsNEFqVURUL2x3MVh3ZTd2VDZmd3BjUjI3?=
 =?utf-8?B?OWgwVFBYM3hzaWVUSXRZcUFCOHdIU3Z0bWdPME40alpPZjZUNVhGNFJZUVpz?=
 =?utf-8?B?Z05wbWc3NVVDL0txeEJBNXhqdVEvdkR2WGN4bUc3T0pXaytCQSt6YmlzMjlp?=
 =?utf-8?B?Nzl2Nlg1QU9Qc0l5bk14dDZkZVpxWDZwNWFDQjNNRFRZaEN4M3JFU05Cekdm?=
 =?utf-8?B?U1gxNWgrWlZGQ0FFdnhxRDBjZDlVMkxTWVJvU0JuZXRFQURLQWZVcGFhRmcx?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adbc59ef-0e26-4ab8-863a-08dcf7feefb8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 09:49:09.8456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wZYFCUNed4CrsoMUDtAL+Lw+NnPd/wkA0JLha5jxfkDqt2TeowFal6jfgLrZcSBELQn1W6l8tpj2KzHV7oPgKaXBzh0tH0ctX1mrN9e9ZY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8800
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730195356; x=1761731356;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8UR6EXIYobpblb1cUxNkC+LW/V0mD5YNgC2LgjoRpq4=;
 b=L/B8XWJQjOZ8mtqsaD4PkLz+EuOPqjZK83Fie16cL/J/62OmpLH+SPZZ
 7vmK/krD5xA6xhTjEVTy9NxOM/g+Or5lKuWvh6yZIxq4wIkuCaZxyfx5H
 3wxmgPnkC+RtO9wgVD6tkQoaKdk30udJDSqZJzCQf0I+xtaq6zWUuehlN
 QtStiwkT9SGMv9iNrBSs5Azw9OX4nfd4j0wWxVn8gpQf3/Uh8HA9IE5Ew
 dzoxc2vNlisZv35v9QmZC+VzUciTySoghvBJ1m59rSQX0req573WQLV0r
 smnOi6eUf7CQLAhYIBGH/6teKfaf5NVsfxSaOtaVEptexCCOZ4HAmf2Oa
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L/B8XWJQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/2] igc: Link queues to
 NAPI instances
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



On 10/28/2024 9:52 PM, Joe Damato wrote:
> Link queues to NAPI instances via netdev-genl API so that users can
> query this information with netlink. Handle a few cases in the driver:
>    1. Link/unlink the NAPIs when XDP is enabled/disabled
>    2. Handle IGC_FLAG_QUEUE_PAIRS enabled and disabled
> 
> Example output when IGC_FLAG_QUEUE_PAIRS is enabled:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                           --dump queue-get --json='{"ifindex": 2}'
> 
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>   {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
>   {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
>   {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
>   {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>   {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> 
> Since IGC_FLAG_QUEUE_PAIRS is enabled, you'll note that the same NAPI ID
> is present for both rx and tx queues at the same index, for example
> index 0:
> 
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
> 
> To test IGC_FLAG_QUEUE_PAIRS disabled, a test system was booted using
> the grub command line option "maxcpus=2" to force
> igc_set_interrupt_capability to disable IGC_FLAG_QUEUE_PAIRS.
> 
> Example output when IGC_FLAG_QUEUE_PAIRS is disabled:
> 
> $ lscpu | grep "On-line CPU"
> On-line CPU(s) list:      0,2
> 
> $ ethtool -l enp86s0  | tail -5
> Current hardware settings:
> RX:		n/a
> TX:		n/a
> Other:		1
> Combined:	2
> 
> $ cat /proc/interrupts  | grep enp
>   144: [...] enp86s0
>   145: [...] enp86s0-rx-0
>   146: [...] enp86s0-rx-1
>   147: [...] enp86s0-tx-0
>   148: [...] enp86s0-tx-1
> 
> 1 "other" IRQ, and 2 IRQs for each of RX and Tx, so we expect netlink to
> report 4 IRQs with unique NAPI IDs:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                           --dump napi-get --json='{"ifindex": 2}'
> [{'id': 8196, 'ifindex': 2, 'irq': 148},
>   {'id': 8195, 'ifindex': 2, 'irq': 147},
>   {'id': 8194, 'ifindex': 2, 'irq': 146},
>   {'id': 8193, 'ifindex': 2, 'irq': 145}]
> 
> Now we examine which queues these NAPIs are associated with, expecting
> that since IGC_FLAG_QUEUE_PAIRS is disabled each RX and TX queue will
> have its own NAPI instance:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                           --dump queue-get --json='{"ifindex": 2}'
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>   {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>   {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>   v5:
>     - Rename igc_resume to __igc_do_resume and pass in a boolean
>       "need_rtnl" to signal whether or not rtnl should be held before
>       caling __igc_open. Call this new function from igc_runtime_resume
>       and igc_resume passing in false (for igc_runtime_resume) and true
>       (igc_resume), respectively. This is done to avoid reintroducing a
>       bug fixed in commit: 6f31d6b: "igc: Refactor runtime power
>       management flow" where rtnl is held in runtime_resume causing a
>       deadlock.
> 
>   v4:
>     - Add rtnl_lock/rtnl_unlock in two paths: igc_resume and
>       igc_io_error_detected. The code added to the latter is inspired by
>       a similar implementation in ixgbe's ixgbe_io_error_detected.
> 
>   v3:
>     - Replace igc_unset_queue_napi with igc_set_queue_napi(adapater, i,
>       NULL), as suggested by Vinicius Costa Gomes
>     - Simplify implemention of igc_set_queue_napi as suggested by Kurt
>       Kanzenbach, with a tweak to use ring->queue_index
> 
>   v2:
>     - Update commit message to include tests for IGC_FLAG_QUEUE_PAIRS
>       disabled
>     - Refactored code to move napi queue mapping and unmapping to helper
>       functions igc_set_queue_napi and igc_unset_queue_napi
>     - Adjust the code to handle IGC_FLAG_QUEUE_PAIRS disabled
>     - Call helpers to map/unmap queues to NAPIs in igc_up, __igc_open,
>       igc_xdp_enable_pool, and igc_xdp_disable_pool
> 
>   drivers/net/ethernet/intel/igc/igc.h      |  2 +
>   drivers/net/ethernet/intel/igc/igc_main.c | 52 ++++++++++++++++++++---
>   drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 +
>   3 files changed, 49 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index eac0f966e0e4..b8111ad9a9a8 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -337,6 +337,8 @@ struct igc_adapter {
>   	struct igc_led_classdev *leds;
>   };
>   
> +void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
> +			struct napi_struct *napi);
>   void igc_up(struct igc_adapter *adapter);
>   void igc_down(struct igc_adapter *adapter);
>   int igc_open(struct net_device *netdev);
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 7964bbedb16c..051a0cdb1143 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -4948,6 +4948,22 @@ static int igc_sw_init(struct igc_adapter *adapter)
>   	return 0;
>   }
>   
> +void igc_set_queue_napi(struct igc_adapter *adapter, int vector,
> +			struct napi_struct *napi)
> +{
> +	struct igc_q_vector *q_vector = adapter->q_vector[vector];
> +
> +	if (q_vector->rx.ring)
> +		netif_queue_set_napi(adapter->netdev,
> +				     q_vector->rx.ring->queue_index,
> +				     NETDEV_QUEUE_TYPE_RX, napi);
> +
> +	if (q_vector->tx.ring)
> +		netif_queue_set_napi(adapter->netdev,
> +				     q_vector->tx.ring->queue_index,
> +				     NETDEV_QUEUE_TYPE_TX, napi);
> +}
> +
>   /**
>    * igc_up - Open the interface and prepare it to handle traffic
>    * @adapter: board private structure
> @@ -4955,6 +4971,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
>   void igc_up(struct igc_adapter *adapter)
>   {
>   	struct igc_hw *hw = &adapter->hw;
> +	struct napi_struct *napi;
>   	int i = 0;
>   
>   	/* hardware has been reset, we need to reload some things */
> @@ -4962,8 +4979,11 @@ void igc_up(struct igc_adapter *adapter)
>   
>   	clear_bit(__IGC_DOWN, &adapter->state);
>   
> -	for (i = 0; i < adapter->num_q_vectors; i++)
> -		napi_enable(&adapter->q_vector[i]->napi);
> +	for (i = 0; i < adapter->num_q_vectors; i++) {
> +		napi = &adapter->q_vector[i]->napi;
> +		napi_enable(napi);
> +		igc_set_queue_napi(adapter, i, napi);
> +	}
>   
>   	if (adapter->msix_entries)
>   		igc_configure_msix(adapter);
> @@ -5192,6 +5212,7 @@ void igc_down(struct igc_adapter *adapter)
>   	for (i = 0; i < adapter->num_q_vectors; i++) {
>   		if (adapter->q_vector[i]) {
>   			napi_synchronize(&adapter->q_vector[i]->napi);
> +			igc_set_queue_napi(adapter, i, NULL);
>   			napi_disable(&adapter->q_vector[i]->napi);
>   		}
>   	}
> @@ -6021,6 +6042,7 @@ static int __igc_open(struct net_device *netdev, bool resuming)
>   	struct igc_adapter *adapter = netdev_priv(netdev);
>   	struct pci_dev *pdev = adapter->pdev;
>   	struct igc_hw *hw = &adapter->hw;
> +	struct napi_struct *napi;
>   	int err = 0;
>   	int i = 0;
>   
> @@ -6056,8 +6078,11 @@ static int __igc_open(struct net_device *netdev, bool resuming)
>   
>   	clear_bit(__IGC_DOWN, &adapter->state);
>   
> -	for (i = 0; i < adapter->num_q_vectors; i++)
> -		napi_enable(&adapter->q_vector[i]->napi);
> +	for (i = 0; i < adapter->num_q_vectors; i++) {
> +		napi = &adapter->q_vector[i]->napi;
> +		napi_enable(napi);
> +		igc_set_queue_napi(adapter, i, napi);
> +	}
>   
>   	/* Clear any pending interrupts. */
>   	rd32(IGC_ICR);
> @@ -7342,7 +7367,7 @@ static void igc_deliver_wake_packet(struct net_device *netdev)
>   	netif_rx(skb);
>   }
>   
> -static int igc_resume(struct device *dev)
> +static int __igc_do_resume(struct device *dev, bool need_rtnl)
>   {
>   	struct pci_dev *pdev = to_pci_dev(dev);
>   	struct net_device *netdev = pci_get_drvdata(pdev);
> @@ -7385,7 +7410,11 @@ static int igc_resume(struct device *dev)
>   	wr32(IGC_WUS, ~0);
>   
>   	if (netif_running(netdev)) {
> +		if (need_rtnl)
> +			rtnl_lock();
>   		err = __igc_open(netdev, true);
> +		if (need_rtnl)
> +			rtnl_unlock();
>   		if (!err)
>   			netif_device_attach(netdev);
>   	}
> @@ -7393,9 +7422,14 @@ static int igc_resume(struct device *dev)
>   	return err;
>   }
>   
> +static int igc_resume(struct device *dev)
> +{
> +	return __igc_do_resume(dev, true);
> +}
> +
>   static int igc_runtime_resume(struct device *dev)
>   {
> -	return igc_resume(dev);
> +	return __igc_do_resume(dev, false);
>   }
>   
>   static int igc_suspend(struct device *dev)
> @@ -7440,14 +7474,18 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
>   	struct net_device *netdev = pci_get_drvdata(pdev);
>   	struct igc_adapter *adapter = netdev_priv(netdev);
>   
> +	rtnl_lock();
>   	netif_device_detach(netdev);
>   
> -	if (state == pci_channel_io_perm_failure)
> +	if (state == pci_channel_io_perm_failure) {
> +		rtnl_unlock();
>   		return PCI_ERS_RESULT_DISCONNECT;
> +	}
>   
>   	if (netif_running(netdev))
>   		igc_down(adapter);
>   	pci_disable_device(pdev);
> +	rtnl_unlock();
>   
>   	/* Request a slot reset. */
>   	return PCI_ERS_RESULT_NEED_RESET;
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
> index e27af72aada8..4da633430b80 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> @@ -84,6 +84,7 @@ static int igc_xdp_enable_pool(struct igc_adapter *adapter,
>   		napi_disable(napi);
>   	}
>   
> +	igc_set_queue_napi(adapter, queue_id, NULL);
>   	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
>   	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
>   
> @@ -133,6 +134,7 @@ static int igc_xdp_disable_pool(struct igc_adapter *adapter, u16 queue_id)
>   	xsk_pool_dma_unmap(pool, IGC_RX_DMA_ATTR);
>   	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
>   	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
> +	igc_set_queue_napi(adapter, queue_id, napi);
>   
>   	if (needs_reset) {
>   		napi_enable(napi);

I believe that this fix should work on most cases. I have some concerns 
that this solution might not be 100% robust as sometimes runtime resume 
may be triggered without the rtnl being held. For example, if it is 
initiated by a network wake event. But, for the moment I think that this 
appoach is good enough.

My main comment here is the naming conventions, I prefer using the 
original parameters/function names for consistency, similarly to what 
was done in the igb driver:
https://github.com/torvalds/linux/commit/ac8c58f5b535d6272324e2b8b4a0454781c9147e

