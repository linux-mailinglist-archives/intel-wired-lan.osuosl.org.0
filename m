Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC249A094C6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 16:14:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C982B60BC1;
	Fri, 10 Jan 2025 15:14:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0nFtFlkdYDnf; Fri, 10 Jan 2025 15:14:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17AA560BC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736522066;
	bh=FmVhkan7aOO4pEW83+6w1zPvhF7qNA64SpZsUR0ZNQs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PrmX+MMTc5tEY2C6o80D6HglTVRClJclF8sxMisESdx/2pIYsWpkDylMIwYnq9xcq
	 hHJTDZG7RcwO2xLkEdkzInmET0okKPXx/HVp+TP0nteBsHis0Qg7c2u1S6BRVUV+kI
	 JVaCuG4snLFCCe9XDWnOndn3stUVy/EwyYo3m9E5eXcS3gVmzvP/Et9z2s4qFWFO+Y
	 tfBqFqJKG5ARHV1gojIKbEZY4MIJzWOTvTnq1fURU8MPWWeDAuUIeItWATDrvzfj1p
	 +7BKzGJ8eZLMOVk70GOOtIvI/sFZUr2AUqqvINIdThS80Pdr6vpxAjVfcB/WLCaniB
	 xXKwhRditeqJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17AA560BC9;
	Fri, 10 Jan 2025 15:14:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CF95A942
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 15:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD5F840FEC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 15:14:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hYqNQ27XEzLT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2025 15:14:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8F25640FF4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F25640FF4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F25640FF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 15:14:22 +0000 (UTC)
X-CSE-ConnectionGUID: d8jS6xlrTXqCyNIVDsmfsg==
X-CSE-MsgGUID: 56bb+cTiSk+DjERXL/ccLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="40583968"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="40583968"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 07:14:21 -0800
X-CSE-ConnectionGUID: I8oOEGvHSOG2Df59G+U7Mg==
X-CSE-MsgGUID: NXj6//kMQASqRhN261GJ6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="127040924"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2025 07:14:20 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 07:14:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 07:14:19 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 07:14:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HQ7nzU3HPdSB5WawV8An5I2jsv5GXu9gM4vVnzNEGnCm3TpYY2IeXczgCBg1dg1ogy4rCCU/la5X+ZgqX0Sk2D8nbo0o8ejKkQsgdGZJA/OqunJKXtrJQpD3A2+qb17P5+jnLJPaUazauyqwLXaEvINU9KUJ/wahUquQQj8jPbqMvbsG8pS3PAchosYdQkOyHI6wgJmUSKLvc5sd1/p19ttaSKtL+K98BU3v14n/09pOP5kQ84uolsndeI1yRoDgk6ZEd6PKAYzHBPDHJ4dyKo2OAYseODa6pz7BMW5lVL99gj62neDndr6eFIlaTfJyOmpp7h4VoC32B+G7Ck45Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FmVhkan7aOO4pEW83+6w1zPvhF7qNA64SpZsUR0ZNQs=;
 b=eqBk1Yq+grMr63qiS8mg7qNRNuXoqzlId1joF9XkajkadOag0ydnB8Dujr76zfegtsP51RHSrLut1+6yOlqbKQ5POtQaliMgZaJwpvK/fWr9PbvrlN1kOGF6me4z4Kyc0rSEXNA/3QMeJONkzGmlJyn5h4Fb0sWSuvFOx82atFy3UwysLw6OJMP+Tms0hlNizdMC10VLNe/2aeGFV7MBm4zllERfdAcq9qv7VvSXVQa/dR8jUHEH5RaIisyMs3l+GMs8LVAdo5Bix35lqBJOXvE2R7pB+wFPipjz3AS6c6kteL/1c25GcCYCHH/L/9aRLeQ/KHxs3tPXadZqn0nS0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by IA1PR11MB7812.namprd11.prod.outlook.com (2603:10b6:208:3f7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Fri, 10 Jan
 2025 15:13:44 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 15:13:43 +0000
Message-ID: <3456c7b8-058f-4b5d-8a68-b815e561a5f3@intel.com>
Date: Fri, 10 Jan 2025 08:13:34 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <michael.chan@broadcom.com>,
 <tariqt@nvidia.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <jdamato@fastly.com>, <shayd@nvidia.com>,
 <akpm@linux-foundation.org>, <shayagr@amazon.com>,
 <kalesh-anakkur.purayil@broadcom.com>
References: <20250109233107.17519-1-ahmed.zaki@intel.com>
 <20250109233107.17519-2-ahmed.zaki@intel.com>
 <20250110115924.GC7706@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20250110115924.GC7706@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0299.namprd04.prod.outlook.com
 (2603:10b6:303:89::34) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|IA1PR11MB7812:EE_
X-MS-Office365-Filtering-Correlation-Id: e9aa26db-14ee-4356-4a37-08dd31895f48
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?enpaZS93ZklCMmFDMVRHSlNMTUQrWnE5L2ZvWUJCOTEyZ3ByeHBjd1ZXMGk3?=
 =?utf-8?B?blFuYlFuYVJxRVhXMGV6WTVuS3RaTlBQZ3BrUVZJTmIzbGE1dVduL1cybFd0?=
 =?utf-8?B?aUZzV1ExVFJCeWZIL0tEa05KZGQrTWt5bEpkajlwREowbWFXdC9pQWJnYUh6?=
 =?utf-8?B?SU10OW4zV3Z5MTNHSUxhT0RiK1dhNzYwUmRsekNMR0RLVGtjVm1rTkYyN254?=
 =?utf-8?B?YkRRUDdHK3lxcUdSOUxDZVB4T0E0NTl4K1ZXbFdsdll1aEdNaFJST3RuZDJX?=
 =?utf-8?B?bDFIZFhNdVZKVHdnTHZhWWRxSm5zM2V2UUUxNFZvMVRnNmtpOUF2azB4VDZI?=
 =?utf-8?B?cnhjTTBzbUpMMHY0dzJiTmpXM2ppb0NBaGMvdWZZSzJvR3JXUEdRWjlwNlhl?=
 =?utf-8?B?dGVpQXRrQzVabWYwNkNsVVBIbnllTzF2a2V6OVhDOUJTcSsxS0pkVHg4ZVRz?=
 =?utf-8?B?b2J3S3NUNkVzRUhRRThxd3VlQm9OUGxub0RDODJKbENZYjNQd3NHK0VxbnZ6?=
 =?utf-8?B?dnZORisxczhqKzJUT0t5dHB6TjZza3llQ2JUNGdVUTJiMkFtb01aZmJJVmNh?=
 =?utf-8?B?ZlVab2tuOWVkOGxSVzFsemE2ZE56OVN2NUJ6dUZDZ3h0c3gxUE9UcjYyY3Vh?=
 =?utf-8?B?RFhWa0FTa2JaOHh6VW9IMVZ5VFlRSzFGWDNIS1NWU0loSzBkNU4rTFRXVDdD?=
 =?utf-8?B?VnBKOHJUaWJ5U3F4RWQzTVkvNThSVHdva1pDekE5NEtJcGp3ck9ndXRhTWFp?=
 =?utf-8?B?M2x4cjFBVVhtUUlYRzNGUENyQ21yelhNeTk5T28yNisycW05eUtBcnhvSkZi?=
 =?utf-8?B?RTlkN2c2K1A5bHhXTHcwUzlxRUpRdENpc0lTWGI4RHNFcjR4b0wrZHBkYnpL?=
 =?utf-8?B?OENBNUFITXY4Y082MUhxL3dlY2NSWlZWclNkL3dIeTFRVHBNdGgrMmJoZ0ND?=
 =?utf-8?B?c01WVW9ma1pkNjNNY21BRFpIcEdWMHFZUW1rYi9TdGxZVHVlbXFqaTBTK1Vx?=
 =?utf-8?B?WHhpZWZOQlRjSHVMemJyaWlteDQyQTZwTWU1aDNsbkJvRTEvYmdJSEpnZ1lr?=
 =?utf-8?B?OUdFZGxCbTlNWnptak45R3V6Q2FLeUZWbW91OUpkRWVEeTBpWmhvUElvOHdU?=
 =?utf-8?B?dHp3cUtmeDRZM1pDMVd0Q2ZDVFFhcjFiY3lqRXUycGlnVy9BMmxSdHFNNFNx?=
 =?utf-8?B?QUVIZzlJeVNJNEU3bXNPSXBHcTN4L2JqUjAwWE9heU95Y0gvL2R0MmNaaHNv?=
 =?utf-8?B?MFQ2N092N3A1UklIeDUzSHhwTlBUZzFPaDBOWmpKQmg1WDNQQVdNcGMzTWNm?=
 =?utf-8?B?dFVnQWRZVm5RaGM0NFA3MzRpa3BnSUlQalRrZGpnNEI1TUpMSUQxZlNNWmNK?=
 =?utf-8?B?ZU5VaTlHREUvMjB0UnhxN3NrNy81V01pYnlyV3ZkdE1VWGlWMUtCNUJtYWNa?=
 =?utf-8?B?cm44SUVrQjA4U1U5eHdCb2RiZUVJYWFObjlFaEdLMFZ2ZzF5YWMzZ2hycDFr?=
 =?utf-8?B?cmtGV0lqVzBJTmxDUVBvUjlsbmp5SFV1RGRBYks5VDJUOXdEWHVJNlpEYUZW?=
 =?utf-8?B?NndkSkhRUDUxTkdoM1JoSUg4WmFSdHIwVFkxM3ZLL1NGUStPTkN5YVpJeURO?=
 =?utf-8?B?V0JubmZnMXEwRzNWZk82N1FrSDRpbkFuSzJMb00vL01xeGtjalNkc2pURHQ5?=
 =?utf-8?B?RGpuUEdoNmFPeGdsRmhBWUk3b1VkNS9BSUNwQTh4TmdoR012RERhWEZQNi9B?=
 =?utf-8?B?LzBlWDdTSVkwUE96K3FoT0ZSdUU5T0YwaWJ5aXNad0psK1dzWUs3a3JFTmtH?=
 =?utf-8?B?VjBKaFV1TjFQdGh3QXBmOHlpRkp5OGU3UTZYS05lU3ZQOVFlQnc2TUY1dEF0?=
 =?utf-8?Q?z0u4feZqkrLLg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDVUNE04am12b0pGU2I2TlVCWXhBOUl2T2EwQmEwOTE3by85bThQTmlqcnVH?=
 =?utf-8?B?NGQxN2I2M0t4TXM4YzNBOFp4UlczNEtCMDROendnL1JDY1liWUI0TWNsZnNH?=
 =?utf-8?B?Yk9EcXJDZHg0M1p5L1gvWFdWMVpYdVQ1anY3eHA2UFFOYmhEMnIwMGdOTUtC?=
 =?utf-8?B?WkRnY0RLbnRMQXJBUzFQRUVZa3ZiMzRaenNFZnlYK0p5aCt5bWFGaVppY2NL?=
 =?utf-8?B?OXlaRXVUdERVemJFaENRUmRwWlhRZmdTUE5INFNaczdicHVPVHlZUXVjc0ZV?=
 =?utf-8?B?T09FcVllbXdTbEw1SFdhRnpRcEVNZlRXQXNEeXZrNlhlMjNEOU1TdEhkREdr?=
 =?utf-8?B?bWwwa0g1ZDRuRDhxMG00bUlObHU0a2pPUTJRM2RScTIyUjJLVnFtWWhhNkZY?=
 =?utf-8?B?WVYvS3Zudk16VzVpUFJJY09zRlVZcE43bTRoVmY4emRWRnluOFM1TVhwRWJw?=
 =?utf-8?B?TEN0Q09pbHRvdFJ6V0NZMHNHdE16RkVzdDFadnAxRjRlbmdqeTdNZEcrbHdz?=
 =?utf-8?B?Z2xmMVNxUXVjZGYra0k4VGRFWHBYemIxdXNrZW1PR2lsbDhhRG9tU0x1K3R4?=
 =?utf-8?B?TExjMXhVclNLYW9WR2RuaFFiUzRORSt6MDBZMHdjam82N3VzdGRTWlZkWXRI?=
 =?utf-8?B?TlpqSkUrSktmbFZnd0xqeVZHSUlXVU1ONDg2WXdSVG9YSXlTZE1pNGRlTkNh?=
 =?utf-8?B?K1hGcVBRMjdZeThla2lqWXpBaEFaTDVJVndjVDlPRWVtOWsrY0ZHS25zWVdI?=
 =?utf-8?B?b04zZ2pWemsvUjAwbHdGQWJSRHZ5ak1lV2RXYWk1dVRsaFFHMzluQUI1bVJx?=
 =?utf-8?B?cjJkMGtWQ3gxOVBFUVk5YVZiYVF2c2RJcXYxSExqcERNb1BTMEZIQ0V0Y0ZW?=
 =?utf-8?B?cFhnb3lwcExUS0NvdVFrTTVLQmRZMjJqQ0dvTTM2U0kybVdSOFpRNldCMXdE?=
 =?utf-8?B?c0tsejJmMEZRdlduVG54alBtQjlDbDJTcUl2U2sxQ1FOZGdtNW8vcGtEenFq?=
 =?utf-8?B?R2RYYXdtV0ZQa2pmYnllY0hrcHF3c1cydm0yRkU5c2lPNnZHUlBRUis3Wk9y?=
 =?utf-8?B?M0RYMXpoM0s0WkhJNW1TTHFjZjVzYWNQR2dtRUIrTldWeElqRU5TM3lnRGZI?=
 =?utf-8?B?VEVjMnUvQjVlWGRWd3BSMkFlWFBVd29OdWxFY09ZNCtmVy9kZjM3WEdZd0tT?=
 =?utf-8?B?MktrOUk1ZXBOckZCTTQ5K0tXWGZZeDc0R2ZuT0Vxd3d6bEFCRlBSQTZnMG5I?=
 =?utf-8?B?THJ3a2VkWEd4TnhxK05ULzRlc3M0KzgvZUNJV3BFeXZyTzNoRTViMXUxV05U?=
 =?utf-8?B?em5MbjJ6ZE9TOGZEUi9UdHd6ODgrbk01NitZSk1jS3MzRnpDN0N1YTJKVCtB?=
 =?utf-8?B?aHdwWXR6YzJWVGIwU1RzblBOemZ1V3RJMHYyM1dLUmxaV0VSNVlOSTUrYXRN?=
 =?utf-8?B?L0wyOUtTc0lVUWZHaHorMERjc2NUR09vSXFIc0YxYWdFOU5tVFliOGl6Q3Yx?=
 =?utf-8?B?Mjd0d0k1OGtRWkFEaUxKOE81eEZMZFA3YStDdGFmS2dKcmlvZzdESE13VDZv?=
 =?utf-8?B?UGVRMEIrQ3JxR2IrWWhENUxtQjhkUzB5ZjNpOGllcTV0NnJwTEljNExDMlZ1?=
 =?utf-8?B?alhFQ0d5engzYm14bXVRcUY1V012QlVrUW5Ed050K2g5MG9HY3VYcVhIV3VM?=
 =?utf-8?B?TFpGdlN6ZjV2dFRZdzhZR0srQ1BOSVUvWWRQYjJyWHBrV0lUeVk3M2pXZ2tv?=
 =?utf-8?B?ZUZGdEt4dlJYSUd3cnBLWTY4Q2ZvYUtDV3N3ZVRNM3FaZlZEclR2aVJReitP?=
 =?utf-8?B?RDJ6TXQzUXZERHhwVEpBOGQ5TWY3VzNUUTdibE1HcGNIV3NRb3FNbVlzVm9q?=
 =?utf-8?B?dm1DeEdvSlFIR3N3eUZQNUQ2MVF3VjB0NXVvenJ5S1Flblp1aDFwTXNhdHZE?=
 =?utf-8?B?dmd6RHlzUzZMWnZkUHpRZ3NPemN4REkzbEJQV1ZFVXBqOGRiQVVCa1R5eWNN?=
 =?utf-8?B?dktlRmZUb2dnZElRUHJjZXhwVW5YY085a05RV0pCNVp0RUlKZy9DQ0FCU1c2?=
 =?utf-8?B?YnNaWlk4OGNERlRsdDhlMm83R3RCZnM4SEh4Um5zcXByek90V1owT1FvdzFJ?=
 =?utf-8?Q?hSdcSpRnvhKM9gGOvytu4vt++?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9aa26db-14ee-4356-4a37-08dd31895f48
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 15:13:43.7287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NK3QEaqCEDp8vaGLDCEyI/FPWd1ce4VyYUWlaO5DuT0+eunJzm6gJaM0GfKKoHTTlRF+Xkf0BXMoiCfkeONQ0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7812
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736522062; x=1768058062;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qihZpse6P0/XzdkvuIwoxgAISdxbMIx/TX7t8Cvvy4U=;
 b=J3Fyw+PSyTauBARywRSMr/PYDTFO9AAFPPYGQsMnabCo1pgXf0fq4EzD
 4BMaUeJsv4sYyNsLb6PIGrDzuG+xTOo49Xfx0Hc2HT6vN02RhUhbaA0zc
 F8wakWK42SGtefXM3V/24fjcwtFUZxu7xxW3EtP9EMBLJ78sDLFGcCZKw
 +o9LuOeXbNKPlp0QxSTChj+B+69czmZSE/C/2jmfRiBzKMs7ZddmWT+52
 tqfXIay0jZawVx5vhV512oqX1huzASFRGWVMKKlb852buBFZd+kXbbhPu
 Q/XA9bNDcglrSX0eH4+ukXhPourL9HueCFVekZcBTtewk1y0J7CWAUY2Y
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J3Fyw+PS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: move ARFS rmap
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



On 2025-01-10 4:59 a.m., Simon Horman wrote:
> On Thu, Jan 09, 2025 at 04:31:02PM -0700, Ahmed Zaki wrote:
>> Add a new netdev flag "rx_cpu_rmap_auto". Drivers supporting ARFS should
>> set the flag via netif_enable_cpu_rmap() and core will allocate and manage
>> the ARFS rmap. Freeing the rmap is also done by core when the netdev is
>> freed.
>>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> 
> ...
> 
>> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
>> index 1812564b5204..acf20191e114 100644
>> --- a/include/linux/netdevice.h
>> +++ b/include/linux/netdevice.h
>> @@ -2398,6 +2398,9 @@ struct net_device {
>>   	struct lock_class_key	*qdisc_tx_busylock;
>>   	bool			proto_down;
>>   	bool			threaded;
>> +#ifdef CONFIG_RFS_ACCEL
>> +	bool			rx_cpu_rmap_auto;
>> +#endif
> 
> nit: rx_cpu_rmap_auto should also be added to the Kernel doc for
>       struct net_device.
>

Hi Simon,

Sure. Will also do the same for "rq_affinity_auto" in patch 3.
